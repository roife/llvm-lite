#include <list>
#include <algorithm>
#include "common/common.h"
#include "passes/dce.h"
#include "ir/basicblock.h"
#include "ir/instruction.h"
#include "ir/instructions.h"

bool DcePass::run() {
    auto has_changed = false;
    for (auto func = program->funcs.head; func; func = func->next) {
        if (!func->is_decl) {
            FnDcePass fn_dce(func);
            has_changed |= fn_dce.run();
        }
    }
    return has_changed;
}

bool FnDcePass::run() {
    auto changed = true, has_changed = false;

    while (changed) {
        changed = false;
        changed |= sweep_useless_insts();
        changed |= clean_useless_bb();
        changed |= remove_unreachable_bb();
        has_changed |= changed;
    }

    return has_changed;
}

bool FnDcePass::sweep_useless_insts() {
    // compute dom frontier
    build_cfg();
    auto idoms = rcfg.compute_idoms();
    const auto rdf = rcfg.compute_rdf(idoms);

    // mark critical inst
    std::unordered_set<Inst *> useful_insts;
    std::list<Inst *> worklist;

    for (auto bb = func->bbs.head; bb; bb = bb->next) {
        for (auto inst = bb->insts.head; inst; inst = inst->next) {
            if (is_critical(inst)) {
                worklist.push_back(inst);
                useful_insts.insert(inst);
            }
        }
    }

    while (!worklist.empty()) {
        Inst *inst = worklist.front();
        worklist.pop_front();

        for (const auto &op_use: inst->operands) {
            auto op = dyn_cast<Inst>(op_use->definer);
            if (op && !useful_insts.contains(op)) {
                useful_insts.insert(op);
                worklist.push_back(op);
            }
        }

        if (rdf.contains(inst->bb)) {
            for (const auto &rdf_bb: rdf.at(inst->bb)) {
                auto rdf_term = rdf_bb->get_terminator();
                if (!useful_insts.contains(rdf_term)) {
                    useful_insts.insert(rdf_term);
                    worklist.push_back(rdf_term);
                }
            }
        }
    }

    // sweep useless insts
    auto changed = false;
    for (auto bb = func->bbs.head; bb; bb = bb->next) {
        for (auto inst = bb->insts.head; inst;) {
            if (!useful_insts.contains(inst)) {
                if (isa_p<BranchInst>(inst) || isa_p<SwitchInst>(inst)) {
                    auto dom = idoms.at(bb);
                    while (!useful_insts.contains(dom->get_terminator())) {
                        dom = idoms.at(dom);
                    }
                    auto jump_inst = new JumpInst(dom, bb);
                    useful_insts.insert(jump_inst);
                }
                auto dead_inst = inst;
                inst = inst->next;
                delete dead_inst;
                changed = true;
            } else {
                inst = inst->next;
            }
        }
    }
    return changed;
}

// when delete bb, delete succ bb instead
bool remove_empty_bb(BasicBlock *bb, std::unordered_set<BasicBlock*> &alive_nodes) {
    if (auto jump_inst = dyn_cast<JumpInst>(bb->get_terminator())) {
        auto succ_bb = cast<BasicBlock>(jump_inst->get_operand(0));

        auto is_bb_empty = bb->insts.head == bb->insts.tail;
        auto wrong_case = bb->is_entry() && isa_p<PhiInst>(succ_bb->insts.head);

        // detect phi conflict
        auto old_bb_preds = bb->get_pred_bbs();
        auto succ_preds = succ_bb->get_pred_bbs();
        auto phi_conflict = false;
        for (const auto &item: old_bb_preds) {
            if (succ_preds.contains(item)) {
                phi_conflict = true;
                break;
            }
        }

        if (wrong_case || succ_bb->is_entry() || !is_bb_empty || phi_conflict) {
            return false;
        }

        delete jump_inst;

        // move insts
        bb->insts.move_from(succ_bb->insts);
        for (auto inst = bb->insts.head; inst; inst = inst->next) {
            inst->bb = bb;
        }

        if (isa_p<PhiInst>(bb->insts.head)) {
            // handle phi nodes
            for (auto phi = dyn_cast<PhiInst>(bb->insts.head); phi; phi = dyn_cast<PhiInst>(phi->next)) {
                for (size_t bb_idx = 1; bb_idx < phi->op_count; bb_idx += 2) {
                    if (phi->get_operand(bb_idx) == bb) {
                        auto val = phi->get_operand(bb_idx - 1);

                        for (auto old_pred: old_bb_preds) {
                            phi->add_operand(val);
                            phi->add_operand(old_pred);
                        }

                        // delete later so const wont be destruct
                        phi->remove_op_by_bb(bb_idx);
                        break;
                    }
                }
            }
        }

        succ_bb->replace_all_use_with(bb);
        alive_nodes.erase(succ_bb);
        delete succ_bb;

        return true;
    }

    return false;
}

