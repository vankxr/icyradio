#include "tft.h"

static tft_button_t *pButtonList = NULL;
static tft_button_callback_fn_t pfButtonCallback = NULL;

void tft_touch_callback(uint8_t ubEvent, uint16_t usX, uint16_t usY)
{
    switch(g_ubILI9488Rotation)
    {
        case ILI9488_ROTATION_HORIZONTAL:
        {
            usX = (usX * ILI9488_TFTWIDTH) / ILI9488_TFTHEIGHT;
            usY = (usY * ILI9488_TFTHEIGHT) / ILI9488_TFTWIDTH;
        }
        break;
        case ILI9488_ROTATION_VERTICAL:
            break;
        case ILI9488_ROTATION_HORIZONTAL_FLIP:
        {
            usX = ILI9488_TFTWIDTH - usX;
            usY = ILI9488_TFTHEIGHT - usY;
            usX = (usX * ILI9488_TFTWIDTH) / ILI9488_TFTHEIGHT;
            usY = (usY * ILI9488_TFTHEIGHT) / ILI9488_TFTWIDTH;
        }
        break;
        case ILI9488_ROTATION_VERTICAL_FLIP:
        {
            usX = ILI9488_TFTWIDTH - usX;
            usY = ILI9488_TFTHEIGHT - usY;
        }
        break;
        default:
            break;
    }

    if(ubEvent == FT6X06_REG_Pn_XH_EVENT_FLAG_PRESS_DOWN)
    {
        for(tft_button_t *pButton = pButtonList; pButton; pButton = pButton->pNext)
        {
            if((usX >= pButton->usOriginX) &&
               (usX < (pButton->usOriginX + pButton->usWidth)) &&
               (usY >= pButton->usOriginY) &&
               (usY < (pButton->usOriginY + pButton->usHeight)))
                pfButtonCallback(pButton->ubID);
        }
    }

    static uint16_t usLastX, usLastY;

    if(ubEvent == FT6X06_REG_Pn_XH_EVENT_FLAG_CONTACT)
    {
        tft_draw_line(usLastX, usLastY, usX, usY, RGB565_YELLOW);
    }

    usLastX = usX;
    usLastY = usY;
}

void tft_init()
{
    ft6x36_set_event_callback(tft_touch_callback);
}
void tft_bl_init(uint32_t ulFrequency)
{
    cmu_hfper0_clock_gate(CMU_HFPERCLKEN0_TIMER0, 1);

    TIMER0->CTRL = TIMER_CTRL_RSSCOIST | TIMER_CTRL_PRESC_DIV1 | TIMER_CTRL_CLKSEL_PRESCHFPERCLK | TIMER_CTRL_FALLA_NONE | TIMER_CTRL_RISEA_NONE | TIMER_CTRL_MODE_UP;
    TIMER0->TOP = (HFPERB_CLOCK_FREQ / ulFrequency) - 1;
    TIMER0->CNT = 0x0000;

    TIMER0->CC[0].CTRL = TIMER_CC_CTRL_PRSCONF_LEVEL | TIMER_CC_CTRL_CUFOA_NONE | TIMER_CC_CTRL_COFOA_SET | TIMER_CC_CTRL_CMOA_CLEAR | TIMER_CC_CTRL_MODE_PWM;
    TIMER0->CC[0].CCV = 0x0000;

    TIMER0->ROUTELOC0 = TIMER_ROUTELOC0_CC0LOC_LOC2;
    TIMER0->ROUTEPEN |= TIMER_ROUTEPEN_CC0PEN;

    TIMER0->CMD = TIMER_CMD_START;
}
void tft_bl_set(float fBrightness)
{
    if(fBrightness > 1.f)
        fBrightness = 1.f;

    if(fBrightness < 0.f)
        fBrightness = 0.f;

    TIMER0->CC[0].CCVB = TIMER0->TOP * fBrightness;
}

