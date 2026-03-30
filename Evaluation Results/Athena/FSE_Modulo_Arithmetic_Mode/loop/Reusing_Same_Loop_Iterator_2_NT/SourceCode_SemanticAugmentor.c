#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 24abdc9d313db1d320cb8c768c968098a4dda2c4
URL: https://github.com/bminor/binutils-gdb/commit/24abdc9d313db1d320cb8c768c968098a4dda2c4
Project Name: binutils-gdb
License: GPL2
termination: FALSE
*/
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
int main()
{
    long long i,j;
    long long num = __VERIFIER_nondet_int();
    if( num > 65534 )
{
        return 0;
}
    for( i = 0 ; i < num ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
    {
        for( i = 0 ; i < 3 ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
        {
            //do other
        }
    }
    return 0;
}
