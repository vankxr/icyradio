set_property IOSTANDARD LVCMOS33 [get_ports FLASH_QSPI_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports FLASH_QSPI_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports FLASH_QSPI_io2_io]
set_property IOSTANDARD LVCMOS33 [get_ports FLASH_QSPI_io3_io]
set_property IOSTANDARD LVCMOS33 [get_ports FLASH_QSPI_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {FLASH_QSPI_ss_io[0]}]
set_property PULLDOWN true [get_ports FLASH_QSPI_io0_io]
set_property PULLDOWN true [get_ports FLASH_QSPI_io1_io]
set_property PULLDOWN true [get_ports FLASH_QSPI_io2_io]
set_property PULLDOWN true [get_ports FLASH_QSPI_io3_io]
set_property PULLDOWN true [get_ports FLASH_QSPI_sck_io]
set_property PULLUP true [get_ports {FLASH_QSPI_ss_io[0]}]
set_property PACKAGE_PIN P22 [get_ports FLASH_QSPI_io0_io]
set_property PACKAGE_PIN R22 [get_ports FLASH_QSPI_io1_io]
set_property PACKAGE_PIN P21 [get_ports FLASH_QSPI_io2_io]
set_property PACKAGE_PIN R21 [get_ports FLASH_QSPI_io3_io]
set_property PACKAGE_PIN N13 [get_ports FLASH_QSPI_sck_io]
set_property PACKAGE_PIN T19 [get_ports {FLASH_QSPI_ss_io[0]}]
set_property DRIVE 4 [get_ports FLASH_QSPI_io0_io]
set_property DRIVE 4 [get_ports FLASH_QSPI_io1_io]
set_property DRIVE 4 [get_ports FLASH_QSPI_io2_io]
set_property DRIVE 4 [get_ports FLASH_QSPI_io3_io]
set_property DRIVE 4 [get_ports FLASH_QSPI_sck_io]
set_property DRIVE 4 [get_ports {FLASH_QSPI_ss_io[0]}]
set_property SLEW SLOW [get_ports FLASH_QSPI_io0_io]
set_property SLEW SLOW [get_ports FLASH_QSPI_io1_io]
set_property SLEW SLOW [get_ports FLASH_QSPI_io2_io]
set_property SLEW SLOW [get_ports FLASH_QSPI_io3_io]
set_property SLEW SLOW [get_ports FLASH_QSPI_sck_io]
set_property SLEW SLOW [get_ports {FLASH_QSPI_ss_io[0]}]

create_generated_clock -name FLASH_QSPI_SCK -source [get_pins -hier "*axi_qspi_mm_0/aclk"] -divide_by 4 [get_ports FLASH_QSPI_sck_io]
set_multicycle_path 4 -setup -from FLASH_QSPI_SCK -to [get_clocks -of_objects [get_pins -hier "*axi_qspi_mm_0/aclk"]]
set_multicycle_path 3 -hold -end -from FLASH_QSPI_SCK -to [get_clocks -of_objects [get_pins -hier "*axi_qspi_mm_0/aclk"]]
set_multicycle_path 4 -setup -start -from [get_clocks -of_objects [get_pins -hier "*axi_qspi_mm_0/aclk"]] -to FLASH_QSPI_SCK
set_multicycle_path 3 -hold -from [get_clocks -of_objects [get_pins -hier "*axi_qspi_mm_0/aclk"]] -to FLASH_QSPI_SCK

# I/O Delays
## Datasheet parameters (fill from datasheet timing tables)
set tco_min   0
set tco_max   7
set tsu       2
set thd       3

## PCB delays (fill from board estimates or PCB tool)
set pcb_clk   0.297
set pcb_data  0.245

## Derived delays
set in_delay_min  [expr {$tco_min + $pcb_data + $pcb_clk}]
set in_delay_max  [expr {$tco_max + $pcb_data + $pcb_clk}]
set out_delay_min [expr {-$thd + $pcb_data - $pcb_clk}]
set out_delay_max [expr {$tsu + $pcb_data - $pcb_clk}]

set_input_delay -clock FLASH_QSPI_SCK -clock_fall -max $in_delay_max [get_ports FLASH_QSPI_io0_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -min $in_delay_min [get_ports FLASH_QSPI_io0_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -max $in_delay_max [get_ports FLASH_QSPI_io1_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -min $in_delay_min [get_ports FLASH_QSPI_io1_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -max $in_delay_max [get_ports FLASH_QSPI_io2_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -min $in_delay_min [get_ports FLASH_QSPI_io2_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -max $in_delay_max [get_ports FLASH_QSPI_io3_io]
set_input_delay -clock FLASH_QSPI_SCK -clock_fall -min $in_delay_min [get_ports FLASH_QSPI_io3_io]

set_output_delay -clock FLASH_QSPI_SCK -max $out_delay_max [get_ports FLASH_QSPI_io0_io]
set_output_delay -clock FLASH_QSPI_SCK -min $out_delay_min [get_ports FLASH_QSPI_io0_io]
set_output_delay -clock FLASH_QSPI_SCK -max $out_delay_max [get_ports FLASH_QSPI_io1_io]
set_output_delay -clock FLASH_QSPI_SCK -min $out_delay_min [get_ports FLASH_QSPI_io1_io]
set_output_delay -clock FLASH_QSPI_SCK -max $out_delay_max [get_ports FLASH_QSPI_io2_io]
set_output_delay -clock FLASH_QSPI_SCK -min $out_delay_min [get_ports FLASH_QSPI_io2_io]
set_output_delay -clock FLASH_QSPI_SCK -max $out_delay_max [get_ports FLASH_QSPI_io3_io]
set_output_delay -clock FLASH_QSPI_SCK -min $out_delay_min [get_ports FLASH_QSPI_io3_io]