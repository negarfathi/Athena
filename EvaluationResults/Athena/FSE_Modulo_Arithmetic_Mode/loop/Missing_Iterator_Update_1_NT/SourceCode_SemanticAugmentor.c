#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*

Commit Number: fc600b6a8f0dec5642b45c1026dee24c9adb9bc2
URL: https://github.com/freedesktop/dbus/commit/fc600b6a8f0dec5642b45c1026dee24c9adb9bc2
Project Name: dbus
License: GPL2
termination: FALSE

*/
#define EINTR 1
#define OTHER 2
long long errno;
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
long long waitpid()
{
    long long num = __VERIFIER_nondet_int();
    while( num < 0 )
    {
        if( __VERIFIER_nondet_int() && errno != EINTR )
{
            errno = EINTR;
}
        else
            errno = OTHER;
        return num;
    }
    return num;
}

int main()
{

    long long ret = waitpid();
again:
    if( ret == 0 )
    {
        ret = waitpid();
    }
    if( ret < 0 )
{
        if( errno == EINTR )
{
        goto again;
}
}
    return 0;
}
