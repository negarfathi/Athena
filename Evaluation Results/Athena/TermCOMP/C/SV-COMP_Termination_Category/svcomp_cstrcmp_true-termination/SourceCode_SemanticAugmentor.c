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





int (cstrcmp)(int s1, int s2)
 {
     unsigned char uc1, uc2;
     /* Move s1 and s2 to the first differing characters 
        in each string, or the ends of the strings if they
        are identical.  */
     while (memory0[s1] != '\0' && memory0[s1] == memory0[s2]) {
         s1++;
         s2++;
     }
     /* Compare the characters as unsigned char and
        return the difference.  */
     uc1 = (memory0[s1]);
     uc2 = (memory0[s2]);
     return ((uc1 < uc2) ? -1 : (uc1 > uc2));
 }

int main() {
    return cstrcmp(__VERIFIER_nondet_String(),__VERIFIER_nondet_String());
}