void tft_draw_fast_v_line(uint16_t usX, uint16_t usY0, uint16_t usY1, rgb565_t xColor)
{
    if(usY0 > usY1)
        SWAP(usY0, usY1);

    if(!ili9488_set_window(usX, usY0, usX, usY1))
        return;

    uint32_t ulDataLen = usY1 - usY0 + 1;

    while(ulDataLen--)
        ili9488_send_pixel_data(xColor);
}
void tft_draw_fast_h_line(uint16_t usX0, uint16_t usY0, uint16_t usX1, rgb565_t xColor)
{
    if(usX0 > usX1)
        SWAP(usX0, usX1);

    if(!ili9488_set_window(usX0, usY0, usX1, usY0))
        return;

    uint32_t ulDataLen = usX1 - usX0 + 1;

    while(ulDataLen--)
        ili9488_send_pixel_data(xColor);
}
void tft_draw_line(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1, rgb565_t xColor)
{
    if(usX0 == usX1)
    {
        tft_draw_fast_v_line(usX0, usY0, usY1, xColor);

        return;
    }

    if(usY0 == usY1)
    {
        tft_draw_fast_h_line(usX0, usY0, usX1, xColor);

        return;
    }

    uint8_t ubSteep = ABS(usY1 - usY0) > ABS(usX1 - usX0);
    uint8_t ubdx, ubdy;
    int8_t bErr;
    int8_t bYstep;

    if(ubSteep)
    {
        SWAP(usX0, usY0);
        SWAP(usX1, usY1);
    }

    if(usX0 > usX1)
    {
        SWAP(usX0, usX1);
        SWAP(usY0, usY1);
    }

    ubdx = usX1 - usX0;
    ubdy = ABS(usY1 - usY0);

    bErr = ubdx / 2;

    if(usY0 < usY1)
        bYstep = 1;
    else
        bYstep = -1;

    while(usX0 <= usX1)
    {
        if(ubSteep)
            ili9488_set_pixel_color(usY0, usX0, xColor);
        else
            ili9488_set_pixel_color(usX0, usY0, xColor);

        bErr -= ubdy;

        if(bErr < 0)
        {
            usY0 += bYstep;
            bErr += ubdx;
        }

        usX0++;
    }
}
void tft_draw_rectangle(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1, rgb565_t xColor, uint8_t ubFill)
{
    if(usX0 > usX1)
        SWAP(usX0, usX1);

    if(usY0 > usY1)
        SWAP(usY0, usY1);

    if(ubFill)
    {
        if(!ili9488_set_window(usX0, usY0, usX1, usY1))
            return;

        uint32_t ulDataLen = (usY1 - usY0 + 1) * (usX1 - usX0 + 1);

        while(ulDataLen--)
            ili9488_send_pixel_data(xColor);
    }
    else
    {
        tft_draw_fast_h_line(usX0, usY0, usX1, xColor);
        tft_draw_fast_v_line(usX1, usY0, usY1, xColor);
        tft_draw_fast_v_line(usX0, usY0, usY1, xColor);
        tft_draw_fast_h_line(usX0, usY1, usX1, xColor);
    }
}
void tft_draw_circle(uint16_t usX, uint16_t usY, uint16_t usR, rgb565_t xColor, uint8_t ubFill)
{
    int16_t sF = 1 - usR;
    int16_t sDdFx = 1;
    int16_t sDdFy = -2 * usR;
    int16_t sXh = 0;
    int16_t sYh = usR;

    if(ubFill)
    {
        for(int16_t i = usY - usR; i <= usY + usR; i++)
            ili9488_set_pixel_color(usX, i, xColor);
    }
    else
    {
        ili9488_set_pixel_color(usX, usY + usR, xColor);
        ili9488_set_pixel_color(usX, usY - usR, xColor);
        ili9488_set_pixel_color(usX + usR, usY, xColor);
        ili9488_set_pixel_color(usX - usR, usY, xColor);
    }

    while(sXh < sYh)
    {
        if(sF >= 0)
        {
            sYh--;
            sDdFy += 2;
            sF += sDdFy;
        }

        sXh++;
        sDdFx += 2;
        sF += sDdFx;

        if(ubFill)
        {
            for(int16_t i = usY - sYh; i <= usY + sYh; i++)
            {
                ili9488_set_pixel_color(usX + sXh, i, xColor);
                ili9488_set_pixel_color(usX - sXh, i, xColor);
            }

            for(int16_t i = usY - sXh; i <= usY + sXh; i++)
            {
                ili9488_set_pixel_color(usX + sYh, i, xColor);
                ili9488_set_pixel_color(usX - sYh, i, xColor);
            }
        }
        else
        {
            ili9488_set_pixel_color(usX + sXh, usY + sYh, xColor);
            ili9488_set_pixel_color(usX - sXh, usY + sYh, xColor);
            ili9488_set_pixel_color(usX + sXh, usY - sYh, xColor);
            ili9488_set_pixel_color(usX - sXh, usY - sYh, xColor);
            ili9488_set_pixel_color(usX + sYh, usY + sXh, xColor);
            ili9488_set_pixel_color(usX - sYh, usY + sXh, xColor);
            ili9488_set_pixel_color(usX + sYh, usY - sXh, xColor);
            ili9488_set_pixel_color(usX - sYh, usY - sXh, xColor);
        }
    }
}

