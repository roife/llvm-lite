#pragma once

#include <cassert>
#include <vector>
#include <unordered_set>
#include <unordered_map>

template<typename T>
struct Cfg {
    using Node_t = T*;
    typedef std::pair<const Node_t, const Node_t> Edge_t;
    Node_t entry, exit;
    std::unordered_set<Node_t> nodes;
    std::unordered_multimap<Node_t, Edge_t> edges;
    std::unordered_multimap<Node_t, Edge_t> reversed_edges;

    void set_entry(Node_t entry_node) {
        this->entry = entry_node;
        add_node(entry_node);
    }

    void set_exit(const Node_t &exit_node) {
        this->exit = exit_node;
        add_node(exit_node);
    }

    void add_node(const Node_t &node) {
        nodes.insert(node);
    }

    void add_edge(const Node_t &source, const Node_t &target) {
        auto edge = std::make_pair(source, target);
        auto reversed_edge = std::make_pair(target, source);
        edges.insert(std::make_pair(source, edge));
        reversed_edges.insert(std::make_pair(target, reversed_edge));
    }

    std::vector<Node_t> get_succs_of(const Node_t &node) {
        auto range = edges.equal_range(node);
        std::vector<Node_t> succs;
        std::transform(range.first, range.second, succs.begin(), [](std::pair<const Node_t, Edge_t> &edge) {
            return edge.second.second;
        });
        return succs;
    }

    std::vector<Node_t> get_preds_of(const Node_t &node) {
        auto range = reversed_edges.equal_range(node);
        std::vector<Node_t> preds;
        for (auto it = range.first; it != range.second; ++it) {
            preds.push_back(it->second.second);
        }
        return preds;
    }

    void clear() {
        nodes.clear();
        edges.clear();
        reversed_edges.clear();
        entry = exit = nullptr;
    }

    bool contains(const Node_t &node) {
        return nodes.contains(node);
    }

    void dfs(const Node_t &cur_node, std::unordered_set<Node_t> &vis, std::vector<Node_t> &po) const {
        if (vis.contains(cur_node)) {
            return;
        }
        vis.insert(cur_node);

        auto range = edges.equal_range(cur_node);
        for (auto it = range.first; it != range.second; ++it) {
            const auto &succ = it->second.second;
            if (succ) {
                dfs(succ, vis, po);
            }
        }

        if (cur_node) {
            po.push_back(cur_node);
        }
    }

    std::vector<Node_t> compute_postorder() const {
        std::unordered_set<Node_t> vis(nodes.size());
        std::vector<Node_t> po;
        dfs(entry, vis, po);
        return po;
    }

    std::vector<Node_t> compute_reversed_postorder() {
        auto po = compute_postorder();
        std::reverse(po.begin(), po.end());
        return po;
    }

    void reverse_all_edges() {
        std::swap(entry, exit);
        std::swap(edges, reversed_edges);
    }

    std::unordered_map<Node_t, Node_t> compute_idoms() {
        std::unordered_map<Node_t, std::optional<Node_t>> idoms;
        idoms[entry] = {entry};

        auto changed = true;
        auto rpo = compute_reversed_postorder();
        std::unordered_map<Node_t, size_t> rpo_idx;
        for (size_t i = 0; i < rpo.size(); ++i) {
            const auto &node = rpo[i];
            rpo_idx[node] = i + 1;
        }
        rpo_idx[entry] = 0;

        for (auto const &node: rpo) {
            idoms[node] = std::nullopt;
        }

        while (changed) {
            changed = false;

            // entry(content: nullptr) does not contained in rpo
            for (const auto &node: rpo) {
                auto preds = this->get_preds_of(node);

                std::optional<Node_t> new_idom = std::nullopt;
                for (const auto &pred: preds) {
                    if (idoms.at(pred) != std::nullopt) {
                        if (!new_idom.has_value()) {
                            new_idom = pred;
                            continue;
                        }

                        // intersect
                        auto i = pred;
                        auto j = new_idom.value();
                        while (i != j) {
                            while (rpo_idx.at(i) > rpo_idx.at(j)) {
                                i = idoms.at(i).value();
                            }
                            while (rpo_idx.at(j) > rpo_idx.at(i)) {
                                j = idoms.at(j).value();
                            }
                        }
                        new_idom = i;
                    }
                }

                assert(new_idom.has_value());
                if (idoms.at(node) != new_idom) {
                    idoms[node] = new_idom.value();
                    changed = true;
                }
            }
        }

        auto ret_idoms = std::unordered_map<Node_t, Node_t>();
        std::transform(idoms.begin(), idoms.end(), std::inserter(ret_idoms, ret_idoms.end()),
                       [&](const auto &idom_entry) {
                           return std::make_pair(idom_entry.first, idom_entry.second.value());
                       });
        return ret_idoms;
    }

    std::unordered_map<Node_t, std::unordered_set<Node_t>>
    compute_rdf(const std::optional<std::unordered_map<Node_t, Node_t>> &in_idoms = std::nullopt) {
        const auto &idoms = in_idoms.has_value() ? in_idoms.value() : this->compute_idoms();
        std::unordered_map<Node_t, std::unordered_set<Node_t>> rdf;

        for (const auto &node: nodes) {
            auto preds = this->get_preds_of(node);
            if (preds.size() > 1) {
                for (const auto &pred: preds) {
                    auto runner = pred;
                    while (runner != idoms.at(node)) {
                        rdf[runner].insert(node);
                        runner = idoms.at(runner);
                    }
                }
            }
        }
        return rdf;
    }
};
