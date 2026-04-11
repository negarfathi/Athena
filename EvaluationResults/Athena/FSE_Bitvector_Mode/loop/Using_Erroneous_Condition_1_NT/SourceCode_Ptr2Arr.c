extern int __VERIFIER_nondet_int(void);
/*

Commit Number: 0a8633d07e660813f630e4ab389bb4da9be8bb63
URL: https://github.com/rkd77/elinks/commit/0a8633d07e660813f630e4ab389bb4da9be8bb63
Project Name: elinks
License: GPL2
termination: FALSE
*/
typedef struct Node{
    int size;
    int selected;
}Node;



#define MEMORY0_SIZE 100000
Node memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
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
    if( memory0[menu].selected < -2 || memory0[menu].size < 1 )
        return 0;
    int pos = memory0[menu].selected;
    int direction;
    int action_id =  __VERIFIER_nondet_int();
    if( action_id > 0 )
    {
        pos--;
        direction = -1;
    }
    else
    {
        pos++;
        direction = 1;
    }
    pos %= memory0[menu].size;
    do{
        pos += direction;
        if( pos == memory0[menu].size ) pos = 0;
        else if( pos < 0 ) pos = memory0[menu].size - 1;
    }while( pos != memory0[menu].selected );
    return 0;
}
