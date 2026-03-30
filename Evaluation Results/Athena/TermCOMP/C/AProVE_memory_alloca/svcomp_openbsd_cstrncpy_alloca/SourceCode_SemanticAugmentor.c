#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * Copy src to dst, truncating or null-padding to always copy n bytes.
 * Return dst.
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
cstrncpy(int dst, int src, size_t n)
{
	if (n != 0) {
		int d = dst;
		int s = src;

		do {
			if ((memory1[d++] = memory0[s++]) == 0) {
				/* NUL pad the remaining n-1 bytes */
				while (--n != 0)
					memory1[d++] = 0;
				break;
			}
		} while (--n != 0);
	}
	return (dst);
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
  int nondetArea = allocate_memory1(n * 1);
  int nondetString = allocate_memory0(length * 1);
  memory0[nondetString + (length-1)] = '\0';
  cstrncpy(nondetArea, nondetString, n);
  return 0;
}
