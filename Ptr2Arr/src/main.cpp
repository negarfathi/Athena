#include "clang/Tooling/Tooling.h"

#include "../include/pointer_visitor/pointer_action.h"
#include "../include/points_to_analysis/points_to_analysis.h"
#include "../include/memory_analysis/memory_analysis.h"
#include "../include/code_visitor_and_rewriter/code_action.h"
#include "../include/bit_expression_visitor_and_rewriter/bit_expression_action.h"

int main(int argc, char *argv[]) {
    if (argc < 2) {
        std::cerr << "Usage: ./Ptr2Arr <path/to/SourceCode.c>\n";
        return 1;
    }

    std::filesystem::path sourceCodePath = std::filesystem::canonical(argv[1]);
    std::ifstream sourceCodeStream(sourceCodePath);
    if (!sourceCodeStream) {
        std::cerr << strerror(errno) << ": " << sourceCodePath << std::endl;
        return 1;
    }

    sourceCodeName = sourceCodePath.stem().string();
    sourceCodeDirectory = sourceCodePath.parent_path();

    WriteToFile("");

    std::ifstream newSourceCodeStream(sourceCodePath);
    std::stringstream sourceCodeBuffer;
    sourceCodeBuffer << newSourceCodeStream.rdbuf();
    std::string sourceCodeFile = sourceCodeBuffer.str();

    std::string command_DG = "docker run --platform linux/amd64 -v " + sourceCodeDirectory.string() + ":/FILES_DIR dg -c '"
                             "clang -c -emit-llvm -fno-discard-value-names FILES_DIR/" + sourceCodeName + ".c -o FILES_DIR/SourceCode_Ptr2Arr.bc && "
                             "opt/dg/tools/llvm-pta-dump -pta fs FILES_DIR/SourceCode_Ptr2Arr.bc > FILES_DIR/PointsToSets.txt'";
    int result_DG = system(command_DG.c_str());
    if (result_DG != 0) {
        std::cerr << "DG execution failed." << "\n";
        return 1;
    }

    const std::string pointsToSetsPath = sourceCodeDirectory / "PointsToSets.txt";
    std::ifstream pointsToSetsStream(pointsToSetsPath);
    std::stringstream pointsToSetsBuffer;
    pointsToSetsBuffer << pointsToSetsStream.rdbuf();

    std::vector<PointsToSet> pointsToSets;
    clang::tooling::runToolOnCode(std::make_unique<PointerAction>(pointsToSets), sourceCodeFile);
    PointsToAnalysis pointsToAnalysis(pointsToSetsBuffer, pointsToSets);
    pointsToAnalysis.ConstructPointsToSets();

    std::vector<MemorySet> memorySets;
    MemoryAnalysis memoryAnalysis(pointsToSets, memorySets);
    memoryAnalysis.ConstructMemorySets();

    clang::tooling::runToolOnCode(std::make_unique<CodeAction>(memorySets), sourceCodeFile);

    const std::string outPath = sourceCodeDirectory / "SourceCode_Ptr2Arr.c";
    std::ifstream outStream(outPath);
    std::stringstream outBuffer;
    outBuffer << outStream.rdbuf();
    std::string outFile = outBuffer.str();
    clang::tooling::runToolOnCode(std::make_unique<BitExpressionAction>(), outFile);

    return 0;
}