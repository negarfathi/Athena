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

int iterate(int bound)
{
    int bound_ref = allocate_memory2(1);
    int i = allocate_memory1(1);
    int sum = allocate_memory0(1);
    memory2[bound_ref] = bound;
    memory0[sum] = 0;
    for (memory1[i] = 0; memory1[i] < memory2[bound_ref]; (memory1[i])++) {
        memory0[sum] += memory1[i];
    }
    return memory0[sum];
}

int main() {
  return iterate(__VERIFIER_nondet_int());
}
