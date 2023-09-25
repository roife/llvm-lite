#pragma once
#include <cassert>

#define DEFINE_ILIST(cls) \
  cls *prev;              \
  cls *next;

template <typename Node_t>
struct IList {
    Node_t *head;
    Node_t *tail;

    IList() {
        head = tail = nullptr;
    }

    // insert new_node before cur_node
    void insert_before(Node_t *new_node, Node_t *cur_node) {
        new_node->prev = cur_node->prev;
        new_node->next = cur_node;
        if (cur_node->prev) {
            cur_node->prev->next = new_node;
        }
        cur_node->prev = new_node;

        if (head == cur_node) {
            head = new_node;
        }
    }

    // insert new_node after cur_node
    void insert_after(Node_t *new_node, Node_t *cur_node) {
        new_node->prev = cur_node;
        new_node->next = cur_node->next;
        if (cur_node->next) {
            cur_node->next->prev = new_node;
        }
        cur_node->next = new_node;

        if (tail == cur_node) {
            tail = new_node;
        }
    }

    // insert new_node at the end of IList
    void insert_at_end(Node_t *new_node) {
        new_node->prev = tail;
        new_node->next = nullptr;

        if (tail == nullptr) {
            head = tail = new_node;
        } else {
            tail->next = new_node;
            tail = new_node;
        }
    }

    // insert new_node at the beginning of IList
    void insert_at_begin(Node_t *new_node) {
        new_node->prev = nullptr;
        new_node->next = head;

        if (head == nullptr) {
            head = tail = new_node;
        } else {
            head->prev = new_node;
            head = new_node;
        }
    }

    // remove node from IList
    void remove(Node_t *node) {
        if (node->prev != nullptr) {
            node->prev->next = node->next;
        } else {
            assert(head == node);
            head = node->next;
        }

        if (node->next != nullptr) {
            node->next->prev = node->prev;
        } else {
            assert(tail == node);
            tail = node->prev;
        }
    }

    // concat two lists
    // ilist will be cleared
    void concat(IList &ilist) {
        if (ilist.head == nullptr) {
            return;
        }

        if (head == nullptr) {
            move_from(ilist);
            return;
        }

        tail->next = ilist.head;
        ilist.head->prev = tail;
        tail = ilist.tail;
        ilist.clear();
    }

    // move ilist into this
    // ilist will be cleared
    void move_from(IList &ilist) {
        head = ilist.head;
        tail = ilist.tail;
        ilist.clear();
    }

    void clear() {
        this->head = nullptr;
        this->tail = nullptr;
    }
};
