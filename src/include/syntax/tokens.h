#pragma once

#include <string_view>
//#include "span.h"

struct Token {
    enum Kind {
        TOK_EOF = 0,

#define KEYWORD(STR) KW_##STR,
#include "_keywords.inc"
#undef KEYWORD

#define INST_KEYWORD(STR) INST_##STR,
#include "_insts.inc"
#undef INST_KEYWORD

#define ATTR_KEYWORD(STR) ATTR_##STR,
#define ATTR_INT_KEYWORD(STR) ATTR_##STR,
#define ATTR_TY_KEYWORD(STR) ATTR_##STR,
#include "_attrs.inc"
#undef ATTR_KEYWORD
#undef ATTR_INT_KEYWORD
#undef ATTR_TY_KEYWORD

#define TY_KEYWORD(STR) TY_##STR,
#include "_tys.inc"
#undef TY_KEYWORD

        TY_int,
        LabelStr, LabelID, IDENT,
        IntLiteral, FloatLiteral,
        MetadataVar, String, AttrGrp,
        GlobalVarStr, LocalVarStr, GlobalVarID, LocalVarID,
        Colon, Equal, LSqr, RSqr, LBra, RBra, LE, GT, LPar, RPar, Comma, Star, BAR, Exclaim
    } kind;

    std::string_view val;

//    Span span;

    [[nodiscard]] bool is_attr() {
        return Token::ATTR_dso_local <= kind && kind <= Token::ATTR_immarg;
    }
};

