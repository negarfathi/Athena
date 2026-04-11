#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 8030f9c0f092170ceb50cedf59b9c330022825b7
URL: https://github.com/aatmdev/glusterfs/commit/8030f9c0f092170ceb50cedf59b9c330022825b7
Project Name: glusterfs
License: GPL2
termination: FALSE
*/
#define EVEBT_EPOLL_SLOTS 2
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
    long long EVENT_EPOLL_TABLES = 10;
    long long slots_used[10];
    long long ereg[10];
    long long table;
    for( long long i = 0 ; i < 10 ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
    {
        slots_used[i] = __VERIFIER_nondet_int();
        ereg[i] = __VERIFIER_nondet_int();
    }
    long long i = 0;
    while( i < EVENT_EPOLL_TABLES )
    {
        switch( slots_used[i] )
        {
            case EVEBT_EPOLL_SLOTS:
                continue;
            case 0:
                if( !ereg[i] )
{
                    return 0;
}
                else
                    table = ereg[i];
                break;
            default:
                table = ereg[i];
                break;
        }
        if( table )
{
            break;
}
        (i = wrap_around(i + 1, INT_MIN, INT_MAX));
    }
    return 0;
}
