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

int test_fun(int x, int y, int z, int flag)
{
    int x_ref = allocate_memory4(1);
    int y_ref = allocate_memory3(1);
    int z_ref = allocate_memory2(1);
    int flag_ref = allocate_memory1(1);
    int c = allocate_memory0(1);
    flag = 1;
    memory4[x_ref] = x;
    memory3[y_ref] = y;
    memory2[z_ref] = z;
    memory1[flag_ref] = flag;
    memory0[c] = 0;
    while ((memory3[y_ref] < memory2[z_ref]) && (memory1[flag_ref] > 0)) {
        if ((memory3[y_ref] > 0) && (memory4[x_ref] > 1)) {
            memory3[y_ref] = (memory4[x_ref]) * (memory3[y_ref]);
        } else {
            if ((memory3[y_ref] > 0) && (memory4[x_ref] < -1)) {
                memory3[y_ref] = -(memory4[x_ref]) * (memory3[y_ref]);
            } else {
                memory1[flag_ref] = 0;
            }
        }
        memory0[c] = memory0[c] + 1;
    }
    return memory0[c];
}

int main() {
  return test_fun(__VERIFIER_nondet_int(),__VERIFIER_nondet_int(),__VERIFIER_nondet_int(),__VERIFIER_nondet_int());
}
