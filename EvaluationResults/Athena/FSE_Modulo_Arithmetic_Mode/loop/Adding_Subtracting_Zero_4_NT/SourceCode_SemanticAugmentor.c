#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: caa6003b6419d001593478a46fb4cbf8e502e818
URL: https://github.com/tytso/e2fsprogs/commit/caa6003b6419d001593478a46fb4cbf8e502e818
Project Name: e2fsprogs
License: GPL-2.0
termination: false
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
long long read( long long loc , long long len )
{
    long long count = 0;
    if( flag == 1 )
{ //whether EOF or not
        return 0;
}
    while( loc < len )
    {
        long long num =  __VERIFIER_nondet_int();
        if( num == 0 ) //abnormal
        {
            return -1;
        }
        else
        {
            if( num < 0 )
{
                num =  wrap_around(-num, INT_MIN, INT_MAX);
}
            num = wrap_around(num % 1000, INT_MIN, INT_MAX);
            (count = wrap_around(count + 1, INT_MIN, INT_MAX));
            if( num < 995 ) //read a char
            {
                (loc = wrap_around(loc + 1, INT_MIN, INT_MAX));
                continue;
            }
            else // EOF
            {
                flag = 1;
                return count;
            }
        }
    }
    return count;
}
int main()
{
    long long count =__VERIFIER_nondet_int();
    if( count <= 0 )
{
        return 0;
}
    long long ret;
    long long buf = 0;
    while( count > 0 )
    {
        ret = read( buf, count );
        if( ret < 0 )
{
            return 0;
}
        count = wrap_around(count - (ret), INT_MIN, INT_MAX);
        buf = wrap_around(buf + (ret), INT_MIN, INT_MAX);
    }
    return 0;
}
