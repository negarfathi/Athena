#ifndef CODE_CONSUMER_H
#define CODE_CONSUMER_H

#include <sstream>
#include "clang/Frontend/CompilerInstance.h"

#include "code_visitor_and_rewriter.h"

using namespace clang;

class CodeConsumer : public clang::ASTConsumer {
public:
    explicit CodeConsumer(ASTContext *Context, Rewriter &TheRewriter, std::vector<MemorySet>& memorySets) : VisitorAndRewriter(Context, TheRewriter, memorySets), TheRewriter(TheRewriter) {}

    void ReplaceText(std::string path, std::string sourceText, std::string destinationText);
    virtual void HandleTranslationUnit(clang::ASTContext &Context);

private:
    CodeVisitorAndRewriter VisitorAndRewriter;
    clang::Rewriter &TheRewriter;
};

#endif //CODE_CONSUMER_H