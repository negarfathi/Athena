#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*

Commit Number: fa741cd4fffbbaa5d4ba9a15f53550ac7817cc92
URL: https://github.com/behdad/fontconfig/commit/fa741cd4fffbbaa5d4ba9a15f53550ac7817cc92
Project Name: fontconfig
License: MIT
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
    long long h = __VERIFIER_nondet_int();
    long long hash = __VERIFIER_nondet_int();
    long long rehash = __VERIFIER_nondet_int();
    if( h < 0 || hash <= 0 || rehash <= 0 || rehash > hash || hash > 65534)
{
        return 0;
}
    long long i = wrap_around(h % hash, INT_MIN, INT_MAX);
    long long r = 0;
    while( i < hash )
    {
        if( !r )
{ r = wrap_around(( h % rehash ) + 1, INT_MIN, INT_MAX);
}
        i = wrap_around(i + (r), INT_MIN, INT_MAX);
    }
    return 0;
}
