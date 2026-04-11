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

void insertionSort(int a, int array_size)
{
    int i, j, index;
    for (i = 1; i < array_size; ++i)
    {
        index = memory0[a + (i)];
        for (j = i; j > 0 && ((memory0[a + (j-1)]) > index); j--)
            memory0[a + (j)] = memory0[a + (j-1)];

        memory0[a + (j)] = index;
    }
}

int main() {
  int a;
  int array_size = __VERIFIER_nondet_int();
  insertionSort(a, array_size);
  return 0;
}
