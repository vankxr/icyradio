#pragma once

#include <cstdint>
#include <string>
#include <sstream>
#include <iomanip>
#include <unistd.h>
#include <mutex>
#include "AXIIIC.hpp"
#include "AXIGPIO.hpp"
#include "AXIIRQCtrl.hpp"
#include "Utils.hpp"

#define LT7182S_I2C_ADDR 0x40
#define LT7182S_GLOBAL_I2C_ADDR 0x5A
#define LT7182S_GLOBAL_PAGED_I2C_ADDR 0x5B
#define LT7182S_ZONE_I2C_ADDR 0x37

class LT7182S
{
public:
    enum Chan : int8_t
    {
        CH_NO_CHANGE = -1,

        CH0 = 0,
        CH1 = 1,
    };
    enum ChanState : uint8_t
    {
        STATE_OFF = 0,
        STATE_TON_DELAY = 1,
        STATE_TON_RISE = 2,
        STATE_ON = 3,
        STATE_TOFF_DELAY = 4,
        STATE_TOFF_FALL = 5,
    };
    enum ChanOperation : uint8_t
    {
        OP_TURN_OFF = 0x00, // Turn off immediately
        OP_ON = 0x80, // Turn on
        OP_MARGIN_LOW = 0x98, // Set to low margin voltage
        OP_MARGIN_HIGH = 0xA8, // Set to high margin voltage
        OP_SEQUENCE_OFF = 0x40 // Start the sequence to turn off
    };
    struct ChanOnOffConfig
    {
        bool check_operation; // When high, the channel will only provide output power if the on/off portion of OPERATION is set
        bool check_run_pin; // When high, the channel will only provide output power if the RUN pin is high
        bool immed_shutdown; // When high, the channel will perform an immediate shutdown when the RUN pin is de-asserted
    };
    struct ChanPWMConfig
    {
        float ea_gm; // Error Amplifier Transconductance (Gm) (uS)
        float pos_ilim; // Positive Current Limit (A)
        float neg_ilim; // Negative Current Limit (A)
        float cith; // Loop Compensation Capacitor C_ITH (pF)
        float rith; // Loop Compensation Resistor R_ITH (kOhm)
        bool fcm_at_toff;
        bool low_vout_mode;
        bool pulse_skipping;
    };

    struct IRQConfig
    {
        AXIIRQCtrl *controller;     // The IRQ controller to use
        AXIIRQCtrl::IRQNumber irq;  // The IRQ number to use
    };
    struct IICConfig
    {
        AXIIIC *controller;
        uint8_t addr;
    };

private:
    static float Pow2(int8_t e);
    static uint8_t FindClosest(float val, const float *arr, uint8_t size);

    static void ISR(void *_this);
    void handleIRQ();

    void writeCommand(uint8_t cmd);
    void writeByte(uint8_t cmd, uint8_t data);
    void writeWord(uint8_t cmd, uint16_t data);
    void writeL11(uint8_t cmd, float data);
    void writeUL16(uint8_t cmd, float data);
    uint8_t readByte(uint8_t cmd);
    uint16_t readWord(uint8_t cmd);
    float readL11(uint8_t cmd);
    float readUL16(uint8_t cmd);
    uint8_t readBlock(uint8_t cmd, uint8_t *buf, uint8_t max_size);
    inline void readString(uint8_t cmd, char *buf, uint16_t max_size)
    {
        if(max_size > 255)
            max_size = 255;

        uint8_t size = this->readBlock(cmd, reinterpret_cast<uint8_t *>(buf), max_size - 1);

        buf[size] = 0;
    }
    inline std::string readString(uint8_t cmd)
    {
        char buf[255];

        this->readString(cmd, buf, 255);

        return std::string(buf);
    }

    void _selectChannel(LT7182S::Chan ch);

public:
    LT7182S(LT7182S::IICConfig iic, LT7182S::IRQConfig irq_config = {nullptr, AXIIRQCtrl::IRQNumber::MAX});
    ~LT7182S();

    void init();

    void reset();

    void selectChannel(LT7182S::Chan ch);
    void lockChannelSelection(LT7182S::Chan ch);
    void unlockChannelSelection();

    std::string readManufacturerID();
    std::string readManufacturerModel();
    uint8_t readManufacturerRevision();
    std::string readManufacturerSerial();
    uint16_t readManufacturerSpecialID();

    uint8_t getStatusByte(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusByte(uint8_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint16_t getStatusWord(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusWord(uint16_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint8_t getStatusVOUT(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusVOUT(uint8_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint8_t getStatusIOUT(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusIOUT(uint8_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint8_t getStatusInput(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusInput(uint8_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint8_t getStatusTemperature();
    void clearStatusTemperature(uint8_t mask);
    uint8_t getStatusCML();
    void clearStatusCML(uint8_t mask);
    uint8_t getStatusManufacturerSpecific(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void clearStatusManufacturerSpecific(uint8_t mask, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    uint8_t getStatusManufacturerCommon();
    uint16_t getStatusManufacturerPads();
    uint8_t getStatusManufacturerPinConfig();

    void clearFaults();
    void clearPeaks();

    LT7182S::ChanState getChannelState(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    LT7182S::ChanOperation getChannelOperation(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOperation(LT7182S::ChanOperation op, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    LT7182S::ChanOnOffConfig getChannelOnOffConfig(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOnOffConfig(LT7182S::ChanOnOffConfig config, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    LT7182S::ChanPWMConfig getChannelPWMConfig(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelPWMConfig(LT7182S::ChanPWMConfig config, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelPWMPhase(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelPWMPhase(float phase, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getPWMFrequency();
    void setPWMFrequency(float freq);

    float readChannelInputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float readChannelPeakInputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOnInputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOnInputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOffInputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOffInputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelInputUnderVoltageWarn(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelInputUnderVoltageWarn(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    float readChannelInputCurrent(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelInputOverCurrentWarn(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelInputOverCurrentWarn(float current, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    float readChannelOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float readChannelPeakOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelMaxOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelMaxOutputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelHighMarginOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelHighMarginOutputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelLowMarginOutputVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelLowMarginOutputVoltage(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputVoltageTransitionRate(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputVoltageTransitionRate(float rate, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputOverVoltageFault(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputOverVoltageFault(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputOverVoltageWarn(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputOverVoltageWarn(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputUnderVoltageFault(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputUnderVoltageFault(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputUnderVoltageWarn(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputUnderVoltageWarn(float voltage, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    float readChannelOutputCurrent(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float readChannelPeakOutputCurrent(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float getChannelOutputOverCurrentWarn(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    void setChannelOutputOverCurrentWarn(float current, LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    float readChannelFrequency(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float readChannelOutputPower(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);
    float readChannelITHVoltage(LT7182S::Chan ch = LT7182S::Chan::CH_NO_CHANGE);

    float readExternalVCCVoltage();
    float readTemperature();
    float readPeakTemperature();
    float getOverTemperatureFault();
    void setOverTemperatureFault(float temp);
    float getOverTemperatureWarn();
    void setOverTemperatureWarn(float temp);

private:
    LT7182S::IICConfig iic;
    LT7182S::IRQConfig irq_config;
    std::mutex mutex;
    std::mutex lock_mutex;
};