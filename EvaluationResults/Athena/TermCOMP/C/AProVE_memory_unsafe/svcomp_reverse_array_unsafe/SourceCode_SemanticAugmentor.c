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
  int i, j, tmp;
  int length = __VERIFIER_nondet_int();
  if (length < 1) length = 1;
  // make sure that length is odd
  if (length % 2 == 0) length++;
  int arr = allocate_memory0(length);
  // make sure the marker occurs only once
  for (i=0; i<length; i++) {
    if (memory0[arr + (i)] == '\0') memory0[arr + (i)]++;
  }
  // mark the middle
  memory0[arr + (length / 2 + 1)] = '\0';
  // runs from left to right
  int a = arr;
  // runs from right to left
  int b = arr + length - 1;
  // swap elements until we reach the marker
  while (memory0[a] != 0 && memory0[b] != 0) {
    tmp = memory0[a];
    memory0[a] = memory0[b];
    memory0[b] = tmp;
    a++;
    b--;
  }
  return 0;
}
