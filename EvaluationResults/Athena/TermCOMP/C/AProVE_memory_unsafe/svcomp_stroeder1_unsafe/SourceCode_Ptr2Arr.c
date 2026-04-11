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
char memory2[MEMORY2_SIZE];
int memory2_freeIndex = 1;
int allocate_memory2(int size) {
   int allocatedIndex = memory2_freeIndex;
   memory2_freeIndex = memory2_freeIndex + size;
   return allocatedIndex;
}

int sumOfThirdBytes(int numbers, int array_size)
{
    int i, sum;
    int p;
    sum = 0;
    for (i = 0; i < array_size; i++) {
        p = numbers + i;
        p = p + 2;
        sum = sum + memory2[p];
    }
    return sum;
}

int main() {
  int numbers;
  int array_size = __VERIFIER_nondet_int();
  return sumOfThirdBytes(numbers, array_size);
}