void tft_draw_image(const image_t *pImage, uint16_t usX, uint16_t usY)
{
    if(!pImage)
        return;

    if(!pImage->pPixels)
        return;

    if(!ili9488_set_window(usX, usY, usX + pImage->usWidth - 1, usY + pImage->usHeight - 1))
        return;

    rgb565_t *pPixels = pImage->pPixels;
    uint32_t ulImgSize = pImage->usWidth * pImage->usHeight;

    while(ulImgSize--)
        ili9488_send_pixel_data(*pPixels++);
}
void tft_draw_bitmap(const uint8_t *pubBitmap, uint16_t usX, uint16_t usY, uint16_t usW, uint16_t usH, rgb565_t xColor, rgb565_t xBackColor)
{
    if(!pubBitmap)
        return;

    if(!ili9488_set_window(usX, usY, usX + usW - 1, usY + usH - 1))
        return;

    for(uint32_t i = 0; i < usW * usH; i++)
    {
        if(*(pubBitmap + (i / 8)) & (0x80 >> (i % 8)))
            ili9488_send_pixel_data(xColor);
        else
            ili9488_send_pixel_data(xBackColor);
    }
}

uint16_t tft_get_text_height(const font_t *pFont, uint16_t usNumLines)
{
    return (usNumLines * pFont->ubYAdvance) + pFont->ubLineOffset;
}
static uint8_t tft_search_char(char *ubStr, uint8_t ubChar)
{
    uint8_t ubCnt = 0;

    while(*ubStr++)
    {
        if(*ubStr == ubChar)
            ubCnt++;
    }

    return ubCnt;
}
static uint16_t tft_get_str_pix_len(const font_t *pFont, const uint8_t *pubStr)
{
    uint16_t usLength = 0;

    while(*pubStr)
    {
        usLength += pFont->pGlyph[*pubStr - pFont->cFirstChar].ubXAdvance;
        pubStr++;
    }

    return usLength;
}

tft_button_t* tft_button_create(uint8_t ubID, uint16_t usX, uint16_t usY, uint16_t usWidth, uint16_t usHeight)
{
    tft_button_t *pNewButton = (tft_button_t *)malloc(sizeof(tft_button_t));

    if(!pNewButton)
        return NULL;

    memset(pNewButton, 0, sizeof(tft_button_t));

    pNewButton->ubID = ubID;
    pNewButton->usOriginX = usX;
    pNewButton->usOriginY = usY;
    pNewButton->usWidth = usWidth;
    pNewButton->usHeight = usHeight;

    // Insert at the head of the list
    pNewButton->pNext = pButtonList;
    pNewButton->pPrev = NULL;

    if(pButtonList)
        pButtonList->pPrev = pNewButton;

    pButtonList = pNewButton;

    return pNewButton;
}
void tft_button_delete(tft_button_t *pButton)
{
    if(!pButton)
        return;

    if(pButtonList == pButton)
        pButtonList = pButton->pNext;

    if(pButton->pPrev)
        pButton->pPrev->pNext = pButton->pNext;

    if(pButton->pNext)
        pButton->pNext->pPrev = pButton->pPrev;

    free(pButton);
}
void tft_button_clear()
{
    while(pButtonList)
    {
        tft_button_t *pButton = pButtonList;

        pButtonList = pButton->pNext;

        free(pButton);
    }
}
void tft_set_button_callback(tft_button_callback_fn_t pfFunc)
{
    pfButtonCallback = pfFunc;
}
void tft_button_draw(tft_button_t *pButton, const uint8_t *pubStr, const font_t *pFont, rgb565_t xBackColor, rgb565_t xTextColor)
{
    tft_draw_rectangle(pButton->usOriginX, pButton->usOriginY, pButton->usOriginX + pButton->usWidth - 1, pButton->usOriginY + pButton->usHeight - 1, xBackColor, 1);
    tft_printf(pFont, pButton->usOriginX + ((pButton->usWidth - tft_get_str_pix_len(pFont, pubStr)) / 2) - 1, pButton->usOriginY + ((pButton->usHeight - pFont->ubYAdvance - pFont->ubLineOffset) / 2) - 1, xTextColor, xBackColor, pubStr);
}

