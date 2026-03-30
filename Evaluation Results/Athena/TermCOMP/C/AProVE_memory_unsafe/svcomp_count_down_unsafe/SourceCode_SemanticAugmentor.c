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

int main() {
  int i, j;
  int val;
  int length = __VERIFIER_nondet_int();
  if (length < 1) length = 1;
  int arr = allocate_memory0(length);
  if (!arr) return 0;
  for (i=0; i<length; i++) {
    val = __VERIFIER_nondet_int();
    if (val < 0) {
      val = 0;
    }
    memory0[arr + (i)] = val;
  }
  for (j=0; j<length; j++) {
    while (memory0[arr + (j)] > 0) {
      memory0[arr + (j)]--;
    }
  }
  return 0;
}
