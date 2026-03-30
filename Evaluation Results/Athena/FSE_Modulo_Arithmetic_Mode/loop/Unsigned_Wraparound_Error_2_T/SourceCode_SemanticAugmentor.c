#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uint(void);
/*
Commit Number: 8852f5f8ff3d521897175ddeb711d6b77e03fa8a
URL: https://github.com/GNUnet-Mirror/GNUnet/commit/8852f5f8ff3d521897175ddeb711d6b77e03fa8a
Project Name: GNUnet
License: AGPL-3.0
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
    long long ui = 1;
    long long size = __VERIFIER_nondet_uint();
    long long BUFFSIZE = __VERIFIER_nondet_uint();
    if( size < BUFFSIZE )
{
        size = BUFFSIZE;
}
    while( (ui < size) && ( wrap_around(ui * 2, 0, UINT_MAX) > ui ) )
{
        ui = wrap_around(ui * (2), 0, UINT_MAX);
}
    return 0;
}