tft_graph_t* tft_graph_create(uint16_t usX, uint16_t usY, uint16_t usWidth, uint16_t usHeight, float fXScaleMin, float fXScaleMax, float fXScaleInc, float fYScaleMin, float fYScaleMax, float fYScaleInc, uint8_t ubDrawLabels, const char *pszXScaleFmt, const char *pszYScaleFmt, const char *pszTitle, const char *pszXLabel, const char *pszYLabel, const font_t *pFont, rgb565_t xGridColor, rgb565_t xAxisColor, rgb565_t xDataLineColor, rgb565_t xTextColor, rgb565_t xBackColor)
{
    tft_graph_t *pNewGraph = (tft_graph_t *)malloc(sizeof(tft_graph_t));

    if(!pNewGraph)
        return NULL;

    pNewGraph->ubDrawLabelsFlag = ubDrawLabels;
    pNewGraph->ubRedrawFlag = 1;
    pNewGraph->usOriginX = usX;
    pNewGraph->usOriginY = usY;
    pNewGraph->usWidth = usWidth;
    pNewGraph->usHeight = usHeight;
    pNewGraph->fXScaleMin = fXScaleMin;
    pNewGraph->fXScaleMax = fXScaleMax;
    pNewGraph->fXScaleInc = fXScaleInc;
    pNewGraph->fYScaleMin = fYScaleMin;
    pNewGraph->fYScaleMax = fYScaleMax;
    pNewGraph->fYScaleInc = fYScaleInc;

    pNewGraph->pszXScaleFmt = strdup(pszXScaleFmt);

    if(!pNewGraph->pszXScaleFmt)
    {
        free(pNewGraph);

        return NULL;
    }

    pNewGraph->pszYScaleFmt = strdup(pszYScaleFmt);

    if(!pNewGraph->pszYScaleFmt)
    {
        free(pNewGraph->pszXScaleFmt);
        free(pNewGraph);

        return NULL;
    }

    pNewGraph->pszTitle = strdup(pszTitle);

    if(!pNewGraph->pszTitle)
    {
        free(pNewGraph->pszXScaleFmt);
        free(pNewGraph->pszYScaleFmt);
        free(pNewGraph);

        return NULL;
    }

    pNewGraph->pszXLabel = strdup(pszXLabel);

    if(!pNewGraph->pszXLabel)
    {
        free(pNewGraph->pszTitle);
        free(pNewGraph->pszXScaleFmt);
        free(pNewGraph->pszYScaleFmt);
        free(pNewGraph);

        return NULL;
    }

    pNewGraph->pszYLabel = strdup(pszYLabel);

    if(!pNewGraph->pszYLabel)
    {
        free(pNewGraph->pszXLabel);
        free(pNewGraph->pszTitle);
        free(pNewGraph->pszXScaleFmt);
        free(pNewGraph->pszYScaleFmt);
        free(pNewGraph);

        return NULL;
    }

    pNewGraph->pFont = pFont;
    pNewGraph->xGridColor = xGridColor;
    pNewGraph->xAxisColor = xAxisColor;
    pNewGraph->xDataLineColor = xDataLineColor;
    pNewGraph->xTextColor = xTextColor;
    pNewGraph->xBackColor = xBackColor;

    return pNewGraph;
}
void tft_graph_delete(tft_graph_t *pGraph)
{
    free(pGraph->pszYLabel);
    free(pGraph->pszXLabel);
    free(pGraph->pszTitle);
    free(pGraph->pszXScaleFmt);
    free(pGraph->pszYScaleFmt);

    free(pGraph);
}
void tft_graph_clear(tft_graph_t *pGraph)
{
    pGraph->ubRedrawFlag = 1;

    tft_draw_rectangle(pGraph->usOriginX, pGraph->usOriginY, pGraph->usOriginX + pGraph->usWidth - 1,  pGraph->usOriginY + pGraph->usHeight - 1, pGraph->xBackColor, 1);
}
void tft_graph_draw_frame(tft_graph_t *pGraph)
{
    // draw y scale
    for(float i = pGraph->fYScaleMin; i <= pGraph->fYScaleMax; i += pGraph->fYScaleInc)
    {
        uint16_t usYH = (i - pGraph->fYScaleMax) * pGraph->usHeight / (pGraph->fYScaleMin - pGraph->fYScaleMax) + pGraph->usOriginY;

        if(i == 0.f)
            tft_draw_line(pGraph->usOriginX, usYH, pGraph->usOriginX + pGraph->usWidth, usYH, pGraph->xAxisColor);
        else
            tft_draw_line(pGraph->usOriginX, usYH, pGraph->usOriginX + pGraph->usWidth, usYH, pGraph->xGridColor);

        if(pGraph->ubDrawLabelsFlag)
        {
            char *pubYlabel = (char *)malloc(sprintf(NULL, pGraph->pszYScaleFmt, i) + 1);

            if(pubYlabel)
            {
                sprintf(pubYlabel, pGraph->pszYScaleFmt, i);

                tft_printf(&xSans9pFont, pGraph->usOriginX - tft_get_str_pix_len(pGraph->pFont, pubYlabel) - pGraph->pFont->ubLineOffset, usYH - ((pGraph->pFont->ubYAdvance + pGraph->pFont->ubLineOffset) / 2), pGraph->xTextColor, pGraph->xBackColor, pubYlabel);

                free(pubYlabel);
            }
        }
    }

    // draw x scale
    for(float i = pGraph->fXScaleMin; i <= pGraph->fXScaleMax; i += pGraph->fXScaleInc)
    {
        uint16_t usXH = (i - pGraph->fXScaleMin) * pGraph->usWidth / (pGraph->fXScaleMax - pGraph->fXScaleMin) + pGraph->usOriginX;

        if(i == 0.f)
            tft_draw_line(usXH, pGraph->usOriginY, usXH, pGraph->usOriginY + pGraph->usHeight, pGraph->xAxisColor);
        else
            tft_draw_line(usXH, pGraph->usOriginY, usXH, pGraph->usOriginY + pGraph->usHeight, pGraph->xGridColor);

        if(pGraph->ubDrawLabelsFlag)
        {
            char *pubXlabel = (char *)malloc(sprintf(NULL, pGraph->pszXScaleFmt, i) + 1);

            if(pubXlabel)
            {
                sprintf(pubXlabel, pGraph->pszXScaleFmt, i);

                tft_printf(pGraph->pFont, usXH - (tft_get_str_pix_len(pGraph->pFont, pubXlabel) / 2), pGraph->usOriginY + pGraph->usHeight - 1, pGraph->xTextColor, pGraph->xBackColor, pubXlabel);

                free(pubXlabel);
            }
        }
    }

    if(pGraph->ubDrawLabelsFlag)
    {
        tft_printf(pGraph->pFont, pGraph->usOriginX + (pGraph->usWidth / 2) - (tft_get_str_pix_len(pGraph->pFont, pGraph->pszTitle) / 2), pGraph->usOriginY - pGraph->pFont->ubYAdvance - pGraph->pFont->ubLineOffset, pGraph->xTextColor, pGraph->xBackColor, pGraph->pszTitle);
        tft_printf(pGraph->pFont, pGraph->usOriginX + (pGraph->usWidth / 2) - (tft_get_str_pix_len(pGraph->pFont, pGraph->pszXLabel) / 2), pGraph->usOriginY + pGraph->usHeight - 1 + pGraph->pFont->ubYAdvance, pGraph->xAxisColor, pGraph->xBackColor, pGraph->pszXLabel);
        tft_printf(pGraph->pFont, pGraph->usOriginX, pGraph->usOriginY - pGraph->pFont->ubYAdvance - pGraph->pFont->ubLineOffset, pGraph->xAxisColor, pGraph->xBackColor, pGraph->pszYLabel);
    }
}
void tft_graph_draw_data(tft_graph_t *pGraph, float *pfXData, float *pfYData, uint32_t ulDataSize)
{
    while(ulDataSize--)
    {
        float fXData = *pfXData++;
        float fYData = *pfYData++;

        if(fXData < pGraph->fXScaleMin)
            continue;
        if(fXData > pGraph->fXScaleMax)
            continue;

        if(fYData < pGraph->fYScaleMin)
            continue;
        if(fYData > pGraph->fYScaleMax)
            continue;

        uint16_t usXH = (fXData - pGraph->fXScaleMin) * pGraph->usWidth / (pGraph->fXScaleMax - pGraph->fXScaleMin) + pGraph->usOriginX;
        uint16_t usYH = (fYData - pGraph->fYScaleMax) * pGraph->usHeight / (pGraph->fYScaleMin - pGraph->fYScaleMax) + pGraph->usOriginY;

        if(pGraph->ubRedrawFlag)
        {
            pGraph->usOldX = usXH;
            pGraph->usOldY = usYH;

            pGraph->ubRedrawFlag = 0;
        }

        tft_draw_line(pGraph->usOldX, pGraph->usOldY, usXH, usYH, pGraph->xDataLineColor);

        pGraph->usOldX = usXH;
        pGraph->usOldY = usYH;
    }
}

