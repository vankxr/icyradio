#ifndef __ILI9488_H__
#define __ILI9488_H__

#include <em_device.h>
#include "rgb565.h"
#include "systick.h"
#include "atomic.h"
#include "utils.h"
#include "usart.h"
#include "gpio.h"

#define ILI9488_TFTWIDTH        320UL
#define ILI9488_TFTHEIGHT       480UL

// Commands
#define ILI9488_NOP                         0x00 // NOP
#define ILI9488_SW_RESET                    0x01 // Soft Reset
#define ILI9488_RD_DISP_ID                  0x04 // Read display identification information
#define ILI9488_RD_ID_1                     0xDA // Read ID1
#define ILI9488_RD_ID_2                     0xDB // Read ID2
#define ILI9488_RD_ID_3                     0xDC // Read ID3
#define ILI9488_RD_ID_4                     0xD3 // Read ID4
#define ILI9488_RD_DISP_STAT                0x09 // Read Display Status
#define ILI9488_RD_DSI_ERR                  0x05 // Read Number of the Errors on DSI
#define ILI9488_RD_POW_MODE                 0x0A // Read Display Power Mode
#define ILI9488_RD_MADCTL                   0x0B // Read Display MADCTL
#define ILI9488_PIX_FMT                     0x3A // Interface Pixel Format
#define ILI9488_RD_PIX_FMT                  0x0C // Read Pixel Format
#define ILI9488_RD_IMG_MD                   0x0D // Read Display Image Mode
#define ILI9488_RD_SIG_MD                   0x0E // Read Display signal Mode
#define ILI9488_RD_SELFDIAG                 0x0F // Read Display Self-Diagnostic Result
#define ILI9488_SLP_IN                      0x10 // Sleep IN
#define ILI9488_SLP_OUT                     0x11 // Sleep OUT
#define ILI9488_PT_MD_ON                    0x12 // Partial Mode ON
#define ILI9488_PT_A                        0x30 // Partial Area
#define ILI9488_N_MD_ON                     0x13 // Normal Display Mode ON
#define ILI9488_IDL_MD_OFF                  0x38 // Idle Mode OFF
#define ILI9488_IDL_MD_ON                   0x39 // Idle Mode ON
#define ILI9488_INV_OFF                     0x20 // Display Inversion OFF
#define ILI9488_INV_ON                      0x21 // Display Inversion ON
#define ILI9488_ALL_PIX_OFF                 0x22 // All Pixel OFF
#define ILI9488_ALL_PIX_ON                  0x23 // All Pixel ON
#define ILI9488_DISP_OFF                    0x28 // Display OFF
#define ILI9488_DISP_ON                     0x29 // Display ON
#define ILI9488_MEM_A_CTL                   0x36 // Memory Access Control
#define ILI9488_C_ADDR_SET                  0x2A // Column Address Set
#define ILI9488_P_ADDR_SET                  0x2B // Page Address Set
#define ILI9488_RAM_WR                      0x2C // Memory Write
#define ILI9488_RAM_WR_CONT                 0x3C // Memory Write Continue
#define ILI9488_RAM_RD                      0x2E // Memory Read
#define ILI9488_RAM_RD_CONT                 0x3E // Memory Read Continue
#define ILI9488_VSCRL_DEF                   0x33 // Vertical Scrolling Definition
#define ILI9488_VSCRL_ADDR                  0x37 // Vertical Scrolling Start Address
#define ILI9488_TEAR_OFF                    0x34 // Tearing Effect Line OFF
#define ILI9488_TEAR_ON                     0x35 // Tearing Effect Line ON
#define ILI9488_WR_TEAR_SCN_LN              0x44 // Write Tear Scan line
#define ILI9488_RD_TEAR_SCN_LN              0x45 // Read Tear Scan Line
#define ILI9488_WR_DISP_BRIGHT              0x51 // Write Display Brightness value
#define ILI9488_RD_DISP_BRIGHT              0x52 // Read Display Brightness Value
#define ILI9488_RD_AUTO_BRIGTH_CTL_SELFDIAG 0xB9 // Read automatic brightness control self-diagnostic result 0x68
#define ILI9488_WR_CTNT_ADAPT_BRIGHT_CTL    0x55 // Write Content Adaptive Brightness Control value 0x55
#define ILI9488_RD_CTNT_ADAPT_BRIGHT_CTL    0x56 // Read Content Adaptive Brightness Control value 0x56
#define ILI9488_WR_CABC_MIN                 0x5E // Write CABC Minimum Brightness 0x5E
#define ILI9488_RD_CABC_MIN                 0x5F // Read CABC Minimum Brightness 0x5F
#define ILI9488_WR_DISP_CTL                 0x53 // Write CTRL Display value
#define ILI9488_RD_DISP_CTL                 0x54 // Read CTRL Display value
#define ILI9488_IF_MD_CTL                   0xB0 // Interface Mode Control 0xB0
#define ILI9488_FRMRT_CTL_1                 0xB1 // Frame Rate Control (In Normal Mode/Full Colors)
#define ILI9488_FRMRT_CTL_2                 0xB2 // Frame Rate Control (In Idle Mode/8 colors)
#define ILI9488_FRMRT_CTL_3                 0xB3 // Frame Rate Control (In Partial Mode/Full colors)
#define ILI9488_INV_CTL                     0xB4 // Display Inversion Control
#define ILI9488_BLNK_PORCH_CTL              0xB5 // Blanking Porch Control 0xB5
#define ILI9488_DISP_FUNC_CTL               0xB6 // Display Function Control
#define ILI9488_SET_ENTRY_MD                0xB7 // Entry Mode Set 0xB7
#define ILI9488_COL_ENH_CTL_1               0xB9 // Color Enhancement Control 1 0xB9
#define ILI9488_COL_ENH_CTL_2               0xBA // Color Enhancement Control 2 0xBA
#define ILI9488_POW_CTL_1                   0xC0 // Power Control 1
#define ILI9488_POW_CTL_2                   0xC1 // Power Control 2
#define ILI9488_POW_CTL_3                   0xC2 // Power Control 3
#define ILI9488_POW_CTL_4                   0xC3 // Power Control 4
#define ILI9488_POW_CTL_5                   0xC4 // Power Control 5
#define ILI9488_VCOM_CTL_1                  0xC5 // VCOM Control 1
#define ILI9488_VCOM_CTL_2                  0xC7 // VCOM Control 2
#define ILI9488_CABC_CTL_1                  0xC6 // CABC Control 1 0xC6
#define ILI9488_CABC_CTL_2                  0xC8 // CABC Control 2 0xC8
#define ILI9488_CABC_CTL_3                  0xC9 // CABC Control 3 0xC9
#define ILI9488_CABC_CTL_4                  0xCA // CABC Control 4 0xCA
#define ILI9488_CABC_CTL_5                  0xCB // CABC Control 5 0xCB
#define ILI9488_CABC_CTL_6                  0xCC // CABC Control 6 0xCC
#define ILI9488_CABC_CTL_7                  0xCD // CABC Control 7 0xCD
#define ILI9488_CABC_CTL_8                  0xCE // CABC Control 8 0xCE
#define ILI9488_CABC_CTL_9                  0xCF // CABC Control 9 0xCF
#define ILI9488_NV_MEM_WR                   0xD0 // NV Memory Write  0xD0
#define ILI9488_NV_MEM_KEY                  0xD0 // NV Memory Protection Key 0xD1
#define ILI9488_NV_MEM_RD                   0xD0 // NV Memory Status Read 0xD2
#define ILI9488_GAMMA_SET                   0x26
#define ILI9488_PGAMCTRL                    0xE0 // PGAMCTRL(Positive Gamma Control)
#define ILI9488_NGAMCTRL                    0xE1 // NGAMCTRL(Negative Gamma Control)
#define ILI9488_GIG_GAMMA_CTL_1             0xE2 // Digital Gamma Control 1 0xE2
#define ILI9488_GIG_GAMMA_CTL_2             0xE3 // Digital Gamma Control 2 0xE3
#define ILI9488_SET_IMG_FUNC                0xE9 // Set Image Function 0xE9
#define ILI9488_ADJ_CTL_1                   0xD7 // Adjust Control 1 0xD7
#define ILI9488_ADJ_CTL_2                   0xF2 // Adjust Control 2  0xF2
#define ILI9488_ADJ_CTL_3                   0xF7 // Adjust Control 3  0xF7
#define ILI9488_ADJ_CTL_4                   0xF8 // Adjust Control 4  0xF8
#define ILI9488_ADJ_CTL_5                   0xF9 // Adjust Control 5  0xF9
#define ILI9488_ADJ_CTL_6                   0xFC // Adjust Control 6  0xFC
#define ILI9488_RD_SPI_CMD_SETT             0xFB // SPI Read Command Setting 0xFB

