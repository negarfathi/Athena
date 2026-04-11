#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * Reverse memchr()
 * Find the last occurrence of 'c' in the buffer 's' of size 'n'.
 */
#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int
cmemrchr(int s, int c, int n)
{
	int cp;

	if (n != 0) {
		cp = s + n;
		do {
			if (memory0[--cp] == (unsigned char)c)
				return(cp);
		} while (--n != 0);
	}
	return(NULL);
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
  cmemrchr(nondetArea, c, n);
  return 0;
}
