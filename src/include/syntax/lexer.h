#pragma once

#include "tokens.h"
#include "common/common.h"
#include <cstring>
#include <cctype>
#include <unordered_map>

struct Lexer {
    std::string_view input;
    Token cur_tok;

    const char* cur_ptr;
    const char* tok_start = nullptr;

//    Pos cur_pos = Pos::ZERO;
//    Pos tok_start_pos = Pos::ZERO;
//    bool is_last_cr = false;

    explicit Lexer(std::string_view input)
            : input(input), cur_ptr(input.begin()) {}
    Lexer(Lexer&&) = default;

    Token next();

    // SCCP optimization
    struct SccpBBsInfo {
        std::unordered_map<std::string_view, const char *> bb_map;
        const char *func_end;
    };
    SccpBBsInfo sccp_find_all_bbs_in_func(const char *func_start) const;

private:
    char get_next_ch();
    void skip_spaces();
    void skip_comment();
    void skip_digits() {
        for (auto c = *cur_ptr; isdigit(c); c = get_next_ch());
    }
    static bool is_label_char(char c) {
        return isalnum(c) || c == '-' || c == '$' || c == '.' || c == '_';
    }
    Token next_token();
    Token lex_digit_pos_neg();
    Token lex_var(Token::Kind, Token::Kind);
    Token lex_dollar();
    Token lex_quote();
    Token lex_label_str();
    Token lex_identifier();
    Token lex_hash();
    Token lex_exclaim();
};
