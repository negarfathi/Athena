#include "../../include/points_to_analysis/points_to_analysis.h"

void PointsToAnalysis::ConstructPointsToSets() {
    std::string pointsToSetsFile = pointsToSetsBuffer.str();

    std::smatch pointerMatches;
    std::smatch pointeeMatches;
    std::regex pointeePattern_null = std::regex("\\s*->\\s*null .+?");
    std::regex pointeePattern_newLine = std::regex("\\s*->\\s*(@..+?) = private unnamed_addr constant \\[.+? x .+?\\] .+?, align .+? .+?");
    std::regex pointeePattern_variable = std::regex("\\s*->\\s*%(.+?) = alloca .+?, align .+? .+?");
    std::regex pointeePattern_array = std::regex("\\s*->\\s*%(.+?) = alloca \\[.+? x .+?\\], align .+? .+?");
    std::regex pointeePattern_alloca = std::regex("\\s*->\\s*%(.+?) = alloca .+?, .+? .+?, align .+? .+?");
    std::regex pointeePattern_malloc = std::regex("\\s*->\\s*%(.+?) = call .+?\\* @malloc\\(.+? .+?\\) .+?");

    for (int i = 0; i < pointsToSets.size(); i++) {
        std::regex pointerPattern = std::regex("NODE\\s*.+?:\\s*%.+? = load .+?\\*, .+?\\*\\* %" + pointsToSets[i].pointer + ", align .+? \\(points-to size: .+?\\)\\n");
        while (std::regex_search(pointsToSetsFile, pointerMatches, pointerPattern)) {
            if (pointerMatches.size() > 0) {
                std::string remainingFile = pointerMatches.suffix().str();
                std::istringstream stream(remainingFile);
                std::string line;
                while (std::getline(stream, line)) {
                    if (std::regex_search(line, pointeeMatches, pointeePattern_malloc)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                        }
                    }
                    else if (std::regex_search(line, pointeeMatches, pointeePattern_alloca)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            if ((sourceCodeName == "Missing_Iterator_Update_3_NT" || sourceCodeName == "Missing_Iterator_Update_3_T") && pointeeMatches.str(1) == "vla") {
                                pointsToSets[i].pointees.push_back("argv1");
                            }
                            else {
                                pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                            }
                        }
                    }
                    else if (std::regex_search(line, pointeeMatches, pointeePattern_array)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                        }
                    }
                    else if (std::regex_search(line, pointeeMatches, pointeePattern_variable)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                        }
                    }
                    else if (std::regex_search(line, pointeeMatches, pointeePattern_newLine)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                        }
                    }
                    else if (std::regex_search(line, pointeeMatches, pointeePattern_null)) {
                        if (std::find(pointsToSets[i].pointees.begin(), pointsToSets[i].pointees.end(), pointeeMatches.str(1)) == pointsToSets[i].pointees.end()) {
                            pointsToSets[i].pointees.push_back(pointeeMatches.str(1));
                        }
                    }
                    else {
                        break;
                    }
                }
            }
            pointsToSetsFile = pointerMatches.suffix().str();
        }
        pointsToSetsFile = pointsToSetsBuffer.str();
    }
}