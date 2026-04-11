#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 8a7acbf81de51ff991bf8211eff248b46c2b5421
URL: https://github.com/ximion/appstream/commit/8a7acbf81de51ff991bf8211eff248b46c2b5421
Project Name: appstream
License: LGPL-2.1
termination: TRUE
*/
long long flag = 0;
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
long long mdb_cursor_get()
{
    long long i =  __VERIFIER_nondet_int();;
    (flag = wrap_around(flag + 1, INT_MIN, INT_MAX));
    if( flag > 1000 )
{// avoid almost-sure
        return 1;
}
    if( i >= 0 )
{
        return 0;
}
    else
        return 1;
}

int main()
{
    long long rc;
    rc = mdb_cursor_get();
    long long dval_mv_size = __VERIFIER_nondet_int();
    while( rc == 0 )
    {
        if( dval_mv_size <= 0 )
        {
            rc = mdb_cursor_get();
            continue;
        }
        rc = mdb_cursor_get();
    }
    return 0;
}
