#include <limits.h>
#include <stdint.h>
extern long long __VERIFIER_nondet_int(void);
/*
Commit Number: d5396e453ff39428c38a1b5af261e4e89bd90e8f
URL: https://github.com/cmus/cmus/commit/d5396e453ff39428c38a1b5af261e4e89bd90e8f
Project Name: cmus
License: GPL-2.0
termination: true


This case is simplified by this bug from GitHub.

In C:
ssize_t read  (int fd, void *buf, size_t count);
Return the number of bytes read successfully, return -1 on error and set errno. If the end of the file has been reached before the read is adjusted, the read returns 0 this time.

This program uses arrays to rewrite read function.

In this program:
int read ( int loc, int len );
When EOF, return 0;
When abnormal, return -1;
When read, return the number of bytes read successfully.

flag: When the end of the file is reached, flag is 1; otherwise flag is 0.

This program is terminating.
*/


long long flag = 0;
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
long long read( long long loc , long long len )
{
    long long count = 0;
    if( flag == 1 )
{ //whether EOF or not
        return 0;
}
    while( loc < len )
    {
        long long num =  __VERIFIER_nondet_int();
        if( num == 0 ) //abnormal
        {
            return -1;
        }
        else
        {
            if( num < 0 )
{
                num =  wrap_around(-num, INT_MIN, INT_MAX);
}
            num = wrap_around(num % 1000, INT_MIN, INT_MAX);
            (count = wrap_around(count + 1, INT_MIN, INT_MAX));
            if( num < 995 ) //read a char
            {
                (loc = wrap_around(loc + 1, INT_MIN, INT_MAX));
                continue;
            }
            else // EOF
            {
                flag = 1;
                return count;
            }
        }
    }
    return count;
}
int main()
{
    long long pos = 0;
    long long size = __VERIFIER_nondet_int();
    flag = 0;
    long long errno = 0;
    if( size <= 0 || size > 65536 )
{
        return 0;
}
    while( pos < size )
    {
        long long rc = read( pos, wrap_around(size - pos, INT_MIN, INT_MAX));
        if( rc == -1 )
        {
            (errno = wrap_around(errno + 1, INT_MIN, INT_MAX));// abnormal is OK
            if( errno == 5 )
{
                return 0;
}
            continue;
        }
        if( rc == 0 )
{
            (rc = wrap_around(rc + 1, INT_MIN, INT_MAX));
}
        pos = wrap_around(pos + (rc), INT_MIN, INT_MAX);
    }
    return 0;
}
