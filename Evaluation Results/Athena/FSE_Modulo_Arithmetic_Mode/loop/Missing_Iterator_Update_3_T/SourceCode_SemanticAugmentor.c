#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 8ddb6410edb0c4e87b4c6b9d0887868977c8eff5
URL: https://github.com/mirror/busybox/commit/8ddb6410edb0c4e87b4c6b9d0887868977c8eff5
Project Name: busybox
License: GPL2
termination: TRUE

*/
long long flag = 0;
#define MEMORY0_SIZE 100000
long long memory0[MEMORY0_SIZE];
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

long long fopen_or_warn()
{

    (flag = wrap_around(flag + 1, INT_MIN, INT_MAX));
    if( flag > 10 )
{// avoid almost-sure
        return 0;
}
    long long i =  __VERIFIER_nondet_int();
    if( i >= 0 )
{
        return 0;
}
    else
        return i;
}
int main()
{
    long long len = __VERIFIER_nondet_int();
    if( len <= 0 )
{
        return 0;
}
    int argv1_index = allocate_memory0(len);
    for( long long i = 0 ; i < wrap_around(len - 1, INT_MIN, INT_MAX) ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
{
        memory0[argv1_index + (i)] = __VERIFIER_nondet_int();
}
    memory0[argv1_index + (len-1)] = 0;
    int argv = argv1_index;
    long long fp = 0;
    goto GOT_NEW_FILE;
    do{
        if( memory0[argv] > 0 )
        {
            fp = fopen_or_warn();
            if( fp == 0 )
            {
                argv++;
                continue;
            }
        }
        argv++;
GOT_NEW_FILE:
    (fp = wrap_around(fp + 1, INT_MIN, INT_MAX));
    }while( memory0[argv] );
    return 0;
}
