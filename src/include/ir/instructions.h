#pragma once

#include <algorithm>
#include <vector>
#include "common/common.h"
#include "value.h"
#include "instruction.h"
#include "basicblock.h"
#include "alignment.h"

struct BinaryInst : Inst {
    DEFINE_CLASSOF(Inst, Inst::ADD <= p->opcode && p->opcode <= Inst::FREM)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))
    bool nuw = false;
    bool nsw = false;
    bool exact = false;

    BinaryInst(Name_t name, Opcode opcode, Ty *ty, Value *lhs, Value *rhs,
               bool nuw, bool nsw, bool exact, BasicBlock *bb)
            : Inst(name, opcode, ty, 2, bb),
              nuw(nuw), nsw(nsw), exact(exact) {
        set_operand(0, lhs);
        set_operand(1, rhs);
    }

    void print_inst(std::ostream &os) const final;
};

struct BranchInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::BRANCH)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    BranchInst(Value *cond, Value *true_bb, Value *false_bb, BasicBlock *bb)
            : Inst("", Inst::BRANCH, new Ty(Ty::VOID), 3, bb) {
        set_operand(0, cond);
        set_operand(1, true_bb);
        set_operand(2, false_bb);
    }

    void print_inst(std::ostream &os) const final;
};

struct SwitchInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::SWITCH)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    // the first operand is val
    // the second operand is default bbs
    // val1, bb1, ...
    SwitchInst(Value *cond, Value *default_bb, const std::vector<Value *> &vals, BasicBlock *bb)
            : Inst("", Inst::SWITCH, new Ty(Ty::VOID), vals.size(), bb) {
        set_operand(0, cond);
        set_operand(1, default_bb);
        for (size_t i = 0; i < vals.size(); ++i) {
            set_operand(i + 2, vals[i]);
        }
    }

    void print_inst(std::ostream &os) const final;
};

struct SelectInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::SELECT)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    SelectInst(Name_t name, Value *cond, Ty *ty, Value *true_val, Value *false_val, BasicBlock *bb)
            : Inst(name, Inst::SELECT, ty, 3, bb) {
        set_operand(0, cond);
        set_operand(1, true_val);
        set_operand(2, false_val);
    }

    void print_inst(std::ostream &os) const final;
};

struct JumpInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::JUMP)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    JumpInst(Value *nxt_bb, BasicBlock *bb)
            : Inst("", Inst::JUMP, new Ty(Ty::VOID), 1, bb) {
        set_operand(0, nxt_bb);
    }

    void print_inst(std::ostream &os) const final;
};


struct RetInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::RETURN)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    RetInst(Value *ret_val, BasicBlock *bb)
            : Inst("", Inst::RETURN, new Ty(Ty::VOID), 1, bb) {
        set_operand(0, ret_val);
    }

    explicit RetInst(BasicBlock *bb)
            : Inst("", Inst::RETURN, new Ty(Ty::VOID), 0, bb) {}

    void print_inst(std::ostream &os) const final;
};

struct GepInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::GEP)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    bool inbounds = false;

    GepInst(Name_t name, Value *base, Ty *base_ty, std::vector<Value *> indices, bool inbounds, BasicBlock *bb)
            : Inst(name, Inst::GEP, get_ret_type(base_ty, indices), indices.size() + 1, bb),
              inbounds(inbounds) {
        set_operand(0, base);
        for (size_t i = 0; i < indices.size(); ++i) {
            set_operand(i + 1, indices[i]);
        }
    }

    void print_inst(std::ostream &os) const final;

private:
    static Ty *get_ret_type(Ty *base_ty, std::vector<Value *> &indices) {
        auto ty = base_ty;
        auto last_container = base_ty;
        for (size_t i = 1; i < indices.size(); ++i) {
            if (auto array_ty = cast<ArrayTy>(ty)) {
                last_container = array_ty;
                ty = array_ty->ty;
            }
        }

        // delete array-ty container
        if (indices.size() > 1) {
            if (auto array_ty = cast<ArrayTy>(last_container)) {
                array_ty->ty = nullptr;
            }
            delete base_ty;
        }

        return new PtrTy(ty);
    }
};

