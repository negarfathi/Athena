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

#define MEMORY3_SIZE 100000
int memory3[MEMORY3_SIZE];
int memory3_freeIndex = 1;
int allocate_memory3(int size) {
   int allocatedIndex = memory3_freeIndex;
   memory3_freeIndex = memory3_freeIndex + size;
   return allocatedIndex;
}

int subxy(int x, int y) {
    int x_ref = allocate_memory3(1);
    int y_ref = allocate_memory2(1);
    int z = allocate_memory1(1);
    int i = allocate_memory0(1);
    memory3[x_ref] = x;
    memory2[y_ref] = y;
    memory1[z] = 0;
    memory0[i] = memory3[x_ref];
    if (memory2[y_ref] <= 0 || memory3[x_ref] <= 0) {
        return 0;
    }
    while (memory0[i] > 0) {
        (memory0[i])--;
        (memory1[z])++;
    }
    while (memory0[i] < memory2[y_ref]) {
        (memory0[i])++;
        (memory1[z])--;
    }
    return memory1[z];
}

int main() {
    int x = __VERIFIER_nondet_int();
    int y = __VERIFIER_nondet_int();
    subxy(x,y);
    return 0;
}