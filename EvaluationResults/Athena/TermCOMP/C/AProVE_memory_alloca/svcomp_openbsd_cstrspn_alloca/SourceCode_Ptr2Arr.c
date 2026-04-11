/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 */
#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * Span the string s2 (skip characters that are in s2).
 */
#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY1_SIZE 100000
char memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

int
cstrspn(int s1, int s2)
{
	int p = s1;
	int spanp;
	char c, sc;

	/*
	 * Skip any characters in s2, excluding the terminating \0.
	 */
cont:
	c = memory1[p++];
	for (spanp = s2; (sc = memory0[spanp++]) != 0;)
		if (sc == c)
			goto cont;
	return (p - 1 - s1);
}

int main() {
    int length1 = __VERIFIER_nondet_int();
    int length2 = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    if (length2 < 1) {
        length2 = 1;
    }
    int nondetString1 = allocate_memory1(length1 * 1);
    int nondetString2 = allocate_memory0(length2 * 1);
    memory1[nondetString1 + (length1-1)] = '\0';
    memory0[nondetString2 + (length2-1)] = '\0';
    return cstrspn(nondetString1,nondetString2);
}