struct LoadInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::LOAD)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    std::optional<Alignment> alignment;

    LoadInst(Name_t name, Value *addr, Ty *ty, std::optional<Alignment> alignment, BasicBlock *bb)
            : Inst(name, Inst::LOAD, ty, 1, bb),
              alignment(alignment) {
        set_operand(0, addr);
    }

    void print_inst(std::ostream &os) const final;

    ~LoadInst() override = default;
};

struct StoreInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::STORE)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    std::optional<Alignment> alignment;

    StoreInst(Value *data, Value *addr, std::optional<Alignment> alignment, BasicBlock *bb)
            : Inst("", Inst::STORE, new Ty(Ty::VOID), 2, bb),
              alignment(alignment) {
        set_operand(0, data);
        set_operand(1, addr);
    }

    StoreInst(const StoreInst &) = delete;

    StoreInst &operator=(const StoreInst &) = delete;

    StoreInst(const StoreInst &&) = delete;

    StoreInst &operator=(const StoreInst &&) = delete;

    ~StoreInst() override = default;

    void print_inst(std::ostream &os) const final;
};

struct AllocaInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::ALLOCA)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    Attributes attr;
    Ty *alloca_ty;
    std::optional<Alignment> alignment;

    AllocaInst(Name_t name, Ty *alloca_ty, std::optional<Alignment> alignment, Attributes &&attr, BasicBlock *bb)
            : Inst(name, Inst::ALLOCA, new PtrTy(alloca_ty), 0, bb),
              attr(std::move(attr)), alloca_ty(alloca_ty), alignment(alignment) {}

    AllocaInst(const AllocaInst &) = delete;

    AllocaInst &operator=(const AllocaInst &) = delete;

    AllocaInst(const AllocaInst &&) = delete;

    AllocaInst &operator=(const AllocaInst &&) = delete;

    // do not delete alloca_ty since it is owned by base class `Value`
    ~AllocaInst() override = default;

    void print_inst(std::ostream &os) const final;
};

struct CallInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::CALL)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    struct ArgInfo {
        Attributes attributes;
        std::optional<Alignment> alignment;

        ArgInfo(Attributes &&attributes, std::optional<Alignment> alignment)
                : attributes(std::move(attributes)), alignment(alignment) {}

        ArgInfo(const ArgInfo &) = delete;

        ArgInfo &operator=(const ArgInfo &) = delete;

        ArgInfo(ArgInfo &&) = default;

        ArgInfo &operator=(const ArgInfo &&) = delete;

        ~ArgInfo() = default;
    };

    enum TailNess {
        Tail, MustTail, NoTail, None
    } tailness = None;

    Attributes ret_attr;
    AttrGrpVars attr_grp_vars;
    std::vector<ArgInfo> arg_infos;

    CallInst(Name_t name, Value *func, TailNess tailness, Ty *ty,
             Attributes &&ret_attr,
             const std::vector<Value *> &args, std::vector<ArgInfo> &&arg_infos,
             AttrGrpVars &&attr_grp_vars,
             BasicBlock *bb)
            : Inst(name, Inst::CALL, ty, args.size() + 1, bb), tailness(tailness), ret_attr(std::move(ret_attr)),
              attr_grp_vars(std::move(attr_grp_vars)), arg_infos(std::move(arg_infos)) {
        set_operand(0, func);
        for (size_t i = 0; i < args.size(); ++i) {
            set_operand(i + 1, args[i]);
        }
    }

    void print_inst(std::ostream &os) const final;
};

