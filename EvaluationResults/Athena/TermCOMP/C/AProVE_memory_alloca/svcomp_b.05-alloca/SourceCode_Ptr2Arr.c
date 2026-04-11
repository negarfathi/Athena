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

int test_fun(int x, int tmp)
{
    int x_ref = allocate_memory1(1);
    int tmp_ref = allocate_memory0(1);
    memory1[x_ref] = x;
    memory0[tmp_ref] = tmp;
    memory0[tmp_ref] = __VERIFIER_nondet_int();
    while ((memory1[x_ref] > 0) && (x == 2*(memory0[tmp_ref]))) {
        memory1[x_ref] = memory1[x_ref] - 1;
        memory0[tmp_ref] = __VERIFIER_nondet_int();
    }
    return memory1[x_ref];
}

int main() {
  return test_fun(__VERIFIER_nondet_int(),__VERIFIER_nondet_int());
}
