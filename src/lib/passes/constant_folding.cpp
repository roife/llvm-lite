#include <cassert>
#include <utility>
#include <variant>
#include "passes/constant_folding.h"
#include "syntax/parser.h"
#include "ir/value_info.h"

bool SccpPass::run() {
    auto has_changed = false;

    for (auto func = program->funcs.head; func; func = func->next) {
        if (!func->is_decl) {
            FnSccpPass fn_sccp(func, args_parser);
            has_changed |= fn_sccp.run();
        }
    }

    return has_changed;
}

void FnSccpPass::fold_constants(std::optional<SccpParserInfo> info) {
    cfg_worklist.emplace_back(nullptr, func->bbs.head);

    while (!cfg_worklist.empty() || !ssa_worklist.empty()) {
        if (!cfg_worklist.empty()) {
            auto edge = *cfg_worklist.begin();
            cfg_worklist.pop_front();
            if (executed_edges.contains(edge)) {
                continue;
            }

            auto [original_bb, cur_bb_value] = edge;

            BasicBlock *cur_bb;
            if (cur_bb_value->is_undef()) {
                assert(info.has_value());
                std::string cur_bb_name_sv = to_string(cur_bb_value->name);
                auto pos = info.value().bb_map->at(cur_bb_name_sv);
                info.value().parser->lexer.cur_ptr = pos;
                info.value().parser->lexer.next();

                cur_bb_value = info.value().parser->parse_bb(func->info.value());
                // edge & cur_bb_value has been deleted

                executed_edges.insert(std::make_pair(original_bb, cur_bb_value));
                cur_bb = cast<BasicBlock>(cur_bb_value);
            } else {
                // edge is alive
                executed_edges.insert(edge);
                cur_bb = cast<BasicBlock>(cur_bb_value);
            }

            // visit all phis in cur_bb
            auto inst = cur_bb->insts.head;
            while (inst && isa_p<PhiInst>(inst)) {
                visit_phi(inst);
                inst = inst->next;
            }

            // visit all inst if cur_bb is not executed_bbs
            if (!executed_bbs.contains(cur_bb)) {
                executed_bbs.insert(cur_bb);
                while (inst) {
                    visit_inst(inst);
                    inst = inst->next;
                }
            }
        }

        if (!ssa_worklist.empty()) {
            auto cur_inst = cast<Inst>(*ssa_worklist.begin());
            ssa_worklist.pop_front();

            if (!executed_bbs.contains(cur_inst->bb)) {
                continue;
            }

            if (cur_inst->opcode == Inst::Opcode::PHI) {
                visit_phi(cur_inst);
            } else {
                visit_inst(cur_inst);
            }
        }
    }
}

void FnSccpPass::visit_phi(Inst *inst) {
    auto phi = cast<PhiInst>(inst);
    auto cur_bb = inst->bb;

    // Cancel if phi is Bot
    if (is_bot(phi)) {
        return;
    }

    for (size_t i = 1; i < phi->op_count; i += 2) {
        if (phi->get_operand(i)->is_undef()) {
            continue;
        }

        auto prev_bb = cast<BasicBlock>(phi->get_operand(i));
        if (!executed_edges.contains(std::make_pair(prev_bb, cur_bb))) {
            continue;
        }

        auto operand = phi->get_operand(i - 1);
        // update phi
        auto new_val = meet(phi, operand);
        if (new_val.has_value()) {
            // add all use to SsaWorklist
            for (auto use = phi->uses.head; use; use = use->next) {
                ssa_worklist.push_back(use->user);
            }
            set_const(phi, *new_val);
            if (*new_val == Bot) {
                break;
            }
        }
    }
}

