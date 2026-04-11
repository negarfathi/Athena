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

#define MEMORY3_SIZE 100000
int memory3[MEMORY3_SIZE];
int memory3_freeIndex = 1;
int allocate_memory3(int size) {
   int allocatedIndex = memory3_freeIndex;
   memory3_freeIndex = memory3_freeIndex + size;
   return allocatedIndex;
}

int lis(int a, int N)
{
    int best;
    int prev;
    int i, j, max = 0;
    best = allocate_memory3(1 * N);
    prev = allocate_memory2(1 * N);

    for (i = 0; i < N; i++)
        memory3[best + (i)] = 1, memory2[prev + (i)] = i;

    for (i = 1; i < N; i++)
        for (j = 0; j < i; j++)
            if (memory0[a + (i)] > memory0[a + (j)] && ((memory3[best + (i)]) < memory3[best + (j)] + 1))
                memory3[best + (i)] = memory3[best + (j)] + 1, memory2[prev + (i)] = j;  // prev[] is for backtracking the subsequence

    for (i = 0; i < N; i++)
        if (max < memory3[best + (i)])
            max = memory3[best + (i)];

    
    

    return max;
}

int main() {
  int a;
  int N = __VERIFIER_nondet_int();
  return lis(a, N);
}
