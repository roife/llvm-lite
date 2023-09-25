#include <iostream>
#include <cassert>
#include <ostream>
#include <set>
#include <string_view>
//#include "syntax/span.h"
#include "common/common.h"
#include "ir/attributes.h"
#include "ir/basicblock.h"
#include "ir/constant.h"
#include "syntax/parser.h"
#include "passes/constant_folding.h"
#include "syntax/tokens.h"

#define expect_and_next(tok_kind) do { \
        auto check = expect_token_kind(lexer.cur_tok, tok_kind); \
        assert(check); \
        lexer.next(); \
    } while(0)
#define get_val_and_next(tok_kind) ({ \
        auto check = expect_token_kind(lexer.cur_tok, tok_kind); \
        assert(check); \
        auto retval = lexer.cur_tok.val;          \
        lexer.next();                         \
        retval;                           \
    })

// use specific version of unreachable
#undef unreachable
#define unreachable() do { print_err(lexer.cur_tok); assert(false && "unreachable"); } while(0)

inline void print_err(const Token &tok) {
    std::cerr << "Unrecognized token " << ": " << tok.val << "." << "\n";
}

inline bool expect_token_kind(const Token &token, Token::Kind expected) {
    if (token.kind != expected) {
        print_err(token);
        return false;
    }

    return true;
}

void Parser::parse_program() {
    while (true) {
        switch (lexer.cur_tok.kind) {
            case Token::TOK_EOF:
                return;
            case Token::KW_source_filename:
                parse_source_file_name();
                break;
            case Token::KW_target:
                parse_target_definition();
                break;
            case Token::KW_define:
                parse_define();
                break;
            case Token::KW_declare:
                parse_declare();
                break;
            case Token::KW_attributes:
                parse_attribute_group();
                break;
            case Token::MetadataVar:
                parse_metadata_entry();
                break;
            case Token::GlobalVarStr:
            case Token::GlobalVarID:
                parse_global();
                break;
            default:
                unreachable();
        }
    }
}

inline Ty *Parser::parse_ty() {
    Ty *ret;
    if (check_cur(Token::TY_void)) {
        ret = new Ty(Ty::VOID);
        lexer.next();
    } else if (check_cur(Token::TY_int)) {
        if (lexer.cur_tok.val.compare("i32") == 0) {
            ret = new Ty(Ty::INT32);
        } else if (lexer.cur_tok.val.compare("i64") == 0) {
            ret = new Ty(Ty::INT64);
        } else if (lexer.cur_tok.val.compare("i1") == 0) {
            ret = new Ty(Ty::BOOL);
        } else if (lexer.cur_tok.val.compare("i8") == 0) {
            ret = new Ty(Ty::INT8);
        } else if (lexer.cur_tok.val.compare("i16") == 0) {
            ret = new Ty(Ty::INT16);
        } else {
            unreachable();
        }
        lexer.next();
    } else if (check_cur(Token::TY_float)) {
        ret = new Ty(Ty::FLOAT);
        lexer.next();
    } else if (check_cur(Token::TY_double)) {
        ret = new Ty(Ty::DOUBLE);
        lexer.next();
    } else if (check_cur(Token::LSqr)) {
        expect_and_next(Token::LSqr);
        auto size = svtov<size_t>(get_val_and_next(Token::IntLiteral));
        expect_and_next(Token::KW_x);

        auto ty = parse_ty();
        expect_and_next(Token::RSqr);

        ret = new ArrayTy(ty, size);
    } else if (check_cur(Token::TY_ptr)) {
        lexer.next();
        ret = new Ty(Ty::OpaquePtr);
    } else {
        unreachable();
    }

    while (check_cur(Token::Star)) {
        ret = new PtrTy(ret);
        lexer.next();
    }

    return ret;
}

void Parser::parse_source_file_name() {
    expect_and_next(Token::KW_source_filename);
    expect_and_next(Token::Equal);
    program->source_file_name = get_val_and_next(Token::String);
}

void Parser::parse_target_definition() {
    expect_and_next(Token::KW_target);
    switch (lexer.cur_tok.kind) {
        case Token::KW_datalayout:
            expect_and_next(Token::KW_datalayout);
            expect_and_next(Token::Equal);
            program->target_def.datalayout = get_val_and_next(Token::String);
            break;
        case Token::KW_triple:
            expect_and_next(Token::KW_triple);
            expect_and_next(Token::Equal);
            program->target_def.triple = get_val_and_next(Token::String);
            break;
        default:
            unreachable();
    }
}

