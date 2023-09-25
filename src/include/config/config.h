#pragma once

#include "common/common.h"
#include <iostream>
#include <ostream>
#include <unistd.h>
#include <cstring>

struct Option {
    bool optimization = false;
    bool lex_only = false;
    char *src_file = nullptr, *output_file = nullptr, *args_file = nullptr;

    Option(int argc, char *argv[]) {
        for (int ch; (ch = getopt(argc, argv, "lo:a:O::")) != -1;) {
            switch (ch) {
                case 'o':
                    output_file = strdup(optarg);
                    break;
                case 'O':
                    optimization = std::atoi(optarg) > 0;
                    break;
                case 'l':
                    lex_only = true;
                    break;
                case 'a':
                    args_file = strdup(optarg);
                    break;
                default:
                    unreachable();
            }
        }

        if (optind <= argc) {
            src_file = argv[optind];
        }
    }

    ~Option() {
        // src_file should not be freed

        if (output_file) {
            free(output_file);
        }

        if (args_file) {
            free(args_file);
        }
    }
};

