#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: a6cba062051f345e8ebfdff34aba071ed73d923f
URL: https://github.com/FFmpeg/FFmpeg/commit/a6cba062051f345e8ebfdff34aba071ed73d923f
Project Name: FFmpeg
License: LGPL-2.1
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
long long ff_subtitles_next_line()
{
    long long i = __VERIFIER_nondet_int();
    i = wrap_around(i % 1000, INT_MIN, INT_MAX);
    if( flag == 1 )
{
        return 0;
}
    if( i == 0 )
    {
        flag = 1;
        return 0;
    }
    else if( i < 0 )
{
    return wrap_around(-i, INT_MIN, INT_MAX);
}
    else
        return i;
}

int main()
{
    long long b = __VERIFIER_nondet_int();
    long long end = __VERIFIER_nondet_int();
    if( b < 0 || end < 0 )
{
        return 0;
}
    while( b < end )
    {
        b = wrap_around(b + (ff_subtitles_next_line()), INT_MIN, INT_MAX);
        if( b >= wrap_around(end - 4, INT_MIN, INT_MAX) )
{
        return 0;
}
    }
    return 0;
}
