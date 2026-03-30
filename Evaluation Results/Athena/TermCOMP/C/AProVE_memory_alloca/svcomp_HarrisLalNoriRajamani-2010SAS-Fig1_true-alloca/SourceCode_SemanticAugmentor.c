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

#define MEMORY4_SIZE 100000
int memory4[MEMORY4_SIZE];
int memory4_freeIndex = 1;
int allocate_memory4(int size) {
   int allocatedIndex = memory4_freeIndex;
   memory4_freeIndex = memory4_freeIndex + size;
   return allocatedIndex;
}

void f(int d) {
    int d_ref = allocate_memory4(1);
    int x = allocate_memory3(1);
    int y = allocate_memory2(1);
    int k = allocate_memory1(1);
    int z = allocate_memory0(1);
    memory4[d_ref] = d;
    memory3[x] = 1;
    memory2[y] = 1;
    memory1[k] = 1;
    memory0[z] = 1;
    
    if (memory1[k] > 1073741823) {
        return;
    }
    L1:
    while (memory0[z] < memory1[k]) {
        memory0[z] = 2 * (memory0[z]);
    }
    L2:
    while (memory3[x] > 0 && memory2[y] > 0) {
        if (__VERIFIER_nondet_int()) {
            P1:
            memory3[x] = memory3[x] - memory4[d_ref];
            memory2[y] = __VERIFIER_nondet_int();
            memory0[z] = memory0[z] - 1;
        } else {
            memory2[y] = memory2[y] - memory4[d_ref];
        }
    }
}

int main() {
    if (__VERIFIER_nondet_int()) {
        f(1);
    } else {
        f(2);
    }
}