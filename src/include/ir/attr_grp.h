#pragma once

#include <vector>
#include <string_view>

struct AttrGrpVars {
    std::vector<std::string_view> names;

    explicit AttrGrpVars(std::vector<std::string_view> &&names) : names(std::move(names)) {}

    friend std::ostream &operator<<(std::ostream &os, const AttrGrpVars &metadata);

    AttrGrpVars(const AttrGrpVars &) = delete;

    AttrGrpVars &operator=(const AttrGrpVars &) = delete;

    AttrGrpVars(AttrGrpVars &&) = default;

    AttrGrpVars &operator=(const AttrGrpVars &&) = delete;
};

struct AttrGrpEntry {
    std::string_view name;
    std::string_view val;

    explicit AttrGrpEntry(std::string_view name, std::string_view val) : name(name), val(val) {}

    friend std::ostream &operator<<(std::ostream &os, const AttrGrpEntry &attr_grp);
};
