//  ----------------------------------------------------------------------------
//  Header file for the vcgen-driver class.                     vcgen-driver.hpp
//  Created by Ferhat Erata <ferhat.erata@yale.edu> on October 23, 2019.
//  Copyright (c) 2019 Yale University. All rights reserved.
// -----------------------------------------------------------------------------

#ifndef VCGEN_DRIVER_HH
#define VCGEN_DRIVER_HH

#include "vcgen-parser.hpp"
#include <map>
#include <string>
// Tell Flex the lexer's prototype ...
#define YY_DECL yy::vcgen_parser::symbol_type yylex(vcgen_driver& driver)

// ... and declare it for the parser's sake.
YY_DECL;
// Conducting the whole scanning and parsing of vcgen.

class vcgen_driver {
  public:
    //ast::Program* prog = nullptr;
    vcgen_driver();
    virtual ~vcgen_driver();

    std::map<std::string, int> variables;

    int result;
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
    void error(const yy::location& l, const std::string& m);
    void error(const std::string& m);

    std::string getLine(unsigned lineno);
};
#endif // VCGEN_DRIVER_HH
