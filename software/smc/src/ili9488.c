#include "ili9488.h"

uint8_t g_ubILI9488Rotation;
static uint16_t usMaxWidth;
static uint16_t usMaxHeigth;

static void ili9488_write(uint8_t ubCmd, const uint8_t *pubParam, uint32_t ulCount)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TFT_SELECT();

        TFT_SETUP_CMD();
        usart2_spi_transfer_byte(ubCmd);

        if(pubParam && ulCount)
        {
            TFT_SETUP_DAT();
            usart2_spi_write(pubParam, ulCount, 1);
        }

        TFT_UNSELECT();
    }
}
static void ili9488_read_standard(uint8_t ubCmd, uint8_t *pubData, uint32_t ulCount)
{
    if(!pubData)
        return;

    if(!ulCount)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TFT_SELECT();

        TFT_SETUP_CMD();
        usart2_spi_transfer_byte(ubCmd);

        TFT_SETUP_DAT();
        usart2_spi_transfer_byte(0x00);
        usart2_spi_read(pubData, ulCount, 0x00);

        TFT_UNSELECT();
    }
}
static void ili9488_read_extended(uint8_t ubCmd, uint8_t ubIndex, uint8_t *pubData, uint8_t ubCount)
{
    if(!pubData)
        return;

    if(!ubCount)
        return;

    if(ubCount > 15)
        return;

    if(ubIndex > 15)
        return;

    if(ubIndex + ubCount > 15)
        return;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TFT_SELECT();

        for(uint8_t i = ubIndex; i - ubIndex < ubCount; i++)
        {
            // Setup SPI extended read
            TFT_SETUP_CMD();
            usart2_spi_transfer_byte(ILI9488_RD_SPI_CMD_SETT);

            TFT_SETUP_DAT();
            usart2_spi_transfer_byte(0x80 | (i & 0x0F));

            // Read the actual register
            TFT_SETUP_CMD();
            usart2_spi_transfer_byte(ubCmd);

            TFT_SETUP_DAT();
            *pubData++ = usart2_spi_transfer_byte(0x00);
        }

        // Disable SPI extended read
        TFT_SETUP_CMD();
        usart2_spi_transfer_byte(ILI9488_RD_SPI_CMD_SETT);

        TFT_SETUP_DAT();
        usart2_spi_transfer_byte(0x00);

        TFT_UNSELECT();
    }
}