void Parser::parse_define() {
    expect_and_next(Token::KW_define);
    auto func = parse_func_header(false);
    if (args_parser.has_value()) {
        sccp_parse_func_body(*func);
    } else {
        parse_func_body(*func);
    }
}

void Parser::parse_func_body(Func &func) {
    expect_and_next(Token::LBra);

    func.info = ValueInfo<Func>(&func);
    for (const auto &param: func.params) {
        func.info->update_value(param->name, param);
    }

    // parse bbs
    while (!check_cur(Token::RBra)) {
        parse_bb(func.info.value());
    }

    expect_and_next(Token::RBra);
}

void Parser::sccp_parse_func_body(Func &func) {
    assert(args_parser.has_value());
    auto fn_sccp = FnSccpPass(&func, args_parser.value());

    std::string func_name = to_string(func.name);
    func.info = ValueInfo<Func>(&func, &fn_sccp, args_parser.value().map.contains(func_name)
                                                 ? &args_parser.value().map.at(func_name) : nullptr);

    for (const auto &param: func.params) {
        func.info->update_value(param->name, param);
    }

    auto [bb_pos, func_end] = lexer.sccp_find_all_bbs_in_func(lexer.cur_ptr);

    expect_and_next(Token::LBra);

    // parse first bb
    parse_bb(func.info.value());

    fn_sccp.fold_constants((FnSccpPass::SccpParserInfo) {this, &bb_pos});
    fn_sccp.replace_consts();

    // ASSERTION
    assert([&]() -> bool {
        for (auto bb = func.bbs.head; bb; bb = bb->next) {
            if (bb->is_undef()) {
                assert(false);
            }
            for (auto inst = bb->insts.head; inst; inst = inst->next) {
                if (inst->is_undef()) {
                    assert(false);
                }

                for (size_t i = 0; i < inst->operands.size(); i++) {
                    if (inst->opcode == Inst::CALL && i == 0) {
                        continue;
                    }
                    if (inst->operands[i]->definer->is_undef()) {
                        assert(false);
                    }
                }
            }
        }
        return true;
    }());

    lexer.cur_ptr = func_end;
    lexer.next();

    expect_and_next(Token::RBra);
}

BasicBlock *Parser::parse_bb(ValueInfo<Func> &func_info) {
    // Create BB
    // Check if bbs starts out with a bb_name
    Name_t bb_name;
    if (auto name = parse_name(Token::LabelStr, Token::LabelID)) {
        bb_name = *name;
    } else {
        bb_name = func_info.unamed_values.size();
    }

    auto bb = new BasicBlock(bb_name, func_info.container);
    func_info.update_value(bb_name, bb);

    // Parse Insts
    Inst *inst;
    do {
        // Check if inst starts out with a bb_name
        Name_t inst_name;
        if (auto name = parse_name(Token::LocalVarStr, Token::LocalVarID)) {
            inst_name = *name;
            expect_and_next(Token::Equal);
        }

        inst = parse_inst(func_info, inst_name, bb);
        if_cur_and_next(Token::Comma);
        if (check_cur(Token::MetadataVar)) {
            parse_metadata(inst);
        }
    } while (!inst->is_terminator());

    return bb;
}

Inst *Parser::parse_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    Inst *inst;
    switch (lexer.cur_tok.kind) {
        case Token::INST_add:
        case Token::INST_sub:
        case Token::INST_mul:
        case Token::INST_udiv:
        case Token::INST_sdiv:
        case Token::INST_urem:
        case Token::INST_srem:
        case Token::INST_shl:
        case Token::INST_lshr:
        case Token::INST_ashr:
        case Token::INST_and:
        case Token::INST_or:
        case Token::INST_xor:
            inst = parse_binary_inst(func_info, name, bb);
            break;
        case Token::INST_icmp:
            inst = parse_icmp_inst(func_info, name, bb);
            break;
        case Token::INST_fcmp:
            inst = parse_fcmp_inst(func_info, name, bb);
            break;
        case Token::INST_br:
            inst = parse_br_inst(func_info, bb);
            break;
        case Token::INST_zext:
        case Token::INST_sext:
        case Token::INST_bitcast:
        case Token::INST_trunc:
        case Token::INST_inttoptr:
        case Token::INST_ptrtoint:
            inst = parse_cast_inst(func_info, name, bb);
            break;
        case Token::INST_ret:
            inst = parse_ret_inst(func_info, bb);
            break;
        case Token::INST_alloca:
            inst = parse_alloca_inst(func_info, name, bb);
            break;
        case Token::INST_phi:
            inst = parse_phi_inst(func_info, name, bb);
            break;
        case Token::INST_select:
            inst = parse_select_inst(func_info, name, bb);
            break;
        case Token::INST_load:
            inst = parse_load_inst(func_info, name, bb);
            break;
        case Token::INST_store:
            inst = parse_store_inst(func_info, bb);
            break;
        case Token::KW_tail:
        case Token::KW_musttail:
        case Token::KW_notail:
        case Token::INST_call:
            inst = parse_call_inst(func_info, name, bb);
            break;
        case Token::INST_getelementptr:
            inst = parse_gep_inst(func_info, name, bb);
            break;
        case Token::INST_switch:
            inst = parse_switch_inst(func_info, bb);
            break;
        case Token::INST_freeze:
            inst = parse_freeze_inst(func_info, name, bb);
            break;
        default:
            unreachable();
    }

    return inst;
}

