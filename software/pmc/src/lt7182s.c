#include "lt7182s.h"

static uint8_t lt7182s_pmbus_send_command(uint8_t ubCommand)
{
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write_byte(LT7182S_I2C_ADDR, ubCommand, SERCOM_I2C_STOP))
            return 0;
    }

    return 1;
}
static uint8_t lt7182s_pmbus_write_byte(uint8_t ubCommand, uint8_t ubData)
{
    uint8_t ubTemp[2];

    ubTemp[0] = ubCommand;
    ubTemp[1] = ubData & 0xFF;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write(LT7182S_I2C_ADDR, ubTemp, 2, SERCOM_I2C_STOP))
            return 0;
    }

    return 1;
}
static uint8_t lt7182s_pmbus_write_word(uint8_t ubCommand, uint16_t usData)
{
    uint8_t ubTemp[3];

    ubTemp[0] = ubCommand;
    ubTemp[1] = usData & 0xFF;
    ubTemp[2] = usData >> 8;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write(LT7182S_I2C_ADDR, ubTemp, 3, SERCOM_I2C_STOP))
            return 0;
    }

    return 1;
}
static uint8_t lt7182s_pmbus_write_l11(uint8_t ubCommand, float fData)
{
    int32_t iExp = -16;
    int32_t iMant = (int32_t)(fData / powf(2, iExp));

    // Search for an exponent that produces valid 11-bit mantissa
    do
    {
        if((iMant >= -1024) && (iMant <= 1023))
            break;

        iMant = (int)(fData / powf(2, ++iExp));
    } while (iExp < 15);

    uint16_t usExp = iExp << 11;
    uint16_t usMant = iMant & 0x07FF;

    return lt7182s_pmbus_write_word(ubCommand, usExp | usMant);
}
static uint8_t lt7182s_pmbus_write_ul16(uint8_t ubCommand, float fData)
{
    uint16_t usData = (uint16_t)(fData * 4096.f);

    return lt7182s_pmbus_write_word(ubCommand, usData);
}
static uint8_t lt7182s_pmbus_read_byte(uint8_t ubCommand)
{
    uint8_t ubTemp;

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write_byte(LT7182S_I2C_ADDR, ubCommand, SERCOM_I2C_RESTART))
            return 0;

        if(!sercom1_i2c_read(LT7182S_I2C_ADDR, &ubTemp, 1, SERCOM_I2C_STOP))
            return 0;
    }

    return ubTemp;
}
static uint16_t lt7182s_pmbus_read_word(uint8_t ubCommand)
{
    uint8_t ubTemp[2];

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write_byte(LT7182S_I2C_ADDR, ubCommand, SERCOM_I2C_RESTART))
            return 0;

        if(!sercom1_i2c_read(LT7182S_I2C_ADDR, ubTemp, 2, SERCOM_I2C_STOP))
            return 0;
    }

    return (((uint16_t)ubTemp[1]) << 8) | ubTemp[0];
}
static float lt7182s_pmbus_read_l11(uint8_t ubCommand)
{
    uint16_t usTemp = lt7182s_pmbus_read_word(ubCommand);

    int8_t bExp = (usTemp >> 11) & 0xF;

    if(usTemp & BIT(15))
        bExp = -1 * (bExp ^ 0xF) - 1;

    int16_t sMant = usTemp & 0x3FF;

    if(usTemp & BIT(10))
        sMant = -1 * (sMant ^ 0x3FF) - 1;

    return (float)sMant * powf(2, bExp);
}
static float lt7182s_pmbus_read_ul16(uint8_t ubCommand)
{
    uint16_t usTemp = lt7182s_pmbus_read_word(ubCommand);

    return (float)usTemp / 4096.f;
}
static uint8_t lt7182s_pmbus_read_block(uint8_t ubCommand, uint8_t *pubBuffer, uint8_t ubBufferMaxSize)
{
    uint8_t ubTemp[256]; // Max PMBus block read size

    ATOMIC_BLOCK(ATOMIC_RESTORESTATE)
    {
        if(!sercom1_i2c_write_byte(LT7182S_I2C_ADDR, ubCommand, SERCOM_I2C_RESTART))
            return 0;

        if(!sercom1_i2c_read(LT7182S_I2C_ADDR, ubTemp, ubBufferMaxSize + 1, SERCOM_I2C_STOP))
            return 0;
    }

    uint8_t ubSize = ubTemp[0];

    if(ubSize > ubBufferMaxSize)
        ubSize = ubBufferMaxSize;

    memcpy(pubBuffer, ubTemp + 1, ubSize);

    return ubSize;
}
static uint8_t lt7182s_pmbus_read_string(uint8_t ubCommand, char *pszBuffer, uint8_t ubBufferMaxSize)
{
    uint8_t ubSize = lt7182s_pmbus_read_block(ubCommand, (uint8_t *)pszBuffer, ubBufferMaxSize - 1);

    pszBuffer[ubSize] = 0x00;

    return 1;
}

