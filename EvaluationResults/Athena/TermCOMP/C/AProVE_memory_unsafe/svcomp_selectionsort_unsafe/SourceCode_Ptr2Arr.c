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

void SelectionSort(int a, int array_size)
{
    int i;
    for (i = 0; i < array_size - 1; ++i)
    {
        int j, min, temp;
        min = i;
        for (j = i+1; j < array_size; ++j)
        {
            if (memory0[a + (j)] < memory0[a + (min)])
                min = j;
        }
        
        temp = memory0[a + (i)];
        memory0[a + (i)] = memory0[a + (min)];
        memory0[a + (min)] = temp;
    }
}

int main() {
  int a;
  int array_size = __VERIFIER_nondet_int();
  SelectionSort(a, array_size);
  return 0;
}  
