#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 358a11a928cdca474c82472a2ca0d619426439f1
URL: https://github.com/brltty/brltty/commit/358a11a928cdca474c82472a2ca0d619426439f1
Project Name: brltty
License: LGPL-2.1
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
    long long i = 0;
    long long base = __VERIFIER_nondet_int();
    long long count = __VERIFIER_nondet_int();
    long long old_[10], new_[10];
    for( long long j = 0 ; j < 9 ; (j = wrap_around(j + 1, INT_MIN, INT_MAX)) )
    {
        old_[j] = __VERIFIER_nondet_int();
        new_[j] = __VERIFIER_nondet_int();
    }
    old_[9] = 0;
    new_[9] = 0;
    while( base < count )
    {
        long long number = base;
        while( old_[i] != new_[i] )
        {
            if( (number = wrap_around(number + 1, INT_MIN, INT_MAX)) == count )
{
                break;
}
        }
        (i = wrap_around(i + 1, INT_MIN, INT_MAX));
        base = wrap_around(base + (8), INT_MIN, INT_MAX);
    }
    return 0;
}
