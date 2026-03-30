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

int(cstrcat)(int s1, int s2)
 {
     int s = s1;
     /* Move s so that it points to the end of s1.  */
     while (memory4[s] != '\0')
         s++;
     /* Do the copying in a loop.  */
     while ((memory4[s++] = memory0[s2++]) != '\0')
         ;               /* The body of this loop is left empty. */
     /* Return the destination string.  */
     return s1;
 }

int main() {
  int s1;
  int s2;
  cstrcat(s1, s2);
  return 0;
}
