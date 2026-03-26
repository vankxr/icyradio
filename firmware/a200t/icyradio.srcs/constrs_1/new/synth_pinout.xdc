# SPI
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_SPI_ss_io[0]}]
set_property PULLDOWN true [get_ports SYNTH_SPI_io0_io]
set_property PULLUP true [get_ports SYNTH_SPI_io1_io]
set_property PULLDOWN true [get_ports SYNTH_SPI_sck_io]
set_property PULLUP true [get_ports {SYNTH_SPI_ss_io[0]}]
set_property PACKAGE_PIN AB17 [get_ports SYNTH_SPI_io0_io]
set_property PACKAGE_PIN AB18 [get_ports SYNTH_SPI_io1_io]
set_property PACKAGE_PIN AA19 [get_ports SYNTH_SPI_sck_io]
set_property PACKAGE_PIN AA20 [get_ports {SYNTH_SPI_ss_io[0]}]
set_property DRIVE 4 [get_ports SYNTH_SPI_io0_io]
set_property DRIVE 4 [get_ports SYNTH_SPI_io1_io]
set_property DRIVE 4 [get_ports SYNTH_SPI_sck_io]
set_property DRIVE 4 [get_ports {SYNTH_SPI_ss_io[0]}]
set_property SLEW SLOW [get_ports SYNTH_SPI_io0_io]
set_property SLEW SLOW [get_ports SYNTH_SPI_io1_io]
set_property SLEW SLOW [get_ports SYNTH_SPI_sck_io]
set_property SLEW SLOW [get_ports {SYNTH_SPI_ss_io[0]}]

create_generated_clock -name SYNTH_SPI_SCK -source [get_pins -hier "*axi_spi_1/aclk"] -divide_by 6 [get_ports SYNTH_SPI_sck_io]
set_multicycle_path 6 -setup -from SYNTH_SPI_SCK -to [get_clocks -of_objects [get_pins -hier "*axi_spi_1/aclk"]]
set_multicycle_path 5 -hold -end -from SYNTH_SPI_SCK -to [get_clocks -of_objects [get_pins -hier "*axi_spi_1/aclk"]]
set_multicycle_path 6 -setup -start -from [get_clocks -of_objects [get_pins -hier "*axi_spi_1/aclk"]] -to SYNTH_SPI_SCK
set_multicycle_path 5 -hold -from [get_clocks -of_objects [get_pins -hier "*axi_spi_1/aclk"]] -to SYNTH_SPI_SCK

# I/O Delays
## Datasheet parameters (fill from datasheet timing tables)
set tco_min   0
set tco_max   10
set tsu       8
set thd       8

## PCB delays (fill from board estimates or PCB tool)
set pcb_clk   0.410
set pcb_data  0.410

## Derived delays
set in_delay_min  [expr {$tco_min + $pcb_data + $pcb_clk}]
set in_delay_max  [expr {$tco_max + $pcb_data + $pcb_clk}]
set out_delay_min [expr {-$thd + $pcb_data - $pcb_clk}]
set out_delay_max [expr {$tsu + $pcb_data - $pcb_clk}]

set_input_delay -clock SYNTH_SPI_SCK -clock_fall -max $in_delay_max [get_ports SYNTH_SPI_io0_io]
set_input_delay -clock SYNTH_SPI_SCK -clock_fall -min $in_delay_min [get_ports SYNTH_SPI_io0_io]
set_input_delay -clock SYNTH_SPI_SCK -clock_fall -max $in_delay_max [get_ports SYNTH_SPI_io1_io]
set_input_delay -clock SYNTH_SPI_SCK -clock_fall -min $in_delay_min [get_ports SYNTH_SPI_io1_io]

set_output_delay -clock SYNTH_SPI_SCK -max $out_delay_max [get_ports SYNTH_SPI_io0_io]
set_output_delay -clock SYNTH_SPI_SCK -min $out_delay_min [get_ports SYNTH_SPI_io0_io]
set_output_delay -clock SYNTH_SPI_SCK -max $out_delay_max [get_ports SYNTH_SPI_io1_io]
set_output_delay -clock SYNTH_SPI_SCK -min $out_delay_min [get_ports SYNTH_SPI_io1_io]

# Control IOs
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_RESETn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_CE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_MUTE[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_LD]
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_SYNC[0]}]
set_property PACKAGE_PIN AA16 [get_ports {SYNTH_RESETn[0]}]
set_property PACKAGE_PIN Y17 [get_ports {SYNTH_CE[0]}]
set_property PACKAGE_PIN AB21 [get_ports {SYNTH_MUTE[0]}]
set_property PACKAGE_PIN AB20 [get_ports SYNTH_LD]
set_property PACKAGE_PIN AB16 [get_ports {SYNTH_SYNC[0]}]
set_property DRIVE 4 [get_ports {SYNTH_RESETn[0]}]
set_property DRIVE 4 [get_ports {SYNTH_CE[0]}]
set_property DRIVE 4 [get_ports {SYNTH_MUTE[0]}]
set_property DRIVE 4 [get_ports {SYNTH_SYNC[0]}]
set_property SLEW SLOW [get_ports {SYNTH_RESETn[0]}]
set_property SLEW SLOW [get_ports {SYNTH_CE[0]}]
set_property SLEW SLOW [get_ports {SYNTH_MUTE[0]}]
set_property SLEW SLOW [get_ports {SYNTH_SYNC[0]}]