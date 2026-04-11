#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 7a611ab32209fb3b79d662110582bc04e1c2c8b1
URL: https://github.com/gogins/csound-android/commit/7a611ab32209fb3b79d662110582bc04e1c2c8b1
Project Name: csound-android
License: GPL-2.0
termination: true
*/
typedef struct NNode{
    int nxtact;
}INSDS;


#define MEMORY0_SIZE 100000
INSDS memory0[MEMORY0_SIZE];
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
    int head = allocate_memory0(sizeof(INSDS));
    memory0[head].nxtact=head;
    int cyclic=head;

    long long i;
    for (i=2; i<=n; (i = wrap_around(i + 1, INT_MIN, INT_MAX))) {
        int body = allocate_memory0(sizeof(INSDS));
        memory0[body].nxtact=body;
        memory0[cyclic].nxtact=body;
        cyclic=memory0[cyclic].nxtact;
    }
    memory0[cyclic].nxtact=cyclic;
    return head;
}

int main()
{
    long long num = __VERIFIER_nondet_int();
    if( num <= 0 || num > 65534 )
{
        return 0;
}
    int list = initLink( num );
    int ip = list;
    while( ip != 0 )
    {
        int nxt = memory0[ip].nxtact;
        if( ip == nxt )
{
            break;
}
        ip = nxt;
    }
    return 0;
}
