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

int sumOfThirdBytes(int numbers, int array_size)
{
    int i, sum;
    int p;
    sum = 0;
    for (i = 0; i < array_size; i++) {
        p = numbers + i;
        p = p + 2;
        sum = sum + memory0[p];
    }
    return sum;
}

int main() {
  int array_size = __VERIFIER_nondet_int();
  if (array_size < 1) {
     array_size = 1;
  }
  int numbers = allocate_memory0(array_size * 1);
  return sumOfThirdBytes(numbers, array_size);
}
