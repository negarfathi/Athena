#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_uchar(void);
extern long long __VERIFIER_nondet_char(void);
/*

Commit Number: 34c30c8ad3725e0c4a7242278ff2606f422cff93
URL: https://github.com/asterisk/asterisk/commit/34c30c8ad3725e0c4a7242278ff2606f422cff93
Project Name: asterisk
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
	long long c1 = __VERIFIER_nondet_uchar();
	long long c2 =  __VERIFIER_nondet_char();
	long long ac;
	for( ac = c1 ; ac != c2 ; (ac = wrap_around(ac + 1, 0, UCHAR_MAX)) )
	{
        //do nothing;
	}
	return 0;
 }
