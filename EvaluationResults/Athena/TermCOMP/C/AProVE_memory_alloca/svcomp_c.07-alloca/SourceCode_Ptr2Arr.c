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

int test_fun(int i, int j, int k, int tmp)
{
    int i_ref = allocate_memory4(1);
    int j_ref = allocate_memory3(1);
    int k_ref = allocate_memory2(1);
    int tmp_ref = allocate_memory1(1);
    int c = allocate_memory0(1);
    memory4[i_ref] = i;
    memory3[j_ref] = j;
    memory2[k_ref] = k;
    memory1[tmp_ref] = tmp;
    memory0[c] = 0;
    while ((memory4[i_ref] <= 100) && (memory3[j_ref] <= k)) {
        memory1[tmp_ref] = memory4[i_ref];
        memory4[i_ref] = memory3[j_ref];
        memory3[j_ref] = memory1[tmp_ref] + 1;
        memory2[k_ref] = memory2[k_ref] - 1;
        memory0[c] = memory0[c] + 1;
    }
    return memory0[c];
}

int main() {
  return test_fun(__VERIFIER_nondet_int(),__VERIFIER_nondet_int(),__VERIFIER_nondet_int(),__VERIFIER_nondet_int());
}
