#include <limits.h>
#include <stdint.h>
/*
d37b2f4794acf1b0b431110c5e1fb23d652c5962
https://github.com/acassen/keepalived/commit/d37b2f4794acf1b0b431110c5e1fb23d652c5962
termination: true
*/


#define MEMORY0_SIZE 100000
long long memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
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
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int strchr(int str, long long c) {
	for (; memory0[str] != 0; ++str) {
		if (memory0[str] == c) {
			return str;
		}
	}
	return 0;
}

int main()
{
    int in_index = allocate_memory0(100);
    for( long long i = 0 ; i < 99 ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
{
        memory0[in_index + (i)] = '\n';
}
    int p = in_index;
    memory0[in_index + (99)] = 0;
    while( memory0[p] )
    {
        int n =strchr( p , '\n');
        if( n == 0 )
{
            n = p + 99;
}
        p = n + 1;
    }
    return 0;
}
