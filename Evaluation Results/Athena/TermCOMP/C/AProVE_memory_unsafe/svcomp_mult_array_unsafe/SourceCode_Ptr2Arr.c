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

int main() {
  int i, j;
  int length = __VERIFIER_nondet_int();
  if (length < 1) length = 1;
  int fac = __VERIFIER_nondet_int();
  if (fac < 1) fac = 1;
  int arr = allocate_memory1(length);
  int arr2 = allocate_memory0(fac*length);
  if (!arr || !arr2) return 0;
  for (i=0; i<length; i++) {
    memory1[arr + (i)] = __VERIFIER_nondet_int();
  }
  for (j=0; j<length*fac; j++) {
    memory0[arr2 + (j)] = memory1[arr + (i % length)];
  }
  return 0;
}
