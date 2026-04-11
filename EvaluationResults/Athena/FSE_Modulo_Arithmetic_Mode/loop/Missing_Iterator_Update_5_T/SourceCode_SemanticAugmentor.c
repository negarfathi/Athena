#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 7644143cd6f7e029f3a8ea64f5fb0ab33ec39f72
URL: https://github.com/aeroevan/android_kernel_asus_grouper/commit/7644143cd6f7e029f3a8ea64f5fb0ab33ec39f72
Project Name: android_kernel_asus_grouper
License: GPL2
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
    long long MCE_LOG_LEN = __VERIFIER_nondet_int();
    if( MCE_LOG_LEN <= 0 || MCE_LOG_LEN > 1000)
{
        return 0;
}
    long long mcelog_entry[MCE_LOG_LEN];
    for( long long i = 0; i < MCE_LOG_LEN; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
{
        mcelog_entry[i] = __VERIFIER_nondet_int();
}
    long long entry = __VERIFIER_nondet_int();
    if( entry < 0 )
{
        return 0;
}
    for( ; ; )
    {
        if( entry >= MCE_LOG_LEN )
{
            return 0;
}
        if( mcelog_entry[entry] )
        {
            (entry = wrap_around(entry + 1, INT_MIN, INT_MAX));
            continue;
        }
        break;
    }
    return 0;
}
