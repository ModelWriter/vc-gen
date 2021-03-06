//  ----------------------------------------------------------------------------
//  Implementation file for the imp-driver class.                 imp-driver.cpp
//  Created by Ferhat Erata <ferhat.erata@yale.edu> on October 23, 2019.
//  Copyright (c) 2019 Yale University. All rights reserved.
// -----------------------------------------------------------------------------

#include "imp-driver.hpp"
#include "ast/imp.hpp"
#include "recognizer/imp-parser.hpp"
#include <fstream>
#include <sstream>

imp_driver::imp_driver() : trace_scanning(false), trace_parsing(false) {}

string imp_driver::fresh(const string& location) {
    std::map<string, int>::iterator it;
    it = variables.find(location);
    stringstream ss;
    if (it == variables.end()) {
        variables[location] = 0;
        ss << location << "!0";
        return ss.str();
    } else {
        int count = ++variables[location];
        variables[location] = count;
        ss << location << "!" << count;
        return ss.str();
    }
}

int imp_driver::parse(const std::string& f) {
    file = f;
    scan_begin();
    imp::imp_parser parser(*this);
    parser.set_debug_level(trace_parsing);
    int res = parser.parse();
    scan_end();
    return res;
}

void imp_driver::error(const imp::location& l, const std::string& m) {
    std::cerr << l << ": " << m << std::endl;
    // For undefined tokens, bison currently just tells us something
    // like 'unexpected $undefined' without printing the offending
    // character. This is much more useful:
    unsigned col = l.begin.column;
    unsigned len = l.end.column - col;
    unsigned bLine = l.begin.line;
    // TODO: The reported location is not entirely satisfying.
    std::cerr << "    " << getLine(bLine) << "\n";
    std::cerr << "    " << std::string(col - 1, ' ');
    std::cerr << std::string(len, '^') << std::endl;
}

void imp_driver::error(const std::string& m) { std::cerr << m << std::endl; }

std::string imp_driver::getLine(unsigned lineno) {
    std::ifstream is(file);
    std::string line;
    if (is.is_open()) {
        for (unsigned i = 1; std::getline(is, line); i++) {
            if (i == lineno)
                break;
        }
    } else
        std::cout << "Unable to open stream" << std::endl;
    return line;
}
