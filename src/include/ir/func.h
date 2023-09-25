#pragma once

#include <vector>
#include <algorithm>
#include <string>
#include <variant>
#include "common/common.h"
#include "common/ilist.h"
#include "common/casting.h"
#include "value.h"
#include "ty.h"
#include "program.h"
#include "attributes.h"
#include "value_info.h"

struct BasicBlock;

struct Param : Value {
    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::PARAM)

    Attributes attributes;

    Param(Name_t name, Ty *ty, Attributes &&attributes)
            : Value(name, Value::ValueTag::PARAM, ty), attributes(std::move(attributes)) {}

    friend std::ostream &operator<<(std::ostream &os, const Param &param);

    void print_tag(std::ostream& os) const {
        os << "%";
        Value::print_tag(os);
    }

    Param(const Param &) = delete;

    Param &operator=(const Param &) = delete;

    Param(Param &&) = delete;

    Param &operator=(const Param &&) = delete;

    ~Param() override = default;
};

struct Func : User {
    DEFINE_ILIST(Func)

    DEFINE_CLASSOF(Value, p->value_tag == Value::ValueTag::FUNC)

    Program *program;
    bool is_decl = false;
    Attributes ret_attr, fn_attr;
    AttrGrpVars attr_grp_vars;
    std::optional<ValueInfo<Func>> info = std::nullopt;

    Ty *ret_type;

    IList<BasicBlock> bbs;
    std::vector<Param *> params;

    explicit Func(Name_t name,
                  Program *program,
                  bool is_decl,
                  Ty *ret_ty,
                  Attributes &&ret_attr, Attributes &&fn_attr,
                  std::vector<Param *> &&params,
                  AttrGrpVars &&attr_grp_vars)
            : User(name, Value::ValueTag::FUNC, new Ty(Ty::TyTag::FUNC), 0),
              program(program), is_decl(is_decl), ret_attr(std::move(ret_attr)),
              fn_attr(std::move(fn_attr)), attr_grp_vars(std::move(attr_grp_vars)), ret_type(ret_ty),
              params(std::move(params)) {
        program->funcs.insert_at_end(this);
    }

    Func(const Func &) = delete;

    Func &operator=(const Func &) = delete;

    Func(Func &&) = delete;

    Func &operator=(const Func &&) = delete;

    ~Func() override;

    friend std::ostream &operator<<(std::ostream &os, const Func &func);

    void update_name();
};