struct PhiInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::PHI)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    // insert at the beginning of bbs
    // vals: val1 bb1, val2 bb2, ...
    explicit PhiInst(Name_t name, Ty *ty, const std::vector<Value *> &vals, BasicBlock *bb)
            : Inst(name, Inst::PHI, ty, vals.size()) {
        assert(vals.size() % 2 == 0);
        bb->insts.insert_at_begin(this);
        this->bb = bb;
        for (size_t i = 0; i < vals.size(); ++i) {
            set_operand(i, vals[i]);
        }
    }

    explicit PhiInst(Name_t name, Ty *ty, const std::vector<Value *> &vals, Inst *cur_inst)
            : Inst(name, Inst::PHI, ty, vals.size()) {
        assert((vals.size() & 1) == 0);
        this->bb = cur_inst->bb;
        this->bb->insts.insert_before(this, cur_inst);
        for (size_t i = 0; i < vals.size(); ++i) {
            set_operand(i, vals[i]);
        }
    }

    void print_inst(std::ostream &os) const final;

    void remove_op_by_bb(size_t bb_idx) {
        assert(bb_idx > 0 && (bb_idx & 1));
        delete operands[bb_idx - 1];
        delete operands[bb_idx];

        // if is not last bb
        if (bb_idx + 1 < op_count) {
            operands[bb_idx - 1] = operands[op_count - 2];
            operands[bb_idx] = operands[op_count - 1];
            operands[bb_idx - 1]->op_rank = bb_idx - 1;
            operands[bb_idx]->op_rank = bb_idx;
        }

        op_count -= 2;
        operands.pop_back();
        operands.pop_back();
    }
};

struct CastInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::CAST)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    enum struct CastOp {
        ZEXT, SEXT, BITCAST, TRUNC, INTTOPTR, PTRTOINT, UNDEF
    };

    CastOp cast_op;
    Ty *target_ty; // Managed by value

    CastInst(Name_t name, CastOp op, Value *orig_val, Ty *target_ty, BasicBlock *bb)
            : Inst(name, Inst::CAST, target_ty, 1, bb),
              cast_op(op), target_ty(target_ty) {
        set_operand(0, orig_val);
    }

    CastInst(const CastInst &) = delete;

    CastInst &operator=(const CastInst &) = delete;

    CastInst(const CastInst &&) = delete;

    CastInst &operator=(const CastInst &&) = delete;

    // do not delete target_ty since it is owned by base class `Value`
    ~CastInst() override = default;

    void print_inst(std::ostream &os) const final;
};

struct IcmpInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::ICMP)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    enum struct Pred {
        EQ, NE, SLT, SGT, SLE, SGE, ULT, UGT, ULE, UGE
    };

    Pred pred;

    IcmpInst(Name_t name, Pred pred, Value *lhs, Value *rhs, BasicBlock *bb)
            : Inst(name, Opcode::ICMP, new Ty(Ty::BOOL), 2, bb),
              pred(pred) {
        set_operand(0, lhs);
        set_operand(1, rhs);
    }

    void print_inst(std::ostream &os) const final;
};

struct FcmpInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::FCMP)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    enum struct Pred {
        FALSE, OEQ, OGT, OGE, OLT, OLE, ONE, ORD, UEQ, UGT, UGE, ULT, ULE, UNE, UNO, TRUE
    };

    Pred pred;

    FcmpInst(Name_t name, Pred pred, Value *lhs, Value *rhs, BasicBlock *bb)
            : Inst(name, Opcode::FCMP, new Ty(Ty::BOOL), 2, bb),
              pred(pred) {
        set_operand(0, lhs);
        set_operand(1, rhs);
    }

    void print_inst(std::ostream &os) const final;
};

struct FreezeInst : Inst {
    DEFINE_CLASSOF(Inst, p->opcode == Inst::FREEZE)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::Inst && classof(cast<Inst>(p)))

    FreezeInst(Name_t name, Value *val, Ty *ty, BasicBlock *bb)
            : Inst(name, Opcode::FREEZE, ty, 1, bb) {
        set_operand(0, val);
    }

    void print_inst(std::ostream &os) const final;
};
