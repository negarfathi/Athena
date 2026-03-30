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

int(cstrncpy)(int s1, int s2, int n)
 {
     int dst = s1;
     int src = s2;
     int us;
     int n2;
     /* Copy bytes, one at a time.  */
     while (n > 0) {
         n--;
         if ((memory1[dst++] = memory0[src++]) == '\0') {
             /* If we get here, we found a null character at the end
                of s2, so use memset to put null bytes at the end of
                s1.  */
             us = dst;
             n2 = n;
             while (n2-- != 0)
                 memory1[us++] = '\0';
             break;
         }
     }
     return s1;
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
