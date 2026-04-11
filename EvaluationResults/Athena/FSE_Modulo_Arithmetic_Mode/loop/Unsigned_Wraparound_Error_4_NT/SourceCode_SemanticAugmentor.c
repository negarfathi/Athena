#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uint(void);
/*

Commit Number: ce9d4462423ac74a1dbbc4ce52c2c81cfcdda766
URL: https://github.com/ArtifexSoftware/mupdf/commit/ce9d4462423ac74a1dbbc4ce52c2c81cfcdda766
Project Name: mupdf
License: AGPL-3.0
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
    long long n = __VERIFIER_nondet_uint();
    while( n > 0 )
    {
        long long len = n;
        if( len > 16 )
{
            len = 16;
}
        n = wrap_around(n - (16), 0, UINT_MAX);
    }
    return 0;
}
