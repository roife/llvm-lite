#pragma once

#include "lexer.h"
#include "ir/value_info.h"
#include "common/common.h"
#include "ir/ty.h"
#include "ir/program.h"
#include "ir/func.h"
#include "ir/constant.h"
#include "ir/basicblock.h"
#include "ir/instruction.h"
#include "ir/instructions.h"
#include "ir/global.h"
#include "args_parser.h"

struct Parser {
    Lexer lexer;
    Program *program;
    std::optional<ArgsParser> &args_parser;

    explicit Parser(Lexer &&lexer, std::optional<ArgsParser> &args_parser)
            : lexer(std::move(lexer)), program(new Program{}),
              args_parser(args_parser), program_info(ValueInfo<Program>(program)) {
        this->lexer.next();
    }

    void parse_program();

    BasicBlock* parse_bb(ValueInfo<Func> &func_info);

    Parser(Parser &&) = default;

private:
    ValueInfo<Program> program_info;

    bool check_cur(Token::Kind tok_kind) const {
        return lexer.cur_tok.kind == tok_kind;
    }

    bool if_cur_and_next(Token::Kind kind) {
        if (lexer.cur_tok.kind == kind) {
            lexer.next();
            return true;
        }
        return false;
    }

    std::optional<Name_t> parse_name(Token::Kind str_kind, Token::Kind num_kind) {
        Name_t name;
        if (check_cur(str_kind)) {
            name = lexer.cur_tok.val;
            lexer.next();
        } else if (check_cur(num_kind)) {
            name = svtov<size_t>(lexer.cur_tok.val);
            lexer.next();
        } else {
            return std::nullopt;
        }
        return name;
    }

    void parse_source_file_name();

    void parse_target_definition();

    void parse_define();

    void parse_declare();

    void parse_attribute_group();

    Func *parse_func_header(bool is_decl);

    void parse_func_body(Func &func);

    void sccp_parse_func_body(Func &func);

    [[nodiscard]] Ty *parse_ty();

    [[nodiscard]] Const *parse_literal(Ty::TyTag);

    [[nodiscard]] ExprConst *parse_expr_const(ValueInfo<Func> &func_info, Ty const*);

    [[nodiscard]] CastExprConst *parse_cast_expr_const(ValueInfo<Func> &func_info, Ty const*);

    [[nodiscard]] Param *parse_param();

    [[nodiscard]] Value *parse_value(ValueInfo<Func> &, Ty const*);

    [[nodiscard]] std::optional<Alignment> parse_alignment();

    void parse_global();

    void parse_metadata(Value *v);

    [[nodiscard]] Attributes parse_attributes();

    [[nodiscard]] Inst *parse_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_br_inst(ValueInfo<Func> &func_info, BasicBlock *bb);

    [[nodiscard]] Inst *parse_ret_inst(ValueInfo<Func> &func_info, BasicBlock *bb);

    [[nodiscard]] Inst *parse_switch_inst(ValueInfo<Func> &func_info, BasicBlock *bb);

    [[nodiscard]] Inst *parse_icmp_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_fcmp_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_binary_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_cast_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_select_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_alloca_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_phi_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_load_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_store_inst(ValueInfo<Func> &func_info, BasicBlock *bb);

    [[nodiscard]] Inst *parse_gep_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_call_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    [[nodiscard]] Inst *parse_freeze_inst(ValueInfo<Func> &func_info, Name_t name, BasicBlock *bb);

    void parse_metadata_entry();
};
