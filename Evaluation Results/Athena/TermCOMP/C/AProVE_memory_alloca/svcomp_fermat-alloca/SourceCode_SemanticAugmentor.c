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

int main()
{
    int MAX = allocate_memory3(1);
    int a = allocate_memory2(1);
    int b = allocate_memory1(1);
    int c = allocate_memory0(1);
    memory3[MAX] = 1000;
    memory2[a] = 1;
    memory1[b] = 1;
    memory0[c] = 1;
    while (1) {
        if ((((memory2[a])*(memory2[a])*(memory2[a])) == (((memory1[b])*(memory1[b])*(memory1[b])) + ((memory0[c])*(memory0[c])*(memory0[c]))))) {
            return 1;
        }
        (memory2[a])++;
        if (memory2[a] > memory3[MAX]) {
            memory2[a] = 1;
            (memory1[b])++;
        }
        if (memory1[b] > memory3[MAX]) {
            memory1[b] = 1;
            (memory0[c])++;
        }
        if (memory0[c] > memory3[MAX]) {
            break;
        }
    }
    return 0;
}
