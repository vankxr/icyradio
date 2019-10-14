#ifndef __FT6X06_H__
#define __FT6X06_H__

#include <em_device.h>
#include <stdlib.h>
#include "systick.h"
#include "atomic.h"
#include "gpio.h"
#include "i2c.h"

#define FT6X06_I2C_ADDR 0x38

// Registers
#define FT6X06_REG_DEV_MODE                 0x00
#define FT6X06_REG_GEST_ID                  0x01
#define FT6X06_REG_TD_STATUS                0x02
#define FT6X06_REG_P1_XH                    0x03
#define FT6X06_REG_P1_XL                    0x04
#define FT6X06_REG_P1_YH                    0x05
#define FT6X06_REG_P1_YL                    0x06
#define FT6X06_REG_P1_WEIGHT                0x07
#define FT6X06_REG_P1_MISC                  0x08
#define FT6X06_REG_P2_XH                    0x09
#define FT6X06_REG_P2_XL                    0x0A
#define FT6X06_REG_P2_YH                    0x0B
#define FT6X06_REG_P2_YL                    0x0C
#define FT6X06_REG_P2_WEIGHT                0x0D
#define FT6X06_REG_P2_MISC                  0x0E
#define FT6X06_REG_TH_GROUP                 0x80
#define FT6X06_REG_TH_DIFF                  0x85
#define FT6X06_REG_CTRL                     0x86
#define FT6X06_REG_TIMEENTERMONITOR         0x87
#define FT6X06_REG_PERIODACTIVE             0x88
#define FT6X06_REG_PERIODMONITOR            0x89
#define FT6X06_REG_RADIAN_VALUE             0x91
#define FT6X06_REG_OFFSET_LEFT_RIGHT        0x92
#define FT6X06_REG_OFFSET_UP_DOWN           0x19
#define FT6X06_REG_DISTANCE_LEFT_RIGHT      0x94
#define FT6X06_REG_DISTANCE_UP_DOWN         0x95
#define FT6X06_REG_DISTANCE_ZOOM            0x96
#define FT6X06_REG_LIB_VER_H                0xA1
#define FT6X06_REG_LIB_VER_L                0xA2
#define FT6X06_REG_CIPHER                   0xA3
#define FT6X06_REG_G_MODE                   0xA4
#define FT6X06_REG_PWR_MODE                 0xA5
#define FT6X06_REG_FIRMID                   0xA6
#define FT6X06_REG_FOCALTECH_ID             0xA8
#define FT6X06_REG_RELEASE_CODE_ID          0xAF
#define FT6X06_REG_STATE                    0xBC

// FT6X06_REG_DEV_MODE
#define FT6X06_REG_DEV_MODE_WORKING_MODE     0b000
#define FT6X06_REG_DEV_MODE_FACTORY_MODE     0b100

// FT6X06_REG_GEST_ID
#define FT6X06_REG_GEST_ID_MOVE_UP          0x10
#define FT6X06_REG_GEST_ID_MOVE_RIGHT       0x14
#define FT6X06_REG_GEST_ID_MOVE_DOWN        0x18
#define FT6X06_REG_GEST_ID_MOVE_LEFT        0x1C
#define FT6X06_REG_GEST_ID_ZOOM_IN          0x48
#define FT6X06_REG_GEST_ID_ZOOM_OUT         0x49
#define FT6X06_REG_GEST_ID_NO_GESTURE       0x00

// FT6X06_REG_Pn_XH
#define FT6X06_REG_Pn_XH_EVENT_FLAG_PRESS_DOWN  0x00
#define FT6X06_REG_Pn_XH_EVENT_FLAG_LIFT_UP     0x40
#define FT6X06_REG_Pn_XH_EVENT_FLAG_CONTACT     0x80
#define FT6X06_REG_Pn_XH_EVENT_FLAG_NO_EVENT    0xC0

// FT6X06_REG_Pn_YH
#define FT6X06_REG_Pn_YH_INVALID_TOUCH_ID         0xF0

// IDs
#define FT62XX_VENDID   0x11
#define FT6206_CHIPID   0x06
#define FT6236_CHIPID   0x36
#define FT6236U_CHIPID  0x64

#define FT6X36_TOUCH_FIFO_SIZE 32

typedef struct ft6x36_event_t ft6x36_event_t;
typedef void (* ft6x36_event_callback_fn_t)(uint8_t, uint16_t, uint16_t);

struct ft6x36_event_t
{
    uint8_t ubEvent;
    uint16_t usX;
    uint16_t usY;
};

uint8_t ft6x36_init();
void ft6x36_isr();
void ft6x36_tick();

void ft6x36_set_event_callback(ft6x36_event_callback_fn_t pfFunc);

uint8_t ft6x36_get_vendor_id();
uint8_t ft6x36_get_chip_id();
uint8_t ft6x36_get_firmware_version();

#endif // __FT6X06_H__