/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 * not memory safe
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





int(cstrchr)(int s, int c)
 {
     /* Scan s for the character.  When this loop is finished,
        s will either point to the end of the string or the
        character we were looking for.  */
     while (memory0[s] != '\0' && memory0[s] != (char)c)
         s++;
     return ( (memory0[s] == c) ? s : 0 );
 }

int main() {
    return memory0[cstrchr(__VERIFIER_nondet_String(),__VERIFIER_nondet_int())];
}


