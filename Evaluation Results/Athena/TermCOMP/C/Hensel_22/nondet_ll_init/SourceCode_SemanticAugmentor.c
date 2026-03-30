#include <stdlib.h>

extern int __VERIFIER_nondet_int();

struct list {
  int value;
  int next;
};

#define MEMORY0_SIZE 100000
struct list memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY1_SIZE 100000
struct list memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

#define MEMORY2_SIZE 100000
struct list memory2[MEMORY2_SIZE];
int memory2_freeIndex = 1;
int allocate_memory2(int size) {
   int allocatedIndex = memory2_freeIndex;
   memory2_freeIndex = memory2_freeIndex + size;
   return allocatedIndex;
}

int init_list(int n) {
  int curr = NULL;
  int tail = curr;

  for (int j = 0; j < n; j++) {
    curr = allocate_memory1(sizeof(struct list));
    memory1[curr].value = __VERIFIER_nondet_int();
    memory1[curr].next = tail;
    tail = curr;
  }

  return curr;
}

int main() {
  int n = __VERIFIER_nondet_int();
  int head = init_list(n);
  return 0;
}
