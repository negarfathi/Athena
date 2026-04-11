#include <stdlib.h>

extern int __VERIFIER_nondet_int(void);

/*
 * Copy src to string dst of size siz.  At most siz-1 characters
 * will be copied.  Always NUL terminates (unless siz == 0).
 * Returns strlen(src); if retval >= siz, truncation occurred.
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

size_t
cstrlcpy(int dst, int src, size_t siz)
{
	int d = dst;
	int s = src;
	size_t n = siz;

	/* Copy as many bytes as will fit */
	if (n != 0) {
		while (--n != 0) {
			if ((memory1[d++] = memory0[s++]) == '\0')
				break;
		}
	}

	/* Not enough room in dst, add NUL and traverse rest of src */
	if (n == 0) {
		if (siz != 0)
			memory1[d] = '\0';		/* NUL-terminate dst */
		while (memory0[s++])
			;
	}

	return(s - src - 1);	/* count does not include NUL */
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
  int nondetString1 = allocate_memory1(n * 1);
  int nondetString2 = allocate_memory0(length * 1);
  memory1[nondetString1 + (n-1)] = '\0';
  memory0[nondetString2 + (length-1)] = '\0';
  cstrlcpy(nondetString1, nondetString2, n);
  return 0;
}
