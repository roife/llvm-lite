#include "ir/value.h"
#include "ir/value_info.h"
#include "passes/constant_folding.h"

template<typename T>
Value *ValueInfo<T>::get_value(Name_t name) {
    if (auto id = std::get_if<size_t>(&name)) {
        if (unamed_values.contains(*id)) {
            return unamed_values[*id];
        }
    } else if (auto str = std::get_if<std::string_view>(&name)) {
        if (named_values.contains(*str)) {
            return named_values.at(*str);
        }
    }

    // create a placeholder
    if (!forward_refs.contains(name)) {
        forward_refs[name] = new Value(name, Value::ValueTag::UNDEF, new Ty(Ty::UNDEF));
    }

    return forward_refs[name];
}

template<typename T>
void ValueInfo<T>::update_value(Name_t name, Value *v) {
    std::string_view value_name;
    if (auto sv = std::get_if<std::string_view>(&name)) {
        value_name = *sv;
        named_values.insert(std::make_pair(*sv, v));
    } else {
        auto id = std::get_if<size_t>(&name);
        value_name = std::to_string(*id);
        unamed_values[*id] = v;
        // assert(*id <= unamed_values.size());
        // if (*id < unamed_values.size()) {
        //     unamed_values[*id] = v;
        // } else {
        //     unamed_values.push_back(v);
        // }
    }

    if (fn_sccp != nullptr && fn_sccp_map != nullptr && fn_sccp_map->contains(value_name)) {
        fn_sccp->initialized_names.insert(name);
        fn_sccp->value_map[v] = Const::sv_to_const(fn_sccp_map->at(value_name), v->ty->ty_tag);
    }

    if (forward_refs.contains(name)) {
        auto old_value = forward_refs.at(name);
        forward_refs.erase(name);
        old_value->replace_all_use_with(v);

        if (fn_sccp != nullptr && isa_p<BasicBlock>(v)) {
            // TODO
            for (auto &edge: fn_sccp->cfg_worklist) {
                if (edge.second == old_value) {
                    edge.second = v;
                }
            }
        }

        delete old_value;
    }
}

template
struct ValueInfo<Program>;

template
struct ValueInfo<Func>;