Param *Parser::parse_param() {
    auto ty = parse_ty();

    // param_header
    auto attr = parse_attributes();

    Name_t name = parse_name(Token::LocalVarStr, Token::LocalVarID).value_or(Name_t{});

    return new Param{
            name,
            ty,
            std::move(attr)
    };
}

Value *Parser::parse_value(ValueInfo<Func> &func_info, Ty const *ty) {
    Value *value;
    switch (lexer.cur_tok.kind) {
        case Token::IntLiteral:
        case Token::FloatLiteral:
        case Token::KW_true:
        case Token::KW_false:
        case Token::String:
            value = parse_literal(ty->ty_tag);
            break;
        case Token::INST_zext:
        case Token::INST_sext:
        case Token::INST_bitcast:
        case Token::INST_trunc:
        case Token::INST_inttoptr:
        case Token::INST_ptrtoint:
            value = parse_expr_const(func_info, ty);
            break;
        case Token::LocalVarID:
            value = func_info.get_value(svtov<size_t>(get_val_and_next(Token::LocalVarID)));
            break;
        case Token::LocalVarStr:
            value = func_info.get_value(get_val_and_next(Token::LocalVarID));
            break;
        case Token::GlobalVarID:
            value = program_info.get_value(get_val_and_next(Token::GlobalVarID));
            break;
        case Token::GlobalVarStr:
            value = program_info.get_value(get_val_and_next(Token::GlobalVarStr));
            break;
        default:
            unreachable();
    }
    return value;
}

Inst *Parser::parse_icmp_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_icmp);

    IcmpInst::Pred pred;
    switch (lexer.cur_tok.kind) {
        case Token::KW_eq:
            pred = IcmpInst::Pred::EQ;
            break;
        case Token::KW_ne:
            pred = IcmpInst::Pred::NE;
            break;
        case Token::KW_slt:
            pred = IcmpInst::Pred::SLT;
            break;
        case Token::KW_sgt:
            pred = IcmpInst::Pred::SGT;
            break;
        case Token::KW_sle:
            pred = IcmpInst::Pred::SLE;
            break;
        case Token::KW_sge:
            pred = IcmpInst::Pred::SGE;
            break;
        case Token::KW_ult:
            pred = IcmpInst::Pred::ULT;
            break;
        case Token::KW_ugt:
            pred = IcmpInst::Pred::UGT;
            break;
        case Token::KW_ule:
            pred = IcmpInst::Pred::ULE;
            break;
        case Token::KW_uge:
            pred = IcmpInst::Pred::UGE;
            break;
        default:
            unreachable();
    }

    lexer.next();

    auto ty = parse_ty();
    auto lhs = parse_value(func_info, ty);
    expect_and_next(Token::Comma);
    auto rhs = parse_value(func_info, ty);
    delete ty; // avoid memory leak

    auto inst = new IcmpInst(name, pred, lhs, rhs, bb);
    func_info.update_value(name, inst);
    return inst;
}

std::optional<Alignment> Parser::parse_alignment() {
    expect_and_next(Token::KW_align);
    auto alignment = Alignment(svtov<int>(get_val_and_next(Token::IntLiteral)));
    return alignment;
}

