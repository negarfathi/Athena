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

int mlog(int x)
{
    int x_ref = allocate_memory1(1);
    int res = allocate_memory0(1);
    memory1[x_ref] = x;
    memory0[res] = 0;
    while (memory1[x_ref] > 1) {
        memory1[x_ref] = (memory1[x_ref])/2;
        (memory0[res])++;
    }
    return memory0[res];
}

int main() {
  return mlog(__VERIFIER_nondet_int());
}
