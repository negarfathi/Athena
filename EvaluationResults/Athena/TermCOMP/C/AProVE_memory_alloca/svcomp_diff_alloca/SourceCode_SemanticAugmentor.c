#include <stdlib.h>

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

void diff(int A, int Alen, int B, int Blen, int D)
{
    int k = 0;
    int i = 0;
    int l1 = Alen;
    int l2 = Blen;
    int found;

    while (i < l1) {
        int j = 0;
        found = 0;
        while (j < l2 && !found) {
            if(memory2[A + (i)] == memory1[B + (j)]) {
                found = 1;
            } else {
                j++;
            }
        }
        if (!found) {
            memory0[D + (k)] = memory2[A + (i)];
            k++;
        }
        i++;
    }
}

int main() {
  int Alen = __VERIFIER_nondet_int();
  int Blen = __VERIFIER_nondet_int();
  if (Alen < 1) {
     Alen = 1;
  }
  if (Blen < 1) {
     Blen = 1;
  }
  int A = allocate_memory2(Alen * 1);
  int B = allocate_memory1(Blen * 1);
  int D = allocate_memory0(Alen * 1);
  diff(A, Alen, B, Blen, D);
  return 0;
}
