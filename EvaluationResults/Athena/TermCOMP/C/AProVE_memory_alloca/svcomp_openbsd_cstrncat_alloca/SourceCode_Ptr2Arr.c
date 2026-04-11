#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * Concatenate src on the end of dst.  At most strlen(dst)+n+1 bytes
 * are written at dst (at most n+1 bytes being appended).  Return dst.
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
cstrncat(int dst, int src, size_t n)
{
	if (n != 0) {
		int d = dst;
		int s = src;

		while (memory1[d] != 0)
			d++;
		do {
			if ((memory1[d] = memory0[s++]) == 0)
				break;
			d++;
		} while (--n != 0);
		memory1[d] = 0;
	}
	return (dst);
}

int main() {
    int length1 = __VERIFIER_nondet_int();
    int length2 = __VERIFIER_nondet_int();
    int n = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    if (length2 < 1) {
        length2 = 1;
    }
    if (n < 1) {
        n = 1;
    }
    if (length1 < n || length1 - n < length2) return 0;
    int nondetString1 = allocate_memory1(length1 * 1);
    int nondetString2 = allocate_memory0(length2 * 1);
    memory1[nondetString1 + (length1-n-1)] = '\0';
    memory0[nondetString2 + (length2-1)] = '\0';
    cstrncat(nondetString1, nondetString2, n);
    return 0;
}
