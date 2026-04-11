#include "../../include/code_visitor_and_rewriter/code_visitor_and_rewriter.h"

bool CodeVisitorAndRewriter::VisitFieldDecl(clang::FieldDecl *FD) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(FD->getBeginLoc())) {
        if (FD->getType()->isPointerType()) {
            //llvm::outs() << "Pointer Declaration as Structure Field" << "\n";
            std::string fieldName = FD->getNameAsString();
            std::string textToReplace = "int " + fieldName;
            TheRewriter.ReplaceText(FD->getSourceRange(), textToReplace);

            WriteToFile("StructureField, " + fieldName);
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitFunctionDecl(clang::FunctionDecl *FD) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(FD->getBeginLoc())) {
        if (FD->hasBody()) {
            currentFunction = FD->getNameAsString();

            if (currentFunction == "main") {
                mainFunctionStartLoc = FD->getBody()->getBeginLoc().getLocWithOffset(1);
            }

            //llvm::outs() << "Pointer as Function Return Type" << "\n";
            if (FD->getReturnType()->isPointerType()) {
                std::string textToReplace = "int";
                TheRewriter.ReplaceText(FD->getReturnTypeSourceRange(), textToReplace);

                WriteToFile("Function, " + currentFunction);
            }

            //llvm::outs() << "Pointer or Pointee Declaration as Function Parameter" << "\n";
            for (clang::ParmVarDecl *param : FD->parameters()) {
                std::string paramName = param->getNameAsString();
                clang::QualType paramType = param->getType();
                if (paramType->isPointerType() || paramType->isArrayType()) {
                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), paramName + ".addr") != memorySets[i].pointers.end()) {
                            std::string textToReplace = "int " + paramName;
                            TheRewriter.ReplaceText(param->getSourceRange(), textToReplace);

                            WriteToFile("FunctionParameter, " + currentFunction + ", " + paramName);
                            break;
                        }
                        if (std::find(memorySets[i].pointees.begin(), memorySets[i].pointees.end(), paramName) != memorySets[i].pointees.end()) {
                            std::string textToReplace = "int " + paramName + "_index";
                            TheRewriter.ReplaceText(param->getSourceRange(), textToReplace);

                            WriteToFile("FunctionParameter, " + currentFunction + ", " + paramName + "_index");
                            break;
                        }
                    }
                }
            }

            if (isFirstFunction) {
                std::string textToInsert;
                for (size_t i = 0; i < memorySets.size(); ++i) {
                    textToInsert += "#define MEMORY" + std::to_string(i) + "_SIZE 100000\n" +
                                    memorySets[i].dataType + " memory" + std::to_string(i) + "[MEMORY" + std::to_string(i) + "_SIZE];\n"
                                    "int memory" + std::to_string(i) + "_freeIndex = 1;\n"
                                    "int allocate_memory" + std::to_string(i) + "(int size) {\n"
                                    "   int allocatedIndex = memory" + std::to_string(i) + "_freeIndex;\n"
                                    "   memory" + std::to_string(i) + "_freeIndex = memory" + std::to_string(i) + "_freeIndex + size;\n"
                                    "   return allocatedIndex;\n"
                                    "}\n\n";

                    WriteToFile("Macro, MEMORY" + std::to_string(i) + "_SIZE");
                    WriteToFile("GlobalVariable, memory" + std::to_string(i) + "_freeIndex");
                    WriteToFile("Function, allocate_memory" + std::to_string(i));
                    WriteToFile("FunctionParameter, allocate_memory" + std::to_string(i) + ", size");
                    WriteToFile("LocalVariable, allocate_memory" + std::to_string(i) + ", allocatedIndex");
                }
                TheRewriter.InsertTextBefore(FD->getBeginLoc(), textToInsert);
                isFirstFunction = false;
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitVarDecl(clang::VarDecl *VD) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(VD->getBeginLoc())) {
        std::string varName = VD->getNameAsString();

        int id;
        bool isPointer = false;
        bool isPointee = false;
        for (int i = 0; i < memorySets.size(); ++i) {
            if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), varName) != memorySets[i].pointers.end()) {
                id = i;
                isPointer = true;
                break;
            }
            if (std::find(memorySets[i].pointees.begin(), memorySets[i].pointees.end(), varName) != memorySets[i].pointees.end()) {
                id = i;
                isPointee = true;
                break;
            }
        }

        if (isPointer) {
            if (VD->hasGlobalStorage() && !VD->isStaticLocal()) {
                if (!VD->hasInit()) {
                    //llvm::outs() << "Pointer Declaration as Global Variable without Initialization" << "\n";
                    std::string textToReplace = "int " + varName;
                    TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                    WriteToFile("GlobalVariable, " + varName);
                }
            }

            else if (VD->isLocalVarDecl()) {
                if (VD->hasInit()) {
                    clang::Expr *initExpr = VD->getInit()->IgnoreParenImpCasts();
                    clang::SourceRange initExprRange = initExpr->getSourceRange();
                    std::string initExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(initExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    if (initExprStr == "NULL") {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by “NULL”" << "\n";
                        std::string textToReplace = "int " + varName;
                        clang::SourceLocation startLoc = VD->getBeginLoc();
                        clang::SourceLocation endLoc = VD->getLocation();
                        TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }

                    else if (initExprStr.find("alloca") != std::string::npos) {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by “alloca(length * sizeof(T))”" << "\n";
                        std::string size;
                        std::regex allocaPattern(".*alloca\\s*\\(\\s*(.*?)\\s*\\)");
                        std::smatch match;
                        if (std::regex_match(initExprStr, match, allocaPattern)) {
                            size = match[1].str();
                            size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*char\\s*\\)"), "1");
                            size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*int\\s*\\)"), "1");
                        }
                        std::string textToReplace = "int " + varName + " = allocate_memory" + std::to_string(id) + "(" + size + ")";
                        TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }

                    else if (initExprStr.find("malloc") != std::string::npos) {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by “(T*) malloc(length * sizeof(T))”" << "\n";
                        std::string size;
                        std::regex mallocPattern(".*malloc\\s*\\(\\s*(.*?)\\s*\\)");
                        std::smatch match;
                        if (std::regex_match(initExprStr, match, mallocPattern)) {
                            size = match[1].str();
                            size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*char\\s*\\)"), "1");
                            size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*int\\s*\\)"), "1");
                        }
                        std::string textToReplace = "int " + varName + " = allocate_memory" + std::to_string(id) + "(" + size + ")";
                        TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }

                    else if (auto *UO = llvm::dyn_cast<clang::UnaryOperator>(initExpr)) {
                        if (UO->getOpcode() == clang::UO_AddrOf) {
                            clang::Expr *subExpr = UO->getSubExpr()->IgnoreParenImpCasts();
                            if (isa<clang::DeclRefExpr>(subExpr)) {
                                //llvm::outs() << "Pointer Declaration as Local Variable initialized by “&var”" << "\n";
                                std::string textToReplace = "int " + varName;
                                clang::SourceLocation startLoc = VD->getBeginLoc();
                                clang::SourceLocation endLoc = VD->getLocation();
                                TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                                WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                            }
                            else if (isa<clang::ArraySubscriptExpr>(subExpr)) {
                                //llvm::outs() << "Pointer Declaration as Local Variable initialized by “&arr[i]”" << "\n";
                                std::string textToReplace = "int " + varName;
                                clang::SourceLocation startLoc = VD->getBeginLoc();
                                clang::SourceLocation endLoc = VD->getLocation();
                                TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                                WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                            }
                        }
                    }

                    else if (initExpr->getType()->isArrayType()) {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by “arr”" << "\n";
                        std::string textToReplace = "int " + varName;
                        clang::SourceLocation startLoc = VD->getBeginLoc();
                        clang::SourceLocation endLoc = VD->getLocation();
                        TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }

                    else if (auto *ME = dyn_cast<clang::MemberExpr>(initExpr)) {
                        if (ME->isArrow()) {
                            //llvm::outs() << "Pointer Declaration as Local Variable initialized by Member Access" << "\n";
                            std::string textToReplace = "int " + varName;
                            clang::SourceLocation startLoc = VD->getBeginLoc();
                            clang::SourceLocation endLoc = VD->getLocation();
                            TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                            WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                        }
                    }

                    else if (isa<clang::CallExpr>(initExpr)) {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by Function Call" << "\n";
                        std::string textToReplace = "int " + varName;
                        clang::SourceLocation startLoc = VD->getBeginLoc();
                        clang::SourceLocation endLoc = VD->getLocation();
                        TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }

                    else {
                        //llvm::outs() << "Pointer Declaration as Local Variable initialized by Pointer" << "\n";
                        std::string textToReplace = "int " + varName;
                        clang::SourceLocation startLoc = VD->getBeginLoc();
                        clang::SourceLocation endLoc = VD->getLocation();
                        TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                        WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                    }
                }

                else {
                    //llvm::outs() << "Pointer Declaration as Local Variable without Initialization" << "\n";
                    std::string textToReplace = "int " + varName;
                    TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                    WriteToFile("LocalVariable, " + currentFunction + ", " + varName);
                }
            }
        }

        else if (isPointee) {
            if (VD->hasGlobalStorage() && !VD->isStaticLocal()) {
                if (!VD->hasInit()) {
                    //llvm::outs() << "Pointee (“var” or “arr”) Declaration as Global Variable without Initialization" << "\n";
                    std::string textToReplace = "int " + varName + "_index";
                    TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                    std::string size;
                    clang::QualType varType = VD->getType();
                    if (varType->isArrayType()) {
                        std::string arrayType = varType.getAsString();
                        size_t startBracket = arrayType.find('[');
                        size_t endBracket = arrayType.find(']', startBracket);
                        std::string arraySize = arrayType.substr(startBracket + 1, endBracket - startBracket - 1);
                        size = arraySize;
                    }
                    else {
                        size = "1";
                    }
                    std::string textToInsert = "\n" + varName + "_index = allocate_memory" + std::to_string(id) + "(" + size +");\n";
                    TheRewriter.InsertTextAfterToken(mainFunctionStartLoc, textToInsert);

                    WriteToFile("GlobalVariable, " + currentFunction + ", " + varName + "_index");
                }
            }

            else if (VD->isLocalVarDecl()) {
                if (VD->hasInit()) {
                    // llvm::outs() << "Pointee (“var”) Declaration as Local Variable initialized by Expression including Constant, Variable, Function Call, Pointee, or Pointer Dereference" << "\n";
                    clang::Expr *initExpr = VD->getInit();
                    clang::SourceRange initExprRange = initExpr->getSourceRange();
                    std::string initExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(initExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    std::string size = "1";
                    std::string textToReplace = "int " + varName + "_index = allocate_memory" + std::to_string(id) + "(" + size + ");\n" +
                                                varName + "_index";
                    clang::SourceLocation startLoc = VD->getBeginLoc();
                    clang::SourceLocation endLoc = VD->getLocation();
                    TheRewriter.ReplaceText(clang::SourceRange(startLoc, endLoc), textToReplace);

                    WriteToFile("LocalVariable, " + currentFunction + ", " + varName + "_index");
                }

                else {
                    //llvm::outs() << "Pointee (“var” or “arr”) Declaration as Local Variable without Initialization" << "\n";
                    std::string size;
                    clang::QualType varType = VD->getType();
                    if (varType->isArrayType()) {
                        std::string arrayType = varType.getAsString();
                        size_t startBracket = arrayType.find('[');
                        size_t endBracket = arrayType.find(']', startBracket);
                        std::string arraySize = arrayType.substr(startBracket + 1, endBracket - startBracket - 1);
                        size = arraySize;
                    }
                    else {
                        size = "1";
                    }
                    std::string textToReplace = "int " + varName + "_index = allocate_memory" + std::to_string(id) + "(" + size +")";
                    TheRewriter.ReplaceText(VD->getSourceRange(), textToReplace);

                    WriteToFile("LocalVariable, " + currentFunction + ", " + varName + "_index");
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitCallExpr(clang::CallExpr *CE) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(CE->getBeginLoc())) {
        for (clang::Expr *arg : CE->arguments()) {
            if (clang::StringLiteral *SL = dyn_cast<clang::StringLiteral>(arg->IgnoreImpCasts())) {
                if (SL->getString() == "\n") {
                    //llvm::outs() << "Pointer or Pointee (“\n”) as Function Argument" << "\n";
                    std::string textToReplace = "newLine_index";
                    TheRewriter.ReplaceText(arg->getSourceRange(), textToReplace);

                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        auto it = std::find_if(memorySets[i].pointees.begin(), memorySets[i].pointees.end(), [](const std::string& item) { return item[0] == '@'; });
                        if (it != memorySets[i].pointees.end()) {
                            std::string textToInsert = "\nint newLine_index = allocate_memory" + std::to_string(i) + "(2);\n"
                                                        "memory" + std::to_string(i) + "[newLine_index + 0] = '\\n';\n"
                                                        "memory" + std::to_string(i) + "[newLine_index + 1] = '\\0';";
                            TheRewriter.InsertTextAfterToken(mainFunctionStartLoc, textToInsert);

                            WriteToFile("LocalVariable, " + currentFunction + ", newLine_index");
                        }
                    }
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitMemberExpr(clang::MemberExpr *ME) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(ME->getBeginLoc())) {
        if (ME->isArrow()) {
            //llvm::outs() << "Member Access" << "\n";
            clang::Expr *basePointer = ME->getBase()->IgnoreParenImpCasts();
            clang::SourceRange basePointerRange = basePointer->getSourceRange();
            std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

            std::string memberAccessed = ME->getMemberNameInfo().getAsString();

            for (size_t i = 0; i < memorySets.size(); ++i) {
                if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                    std::string textToReplace = "memory" + std::to_string(i) + "[" + basePointerStr + "]." + memberAccessed;
                    TheRewriter.ReplaceText(ME->getSourceRange(), textToReplace);
                    break;
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitArraySubscriptExpr(clang::ArraySubscriptExpr *ASE) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(ASE->getBeginLoc())) {
        clang::Expr *expr = ASE->IgnoreParenImpCasts();
        clang::SourceRange exprRange = expr->getSourceRange();
        std::string exprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(exprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

        clang::SourceLocation lineStartLoc = SM.translateLineCol(SM.getFileID(ASE->getBeginLoc()), SM.getSpellingLineNumber(ASE->getBeginLoc()), 1);
        clang::SourceLocation lineEndLoc = lineStartLoc;
        while (SM.getCharacterData(lineEndLoc)[0] != '\n' && SM.getCharacterData(lineEndLoc)[0] != '\0') {
            lineEndLoc = lineEndLoc.getLocWithOffset(1);
        }
        std::string lineText = std::string(SM.getCharacterData(lineStartLoc), SM.getCharacterData(lineEndLoc) - SM.getCharacterData(lineStartLoc));

        std::string escapedExprStr;
        for (char c : exprStr) {
            if (c == '[' || c == ']') {
                escapedExprStr += '\\';
            }
            escapedExprStr += c;
        }
        std::regex pattern("&\\s*\\(?\\s*" + escapedExprStr + "\\s*\\)?");

        if (!std::regex_search(lineText, pattern)) {
            //llvm::outs() << "Element Access (“arr[i] or ptr[i]”)" << "\n";
            size_t startBracket = exprStr.find('[');
            size_t endBracket = exprStr.find(']', startBracket);
            std::string arrayName = exprStr.substr(0, startBracket);
            std::string arrayIndex = exprStr.substr(startBracket + 1, endBracket - startBracket - 1);

            for (size_t i = 0; i < memorySets.size(); ++i) {
                if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), arrayName) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), arrayName + ".addr") != memorySets[i].pointers.end()) {
                    std::string textToReplace = "memory" + std::to_string(i) + "[" + arrayName + " + (" + arrayIndex + ")]";
                    TheRewriter.ReplaceText(ASE->getSourceRange(), textToReplace);
                    break;
                }
                if (std::find(memorySets[i].pointees.begin(), memorySets[i].pointees.end(), arrayName) != memorySets[i].pointees.end()) {
                    std::string textToReplace = "memory" + std::to_string(i) + "[" + arrayName + "_index + (" + arrayIndex + ")]";
                    TheRewriter.ReplaceText(ASE->getSourceRange(), textToReplace);
                    break;
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitBinaryOperator(clang::BinaryOperator *BO) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(BO->getBeginLoc())) {
        if (BO->getOpcode() == clang::BO_Assign) {
            std::string varName;
            if (auto *DRE = llvm::dyn_cast<clang::DeclRefExpr>(BO->getLHS()->IgnoreParenImpCasts())) {
                varName = DRE->getDecl()->getNameAsString();
            }

            int id;
            bool isPointer = false;
            for (int i = 0; i < memorySets.size(); ++i) {
                if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), varName) != memorySets[i].pointers.end()) {
                    id = i;
                    isPointer = true;
                    break;
                }
            }

            if (isPointer) {
                clang::Expr *initExpr = BO->getRHS()->IgnoreParenImpCasts();
                clang::SourceRange initExprRange = initExpr->getSourceRange();
                std::string initExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(initExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                if (initExprStr.find("alloca") != std::string::npos) {
                    //llvm::outs() << "Pointer Assigned by “alloca(length * sizeof(T))”" << "\n";
                    std::string size;
                    std::regex allocaPattern(".*alloca\\s*\\(\\s*(.*?)\\s*\\)");
                    std::smatch match;
                    if (std::regex_match(initExprStr, match, allocaPattern)) {
                        size = match[1].str();
                        size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*char\\s*\\)"), "1");
                        size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*int\\s*\\)"), "1");
                    }
                    std::string textToReplace = varName + " = allocate_memory" + std::to_string(id) + "(" + size + ")";
                    TheRewriter.ReplaceText(BO->getSourceRange(), textToReplace);
                }

                else if (initExprStr.find("malloc") != std::string::npos) {
                    //llvm::outs() << "Pointer Assigned by “(T*) malloc(length * sizeof(T))”" << "\n";
                    std::string size;
                    std::regex mallocPattern(".*malloc\\s*\\(\\s*(.*?)\\s*\\)");
                    std::smatch match;
                    if (std::regex_match(initExprStr, match, mallocPattern)) {
                        size = match[1].str();
                        size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*char\\s*\\)"), "1");
                        size = std::regex_replace(size, std::regex("sizeof\\s*\\(\\s*int\\s*\\)"), "1");
                    }
                    std::string textToReplace = varName + " = allocate_memory" + std::to_string(id) + "(" + size + ")";
                    TheRewriter.ReplaceText(BO->getSourceRange(), textToReplace);
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitUnaryOperator(clang::UnaryOperator *UO) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(UO->getBeginLoc())) {
        if (UO->getOpcode() == clang::UO_Deref) {
            clang::Expr *subExpr = UO->getSubExpr()->IgnoreParenImpCasts();

            if (auto *DRE = dyn_cast<clang::DeclRefExpr>(subExpr)) {
                //llvm::outs() << "Pointer Dereference Without Offset" << "\n";
                std::string varName = DRE->getNameInfo().getAsString();

                for (size_t i = 0; i < memorySets.size(); ++i) {
                    if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), varName) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), varName + ".addr") != memorySets[i].pointers.end()) {
                        std::string textToReplace = "memory" + std::to_string(i) + "[" + varName + "]";
                        TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                        break;
                    }
                }
            }

            else if (auto *unaryOp = dyn_cast<clang::UnaryOperator>(subExpr)) {
                //llvm::outs() << "Pointer Dereference With Offset" << "\n";
                //--, ++
                clang::Expr *basePointer = unaryOp->getSubExpr()->IgnoreParenImpCasts();
                clang::SourceRange basePointerRange = basePointer->getSourceRange();
                std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                for (size_t i = 0; i < memorySets.size(); ++i) {
                    if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                        clang::SourceRange subExprRange = subExpr->getSourceRange();
                        std::string subExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(subExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                        std::string textToReplace = "memory" + std::to_string(i) + "[" + subExprStr + "]";
                        TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                        break;
                    }
                }
            }


            else if (auto *binaryOp1 = dyn_cast<clang::BinaryOperator>(subExpr)) {
                //llvm::outs() << "Pointer Dereference With Offset" << "\n";
                //+, -, *, /
                clang::Expr *basePointer1 = binaryOp1->getLHS()->IgnoreParenImpCasts();

                if (auto *binaryOp2 = dyn_cast<clang::BinaryOperator>(basePointer1)) {
                    clang::Expr *basePointer2 = binaryOp2->getLHS()->IgnoreParenImpCasts();
                    clang::SourceRange basePointerRange = basePointer2->getSourceRange();
                    std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                            clang::SourceRange subExprRange = subExpr->getSourceRange();
                            std::string subExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(subExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                            std::string textToReplace = "memory" + std::to_string(i) + "[" + subExprStr + "]";
                            TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                            break;
                        }
                    }
                }

                else {
                    clang::SourceRange basePointerRange = basePointer1->getSourceRange();
                    std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                            clang::SourceRange subExprRange = subExpr->getSourceRange();
                            std::string subExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(subExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                            std::string textToReplace = "memory" + std::to_string(i) + "[" + subExprStr + "]";
                            TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                            break;
                        }
                    }
                }
            }

            else if (auto *CE = dyn_cast<clang::CStyleCastExpr>(subExpr)) {
                clang::Expr *basePointer1 = CE->getSubExpr()->IgnoreImpCasts();

                if (auto *unaryOp = dyn_cast<clang::UnaryOperator>(basePointer1)) {
                    clang::Expr *basePointer2 = unaryOp->getSubExpr()->IgnoreParenImpCasts();
                    clang::SourceRange basePointerRange = basePointer2->getSourceRange();
                    std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                            clang::SourceRange subExprRange = unaryOp->getSourceRange();
                            std::string subExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(subExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                            std::string textToReplace = "memory" + std::to_string(i) + "[" + subExprStr + "]";
                            TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                            break;
                        }
                    }
                }

                else {
                    clang::SourceRange basePointerRange = basePointer1->getSourceRange();
                    std::string basePointerStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(basePointerRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

                    for (size_t i = 0; i < memorySets.size(); ++i) {
                        if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), basePointerStr + ".addr") != memorySets[i].pointers.end()) {
                            std::string textToReplace = "memory" + std::to_string(i) + "[" + basePointerStr + "]";
                            TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                            break;
                        }
                    }
                }
            }
        }

        else if (UO->getOpcode() == clang::UO_AddrOf) {
            clang::Expr *subExpr = UO->getSubExpr()->IgnoreParenImpCasts();
            clang::SourceRange subExprRange = subExpr->getSourceRange();
            std::string subExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(subExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

            if (isa<clang::DeclRefExpr>(subExpr)) {
                //llvm::outs() << "Address Of a Variable (“&var”)" << "\n";
                std::string textToReplace = subExprStr + "_index";
                TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
            }

            else if (isa<clang::ArraySubscriptExpr>(subExpr)) {
                //llvm::outs() << "Address Of an Element Access (“&arr[i] or &ptr[i]”)" << "\n";
                size_t startBracket = subExprStr.find('[');
                size_t endBracket = subExprStr.find(']', startBracket);
                std::string arrayName = subExprStr.substr(0, startBracket);
                std::string arrayIndex = subExprStr.substr(startBracket + 1, endBracket - startBracket - 1);

                for (size_t i = 0; i < memorySets.size(); ++i) {
                    if (std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), arrayName) != memorySets[i].pointers.end() || std::find(memorySets[i].pointers.begin(), memorySets[i].pointers.end(), arrayName + ".addr") != memorySets[i].pointers.end()) {
                        std::string textToReplace = arrayName + " + " + arrayIndex;
                        TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                        break;
                    }
                    if (std::find(memorySets[i].pointees.begin(), memorySets[i].pointees.end(), arrayName) != memorySets[i].pointees.end()) {
                        std::string textToReplace = arrayName + "_index + " + arrayIndex;
                        TheRewriter.ReplaceText(UO->getSourceRange(), textToReplace);
                        break;
                    }
                }
            }
        }
    }
    return true;
}

