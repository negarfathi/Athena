#ifndef POINTS_TO_SET_H
#define POINTS_TO_SET_H

struct PointsToSet {
    std::string pointer;
    std::string dataType;
    std::vector<std::string> pointees;
};

#endif //POINTS_TO_SET_H