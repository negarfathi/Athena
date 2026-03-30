#include "../../include/memory_analysis/memory_analysis.h"

void MemoryAnalysis::ConstructMemorySets() {
    while (!pointsToSets.empty()) {
        PointsToSet currentSet = pointsToSets.back();
        pointsToSets.pop_back();
        bool isMerged = false;
        for (auto& memorySet : memorySets) {
            if (HasIntersection(memorySet.pointees, currentSet.pointees)) {
                Merge(memorySet.pointers, {currentSet.pointer});
                if (memorySet.dataType.empty()) {
                    memorySet.dataType = currentSet.dataType;
                }
                Merge(memorySet.pointees, currentSet.pointees);
                isMerged = true;
                break;
            }
        }
        if (!isMerged) {
            MemorySet newSet;
            Merge(newSet.pointers, {currentSet.pointer});
            newSet.dataType = currentSet.dataType;
            Merge(newSet.pointees, currentSet.pointees);
            memorySets.push_back(newSet);
        }
    }
}

bool MemoryAnalysis::HasIntersection(const std::vector<std::string>& set1, const std::vector<std::string>& set2) {
    for (const auto& item : set1) {
        if (std::find(set2.begin(), set2.end(), item) != set2.end()) {
            return true;
        }
    }
    return false;
}

void MemoryAnalysis::Merge(std::vector<std::string>& target, const std::vector<std::string>& source) {
    for (const auto& item : source) {
        if (std::find(target.begin(), target.end(), item) == target.end()) {
            target.push_back(item);
        }
    }
}