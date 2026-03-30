#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*

Commit Number: 8455d26243aef72f7b827ec0d8367b6b7816de07
URL: https://github.com/bminor/binutils-gdb/commit/8455d26243aef72f7b827ec0d8367b6b7816de07
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
    long long reg_count = __VERIFIER_nondet_int();
    if( reg_count > 65534)
{
        return 0;
}
    for( long long i = 0 ; reg_count ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
    {
        //loop
    }
    return 0;
}
