#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * bzero -- vax movc5 instruction
 */
#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

void
cbzero(int b, size_t length)
{
	int p;

	for (p = b; length--;)
		memory0[p++] = '\0';
}

int main() {
  int length = __VERIFIER_nondet_int();
  int n = __VERIFIER_nondet_int();
  if (length < 1) {
      length = 1;
  }
  if (n < 1) {
      n = 1;
  }
  if (n > length) return 0;
  int nondetArea = allocate_memory0(length * 1);
  cbzero(nondetArea, n);
  return 0;
}
