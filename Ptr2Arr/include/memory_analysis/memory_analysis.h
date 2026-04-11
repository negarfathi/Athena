#ifndef MEMORY_ANALYSIS_H
#define MEMORY_ANALYSIS_H

#include <regex>
#include <fstream>
#include <sstream>
#include <iostream>

#include "../points_to_analysis/points_to_set.h"
#include "memory_set.h"

class MemoryAnalysis {
public:
    explicit MemoryAnalysis(const std::vector<PointsToSet> &pointsToSets, std::vector<MemorySet> &memorySets) : pointsToSets(pointsToSets), memorySets(memorySets) {}

    void ConstructMemorySets();
    bool HasIntersection(const std::vector<std::string>& set1, const std::vector<std::string>& set2);
    void Merge(std::vector<std::string>& target, const std::vector<std::string>& source);

private:
    std::vector<PointsToSet> pointsToSets;
    std::vector<MemorySet> &memorySets;
};

#endif //MEMORY_ANALYSIS_H