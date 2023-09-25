#include "syntax/lexer.h"
#include "common/common.h"
#include <cstdio>
#include <cassert>

char Lexer::get_next_ch() {
    if (cur_ptr == input.end()) {
        return EOF;
    }

//    switch (*cur_ptr) {
//        case '\n':
//            if (is_last_cr) {
//                cur_pos = cur_pos.nxt_idx();
//            } else {
//                cur_pos = cur_pos.nxt_line();
//            }
//            is_last_cr = false;
//            break;
//        case '\r':
//            cur_pos = cur_pos.nxt_line();
//            is_last_cr = true;
//            break;
//        default:
//            cur_pos = cur_pos.nxt_pos();
//    }

    return ++cur_ptr == input.end() ? EOF : *cur_ptr;
}

Token Lexer::next_token() {
    while (true) {
        skip_spaces();
        tok_start = cur_ptr;
//        tok_start_pos = cur_pos;

        if (cur_ptr == input.end()) {
            return {
                    Token::Kind::TOK_EOF,
                    std::string_view(""),
//                    Span::MAX,
            };
        }

        switch (*cur_ptr) {
            case '0'...'9':
            case '-':
            case '+':
                return lex_digit_pos_neg();
            case 'a'...'z':
            case 'A'...'Z':
            case '_':
                return lex_identifier();
            case '@':
                get_next_ch();
                tok_start = cur_ptr;
//                tok_start_pos = cur_pos;
                return lex_var(Token::Kind::GlobalVarStr, Token::Kind::GlobalVarID);
            case '%':
                get_next_ch();
                tok_start = cur_ptr;
//                tok_start_pos = cur_pos;
                return lex_var(Token::Kind::LocalVarStr, Token::Kind::LocalVarID);
            case '$':
                return lex_dollar();
            case '"':
                return lex_quote();
            case '.':
                return lex_label_str();
            case ';':
                skip_comment();
                continue;
            case '!':
                get_next_ch();
                tok_start = cur_ptr;
//                tok_start_pos = cur_pos;
                return lex_exclaim();
            case '#':
                get_next_ch();
                tok_start = cur_ptr;
//                tok_start_pos = cur_pos;
                return lex_hash();
#define CASE_SYM(c, t)                              \
    case c:                                         \
        get_next_ch();                              \
        return {                                    \
            t,                                      \
            std::string_view(tok_start, 1),         \
            /*{tok_start_pos, cur_pos}        */    \
        };
            CASE_SYM(':', Token::Kind::Colon)
            CASE_SYM('=', Token::Kind::Equal)
            CASE_SYM('[', Token::Kind::LSqr)
            CASE_SYM(']', Token::Kind::RSqr)
            CASE_SYM('{', Token::Kind::LBra)
            CASE_SYM('}', Token::Kind::RBra)
            CASE_SYM('<', Token::Kind::LE)
            CASE_SYM('>', Token::Kind::GT)
            CASE_SYM('(', Token::Kind::LPar)
            CASE_SYM(')', Token::Kind::RPar)
            CASE_SYM(',', Token::Kind::Comma)
            CASE_SYM('*', Token::Kind::Star)
            CASE_SYM('|', Token::Kind::BAR)
#undef CASE_SYM
            default:
                return lex_identifier();
        }
    }
}

