#pragma once

#include <string_view>

struct MetadataVar {
    std::string_view name;

    explicit MetadataVar(std::string_view name): name(name) {}

    friend std::ostream &operator<<(std::ostream &os, const MetadataVar &metadata);
};

struct MetadataEntry {
    std::string_view name;
    std::string_view val;
    bool distinct = false;

    explicit MetadataEntry(std::string_view name, std::string_view val, bool distinct): name(name), val(val), distinct(distinct) {}

    friend std::ostream &operator<<(std::ostream &os, const MetadataEntry &metadata_entry);
};
