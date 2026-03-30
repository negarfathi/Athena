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

int f(int a) {
    int a_ref = allocate_memory2(1);
    int tmp = allocate_memory1(1);
    int count = allocate_memory0(1);
    memory2[a_ref] = a;
    memory1[tmp] = 0;
    memory0[count] = 0;
    while (memory2[a_ref] > 1) {
        memory1[tmp] = memory2[a_ref] % 2;
        if (memory1[tmp] == 0) memory2[a_ref] = memory2[a_ref] / 2;
        else memory2[a_ref] = memory2[a_ref] - 1;
        (memory0[count])++;
    }
    return memory0[count];
}

int main() {
    int x = __VERIFIER_nondet_int();
    int count = f(x);
    return count;
}