Inst *Parser::parse_binary_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    Inst::Opcode opcode;
    switch (lexer.cur_tok.kind) {
        case Token::INST_add:
            opcode = Inst::Opcode::ADD;
            break;
        case Token::INST_sub:
            opcode = Inst::Opcode::SUB;
            break;
        case Token::INST_mul:
            opcode = Inst::Opcode::MUL;
            break;
        case Token::INST_udiv:
            opcode = Inst::Opcode::UDIV;
            break;
        case Token::INST_sdiv:
            opcode = Inst::Opcode::SDIV;
            break;
        case Token::INST_urem:
            opcode = Inst::Opcode::UREM;
            break;
        case Token::INST_srem:
            opcode = Inst::Opcode::SREM;
            break;
        case Token::INST_shl:
            opcode = Inst::Opcode::SHL;
            break;
        case Token::INST_lshr:
            opcode = Inst::Opcode::LSHR;
            break;
        case Token::INST_ashr:
            opcode = Inst::Opcode::ASHR;
            break;
        case Token::INST_and:
            opcode = Inst::Opcode::AND;
            break;
        case Token::INST_or:
            opcode = Inst::Opcode::OR;
            break;
        case Token::INST_xor:
            opcode = Inst::Opcode::XOR;
            break;
        case Token::INST_fadd:
            opcode = Inst::Opcode::FADD;
            break;
        case Token::INST_fsub:
            opcode = Inst::Opcode::FSUB;
            break;
        case Token::INST_fmul:
            opcode = Inst::Opcode::FMUL;
            break;
        case Token::INST_fdiv:
            opcode = Inst::Opcode::FDIV;
            break;
        case Token::INST_frem:
            opcode = Inst::Opcode::FREM;
            break;
        default:
            unreachable();
    }
    lexer.next();
    auto nuw = if_cur_and_next(Token::KW_nuw);
    auto nsw = if_cur_and_next(Token::KW_nsw);
    auto exact = if_cur_and_next(Token::KW_exact);

    auto ty = parse_ty();
    auto lhs = parse_value(func_info, ty);
    expect_and_next(Token::Comma);
    auto rhs = parse_value(func_info, ty);

    auto inst = new BinaryInst(name, opcode, ty, lhs, rhs, nuw, nsw, exact, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_br_inst(ValueInfo<Func> &func_info, BasicBlock *bb) {
    expect_and_next(Token::INST_br);

    if (check_cur(Token::KW_label)) {
        lexer.next();
        auto nxt_bb = parse_value(func_info, &Ty::LabelTy);

        return new JumpInst(nxt_bb, bb);
    } else {
        auto ty = parse_ty();
        assert(ty->ty_tag == Ty::BOOL);

        auto cond = parse_value(func_info, ty);
        delete ty;

        expect_and_next(Token::Comma);

        expect_and_next(Token::KW_label);
        auto true_bb = parse_value(func_info, &Ty::LabelTy);

        expect_and_next(Token::Comma);

        expect_and_next(Token::KW_label);
        auto false_bb = parse_value(func_info, &Ty::LabelTy);

        return new BranchInst(cond, true_bb, false_bb, bb);
    }
}

Inst *Parser::parse_cast_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    CastInst::CastOp cast_op;

    switch (lexer.cur_tok.kind) {
        case Token::INST_zext:
            cast_op = CastInst::CastOp::ZEXT;
            break;
        case Token::INST_sext:
            cast_op = CastInst::CastOp::SEXT;
            break;
        case Token::INST_bitcast:
            cast_op = CastInst::CastOp::BITCAST;
            break;
        case Token::INST_trunc:
            cast_op = CastInst::CastOp::TRUNC;
            break;
        case Token::INST_inttoptr:
            cast_op = CastInst::CastOp::INTTOPTR;
            break;
        case Token::INST_ptrtoint:
            cast_op = CastInst::CastOp::PTRTOINT;
            break;
        default:
            unreachable();
    }
    lexer.next();

    auto orig_ty = parse_ty();
    auto orig_val = parse_value(func_info, orig_ty);
    expect_and_next(Token::KW_to);
    auto target_ty = parse_ty();

    delete orig_ty;

    auto inst = new CastInst(name, cast_op, orig_val, target_ty, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_ret_inst(ValueInfo<Func> &func_info, BasicBlock *bb) {
    expect_and_next(Token::INST_ret);

    if (check_cur(Token::TY_void)) {
        lexer.next();
        return new RetInst(bb);
    } else {
        auto ty = parse_ty();
        auto ret_val = parse_value(func_info, ty);

        delete ty;

        return new RetInst(ret_val, bb);
    }
}

Inst *Parser::parse_select_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_select);

    auto ty = parse_ty();
    assert(ty->ty_tag == Ty::BOOL);

    auto cond = parse_value(func_info, ty);
    expect_and_next(Token::Comma);

    auto true_ty = parse_ty(); // as inst ty
    auto true_val = parse_value(func_info, true_ty);
    expect_and_next(Token::Comma);

    auto false_ty = parse_ty();
    auto false_val = parse_value(func_info, false_ty);

    delete ty;
    delete false_ty;

    auto inst = new SelectInst(name, cond, true_ty, true_val, false_val, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_alloca_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_alloca);

    auto attr = parse_attributes();
    auto ty = parse_ty();

    std::optional<Alignment> alignment = std::nullopt;
    if (check_cur(Token::Comma)) {
        lexer.next();
        if (check_cur(Token::KW_align)) {
            alignment = parse_alignment();
        }
    }

    auto inst = new AllocaInst(name, ty, alignment, std::move(attr), bb);
    func_info.update_value(name, inst);
    return inst;
}


