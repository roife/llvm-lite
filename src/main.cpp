#include <fstream>
#include "common/common.h"
#include "config/config.h"
#include "config/reader.h"
#include "syntax/parser.h"
#include "syntax/args_parser.h"
#include "ir/program.h"
#include "passes/constant_folding.h"
#include "passes/dce.h"

int main(int argc, char *argv[]) {
    std::ios::sync_with_stdio(false);
    std::cin.tie(nullptr);

    // # Parse options
    const auto opts = Option(argc, argv);

    // # Parse src file
    auto src_reader = Reader(opts.src_file, argv[0]);
    if (!src_reader.read()) {
        return SYSTEM_ERROR;
    }

    // # Parse args file
    std::optional<ArgsParser> args_parser = std::nullopt;
    auto args_reader = Reader(opts.args_file, argv[0]);
    if (opts.optimization) {
        if (!opts.args_file) {
            std::cerr << "Args file is required when enabling optimization.\n";
            return ARGS_FILE_NOT_PROVIDED;
        }
        if (!args_reader.read()) {
            return SYSTEM_ERROR;
        }
        args_parser = ArgsParser(args_reader.st->st_size == 0 ? "" : args_reader.input);
        args_parser.value().parse();
    }

    // # Lexer
    auto lexer = Lexer(src_reader.input);
    if (opts.lex_only) {
        for (auto tk = lexer.next(); tk.kind != Token::TOK_EOF; tk = lexer.next()) {
            std::cout << tk.val << "\n";
        }
        return 0;
    }

    // # Parser
    Parser parser(std::move(lexer), args_parser);
    parser.parse_program();
    auto program = parser.program;

    // # Run optimizations
    if (opts.optimization) {
//        auto changed = true;
//        while (changed) {
//            changed = false;
//            SccpPass sccp(program, args_parser.value());
//            changed |= sccp.run();
//
//            DcePass dce(program);
//            changed |= dce.run();
//        }
        DcePass(program).run();
    }

    // # Output
    if (opts.output_file) {
        std::ofstream(opts.output_file) << *program;
    } else {
        std::cout << *program;
    }

    delete program;
    return 0;
}
