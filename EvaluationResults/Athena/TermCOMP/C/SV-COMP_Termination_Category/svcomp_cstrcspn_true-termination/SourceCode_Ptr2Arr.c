/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 */
#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/* Returns some null-terminated string. */
#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int __VERIFIER_nondet_String(void) {
    int length = __VERIFIER_nondet_int();
    if (length < 1) {
        length = 1;
    }
    int nondetString = allocate_memory0(length * 1);
    memory0[nondetString + (length-1)] = '\0';
    return nondetString;
}




int (cstrcspn)(int s1, int s2)
 {
     int sc1;
     int s;
     int c;
     for (sc1 = s1; memory0[sc1] != '\0'; sc1++) {
         s = s2;
         c = memory0[sc1];
         while (memory0[s] != '\0' && memory0[s] != (char)c)
             s++;
         if (memory0[s] == c)
             return (sc1 - s1);
     }
     return sc1 - s1;            /* terminating nulls match */
 }

int main() {
    return cstrcspn(__VERIFIER_nondet_String(),__VERIFIER_nondet_String());
}


