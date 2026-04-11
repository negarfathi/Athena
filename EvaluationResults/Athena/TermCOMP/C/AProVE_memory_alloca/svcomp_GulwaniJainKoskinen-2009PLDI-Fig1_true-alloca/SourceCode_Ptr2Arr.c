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
    int id = allocate_memory2(1);
    int maxId = allocate_memory1(1);
    memory2[id] = __VERIFIER_nondet_int();
    memory1[maxId] = __VERIFIER_nondet_int();
    
    if (0 <= memory2[id] && memory2[id] < memory1[maxId]) {
        int tmp = allocate_memory0(1);
        memory0[tmp] = memory2[id] + 1;
        while (memory0[tmp] != memory2[id] && __VERIFIER_nondet_int()) {
            if (memory0[tmp] <= memory1[maxId]) {
                memory0[tmp] = memory0[tmp] + 1;
            } else {
                memory0[tmp] = 0;
            }
        }
    }
    return 0;
}