inline std::optional<Const *> FnSccpPass::meet(Value *dst, Value *src) {
    // meet(val1, Top)       = val1
    // meet(val1, Bot)       = Bot
    // meet(val1, val2)      = val1     if val1 == val2
    // meet(val1, val2)      = Bot      if val1 != val2
    if (is_top(src) || is_bot(dst)) {
        return std::nullopt;
    } else if (is_bot(src)) {
        return Bot;
    } else {
        auto val2 = get_const<Const>(src);
        if (is_top(dst)) {
            return val2->clone();
        } else {
            auto val1 = get_const<Const>(dst);
            return *val1 != *val2 ? std::make_optional(Bot) : std::nullopt;
        }
    }
}

inline std::optional<Const *> FnSccpPass::evaluate_inst(Inst *inst) {
    if (initialized_names.contains(inst->name)) {
        return std::nullopt;
    }

    if (is_bot(inst)) {
        return std::nullopt;
    }

    switch (inst->opcode) {
        case Inst::ADD:
        case Inst::SUB:
        case Inst::XOR:
        case Inst::ASHR: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst) || is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                long long ans = -1;
                if (inst->opcode == Inst::ADD) ans = v1 + v2;
                else if (inst->opcode == Inst::SUB) ans = v1 - v2;
                else if (inst->opcode == Inst::XOR) ans = v1 ^ v2;
                else if (inst->opcode == Inst::ASHR) ans = v1 >> v2;
                return new IntConst(ans, new Ty(inst->ty->ty_tag));
            }
        }

            // x op 0 = 0, 0 op x = 0
        case Inst::AND:
        case Inst::MUL: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            if ((is_const(op1) && get_const<IntConst>(op1)->v == 0)
                || (is_const(op2) && get_const<IntConst>(op2)->v == 0)) {
                return is_const(inst) ?
                       std::nullopt :
                       std::make_optional(new IntConst(0, new Ty(op1->ty->ty_tag)));  // dont change if it's a const
            } else if (is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                auto ans = inst->opcode == Inst::AND ? v1 & v2 : v1 * v2;
                return new IntConst(ans, new Ty(inst->ty->ty_tag));
            }
        }

            // 0 op x = 0
        case Inst::UDIV:
        case Inst::SDIV: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);

            if (is_const(op1) && get_const<IntConst>(op1)->v == 0) {
                return is_const(inst) ?
                       std::nullopt :
                       std::optional(new IntConst(0, new Ty(op1->ty->ty_tag)));  // dont change if it's a const
            } else if (is_top(op1)) {
                return std::nullopt;
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_top(op2) || is_const(inst)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                auto u1 = static_cast<unsigned long long>(v1);
                auto u2 = static_cast<unsigned long long>(v2);
                long long ans;
                if (inst->opcode == Inst::UDIV) ans = static_cast<long long>(u1 / u2);
                else if (inst->opcode == Inst::SDIV) ans = v1 / v2;
                else unreachable();

                return new IntConst(ans, new Ty(inst->ty->ty_tag));
            }
        }

            // 0 op x = 0
            // x % 1 = 0
        case Inst::UREM:
        case Inst::SREM: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);

            if ((is_const(op1) && get_const<IntConst>(op1)->v == 0)
                || (is_const(op2) && get_const<IntConst>(op2)->v == 1)) {
                return is_const(inst) ?
                       std::nullopt :
                       std::optional(new IntConst(0, new Ty(op1->ty->ty_tag)));  // dont change if it's a const
            } else if (is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                auto u1 = static_cast<unsigned long long>(v1);
                auto u2 = static_cast<unsigned long long>(v2);
                long long ans;
                if (inst->opcode == Inst::UREM) ans = static_cast<int>(u1 % u2);
                else if (inst->opcode == Inst::SREM) ans = v1 % v2;
                else unreachable();

                return new IntConst(ans, new Ty(inst->ty->ty_tag));
            }
        }

            // x << 32 = 0
        case Inst::SHL:
        case Inst::LSHR: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            if (is_const(op2) && get_const<IntConst>(op2)->v >= Ty::get_int_width(inst->ty->ty_tag)) {
                return is_const(inst) ?
                       std::nullopt :
                       std::optional(new IntConst(0, new Ty(op1->ty->ty_tag)));  // dont change if it's a const
            } else if (is_top(op2)) {
                return std::nullopt;
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_top(op1) || is_const(inst)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                auto u1 = static_cast<unsigned long long>(v1);
                auto u2 = static_cast<unsigned long long>(v2);
                auto ans = inst->opcode == Inst::SHL ? v1 << v2 : static_cast<long long>(u1 >> u2);
                return new IntConst(ans, new Ty(inst->ty->ty_tag));
            }
        }

            // x | -1 = -1
        case Inst::OR: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            if ((is_const(op1) && get_const<IntConst>(op1)->v == -1)
                || (is_const(op2) && get_const<IntConst>(op2)->v == -1)) {
                return is_const(inst) ?
                       std::nullopt :
                       std::optional(new IntConst(-1, new Ty(op1->ty->ty_tag)));  // dont change if it's a const
            } else if (is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                return new IntConst(v1 | v2, new Ty(inst->ty->ty_tag));
            }
        }

        case Inst::ICMP: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst) || is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else {
                auto v1 = get_const<IntConst>(op1)->v;
                auto v2 = get_const<IntConst>(op2)->v;
                auto u1 = static_cast<unsigned>(v1);
                auto u2 = static_cast<unsigned>(v2);
                auto pred = cast<IcmpInst>(inst)->pred;
                bool ans;
                if (pred == IcmpInst::Pred::EQ) ans = u1 == u2;
                else if (pred == IcmpInst::Pred::NE) ans = u1 != u2;
                else if (pred == IcmpInst::Pred::UGT) ans = u1 > u2;
                else if (pred == IcmpInst::Pred::UGE) ans = u1 >= u2;
                else if (pred == IcmpInst::Pred::ULT) ans = u1 < u2;
                else if (pred == IcmpInst::Pred::ULE) ans = u1 <= u2;
                else if (pred == IcmpInst::Pred::SGT) ans = v1 > v2;
                else if (pred == IcmpInst::Pred::SGE) ans = v1 >= v2;
                else if (pred == IcmpInst::Pred::SLT) ans = v1 < v2;
                else ans = v1 <= v2; // SLE
                return new IntConst(ans, new Ty(Ty::BOOL));
            }
        }
        case Inst::FCMP: {
            auto op1 = inst->get_operand(0);
            auto op2 = inst->get_operand(1);
            auto pred = cast<FcmpInst>(inst)->pred;
            if (pred == FcmpInst::Pred::TRUE || pred == FcmpInst::Pred::FALSE) {
                return is_const(inst) ?
                       std::nullopt :
                       std::optional(new IntConst(pred == FcmpInst::Pred::TRUE,
                                                  new Ty(Ty::BOOL)));  // do not change if it's a const
            } else if (is_bot(op1) || is_bot(op2)) {
                return Bot;
            } else if (is_const(inst) || is_top(op1) || is_top(op2)) {
                return std::nullopt;
            } else {
                // TODO: QNAN
                auto p = [&]<typename T>() {
                    auto v1 = get_const<T>(op1)->v;
                    auto v2 = get_const<T>(op2)->v;
                    if (pred == FcmpInst::Pred::OEQ) return v1 == v2;
                    else if (pred == FcmpInst::Pred::OGT) return v1 > v2;
                    else if (pred == FcmpInst::Pred::OGE) return v1 >= v2;
                    else if (pred == FcmpInst::Pred::OLT) return v1 < v2;
                    else if (pred == FcmpInst::Pred::OLE) return v1 <= v2;
                    else if (pred == FcmpInst::Pred::ONE) return v1 != v2;
                    else if (pred == FcmpInst::Pred::UEQ) return v1 == v2;
                    else if (pred == FcmpInst::Pred::UGT) return v1 > v2;
                    else if (pred == FcmpInst::Pred::UGE) return v1 >= v2;
                    else if (pred == FcmpInst::Pred::ULT) return v1 < v2;
                    else if (pred == FcmpInst::Pred::ULE) return v1 <= v2;
                    else if (pred == FcmpInst::Pred::UNE) return v1 != v2;
                    else if (pred == FcmpInst::Pred::ORD) return v1 == v2;
                    else return v1 != v2; // UNO
                };

                bool ans;

                if (op1->ty->ty_tag == Ty::FLOAT) {
                    ans = p.template operator()<FltConst>();
                } else {
                    ans = p.template operator()<DblConst>();
                }

                return new IntConst(ans, new Ty(Ty::BOOL));
            }
        }

        case Inst::GEP:
        case Inst::LOAD:
        case Inst::ALLOCA:
        case Inst::CALL:
        case Inst::FREEZE:
            return Bot;

        case Inst::CAST: {
            auto op = inst->get_operand(0);
            if (is_bot(op)) {
                return Bot;
            } else if (is_top(op) || is_const(inst)) {
                return std::nullopt;
            } else {
                auto cast_inst = cast<CastInst>(inst);
                switch (cast_inst->cast_op) {
                    case CastInst::CastOp::ZEXT:
                    case CastInst::CastOp::BITCAST: {
                        auto const_op = get_const<IntConst>(op);
                        return new IntConst(const_op->v, new Ty(cast_inst->ty->ty_tag));
                    }
                    case CastInst::CastOp::SEXT: {
                        auto const_op = get_const<IntConst>(op);
                        auto b1 = Ty::get_int_width(const_op->ty->ty_tag);
                        auto b2 = Ty::get_int_width(cast_inst->target_ty->ty_tag);
                        if (const_op->v >> (b1 - 1)) {
                            auto v = const_op->v | (((1 << b2) - 1) & ~((1 << b1) - 1));
                            return new IntConst(v, new Ty(cast_inst->target_ty->ty_tag));
                        } else {
                            return new IntConst(const_op->v, new Ty(cast_inst->target_ty->ty_tag));
                        }
                    }
                    case CastInst::CastOp::TRUNC: {
                        auto const_op = get_const<IntConst>(op);
                        auto b2 = Ty::get_int_width(cast_inst->target_ty->ty_tag);
                        return new IntConst(const_op->v & ((1 << b2) - 1), new Ty(cast_inst->ty->ty_tag));
                    }
                    case CastInst::CastOp::INTTOPTR:
                    case CastInst::CastOp::PTRTOINT: {
                        return std::nullopt; // cannot simplify
                    }
                    default:
                        unreachable();
                }
            }
        }

        case Inst::SELECT: {
            auto cond = inst->get_operand(0);
            auto true_val = inst->get_operand(1);
            auto false_val = inst->get_operand(2);
            if (is_const(cond)) {
                auto selected = get_const<IntConst>(cond)->v ? true_val : false_val;
                if (is_bot(selected)) {
                    return Bot;
                } else if (is_const(inst) || is_top(selected)) {
                    return std::nullopt;
                } else {
                    return get_const<Const>(selected)->clone();
                }
            } else {
                if (is_bot(cond)
                    ? is_bot(true_val) || is_bot(false_val)
                    : is_bot(true_val) && is_bot(false_val)) {
                    return Bot;
                } else if (is_top(true_val) || is_top(false_val)) {
                    return std::nullopt;
                } else {
                    auto true_c = get_const<Const>(true_val);
                    auto false_c = get_const<Const>(false_val);
                    if (true_c != false_c) {
                        return Bot;
                    } else if (is_const(inst)) {
                        return std::nullopt;
                    } else {
                        return true_c->clone();
                    }
                }
            }
        }

        default:
            unreachable();
    }
}

