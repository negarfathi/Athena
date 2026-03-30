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

int init_list(int n, int start) {
  int curr = NULL;
  int tail = curr;

  for (int j = start; j < start+n; j++) {
    curr = allocate_memory0(sizeof(struct list));
    memory0[curr].value = j;
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
  int m = __VERIFIER_nondet_int();
  if (m < 1 || m >= n) return 0;
  int start = __VERIFIER_nondet_int();
  int head = init_list(n,start);
  search(head,start+m);
  return 0;
}
