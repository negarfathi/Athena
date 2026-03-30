#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uchar(void);
/*
Commit Number: 3322180d4b452e11545b70abc9b2d5af3d241361
URL: https://github.com/asterisk/asterisk/commit/3322180d4b452e11545b70abc9b2d5af3d241361
Project Name: asterisk
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
    long long l = __VERIFIER_nondet_uchar();

    while( l-- )
    {
l = wrap_around(l, 0, UCHAR_MAX);
        if( l-- )
        {
l = wrap_around(l, 0, UCHAR_MAX);
            //loop
        }
l = wrap_around(l, 0, UCHAR_MAX);
    }
l = wrap_around(l, 0, UCHAR_MAX);
    return 0;
}
