/*
 * Date: 2012-06-03
 * Author: heizmann@informatik.uni-freiburg.de
 *
 * 2-lex ranking function: f(p, q, *q) = (q, *q)
 *
 */
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

int main() {
	int p = allocate_memory0(1048 * 1);
	int q = p;
	while (memory0[q] >= 0 && q < p + 1048) {
		if (__VERIFIER_nondet_int()) {
			q++;
		} else {
			(memory0[q])--;
		}
	}
	return 0;
}