bool CodeVisitorAndRewriter::VisitCStyleCastExpr(clang::CStyleCastExpr *CE) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(CE->getBeginLoc())) {
        if (CE->getTypeAsWritten()->isPointerType()) {
            clang::SourceRange castExprRange = CE->IgnoreImpCasts()->getSourceRange();
            std::string castExprStr = clang::Lexer::getSourceText(clang::CharSourceRange::getTokenRange(castExprRange), TheRewriter.getSourceMgr(), TheRewriter.getLangOpts()).str();

            clang::SourceLocation lineStartLoc = SM.translateLineCol(SM.getFileID(CE->getBeginLoc()), SM.getSpellingLineNumber(CE->getBeginLoc()), 1);
            clang::SourceLocation lineEndLoc = lineStartLoc;
            while (SM.getCharacterData(lineEndLoc)[0] != '\n' && SM.getCharacterData(lineEndLoc)[0] != '\0') {
                lineEndLoc = lineEndLoc.getLocWithOffset(1);
            }
            std::string lineText = std::string(SM.getCharacterData(lineStartLoc), SM.getCharacterData(lineEndLoc) - SM.getCharacterData(lineStartLoc));

            if (lineText.find("alloca") == std::string::npos && lineText.find("malloc") == std::string::npos && lineText.find("*" + castExprStr) == std::string::npos) {
                clang::Expr *subExpr = CE->getSubExpr()->IgnoreImpCasts();
                TheRewriter.RemoveText(clang::CharSourceRange::getCharRange(CE->getLParenLoc(), subExpr->getBeginLoc()));
            }
        }
    }
    return true;
}