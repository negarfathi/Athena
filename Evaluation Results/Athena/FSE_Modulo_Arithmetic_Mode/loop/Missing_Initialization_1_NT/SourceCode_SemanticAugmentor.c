#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 407a3d94f566a68c7a862fcdac812bf53741af94
URL: https://github.com/FFmpeg/FFmpeg/commit/407a3d94f566a68c7a862fcdac812bf53741af94
Project Name: FFmpeg
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
    long long res = 0;
    long long pkt = __VERIFIER_nondet_int();
    while( pkt < 10 )
    {
        while( res == 0 )
        {
            res = __VERIFIER_nondet_int();
            (pkt = wrap_around(pkt + 1, INT_MIN, INT_MAX));
        }
    }
    return 0;
}
