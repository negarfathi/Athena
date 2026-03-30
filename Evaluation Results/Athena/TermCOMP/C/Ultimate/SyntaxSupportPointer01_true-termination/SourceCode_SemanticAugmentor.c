/*
 * Date: 2012-06-03
 * Author: heizmann@informatik.uni-freiburg.de
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
	int p = allocate_memory0(1);
	while (memory0[p] >= 0) {
		(memory0[p])--;
	}
	return 0;
}
