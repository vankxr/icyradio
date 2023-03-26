# I2C
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_sda_io]
set_property PACKAGE_PIN AA14 [get_ports AUDIO_I2C_scl_io]
set_property PACKAGE_PIN AA13 [get_ports AUDIO_I2C_sda_io]

# I2S
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_I2S_bclk[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_I2S_lrclk[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_I2S_sdata_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_I2S_sdata_out[0]}]
set_property PACKAGE_PIN V17 [get_ports {CODEC_I2S_bclk[0]}]
set_property PACKAGE_PIN W17 [get_ports {CODEC_I2S_lrclk[0]}]
set_property PACKAGE_PIN AA15 [get_ports {CODEC_I2S_sdata_in[0]}]
set_property PACKAGE_PIN W16 [get_ports {CODEC_I2S_sdata_out[0]}]

# Master Clock
#set_property IOSTANDARD LVCMOS33 [get_ports CODEC_MCLK]
#set_property PACKAGE_PIN AB13 [get_ports CODEC_MCLK]

# Control IOs
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_RSTn[0]}]
set_property PACKAGE_PIN Y19 [get_ports {CODEC_RSTn[0]}]

