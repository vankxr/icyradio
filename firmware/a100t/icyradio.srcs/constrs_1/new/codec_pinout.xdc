# I2C
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_sda_io]
set_property PACKAGE_PIN AA14 [get_ports AUDIO_I2C_scl_io]
set_property PACKAGE_PIN AA13 [get_ports AUDIO_I2C_sda_io]

# I2S
set_property IOB TRUE [get_ports CODEC_I2S_bclk]
set_property IOB TRUE [get_ports CODEC_I2S_lrclk]
set_property IOB TRUE [get_ports CODEC_I2S_sdata_in]
set_property IOB TRUE [get_ports CODEC_I2S_sdata_out]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_bclk]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_lrclk]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_sdata_in]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_sdata_out]
set_property PACKAGE_PIN V17 [get_ports CODEC_I2S_bclk]
set_property PACKAGE_PIN W17 [get_ports CODEC_I2S_lrclk]
set_property PACKAGE_PIN AA15 [get_ports CODEC_I2S_sdata_in]
set_property PACKAGE_PIN W16 [get_ports CODEC_I2S_sdata_out]

create_generated_clock -name CODEC_I2S_BCLK -source [get_pins -hier -filter {NAME =~ "*axi_i2s/i2s_src_clk"}] -divide_by 4
create_generated_clock -name CODEC_I2S_LRCLK -source [get_pins -hier -filter {NAME =~ "*axi_i2s/i2s_src_clk"}] -divide_by 4

# Master Clock
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_MCLK]
set_property PACKAGE_PIN AB13 [get_ports CODEC_MCLK]

create_generated_clock -name CODEC_MCLK -source [get_pins -hier -filter {NAME =~ "*axi_i2s/i2s_src_clk"}] -divide_by 2

# Control IOs
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_RSTn[0]}]
set_property PACKAGE_PIN Y19 [get_ports {CODEC_RSTn[0]}]


