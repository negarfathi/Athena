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
    int x = allocate_memory1(1);
    int y = allocate_memory0(1);
    memory0[y] = 1;
    while (memory1[x] > 0) {
        memory1[x] = memory1[x] - memory0[y];
        memory0[y] = memory0[y] + 1;
    }
    return 0;
}