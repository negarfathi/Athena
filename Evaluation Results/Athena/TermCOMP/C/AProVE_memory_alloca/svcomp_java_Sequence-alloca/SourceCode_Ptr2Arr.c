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

int main()
{
    int i = allocate_memory2(1);
    int j = allocate_memory1(1);
    int c = allocate_memory0(1);
    memory0[c] = 0;
    for (memory2[i] = 0; memory2[i] < 100; (memory2[i])++) memory0[c] = memory0[c] + 1;
    for (memory1[j] = 5; memory1[j] < 21; memory1[j] += 3) memory0[c] = memory0[c] + 1;
    return memory0[c];
}