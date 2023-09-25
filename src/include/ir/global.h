#pragma once

#include "common/common.h"
#include "common/ilist.h"
#include "common/casting.h"
#include "value.h"
#include "constant.h"
#include "alignment.h"
#include "attributes.h"

struct Global : Value {
    enum struct GlobalType {
        Global, Constant
    } global_type;

    Ty *value_ty;
    Const *init_val;
    std::optional<Alignment> alignment;
    Attributes attributes;

    explicit Global(Name_t name, GlobalType global_type, Ty *ty, Const *init_val,
                    Attributes &&attributes, std::optional<Alignment> alignment)
            : Value(name, Value::ValueTag::Global, new PtrTy(ty)),
              global_type(global_type), value_ty(ty),
              init_val(init_val),
              alignment(alignment),
              attributes(std::move(attributes)) {}

    friend std::ostream &operator<<(std::ostream &os, const Global &global);

    Global(const Global &) = delete;

    Global &operator=(const Global &) = delete;

    Global(Global &&) = delete;

    Global &operator=(const Global &&) = delete;

    ~Global() override {
        // do not delete value_ty since it is owned by base class `Value`
        delete init_val;
    }

    void print_tag(std::ostream& os) const override {
        os << "@";
        Value::print_tag(os);
    }
};
