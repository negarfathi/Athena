#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

// Returns the length of the longest increasing subsequence.
// Note that this is looking for the longest strictly increasing subsequence.

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

int lis(int a, int N)
{
    int best;
    int prev;
    int i, j, max = 0;
    best = allocate_memory2(1 * N);
    prev = allocate_memory1(1 * N);

    for (i = 0; i < N; i++)
        memory2[best + (i)] = 1, memory1[prev + (i)] = i;

    for (i = 1; i < N; i++)
        for (j = 0; j < i; j++)
            if (memory0[a + (i)] > memory0[a + (j)] && ((memory2[best + (i)]) < memory2[best + (j)] + 1))
                memory2[best + (i)] = memory2[best + (j)] + 1, memory1[prev + (i)] = j;  // prev[] is for backtracking the subsequence

    for (i = 0; i < N; i++)
        if (max < memory2[best + (i)])
            max = memory2[best + (i)];

    return max;
}

int main() {
  int array_size = __VERIFIER_nondet_int();
  if (array_size < 1) {
     array_size = 1;
  }
  int numbers = allocate_memory0(array_size * 1);
  return lis(numbers, array_size);
}
