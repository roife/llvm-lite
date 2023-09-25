#pragma once
#include <string>
#include "ir/program.h"

struct ScalarPass {
    virtual bool run() = 0;
    [[nodiscard]] virtual std::string name() const = 0;

    virtual ~ScalarPass() = default;
};

struct FnScalarPass {
    virtual bool run() = 0;
    [[nodiscard]] virtual std::string name() const = 0;

    virtual ~FnScalarPass() = default;
};
