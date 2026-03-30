#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 6a603b5b55262c443bf780f3c112a586cb3d9901
URL: https://github.com/ArtifexSoftware/mupdf/commit/6a603b5b55262c443bf780f3c112a586cb3d9901
Project Name: mupdf
License: agpl-3.0
termination: true
*/
typedef struct NNode{
    long long h;
    int next;
}Node;


#define MEMORY0_SIZE 100000
Node memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
long long wrap_around(long long value, long long lower_bound, long long upper_bound) {
    long long range = upper_bound - lower_bound + 1;
    if (value > upper_bound) {
        return lower_bound + (value - upper_bound - 1) % range;
    }
    else if (value < lower_bound) {
        return upper_bound - (lower_bound - value - 1) % range;
    }
    return value;
}
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int initLink(long long n){
    int head = allocate_memory0(sizeof(Node));
    memory0[head].h=1;
    memory0[head].next=0;
    int cyclic=head;

    long long i;
    for (i=2; i<=n; (i = wrap_around(i + 1, INT_MIN, INT_MAX))) {
        int body = allocate_memory0(sizeof(Node));
        memory0[body].h=i;
        memory0[body].next=0;
        memory0[cyclic].next=body;
        cyclic=memory0[cyclic].next;
    }
    memory0[cyclic].next=head;
    return head;
}
int findEnd( int list )
{
    int begin = list;
    while( memory0[begin].next != list )
{
        begin = memory0[begin].next;
}
    return begin;
}

int main()
{
    long long num = __VERIFIER_nondet_int();
    if( num <= 0 || num > 65534 )
{
        return 0;
}
    int list = initLink( num );
    int node = list;
    int end = findEnd( list );
    long long h = 0;
    while( node != end )
    {
        if( memory0[node].h > h )
{
            h = memory0[node].h;
}
        node = memory0[node].next;
    }
    return 0;
}
