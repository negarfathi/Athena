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

int main() {
    int x = allocate_memory1(1);
    int debug = allocate_memory0(1);
    memory1[x] = __VERIFIER_nondet_int();
    memory0[debug] = 0;
    
    while (memory1[x] < 255) {
        if (memory1[x] % 2 != 0) {
            (memory1[x])--;
        } else {
            memory1[x] += 2;
        }
        if (memory0[debug] != 0) {
            memory1[x] = 0;
        }
    }
    return 0;
}