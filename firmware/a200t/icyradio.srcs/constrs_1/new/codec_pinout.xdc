# I2C
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_scl_io]
set_property IOSTANDARD LVCMOS33 [get_ports AUDIO_I2C_sda_io]
set_property PACKAGE_PIN AA14 [get_ports AUDIO_I2C_scl_io]
set_property PACKAGE_PIN AA13 [get_ports AUDIO_I2C_sda_io]
set_property DRIVE 4 [get_ports AUDIO_I2C_scl_io]
set_property DRIVE 4 [get_ports AUDIO_I2C_sda_io]
set_property SLEW SLOW [get_ports AUDIO_I2C_scl_io]
set_property SLEW SLOW [get_ports AUDIO_I2C_sda_io]

# I2S
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_bclk]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_lrclk]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_sdata_in]
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_I2S_sdata_out]
set_property PACKAGE_PIN V17 [get_ports CODEC_I2S_bclk]
set_property PACKAGE_PIN W17 [get_ports CODEC_I2S_lrclk]
set_property PACKAGE_PIN AA15 [get_ports CODEC_I2S_sdata_in]
set_property PACKAGE_PIN W16 [get_ports CODEC_I2S_sdata_out]
set_property DRIVE 4 [get_ports CODEC_I2S_bclk]
set_property DRIVE 4 [get_ports CODEC_I2S_lrclk]
set_property DRIVE 4 [get_ports CODEC_I2S_sdata_out]
set_property SLEW SLOW [get_ports CODEC_I2S_bclk]
set_property SLEW SLOW [get_ports CODEC_I2S_lrclk]
set_property SLEW SLOW [get_ports CODEC_I2S_sdata_out]

create_generated_clock -name CODEC_I2S_BCLK -source [get_pins -hier "*axi_i2s/i2s_src_clk"] -divide_by 4 [get_ports CODEC_I2S_bclk]
set_multicycle_path 4 -setup -from CODEC_I2S_BCLK -to [get_clocks -of_objects [get_pins -hier "*axi_i2s/i2s_src_clk"]]
set_multicycle_path 3 -hold -end -from CODEC_I2S_BCLK -to [get_clocks -of_objects [get_pins -hier "*axi_i2s/i2s_src_clk"]]
set_multicycle_path 4 -setup -start -from [get_clocks -of_objects [get_pins -hier "*axi_i2s/i2s_src_clk"]] -to CODEC_I2S_BCLK
set_multicycle_path 3 -hold -from [get_clocks -of_objects [get_pins -hier "*axi_i2s/i2s_src_clk"]] -to CODEC_I2S_BCLK

# I/O Delays
## Datasheet parameters (fill from datasheet timing tables)
set tco_min   30
set tco_max   30
set tsu       5
set thd       5
set tsu_c     10
set thd_c     10

## PCB delays (fill from board estimates or PCB tool)
set pcb_clk   0.931
set pcb_data  0.931

## Derived delays
set in_delay_min    [expr {$tco_min + $pcb_data + $pcb_clk}]
set in_delay_max    [expr {$tco_max + $pcb_data + $pcb_clk}]
set out_delay_min   [expr {-$thd + $pcb_data - $pcb_clk}]
set out_delay_max   [expr {$tsu + $pcb_data - $pcb_clk}]
set out_delay_min_c [expr {-$thd_c + $pcb_data - $pcb_clk}]
set out_delay_max_c [expr {$tsu_c + $pcb_data - $pcb_clk}]

set_input_delay -clock CODEC_I2S_BCLK -clock_fall -max $in_delay_max [get_ports CODEC_I2S_sdata_in]
set_input_delay -clock CODEC_I2S_BCLK -clock_fall -min $in_delay_min [get_ports CODEC_I2S_sdata_in]

set_output_delay -clock CODEC_I2S_BCLK -max $out_delay_max [get_ports CODEC_I2S_sdata_out]
set_output_delay -clock CODEC_I2S_BCLK -min $out_delay_min [get_ports CODEC_I2S_sdata_out]
set_output_delay -clock CODEC_I2S_BCLK -max $out_delay_max_c [get_ports CODEC_I2S_lrclk]
set_output_delay -clock CODEC_I2S_BCLK -min $out_delay_min_c [get_ports CODEC_I2S_lrclk]

# Ignore loopback path (purely combinational)
set_false_path -from [get_ports CODEC_I2S_sdata_in] -to [get_ports CODEC_I2S_sdata_out]

# Master Clock
set_property IOSTANDARD LVCMOS33 [get_ports CODEC_MCLK]
set_property PACKAGE_PIN AB13 [get_ports CODEC_MCLK]
set_property DRIVE 4 [get_ports CODEC_MCLK]
set_property SLEW SLOW [get_ports CODEC_MCLK]

create_generated_clock -name CODEC_MCLK -source [get_pins -hier "*axi_i2s/i2s_src_clk"] -divide_by 2 [get_ports CODEC_MCLK]

# Control IOs
set_property IOSTANDARD LVCMOS33 [get_ports {CODEC_RSTn[0]}]
set_property PACKAGE_PIN Y19 [get_ports {CODEC_RSTn[0]}]
set_property DRIVE 4 [get_ports {CODEC_RSTn[0]}]
set_property SLEW SLOW [get_ports {CODEC_RSTn[0]}]


