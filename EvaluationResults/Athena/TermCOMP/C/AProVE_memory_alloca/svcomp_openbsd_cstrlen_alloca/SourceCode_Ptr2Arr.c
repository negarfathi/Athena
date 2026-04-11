/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 */
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

int
cstrlen(int str)
{
	int s;

	for (s = str; memory0[s]; ++s)
		;
	return (s - str);
}

int main() {
    int length1 = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    int nondetString1 = allocate_memory0(length1 * 1);
    memory0[nondetString1 + (length1-1)] = '\0';
    return cstrlen(nondetString1);
}