uint8_t tft_draw_char(char cChar, const font_t *pFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t xBackColor)
{
    if((cChar < pFont->cFirstChar) || (cChar > pFont->cLastChar))
        cChar = '?';

    cChar -= pFont->cFirstChar;

    tft_draw_bitmap(pFont->pubBitmap + pFont->pGlyph[cChar].usBitmapOffset, usX + pFont->pGlyph[cChar].bXOffset, usY + pFont->ubYAdvance + pFont->pGlyph[cChar].bYOffset - 1, pFont->pGlyph[cChar].ubWidth, pFont->pGlyph[cChar].ubHeight, xColor, xBackColor);

    return pFont->pGlyph[cChar].ubXAdvance;
}
void tft_draw_string(char *pszStr, const font_t *pFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t xBackColor)
{
    uint16_t usXh = usX;
    uint16_t usYh = usY;

    while(*pszStr)
    {
        if(*pszStr == '\n')
            usYh += pFont->ubYAdvance;
        else if(*pszStr == '\r')
            usXh = usX;
        else
            usXh += tft_draw_char(*pszStr, pFont, usXh, usYh, xColor, xBackColor);

        pszStr++;
    }
}
void tft_printf(const font_t *pFont, uint16_t usX, uint16_t usY, rgb565_t xColor, rgb565_t xBackColor, const char* pszFmt, ...)
{
    va_list args;
    va_start(args, pszFmt);

    uint32_t ulStrLen = vsnprintf(NULL, 0, pszFmt, args);
    char *pszBuf = (char *)malloc(ulStrLen + 1);

    if(!pszBuf)
    {
        va_end(args);

        return;
    }

    vsnprintf(pszBuf, ulStrLen + 1, pszFmt, args);

    tft_draw_string(pszBuf, pFont, usX, usY, xColor, xBackColor);

    free(pszBuf);

    va_end(args);
}

