#pragma once

#include "common/common.h"
#include "common/ilist.h"
#include "common/casting.h"
#include "value.h"
#include "basicblock.h"

struct Inst : User {
    DEFINE_ILIST(Inst)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst)

    BasicBlock *bb;

    enum Opcode {
        // Binary Inst
        ADD, SUB, MUL, UDIV, SDIV, UREM, SREM, SHL, LSHR, ASHR, AND, OR, XOR,
        FADD, FSUB, FMUL, FDIV, FREM,
        // Compare Inst
        ICMP, FCMP,
        // Memory Inst
        GEP, LOAD, STORE, ALLOCA,
        CALL,
        PHI,
        CAST,
        SELECT,
        // Branch Inst
        BRANCH, JUMP, RETURN, SWITCH,
        // Freeze
        FREEZE,
        // Undef
        UNDEF
    };

    Opcode opcode = Opcode::UNDEF;

    // insert this inst manually
    Inst(Name_t name, Opcode opcode, Ty *ty, size_t op_count)
            : User(name, Value::ValueTag::Inst, ty, op_count), opcode(opcode) {}

    // insert this inst at the end of `bbs`
    Inst(Name_t name, Opcode opcode, Ty *ty, size_t op_count, BasicBlock *bb)
            : User(name, Value::ValueTag::Inst, ty, op_count), bb(bb), opcode(opcode) {
        bb->insts.insert_at_end(this);
    }

    ~Inst() override {
        this->bb->insts.remove(this);

        const auto &func = this->bb->func;
        if (auto name = std::get_if<std::string_view>(&this->name)) {
            func->info->named_values[*name] = nullptr;
        } else if (auto id = std::get_if<size_t>(&this->name)) {
            func->info->unamed_values[*id] = nullptr;
        }
    }

    [[nodiscard]] bool is_terminator() const {
        return Opcode::BRANCH <= opcode && opcode <= Opcode::SWITCH;
    }

    [[nodiscard]] bool is_assignment() const {
        return ty->ty_tag != Ty::VOID;
    }

    friend std::ostream &operator<<(std::ostream &os, const Inst &inst);

    void print_tag(std::ostream& os) const override {
        os << "%";
        Value::print_tag(os);
    }

    virtual void print_inst(std::ostream& os) const = 0;
};
