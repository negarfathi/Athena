/*
 * Date: 17.12.2013
 * Author: Thomas Ströder
 */
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
cstrlen(int str)
{
	int s;

	for (s = str; memory0[s]; ++s)
		;
	return (s - str);
}

int
cstrncmp(int s1, int s2, int n)
{

	if (n == 0)
		return (0);
	do {
		if (memory1[s1] != memory0[s2++])
			return (memory1[s1] - memory0[--s2]);
		if (memory1[s1++] == 0)
			break;
	} while (--n != 0);
	return (0);
}

/*
 * Find the first occurrence of find in s.
 */
int
cstrstr(int s, int find)
{
	char c, sc;
	int len;

	if ((c = memory0[find++]) != 0) {
		len = cstrlen(find);
		do {
			do {
				if ((sc = memory0[s++]) == 0) {
					return (NULL);
				}
			} while (sc != c);
		} while (cstrncmp(s, find, len) != 0);
		s--;
	}
	return (s);
}

int main() {
    int length1 = __VERIFIER_nondet_int();
    int length2 = __VERIFIER_nondet_int();
    if (length1 < 1) {
        length1 = 1;
    }
    if (length2 < 1) {
        length2 = 1;
    }
    int nondetString1 = allocate_memory1(length1 * 1);
    int nondetString2 = allocate_memory0(length2 * 1);
    memory1[nondetString1 + (length1-1)] = '\0';
    memory0[nondetString2 + (length2-1)] = '\0';
    return cstrstr(nondetString1,nondetString2);
}


