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

int f(int k, int l)
{
    int k_ref = allocate_memory3(1);
    int l_ref = allocate_memory2(1);
    int i = allocate_memory1(1);
    int j = allocate_memory0(1);
    memory3[k_ref] = k;
    memory2[l_ref] = l;
    memory1[i] = 0;
    memory0[j] = 0;
L1: while (memory1[i] < memory3[k_ref]) {
        (memory1[i])++;
        if (memory1[i] % 2) {
            continue;
        }
        goto L2;
    }
L2: while (memory0[j] < 1) {
        (memory0[j])++;
        if (memory1[i] % 2) {
            continue;
        }
        goto L1;
    }
    return memory1[i] + memory0[j];
}

int main() {
  return f(__VERIFIER_nondet_int(),__VERIFIER_nondet_int());
}