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

void bubble(int a, int N)
{
    int i, j, t;
    for (i = N; i >= 1; i--) {
        for (j = 2; j <= i; j++) {
            if (memory0[a + (j-1)] > memory0[a + (j)]) {
                t = memory0[a + (j-1)];
                memory0[a + (j-1)] = memory0[a + (j)];
                memory0[a + (j)] = t;
            }
        }
    }
}

int main() {
  int a;
  int n = __VERIFIER_nondet_int();
  bubble(a, n);
  return 0;
}