uint8_t ili9488_init()
{
    TFT_RESET();
    delay_ms(10);
    TFT_UNRESET();
    delay_ms(120);

    if(ili9488_read_id() != 0x009488)
        return 0;

    uint8_t ubBuf[15];

    g_ubILI9488Rotation = 0;

    ubBuf[0] =  0x00;
    ubBuf[1] =  0x03;
    ubBuf[2] =  0x09;
    ubBuf[3] =  0x08;
    ubBuf[4] =  0x16;
    ubBuf[5] =  0x0A;
    ubBuf[6] =  0x3F;
    ubBuf[7] =  0x78;
    ubBuf[8] =  0x4C;
    ubBuf[9] =  0x09;
    ubBuf[10] = 0x0A;
    ubBuf[11] = 0x08;
    ubBuf[12] = 0x16;
    ubBuf[13] = 0x1A;
    ubBuf[14] = 0x0F;
    ili9488_write(ILI9488_PGAMCTRL, ubBuf, 15); // PGAMCTRL(Positive Gamma Control)

    ubBuf[0] =  0x00;
    ubBuf[1] =  0x16;
    ubBuf[2] =  0x19;
    ubBuf[3] =  0x03;
    ubBuf[4] =  0x0F;
    ubBuf[5] =  0x05;
    ubBuf[6] =  0x32;
    ubBuf[7] =  0x45;
    ubBuf[8] =  0x46;
    ubBuf[9] =  0x04;
    ubBuf[10] = 0x0E;
    ubBuf[11] = 0x0D;
    ubBuf[12] = 0x35;
    ubBuf[13] = 0x37;
    ubBuf[14] = 0x0F;
    ili9488_write(ILI9488_NGAMCTRL, ubBuf, 15); // NGAMCTRL(Negative Gamma Control)

    ubBuf[0] = 0x17; // VReg1out
    ubBuf[1] = 0x15; // VReg2out
    ili9488_write(ILI9488_POW_CTL_1, ubBuf, 2); // Power Control 1

    ubBuf[0] = 0x41; // VGH,VGL
    ili9488_write(ILI9488_POW_CTL_2, ubBuf, 1); // Power Control 2

    ubBuf[0] = 0x00;
    ubBuf[0] = 0x12; // VCom
    ubBuf[0] = 0x80;
    ili9488_write(ILI9488_VCOM_CTL_1, ubBuf, 3); // Power Control 3

    ubBuf[0] = 0x48; // MX | BGR
    ili9488_write(ILI9488_MEM_A_CTL, ubBuf, 1); // Memory Access

    ubBuf[0] = 0x66; // 18 bit
    ili9488_write(ILI9488_PIX_FMT, ubBuf, 1); // Interface Pixel Format

    ubBuf[0] = 0x00;
    ili9488_write(ILI9488_IF_MD_CTL, ubBuf, 1); // Interface Mode Control

    ubBuf[0] = 0xA0; // 60Hz
    ili9488_write(ILI9488_FRMRT_CTL_1, ubBuf, 1); // Frame rate

    ubBuf[0] = 0x02; // 2-dot
    ili9488_write(ILI9488_INV_CTL, ubBuf, 1); // Display Inversion Control

    ubBuf[0] = 0x02; // MCU
    ubBuf[1] = 0x02; // Source, Gate scan dieection
    ili9488_write(ILI9488_DISP_FUNC_CTL, ubBuf, 2); // Display Function Control RGB/MCU Interface Control

    ubBuf[0] = 0x00; // Disable 24 bit data
    ili9488_write(ILI9488_SET_IMG_FUNC, ubBuf, 1); // Set Image Functio

    ubBuf[0] = 0xA9;
    ubBuf[1] = 0x51;
    ubBuf[2] = 0x2C;
    ubBuf[3] = 0x82; // D7 stream, loose
    ili9488_write(ILI9488_ADJ_CTL_3, ubBuf, 4); // Adjust Control

    ili9488_wakeup(0); // Wake up controller, leave display off

    return 1;
}

uint32_t ili9488_read_id()
{
    uint8_t ubBuf[3];

    ili9488_read_extended(ILI9488_RD_ID_4, 1, ubBuf, 3);

    return ((uint32_t)ubBuf[0] << 16) | ((uint32_t)ubBuf[1] << 8) | (uint32_t)ubBuf[2];
}

void ili9488_sleep()
{
    ili9488_display_off();
    delay_ms(10);
    ili9488_write(ILI9488_SLP_IN, NULL, 0);  // Internal oscillator will be stopped
    delay_ms(120);
}
void ili9488_wakeup(uint8_t ubDisplayOn)
{
    ili9488_write(ILI9488_SLP_OUT, NULL, 0); // Sleep out
    delay_ms(120);

    if(ubDisplayOn)
        ili9488_display_on();
}

void ili9488_display_on()
{
    ili9488_write(ILI9488_DISP_ON, NULL, 0); //Display on
}
void ili9488_display_off()
{
    ili9488_write(ILI9488_DISP_OFF, NULL, 0); //Display off
}

