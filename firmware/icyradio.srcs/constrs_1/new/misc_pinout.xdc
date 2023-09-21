# XADC default
set_property PACKAGE_PIN M9 [get_ports ADCIN_MAIN_v_n]

# System control I2C (Clock Manager & Gated Power Management)
set_property IOSTANDARD LVCMOS33 [get_ports SYS_I2C_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports SYS_I2C_sda_io]
set_property PACKAGE_PIN Y22 [get_ports SYS_I2C_scl_io]
set_property PACKAGE_PIN AB22 [get_ports SYS_I2C_sda_io]

# Power management
set_property IOSTANDARD LVCMOS33 [get_ports VIN_REG_ALERTn]
set_property IOSTANDARD LVCMOS33 [get_ports {PM_I2C_EN[0]}]
set_property PACKAGE_PIN W15 [get_ports VIN_REG_ALERTn]
set_property PACKAGE_PIN AA18 [get_ports {PM_I2C_EN[0]}]

# Compute Module 4
set_property IOSTANDARD LVCMOS25 [get_ports {CM4_WAKE[0]}]
#set_property IOSTANDARD SSTLxxx [get_ports CM4_PTP_PPS_IN]
#set_property IOSTANDARD SSTLxxx [get_ports CM4_PTP_PPS_OUT]
set_property PACKAGE_PIN A13 [get_ports {CM4_WAKE[0]}]
#set_property PACKAGE_PIN B1 [get_ports CM4_PTP_PPS_IN]
#set_property PACKAGE_PIN A1 [get_ports CM4_PTP_PPS_OUT]

# RFFE Amplifier & Bias-T power switches overcurrent flags
set_property IOSTANDARD LVCMOS25 [get_ports TRX_5V0_PA1_OCn]
set_property IOSTANDARD LVCMOS25 [get_ports TRX_5V0_PA2_OCn]
set_property IOSTANDARD LVCMOS25 [get_ports TRX_5V0_BIAS_T1_OCn]
set_property IOSTANDARD LVCMOS25 [get_ports TRX_5V0_BIAS_T2_OCn]
set_property PACKAGE_PIN A19 [get_ports TRX_5V0_PA1_OCn]
set_property PACKAGE_PIN A21 [get_ports TRX_5V0_PA2_OCn]
set_property PACKAGE_PIN A20 [get_ports TRX_5V0_BIAS_T1_OCn]
set_property PACKAGE_PIN A18 [get_ports TRX_5V0_BIAS_T2_OCn]


