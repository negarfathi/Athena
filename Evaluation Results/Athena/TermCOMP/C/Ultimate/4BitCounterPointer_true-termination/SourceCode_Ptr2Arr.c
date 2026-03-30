/*
 * Date: 2014-06-22
 * Author: heizmann@informatik.uni-freiburg.de
 */
#include <stdlib.h>

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

#define MEMORY3_SIZE 100000
int memory3[MEMORY3_SIZE];
int memory3_freeIndex = 1;
int allocate_memory3(int size) {
   int allocatedIndex = memory3_freeIndex;
   memory3_freeIndex = memory3_freeIndex + size;
   return allocatedIndex;
}

int main() {
	int x0 = allocate_memory3(1);
	int x1 = allocate_memory2(1);
	int x2 = allocate_memory1(1);
	int x3 = allocate_memory0(1);
	memory3[x0] = 0;
	memory2[x1] = 0;
	memory1[x2] = 0;
	memory0[x3] = 0;
	while ( memory0[x3] == 0 ) {
		if (memory3[x0] == 0) {
			memory3[x0] = 1;
		} else {
			memory3[x0] = 0;
			if (memory2[x1] == 0) {
				memory2[x1] = 1;
			} else {
				memory2[x1] = 0;
				if (memory1[x2] == 0) {
					memory1[x2] = 1;
				} else {
					memory1[x2] = 0;
					memory0[x3] = 1;
				}
			}
		}
	}
	return 0;
}