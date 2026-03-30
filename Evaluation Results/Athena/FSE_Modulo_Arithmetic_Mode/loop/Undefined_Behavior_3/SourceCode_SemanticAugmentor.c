extern unsigned int __VERIFIER_nondet_uint(void);
/*
Commit Number: d597655f771979c70c08f8f8ed84c1319da121e8
URL: https://github.com/FFmpeg/FFmpeg/commit/d597655f771979c70c08f8f8ed84c1319da121e8
Project Name: FFmpeg
License: LGPL-2.1
termination: POTENTIAL FALSE
*/

int gtv_0;
int main()
{
    unsigned int val = __VERIFIER_nondet_uint();
    int bytes = 1;
    while( val >> (gtv_0 = bytes * 8) )
        bytes++;
    return 0;
}