Inst *Parser::parse_phi_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_phi);

    auto ty = parse_ty();
    std::vector<Value *> vals{};

    do {
        expect_and_next(Token::LSqr);
        auto incoming_val = parse_value(func_info, ty);
        expect_and_next(Token::Comma);
        auto incoming_bb = parse_value(func_info, &Ty::LabelTy);
        expect_and_next(Token::RSqr);

        vals.push_back(incoming_val);
        vals.push_back(incoming_bb);

        if (check_cur(Token::Comma)) {
            lexer.next();
        } else {
            break;
        }
    } while (true);

    auto inst = new PhiInst(name, ty, vals, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_load_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_load);

    auto ty = parse_ty();
    expect_and_next(Token::Comma);

    auto ptr = parse_ty();
    auto addr = parse_value(func_info, ptr);

    std::optional<Alignment> alignment = std::nullopt;
    if (check_cur(Token::Comma)) {
        lexer.next();
        if (check_cur(Token::KW_align)) {
            alignment = parse_alignment();
        }
    }

    delete ptr;

    auto inst = new LoadInst(name, addr, ty, alignment, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_store_inst(ValueInfo<Func> &func_info, BasicBlock *bb) {
    expect_and_next(Token::INST_store);

    auto data_ty = parse_ty();
    auto data = parse_value(func_info, data_ty);
    expect_and_next(Token::Comma);

    auto ptr = parse_ty();
    auto addr = parse_value(func_info, ptr);

    std::optional<Alignment> alignment = std::nullopt;
    if (check_cur(Token::Comma)) {
        lexer.next();
        if (check_cur(Token::KW_align)) {
            alignment = parse_alignment();
        }
    }

    delete data_ty;
    delete ptr;

    auto inst = new StoreInst(data, addr, alignment, bb);
    return inst;
}

Inst *Parser::parse_switch_inst(ValueInfo<Func> &func_info, BasicBlock *bb) {
    expect_and_next(Token::INST_switch);

    auto cond_ty = parse_ty();
    auto cond_val = parse_value(func_info, cond_ty);
    expect_and_next(Token::Comma);

    expect_and_next(Token::KW_label);
    auto default_bb = parse_value(func_info, &Ty::LabelTy);

    std::vector<Value *> vals;

    expect_and_next(Token::LSqr);
    while (!check_cur(Token::RSqr)) {
        auto ty = parse_ty();
        auto val = parse_value(func_info, ty);
        expect_and_next(Token::Comma);

        expect_and_next(Token::KW_label);
        auto dest_bb = parse_value(func_info, &Ty::LabelTy);

        vals.push_back(val);
        vals.push_back(dest_bb);

        delete ty;
    }
    expect_and_next(Token::RSqr);

    delete cond_ty;

    return new SwitchInst(cond_val, default_bb, vals, bb);
}

void Parser::parse_metadata(Value *v) {
    assert (check_cur(Token::MetadataVar));
    while (check_cur(Token::MetadataVar)) {
        auto metadata = MetadataVar(lexer.cur_tok.val);
        v->add_metadata(metadata);
        lexer.next();
    }
}

Inst *Parser::parse_gep_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_getelementptr);
    auto inbounds = if_cur_and_next(Token::KW_inbounds);

    auto base_ty = parse_ty();
    expect_and_next(Token::Comma);

    auto ptr_ty = parse_ty();
    auto ptr = parse_value(func_info, ptr_ty);
    std::vector<Value *> indices;

    while (check_cur(Token::Comma)) {
        lexer.next();
        if (check_cur(Token::MetadataVar)) {
            break;
        }

        auto val_ty = parse_ty();
        auto val = parse_value(func_info, val_ty);
        indices.push_back(val);

        delete val_ty;
    }

    delete ptr_ty;

    auto inst = new GepInst(name, ptr, base_ty, indices, inbounds, bb);
    func_info.update_value(name, inst);
    return inst;
}