// Label [-a-zA-Z$._0-9]+: (named label cannot start with digit)
// Integer -?[0-9]+
// float [-+]?[0-9]+[.][0-9]*([eE][-+]?[0-9]+)?
// hex_float 0x[0-9A-Fa-f]+
Token Lexer::lex_digit_pos_neg() {
    // check it is a hex_float
    if (cur_ptr[0] == '0' && cur_ptr[1] == 'x') {
        get_next_ch();
        get_next_ch();
        while (isdigit(*cur_ptr)
               || ('A' <= *cur_ptr && *cur_ptr <= 'F')
               || ('a' <= *cur_ptr && *cur_ptr <= 'f')) {
            get_next_ch();
        }
        return {
                Token::Kind::FloatLiteral,
                std::string_view(tok_start, cur_ptr - tok_start),
//                {tok_start_pos, cur_pos}
        };
    }

    // skip neg, the next shoud be letter or digit
    if (*cur_ptr == '-' || *cur_ptr == '+') {
        get_next_ch();
    }

    // skip digits
    for (auto c = *cur_ptr; isdigit(c); c = get_next_ch());

    // check if this is a label with digits (labels cannot start with positive)
    if (isdigit(*tok_start) && *cur_ptr == ':') {
        auto ret = (Token) {
                Token::Kind::LabelID,
                std::string_view(tok_start, cur_ptr - tok_start),
//                {tok_start_pos, cur_pos}
        };
        get_next_ch();
        return ret;
    }

    // check if this is a named label
    if (*tok_start != '+' && (is_label_char(*cur_ptr) || *cur_ptr == ':')) {
        auto p = cur_ptr;
        while (is_label_char(*p)) {
            ++p;
        }
        if (*p == ':') {
            return lex_label_str();
        }
    }

    // check it is a int
    if (*cur_ptr != '.') {
        return {
                Token::Kind::IntLiteral,
                std::string_view(tok_start, cur_ptr - tok_start),
//                {tok_start_pos, cur_pos}
        };
    }

    // should be float
    assert (*cur_ptr == '.');
    get_next_ch();

    // skip digits
    for (auto c = *cur_ptr; isdigit(c); c = get_next_ch());
    // skip eE-+
    if ((*cur_ptr == 'e' || *cur_ptr == 'E')) {
        get_next_ch();
        if (*cur_ptr == '-' || *cur_ptr == '+') {
            get_next_ch();
        }
    }
    // skip digits
    for (auto c = *cur_ptr; isdigit(c); c = get_next_ch());

    return {
            Token::Kind::FloatLiteral,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
}

// Label [-a-zA-Z$._0-9]+:
Token Lexer::lex_label_str() {
    // skip label
    for (auto c = *cur_ptr; is_label_char(c); c = get_next_ch());
    assert(*cur_ptr == ':');
    auto ret = (Token) {
            Token::Kind::LabelStr,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
    get_next_ch();

    return ret;
}

// Label [-a-zA-Z$._0-9]+:
// ComdatVar
Token Lexer::lex_dollar() {
    get_next_ch();
    for (auto c = *cur_ptr; is_label_char(c); c = get_next_ch());
    if (*cur_ptr == ':') {
        return lex_label_str();
    } else {
        // TODO: later: comdats var
        unreachable();
    }
}

// QuoteLabel "[^"]+":
// StringConstant "[^"]*"
Token Lexer::lex_quote() {
    while (true) {
        if (get_next_ch() == '\"') {
            // Check if this is a label
            if (get_next_ch() == ':') {
                get_next_ch();
                return {
                        Token::Kind::LabelStr,
                        std::string_view(tok_start, cur_ptr - tok_start),
//                        {tok_start_pos, cur_pos}
                };
            }

            // This is a String
            return {
                    Token::Kind::String,
                    std::string_view(tok_start, cur_ptr - tok_start),
//                    {tok_start_pos, cur_pos}
            };
        }
    }
}

// Var [-a-zA-Z$._][-a-zA-Z$._0-9]*
Token Lexer::lex_var(Token::Kind str_kind, Token::Kind id_kind) {
    bool is_digits = true;
    while (isalnum(*cur_ptr) || *cur_ptr == '-' || *cur_ptr == '$' ||
           *cur_ptr == '.' || *cur_ptr == '_') {
        if (!isdigit(*cur_ptr)) {
            is_digits = false;
        }
        get_next_ch();
    }

    return {
            is_digits ? id_kind : str_kind,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
}

// Label [-a-zA-Z$._0-9]+:
// IntegerType     i[0-9]+
// Keyword sdiv, float, ...
Token Lexer::lex_identifier() {
    for (auto c = get_next_ch(); is_label_char(c); c = get_next_ch());
    if (*cur_ptr == ':') {
        return lex_label_str();
    }

    if (*cur_ptr == '\"' && *tok_start == 'c' && cur_ptr - tok_start == 1) {
        ++tok_start;
        return lex_quote();
    }

    // parse int type
    if (*tok_start == 'i') {
        bool is_appended_all_num = true;
        for (auto p = tok_start + 1; p < cur_ptr; ++p) {
            if (!isdigit(*p)) {
                is_appended_all_num = false;
                break;
            }
        }
        if (is_appended_all_num) {
            return {
                    Token::Kind::TY_int,
                    std::string_view(tok_start, cur_ptr - tok_start),
//                    {tok_start_pos, cur_pos}
            };
        }
    }

    std::string_view keyword(tok_start, cur_ptr - tok_start);

#define TY_KEYWORD(STR)                                                        \
    if (keyword == #STR) {                                                 \
        return {                                                           \
            Token::Kind::TY_##STR,                                         \
            std::string_view(tok_start, cur_ptr - tok_start),              \
            /*{tok_start_pos, cur_pos}*/                                       \
        };                                                                 \
    };

#include "syntax/_tys.inc"

#undef TY_KEYWORD

#define KEYWORD(STR)                                                           \
    if (keyword == #STR) {                                                 \
        return {                                                           \
            Token::Kind::KW_##STR,                                         \
            std::string_view(tok_start, cur_ptr - tok_start),              \
            /*{tok_start_pos, cur_pos}*/                                       \
        };                                                                 \
    };

#include "syntax/_keywords.inc"

#undef KEYWORD

#define INST_KEYWORD(STR)                                                        \
    if (keyword == #STR) {                                                 \
        return {                                                           \
            Token::Kind::INST_##STR,                                         \
            std::string_view(tok_start, cur_ptr - tok_start),              \
            /*{tok_start_pos, cur_pos}*/                                       \
        };                                                                 \
    };

#include "syntax/_insts.inc"

#undef INST_KEYWORD

#define ATTR_KEYWORD(STR)                                               \
    if (keyword == #STR) {                                              \
        return {                                                        \
            Token::Kind::ATTR_##STR,                                    \
            std::string_view(tok_start, cur_ptr - tok_start),           \
            /*{tok_start_pos, cur_pos}*/                                \
        };                                                              \
    };
#define ATTR_INT_KEYWORD(STR)                                           \
    if (keyword == #STR) {                                              \
        return {                                                        \
            Token::Kind::ATTR_##STR,                                    \
            std::string_view(tok_start, cur_ptr - tok_start),           \
            /*{tok_start_pos, cur_pos}*/                                \
        };                                                              \
    }
#define ATTR_TY_KEYWORD(STR)                                            \
    if (keyword == #STR) {                                              \
        return {                                                        \
            Token::Kind::ATTR_##STR,                                    \
            std::string_view(tok_start, cur_ptr - tok_start),           \
            /*{tok_start_pos, cur_pos}*/                                \
        };                                                              \
    }

#include "syntax/_attrs.inc"

#undef ATTR_KEYWORD
#undef ATTR_INT_KEYWORD
#undef ATTR_TY_KEYWORD

    return {
            Token::Kind::IDENT,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
}

// comment ;.*$
void Lexer::skip_comment() {
    while (*cur_ptr != '\n' && *cur_ptr != '\r' && get_next_ch() != EOF);
}

void Lexer::skip_spaces() {
    while (true) {
        if (cur_ptr == input.end() || !isspace(*cur_ptr)) {
            return;
        }
        get_next_ch();
    }
}

Token Lexer::next() {
    cur_tok = next_token();
    return cur_tok;
}

// AttrGrpID #[0-9]+
Token Lexer::lex_hash() {
    get_next_ch();
    skip_digits();

    return {
            Token::Kind::AttrGrp,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
}

// MetadataVar [-0-9a-zA-Z$._][-a-zA-Z$._]*
Token Lexer::lex_exclaim() {
    if (!is_label_char(*cur_ptr)) {
        return {
                Token::Kind::Exclaim,
                std::string_view(tok_start, cur_ptr - tok_start),
//                {tok_start_pos, cur_pos}
        };
    }

    while (is_label_char(*cur_ptr)) {
        get_next_ch();
    }

    return {
            Token::Kind::MetadataVar,
            std::string_view(tok_start, cur_ptr - tok_start),
//            {tok_start_pos, cur_pos}
    };
}

Lexer::SccpBBsInfo Lexer::sccp_find_all_bbs_in_func(const char *func_start) const {
    // The first bb may be unnamed, so it may be not in the map
    std::unordered_map<std::string_view, const char *> bb_pos;

    auto cur = func_start;
    while (cur != input.end() && *cur != '}') {
        while (cur != input.end() && *cur != '}' && *cur != ':' && *cur != ';') ++cur;
        if (*cur == ';') {
            // skip comments
            while (cur != input.end() && *cur != '}' && *cur != '\n' && *cur != '\r') ++cur;
        } else if (*cur == ':') {
            auto label_start = cur - 1;
            while (label_start != func_start && is_label_char(*label_start)) --label_start;
            auto label = std::string_view { label_start + 1, cur };
            bb_pos.insert(std::make_pair(label, label_start + 1));
            ++cur;
        }
    }

    assert(*cur == '}');
    return SccpBBsInfo {
            bb_pos,
            cur
    };
}

