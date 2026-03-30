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
cmemset(int dst, int c, size_t n)
{
	if (n != 0) {
		int d = dst;

		do
			memory0[d++] = (unsigned char)c;
		while (--n != 0);
	}
	return (dst);
}

int main() {
  int length = __VERIFIER_nondet_int();
  int n = __VERIFIER_nondet_int();
  int c = __VERIFIER_nondet_int();
  if (length < 1) {
      length = 1;
  }
  if (n < 1) {
      n = 1;
  }
  int nondetArea = allocate_memory0(n * 1);
  cmemset(nondetArea, c, n);
  return 0;
}
