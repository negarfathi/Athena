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
  int x;
  int n = __VERIFIER_nondet_int();
  sort(x, n);
  return 0;
}