inline std::vector<FnSccpPass::CfgEdge>
FnSccpPass::visit_terminator(Inst *inst) const {
    std::vector<CfgEdge> may_out_bbs;
    switch (inst->opcode) {
        case Inst::BRANCH: {
            auto cond = inst->get_operand(0);
            auto true_bb = inst->get_operand(1);
            auto false_bb = inst->get_operand(2);
            if (is_bot(cond)) {
                may_out_bbs.emplace_back(inst->bb, true_bb);
                may_out_bbs.emplace_back(inst->bb, false_bb);
            } else if (is_const(cond)) {
                auto nxt_bb = get_const<IntConst>(cond)->v ? true_bb : false_bb;
                may_out_bbs.emplace_back(inst->bb, nxt_bb);
            }
            break;
        }
        case Inst::SWITCH: {
            auto cond = inst->get_operand(0);
            if (is_bot(cond)) {
                for (size_t i = 1; i < inst->op_count; i += 2) {
                    auto bb = inst->get_operand(i);
                    may_out_bbs.emplace_back(inst->bb, bb);
                }
            } else if (is_const(cond)) {
                auto cond_v = get_const<IntConst>(cond)->v;
                for (size_t i = 2; i < inst->op_count; i += 2) {
                    if (cond_v == get_const<IntConst>(inst->get_operand(i))->v) {
                        auto bb = inst->get_operand(i + 1);
                        may_out_bbs.emplace_back(inst->bb, bb);
                        break;
                    }
                }
                if (may_out_bbs.empty()) {
                    auto default_bb = inst->get_operand(1);
                    may_out_bbs.emplace_back(inst->bb, default_bb);
                }
            }
            break;
        }
        case Inst::JUMP: {
            auto nxt_bb = inst->get_operand(0);
            may_out_bbs.emplace_back(inst->bb, nxt_bb);
            break;
        }
        case Inst::RETURN:
            break;
        default:
            unreachable();
    }
    return may_out_bbs;
}