bool fuse_bb(BasicBlock *bb, std::unordered_set<BasicBlock*> &alive_nodes) {
    if (auto jump_inst = dyn_cast<JumpInst>(bb->get_terminator())) {
        auto succ_bb = cast<BasicBlock>(jump_inst->get_operand(0));

        auto succ_bb_start_with_phi = succ_bb->insts.head->opcode == Inst::Opcode::PHI;
        if (succ_bb->get_pred_bbs().size() > 1 || succ_bb_start_with_phi || succ_bb->is_entry()) {
            return false;
        }

        delete jump_inst;

        // move insts
        for (auto inst = succ_bb->insts.head; inst; inst = inst->next) {
            inst->bb = bb;
        }
        bb->insts.concat(succ_bb->insts);

        succ_bb->replace_all_use_with(bb);
        alive_nodes.erase(succ_bb);
        delete succ_bb;
        return true;
    }
    return false;
}

bool hoist_br(BasicBlock *bb) {
    if (auto jump_inst = dyn_cast<JumpInst>(bb->get_terminator())) {
        auto succ_bb = cast<BasicBlock>(jump_inst->get_operand(0));
        auto succ_bb_terminator = succ_bb->get_terminator();

        if (succ_bb->insts.head == succ_bb->insts.tail
            && (isa_p<BranchInst>(succ_bb_terminator) || isa_p<SwitchInst>(succ_bb_terminator))) {
            auto succ_succ_bbs = succ_bb->get_succ_bbs();

            if (auto nxt_bb_br = dyn_cast<BranchInst>(succ_bb_terminator)) {
                new BranchInst(nxt_bb_br->get_operand(0),
                               nxt_bb_br->get_operand(1),
                               nxt_bb_br->get_operand(2),
                               bb);
            } else if (auto nxt_bb_switch = dyn_cast<SwitchInst>(succ_bb_terminator)) {
                auto vals = std::vector<Value *>();
                std::transform(nxt_bb_switch->operands.begin() + 2,
                               nxt_bb_switch->operands.end(),
                               vals.begin(),
                               [](Use *use) { return use->definer; });
                new SwitchInst(nxt_bb_switch->get_operand(0),
                               nxt_bb_switch->get_operand(1),
                               vals,
                               bb);
            } else {
                unreachable();
            }

            // handle phi nodes
            for (auto phi = dyn_cast<PhiInst>(bb->insts.head); phi; phi = dyn_cast<PhiInst>(phi->next)) {
                for (size_t bb_idx = 1; bb_idx < phi->op_count; bb_idx += 2) {
                    if (phi->get_operand(bb_idx) == bb) {
                        phi->remove_op_by_bb(bb_idx);
                        break;
                    }
                }
            }

            for (auto succ_succ_bb: succ_succ_bbs) {
                for (auto phi = dyn_cast<PhiInst>(succ_succ_bb->insts.head);
                     phi;
                     phi = dyn_cast<PhiInst>(phi->next)) {
                    for (size_t succ_bb_idx = 1; succ_bb_idx < phi->op_count; succ_bb_idx += 2) {
                        if (phi->get_operand(succ_bb_idx) == succ_bb) {
                            auto val = phi->get_operand(succ_bb_idx - 1);
                            phi->add_operand(val);
                            phi->add_operand(bb);
                            break;
                        }
                    }
                }
            }

            delete jump_inst;
            return true;
        }
    }
    return false;
}

