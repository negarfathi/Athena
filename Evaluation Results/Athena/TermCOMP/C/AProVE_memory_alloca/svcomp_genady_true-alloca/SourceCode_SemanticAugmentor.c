#include <stdlib.h>

#define MEMORY0_SIZE 100000
int memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY1_SIZE 100000
int memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

int main() {
    int i = allocate_memory1(1);
    int j = allocate_memory0(1);
    memory0[j] = 1;
    for (memory1[i] = 10000; memory1[i] - memory0[j] >= 1; (memory1[i])--) {
        (memory0[j])++;
    }
}