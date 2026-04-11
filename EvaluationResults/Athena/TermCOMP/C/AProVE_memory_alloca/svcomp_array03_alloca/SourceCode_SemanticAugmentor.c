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

void test_fun(int a, int N)
{
    int i;
    int res;
    for (i = 0; i < N; i++) {
        res = 1;
        if (memory0[a + (i)] == 0) {
            res = 1;
        } else if (memory0[a + (i)] < 0) {
            res = 0;
        }
        while (memory0[a + (i)] > 0) {
            res = res * memory0[a + (i)];
            memory0[a + (i)]--;
        }
        memory0[a + (i)] = res;
    }
}

int main() {
  int array_size = __VERIFIER_nondet_int();
  if (array_size < 1) {
     array_size = 1;
  }
  int numbers = allocate_memory0(array_size * 1);
  test_fun(numbers, array_size);
}
