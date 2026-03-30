#ifndef CODE_VISITOR_AND_REWRITER_H
#define CODE_VISITOR_AND_REWRITER_H

#include <regex>
#include <fstream>
#include <clang/Lex/Lexer.h>
#include "clang/Basic/SourceManager.h"
#include "clang/Rewrite/Core/Rewriter.h"
#include "clang/AST/RecursiveASTVisitor.h"

#include "../file_writer/file_writer.h"
#include "../memory_analysis/memory_set.h"

class CodeVisitorAndRewriter : public clang::RecursiveASTVisitor<CodeVisitorAndRewriter> {
    bool isFirstFunction = true;
    std::string currentFunction;
    clang::SourceLocation mainFunctionStartLoc;

public:
    explicit CodeVisitorAndRewriter(clang::ASTContext *Context, clang::Rewriter &TheRewriter, std::vector<MemorySet>& memorySets) : Context(Context), TheRewriter(TheRewriter), memorySets(memorySets) {}

    bool VisitFieldDecl(clang::FieldDecl *FD);
    bool VisitFunctionDecl(clang::FunctionDecl *FD);
    bool VisitVarDecl(clang::VarDecl *VD);
    bool VisitCallExpr(clang::CallExpr *CE);
    bool VisitMemberExpr(clang::MemberExpr *ME);
    bool VisitArraySubscriptExpr(clang::ArraySubscriptExpr *ASE);
    bool VisitBinaryOperator(clang::BinaryOperator *BO);
    bool VisitUnaryOperator(clang::UnaryOperator *UO);
    bool VisitCStyleCastExpr(clang::CStyleCastExpr *CE);

private:
    clang::ASTContext *Context;
    clang::Rewriter &TheRewriter;
    std::vector<MemorySet>& memorySets;
};

#endif //CODE_VISITOR_AND_REWRITER_H