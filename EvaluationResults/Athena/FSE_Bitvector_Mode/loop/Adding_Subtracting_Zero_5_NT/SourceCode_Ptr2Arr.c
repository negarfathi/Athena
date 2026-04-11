extern int __VERIFIER_nondet_int(void);
/*
Commit Number: 7a611ab32209fb3b79d662110582bc04e1c2c8b1
URL: https://github.com/gogins/csound-android/commit/7a611ab32209fb3b79d662110582bc04e1c2c8b1
Project Name: csound-android
License: GPL-2.0
termination: false
*/
typedef struct NNode{
    int nxtact;
}INSDS;


#define MEMORY0_SIZE 100000
INSDS memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int initLink(int n){
    int head = allocate_memory0(sizeof(INSDS));
    memory0[head].nxtact=head;
    int cyclic=head;

    int i;
    for (i=2; i<=n; i++) {
        int body = allocate_memory0(sizeof(INSDS));
        memory0[body].nxtact=body;
        memory0[cyclic].nxtact=body;
        cyclic=memory0[cyclic].nxtact;
    }
    memory0[cyclic].nxtact=cyclic;
    return head;
}

int main()
{
    int num = __VERIFIER_nondet_int();
    if( num <= 0 || num > 65534 )
        return 0;
    int list = initLink( num );
    int ip = list;
    while( ip != 0 )
    {
        int nxt = memory0[ip].nxtact;
        ip = nxt;
    }
    return 0;
}
