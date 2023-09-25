#include <algorithm>
#include "ir/value.h"
#include "ir/basicblock.h"
#include "ir/instruction.h"
#include "ir/instructions.h"
#include "ir/constant.h"
#include "ir/program.h"
#include "ir/value_info.h"

void Value::replace_all_use_with(Value *new_v) const {
    for (auto use = uses.head; use; use = use->next) {
        use->user->set_operand(use->op_rank, new_v);
    }

    for (auto use = uses.head; use;) {
        auto nxt_use = use->next;
        delete use;
        use = nxt_use;
    }
}

std::vector<BasicBlock *> BasicBlock::get_succ_bbs() const {
    auto terminator = insts.tail;
    std::vector<BasicBlock*> ans;
    switch (terminator->opcode) {
        case Inst::Opcode::BRANCH: {
            auto branch = cast<BranchInst>(terminator);
            auto true_bb = branch->get_operand(1);
            if (!true_bb->is_undef()) {
                ans.push_back(cast<BasicBlock>(true_bb));
            }
            auto false_bb = branch->get_operand(2);
            if (!false_bb->is_undef()) {
                ans.push_back(cast<BasicBlock>(false_bb));
            }
            break;
        }
        case Inst::Opcode::JUMP: {
            auto jump = cast<JumpInst>(terminator);
            auto target_bb = jump->get_operand(0);
            if (!target_bb->is_undef()) {
                ans.push_back(cast<BasicBlock>(target_bb));
            }
            break;
        }
        case Inst::Opcode::SWITCH: {
            auto switch_inst = cast<SwitchInst>(terminator);
            for (size_t i = 1; i < switch_inst->op_count; i++) {
                auto target_bb = switch_inst->get_operand(i);
                if (!target_bb->is_undef()) {
                    ans.push_back(cast<BasicBlock>(target_bb));
                }
            }
            break;
        }
        case Inst::Opcode::RETURN: {
            return {};
        }
        default:
            unreachable();
    }
    return ans;
}

std::unordered_set<BasicBlock *> BasicBlock::get_pred_bbs() const {
    auto preds = std::unordered_set<BasicBlock *>{};

    for (auto use = this->uses.head; use; use = use->next) {
        auto user = cast<Inst>(use->user);
        if (user->is_terminator()) {
            preds.insert(user->bb);
        }
    }

    return preds;
}

bool BasicBlock::simplify_terminator_and_phis() {
    Value *new_succ_bb;

    for (auto phi = dyn_cast_nullable<PhiInst>(this->insts.head); phi;) {
        for (size_t bb_idx = 1; bb_idx < phi->op_count; bb_idx += 2) {
            if (phi->get_operand(bb_idx)->is_undef()) {
                phi->remove_op_by_bb(bb_idx);
            }
        }

        auto nxt_phi = dyn_cast_nullable<PhiInst>(phi->next);

        // if there is only one source, just remove phi
        if (phi->op_count == 2) {
            phi->replace_all_use_with(phi->get_operand(0));
            delete phi;
        }

        phi = nxt_phi;
    }

    auto terminator = this->get_terminator();
    switch (terminator->opcode) {
        case Inst::JUMP:
        case Inst::RETURN:
            return false;
        case Inst::BRANCH: {
            auto branch_inst = cast<BranchInst>(terminator);
            auto cond = branch_inst->get_operand(0);
            auto true_bb = branch_inst->get_operand(1);
            auto false_bb = branch_inst->get_operand(2);
            assert(true_bb || false_bb);

            if (auto int_cond = dyn_cast<IntConst>(cond)) {
                new_succ_bb = int_cond->v ? true_bb : false_bb;
            } else if (true_bb == false_bb) {
                new_succ_bb = true_bb;
            } else {
                return false;
            }
            break;
        }
        case Inst::SWITCH: {
            auto cond = terminator->get_operand(0);
            if (auto int_cond = dyn_cast<IntConst>(cond)) {
                new_succ_bb = terminator->get_operand(1);

                for (size_t i = 2; i < terminator->op_count; i += 2) {
                    if (int_cond->v == cast<IntConst>(terminator->get_operand(i))->v) {
                        new_succ_bb = terminator->get_operand(i + 1);
                        break;
                    }
                }
            } else {
                new_succ_bb = terminator->get_operand(1);
                for (size_t i = 3; i < terminator->op_count; i += 2) {
                    if (new_succ_bb != terminator->get_operand(i)) {
                        return false;
                    }
                }
            }
            break;
        }
        default:
            unreachable();
    }

    assert(new_succ_bb != nullptr);

    // simplify phis
    auto succ_bbs = this->get_succ_bbs();
    for (auto succ_bb: succ_bbs) {
        for (auto phi = dyn_cast_nullable<PhiInst>(succ_bb->insts.head); phi;) {
            bool keep = succ_bb == new_succ_bb;
            for (size_t bb_idx = 1; bb_idx < phi->op_count; bb_idx += 2) {
                if (phi->get_operand(bb_idx) == this) {
                    if (!keep) {
                        phi->remove_op_by_bb(bb_idx);
                    }
                }
            }

            auto nxt_phi = dyn_cast_nullable<PhiInst>(phi->next);

            // if there is only one source, just remove phi
            if (phi->op_count == 2) {
                phi->replace_all_use_with(phi->get_operand(0));
                delete phi;
            }

            phi = nxt_phi;
        }
    }

    // replace branch with jump
    new JumpInst(new_succ_bb, this);
    delete terminator;
    return true;
}

