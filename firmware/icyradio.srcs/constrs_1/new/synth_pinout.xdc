# SPI
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SPI_sck_io]
set_property IOSTANDARD LVCMOS33 [get_ports {SYNTH_SPI_ss_io[0]}]
set_property PULLUP true [get_ports {SYNTH_SPI_ss_io[0]}]
set_property PACKAGE_PIN AB17 [get_ports SYNTH_SPI_io0_io]
set_property PACKAGE_PIN AB18 [get_ports SYNTH_SPI_io1_io]
set_property PACKAGE_PIN AA19 [get_ports SYNTH_SPI_sck_io]
set_property PACKAGE_PIN AA20 [get_ports {SYNTH_SPI_ss_io[0]}]

# Control IOs
#set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_RESETn]
#set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_CE]
#set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_MUTE]
#set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_LD]
#set_property IOSTANDARD LVCMOS33 [get_ports SYNTH_SYNC]
#set_property PACKAGE_PIN AA16 [get_ports SYNTH_RESETn]
#set_property PACKAGE_PIN Y17 [get_ports SYNTH_CE]
#set_property PACKAGE_PIN AB21 [get_ports SYNTH_MUTE]
#set_property PACKAGE_PIN AB20 [get_ports SYNTH_LD]
#set_property PACKAGE_PIN AB16 [get_ports SYNTH_SYNC]

