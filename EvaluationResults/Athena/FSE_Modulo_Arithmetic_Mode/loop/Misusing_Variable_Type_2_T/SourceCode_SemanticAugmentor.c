#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 4b35c31087048af38083a5a0273ab5a72064626b
URL: https://github.com/mej/Eterm/commit/4b35c31087048af38083a5a0273ab5a72064626b
Project Name: Eterm
License: MIT
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
long long gettablesize()
{
    long long i = __VERIFIER_nondet_int();
    i = wrap_around(i % 99999, INT_MIN, INT_MAX);
    if( i < 0 )
{
        return wrap_around(-i, INT_MIN, INT_MAX);
}
    else
        return i;
}
int main()
{
    long long i;
    long long max_fds = wrap_around(gettablesize(), LONG_MIN, LONG_MAX);
    for( i = 0 ; i < max_fds ; (i = wrap_around(i + 1, LONG_MIN, LONG_MAX)) )
    {
        //loop
    }

    return 0;
}
