//  ----------------------------------------------------------------------------
//  Header file for the smt class.                              smt-compiler.hpp
//  Created by Ferhat Erata <ferhat.erata@yale.edu> on October 27, 2019.
//  Copyright (c) 2019 Yale University. All rights reserved.
// -----------------------------------------------------------------------------

#ifndef GC_SMT_COMPILER_HPP
#define GC_SMT_COMPILER_HPP

#include "../visitor.hpp"
#include <sstream>

using namespace std;

namespace gc::compiler {

class SmtCompiler : public gc::ast::Visitor<string> {
  private:
    const gc::ast::Program* prog;
    string output;

  public:
    const string& getOutput() const { return output; }

    explicit SmtCompiler(const gc::ast::Program* prog) : prog(prog) {
        output = visit(prog);
    }

    const string& compile() { return ""; }

    string visit(const gc::ast::Command* command) override {
        stringstream ss;
        switch (command->type) {
        case gc::ast::Command::Type::Assume:
            ss << visit(dynamic_cast<const gc::ast::Assume*>(command));
            break;
        case gc::ast::Command::Type::Assert:
            ss << visit(dynamic_cast<const gc::ast::Assert*>(command));
            break;
        case gc::ast::Command::Type::Havoc:
            ss << visit(dynamic_cast<const gc::ast::Havoc*>(command));
            break;
        case gc::ast::Command::Type::Choice:
            ss << visit(dynamic_cast<const gc::ast::Choice*>(command));
            break;
        case gc::ast::Command::Type::List:
            ss << visit(dynamic_cast<const gc::ast::List*>(command));
            break;
        }
        return ss.str();
    }

    string visit(const gc::ast::Assume* assume) override {
        stringstream ss;
        ss << "assume " << visit(&assume->assertion) << ";";
        return ss.str();
    }

    string visit(const gc::ast::Assert* assert) override {
        stringstream ss;
        ss << "assert " << visit(&assert->assertion) << ";";
        return ss.str();
    }

    string visit(const gc::ast::Havoc* havoc) override {
        stringstream ss;
        ss << "havoc " << visit(&havoc->location) << ";";
        return ss.str();
    }

    string visit(const gc::ast::List* list) override {
        stringstream ss;
        for (auto command : list->commands) {
            ss << visit(command) << " ";
        }
        ss << "\b";
        return ss.str();
    }

    string visit(const gc::ast::Choice* choice) override {
        stringstream ss;
        ss << "(";
        for (auto command : choice->left) {
            ss << visit(command) << " ";
        }
        ss << "\b)\n";
        ss << " []\n";
        ss << "(";
        for (auto command : choice->right) {
            ss << visit(command) << " ";
        }
        ss << "\b)";
        return ss.str();
    }

    string visit(const gc::ast::True* aTrue) override { return "true"; }

    string visit(const gc::ast::False* aFalse) override { return "false"; }

    string visit(const gc::ast::Assertion* assertion) override {
        stringstream ss;
        switch (assertion->type) {
        case gc::ast::Assertion::Type::Negation:
            ss << visit(dynamic_cast<const gc::ast::Negation*>(assertion));
            break;
        case gc::ast::Assertion::Type::Disjunction:
            ss << visit(dynamic_cast<const gc::ast::Disjunction*>(assertion));
            break;
        case gc::ast::Assertion::Type::Conjunction:
            ss << visit(dynamic_cast<const gc::ast::Conjunction*>(assertion));
            break;
        case gc::ast::Assertion::Type::Implication:
            ss << visit(dynamic_cast<const gc::ast::Implication*>(assertion));
            break;
        case gc::ast::Assertion::Type::True:
            ss << visit(dynamic_cast<const gc::ast::True*>(assertion));
            break;
        case gc::ast::Assertion::Type::False:
            ss << visit(dynamic_cast<const gc::ast::False*>(assertion));
            break;
        case gc::ast::Assertion::Type::UniversalQuantification:
            ss << visit(
                dynamic_cast<const gc::ast::UniversalQuantifier*>(assertion));
            break;
        case gc::ast::Assertion::Type::ExistentialQuantification:
            ss << visit(
                dynamic_cast<const gc::ast::ExistentialQuantifier*>(assertion));
            break;
        case gc::ast::Assertion::Type::Comparison:
            ss << visit(dynamic_cast<const gc::ast::Comparison*>(assertion));
            break;
        }
        return ss.str();
    }

    string visit(const gc::ast::Location* location) override {
        stringstream ss;
        ss << "" << location->identifier << "";
        return ss.str();
    }

    string visit(const gc::ast::Program* program) override {
        stringstream ss;
        for (const auto& node : program->commands) {
            ss << visit(node) << "\n";
        }
        return ss.str();
    }

    string visit(const gc::ast::Negation* assertion) override {
        stringstream ss;
        ss << "not " << visit(&assertion->assertion) << " ";
        return ss.str();
    }