static uint8_t lt7182s_select_page(uint8_t ubPage)
{
    if(ubPage > 1)
        return 0;

    return lt7182s_pmbus_write_byte(0x00, ubPage);
}

uint8_t lt7182s_init()
{
    if(!sercom1_i2c_write(LT7182S_I2C_ADDR, NULL, 0, SERCOM_I2C_STOP)) // Check ACK from the expected address
        return 0;

    if(!lt7182s_pmbus_send_command(0xFD)) // Reset
        return 0;

    delay_ms(50);

    if(lt7182s_read_mfr_special_id() != 0x1C1D)
        return 0;

    if(lt7182s_get_status_mfr_common() & BIT(0)) // Device is Write Protected by hardware pin
        return 0;

    if(!lt7182s_pmbus_write_word(0xD1, BIT(7) | BIT(1))) // Disable IEEE half-precision floats (use L11 and UL16 instead). Enable clock stretching.
        return 0;

    if(!lt7182s_pmbus_write_byte(0xD8, BIT(0))) // Enable debug telemetry
        return 0;

    // Configure Channel 0
    lt7182s_set_operation(0, LT7182S_OPERATION_TURN_OFF_IMMED);
    lt7182s_set_on_off_config(0, BIT(3)); // Only care about OPERATION commands, ignore RUN pin
    lt7182s_set_pwm_config(0, (3 << 11) | (2 << 9) | (7 << 6) | (3 << 3) | BIT(2)); // GMEA = 150 uS, ILIM = 6.5 A / -4 A, CITH = 80 pF, RITH = 40 kOhm, FCM, Low VOUT Disabled
    lt7182s_set_vin_on(0, 7.f); // 7 V Input Voltage to start power conversion
    lt7182s_set_vin_off(0, 6.5f); // 6.5 V Input Voltage to stop power conversion (UVLO)
    lt7182s_set_vin_uv_warn(0, 6.75f); // 6.75 V Input Undervoltage Warning
    lt7182s_set_iin_oc_warn(0, 4.5f); // 4.5 A Input Overcurrent Warning
    lt7182s_set_vout_max(0, 5.4f); // 5.4 V Maximum Output Voltage
    lt7182s_set_vout(0, 5.2f); // 5.2 V Nominal Output Voltage
    lt7182s_set_vout_margin_high(0, 5.25f); // 5.25 V High Margin
    lt7182s_set_vout_margin_low(0, 5.15f); // 5.15 V Low Margin
    lt7182s_set_vout_ov_fault(0, 5.5f); // 5.5 V Overvoltage Fault
    lt7182s_set_vout_ov_warn(0, 5.4f); // 5.4 V Overvoltage Warning
    lt7182s_set_vout_uv_fault(0, 4.95f); // 4.95 V Undervoltage Fault
    lt7182s_set_vout_uv_warn(0, 5.05f); // 5.05 V Undervoltage Warning
    lt7182s_set_iout_oc_warn(0, 5.5f); // 5.5 A Output Overcurrent Warning

    // Configure Channel 1
    lt7182s_set_operation(1, LT7182S_OPERATION_TURN_OFF_IMMED);
    lt7182s_set_on_off_config(1, BIT(3) | BIT(2) | BIT(0)); // Only start if OPERATION is on and RUN is high (PGOOD from previous regulator)
    lt7182s_set_pwm_config(1, (0 << 11) | (2 << 9) | (7 << 6) | (3 << 3) | BIT(2) | BIT(1)); // GMEA = 150 uS, ILIM = 6.5 A / -4 A, CITH = 80 pF, RITH = 40 kOhm, FCM, Low VOUT Enabled
    lt7182s_set_vin_on(1, 7.f); // 7 V Input Voltage to start power conversion
    lt7182s_set_vin_off(1, 6.5f); // 6.5 V Input Voltage to stop power conversion (UVLO)
    lt7182s_set_vin_uv_warn(1, 6.75f); // 6.75 V Input Undervoltage Warning
    lt7182s_set_iin_oc_warn(1, 0.8f); // 0.8 A Input Overcurrent Warning
    lt7182s_set_vout_max(1, 1.1f); // 1.1 V Maximum Output Voltage
    lt7182s_set_vout(1, 1.f); // 1 V Nominal Output Voltage
    lt7182s_set_vout_margin_high(1, 1.05f); // 1.05 V High Margin
    lt7182s_set_vout_margin_low(1, 1.f); // 1 V Low Margin
    lt7182s_set_vout_ov_fault(1, 1.15f); // 1.15 V Overvoltage Fault
    lt7182s_set_vout_ov_warn(1, 1.1f); // 1.1 V Overvoltage Warning
    lt7182s_set_vout_uv_fault(1, 0.9f); // 0.9 V Undervoltage Fault
    lt7182s_set_vout_uv_warn(1, 0.95f); // 0.95 V Undervoltage Warning
    lt7182s_set_iout_oc_warn(1, 3.f); // 3 A Output Overcurrent Warning TODO: Up up

    return 1;
}

