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

int main()
{
    int i = allocate_memory1(1);
    int c = allocate_memory0(1);
    memory1[i] = 0;
    memory0[c] = 0;
    while (memory1[i] < 20) {
        (memory1[i])++;
        if (memory1[i] <= 10) continue;
        (memory0[c])++;
    }
    return memory0[c];
}