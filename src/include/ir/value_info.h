#pragma once

#include <optional>
#include <unordered_map>
#include "syntax/lexer.h"
#include "common/common.h"
#include "ir/value.h"

struct FnSccpPass;

template<typename T>
struct ValueInfo {
    T *container;
    std::unordered_map<std::string_view, Value *> named_values{};
    std::unordered_map<size_t, Value *> unamed_values{};
    std::unordered_map<Name_t, Value *> forward_refs;

    FnSccpPass* fn_sccp;
    std::unordered_map<std::string_view, std::string_view>* fn_sccp_map;

    explicit ValueInfo<T>(T *container, FnSccpPass* fn_sccp = nullptr, std::unordered_map<std::string_view, std::string_view>* fn_sccp_map = nullptr)
                          : container(container), fn_sccp(fn_sccp), fn_sccp_map(fn_sccp_map) {}

    Value *get_value(Name_t name);

    void update_value(Name_t name, Value *v);
};
