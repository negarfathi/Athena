#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int (cstrreplace)(int s, char old, char _new)
 {
     int p = s;
     int numReplaced = 0;
     while (memory0[p] != '\0') {
       if (memory0[p] == old) {
         memory0[p] = _new;
         numReplaced++;
       }
       p++;
     }
     return numReplaced;
 }

int main() {
    int length1 = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    int nondetString1 = allocate_memory0(length1 * 1);
    memory0[nondetString1 + (length1-1)] = '\0';
return cstrreplace(nondetString1, (char)__VERIFIER_nondet_int(), (char)__VERIFIER_nondet_int());
}
