#include <stdlib.h>

#define MEMORY0_SIZE 100000
int memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int main() {
    int x = allocate_memory0(1);
    while (memory0[x] <= 10) {
        if (memory0[x] > 6) {
            memory0[x] = memory0[x] + 2;
        }
    }
}