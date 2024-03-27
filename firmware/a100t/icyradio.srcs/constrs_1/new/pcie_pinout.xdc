# CM4
## IOs
# Note: PCIe_WAKEn is not connected to the RPi, just for completeness
set_property IOSTANDARD LVCMOS33 [get_ports PCIe_WAKEn]
set_property IOSTANDARD LVCMOS33 [get_ports PCIe_RESETn]
set_property IOSTANDARD LVCMOS33 [get_ports PCIe_CLKREQn]
set_property PACKAGE_PIN N15 [get_ports PCIe_WAKEn]
set_property PACKAGE_PIN V20 [get_ports PCIe_RESETn]
set_property PACKAGE_PIN V22 [get_ports PCIe_CLKREQn]

## GTP Lanes
# Note: Lane 1 is not connected to the RPi, just for completeness
set_property LOC {} [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property LOC {} [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN B8 [get_ports {PCIe_rxp[0]}]
set_property PACKAGE_PIN B4 [get_ports {PCIe_txp[0]}]
set_property PACKAGE_PIN D11 [get_ports {PCIe_rxp[1]}] 
set_property PACKAGE_PIN D5 [get_ports {PCIe_txp[1]}]

## GTP Reference Clock
set_property PACKAGE_PIN F6 [get_ports {PCIe_REFCLK_clk_p[0]}]
create_clock -period 10.000 -name PCIe_REFCLK [get_ports {PCIe_REFCLK_clk_p[0]}]
set_input_jitter PCIe_REFCLK 4.0

# Edge connector
## IOs
#set_property IOSTANDARD LVCMOS33 [get_ports PCIe_WAKEn]
#set_property IOSTANDARD LVCMOS33 [get_ports PCIe_RESETn]
#set_property IOSTANDARD LVCMOS33 [get_ports PCIe_CLKREQn]
#set_property PACKAGE_PIN W22 [get_ports PCIe_WAKEn]
#set_property PACKAGE_PIN W21 [get_ports PCIe_RESETn]
#set_property PACKAGE_PIN W20 [get_ports PCIe_CLKREQn]

## GTP Lanes
#set_property LOC {} [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
#set_property LOC {} [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
#set_property PACKAGE_PIN B10 [get_ports {PCIe_rxp[0]}]
#set_property PACKAGE_PIN B6 [get_ports {PCIe_txp[0]}]
#set_property PACKAGE_PIN D9 [get_ports {PCIe_rxp[1]}]
#set_property PACKAGE_PIN D7 [get_ports {PCIe_txp[1]}]

## GTP Reference Clock
#set_property PACKAGE_PIN F10 [get_ports {PCIe_REFCLK_clk_p[0]}]
#create_clock -period 10.000 -name PCIe_REFCLK [get_ports {PCIe_REFCLK_clk_p[0]}]
#set_input_jitter PCIe_REFCLK 4.0