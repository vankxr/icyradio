#ifndef __DEBUG_MACROS_H__
#define __DEBUG_MACROS_H__

#include <stdio.h>

#define DBGPRINTLN_CTX(FORMAT, ...)  fprintf(stderr, "[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINT_CTX(FORMAT, ...)  fprintf(stderr, "[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINTLN(FORMAT, ...) fprintf(stderr, FORMAT "\r\n", ##__VA_ARGS__)
#define DBGPRINT(FORMAT, ...) fprintf(stderr, FORMAT, ##__VA_ARGS__)

#define FNBDBGPRINTLN_CTX(FN, FORMAT, ...)  FN("[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define FNBDBGPRINT_CTX(FN, FORMAT, ...)  FN("[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define FNBDBGPRINTLN(FN, FORMAT, ...) FN(FORMAT "\r\n", ##__VA_ARGS__)
#define FNBDBGPRINT(FN, FORMAT, ...) FN(FORMAT, ##__VA_ARGS__)

#endif