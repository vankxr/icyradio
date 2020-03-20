#ifndef __TFT_H__
#define __TFT_H__

#include <em_device.h>
#include <stdarg.h>
#include "cmu.h"
#include "ft6x36.h"
#include "ili9488.h"
#include "printf.h"
#include "utils.h"
#include "rgb565.h"
#include "images.h"
#include "fonts.h"

typedef struct tft_button_t tft_button_t;
typedef struct tft_graph_t tft_graph_t;
typedef struct tft_textbox_t tft_textbox_t;
typedef struct tft_terminal_t tft_terminal_t;
typedef void (* tft_button_callback_fn_t)(uint32_t);

struct tft_button_t
{
    uint32_t ulID;
    uint16_t usOriginX;
    uint16_t usOriginY;
    uint16_t usWidth;
    uint16_t usHeight;
    char *pszText;
    const font_t *pFont;
    rgb565_t xTextColor;
    rgb565_t xBackColor;
    tft_button_callback_fn_t pfCallback;
    tft_button_t *pPrev;
    tft_button_t *pNext;
};
struct tft_graph_t
{
    uint8_t ubDrawLabelsFlag;
    uint8_t ubRedrawFlag;
    uint16_t usOldX;
    uint16_t usOldY;
    uint16_t usOriginX;
    uint16_t usOriginY;
    uint16_t usWidth;
    uint16_t usHeight;
    float fXScaleMin;
    float fXScaleMax;
    float fXScaleInc;
    float fYScaleMin;
    float fYScaleMax;
    float fYScaleInc;
    char *pszXScaleFmt;
    char *pszYScaleFmt;
    char *pszTitle;
    char *pszXLabel;
    char *pszYLabel;
    const font_t *pFont;
    rgb565_t xGridColor;
    rgb565_t xAxisColor;
    rgb565_t xDataLineColor;
    rgb565_t xTextColor;
    rgb565_t xBackColor;
};
struct tft_textbox_t
{
    uint16_t usX;
    uint16_t usY;
    uint16_t usCursor;
    uint16_t usLen;
    uint16_t usNumLines;
    uint16_t usCurrentLine;
    const font_t *pFont;
    rgb565_t xTextColor;
    rgb565_t xBackColor;
    uint8_t ubLineWrapping;
    uint8_t ubCursorWrapping;
};
struct tft_terminal_t
{
    tft_textbox_t *pTextbox;
    char **ppszBuf;
    uint8_t ubUpdatePending : 1;
};

static inline void tft_display_on()
{
    ili9488_display_on();
}
static inline void tft_display_off()
{
    ili9488_display_off();
}

static inline void tft_set_rotation(uint8_t ubRotation)
{
    ili9488_set_rotation(ubRotation);
}
static inline void tft_set_invert(uint8_t ubOnOff)
{
    ili9488_set_invert(ubOnOff);
}

static inline void tft_fill_screen(rgb565_t xColor)
{
    ili9488_fill_screen(xColor);
}

void tft_init();
void tft_bl_init(uint32_t ulFrequency);
void tft_bl_set(float fBrightness);

void tft_draw_fast_v_line(uint16_t usX, uint16_t usY0, uint16_t usY1, rgb565_t xColor);
void tft_draw_fast_h_line(uint16_t usX0, uint16_t usY0, uint16_t usX1, rgb565_t xColor);
void tft_draw_line(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1, rgb565_t xColor);
void tft_draw_rectangle(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1, rgb565_t xColor, uint8_t ubFill);
void tft_draw_circle(uint16_t usX, uint16_t usY, uint16_t usR, rgb565_t xColor, uint8_t ubFill);

void tft_draw_image(const image_t *pImage, uint16_t usX, uint16_t usY);
void tft_draw_bitmap(const uint8_t *pubBitmap, uint16_t usX, uint16_t usY, uint16_t usW, uint16_t usH, rgb565_t xColor, rgb565_t usBackColor);

uint16_t tft_get_text_height(const font_t *pFont, uint16_t usNumLines);

tft_button_t* tft_button_create(uint32_t ulID, uint16_t usX, uint16_t usY, uint16_t usWidth, uint16_t usHeight, const char *pubStr, const font_t *pFont, rgb565_t xBackColor, rgb565_t xTextColor);
void tft_button_delete(tft_button_t *pButton);
void tft_button_set_callback(tft_button_t *pButton, tft_button_callback_fn_t pfFunc);
void tft_button_draw(tft_button_t *pButton);

tft_graph_t* tft_graph_create(uint16_t usX, uint16_t usY, uint16_t usWidth, uint16_t usHeight, float fXScaleMin, float fXScaleMax, float fXScaleInc, float fYScaleMin, float fYScaleMax, float fYScaleInc, uint8_t ubDrawLabels, const char *pszXScaleFmt, const char *pszYScaleFmt, const char *pszTitle, const char *pszXLabel, const char *pszYLabel, const font_t *pFont, rgb565_t xGridColor, rgb565_t xAxisColor, rgb565_t xDataLineColor, rgb565_t xTextColor, rgb565_t xBackColor);
void tft_graph_delete(tft_graph_t *pGraph);
void tft_graph_clear(tft_graph_t *pGraph);
void tft_graph_draw_frame(tft_graph_t *pGraph);
void tft_graph_draw_data(tft_graph_t *pGraph, float *pfXData, float *pfYData, uint32_t ulDataSize);

uint8_t tft_draw_char(char cChar, const font_t *xFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t xBackColor);
void tft_draw_string(const char *pszStr, const font_t *pFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t xBackColor);
void tft_printf(const font_t *pFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t usBackColor, const char* pszFmt, ...);

tft_textbox_t* tft_textbox_create(uint16_t usX, uint16_t usY, uint16_t usNumLines, uint16_t usLength, uint8_t ubLineWrapping, uint8_t ubCursorWrapping, const font_t *pFont, rgb565_t xTextColor, rgb565_t xBackColor);
void tft_textbox_delete(tft_textbox_t *pTextbox);
void tft_textbox_set_color(tft_textbox_t *pTextbox, rgb565_t xTextColor, rgb565_t xBackColor);
void tft_textbox_clear(tft_textbox_t *pTextbox);
void tft_textbox_clear_line(tft_textbox_t *pTextbox);
void tft_textbox_goto(tft_textbox_t *pTextbox, uint16_t usCursor, uint16_t usLine, uint8_t ubClearLine);
void tft_textbox_draw_string(tft_textbox_t *pTextbox, const char *pszStr);
void tft_textbox_printf(tft_textbox_t *pTextbox, const char* pszFmt, ...);

tft_terminal_t* tft_terminal_create(uint16_t usX, uint16_t usY, uint16_t usNumLines, uint16_t usLength, const font_t *pFont, rgb565_t xTextColor, rgb565_t xBackColor);
void tft_terminal_delete(tft_terminal_t *pTerminal);
void tft_terminal_draw_string(tft_terminal_t *pTerminal, const char *pszStr);
void tft_terminal_update(tft_terminal_t *pTerminal);
void tft_terminal_clear(tft_terminal_t *pTerminal);
void tft_terminal_printf(tft_terminal_t *pTerminal, uint8_t ubUpdate, const char* pszFmt, ...);

#endif  // __TFT_H__