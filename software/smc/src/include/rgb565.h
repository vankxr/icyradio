#ifndef __RGB565_H__
#define __RGB565_H__

#include <stdint.h>

#define RGB565_BLACK        0x0000      /*   0,   0,   0 */
#define RGB565_WHITE        0xFFFF      /* 255, 255, 255 */
#define RGB565_LIGHTGREY    0xC618      /* 192, 192, 192 */
#define RGB565_DARKGREY     0x7BEF      /* 128, 128, 128 */
#define RGB565_LIGHTORANGE  0xFE73
#define RGB565_ORANGE       0xFD20      /* 255, 165,   0 */
#define RGB565_DARKORANGE   0x8200
#define RGB565_LIGHTPINK    0xFDDF
#define RGB565_PINK         0xF81F
#define RGB565_DARKPINK     0x9009
#define RGB565_LIGHTRED     0xFD34
#define RGB565_RED          0xF800      /* 255,   0,   0 */
#define RGB565_DARKRED      0x6000
#define RGB565_MAROON       0x7800      /* 128,   0,   0 */
#define RGB565_LIGHTPURPLE  0xCCFF
#define RGB565_PURPLE       0x780F      /* 128,   0, 128 */
#define RGB565_DARKPURPLE   0x4010
#define RGB565_LIGHTMAGENTA 0xFD5F
#define RGB565_MAGENTA      0xF81F      /* 255,   0, 255 */
#define RGB565_DARKMAGENTA  0x8008
#define RGB565_LIGHTBLUE    0xB6DF
#define RGB565_BLUE         0x001F      /*   0,   0, 255 */
#define RGB565_NAVY         0x000F      /*   0,   0, 128 */
#define RGB565_DARKBLUE     0x000D
#define RGB565_LIGHTCYAN    0xC7FF
#define RGB565_CYAN         0x07FF      /*   0, 255, 255 */
#define RGB565_DARKCYAN     0x03EF      /*   0, 128, 128 */
#define RGB565_LIGHTTEAL    0xBF5F
#define RGB565_TEAL         0x0438
#define RGB565_DARKTEAL     0x020C
#define RGB565_LIGHTGREEN   0xBFF7
#define RGB565_GREEN        0x07E0      /*   0, 255,   0 */
#define RGB565_DARKGREEN    0x03E0      /*   0, 128,   0 */
#define RGB565_OLIVE        0x7BE0      /* 128, 128,   0 */
#define RGB565_GREENYELLOW  0xAFE5      /* 173, 255,  47 */
#define RGB565_LIGHTYELLOW  0xFFF8
#define RGB565_YELLOW       0xFFE0      /* 255, 255,   0 */
#define RGB565_DARKYELLOW   0x8400

#define RGB565_FROM_RGB(r, g, b)    (((uint16_t)r & 0xF8) << 8) | (((uint16_t)g & 0xFC) << 3) | (((uint16_t)b & 0xF8) >> 3)

#define RGB565_EXTRACT_RED(c)       ((c & 0xF800) >> 8)
#define RGB565_EXTRACT_GREEN(c)     ((c & 0x07E0) >> 3)
#define RGB565_EXTRACT_BLUE(c)      ((c & 0x001F) << 3)

typedef uint16_t rgb565_t;

#endif // __RGB565_H__