bool FnDcePass::clean_useless_bb() const {
    auto postorder = cfg.compute_postorder();
    auto alive_nodes = std::unordered_set<BasicBlock*>(postorder.begin(), postorder.end());

    bool changed = true, has_changed = false;
    while (changed) {
        changed = false;

        for (const auto &node: postorder) {
            if (alive_nodes.contains(node)) {
                auto bb = node;
                changed |= bb->simplify_terminator_and_phis();

                if (isa_p<JumpInst>(bb->get_terminator())) {
                    changed |= remove_empty_bb(bb, alive_nodes);
                    changed |= fuse_bb(bb, alive_nodes);
                    changed |= hoist_br(bb);
                }
                has_changed |= changed;
            }
        }
    }
    return has_changed;
}

bool FnDcePass::remove_unreachable_bb() const {
    // mark reachable bbs
    std::unordered_set<BasicBlock *> reachable_bbs{func->bbs.head};
    std::list<BasicBlock *> worklist{func->bbs.head};

    while (!worklist.empty()) {
        auto bb = worklist.front();

        for (auto succ_bb: bb->get_succ_bbs()) {
            if (!reachable_bbs.contains(succ_bb)) {
                reachable_bbs.insert(succ_bb);
                worklist.push_back(succ_bb);
            }
        }

        worklist.pop_front();
    }

    // remove unreachable bbs in reachable phi first
    for (auto bb = func->bbs.head; bb; bb = bb->next) {
        if (!reachable_bbs.contains(bb)) {
            for (const auto succ_bb: bb->get_succ_bbs()) {
                for (auto phi = dyn_cast<PhiInst>(succ_bb->insts.head); phi; phi = dyn_cast<PhiInst>(phi->next)) {
                    for (size_t bb_idx = 1; bb_idx < phi->op_count; bb_idx += 2) {
                        if (phi->get_operand(bb_idx) == bb) {
                            phi->remove_op_by_bb(bb_idx);
                            break;
                        }
                    }
                }
            }
        }
    }

    // remove unreachable bbs
    auto changed = false;
    for (auto bb = func->bbs.head; bb;) {
        auto nxt_bb = bb->next;
        if (!reachable_bbs.contains(bb)) {
            delete bb;
            changed = true;
        }
        bb = nxt_bb;
    }

    return changed;
}

bool FnDcePass::is_critical(Inst *inst) {
    switch (inst->opcode) {
        case Inst::RETURN:
        case Inst::JUMP:
        case Inst::STORE:
        case Inst::CALL:
            return true;
        default:
            return false;
    }
}

void FnDcePass::build_cfg() {
    cfg.clear();
    Cfg<BasicBlock>::Node_t entry = func->bbs.head;
    Cfg<BasicBlock>::Node_t exit = nullptr;
    cfg.set_entry(entry);
    cfg.set_exit(exit);

    for (auto bb = func->bbs.head; bb; bb = bb->next) {
        auto cur_node = bb;
        if (!cfg.contains(cur_node)) {
            cfg.add_node(cur_node);
        }

        if (isa_p<RetInst>(bb->get_terminator())) {
            cfg.add_edge(cur_node, exit);
        } else {
            for (auto succ: bb->get_succ_bbs()) {
                auto succ_node = succ;
                if (!cfg.contains(succ_node)) {
                    cfg.add_node(succ_node);
                }

                cfg.add_edge(cur_node, succ_node);
            }
        }
    }

    rcfg = cfg;
    rcfg.reverse_all_edges();
}


