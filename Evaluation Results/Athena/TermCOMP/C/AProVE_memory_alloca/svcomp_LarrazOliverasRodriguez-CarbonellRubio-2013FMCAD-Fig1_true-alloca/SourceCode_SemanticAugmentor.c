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

#define MEMORY2_SIZE 100000
int memory2[MEMORY2_SIZE];
int memory2_freeIndex = 1;
int allocate_memory2(int size) {
   int allocatedIndex = memory2_freeIndex;
   memory2_freeIndex = memory2_freeIndex + size;
   return allocatedIndex;
}

int main() {
    int x = allocate_memory2(1);
    int y = allocate_memory1(1);
    int z = allocate_memory0(1);
    // continue only for values where there won't be any overflow or underflow
    // on systems where sizeof(int)=4 holds.
    if (memory2[x] > 10000 || memory2[x] < -10000 || memory1[y] > 10000 || memory0[z] > 10000) {
        return 0;
    }
    while (memory1[y] >= 1) {
        (memory2[x])--;
        while (memory1[y] < memory0[z]) {
            (memory2[x])++;
            (memory0[z])--;
        }
        memory1[y] = memory2[x] + memory1[y];
    }
    return 0;
}