#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: 0a8633d07e660813f630e4ab389bb4da9be8bb63
URL: https://github.com/rkd77/elinks/commit/0a8633d07e660813f630e4ab389bb4da9be8bb63
Project Name: elinks
License: GPL2
termination: TRUE
*/
typedef struct Node{
    long long size;
    long long selected;
}Node;



#define MEMORY0_SIZE 100000
Node memory0[MEMORY0_SIZE];
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

int main()
{
    int menu = allocate_memory0(sizeof(Node));
    memory0[menu].selected = __VERIFIER_nondet_int();
    memory0[menu].size = __VERIFIER_nondet_int();
    if( memory0[menu].selected <= -2 || memory0[menu].size < 1 )
{
        return 0;
}
    long long pos = memory0[menu].selected;
    long long direction;
    long long action_id =  __VERIFIER_nondet_int();
    if( action_id > 0 && pos >= 1 )
    {
        (pos = wrap_around(pos - 1, INT_MIN, INT_MAX));
        direction = -1;
    }
    else
    {
        (pos = wrap_around(pos + 1, INT_MIN, INT_MAX));
        direction = 1;
    }
    pos = wrap_around(pos % (memory0[menu].size), INT_MIN, INT_MAX);
    long long start = pos;
    do{
        pos = wrap_around(pos + (direction), INT_MIN, INT_MAX);
        if( pos == memory0[menu].size )
{ pos = 0;
}
        else if( pos < 0 )
{ pos = wrap_around(memory0[menu].size - 1, INT_MIN, INT_MAX);
}
    }while( pos != start );
    return 0;
}
