#pragma once

#include <iostream>
#include <sys/mman.h>
#include <sys/stat.h>
#include <fcntl.h>

struct Reader {
    struct stat* st = nullptr;
    char *input = nullptr;
    const char *src_file;
    const char *bin_name;

    Reader(const char *src_file, const char *bin_name): src_file(src_file), bin_name(bin_name) {}

    ~Reader() {
        if (input) {
            munmap(input, st->st_size);
            free(st);
        }
    }

    [[nodiscard]] bool read() {
        if (src_file == nullptr) {
            std::cerr << "Usage: " << bin_name << " [-o output_file] [-Olevel] [-a args_file] [-l] src_file\n";
            return false;
        }

        int fd = open(src_file, O_RDONLY);
        if (fd < 0) {
            std::cerr << "Failed to open " << src_file << "\n";
            return false;
        }

        st = (struct stat*)malloc(sizeof(struct stat));
        fstat(fd, st);
        input = (char *)mmap(nullptr, st->st_size, PROT_READ, MAP_PRIVATE, fd, 0);
        return true;
    }

    [[nodiscard]] bool has_value() const {
        return input != nullptr;
    }
};