//  ----------------------------------------------------------------------------
//  Header file for the vcgen-driver class.                     vcgen-driver.hpp
//  Created by Ferhat Erata <ferhat.erata@yale.edu> on October 23, 2019.
//  Copyright (c) 2019 Yale University. All rights reserved.
// -----------------------------------------------------------------------------

#ifndef VCGEN_DRIVER_HHP
#define VCGEN_DRIVER_HHP

#include "recognizer/imp-parser.hpp"
#include <map>
#include <string>
// Tell Flex the lexer's prototype ...
#define IMP_DECL imp::imp_parser::symbol_type implex(imp_driver& driver)

// ... and declare it for the parser's sake.
IMP_DECL;
// Conducting the whole scanning and parsing of imp.

class imp_driver {
  public:
    imp::ast::Program* program = nullptr; // the top level node of our final AST
    std::map<std::string, int> variables; // counters for each location name

    imp_driver();
    ~imp_driver() { delete program; };

    string fresh(const string& location);

    // Handling the scanner.
    void scan_begin();
    void scan_end();
    bool trace_scanning;
    // Run the parser on file F.
    // Return 0 on success.
    int parse(const std::string& f);
    // The name of the file being parsed.
    // Used later to pass the file name to the location tracker.
    std::string file;
    // Whether parser traces should be generated.
    bool trace_parsing;
    // Error handling.
    void error(const imp::location& l, const std::string& m);
    void error(const std::string& m);

    std::string getLine(unsigned lineno);
};

#endif // VCGEN_DRIVER_HHP
