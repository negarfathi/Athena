#include <stdlib.h>

/*
 * Program from Fig.1 of
 * 2005CAV - Bradley,Manna,Sipma - Linear Ranking with Reachability
 *
 * Date: 12.12.2013
 * Author: heizmann@informatik.uni-freiburg.de
 *
 */

extern int __VERIFIER_nondet_int(void);


#define MEMORY0_SIZE 100000
int memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY1_SIZE 100000
int memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY2_SIZE 100000
int memory2[MEMORY2_SIZE];
int memory2_freeIndex = 1;
int allocate_memory2(int size) {
   int allocatedIndex = memory2_freeIndex;
   memory2_freeIndex = memory2_freeIndex + size;
   return allocatedIndex;
}

int main() {
        int x = allocate_memory2(1);
	int y = allocate_memory1(1);
	int N = allocate_memory0(1);
	memory2[x] = __VERIFIER_nondet_int();
	memory1[y] = __VERIFIER_nondet_int();
	memory0[N] = __VERIFIER_nondet_int();
	// continue only for values where there won't be any overflow or underflow
	// on systems where sizeof(int)=4 holds.
	if (memory0[N] >= 536870912 || memory2[x] >= 536870912 || memory1[y] >= 536870912 || memory2[x] < -1073741824) {
		return 0;
	}
	if (memory2[x] + memory1[y] >= 0) {
		while (memory2[x] <= memory0[N]) {
			if (__VERIFIER_nondet_int()) {
			        memory2[x] = 2*(memory2[x]) + memory1[y];
				memory1[y] = memory1[y] + 1;
			} else {
				memory2[x] = memory2[x] + 1;
			}
		}
	}
	return 0;
}


