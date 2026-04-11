#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*

Commit Number: fad2eab749cce970fa87fa46186218b2dfe1adc1
URL: https://github.com/NetHack/NetHack/commit/fad2eab749cce970fa87fa46186218b2dfe1adc1
Project Name: NetHack
License: https://github.com/NetHack/NetHack/commit/60df7b2d3b73900481814084be027375b5888765
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
    long long ROWNO = __VERIFIER_nondet_int();
    long long COLNO = __VERIFIER_nondet_int();
    if( ROWNO <= 0 || COLNO <= 0 || ROWNO > 65534 || COLNO > 65534 )
{
        return 0;
}
    long long levl[ROWNO][COLNO];
    for( long long i = 0 ; i < ROWNO ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
    {
        for( long long j = 0 ; j < COLNO ; (j = wrap_around(j + 1, INT_MIN, INT_MAX)) )
        {
            long long num = __VERIFIER_nondet_int();
            if( num > 0 )
{
                num = wrap_around(-num, INT_MIN, INT_MAX);
}
            levl[i][j] = wrap_around(num % 4, INT_MIN, INT_MAX);
        }
    }
    long long STONE = 0;
    long long found = 0;
    for( long long xmin = 0; !found ; (xmin = wrap_around(xmin + 1, INT_MIN, INT_MAX)) )
    {
        for( long long y = 0 ; y <= wrap_around(COLNO - 1, INT_MIN, INT_MAX); (y = wrap_around(y + 1, INT_MIN, INT_MAX)) )
        {
            if( levl[xmin][y] != STONE )
{
                found = 1;
}
        }
    }
    return 0;
}