void ili9488_set_rotation(uint8_t ubRotation)
{
    uint8_t ubBuf;

    switch(ubRotation)
    {
        case 0:
            ubBuf = ILI9488_MADCTL_MX | ILI9488_MADCTL_BGR;
            usMaxWidth = ILI9488_TFTWIDTH - 1;
            usMaxHeigth = ILI9488_TFTHEIGHT - 1;
            break;
        case 1:
            ubBuf = ILI9488_MADCTL_MV | ILI9488_MADCTL_BGR;
            usMaxWidth = ILI9488_TFTHEIGHT - 1;
            usMaxHeigth = ILI9488_TFTWIDTH - 1;
            break;
        case 2:
            ubBuf = ILI9488_MADCTL_MY | ILI9488_MADCTL_BGR;
            usMaxWidth = ILI9488_TFTWIDTH - 1;
            usMaxHeigth = ILI9488_TFTHEIGHT - 1;
            break;
        case 3:
            ubBuf = ILI9488_MADCTL_MX | ILI9488_MADCTL_MY | ILI9488_MADCTL_MV | ILI9488_MADCTL_BGR;
            usMaxWidth = ILI9488_TFTHEIGHT - 1;
            usMaxHeigth = ILI9488_TFTWIDTH - 1;
            break;
        default:
            return;
    }

    g_ubILI9488Rotation = ubRotation;

    ili9488_write(ILI9488_MEM_A_CTL, &ubBuf, 1);
}
void ili9488_set_invert(uint8_t ubOnOff)
{
    ili9488_write((ubOnOff ? ILI9488_INV_ON : ILI9488_INV_OFF), NULL, 0);
}

void ili9488_read_pixel_block(rgb565_t *pPixelBuf, uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1)
{
    if(usX0 > usX1)
        SWAP(usX0, usX1);

    if(usY0 > usY1)
        SWAP(usY0, usY1);

    if(!ili9488_set_window(usX0, usY0, usX1, usY1))
        return;

    uint32_t ulDataLen = (usY1 - usY0 + 1) * (usX1 - usX0 + 1) * 3;
    uint8_t *pubDataBuf = (uint8_t *)malloc(ulDataLen);

    if(!pubDataBuf)
        return;

    ili9488_read_standard(ILI9488_RAM_RD, pubDataBuf, ulDataLen);

    for(uint32_t ubI = 0; ubI < ulDataLen; ubI += 3)
        *(pPixelBuf++) = RGB565_FROM_RGB(pubDataBuf[ubI], pubDataBuf[ubI + 1], pubDataBuf[ubI + 2]);

    free(pubDataBuf);
}

void ili9488_fill_screen(rgb565_t xColor)
{
    if(!ili9488_set_window(0, 0, usMaxWidth, usMaxHeigth))
        return;

    for(uint32_t ulI = ILI9488_TFTWIDTH * ILI9488_TFTHEIGHT; ulI > 0; ulI--)
        ili9488_send_pixel_data(xColor);
}


uint8_t ili9488_set_window(uint16_t usX0, uint16_t usY0, uint16_t usX1, uint16_t usY1)
{
    if(usX0 > usX1)
        return 0;

    if(usY0 > usY1)
        return 0;

    if(usX1 > usMaxWidth)
        return 0;

    if(usY1 > usMaxHeigth)
        return 0;

    uint8_t ubBuf[4];

    ubBuf[0] = usX0 >> 8;
    ubBuf[1] = usX0 & 0xFF; // XSTART
    ubBuf[2] = usX1 >> 8;
    ubBuf[3] = usX1 & 0xFF; // XEND
    ili9488_write(ILI9488_C_ADDR_SET, ubBuf, 4); // Column addr set

    ubBuf[0] = usY0 >> 8;
    ubBuf[1] = usY0 & 0xFF; // YSTART
    ubBuf[2] = usY1 >> 8;
    ubBuf[3] = usY1 & 0xFF; // YEND
    ili9488_write(ILI9488_P_ADDR_SET, ubBuf, 4); // Row addr set

    ili9488_write(ILI9488_RAM_WR, NULL, 0); // write to RAM

    return 1;
}

void ili9488_send_pixel_data(rgb565_t xColor)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        TFT_SELECT();
        TFT_SETUP_DAT();

        usart2_spi_write_byte(RGB565_EXTRACT_RED(xColor), 0);
        usart2_spi_write_byte(RGB565_EXTRACT_GREEN(xColor), 0);
        usart2_spi_write_byte(RGB565_EXTRACT_BLUE(xColor), 1);

        TFT_UNSELECT();
    }
}
void ili9488_set_pixel_color(uint16_t usX, uint16_t usY, rgb565_t xColor)
{
    if(!ili9488_set_window(usX, usY, usX + 1, usY + 1))
        return;

    ili9488_send_pixel_data(xColor);
}