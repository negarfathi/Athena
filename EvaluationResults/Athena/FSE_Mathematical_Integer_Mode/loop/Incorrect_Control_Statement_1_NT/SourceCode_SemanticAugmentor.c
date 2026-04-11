extern char __VERIFIER_nondet_char(void);
/*
Commit Number: e6801c90311679fc0854af73da95fe58079c59f4
URL: https://github.com/FreeRADIUS/freeradius-server/commit/e6801c90311679fc0854af73da95fe58079c59f4
Project Name: freeradius-serve
License: GPL2
termination: false


*/
#define MEMORY0_SIZE 100000
char memory0[MEMORY0_SIZE];
int memory0_freeIndex = 1;
int allocate_memory0(int size) {
   int allocatedIndex = memory0_freeIndex;
   memory0_freeIndex = memory0_freeIndex + size;
   return allocatedIndex;
}

int main()
{
    int stop = 0;
    int array_index = allocate_memory0(101);
    for( int i = 0 ; i < 100 ; i++ )
        memory0[array_index + (i)] =  __VERIFIER_nondet_char();
    memory0[array_index + (100)] = 0;
    int p = array_index;
    while( (memory0[p]) && (!stop) )
    {
        switch(memory0[p]){
        case '}':
            stop = 1;
            break;

        case ':':
            if( memory0[p+1] && (memory0[p+1] == '-')){
                p += 2;
                stop = 1;
            }
            break;
        default:
            p++;
        }
    }
    return 0;
}
