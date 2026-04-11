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

int init_list(int n) {
  int tail = NULL;
  int curr = allocate_memory0(sizeof(struct list));
  memory0[curr].value = n;
  memory0[curr].next = tail;
  tail = curr;

  for (int j = 1; j < n; j++) {
    curr = allocate_memory0(sizeof(struct list));
    memory0[curr].value = __VERIFIER_nondet_int();
    memory0[curr].next = tail;
    tail = curr;
  }

  return curr;
}

void search(int head, int m) {
  int curr = head;
  while(memory0[curr].value != m) {
    curr = memory0[curr].next;
  }
}

int main() {
  int n = __VERIFIER_nondet_int();
  if (n < 1) return 0;
  int head = init_list(n);
  search(head,n);
  return 0;
}