uint8_t lt7182s_read_mfr_id(char *pszBuffer, uint8_t ubBufferMaxSize)
{
    return lt7182s_pmbus_read_string(0x99, pszBuffer, ubBufferMaxSize);
}
uint8_t lt7182s_read_mfr_model(char *pszBuffer, uint8_t ubBufferMaxSize)
{
    return lt7182s_pmbus_read_string(0x9A, pszBuffer, ubBufferMaxSize);
}
uint8_t lt7182s_read_mfr_revision(uint8_t *pubBuffer, uint8_t ubBufferMaxSize)
{
    return lt7182s_pmbus_read_block(0x9B, pubBuffer, ubBufferMaxSize);
}
uint8_t lt7182s_read_mfr_serial(uint8_t *pubBuffer, uint8_t ubBufferMaxSize)
{
    return lt7182s_pmbus_read_block(0x9E, pubBuffer, ubBufferMaxSize);
}
uint16_t lt7182s_read_mfr_special_id()
{
    return lt7182s_pmbus_read_word(0xE7);
}

uint8_t lt7182s_get_status_byte(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x78);
}
uint16_t lt7182s_get_status_word(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_word(0x79);
}
uint8_t lt7182s_get_status_vout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x7A);
}
uint8_t lt7182s_get_status_iout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x7B);
}
uint8_t lt7182s_get_status_input(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x7C);
}
uint8_t lt7182s_get_status_temperature()
{
    return lt7182s_pmbus_read_byte(0x7D);
}
uint8_t lt7182s_get_status_cml()
{
    return lt7182s_pmbus_read_byte(0x7E);
}
uint8_t lt7182s_get_status_mfr_specific(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x80);
}
uint8_t lt7182s_get_status_mfr_common()
{
    return lt7182s_pmbus_read_byte(0xEF);
}
uint16_t lt7182s_get_status_mfr_pads()
{
    return lt7182s_pmbus_read_word(0xE5);
}
uint8_t lt7182s_get_status_mfr_pin_config()
{
    return lt7182s_pmbus_read_byte(0xF7);
}

uint8_t lt7182s_cleak_faults()
{
    return lt7182s_pmbus_send_command(0x03);
}
uint8_t lt7182s_cleak_peaks()
{
    return lt7182s_pmbus_send_command(0xE3);
}

