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

#define MEMORY4_SIZE 100000
int memory4[MEMORY4_SIZE];
int memory4_freeIndex = 1;
int allocate_memory4(int size) {
   int allocatedIndex = memory4_freeIndex;
   memory4_freeIndex = memory4_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY5_SIZE 100000
int memory5[MEMORY5_SIZE];
int memory5_freeIndex = 1;
int allocate_memory5(int size) {
   int allocatedIndex = memory5_freeIndex;
   memory5_freeIndex = memory5_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY6_SIZE 100000
int memory6[MEMORY6_SIZE];
int memory6_freeIndex = 1;
int allocate_memory6(int size) {
   int allocatedIndex = memory6_freeIndex;
   memory6_freeIndex = memory6_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY7_SIZE 100000
int memory7[MEMORY7_SIZE];
int memory7_freeIndex = 1;
int allocate_memory7(int size) {
   int allocatedIndex = memory7_freeIndex;
   memory7_freeIndex = memory7_freeIndex + size;
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
  int size;
  int val;
  int N = __VERIFIER_nondet_int();
  int cost;
  int best;
  int M = __VERIFIER_nondet_int();
  knapsack(size, val, N, cost, best, M);
  return 0;
}
