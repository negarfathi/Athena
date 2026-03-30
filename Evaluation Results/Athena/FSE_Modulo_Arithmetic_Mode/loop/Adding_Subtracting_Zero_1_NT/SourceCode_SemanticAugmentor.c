#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: c3115350eb8bb635d0fdb4dbbb0d0541f38ed19c
URL: https://github.com/Sugon-Beijing/libvncserver/commit/c3115350eb8bb635d0fdb4dbbb0d0541f38ed19c
Project Name: libvncserver
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

    long long linesToRead = __VERIFIER_nondet_int();
    if( linesToRead < 0 )
{
        return 0;
}
    long long h = __VERIFIER_nondet_int();
    while( h > 0 )
    {
        if( linesToRead > h )
{
            linesToRead = h;
}
        h = wrap_around(h - (linesToRead), INT_MIN, INT_MAX);
    }
    return 0;

}
