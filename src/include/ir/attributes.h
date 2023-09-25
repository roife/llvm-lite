#pragma once
#include "ir/ty.h"
#include <cassert>
#include <optional>
#include <unordered_map>
#include <unordered_set>
#include <variant>
#include <vector>
#include <syntax/tokens.h>

struct Attribute {
#define ATTR_KEYWORD(STR) {Token::Kind::ATTR_##STR, #STR},
#define ATTR_INT_KEYWORD(STR) {Token::Kind::ATTR_##STR, #STR},
#define ATTR_TY_KEYWORD(STR) {Token::Kind::ATTR_##STR, #STR},
    inline static std::unordered_map<Token::Kind, std::string> ATTR_NAMES = {
#include "syntax/_attrs.inc"
    };
#undef ATTR_KEYWORD
#undef ATTR_INT_KEYWORD
#undef ATTR_TY_KEYWORD

    inline static std::unordered_set<Token::Kind> attr_with_int {
#define ATTR_KEYWORD(STR)
#define ATTR_INT_KEYWORD(STR) Token::Kind::ATTR_##STR,
#define ATTR_TY_KEYWORD(STR)
#include "syntax/_attrs.inc"
#undef ATTR_KEYWORD
#undef ATTR_INT_KEYWORD
#undef ATTR_TY_KEYWORD
    };
    inline static std::unordered_set<Token::Kind> attr_with_ty {
#define ATTR_KEYWORD(STR)
#define ATTR_INT_KEYWORD(STR)
#define ATTR_TY_KEYWORD(STR) Token::Kind::ATTR_##STR,
#include "syntax/_attrs.inc"
#undef ATTR_KEYWORD
#undef ATTR_INT_KEYWORD
#undef ATTR_TY_KEYWORD
    };

    std::optional<std::variant<int, Ty*>> arg;
    Token::Kind attr;

    explicit Attribute(Token::Kind attr): attr(attr) {}

    explicit Attribute(Token::Kind attr, int arg): attr(attr), arg(arg) {
        assert(attr_with_int.find(attr) != attr_with_int.end() && "Attribute with int is not supported");
    }

    explicit Attribute(Token::Kind attr, Ty* arg): attr(attr), arg(arg) {
        assert(attr_with_ty.find(attr) != attr_with_ty.end() && "Attribute with Ty is not supported");
    }

    ~Attribute() {
        if (arg.has_value() && std::holds_alternative<Ty*>(arg.value())) {
            delete std::get<Ty*>(arg.value());
        }
    }

    friend std::ostream &operator<<(std::ostream &os, const Attribute &attr);
};

struct Attributes {
    std::vector<Attribute> attrs;

    Attributes(const Attributes &) = delete;

    Attributes &operator=(const Attributes &) = delete;

    Attributes(Attributes &&) = default;

    Attributes &operator=(const Attributes &&) = delete;

    ~Attributes() = default;

    explicit Attributes(std::vector<Attribute>&& attrs): attrs(attrs) {}

    friend std::ostream &operator<<(std::ostream &os, const Attributes &attr_grp);
};
