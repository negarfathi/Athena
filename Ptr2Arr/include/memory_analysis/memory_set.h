#ifndef MEMORY_SET_H
#define MEMORY_SET_H

struct MemorySet {
    std::vector<std::string> pointers;
    std::string dataType;
    std::vector<std::string> pointees;
};

#endif //MEMORY_SET_H