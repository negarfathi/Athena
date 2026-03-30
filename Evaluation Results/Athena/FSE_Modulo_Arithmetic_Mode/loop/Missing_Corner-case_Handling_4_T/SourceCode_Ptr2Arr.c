extern int __VERIFIER_nondet_int(void);
/*
Commit Number: 6a603b5b55262c443bf780f3c112a586cb3d9901
URL: https://github.com/ArtifexSoftware/mupdf/commit/6a603b5b55262c443bf780f3c112a586cb3d9901
Project Name: mupdf
License: agpl-3.0
termination: true
*/
typedef struct NNode{
    int h;
    int next;
}Node;


#define MEMORY0_SIZE 100000
Node memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int initLink(int n){
    int head = allocate_memory0(sizeof(Node));
    memory0[head].h=1;
    memory0[head].next=0;
    int cyclic=head;

    int i;
    for (i=2; i<=n; i++) {
        int body = allocate_memory0(sizeof(Node));
        memory0[body].h=i;
        memory0[body].next=0;
        memory0[cyclic].next=body;
        cyclic=memory0[cyclic].next;
    }
    memory0[cyclic].next=head;
    return head;
}
int findEnd( int list )
{
    int begin = list;
    while( memory0[begin].next != list )
        begin = memory0[begin].next;
    return begin;
}

int main()
{
    int num = __VERIFIER_nondet_int();
    if( num <= 0 || num > 65534 )
        return 0;
    int list = initLink( num );
    int node = list;
    int end = findEnd( list );
    float h = 0;
    while( node != end )
    {
        if( memory0[node].h > h )
            h = memory0[node].h;
        node = memory0[node].next;
    }
    return 0;
}
