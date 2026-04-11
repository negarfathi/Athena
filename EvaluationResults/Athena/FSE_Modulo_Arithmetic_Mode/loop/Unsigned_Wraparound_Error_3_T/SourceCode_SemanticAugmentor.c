#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uint(void);
/*
Commit Number: 9d4a9ea675bcc1ca144101d058804f4fed37e65d
URL: https://github.com/osxfuse/fuse/commit/9d4a9ea675bcc1ca144101d058804f4fed37e65d
Project Name: fuse
License: GPL-2.0
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
    long long pathlen = __VERIFIER_nondet_uint();
    long long newbufsize = __VERIFIER_nondet_uint();
    long long len = __VERIFIER_nondet_uint();
    if( wrap_around(newbufsize + len + 1, 0, UINT_MAX) == 0xffffffff )
{
        return 0;
}
    if( newbufsize == 0 )
{
        return 0;
}
    while( newbufsize < wrap_around(pathlen + len + 1, 0, UINT_MAX) )
    {
        if( newbufsize >= 0x80000000 )
{
            newbufsize = 0xffffffff;
}
        else
            newbufsize = wrap_around(newbufsize * (2), 0, UINT_MAX);
    }
    return 0;
}