Inst *Parser::parse_call_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    auto tailness = CallInst::TailNess::None;
    switch (lexer.cur_tok.kind) {
        case Token::KW_tail:
            tailness = CallInst::TailNess::Tail;
            lexer.next();
            break;
        case Token::KW_musttail:
            tailness = CallInst::TailNess::MustTail;
            lexer.next();
            break;
        case Token::KW_notail:
            tailness = CallInst::TailNess::NoTail;
            lexer.next();
            break;
        case Token::INST_call:
            break;
        default:
            unreachable();
    }

    expect_and_next(Token::INST_call);
    auto ret_attr = parse_attributes();

    Ty *ret_ty;
    if (check_cur(Token::TY_void)) {
        lexer.next();
        ret_ty = new Ty(Ty::VOID);
    } else {
        ret_ty = parse_ty();
    }

    const auto &func_name = lexer.cur_tok.val;
    auto func = program_info.get_value(func_name);
    lexer.next();

    expect_and_next(Token::LPar);
    std::vector<Value *> args;
    std::vector<CallInst::ArgInfo> arg_infos;

    while (!check_cur(Token::RPar)) {
        auto arg_ty = parse_ty();
        auto attr = parse_attributes();

        // parse alignment
        std::optional<Alignment> alignment = std::nullopt;
        if (check_cur(Token::KW_align)) {
            alignment = parse_alignment();
        }

        auto arg = parse_value(func_info, arg_ty);
        args.push_back(arg);
        arg_infos.emplace_back(std::move(attr), alignment);

        if_cur_and_next(Token::Comma);

        delete arg_ty;
    }

    expect_and_next(Token::RPar);

    auto attr_grp_var_list = std::vector<std::string_view>{};
    while (check_cur(Token::AttrGrp)) {
        attr_grp_var_list.push_back(get_val_and_next(Token::AttrGrp));
    }
    auto attr_grp_vars = AttrGrpVars(std::move(attr_grp_var_list));

    CallInst *inst;
    inst = new CallInst(name, func, tailness, ret_ty, std::move(ret_attr), args, std::move(arg_infos),
                        std::move(attr_grp_vars), bb);

    if (ret_ty->ty_tag != Ty::VOID) {
        func_info.update_value(name, inst);
    }

    return inst;
}

Inst *Parser::parse_fcmp_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_fcmp);

    FcmpInst::Pred pred;
    switch (lexer.cur_tok.kind) {
        case Token::KW_false:
            pred = FcmpInst::Pred::FALSE;
            break;
        case Token::KW_oeq:
            pred = FcmpInst::Pred::OEQ;
            break;
        case Token::KW_ogt:
            pred = FcmpInst::Pred::OGT;
            break;
        case Token::KW_oge:
            pred = FcmpInst::Pred::OGE;
            break;
        case Token::KW_olt:
            pred = FcmpInst::Pred::OLT;
            break;
        case Token::KW_ole:
            pred = FcmpInst::Pred::OLE;
            break;
        case Token::KW_one:
            pred = FcmpInst::Pred::ONE;
            break;
        case Token::KW_ord:
            pred = FcmpInst::Pred::ORD;
            break;
        case Token::KW_ueq:
            pred = FcmpInst::Pred::UEQ;
            break;
        case Token::KW_ugt:
            pred = FcmpInst::Pred::UGT;
            break;
        case Token::KW_uge:
            pred = FcmpInst::Pred::UGE;
            break;
        case Token::KW_ult:
            pred = FcmpInst::Pred::ULT;
            break;
        case Token::KW_ule:
            pred = FcmpInst::Pred::ULE;
            break;
        case Token::KW_une:
            pred = FcmpInst::Pred::UNE;
            break;
        case Token::KW_uno:
            pred = FcmpInst::Pred::UNO;
            break;
        case Token::KW_true:
            pred = FcmpInst::Pred::TRUE;
            break;
        default:
            unreachable();
    }

    lexer.next();

    auto ty = parse_ty();
    auto lhs = parse_value(func_info, ty);
    expect_and_next(Token::Comma);
    auto rhs = parse_value(func_info, ty);

    delete ty; // avoid memory leak

    auto inst = new FcmpInst(name, pred, lhs, rhs, bb);
    func_info.update_value(name, inst);
    return inst;
}