    string visit(const gc::ast::Conjunction* assertion) override {
        stringstream ss;
        ss << "" << visit(&assertion->left) << " and "
           << visit(&assertion->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Disjunction* assertion) override {
        stringstream ss;
        ss << "" << visit(&assertion->left) << " or "
           << visit(&assertion->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Implication* assertion) override {
        stringstream ss;
        ss << "" << visit(&assertion->left) << " implies "
           << visit(&assertion->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::UniversalQuantifier* assertion) override {
        stringstream ss;
        ss << "(forall ";
        for (const auto& var : assertion->variables) {
            ss << var << " ";
        }
        ss << "";
        ss << visit(&assertion->body) << ")";
        return ss.str();
    }

    string visit(const gc::ast::ExistentialQuantifier* assertion) override {
        stringstream ss;
        ss << "(exists ";
        for (const auto& var : assertion->variables) {
            ss << var << " ";
        }
        ss << " ,";
        ss << visit(&assertion->body) << ")";
        return ss.str();
    }

    string visit(const gc::ast::Expression* expression) override {
        stringstream ss;
        switch (expression->type) {
        case gc::ast::Expression::Type::Location:
            ss << visit(dynamic_cast<const gc::ast::Location*>(expression));
            break;
        case gc::ast::Expression::Type::ArrayLocation:
            ss << visit(
                dynamic_cast<const gc::ast::ArrayLocation*>(expression));
            break;
        case gc::ast::Expression::Type::Constant:
            ss << visit(dynamic_cast<const gc::ast::Constant*>(expression));
            break;
        case gc::ast::Expression::Type::Negate:
            ss << visit(dynamic_cast<const gc::ast::Negate*>(expression));
            break;
        case gc::ast::Expression::Type::Sum:
            ss << visit(dynamic_cast<const gc::ast::Sum*>(expression));
            break;
        case gc::ast::Expression::Type::Subtract:
            ss << visit(dynamic_cast<const gc::ast::Subtract*>(expression));
            break;
        case gc::ast::Expression::Type::Multiply:
            ss << visit(dynamic_cast<const gc::ast::Multiply*>(expression));
            break;
        case gc::ast::Expression::Type::Divide:
            ss << visit(dynamic_cast<const gc::ast::Divide*>(expression));
            break;
        case gc::ast::Expression::Type::Mod:
            ss << visit(dynamic_cast<const gc::ast::Mod*>(expression));
            break;
        }
        return ss.str();
    }

    string visit(const gc::ast::Constant* expression) override {
        stringstream ss;
        ss << expression->number << "";
        return ss.str();
    }

    string visit(const gc::ast::ArrayLocation* expression) override {
        stringstream ss;
        ss << visit(&expression->location);
        ss << "[" << visit(&expression->index) << "]";
        return ss.str();
    }

    string visit(const gc::ast::Negate* expression) override {
        stringstream ss;
        ss << "-" << visit(&expression->expression) << "";
        return ss.str();
    }

    string visit(const gc::ast::Sum* expression) override {
        stringstream ss;
        ss << "" << visit(&expression->left) << " + "
           << visit(&expression->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Subtract* expression) override {
        stringstream ss;
        ss << "" << visit(&expression->left) << " - "
           << visit(&expression->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Multiply* expression) override {
        stringstream ss;
        ss << "" << visit(&expression->left) << " * "
           << visit(&expression->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Divide* expression) override {
        stringstream ss;
        ss << "" << visit(&expression->left) << " / "
           << visit(&expression->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Mod* expression) override {
        stringstream ss;
        ss << "" << visit(&expression->left) << " % "
           << visit(&expression->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::Comparison* comparison) override {
        stringstream ss;
        switch (comparison->type) {
        case gc::ast::Comparison::Type::EqualComparison:
            ss << visit(
                dynamic_cast<const gc::ast::EqualComparison*>(comparison));
            break;
        case gc::ast::Comparison::Type::NotEqualComparison:
            ss << visit(
                dynamic_cast<const gc::ast::NotEqualComparison*>(comparison));
            break;
        case gc::ast::Comparison::Type::LeqComparison:
            ss << visit(
                dynamic_cast<const gc::ast::LeqComparison*>(comparison));
            break;
        case gc::ast::Comparison::Type::GeqComparison:
            ss << visit(
                dynamic_cast<const gc::ast::GeqComparison*>(comparison));
            break;
        case gc::ast::Comparison::Type::LtComparison:
            ss << visit(dynamic_cast<const gc::ast::LtComparison*>(comparison));
            break;
        case gc::ast::Comparison::Type::GtComparison:
            ss << visit(dynamic_cast<const gc::ast::GtComparison*>(comparison));
            break;
        }
        return ss.str();
    }

    string visit(const gc::ast::EqualComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left) << " = "
           << visit(&comparison->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::NotEqualComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left)
           << " != " << visit(&comparison->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::LeqComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left)
           << " <= " << visit(&comparison->right) << "";
        return ss.str();
    }
    string visit(const gc::ast::GeqComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left)
           << " >= " << visit(&comparison->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::LtComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left) << " < "
           << visit(&comparison->right) << "";
        return ss.str();
    }

    string visit(const gc::ast::GtComparison* comparison) override {
        stringstream ss;
        ss << "" << visit(&comparison->left) << " > "
           << visit(&comparison->right) << "";
        return ss.str();
    }
};
} // namespace gc::compiler
#endif // GC_SMT_COMPILER_HPP
