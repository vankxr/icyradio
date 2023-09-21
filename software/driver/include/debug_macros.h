#ifndef __DEBUG_MACROS_H__
#define __DEBUG_MACROS_H__

#include <linux/printk.h>

#define DBGPRINTLN_CTX(FORMAT, ...)  printk("[%s] - " FORMAT "\r\n", __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINT_CTX(FORMAT, ...)  printk("[%s] - " FORMAT, __FUNCTION__, ##__VA_ARGS__)
#define DBGPRINTLN(FORMAT, ...) printk(FORMAT "\r\n", ##__VA_ARGS__)
#define DBGPRINT(FORMAT, ...) printk(FORMAT, ##__VA_ARGS__)

#endif  // __DEBUG_MACROS_H__