uint8_t lt7182s_get_state(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0xF1);
}
uint8_t lt7182s_get_operation(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x01);
}
uint8_t lt7182s_set_operation(uint8_t ubChannel, uint8_t ubOperation)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_byte(0x01, ubOperation);
}
uint8_t lt7182s_get_on_off_config(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_byte(0x02) & 0x0D;
}
uint8_t lt7182s_set_on_off_config(uint8_t ubChannel, uint8_t ubConfig)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_byte(0x02, (ubConfig & 0x0D) | 0x12);
}
uint16_t lt7182s_get_pwm_config(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_word(0xD4);
}
uint8_t lt7182s_set_pwm_config(uint8_t ubChannel, uint16_t usConfig)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_word(0xD4, usConfig & 0x3FFF);
}
uint16_t lt7182s_get_pwm_phase(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_read_word(0xF5);
}
uint8_t lt7182s_set_pwm_phase(uint8_t ubChannel, uint16_t usPhase)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    while(usPhase >= 360)
        usPhase -= 360;

    return lt7182s_pmbus_write_word(0xF5, usPhase);
}

float l17182s_pwm_config_parse_gmea(uint16_t usPWMConfig)
{
    switch(usPWMConfig & 0x3800)
    {
        case 0x0000:
            return (usPWMConfig & BIT(1)) ? 150.f : 37.5f;
        case 0x0800:
            return (usPWMConfig & BIT(1)) ? 300.f : 75.f;
        case 0x1000:
            return (usPWMConfig & BIT(1)) ? 450.f : 112.5f;
        case 0x1800:
            return (usPWMConfig & BIT(1)) ? 600.f : 150.f;
        case 0x2000:
            return (usPWMConfig & BIT(1)) ? 750.f : 187.5f;
        case 0x2800:
            return (usPWMConfig & BIT(1)) ? 900.f : 225.f;
        case 0x3000:
            return (usPWMConfig & BIT(1)) ? 1050.f : 262.5f;
        case 0x3800:
            return (usPWMConfig & BIT(1)) ? 1200.f : 300.f;
    }
}
float l17182s_pwm_config_parse_pos_ilim(uint16_t usPWMConfig)
{
    switch(usPWMConfig & 0x0600)
    {
        case 0x0000:
            return 3.f;
        case 0x0200:
            return 4.5f;
        case 0x0400:
            return 6.5f;
        case 0x0600:
            return 8.5f;
    }
}
float l17182s_pwm_config_parse_neg_ilim(uint16_t usPWMConfig)
{
    switch(usPWMConfig & 0x0600)
    {
        case 0x0000:
            return -2.3f;
        case 0x0200:
            return -3.4f;
        case 0x0400:
            return -4.f;
        case 0x0600:
            return -4.25f;
    }
}
float l17182s_pwm_config_parse_cith(uint16_t usPWMConfig)
{
    return (((usPWMConfig & 0x01C0) >> 6) + 1) * 10.f;
}
float l17182s_pwm_config_parse_rith(uint16_t usPWMConfig)
{
    switch(usPWMConfig & 0x0038)
    {
        case 0x0000:
            return 5.f;
        case 0x0008:
            return 10.f;
        case 0x0010:
            return 20.f;
        case 0x0018:
            return 40.f;
        case 0x0020:
            return 60.f;
        case 0x0028:
            return 80.f;
        case 0x0030:
            return 100.f;
        case 0x0038:
            return 120.f;
    }
}
uint8_t l17182s_pwm_config_parse_pulse_skipping(uint16_t usPWMConfig)
{
    return !!(usPWMConfig & BIT(0));
}
uint8_t l17182s_pwm_config_parse_fcm_at_toff(uint16_t usPWMConfig)
{
    return !!(usPWMConfig & BIT(2));
}
uint8_t l17182s_pwm_config_parse_low_vout_mode(uint16_t usPWMConfig)
{
    return !!(usPWMConfig & BIT(1));
}

