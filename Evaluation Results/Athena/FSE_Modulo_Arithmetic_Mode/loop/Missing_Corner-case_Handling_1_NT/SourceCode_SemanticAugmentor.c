#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: cd64eeac116d3bb4871d114b105440b4dd11b8e0
URL: https://github.com/DPDK/dpdk/commit/cd64eeac116d3bb4871d114b105440b4dd11b8e0
Project Name: dpdk
License: BSD-3-Clause
termination: FALSE
*/

long long flag = 0;
long long count = 0;
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
long long read()
{
    if( flag == 1 || count > 100 )
{ //whether EOF or not
        return 0;
}
    long long num =  __VERIFIER_nondet_int();
    if( num <= 0 ) //abnormal
    {
        return -1;
    }
    else
    {
        num = wrap_around(num % 1000, INT_MIN, INT_MAX);
        if( num < 995 ) //read a char
        {
            (count = wrap_around(count + 1, INT_MIN, INT_MAX));
            return num;
        }
        else // EOF
        {
            flag = 1;
            return 0;
        }
    }

}
int main()
{
    while(1)
    {
        if( read() < 0 )
{
            break;
}
    }
    return 0;
}