void Parser::parse_declare() {
    expect_and_next(Token::KW_declare);
    parse_func_header(true);
}

void Parser::parse_attribute_group() {
    expect_and_next(Token::KW_attributes);
    auto name = get_val_and_next(Token::AttrGrp);
    expect_and_next(Token::Equal);
    auto start_pos = lexer.cur_ptr;

    expect_and_next(Token::LBra);
    while (!check_cur(Token::RBra)) {
        lexer.next();
    }

    auto end_pos = lexer.cur_ptr - 1;
    auto val = std::string_view{start_pos, end_pos};
    expect_and_next(Token::RBra);

    auto attr_grp_entry = AttrGrpEntry(name, val);
    program->attr_grp_entries.push_back(attr_grp_entry);
}

Func *Parser::parse_func_header(bool is_decl) {
    // parse_func_linkage
    auto ret_attr = parse_attributes();

    // parse funcs ret_ty
    auto ret_type = parse_ty();

    // parse funcs func_name
    Name_t func_name;
    if (auto name = parse_name(Token::GlobalVarStr, Token::GlobalVarID)) {
        func_name = *name;
    } else {
        unreachable();
    }

    // parse funcs param_uses
    std::vector<Param *> params{};
    expect_and_next(Token::LPar);
    while (!check_cur(Token::RPar)) {
        auto param = parse_param();
        params.push_back(param);
        if (check_cur(Token::Comma)) {
            lexer.next();
        }
    }
    lexer.next();

    auto fn_attr = parse_attributes();

    // AttrGrpEntry
    auto attr_grp_var_list = std::vector<std::string_view>{};
    while (check_cur(Token::AttrGrp)) {
        attr_grp_var_list.push_back(get_val_and_next(Token::AttrGrp));
    }
    auto attr_grp_vars = AttrGrpVars(std::move(attr_grp_var_list));

    auto func = new Func(func_name, program,
                         is_decl, ret_type, std::move(ret_attr), std::move(fn_attr),
                         std::move(params),
                         std::move(attr_grp_vars));

    program_info.update_value(func_name, func);
    return func;
}

void Parser::parse_metadata_entry() {
    auto name = get_val_and_next(Token::MetadataVar);
    expect_and_next(Token::Equal);

    bool distinct = if_cur_and_next(Token::KW_distinct);
    expect_and_next(Token::Exclaim);

    auto start_pos = lexer.cur_ptr;
    expect_and_next(Token::LBra);
    while (!check_cur(Token::RBra)) {
        lexer.next();
    }

    auto end_pos = lexer.cur_ptr - 1;
    auto val = std::string_view{start_pos, end_pos};
    expect_and_next(Token::RBra);

    auto metadata_entry = MetadataEntry(name, val, distinct);
    program->metadata_entries.push_back(metadata_entry);
}

void Parser::parse_global() {
    Name_t global_name;
    if (auto name = parse_name(Token::GlobalVarStr, Token::GlobalVarID)) {
        global_name = *name;
        expect_and_next(Token::Equal);
    }

    auto attr = parse_attributes();

    Global::GlobalType global_type;
    switch (lexer.cur_tok.kind) {
        case Token::KW_global:
            global_type = Global::GlobalType::Global;
            lexer.next();
            break;
        case Token::KW_constant:
            global_type = Global::GlobalType::Constant;
            lexer.next();
            break;
        default:
            unreachable();
    }

    auto ty = parse_ty();
    auto value = parse_literal(ty->ty_tag);

    std::optional<Alignment> alignment = std::nullopt;
    if (check_cur(Token::Comma)) {
        lexer.next();
        if (check_cur(Token::KW_align)) {
            alignment = parse_alignment();
        }
    }

    auto global = new Global(global_name, global_type, ty, value, std::move(attr), alignment);
    program->globals.push_back(global);
    program_info.update_value(global_name, global);
}

