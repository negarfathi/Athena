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

int foo(void) {
    int y = allocate_memory1(1);
    if (__VERIFIER_nondet_int()) {
        if (__VERIFIER_nondet_int()) {
            if (__VERIFIER_nondet_int()) {
                memory1[y] = 0;
            } else {
                memory1[y] = 1;
            }
        } else {
            if (__VERIFIER_nondet_int()) {
                memory1[y] = 2;
            } else {
                memory1[y] = 3;
            }
        }
    } else {
        if (__VERIFIER_nondet_int()) {
            if (__VERIFIER_nondet_int()) {
                memory1[y] = 4;
            } else {
                memory1[y] = 5;
            }
        } else {
            if (__VERIFIER_nondet_int()) {
                memory1[y] = 6;
            } else {
                memory1[y] = 7;
            }
        }
    } return memory1[y];
}

int main() {
    int d = allocate_memory1(1);
    int x = allocate_memory0(1);
    memory1[d] = 1;
    
    if (__VERIFIER_nondet_int()) {
        memory1[d] = memory1[d] - 1;
    }
    
    if (__VERIFIER_nondet_int()) {
        foo();
    }
    if (__VERIFIER_nondet_int()) {
        foo();
    }
    if (__VERIFIER_nondet_int()) {
        foo();
    }
    if (__VERIFIER_nondet_int()) {
        foo();
    }
    
    // I think there is a typo in the paper and the following
    // decrement can be omitted.
    if (__VERIFIER_nondet_int()) {
        memory1[d] = memory1[d] - 1;
    }
    
    while (memory0[x] > 0) {
        memory0[x] = memory0[x] - memory1[d];
    }
    return 0;
}