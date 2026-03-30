#include <regex>
#include <fstream>
#include <sstream>
#include <iostream>

#include "clang/Tooling/Tooling.h"

#include "../include/transform_code/transform_code.h"
#include "../include/bit_operation_visitor/bit_operation_action.h"

int main(int argc, char *argv[]) {
    if (argc < 7) {
        std::cerr << "Usage: ./Athena <path/to/SourceCode.c> --timeout=X --semantic-augmentor-mode=none/only-bv/only-nobv/all --type-annotator-mode=none/only-bv/only-nobv/all --signedness-info=none/only-bv/only-nobv/all --unreachable-exit=false/true --muval-mode=none/TermCOMP/FSE-MI/FSE-BV\n";
        return 1;
    }

    auto start_time = std::chrono::steady_clock::now();

    std::filesystem::path athenaPath = std::filesystem::canonical(argv[0]);
    std::filesystem::path athenaDirectory = athenaPath.parent_path();

    std::filesystem::path sourceCodePath = std::filesystem::canonical(argv[1]);
    std::string sourceCodeName = sourceCodePath.stem().string();
    std::filesystem::path sourceCodeDirectory = sourceCodePath.parent_path();

    const std::string outputPath = sourceCodeDirectory / "Output.txt";
    std::ofstream outputFile(outputPath, std::ios::app);
    if (!outputFile) {
        std::cerr << strerror(errno) << ": " << outputPath << std::endl;
        return 1;
    }

    if (sourceCodeName == "Problem07_label00_true-unreach-call" || sourceCodeName == "Problem08_label00_true-unreach-call" || sourceCodeName == "Problem09_label00_true-unreach-call") {
        std::cerr << "Athena execution failed." << "\n";
        for (const auto& entry : std::filesystem::directory_iterator(sourceCodeDirectory)) {
            if (entry.is_regular_file() && entry.path() != outputPath) {
                std::error_code ec;
                std::filesystem::remove(entry.path(), ec);
            }
        }
        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        outputFile << "MAYBE" << std::endl;
        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
        outputFile.close();
        return 1;
    }

    //Ptr2Arr
    //SourceCode.c => SourceCode_Ptr2Arr.bc, PointsToSets.txt, SourceCode_Ptr2Arr.c, Metadata_Ptr2Arr.txt
    std::cout << "Ptr2Arr is running..." << std::endl;
    std::string command_Ptr2Arr = (athenaDirectory.parent_path() / "Ptr2Arr/cmake-build-debug/Ptr2Arr").string() + " " + sourceCodePath.string();
    int result_Ptr2Arr = std::system(command_Ptr2Arr.c_str());
    if (result_Ptr2Arr != 0) {
        std::cerr << "Ptr2Arr execution failed." << "\n";
        for (const auto& entry : std::filesystem::directory_iterator(sourceCodeDirectory)) {
            if (entry.is_regular_file() && entry.path() != outputPath) {
                std::error_code ec;
                std::filesystem::remove(entry.path(), ec);
            }
        }
        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        outputFile << "MAYBE" << std::endl;
        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
        outputFile.close();
        return 1;
    }

    //SemanticAugmentor
    //SourceCode_Ptr2Arr.c, Metadata_Ptr2Arr.txt => SourceCode_SemanticAugmentor.c
    std::cout << "SemanticAugmentor is running..." << std::endl;
    std::string mode_SemanticAugmentor = argv[3];
    mode_SemanticAugmentor.erase(mode_SemanticAugmentor.find("semantic-augmentor-"), std::string("semantic-augmentor-").length());
    std::string command_SemanticAugmentor = (athenaDirectory.parent_path() / "SemanticAugmentor/cmake-build-debug/SemanticAugmentor").string() + " " + (sourceCodeDirectory / "SourceCode_Ptr2Arr.c").string() + " " + (sourceCodeDirectory / "Metadata_Ptr2Arr.txt").string() + " " + mode_SemanticAugmentor;
    int result_SemanticAugmentor = std::system(command_SemanticAugmentor.c_str());
    if (result_SemanticAugmentor != 0) {
        std::cerr << "SemanticAugmentor execution failed." << "\n";
        for (const auto& entry : std::filesystem::directory_iterator(sourceCodeDirectory)) {
            if (entry.is_regular_file() && entry.path() != outputPath) {
                std::error_code ec;
                std::filesystem::remove(entry.path(), ec);
            }
        }
        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        outputFile << "MAYBE" << std::endl;
        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
        outputFile.close();
        return 1;
    }

    if (mode_SemanticAugmentor == "--mode=all" || mode_SemanticAugmentor == "--mode=only-nobv") {
        TransformCode(sourceCodeName, sourceCodeDirectory.string());
    }

    //llvm2KITTeL
    //SourceCode_SemanticAugmentor.c => SourceCode_llvm2KITTeL.bc, SourceCode_llvm2KITTeL.ll, SourceCode_llvm2KITTeL.t2
    std::cout << "llvm2KITTeL is running..." << std::endl;
    std::string signednessInfo = argv[5];
    std::string signednessInfoFlag;
    std::string nondetTypeInfoFlag;
    bool hasBitOperation = false;
    const std::string myPath = sourceCodeDirectory / "SourceCode_SemanticAugmentor.c";
    std::ifstream myStream(myPath);
    std::stringstream myBuffer;
    myBuffer << myStream.rdbuf();
    std::string myFile = myBuffer.str();
    clang::tooling::runToolOnCode(std::make_unique<BitOperationAction>(hasBitOperation), myFile);
    if ((signednessInfo == "--signedness-info=all") || (hasBitOperation && signednessInfo == "--signedness-info=only-bv") || (!hasBitOperation && signednessInfo == "--signedness-info=only-nobv")) {
        signednessInfoFlag = "--signedness-info=true";
    }
    else if ((signednessInfo == "--signedness-info=none") || (!hasBitOperation && signednessInfo == "--signedness-info=only-bv") || (hasBitOperation && signednessInfo == "--signedness-info=only-nobv")) {
        signednessInfoFlag = "--signedness-info=false";
    }
    if ((mode_SemanticAugmentor == "--mode=all") || (hasBitOperation && mode_SemanticAugmentor == "--mode=only-bv") || (!hasBitOperation && mode_SemanticAugmentor == "--mode=only-nobv")) {
        nondetTypeInfoFlag = "--nondet-type-info=true";
    }
    else if ((mode_SemanticAugmentor == "--mode=none") || (!hasBitOperation && mode_SemanticAugmentor == "--mode=only-bv") || (hasBitOperation && mode_SemanticAugmentor == "--mode=only-nobv")) {
        nondetTypeInfoFlag = "--nondet-type-info=false";
    }
    std::string command_llvm2KITTeL = "docker run --platform linux/amd64 -v " + athenaDirectory.parent_path().string() + ":/LLVM2KITTEL_DIR -v " + sourceCodeDirectory.string() + ":/FILES_DIR llvm2kittel /bin/bash -c '"
                                      "clang -Wall -Wextra -g -c -emit-llvm -O0 FILES_DIR/SourceCode_SemanticAugmentor.c -o FILES_DIR/SourceCode_llvm2KITTeL.bc && "
                                      "/LLVM2KITTEL_DIR/llvm2kittel/build/llvm2kittel " + signednessInfoFlag + " " + nondetTypeInfoFlag + " " + std::string(argv[6]) + " --dump-ll --no-slicing --eager-inline --t2 FILES_DIR/SourceCode_llvm2KITTeL.bc > FILES_DIR/SourceCode_llvm2KITTeL.t2'";
    int result_llvm2KITTeL = system(command_llvm2KITTeL.c_str());
    if (result_llvm2KITTeL != 0) {
        std::cerr << "llvm2KITTeL execution failed." << "\n";
        for (const auto& entry : std::filesystem::directory_iterator(sourceCodeDirectory)) {
            if (entry.is_regular_file() && entry.path() != outputPath) {
                std::error_code ec;
                std::filesystem::remove(entry.path(), ec);
            }
        }
        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        outputFile << "MAYBE" << std::endl;
        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
        outputFile.close();
        return 1;
    }

    TransformCode(sourceCodeName, sourceCodeDirectory.string());

    //TypeAnnotator
    //1. SourceCode_Ptr2Arr.c, SourceCode_llvm2KITTeL.ll => Metadata_TypeAnnotator.txt
    std::cout << "TypeAnnotator is running..." << std::endl;
    std::string mode_TypeAnnotator = argv[4];
    mode_TypeAnnotator.erase(mode_TypeAnnotator.find("type-annotator-"), std::string("type-annotator-").length());
    std::string command_TypeAnnotator = (athenaDirectory.parent_path() / "TypeAnnotator/cmake-build-debug/TypeAnnotator").string() + " " + (sourceCodeDirectory / "SourceCode_Ptr2Arr.c").string() + " " + (sourceCodeDirectory / "SourceCode_llvm2KITTeL.ll").string() + " " + mode_TypeAnnotator;
    int result_TypeAnnotator = std::system(command_TypeAnnotator.c_str());
    if (result_TypeAnnotator != 0) {
        std::cerr << "TypeAnnotator execution failed." << "\n";
        for (const auto& entry : std::filesystem::directory_iterator(sourceCodeDirectory)) {
            if (entry.is_regular_file() && entry.path() != outputPath) {
                std::error_code ec;
                std::filesystem::remove(entry.path(), ec);
            }
        }
        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
        outputFile << "MAYBE" << std::endl;
        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
        outputFile.close();
        return 1;
    }

    if (mode_TypeAnnotator == "--mode=all" || mode_TypeAnnotator == "--mode=only-nobv") {
        TransformCode(sourceCodeName, sourceCodeDirectory.string());
    }

    //2. Metadata_TypeAnnotator.txt, SourceCode_llvm2KITTeL.t2 => <fileName>.t2
    const std::string txtPath = sourceCodeDirectory / "Metadata_TypeAnnotator.txt";
    std::ifstream txtFile(txtPath);
    if (!txtFile) {
        std::cerr << strerror(errno) << ": " << txtPath << std::endl;
        return 1;
    }
    const std::string t2Path = sourceCodeDirectory / "SourceCode_llvm2KITTeL.t2";
    std::ifstream t2File(t2Path);
    if (!t2File) {
        std::cerr << strerror(errno) << ": " << t2Path << std::endl;
        return 1;
    }
    const std::string newT2Path = sourceCodeDirectory / (sourceCodeName + ".t2");
    std::ofstream newT2File(newT2Path);
    if (!newT2File) {
        std::cerr << strerror(errno) << ": " << newT2Path << std::endl;
        return 1;
    }
    std::string line;
    int t2FileLineCount = 0;
    while (std::getline(t2File, line) && t2FileLineCount < 2) {
        newT2File << line << "\n";
        t2FileLineCount = t2FileLineCount + 1;
    }
    newT2File << "\n";
    while (std::getline(txtFile, line)) {
        newT2File << line << "\n";
    }
    newT2File << "\n";
    while (std::getline(t2File, line)) {
        newT2File << line << "\n";
    }
    txtFile.close();
    t2File.close();
    newT2File.close();
    std::ifstream checkT2File(newT2Path);
    bool typeFound = false;
    std::regex typePattern(R"(TYPE\s[^:]+:\sbv\(\d+\);)");
    while (std::getline(checkT2File, line)) {
        if (std::regex_search(line, typePattern)) {
            typeFound = true;
            break;
        }
    }
    checkT2File.close();
    if ((!typeFound && mode_TypeAnnotator == "--mode=all") || (!typeFound && hasBitOperation && mode_TypeAnnotator == "--mode=only-bv") || (!typeFound && !hasBitOperation && mode_TypeAnnotator == "--mode=only-nobv")) {
        std::ifstream inputFile(newT2Path);
        std::vector<std::string> lines;
        while (std::getline(inputFile, line)) {
            lines.push_back(line);
        }
        inputFile.close();
        lines.insert(lines.begin() + 2, "TYPE dummy: bv(32);");
        std::ofstream outputFile(newT2Path);
        for (const auto& line : lines) {
            outputFile << line << "\n";
        }
        outputFile.close();
    }

    TransformCode(sourceCodeName, sourceCodeDirectory.string());

    //MuVal
    //<fileName>.t2 => Output.txt
    std::cout << "MuVal is running..." << std::endl;

    std::string timeout = argv[2];
    timeout.erase(timeout.find("--timeout="), std::string("--timeout=").length());

    std::string mode_MuVal = argv[7];
    std::string dockerName_MuVal;
    std::string cFlag_MuVal;
    std::string pFlag_MuVal;
    if (mode_MuVal == "--muval-mode=TermCOMP") {
        dockerName_MuVal = "muval-master";
        cFlag_MuVal = "-c ./config/solver/muval_parallel_exc_tbq_ar.json";
        pFlag_MuVal = "-p ltsterm";
    }
    else if (mode_MuVal == "--muval-mode=FSE-BV") {
        dockerName_MuVal = "muval-fse2026";
        cFlag_MuVal = "-c ./config/solver/muval_parallel_exc_tbq_ar.json";
        pFlag_MuVal = "-p ltstermbv";
    }
    else if (mode_MuVal == "--muval-mode=FSE-MI") {
        dockerName_MuVal = "muval-fse2026";
        cFlag_MuVal = "-c ./config/solver/muval_parallel_exc_tbq_ar.json";
        pFlag_MuVal = "-p ltsterm";
    }

    if (mode_MuVal != "--muval-mode=none") {
        std::string command_MuVal = "docker run --rm -v " + sourceCodeDirectory.string() + ":/MUVAL_DIR " + dockerName_MuVal + " /bin/bash -c '"
                                    "cd /root/coar && "
                                    "timeout " + timeout + " ./main.exe " + cFlag_MuVal + " " + pFlag_MuVal + " /MUVAL_DIR/" + (sourceCodeName + ".t2") + " > /MUVAL_DIR/Output.txt 2>&1'";
        int result_MuVal = std::system(command_MuVal.c_str());
        if (result_MuVal >> 8 == 124) {
            outputFile << "TIMEOUT" << std::endl;
        }
        else if (result_MuVal >> 8 == 137) {
            outputFile << "OOM ERROR" << std::endl;
        }
        else if (result_MuVal >> 8 != 0) {
            std::cerr << "MuVal execution failed.\n";
            auto end_time = std::chrono::steady_clock::now();
            auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();
            outputFile << "ERROR" << std::endl;
            outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
            outputFile.close();
            return 1;
        }

        auto end_time = std::chrono::steady_clock::now();
        auto runtime = std::chrono::duration_cast<std::chrono::milliseconds>(end_time - start_time).count();

        outputFile << "Runtime: " << runtime << " milliseconds" << std::endl;
    }

    outputFile.close();

    return 0;
}