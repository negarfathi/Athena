#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_ushort(void);
/*

Commit Number: f9bfec180f91671d8ba72a01cab1781c1f5e9999
URL: https://github.com/squireblackdens/daapd/commit/f9bfec180f91671d8ba72a01cab1781c1f5e9999
Project Name: daapd
License: GPL-2.0
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
    long long s, seqnum, len;
    seqnum = __VERIFIER_nondet_ushort();
    len = __VERIFIER_nondet_ushort();;
    for( s = seqnum ; s < wrap_around(seqnum + len, INT_MIN, INT_MAX); (s = wrap_around(s + 1, 0, USHRT_MAX)) )
    {

    }
    return 0;
}