Const *Parser::parse_literal(Ty::TyTag ty_tag) {
    Const *value;
    switch (lexer.cur_tok.kind) {
        case Token::IntLiteral:
            // can be int or float
            assert(Ty::BOOL <= ty_tag && ty_tag <= Ty::DOUBLE);
            if (Ty::is_int(ty_tag)) {
                value = new IntConst(svtov<long long>(lexer.cur_tok.val), new Ty(ty_tag));
            } else if (ty_tag == Ty::FLOAT) {
                value = new FltConst(svtov<float>(lexer.cur_tok.val));
            } else {
                value = new DblConst(svtov<double>(lexer.cur_tok.val));
            }
            lexer.next();
            break;
        case Token::FloatLiteral:
            assert(ty_tag == Ty::FLOAT || ty_tag == Ty::DOUBLE);
            if (lexer.cur_tok.val[0] == '0' && (lexer.cur_tok.val[1] == 'X' || lexer.cur_tok.val[1] == 'x')) {
                // hex
                double hex_v = svtod_hex(lexer.cur_tok.val);
                if (ty_tag == Ty::FLOAT) {
                    value = new FltConst(static_cast<float>(hex_v));
                } else {
                    value = new DblConst(hex_v);
                }
            } else {
                // dec
                if (ty_tag == Ty::FLOAT) {
                    value = new FltConst(svtov<float>(lexer.cur_tok.val));
                } else {
                    value = new DblConst(svtov<double>(lexer.cur_tok.val));
                }
            }
            lexer.next();
            break;
        case Token::KW_true:
            value = new IntConst(true, new Ty(Ty::BOOL));
            lexer.next();
            break;
        case Token::KW_false:
            value = new IntConst(false, new Ty(Ty::BOOL));
            lexer.next();
            break;
            // TODO Array & Pointer type
        case Token::String:
            value = new CharArrayConst(lexer.cur_tok.val);
            lexer.next();
            break;
        default:
            unreachable();
    }
    return value;
}

ExprConst *Parser::parse_expr_const(ValueInfo<Func> &func_info, Ty const *ty) {
    ExprConst *value;

    switch (lexer.cur_tok.kind){
        case Token::INST_zext:
        case Token::INST_sext:
        case Token::INST_bitcast:
        case Token::INST_trunc:
        case Token::INST_inttoptr:
        case Token::INST_ptrtoint:
            value = parse_cast_expr_const(func_info, ty);
            break;
        default:
            unreachable();
    }

    return value;
}

CastExprConst *Parser::parse_cast_expr_const(ValueInfo<Func> &func_info, Ty const *ty) {
    CastExprConst::CastOp cast_op;

    switch (lexer.cur_tok.kind) {
        case Token::INST_zext:
            cast_op = CastExprConst::CastOp::ZEXT;
            break;
        case Token::INST_sext:
            cast_op = CastExprConst::CastOp::SEXT;
            break;
        case Token::INST_bitcast:
            cast_op = CastExprConst::CastOp::BITCAST;
            break;
        case Token::INST_trunc:
            cast_op = CastExprConst::CastOp::TRUNC;
            break;
        case Token::INST_inttoptr:
            cast_op = CastExprConst::CastOp::INTTOPTR;
            break;
        case Token::INST_ptrtoint:
            cast_op = CastExprConst::CastOp::PTRTOINT;
            break;
        default:
            unreachable();
    }

    lexer.next();

    expect_and_next(Token::LPar);
    auto orig_ty = parse_ty();
    auto orig_val = parse_value(func_info, orig_ty);
    expect_and_next(Token::KW_to);
    auto target_ty = parse_ty();
    expect_and_next(Token::RPar);

    delete orig_ty;

    auto expr = new CastExprConst(cast_op, orig_val, target_ty);
    return expr;
}

Attributes Parser::parse_attributes() {
    auto attrs = std::vector<Attribute>();
    while (lexer.cur_tok.is_attr()) {
        auto attr = lexer.cur_tok.kind;
        lexer.next();
        if (check_cur(Token::LPar)) {
            expect_and_next(Token::LPar);
            if (check_cur(Token::IntLiteral)) {
                attrs.push_back(Attribute(attr, svtov<int>(lexer.cur_tok.val)));
                lexer.next();
            } else {
                auto ty = parse_ty();
                attrs.push_back(Attribute(attr, ty));
            }
            expect_and_next(Token::RPar);
        } else {
            attrs.push_back(Attribute(attr));
        }
    }
    return Attributes(std::move(attrs));
}

Inst *Parser::parse_freeze_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb) {
    expect_and_next(Token::INST_freeze);

    auto ty = parse_ty();
    auto val = parse_value(func_info, ty);

    auto inst = new FreezeInst(name, val, ty, bb);
    func_info.update_value(name, inst);
    return inst;
}
