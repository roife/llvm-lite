#pragma once

#include <string>
#include <string_view>
#include <charconv>
#include <cassert>
#include <variant>
#include <optional>
#include "pair_hash.h"

#define unreachable() do { assert(false && "unreachable"); } while (0)

enum {
    SYSTEM_ERROR = 1, ARGS_FILE_NOT_PROVIDED,
};

using Name_t = std::variant<std::string_view, size_t>;

std::string to_string(const Name_t &name);
std::ostream &operator<<(std::ostream &os, const Name_t &name);

template<typename T>
inline T svtov(const std::string_view &sv) {
    T v;
    auto [_, ec] = std::from_chars(sv.data(), sv.data() + sv.size(), v);
    assert(ec == std::errc{});
    return v;
}

// TODO: not need in latest g++
template<>
inline float svtov(const std::string_view &sv) {
    auto s = std::string{sv};
    return std::stof(s);
}

template<>
inline double svtov(const std::string_view &sv) {
    auto s = std::string{sv};
    return std::stod(s);
}

union U64_Double_Caster {
    uint64_t u64;
    double d;
};

inline double svtod_hex(const std::string_view &sv) {
    uint64_t u64;
    auto [_, ec] = std::from_chars(sv.data() + 2, sv.data() + sv.size(), u64, 16);
    assert(ec == std::errc{});
    U64_Double_Caster caster{.u64 = u64};
    return caster.d;
}
