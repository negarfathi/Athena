#include "../../include/pointer_visitor/pointer_visitor.h"

bool PointerVisitor::VisitFieldDecl(clang::FieldDecl *FD) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(FD->getBeginLoc())) {
        if (FD->getType()->isPointerType()) {
            //llvm::outs() << "Pointer Declaration as Structure Field" << "\n";
            PointsToSet set;
            set.pointer = FD->getNameAsString();
            set.dataType = FD->getType()->getPointeeType().getAsString();
            if (set.dataType.find("const ") == 0) {
                set.dataType.erase(0, 6);
            }
            pointsToSets.push_back(set);
        }
    }
    return true;
}

bool PointerVisitor::VisitVarDecl(clang::VarDecl *VD) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(VD->getBeginLoc())) {
        if (VD->getType()->isPointerType()) {
            if (VD->hasGlobalStorage() && !VD->isStaticLocal()) {
                //llvm::outs() << "Pointer Declaration as Global Variable" << "\n";
                PointsToSet set;
                set.pointer = VD->getNameAsString();
                set.dataType = VD->getType()->getPointeeType().getAsString();
                if (set.dataType.find("const ") == 0) {
                    set.dataType.erase(0, 6);
                }
                pointsToSets.push_back(set);
            }
            else if (VD->isLocalVarDecl()) {
                //llvm::outs() << "Pointer Declaration as Local Variable" << "\n";
                PointsToSet set;
                set.pointer = VD->getNameAsString();
                set.dataType = VD->getType()->getPointeeType().getAsString();
                if (set.dataType.find("const ") == 0) {
                    set.dataType.erase(0, 6);
                }
                pointsToSets.push_back(set);
            }
        }
    }
    return true;
}

bool PointerVisitor::VisitCallExpr(clang::CallExpr *CE) {
    clang::SourceManager &SM = TheRewriter.getSourceMgr();
    if (SM.isInMainFile(CE->getBeginLoc())) {
        clang::FunctionDecl *FD = CE->getDirectCallee();
        if (SM.isInMainFile(FD->getBeginLoc())) {
            for (unsigned i = 0; i < CE->getNumArgs(); ++i) {
                clang::Expr *arg = CE->getArg(i)->IgnoreImpCasts();
                if (arg->getType()->isPointerType()) {
                    //llvm::outs() << "Pointer Declaration as Function Parameter" << "\n";
                    //llvm::outs() << "Array Declaration as Function Parameter to which Argument Passed is Pointer" << "\n";
                    PointsToSet set;
                    set.pointer = FD->getParamDecl(i)->getNameAsString() + ".addr";
                    set.dataType = arg->getType()->getPointeeType().getAsString();
                    if (set.dataType.find("const ") == 0) {
                        set.dataType.erase(0, 6);
                    }
                    pointsToSets.push_back(set);
                }
                else if (auto *SL = llvm::dyn_cast<clang::StringLiteral>(arg)) {
                    if (SL->getString() == "\n") {
                        //llvm::outs() << "Pointer Declaration as Function Parameter to which Argument Passed is “\n”" << "\n";
                        //llvm::outs() << "Array Declaration as Function Parameter to which Argument Passed is “\n”" << "\n";
                        PointsToSet set;
                        set.pointer = FD->getParamDecl(i)->getNameAsString() + ".addr";
                        set.dataType = FD->getParamDecl(i)->getType()->getPointeeType().getAsString();
                        if (set.dataType.find("const ") == 0) {
                            set.dataType.erase(0, 6);
                        }
                        pointsToSets.push_back(set);
                    }
                }
            }
        }
    }
    return true;
}