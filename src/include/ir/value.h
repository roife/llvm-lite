#pragma once

#include "common/common.h"
#include "common/ilist.h"
#include "ty.h"
#include "metadata.h"
#include <vector>

struct Use;
struct User;
struct Inst;

struct Value {
    Name_t name;
    IList<Use> uses;
    Ty *ty;
    std::vector<MetadataVar> metadatas{};

    enum struct ValueTag {
        Inst, CONST, FUNC, PARAM, ARG, BasicBlock, Global, UNDEF,
    } value_tag = ValueTag::UNDEF;

    explicit Value(Name_t name, ValueTag tag, Ty *ty) : name(name), ty(ty),  value_tag(tag) {}

    Value(const Value &) = delete;

    Value &operator=(const Value &) = delete;

    Value(const Value &&) = delete;

    Value &operator=(const Value &&) = delete;

    virtual ~Value() {
//        TODO: fix assertion
//        assert(uses.head == nullptr && uses.tail == nullptr);
        delete ty;
    }

    void add_use(Use *u) { uses.insert_at_end(u); }

    void kill_use(Use *u) {
        uses.remove(u);
        // TODO: better method to deal with memory leak
        if (value_tag == ValueTag::CONST && uses.head == nullptr && uses.tail == nullptr) {
            delete this;
        }
    }

    [[nodiscard]] bool is_undef() const {
        return value_tag == ValueTag::UNDEF;
    }

    void replace_all_use_with(Value *new_value) const;

    void add_metadata(MetadataVar metadata) {
        metadatas.push_back(metadata);
    }

    virtual void print_tag(std::ostream &os) const {
        if (auto sv = std::get_if<std::string_view>(&name)) {
            os << *sv;
        } else if (auto id = std::get_if<size_t>(&name)) {
            os << *id;
        } else {
            unreachable();
        }
    }
};

struct Use {
    DEFINE_ILIST(Use)

    Value *definer;
    User *user;
    size_t op_rank;

    explicit Use(Value *definer, User *user, size_t op_rank)
            : definer(definer), user(user), op_rank(op_rank) {
        if (definer) definer->add_use(this);
    }

    void set(Value *new_definer) {
        if (definer) definer->kill_use(this);
        definer = new_definer;
        if (new_definer) new_definer->add_use(this);
    }

    virtual ~Use() {
        if (definer) definer->kill_use(this);
    }
};

struct User : Value {
    std::vector<Use *> operands;
    size_t op_count = 0;

    User(Name_t name, Value::ValueTag tag, Ty *ty, size_t op_count)
            : Value(name, tag, ty), operands(op_count, nullptr), op_count(op_count) {}

    ~User() override {
        for (auto use: operands) {
            delete use;
        }
    }

    void set_operand(size_t idx, Value *v) {
        assert(idx < operands.size());
        if (v) {
            operands[idx] = new Use(v, this, idx);
        }
    }

    void add_operand(Value *v) {
        assert(v);
        auto idx = op_count++;
        operands.push_back(new Use(v, this, idx));
    }

    [[nodiscard]] Value *get_operand(size_t idx) const {
        assert(idx < operands.size());
        return operands[idx]->definer;
    }
};

