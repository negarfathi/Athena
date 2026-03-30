#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

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
    memory2[x] = __VERIFIER_nondet_int();
    memory1[y] = __VERIFIER_nondet_int();
    memory0[z] = __VERIFIER_nondet_int();
    
    while (memory2[x] > 0) {
        memory2[x] = memory2[x] + memory1[y];
        memory1[y] = memory0[z];
        memory0[z] = -(memory0[z]) - 1;
    }
}