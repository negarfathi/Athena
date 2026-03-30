#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 92eb7a2f28d551acedeb5752263267a64b1f5ddf
URL: https://github.com/cleaton/android_kernel_samsung_smdk4210/commit/92eb7a2f28d551acedeb5752263267a64b1f5ddf
Project Name: android_kernel_samsung_smdk4210
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
    long long nfds = __VERIFIER_nondet_int();
    long long nr = __VERIFIER_nondet_int();
    long long NR_OPEN = __VERIFIER_nondet_int();
    while( nfds <= nr )
    {
        nfds = wrap_around(nfds * 2, INT_MIN, INT_MAX);
        if( nfds > NR_OPEN )
{
            nfds = NR_OPEN;
}
    }
    return 0;
}