tft_textbox_t* tft_textbox_create(uint16_t usX, uint16_t usY, uint16_t usNumLines, uint16_t usLenght, uint8_t ubLineWrapping, uint8_t ubCursorWrapping, const font_t *pFont, rgb565_t xColor, rgb565_t xBackColor)
{
    tft_textbox_t *pNewTextbox = (tft_textbox_t *)malloc(sizeof(tft_textbox_t));

    if(!pNewTextbox)
        return NULL;

    memset(pNewTextbox, 0, sizeof(tft_textbox_t));

    pNewTextbox->usX = usX;
    pNewTextbox->usY = usY;
    pNewTextbox->usNumLines = usNumLines;
    pNewTextbox->usLen = usLenght;
    pNewTextbox->pFont = pFont;
    pNewTextbox->xColor = xColor;
    pNewTextbox->xBackColor = xBackColor;
    pNewTextbox->ubCursorWrapping = ubCursorWrapping;
    pNewTextbox->ubLineWrapping = ubLineWrapping;

    tft_textbox_clear(pNewTextbox);

    return pNewTextbox;
}
void tft_textbox_delete(tft_textbox_t *pTextbox)
{
    free(pTextbox);
}
void tft_textbox_set_color(tft_textbox_t *pTextbox, rgb565_t xColor, rgb565_t xBackColor)
{
    pTextbox->xColor = xColor;
    pTextbox->xBackColor = xBackColor;
}
void tft_textbox_clear(tft_textbox_t *pTextbox)
{
    tft_draw_rectangle(
        pTextbox->usX,
        pTextbox->usY,
        pTextbox->usX + pTextbox->usLen - 1,
        pTextbox->usY + tft_get_text_height(pTextbox->pFont, pTextbox->usNumLines) - 1,
        pTextbox->xBackColor,
        1
        );

    pTextbox->usCursor = pTextbox->usX;
    pTextbox->usCurrentLine = 0;
}
void tft_textbox_clear_line(tft_textbox_t *pTextbox)
{
    tft_draw_rectangle(
        pTextbox->usX,
        pTextbox->usY + (pTextbox->usCurrentLine * pTextbox->pFont->ubYAdvance) + ((!!pTextbox->usCurrentLine) * pTextbox->pFont->ubLineOffset),
        pTextbox->usX + pTextbox->usLen - 1,
        pTextbox->usY + ((pTextbox->usCurrentLine + 1) * pTextbox->pFont->ubYAdvance) + pTextbox->pFont->ubLineOffset - 1,
        pTextbox->xBackColor,
        1
        );

    pTextbox->usCursor = pTextbox->usX;
}
void tft_textbox_goto(tft_textbox_t *pTextbox, uint16_t usCursor, uint16_t usLine, uint8_t ubClearLine)
{
    usCursor += pTextbox->usX;

    if(usCursor > pTextbox->usLen + pTextbox->usX)
        usCursor = pTextbox->usLen + pTextbox->usX;

    if(usCursor < pTextbox->usX)
        usCursor = pTextbox->usX;

    if(usLine > pTextbox->usNumLines - 1)
        usLine = pTextbox->usNumLines - 1;

    pTextbox->usCursor = usCursor;
    pTextbox->usCurrentLine = usLine;

    if(ubClearLine)
        tft_textbox_clear_line(pTextbox);
}
void tft_textbox_draw_string(tft_textbox_t *pTextbox, char *pszStr)
{
    while(*pszStr)
    {
        if(*pszStr == '\n')
        {
            if(pTextbox->ubLineWrapping)
            {
                pTextbox->usCurrentLine++;

                if(pTextbox->usCurrentLine >= pTextbox->usNumLines)
                    pTextbox->usCurrentLine = 0;
            }
            else if(pTextbox->usCurrentLine < pTextbox->usNumLines - 1)
                pTextbox->usCurrentLine++;
        }
        else if(*pszStr == '\r')
        {
            tft_textbox_clear_line(pTextbox);
        }
        else
        {
            if((pTextbox->usCursor + pTextbox->pFont->pGlyph[*pszStr - pTextbox->pFont->cFirstChar].ubXAdvance) >= (pTextbox->usLen + pTextbox->usX - 1))
            {
                if(pTextbox->ubCursorWrapping)
                {
                    pTextbox->usCurrentLine++;

                    if(pTextbox->usCurrentLine == pTextbox->usNumLines)
                        pTextbox->usCurrentLine = 0;

                    tft_textbox_clear_line(pTextbox);
                }
                else
                {
                    pTextbox->usCursor = pTextbox->usX;
                }
            }

            pTextbox->usCursor += tft_draw_char(
                *pszStr,
                pTextbox->pFont,
                pTextbox->usCursor,
                pTextbox->usY + (pTextbox->usCurrentLine * pTextbox->pFont->ubYAdvance),
                pTextbox->xColor,
                pTextbox->xBackColor
                );
        }

        pszStr++;
    }
}
void tft_textbox_printf(tft_textbox_t *pTextbox, const char* pszFmt, ...)
{
    va_list args;
    va_start(args, pszFmt);

    uint32_t ulStrLen = vsnprintf(NULL, 0, pszFmt, args);
    char *pszBuf = (char *)malloc(ulStrLen + 1);

    if(!pszBuf)
    {
        va_end(args);

        return;
    }

    vsnprintf(pszBuf, ulStrLen + 1, pszFmt, args);

    tft_textbox_draw_string(pTextbox, pszBuf);

    free(pszBuf);

    va_end(args);
}

