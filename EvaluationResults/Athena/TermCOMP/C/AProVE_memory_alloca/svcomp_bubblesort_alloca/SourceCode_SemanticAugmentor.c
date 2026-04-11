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

void bubbleSort(int numbers, int array_size)
{
    int i, j, temp;
     
    for (i = (array_size - 1); i >= 0; i--) {
        for (j = 1; j <= i; j++) {
            if (memory0[numbers + (j-1)] > memory0[numbers + (j)]) {
                temp = memory0[numbers + (j-1)];
                memory0[numbers + (j-1)] = memory0[numbers + (j)];
                memory0[numbers + (j)] = temp;
            }
        }
    }
}

int main() {
  int array_size = __VERIFIER_nondet_int();
  if (array_size < 1) {
     array_size = 1;
  }
  int numbers = allocate_memory0(array_size * 1);
  bubbleSort(numbers, array_size);
  return 0;
}
