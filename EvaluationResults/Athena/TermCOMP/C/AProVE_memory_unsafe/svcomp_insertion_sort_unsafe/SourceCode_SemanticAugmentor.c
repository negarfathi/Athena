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

void insertion(int a, int N)
{
    int i, j, v;
    for (i = 2; i <= N; i++) {
        v = memory0[a + (i)];
        j = i;
        while (j > 0 && ((memory0[a + (j - 1)]) > v)) {
            memory0[a + (j)] = memory0[a + (j-1)];
            j--;
        }
        memory0[a + (j)] = v;
    }
}

int main() {
  int a;
  int N = __VERIFIER_nondet_int();
  insertion(a, N);
  return 0;
}