tft_terminal_t* tft_terminal_create(uint16_t usX, uint16_t usY, uint16_t usNumLines, uint16_t usLenght, const font_t *pFont, rgb565_t xColor, rgb565_t xBackColor)
{
    tft_terminal_t *pNewTerminal = (tft_terminal_t *)malloc(sizeof(tft_terminal_t));

    if(!pNewTerminal)
        return NULL;

    pNewTerminal->pTextbox = tft_textbox_create(usX, usY, usNumLines, usLenght, 1, 1, pFont, xColor, xBackColor);

    if(!pNewTerminal->pTextbox)
    {
        free(pNewTerminal);

        return NULL;
    }

    pNewTerminal->ppszBuf = (char **)malloc(usNumLines * sizeof(char *));

    if(!pNewTerminal->ppszBuf)
    {
        free(pNewTerminal->pTextbox);
        free(pNewTerminal);

        return NULL;
    }

    memset(pNewTerminal->ppszBuf, 0, usNumLines * sizeof(char *));

    pNewTerminal->ubUpdatePending = 0;

    return pNewTerminal;
}
void tft_terminal_delete(tft_terminal_t *pTerminal)
{
    for(uint16_t i = 0; i < pTerminal->pTextbox->usNumLines; i++)
        free(pTerminal->ppszBuf[i]);

    free(pTerminal->ppszBuf);
    free(pTerminal->pTextbox);
    free(pTerminal);
}
static void tft_terminal_scroll(tft_terminal_t *pTerminal, uint16_t usNumLines)
{
    while(usNumLines--)
    {
        free(pTerminal->ppszBuf[0]);

        for(uint8_t i = 0; i < pTerminal->pTextbox->usNumLines - 1; i++)
            pTerminal->ppszBuf[i] = pTerminal->ppszBuf[i + 1];

        pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1] = NULL;
    }
}
void tft_terminal_draw_string(tft_terminal_t *pTerminal, char *pszStr)
{
    uint8_t ubMaxStrLen = strlen(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1]) + strlen(pszStr);

    char *pszTempStr = (char *)malloc(ubMaxStrLen + 1);

    if(!pszTempStr)
        return;

    memset(pszTempStr, 0, ubMaxStrLen + 1);

    uint8_t ubStrLen = strlen(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1]);

    free(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1]);

    while(*pszStr)
    {
        if(*pszStr == '\n')
        {
            pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1] = (char *)malloc(ubStrLen + 1);

            if(!pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1])
            {
                free(pszTempStr);

                return;
            }

            strcpy(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1], pszTempStr);

            tft_terminal_scroll(pTerminal, 1);

            memset(pszTempStr, 0, ubMaxStrLen + 1);

            ubStrLen = 0;
        }
        else if(*pszStr == '\r')
        {
            memset(pszTempStr, 0, ubMaxStrLen + 1);

            ubStrLen = 0;
        }
        else
        {
            if(tft_get_str_pix_len(pTerminal->pTextbox->pFont, pszTempStr) + pTerminal->pTextbox->pFont->pGlyph[*pszStr - pTerminal->pTextbox->pFont->cFirstChar].ubXAdvance >= pTerminal->pTextbox->usLen + pTerminal->pTextbox->usX - 1)
            {
                pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1] = (char *)malloc(ubStrLen + 1);

                if(!pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1])
                {
                    free(pszTempStr);

                    return;
                }

                strcpy(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1], pszTempStr);

                tft_terminal_scroll(pTerminal, 1);

                memset(pszTempStr, 0, ubMaxStrLen + 1);

                ubStrLen = 0;
            }

            *(pszTempStr + ubStrLen) = *pszStr;

            ubStrLen++;
        }

        pszStr++;
    }

    pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1] = (char *)malloc(ubStrLen + 1);

    if(!pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1])
    {
        free(pszTempStr);

        return;
    }

    strcpy(pTerminal->ppszBuf[pTerminal->pTextbox->usNumLines - 1], pszTempStr);

    free(pszTempStr);
}
void tft_terminal_update(tft_terminal_t *pTerminal)
{
    for(uint8_t i = 0; i < pTerminal->pTextbox->usNumLines; i++)
    {
        tft_textbox_goto(pTerminal->pTextbox, 0, i, 1);

        tft_textbox_draw_string(pTerminal->pTextbox, pTerminal->ppszBuf[i]);
    }

    pTerminal->ubUpdatePending = 0;
}
void tft_terminal_clear(tft_terminal_t *pTerminal)
{
    for(uint8_t i = 0; i < pTerminal->pTextbox->usNumLines; i++)
    {
        free(pTerminal->ppszBuf[i]);

        pTerminal->ppszBuf[i] = NULL;
    }

    tft_textbox_clear(pTerminal->pTextbox);
}
void tft_terminal_printf(tft_terminal_t *pTerminal, uint8_t ubUpdate, const char* pszFmt, ...)
{
    if(!pTerminal)
        return;

    va_list args;
    va_start(args, pszFmt);

    uint32_t ulStrLen = vsnprintf(NULL, 0, pszFmt, args);
    char *pszBuf = (char *)malloc(ulStrLen + 1);

    if(!pszBuf)
    {
        va_end(args);

        return;
    }

    vsnprintf(pszBuf, ulStrLen + 1, pszFmt, args);

    tft_terminal_draw_string(pTerminal, pszBuf);

    free(pszBuf);

    va_end(args);

    if(ubUpdate)
        tft_terminal_update(pTerminal);
    else
        pTerminal->ubUpdatePending = 1;
}

// TODO: draw_line_graph()
// TODO: draw_bar_graph()
// TODO: draw_heat_map()
// TODO: draw_radar_spider_chart()
// TODO: draw_scatter_plot()
// TODO: gantt chart