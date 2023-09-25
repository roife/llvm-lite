#pragma once
#include "pass.h"
#include "common/graph.h"
#include "ir/instruction.h"

// Dead code elimination (DCE)
struct DcePass : ScalarPass {
    Program *const program;

    explicit DcePass(Program *program): program(program) {}

    bool run() override;

    [[nodiscard]] std::string name() const override {
        return "dce";
    }
};

struct FnDcePass: FnScalarPass {
    Func *func;
    Cfg<BasicBlock> cfg;
    Cfg<BasicBlock> rcfg;

    explicit FnDcePass(Func *func): func(func) {}

    bool run() override;

    [[nodiscard]] std::string name() const override {
        return "dce";
    }

    bool sweep_useless_insts();
    bool clean_useless_bb() const;
    bool remove_unreachable_bb() const;
    static bool is_critical(Inst *inst);
    void build_cfg();
};