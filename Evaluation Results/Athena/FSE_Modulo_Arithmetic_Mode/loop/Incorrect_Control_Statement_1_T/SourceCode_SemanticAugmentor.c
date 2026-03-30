#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_char(void);
/*
Commit Number: e6801c90311679fc0854af73da95fe58079c59f4
URL: https://github.com/FreeRADIUS/freeradius-server/commit/e6801c90311679fc0854af73da95fe58079c59f4
Project Name: freeradius-serve
License: GPL2
termination: TRUE
*/
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

int main()
{
    long long stop = 0;
    int array_index = allocate_memory0(101);
    for( long long i = 0 ; i < 100 ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
{
        memory0[array_index + (i)] =  __VERIFIER_nondet_char();
}
    memory0[array_index + (100)] = 0;
    int p = array_index;
    while( (memory0[p]) && (!stop) )
    {
        switch(memory0[p]){
        case '}':
            stop = 1;
            break;

        case ':':
            if( memory0[p+1] && (memory0[p+1] == '-')){
                p += 2;
                stop = 1;
                break;
            }

        default:
            p++;
            break;
        }
    }
    return 0;
}
