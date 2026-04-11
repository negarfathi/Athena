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
    int x1 = allocate_memory1(1);
    int x2 = allocate_memory0(1);
    while (memory1[x1] <= 10) {
        memory0[x2] = 1000;
        while (memory0[x2] > 1) {
            memory0[x2] = memory0[x2] - 1;
        }
        memory1[x1] = memory1[x1] + 1;
    }
}