// ILI9488_MADCTL
#define ILI9488_MADCTL_MY       0x80
#define ILI9488_MADCTL_MX       0x40
#define ILI9488_MADCTL_MV       0x20
#define ILI9488_MADCTL_ML       0x10
#define ILI9488_MADCTL_RGB      0x00
#define ILI9488_MADCTL_BGR      0x08
#define ILI9488_MADCTL_MH       0x04

#define ILI9488_ROTATION_VERTICAL        0
#define ILI9488_ROTATION_HORIZONTAL      1
#define ILI9488_ROTATION_VERTICAL_FLIP   2
#define ILI9488_ROTATION_HORIZONTAL_FLIP 3

extern uint8_t g_ubILI9488Rotation;

uint8_t ili9488_init();

uint32_t ili9488_read_id();

void ili9488_sleep();
void ili9488_wakeup(uint8_t ubDisplayOn);

void ili9488_display_on();
void ili9488_display_off();

void ili9488_set_rotation(uint8_t ubRotation);
void ili9488_set_invert(uint8_t ubOnOff);

void ili9488_read_pixel_block(rgb565_t *pPixelBuf, uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1);

void ili9488_fill_screen(rgb565_t xColor);

uint8_t ili9488_set_window(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1);

void ili9488_send_pixel_data(rgb565_t xColor);
void ili9488_set_pixel_color(uint16_t usX, uint16_t usY, rgb565_t xColor);

#endif  // __ILI9488_H__