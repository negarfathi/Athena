struct _IO_FILE;
typedef struct _IO_FILE FILE;
extern struct _IO_FILE *stderr;
extern int fprintf(FILE *__restrict __stream, const char *__restrict __format, ...);
extern void exit(int __status) __attribute__ ((__noreturn__));
// Could not find a call to an error function.
// CPAchecker can not guarantee that this harness exposes the found property violation.
unsigned int __VERIFIER_nondet_uint() {
  unsigned int retval;
  retval = 2U;
  return retval;
}