float lt7182s_read_vin(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x88);
}
float lt7182s_read_vin_peak(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0xDE);
}
float lt7182s_get_vin_on(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x35);
}
uint8_t lt7182s_set_vin_on(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x35, fVoltage);
}
float lt7182s_get_vin_off(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x36);
}
uint8_t lt7182s_set_vin_off(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x36, fVoltage);
}
float lt7182s_get_vin_uv_warn(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x58);
}
uint8_t lt7182s_set_vin_uv_warn(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x58, fVoltage);
}
float lt7182s_read_iin(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x89);
}
float lt7182s_get_iin_oc_warn(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x5D);
}
uint8_t lt7182s_set_iin_oc_warn(uint8_t ubChannel, float fCurrent)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x5D, fCurrent);
}
float lt7182s_read_vout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x8B);
}
float lt7182s_read_vout_peak(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0xDD);
}
float lt7182s_get_vout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x21);
}
uint8_t lt7182s_set_vout(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x21, fVoltage);
}
float lt7182s_get_vout_max(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x24);
}
uint8_t lt7182s_set_vout_max(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x24, fVoltage);
}
float lt7182s_get_vout_margin_high(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x25);
}
uint8_t lt7182s_set_vout_margin_high(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x25, fVoltage);
}
float lt7182s_get_vout_margin_low(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x26);
}
uint8_t lt7182s_set_vout_margin_low(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x26, fVoltage);
}
float lt7182s_get_vout_transition_rate(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x27);
}
uint8_t lt7182s_set_vout_transition_rate(uint8_t ubChannel, float fRate)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x27, fRate);
}
float lt7182s_get_vout_ov_fault(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x40);
}
uint8_t lt7182s_set_vout_ov_fault(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x40, fVoltage);
}
float lt7182s_get_vout_ov_warn(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x42);
}
uint8_t lt7182s_set_vout_ov_warn(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x42, fVoltage);
}
float lt7182s_get_vout_uv_fault(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x44);
}
uint8_t lt7182s_set_vout_uv_fault(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x44, fVoltage);
}
float lt7182s_get_vout_uv_warn(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_ul16(0x43);
}
uint8_t lt7182s_set_vout_uv_warn(uint8_t ubChannel, float fVoltage)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_ul16(0x43, fVoltage);
}
float lt7182s_read_iout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x8C);
}
float lt7182s_read_iout_peak(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0xD7);
}
float lt7182s_get_iout_oc_warn(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x4A);
}
uint8_t lt7182s_set_iout_oc_warn(uint8_t ubChannel, float fCurrent)
{
    if(!lt7182s_select_page(ubChannel))
        return 0;

    return lt7182s_pmbus_write_l11(0x4A, fCurrent);
}
float lt7182s_read_freq(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x95);
}
float lt7182s_read_pout(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0x96);
}
float lt7182s_read_ith(uint8_t ubChannel)
{
    if(!lt7182s_select_page(ubChannel))
        return 0.f;

    return lt7182s_pmbus_read_l11(0xCE);
}

float lt7182s_read_extvcc()
{
    return lt7182s_pmbus_read_l11(0xCD);
}
float lt7182s_read_temperature()
{
    return lt7182s_pmbus_read_l11(0x8D);
}
float lt7182s_read_temperature_peak()
{
    return lt7182s_pmbus_read_l11(0xDF);
}
float lt7182s_get_ot_fault()
{
    return lt7182s_pmbus_read_l11(0x4F);
}
uint8_t lt7182s_set_ot_fault(float fTemperature)
{
    return lt7182s_pmbus_write_l11(0x4F, fTemperature);
}
float lt7182s_get_ot_warn()
{
    return lt7182s_pmbus_read_l11(0x51);
}
uint8_t lt7182s_set_ot_warn(float fTemperature)
{
    return lt7182s_pmbus_write_l11(0x51, fTemperature);
}
float lt7182s_get_freq()
{
    return lt7182s_pmbus_read_l11(0x33);
}
uint8_t lt7182s_set_freq(float fFrequency)
{
    return lt7182s_pmbus_write_l11(0x33, fFrequency);
}