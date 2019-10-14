#ifndef __FONTS_H__
#define __FONTS_H__

#include <stdint.h>

typedef struct
{
    uint16_t usBitmapOffset; // Pointer into GFXfont->bitmap
    uint8_t ubWidth;         // Bitmap dimensions in pixels
    uint8_t ubHeight;        // Bitmap dimensions in pixels
    uint8_t ubXAdvance;      // Distance to advance cursor (x axis)
    int8_t bXOffset;         // X dist from cursor pos to UL corner
    int8_t bYOffset;         // Y dist from cursor pos to UL corner
} glyph_t;

typedef struct
{
    const uint8_t *pubBitmap;   // Glyph bitmaps, concatenated
    const glyph_t *pGlyph;      // Glyph array
    char cFirstChar;            // ASCII extents (first char)
    char cLastChar;             // ASCII extents (last char)
    uint8_t ubYAdvance;         // Newline distance (y axis)
    uint8_t ubLineOffset;
} font_t;

// Declare all fonts
extern const font_t xSans9pFont;
extern const font_t xSans18pFont;

#endif // __FONTS_H__