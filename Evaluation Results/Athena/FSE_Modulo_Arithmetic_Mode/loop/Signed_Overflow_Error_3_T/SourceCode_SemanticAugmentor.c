#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uint(void);
/*
Commit Number: d306f3d3513c62342fec4e31457766f2473f9e9a
URL: https://github.com/git/git/commit/d306f3d3513c62342fec4e31457766f2473f9e9a
Project Name: git
License: GPL-2.0
termination: TRUE
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
    long long number = __VERIFIER_nondet_uint();
    long long width;
    for( width = 1; number >= 10 ; (width = wrap_around(width + 1, INT_MIN, INT_MAX)) )
{
        number = wrap_around(number / (10), 0, UINT_MAX);
}
    return 0;
}
