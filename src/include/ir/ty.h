#pragma once
#include "common/common.h"
#include "common/casting.h"
#include <iostream>

struct Ty {
    enum TyTag {
        VOID, BOOL, INT8, INT16, INT32, INT64, FLOAT, DOUBLE,
        FUNC, PTR, OpaquePtr, LABEL, ARRAY, UNDEF
    } ty_tag = TyTag::UNDEF;

    static const Ty LabelTy;

    static int get_int_width(Ty::TyTag ty_tag) {
        switch (ty_tag) {
            case Ty::BOOL: return 1;
            case Ty::INT8: return 8;
            case Ty::INT16: return 16;
            case Ty::INT32: return 32;
            case Ty::INT64: return 64;
            default: unreachable();
        }
    }

    explicit Ty(TyTag ty_tag): ty_tag(ty_tag) {}

    friend std::ostream &operator<<(std::ostream &os, const Ty &ty);

    [[nodiscard]] static bool is_int(TyTag ty_tag) {
        return TyTag::BOOL <= ty_tag && ty_tag <= TyTag::INT64;
    }

    [[nodiscard]] static bool is_char(TyTag ty_tag) {
        return ty_tag == Ty::INT8;
    }

    virtual ~Ty() = default;

    [[nodiscard]] virtual Ty *clone() const {
        assert(ty_tag != TyTag::PTR && ty_tag != TyTag::ARRAY);
        return new Ty(ty_tag);
    }
};

struct PtrTy : Ty {
    DEFINE_CLASSOF(Ty, p->ty_tag == Ty::TyTag::PTR)

    Ty *ty;

    explicit PtrTy(Ty *ty): Ty(Ty::PTR), ty(ty) {}

    PtrTy(const PtrTy&) = delete;
    PtrTy& operator=(const PtrTy&) = delete;
    PtrTy(const PtrTy&&) = delete;
    PtrTy& operator=(const PtrTy&&) = delete;

    ~PtrTy() override {
        delete ty;
    }

    [[nodiscard]] Ty *clone() const override final {
        return new PtrTy(ty->clone());
    }
};

struct ArrayTy : Ty {
    DEFINE_CLASSOF(Ty, p->ty_tag == Ty::TyTag::ARRAY)

    Ty *ty;
    size_t size;

    explicit ArrayTy(Ty *ty, size_t size) : Ty(Ty::ARRAY), ty(ty), size(size) {}

    ArrayTy(const ArrayTy&) = delete;
    ArrayTy& operator=(const ArrayTy&) = delete;
    ArrayTy(const ArrayTy&&) = delete;
    ArrayTy& operator=(const ArrayTy&&) = delete;

    ~ArrayTy() override {
        delete ty;
    }

    [[nodiscard]] Ty *clone() const override final {
        return new ArrayTy(ty->clone(), size);
    }
};
