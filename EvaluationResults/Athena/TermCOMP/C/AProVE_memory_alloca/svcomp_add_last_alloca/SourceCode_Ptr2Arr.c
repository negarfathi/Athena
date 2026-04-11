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
  int length = __VERIFIER_nondet_int();
  if (length < 1) length = 1;
  int arr = allocate_memory0(length*1);
  if (!arr) return 0;
  int a = arr;
  while (memory0[a] != memory0[arr + length - 1]) {
    memory0[a] += memory0[arr + length - 1];
    a++;
  }
  return 0;
}
