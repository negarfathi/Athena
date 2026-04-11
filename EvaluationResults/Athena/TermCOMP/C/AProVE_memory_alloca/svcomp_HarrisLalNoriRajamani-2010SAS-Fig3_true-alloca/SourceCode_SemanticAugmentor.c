#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

int x;

#define MEMORY0_SIZE 100000
int memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int foo(void) {
    (memory0[x])--;
}

int main() {
    x = allocate_memory0(1);
    memory0[x] = __VERIFIER_nondet_int();
    
    while (memory0[x] > 0) {
        if (__VERIFIER_nondet_int()) {
            foo();
        } else {
            foo();
        }
    }
    return 0;
}