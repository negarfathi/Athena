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

int gcd(int y1, int y2) {
    int y1_ref = allocate_memory1(1);
    int y2_ref = allocate_memory0(1);
    memory1[y1_ref] = y1;
    memory0[y2_ref] = y2;
    
    while (memory1[y1_ref] != memory0[y2_ref]) {
        if (memory1[y1_ref] > memory0[y2_ref]) {
            memory1[y1_ref] = memory1[y1_ref] - memory0[y2_ref];
        } else {
            memory0[y2_ref] = memory0[y2_ref] - memory1[y1_ref];
        }
    }
    return memory1[y1_ref];
}

int main() {
    int y1 = __VERIFIER_nondet_int();
    int y2 = __VERIFIER_nondet_int();
    if (y1 >= 0 && y2 >= 0) {
        gcd(y1, y2);
    }
    return 0;
}