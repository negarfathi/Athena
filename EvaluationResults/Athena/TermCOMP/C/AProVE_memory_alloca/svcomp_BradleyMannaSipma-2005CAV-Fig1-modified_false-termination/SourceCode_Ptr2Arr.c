#include <stdlib.h>

/*
 * Program from Fig.1 of
 * 2005CAV - Bradley,Manna,Sipma - Linear Ranking with Reachability
 * Modified version that can be nonterminating because we allow that inputs of
 * gcd may be zero.
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

int gcd(int y1, int y2) {
	while (memory1[y1] != memory0[y2]) {
		if (memory1[y1] > memory0[y2]) {
			memory1[y1] = memory1[y1] - memory0[y2];
		} else {
			memory0[y2] = memory0[y2] - memory1[y1];
		}
	}
	return memory1[y1];
}

int main() {
        int y1 = allocate_memory1(1);
	int y2 = allocate_memory0(1);
	memory1[y1] = __VERIFIER_nondet_int();
	memory0[y2] = __VERIFIER_nondet_int();
	if (memory1[y1] >= 0  && memory0[y2] >= 0) {
		gcd(y1, y2);
	}
	return 0;
}


