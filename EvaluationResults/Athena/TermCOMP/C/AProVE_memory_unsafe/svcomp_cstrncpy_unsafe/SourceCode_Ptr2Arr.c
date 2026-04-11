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

#define MEMORY2_SIZE 100000
char memory2[MEMORY2_SIZE];
int memory2_freeIndex = 1;
int allocate_memory2(int size) {
   int allocatedIndex = memory2_freeIndex;
   memory2_freeIndex = memory2_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY3_SIZE 100000
char memory3[MEMORY3_SIZE];
int memory3_freeIndex = 1;
int allocate_memory3(int size) {
   int allocatedIndex = memory3_freeIndex;
   memory3_freeIndex = memory3_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY4_SIZE 100000
char memory4[MEMORY4_SIZE];
int memory4_freeIndex = 1;
int allocate_memory4(int size) {
   int allocatedIndex = memory4_freeIndex;
   memory4_freeIndex = memory4_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY5_SIZE 100000
char memory5[MEMORY5_SIZE];
int memory5_freeIndex = 1;
int allocate_memory5(int size) {
   int allocatedIndex = memory5_freeIndex;
   memory5_freeIndex = memory5_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY6_SIZE 100000
char memory6[MEMORY6_SIZE];
int memory6_freeIndex = 1;
int allocate_memory6(int size) {
   int allocatedIndex = memory6_freeIndex;
   memory6_freeIndex = memory6_freeIndex + size;
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
         if ((memory6[dst++] = memory5[src++]) == '\0') {
             /* If we get here, we found a null character at the end
                of s2, so use memset to put null bytes at the end of
                s1.  */
             us = dst;
             n2 = n;
             while (n2-- != 0)
                 memory4[us++] = '\0';
             break;
         }
     }
     return s1;
 }

int main() {
  int s1;
  int s2;
  int n = __VERIFIER_nondet_int();
  cstrncpy(s1, s2, n);
  return 0;
}
