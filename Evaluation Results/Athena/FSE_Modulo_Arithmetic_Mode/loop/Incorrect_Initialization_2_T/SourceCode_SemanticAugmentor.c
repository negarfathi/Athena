#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
d37b2f4794acf1b0b431110c5e1fb23d652c5962
https://github.com/acassen/keepalived/commit/d37b2f4794acf1b0b431110c5e1fb23d652c5962
termination: true
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
long long matroska_deliver_packet( long long q )
{
    if( q == 1 )
{
        return 0;
}
    else
        return 1;
}
long long flag = 0;
long long res_return()
{
    if( flag++ < 100 )
{
flag = wrap_around(flag, INT_MIN, INT_MAX);
        return __VERIFIER_nondet_int();
}
flag = wrap_around(flag, INT_MIN, INT_MAX);
    return -1;
}
int main()
{
    long long matroska =  __VERIFIER_nondet_int();
    long long res = 0;
    while( matroska_deliver_packet( matroska) )
    {
        res = 0;
        while( res == 0 )
        {
            long long id =  __VERIFIER_nondet_int();
            switch( id ){
                case 1:
                    if( res = res_return() < 0 )
{
                        break;
}
                    if( res = res_return() == 0 )
{
                        res = 1;
}
                    break;

                default:
                case 2:
                    res = res_return();
                    break;
            }
        }
        if( res == -1 )
{
            matroska = 1;
}
    }
    return 0;
}
