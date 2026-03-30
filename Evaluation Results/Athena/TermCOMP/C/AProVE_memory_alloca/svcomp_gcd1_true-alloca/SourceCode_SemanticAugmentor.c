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

int gcd(int x, int y) {
    int x_ref = allocate_memory2(1);
    int y_ref = allocate_memory1(1);
    int r = allocate_memory0(1);
    memory2[x_ref] = x;
    memory1[y_ref] = y;
    if (memory2[x_ref] < 0) memory2[x_ref] = -(memory2[x_ref]);
    if (memory1[y_ref] < 0) memory1[y_ref] = -(memory1[y_ref]);
    while (memory1[y_ref] > 0) {
        /* the next statements compute r = mod(x,y) */
        memory0[r] = memory2[x_ref];
        while (memory0[r] >= memory1[y_ref])
            memory0[r] = memory0[r] - memory1[y_ref];
        /* end of inlined mod */
        memory2[x_ref] = memory1[y_ref];
        memory1[y_ref] = memory0[r];
    }
    return memory2[x_ref];
}

int main() {
    int x,y;
    x = __VERIFIER_nondet_int();
    y = __VERIFIER_nondet_int();
    gcd(x,y);
}