#pragma once

#include <type_traits>
#include <cassert>

#define DEFINE_CLASSOF(cls, cond) \
  static inline bool classof(const cls *p) { return cond; }

template <typename D, typename B>
bool isa_p(const B *b) {
    if constexpr (std::is_base_of_v<D, B>) {
        return true;
    } else {
        static_assert(std::is_base_of_v<B, D>);
        return D::classof(b);
    }
}

template <typename D, typename B>
inline const D *cast(const B *b) {
    assert(isa_p<D>(b));
    return static_cast<const D *>(b);
}

template <typename D, typename B>
inline D *cast(B *b) {
    assert(isa_p<D>(b));
    return static_cast<D *>(b);
}

template <typename D, typename B>
const D *dyn_cast(const B *b) {
    return isa_p<D>(b) ? static_cast<const D *>(b) : nullptr;
}

template <typename D, typename B>
D *dyn_cast(B *b) {
    return isa_p<D>(b) ? static_cast<D *>(b) : nullptr;
}

template <typename D, typename B>
const D *dyn_cast_nullable(const B *b) {
    return b && isa_p<D>(b) ? static_cast<const D *>(b) : nullptr;
}

template <typename D, typename B>
D *dyn_cast_nullable(B *b) {
    return b && isa_p<D>(b) ? static_cast<D *>(b) : nullptr;
}

// ref

template <typename D, typename B>
bool isa(const B &b) {
    if constexpr (std::is_base_of_v<D, B>) {
        return true;
    } else {
        static_assert(std::is_base_of_v<B, D>);
        return D::classof(&b);
    }
}

template <typename D, typename B>
inline const D &cast(const B &b) {
    assert(isa<D>(b));
    return static_cast<const D &>(b);
}

template <typename D, typename B>
inline D &cast(B &b) {
    assert(isa<D>(b));
    return static_cast<D &>(b);
}
