#pragma once

#include <ostream>
#include <string_view>
#include "common/common.h"
#include "common/ilist.h"
#include "common/casting.h"
#include "ir/ty.h"
#include "value.h"

struct Const: Value {
    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::CONST)

    enum ConstKind {
        Simple, Expr,
        UNDEF,
    };

    ConstKind kind = ConstKind::UNDEF;

    explicit Const(Ty *ty, ConstKind kind): Value("", Value::ValueTag::CONST, ty), kind(kind) {}

    Const(const Const&) = delete;
    Const& operator=(const Const&) = delete;
    Const(const Const&&) = delete;
    Const& operator=(const Const&&) = delete;
    [[nodiscard]] virtual Const* clone() const = 0;

    bool operator==(const Const& rv) const;
    bool operator!=(const Const& rv) const;

    static Const *sv_to_const(const std::string_view &sv, Ty::TyTag ty_tag);

    ~Const() override = default;
};

struct SimpleConst: Const {
    DEFINE_CLASSOF(Const, p->kind == ConstKind::Simple)

    DEFINE_CLASSOF(Value, Const::classof(p) && SimpleConst::classof(cast<Const>(p)))

    SimpleConst(Ty *ty): Const(ty, ConstKind::Simple) {}
};

struct IntConst: SimpleConst {
    DEFINE_CLASSOF(SimpleConst, p->ty->ty_tag >= Ty::BOOL && p->ty->ty_tag <= Ty::INT64)

    DEFINE_CLASSOF(Const, SimpleConst::classof(p) && IntConst::classof(cast<SimpleConst>(p)))

    DEFINE_CLASSOF(Value, Const::classof(p) && SimpleConst::classof(cast<Const>(p)) && IntConst::classof(cast<SimpleConst>(p)))

    long long v;

    explicit IntConst(long long v, Ty *ty): SimpleConst(ty), v(v) {}

    void print_tag(std::ostream& os) const override {
        os << v;
    }

    [[nodiscard]] Const* clone() const final {
        return new IntConst(v, new Ty(ty->ty_tag));
    }
};

struct FltConst: SimpleConst {
    DEFINE_CLASSOF(SimpleConst, p->ty->ty_tag == Ty::FLOAT)

    DEFINE_CLASSOF(Const, SimpleConst::classof(p) && FltConst::classof(cast<SimpleConst>(p)))

    DEFINE_CLASSOF(Value, Const::classof(p) && SimpleConst::classof(cast<Const>(p)) && FltConst::classof(cast<SimpleConst>(p)))

    float v;

    explicit FltConst(float v): SimpleConst(new Ty(Ty::FLOAT)), v(v) {}

    void print_tag(std::ostream& os) const override {
        os << std::to_string(v);
    }

    [[nodiscard]] Const* clone() const final {
        return new FltConst(v);
    }
};

struct DblConst: SimpleConst {
    DEFINE_CLASSOF(SimpleConst, p->ty->ty_tag == Ty::DOUBLE)

    DEFINE_CLASSOF(Const, SimpleConst::classof(p) && FltConst::classof(cast<SimpleConst>(p)))

    DEFINE_CLASSOF(Value, Const::classof(p) && SimpleConst::classof(cast<Const>(p)) && FltConst::classof(cast<SimpleConst>(p)))

    double v;

    explicit DblConst(double v): SimpleConst(new Ty(Ty::DOUBLE)), v(v) {}

    void print_tag(std::ostream& os) const override {
        os << std::to_string(v);
    }

    [[nodiscard]] Const* clone() const final {
        return new DblConst(v);
    }
};

struct CharArrayConst: SimpleConst {
    DEFINE_CLASSOF(SimpleConst, p->ty->ty_tag == Ty::ARRAY && Ty::is_char(static_cast<ArrayTy*>(p->ty)->ty->ty_tag))

    DEFINE_CLASSOF(Const, SimpleConst::classof(p) && FltConst::classof(cast<SimpleConst>(p)))

    DEFINE_CLASSOF(Value, Const::classof(p) && SimpleConst::classof(cast<Const>(p)) && FltConst::classof(cast<SimpleConst>(p)))

    std::string_view v;

    explicit CharArrayConst(const std::string_view &v): SimpleConst(new Ty(Ty::ARRAY)), v(v) {}

    void print_tag(std::ostream& os) const override {
        os << "c" << v;
    }

    [[nodiscard]] Const* clone() const final {
        return new CharArrayConst(v);
    }
};

struct ExprConst: Const {
    enum Opcode {
        CAST,
        UNDEF,
    };

    Opcode opcode = Opcode::UNDEF;

    explicit ExprConst(Opcode opcode, Ty *ty): Const(ty, ConstKind::Expr), opcode(opcode) {}
};

struct CastExprConst: ExprConst {
    DEFINE_CLASSOF(ExprConst, p->opcode == Opcode::CAST)

    DEFINE_CLASSOF(Const, ExprConst::classof(p) && CastExprConst::classof(cast<ExprConst>(p)))

    DEFINE_CLASSOF(Value, Const::classof(p) && ExprConst::classof(cast<Const>(p)) && CastExprConst::classof(cast<ExprConst>(p)))

    enum struct CastOp {
        ZEXT, SEXT, BITCAST, TRUNC, INTTOPTR, PTRTOINT, UNDEF
    };

    CastOp cast_op;
    Value *orig_val;
    Ty *target_ty;

    explicit CastExprConst(CastOp op, Value *orig_val, Ty *target_ty)
        : ExprConst(ExprConst::Opcode::CAST, target_ty) ,cast_op(op), orig_val(orig_val), target_ty(target_ty) {}

    void print_tag(std::ostream& os) const override final;

    [[nodiscard]] Const* clone() const final {
        if (isa_p<Const>(orig_val)) {
            return new CastExprConst(cast_op, cast<Const>(orig_val)->clone(), target_ty->clone());
        } else {
            return new CastExprConst(cast_op, orig_val, target_ty->clone());
        }
    }

    // do not delete target_ty since it is owned by base class `Value`
    ~CastExprConst() override = default;
};
