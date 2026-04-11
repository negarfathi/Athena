#include <stdlib.h>

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

int main() {
    int a = allocate_memory6(1);
    int i = allocate_memory5(1);
    int b = allocate_memory4(1);
    int j = allocate_memory3(1);
    int c = allocate_memory2(1);
    int M = allocate_memory1(1);
    int N = allocate_memory0(1);
    memory6[a] = memory5[i];
    memory4[b] = memory3[j];
    memory2[c] = 0;
    
    while (memory5[i] < memory1[M] || memory3[j] < memory0[N]) {
        memory5[i] = memory5[i] + 1;
        memory3[j] = memory3[j] + 1;
        memory2[c] = memory2[c] + 1;
    }
}