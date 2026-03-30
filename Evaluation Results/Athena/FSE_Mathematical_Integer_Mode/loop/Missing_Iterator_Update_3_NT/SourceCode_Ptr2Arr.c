extern int __VERIFIER_nondet_int(void);
/*
Commit Number: 8ddb6410edb0c4e87b4c6b9d0887868977c8eff5
URL: https://github.com/mirror/busybox/commit/8ddb6410edb0c4e87b4c6b9d0887868977c8eff5
Project Name: busybox
License: GPL2
termination: FALSE
*/
int flag = 0;
#define MEMORY0_SIZE 100000
int memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int fopen_or_warn()
{

    flag++;
    if( flag > 10 )// avoid almost-sure
        return 0;
    int i =  __VERIFIER_nondet_int();
    if( i >= 0 )
        return 0;
    else
        return i;
}
int main()
{
    int len = __VERIFIER_nondet_int();
    if( len <= 0 )
        return 0;
    int argv1_index = allocate_memory0(len);
    for( int i = 0 ; i < len - 1 ; i++ )
        memory0[argv1_index + (i)] = __VERIFIER_nondet_int();
    memory0[argv1_index + (len-1)] = 0;
    int argv = argv1_index;
    int fp = 0;
    goto GOT_NEW_FILE;
    do{
        if( memory0[argv] > 0 )
        {
            fp = fopen_or_warn();
            if( fp == 0 )
                continue;
        }
        argv++;
GOT_NEW_FILE:
    fp++;
    }while( memory0[argv] );
    return 0;
}
