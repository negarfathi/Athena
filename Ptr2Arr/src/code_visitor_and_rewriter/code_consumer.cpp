#include "../../include/code_visitor_and_rewriter/code_consumer.h"

void CodeConsumer::ReplaceText(std::string path, std::string sourceText, std::string destinationText) {
    std::ifstream inStream(path);
    std::stringstream buffer;
    buffer << inStream.rdbuf();
    inStream.close();
    std::string content = buffer.str();
    size_t position = content.find(sourceText);
    while (position != std::string::npos) {
        content.replace(position, sourceText.length(), destinationText);
        position = content.find(sourceText, position + destinationText.length());
    }
    std::ofstream outStream(path);
    outStream << content;
    outStream.close();
}

void CodeConsumer::HandleTranslationUnit(clang::ASTContext &Context) {
    VisitorAndRewriter.TraverseDecl(Context.getTranslationUnitDecl());
    std::error_code EC;
    llvm::raw_fd_ostream stream((sourceCodeDirectory / "SourceCode_Ptr2Arr.c").string(), EC, llvm::sys::fs::OF_Text);
    TheRewriter.getEditBuffer(TheRewriter.getSourceMgr().getMainFileID()).write(stream);
    stream.close();



    if (sourceCodeName == "Incorrect_Control_Statement_1_NT" || sourceCodeName == "Incorrect_Control_Statement_1_T") {
        std::string sourceText = "int p = array;";
        std::string destinationText = "int p = array_index;";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "Incorrect_Initialization_1_NT" || sourceCodeName == "Incorrect_Initialization_1_T") {
        std::string sourceText = "int p = buf;";
        std::string destinationText = "int p = buf_index;";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "Incorrect_Initialization_3_NT" || sourceCodeName == "Incorrect_Initialization_3_T") {
        std::string sourceText = "int p = in;";
        std::string destinationText = "int p = in_index;";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "Missing_Iterator_Update_3_NT" || sourceCodeName == "Missing_Iterator_Update_3_T") {
        std::string sourceText = "int argv = argv1;";
        std::string destinationText = "int argv = argv1_index;";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "svcomp_cstrchr_unsafe") {
        std::string sourceText = "*cstrchr(__VERIFIER_nondet_String(),__VERIFIER_nondet_int())";
        std::string destinationText = "memory0[cstrchr(__VERIFIER_nondet_String(),__VERIFIER_nondet_int())]";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "svcomp_cstrpbrk_unsafe") {
        std::string sourceText = "*cstrpbrk(__VERIFIER_nondet_String(),__VERIFIER_nondet_String())";
        std::string destinationText = "memory0[cstrpbrk(__VERIFIER_nondet_String(),__VERIFIER_nondet_String())]";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
    else if (sourceCodeName == "svcomp_knapsack_alloca_unsafe" || sourceCodeName == "svcomp_knapsack_unsafe") {
        std::string sourceText = "memory1[cost + (i - memory3[size + (j)]]";
        std::string destinationText = "memory1[cost + (i - memory3[size + (j)])]";
        ReplaceText(sourceCodeDirectory / "SourceCode_Ptr2Arr.c", sourceText, destinationText);
    }
}