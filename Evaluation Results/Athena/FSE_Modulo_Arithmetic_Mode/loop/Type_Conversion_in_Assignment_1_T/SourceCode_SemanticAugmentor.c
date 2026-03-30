#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 57e7400d046f382ee94745791ccb0e1a06efb2e4
URL: https://github.com/kmatheussen/das_watchdog/commit/57e7400d046f382ee94745791ccb0e1a06efb2e4
Project Name: das_watchdog
License: GPL-2.0
termination: TRUE
*/
#define EOF -1
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
long long fgetc()
{
    if( flag > 1000 )
{
        return -1;
}
    (flag = wrap_around(flag + 1, INT_MIN, INT_MAX));
    long long c = __VERIFIER_nondet_int();
    if( c < 0 )
{
        c = wrap_around(-c, INT_MIN, INT_MAX);
}
    c = wrap_around(c % 256, INT_MIN, INT_MAX);
    return c;
}
int main()
{
    long long temp;
    for( ; ; )
    {
        temp = fgetc();
        if( temp == '\0' || temp == EOF )
{
            return 0;
}
        switch( temp ){
            case EOF:
                return 0;
            case '=':
                break;
            case '\0':
                break;
            default:
                break;
        }
    }
    return 0;
}
