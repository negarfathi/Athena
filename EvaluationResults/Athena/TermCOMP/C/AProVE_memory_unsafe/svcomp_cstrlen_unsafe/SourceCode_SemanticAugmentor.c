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





int (cstrlen)(int s)
 {
     int p = s;
     /* Loop over the data in s.  */
     while (memory0[p] != '\0')
         p = p+2;
     return (int)(p - s);
 }

int main() {
    return cstrlen(__VERIFIER_nondet_String());
}


