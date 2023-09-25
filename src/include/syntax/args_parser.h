#pragma once
#include <string>
#include "ir/constant.h"
#include "lexer.h"

struct ArgsParser {
    std::unordered_map<std::string_view, std::unordered_map<std::string_view, std::string_view>> map {};
    std::string_view input;

    explicit ArgsParser(std::string_view input): input(input) {};

    void parse() {
        auto cur_ptr = input.begin();

        while (true) {
            skip_spaces(cur_ptr);

            if (cur_ptr == input.end()) {
                return;
            }

            // parse container name
            auto func_name_start = cur_ptr;
            for (auto c = *cur_ptr; is_label_char(c); c = *++cur_ptr);
            auto func_name = std::string_view { func_name_start, cur_ptr };

            skip_spaces(cur_ptr);
            assert(*cur_ptr == ':');
            ++cur_ptr;
            skip_spaces(cur_ptr);

            assert(*cur_ptr == '%');
            ++cur_ptr;
            auto param_name_start = cur_ptr;
            for (auto c = *cur_ptr; is_label_char(c); c = *++cur_ptr);
            auto param_name = std::string_view { param_name_start, cur_ptr };

            skip_spaces(cur_ptr);
            assert(*cur_ptr == '=');
            ++cur_ptr;
            skip_spaces(cur_ptr);

            auto param_value_start = cur_ptr;
            while (cur_ptr != input.end() && !isspace(*cur_ptr)) {
                ++cur_ptr;
            }
            auto param_value = std::string_view { param_value_start, cur_ptr };

            map[func_name][param_name] = param_value;
        }
    }

private:
    void skip_spaces(const char *&cur_ptr) const {
        while (true) {
            if (cur_ptr == input.end() || !isspace(*cur_ptr)) {
                return;
            }
            ++cur_ptr;
        }
    }

    inline static bool is_label_char(char c) {
        return isalnum(c) || c == '-' || c == '$' || c == '.' || c == '_';
    }
};
