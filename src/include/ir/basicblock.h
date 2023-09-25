#pragma once

#include <vector>
#include <unordered_set>
#include "common/common.h"
#include "common/ilist.h"
#include "common/casting.h"
#include "value.h"
#include "func.h"

struct BasicBlock : Value {
    DEFINE_ILIST(BasicBlock)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::BasicBlock)

    IList<Inst> insts;

    Func *func;

    static Ty ty;

    explicit BasicBlock(Name_t name, Func *func)
            : Value(name, Value::ValueTag::BasicBlock, new Ty(Ty::TyTag::LABEL)), func(func) {
        func->bbs.insert_at_end(this);
    }

    friend std::ostream &operator<<(std::ostream &os, const BasicBlock &bb);

    ~BasicBlock() override;

    [[nodiscard]] Inst* get_terminator() const {
        return insts.tail;
    }

    [[nodiscard]] std::vector<BasicBlock*> get_succ_bbs() const;

    [[nodiscard]] std::unordered_set<BasicBlock*> get_pred_bbs() const;

    [[nodiscard]] bool is_entry() const {
        return this == this->func->bbs.head;
    }

    void print_tag(std::ostream& os) const override {
        os << "%";
        Value::print_tag(os);
    }

    bool simplify_terminator_and_phis();
};
