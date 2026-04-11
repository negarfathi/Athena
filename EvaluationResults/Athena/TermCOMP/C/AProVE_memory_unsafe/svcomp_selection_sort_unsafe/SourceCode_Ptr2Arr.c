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

void selection(int a, int N)
{
    int i, j, min, t;
    for (i = 1; i < N; i++) {
        min = i;
        for (j = i+1; j <= N; ++j) {
            if (memory0[a + (j)] < memory0[a + (min)]) {
                min = j;
            }            
        }
        t = memory0[a + (min)];
        memory0[a + (min)] = memory0[a + (i)];
        memory0[a + (i)] = t;
    }
}

int main() {
  int a;
  int N = __VERIFIER_nondet_int();
  selection(a, N);
  return 0;
}
