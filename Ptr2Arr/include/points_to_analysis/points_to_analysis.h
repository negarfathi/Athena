#ifndef POINTS_TO_ANALYSIS_H
#define POINTS_TO_ANALYSIS_H

#include <regex>
#include <fstream>
#include <sstream>
#include <iostream>

#include "../file_writer/info.h"
#include "points_to_set.h"

class PointsToAnalysis {
public:
    explicit PointsToAnalysis(std::stringstream &pointsToSetsBuffer, std::vector<PointsToSet> &pointsToSets) : pointsToSetsBuffer(pointsToSetsBuffer), pointsToSets(pointsToSets) {}

    void ConstructPointsToSets();

private:
    std::stringstream &pointsToSetsBuffer;
    std::vector<PointsToSet> &pointsToSets;
};

#endif //POINTS_TO_ANALYSIS_H