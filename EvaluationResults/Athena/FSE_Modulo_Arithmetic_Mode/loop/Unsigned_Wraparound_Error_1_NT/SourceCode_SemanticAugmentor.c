#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uint(void);
/*

Commit Number: 5ff623fc990210e4bb5dc04447f9e95ad83e5195
URL: https://github.com/alsa-project/alsa-lib/commit/5ff623fc990210e4bb5dc04447f9e95ad83e5195
Project Name: alsa-lib
License: LGPL-2.1
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
    long long best = __VERIFIER_nondet_uint();
    long long pre;
    long long cur;
    long long st_max = __VERIFIER_nondet_uint();
    long long it_min = __VERIFIER_nondet_uint();
    if( st_max <= it_min )
{
        return 0;
}
    if( best == 0 )
{
        return 0;
}
    for( cur = best ;  ; cur = wrap_around(cur + (best), 0, UINT_MAX) )
    {
        if( st_max < cur )
{
        break;
}
        if( it_min > cur  )
{
        continue;
}
    }
    return 0;
}
