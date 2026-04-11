#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 78574a66b5b286e26839877640592980de089d64
URL: https://github.com/XQuartz/xorg-server/commit/78574a66b5b286e26839877640592980de089d64
Project Name: xorg-server
License: MIT
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
    long long num_crtc = __VERIFIER_nondet_int();
    long long num_output = __VERIFIER_nondet_int();
    if( num_crtc > 65534 || num_output > 65534 )
{
        return 0;
}
    for( i = 0 ; i < num_crtc ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
    {
        for( i = 0 ; i < num_output ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
        {
            //do other
        }
    }
    return 0;
}
