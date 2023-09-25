#pragma once

#include <optional>
#include <utility>
#include <list>
#include "pass.h"
#include "ir/func.h"
#include "ir/basicblock.h"
#include "ir/instruction.h"
#include "ir/instructions.h"
#include "ir/constant.h"
#include "syntax/args_parser.h"
#include "syntax/parser.h"

// Sparse Conditional Const Propagation (SCCP)
struct SccpPass : ScalarPass {
    Program *const program;
    const ArgsParser &args_parser;

    explicit SccpPass(Program *program, const ArgsParser &args_parser) : program(program), args_parser(args_parser) {}

    bool run() override;

    [[nodiscard]] std::string name() const override {
        return "constant_folding";
    }
};

struct FnSccpPass : FnScalarPass {
    using CfgEdge = std::pair<BasicBlock *, Value *>;

    Const *const Bot = nullptr;

    Func *const func;
    const ArgsParser &args_parser;
    std::unordered_set<Name_t> initialized_names;

    // if v is not in value_map, it is a Top
    // if v is in value_map and value_map[v] is not nullptr, it is a constant
    // otherwise, value_map[v] is nullptr, so it is a variable (Bot)
    std::unordered_map<Value *, Const *> value_map;

    std::list<CfgEdge> cfg_worklist;
    std::unordered_set<CfgEdge, PairHash> executed_edges;
    std::unordered_set<BasicBlock *> executed_bbs;
    std::list<Value*> ssa_worklist;

    explicit FnSccpPass(Func *func, const ArgsParser &args_parser) : func(func), args_parser(args_parser) {}

    ~FnSccpPass() override {
        for (const auto &param: func->params) {
            if (value_map[param] != nullptr) {
                auto c = value_map[param];
                value_map[param] = nullptr;
                delete c;
            }
        }
    }

    [[nodiscard]] std::string name() const override {
        return "fn_constant_folding";
    }

    bool run() override;
    void init_value_map();
    bool replace_consts();

    struct SccpParserInfo {
        Parser *parser;
        std::unordered_map<std::string_view, const char *>* bb_map;
    };
    void fold_constants(std::optional<SccpParserInfo> info = std::nullopt);

    void visit_phi(Inst *phi);
    void visit_inst(Inst *inst);

private:
    inline std::optional<Const *> meet(Value *dst, Value *src);

    std::vector<CfgEdge> visit_terminator(Inst *inst) const;

    inline std::optional<Const *> evaluate_inst(Inst *inst);

    inline bool is_bot(Value *v) const {
        return value_map.contains(v) && value_map.at(v) == nullptr;
    }

    inline bool is_const(Value *v) const {
        return isa_p<Const>(v) || (value_map.contains(v) && value_map.at(v) != nullptr);
    }

    inline bool is_top(Value *v) const {
        return !is_bot(v) && !is_const(v);
    }

    template<class T, std::enable_if_t<std::is_base_of_v<Const, T>, bool> = true>
    inline T *get_const(Value *v) const {
        assert(is_const(v));
        return isa_p<T>(v) ? cast<T>(v) : cast<T>(value_map.at(v));
    }

    inline void set_const(Value *v, Const *c) {
        if (value_map.contains(v)) {
            delete value_map.at(v);
        }
        value_map[v] = c;
    }
};
