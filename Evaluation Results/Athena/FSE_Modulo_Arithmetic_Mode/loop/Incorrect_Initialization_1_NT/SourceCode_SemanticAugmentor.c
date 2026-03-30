#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_char(void);
/*
Commit Number: cea58cb6d8fe0d27bfcbab57776bd36d5c724ec3
URL: https://github.com/GNOME/evolution-data-server/commit/cea58cb6d8fe0d27bfcbab57776bd36d5c724ec3
Project Name: evolution-data-server
License: GPL2
termination: false


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

#define MEMORY1_SIZE 100000
long long memory1[MEMORY1_SIZE];
int memory1_freeIndex = 1;
int allocate_memory1(int size) {
   int allocatedIndex = memory1_freeIndex;
   memory1_freeIndex = memory1_freeIndex + size;
   return allocatedIndex;
}

long long strcspn(int strSrc, int str)
{
    int s;
    int t = strSrc;
    while (memory1[t] != '\0')
    {
        s = str;
        while (memory0[s] != '\0')
        {
            if (memory1[t] == memory0[s] )
{
            return t-strSrc;
}
            ++s;
        }
        ++t;
    }
    return 0;
}
int main()
{
int newLine_index = allocate_memory0(2);
memory0[newLine_index + 0] = '\n';
memory0[newLine_index + 1] = '\0';
    int buf_index = allocate_memory1(100);
    for( long long i = 0 ; i < 99 ; (i = wrap_around(i + 1, INT_MIN, INT_MAX)) )
{
        memory1[buf_index + (i)] = __VERIFIER_nondet_char();
}
    memory1[buf_index + (99)] = '\0';
    int p = buf_index;
    while( memory1[p] )
    {
        long long len = strcspn( p , newLine_index);
        p += len;
    }
    return 0;

}
