#pragma once
#include "common/ilist.h"
#include "attr_grp.h"
#include "metadata.h"
#include "global.h"
#include <optional>
#include <vector>
struct Func;
struct AttrGrpEntry;

struct Program {
    IList<Func> funcs;
    std::vector<Global*> globals;
    std::string_view source_file_name;

    struct TargetDef {
        std::optional<std::string_view> datalayout = std::nullopt;
        std::optional<std::string_view> triple = std::nullopt;
    } target_def;

    std::vector<AttrGrpEntry> attr_grp_entries;
    std::vector<MetadataEntry> metadata_entries;

    friend std::ostream &operator<<(std::ostream &os, const Program &program);

    void update_name() const;

    ~Program();
};