BasicBlock::~BasicBlock() {
    auto inst = insts.head;
    Inst *nxt_inst;
    while (inst) {
        nxt_inst = inst->next;
        delete inst;
        inst = nxt_inst;
    }

    func->bbs.remove(this);

    if (auto name = std::get_if<std::string_view>(&this->name)) {
        func->info->named_values[*name] = nullptr;
    } else if (auto id = std::get_if<size_t>(&this->name)) {
        func->info->unamed_values[*id] = nullptr;
    }
}

Func::~Func() {
    delete ret_type;

    auto bb = bbs.head;
    BasicBlock *nxt_bb;
    while (bb) {
        nxt_bb = bb->next;
        delete bb;
        bb = nxt_bb;
    }

    // delete params
    std::ranges::for_each(params,
                          [&](const auto &param) { delete param; });
    operands.clear();
    op_count = 0;
}

bool Const::operator==(const Const &rv) const {
    if (this->ty->ty_tag != rv.ty->ty_tag) {
        return false;
    }

    if (isa_p<IntConst>(this)) {
        return dyn_cast<IntConst>(this)->v == dyn_cast<IntConst>(&rv)->v;
    } else if (isa_p<FltConst>(this)) {
        return dyn_cast<FltConst>(this)->v == dyn_cast<FltConst>(&rv)->v;
    } else if (isa_p<DblConst>(this)) {
        return dyn_cast<DblConst>(this)->v == dyn_cast<DblConst>(&rv)->v;
    } else {
        unreachable();
    }
}

bool Const::operator!=(const Const &rv) const {
    return !(*this == rv);
}

Const *Const::sv_to_const(const std::string_view &sv, Ty::TyTag ty_tag) {
    switch (ty_tag) {
        case Ty::BOOL: {
            if (sv == "true") return new IntConst(true, new Ty(Ty::BOOL));
            else if (sv == "false") return new IntConst(false, new Ty(Ty::BOOL));
            else return new IntConst(svtov<long long>(sv), new Ty(ty_tag));
        }
        case Ty::INT8:
        case Ty::INT16:
        case Ty::INT32:
        case Ty::INT64:
            return new IntConst(svtov<long long>(sv), new Ty(ty_tag));
        case Ty::FLOAT:
        case Ty::DOUBLE:
            if (sv[0] == '0' && (sv[1] == 'X' || sv[1] == 'x')) {
                // hex
                double hex_v = svtod_hex(sv);
                if (ty_tag == Ty::FLOAT) {
                    return new FltConst(static_cast<float>(hex_v));
                } else {
                    return new DblConst(hex_v);
                }
            } else {
                if (ty_tag == Ty::FLOAT) {
                    return new FltConst(svtov<float>(sv));
                } else {
                    return new DblConst(svtov<double>(sv));
                }
            }
            // TODO Array & Pointer type
        default:
            unreachable();
    }
}

Program::~Program() {
    auto func = funcs.head;
    Func *nxt_func;
    while (func) {
        nxt_func = func->next;
        delete func;
        func = nxt_func;
    }

    std::ranges::for_each(globals,
                          [](auto global) { delete global; });
}

const Ty Ty::LabelTy = Ty(Ty::LABEL);