void FnSccpPass::visit_inst(Inst *inst) {
    assert(inst->opcode != Inst::PHI);

    if (inst->is_assignment()) {
        auto new_val = evaluate_inst(inst);
        // assert monotonic
        // is_const -> new_val == std::nullopt || new_val == Bot
        assert(!is_const(inst) || (new_val == std::nullopt || new_val == Bot));
        // is_bot -> new_val == Bot
        assert(!is_bot(inst) || new_val == std::nullopt);
        if (new_val.has_value()) {
            set_const(inst, *new_val);
            // add all use to SsaWorklist
            for (auto use = inst->uses.head; use; use = use->next) {
                ssa_worklist.push_back(use->user);
            }
        }
    } else if (inst->is_terminator()) {
        auto may_out_bbs = visit_terminator(inst);
        cfg_worklist.insert(cfg_worklist.end(), may_out_bbs.begin(), may_out_bbs.end());
    }
}

bool FnSccpPass::replace_consts() {
    auto has_changed = false;

    // replace with consts
    for (auto &[v, c]: value_map) {
        if (v->value_tag != Value::ValueTag::Inst || c == nullptr) {
            continue;
        }
        has_changed = true;
        v->replace_all_use_with(c);
        // v will be deleted in DCE
    }

    // simplify terminators
    for (auto bb = func->bbs.head; bb; bb = bb->next) {
        has_changed |= bb->simplify_terminator_and_phis();
    }

    return has_changed;
}

bool FnSccpPass::run() {
    init_value_map();
    fold_constants();
    return replace_consts();
}

void FnSccpPass::init_value_map() {
    // initialize value_map (parameters or global values)
    std::string func_name = to_string(func->name);

    for (const auto &param: func->params) {
        value_map[param] = nullptr;
    }

    if (args_parser.map.contains(func_name)) {
        for (const auto &[name, c]: args_parser.map.at(func_name)) {
            Value *v;
            if (func->info->named_values.contains(name)) {
                v = func->info->named_values.at(name);
                initialized_names.insert(name);
            } else {
                auto idx = svtov<size_t>(name);
                // assert(idx < func->info->unamed_values.size());
                v = func->info->unamed_values[idx];
                initialized_names.insert(idx);
            }
            if (v != nullptr) {
                value_map[v] = Const::sv_to_const(c, v->ty->ty_tag);
            }
        }
    }
}
