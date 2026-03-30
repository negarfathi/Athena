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

void knapsack(int size, int val, int N, int cost, int best, int M)
{
    int i, j;
    for (j = 1; j <= N; j++) {
        for (i = 1; i <= M; i++) {
            if (i >= memory3[size + (j)]) {
                if (memory1[cost + (i)] < memory1[cost + (i - memory3[size + (j)])] + memory2[val + (j)]) {
                    memory1[cost + (i)] = memory1[cost + (i - memory3[size + (j)])] + memory2[val + (j)];
                    memory0[best + (i)] = j;
                }
            }
        }
    }
}

int main() {
  int N = __VERIFIER_nondet_int();
  int M = __VERIFIER_nondet_int();
  if (N < 1) {
     N = 1;
  }
  if (M < 1) {
     M = 1;
  }
  int size = allocate_memory3(N * 1);
  int val = allocate_memory2(N * 1);
  int cost = allocate_memory1(M * 1);
  int best = allocate_memory0(M * 1);
  knapsack(size, val, N, cost, best, M);
  return 0;
}
