#pragma once

struct Alignment {
    int align;

    explicit Alignment(int alignment): align(alignment) {}

    friend std::ostream &operator<<(std::ostream &os, const Alignment &alignment);
};
