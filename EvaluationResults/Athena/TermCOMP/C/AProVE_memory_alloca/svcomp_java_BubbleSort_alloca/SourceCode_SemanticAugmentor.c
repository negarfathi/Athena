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

void sort(int x, int n) {
    int pass;
    int i;
    for (pass=1; pass < n; pass++)  // count how many times
        // This next loop becomes shorter and shorter
        for (i=0; i < n - pass; i++)
            if (memory0[x + (i)] > memory0[x + (i+1)]) {
                // exchange elements
                int temp = memory0[x + (i)]; memory0[x + (i)] = memory0[x + (i+1)];  memory0[x + (i+1)] = temp;
            }
}

int main() {
  int array_size = __VERIFIER_nondet_int();
  if (array_size < 1) {
     array_size = 1;
  }
  int numbers = allocate_memory0(array_size * 1);
  sort(numbers, array_size);
  return 0;
}
