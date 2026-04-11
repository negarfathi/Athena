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

#define MEMORY1_SIZE 100000
char memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

int
cstrcat(int s, int append)
{
	int save = s;

	for (; memory1[s]; ++s);
	while ((memory1[s++] = memory0[append++]) != '\0');
	return(save);
}

int main() {
    int length1 = __VERIFIER_nondet_int();
    int length2 = __VERIFIER_nondet_int();
    int length3 = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    if (length2 < 2) {
        length2 = 2;
    }
    if (length3 < 1) {
        length3 = 1;
    }
    if (length2 - length3 < length1 || length3 > length2) return 0;
    int nondetString1 = allocate_memory0(length1 * 1);
    int nondetString2 = allocate_memory1(length2 * 1);
    memory0[nondetString1 + (length1-1)] = '\0';
    memory1[nondetString2 + (length3-1)] = '\0';
    cstrcat(nondetString2,nondetString1);
    return 0;
}
