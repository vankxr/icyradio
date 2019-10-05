#ifndef __DEBUG_MACROS_H__
#define __DEBUG_MACROS_H__

#include "printf.h"

#define DBGPRINTLN_CTX(FORMAT, ...)  printf("[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINT_CTX(FORMAT, ...)  printf("[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINTLN(FORMAT, ...) printf(FORMAT "\r\n", ##__VA_ARGS__)
#define DBGPRINT(FORMAT, ...) printf(FORMAT, ##__VA_ARGS__)

#define FDBGPRINTLN_CTX(FN, FORMAT, ...)  fctprintf(FN, 0, "[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define FDBGPRINT_CTX(FN, FORMAT, ...)  fctprintf(FN, 0, "[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define FDBGPRINTLN(FN, FORMAT, ...) fctprintf(FN, 0, FORMAT "\r\n", ##__VA_ARGS__)
#define FDBGPRINT(FN, FORMAT, ...) fctprintf(FN, 0, FORMAT, ##__VA_ARGS__)

#define FNBDBGPRINTLN_CTX(FN, FORMAT, ...)  FN("[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define FNBDBGPRINT_CTX(FN, FORMAT, ...)  FN("[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define FNBDBGPRINTLN(FN, FORMAT, ...) FN(FORMAT "\r\n", ##__VA_ARGS__)
#define FNBDBGPRINT(FN, FORMAT, ...) FN(FORMAT, ##__VA_ARGS__)

#endif  // __DEBUG_MACROS_H__
