#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: bf1257b40dcac15cb7bb48ba809775885449a5e8
URL: https://github.com/radarsat1/liblo/commit/bf1257b40dcac15cb7bb48ba809775885449a5e8
Project Name: liblo
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
    long long max_msg_size = __VERIFIER_nondet_int();
    long long buffer_read_offset = __VERIFIER_nondet_int();
    long long buffer_bytes_left = __VERIFIER_nondet_int();
    if( max_msg_size < -1 || buffer_read_offset <= 0 || buffer_bytes_left < 0 )
{
        return 0;
}
    long long size = 64;
    while( buffer_bytes_left < wrap_around(size / 2, INT_MIN, INT_MAX))
    {
        size = wrap_around(size * (2), INT_MIN, INT_MAX);
        if( max_msg_size != -1 && size > max_msg_size )
        {
            size = max_msg_size;
            break;
        }
        buffer_bytes_left = wrap_around(size - buffer_bytes_left, INT_MIN, INT_MAX);
    }
    return 0;
}
