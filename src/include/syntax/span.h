#pragma once

#include <iostream>
#include <cstddef>

struct Pos {
    size_t lineno;
    size_t colno;
    size_t idx;

    [[nodiscard]] Pos nxt_idx() const {
        return { lineno, colno, idx + 1 };
    }

    [[nodiscard]] Pos nxt_pos() const  {
        return { lineno, colno + 1, idx + 1 };
    }

    [[nodiscard]] Pos nxt_line() const  {
        return { lineno + 1, 0, idx + 1 };
    }

    static const Pos ZERO;
    static const Pos MAX;
};

struct Span {
    Pos start, end;
    static const Span MAX;
};

inline std::ostream &operator<<(std::ostream &os, const Pos &pos) {
    os << "(" << pos.lineno << ", " << pos.colno << ")";
    return os;
}
