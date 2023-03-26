# CM4
## IOs
#set_property IOSTANDARD LVCMOS33 [get_ports PCIe_RESETn]
#set_property IOSTANDARD LVCMOS33 [get_ports PCIe_CLKREQn]
#set_property PACKAGE_PIN V20 [get_ports PCIe_RESETn]
#set_property PACKAGE_PIN V22 [get_ports PCIe_CLKREQn]

## GTP Lanes
#set_property LOC GTPE2_CHANNEL_X0Y4 [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
#set_property PACKAGE_PIN B8 [get_ports {PCIe_rxp[0]}]

## GTP Reference Clock
#set_property PACKAGE_PIN F10 [get_ports {PCIe_REFCLK_clk_p[0]}]

# Edge connector
## IOs
set_property IOSTANDARD LVCMOS33 [get_ports PCIe_RESETn]
set_property IOSTANDARD LVCMOS33 [get_ports {PCIe_CLKREQn[0]}]
set_property PACKAGE_PIN W21 [get_ports PCIe_RESETn]
set_property PACKAGE_PIN W20 [get_ports {PCIe_CLKREQn[0]}]

## GTP Lanes
set_property LOC GTPE2_CHANNEL_X0Y7 [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[0].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property LOC GTPE2_CHANNEL_X0Y6 [get_cells {icyradio_i/axi_pcie_0/inst/comp_axi_enhanced_pcie/comp_enhanced_core_top_wrap/axi_pcie_enhanced_core_top_i/pcie_7x_v2_0_2_inst/pcie_top_with_gt_top.gt_ges.gt_top_i/pipe_wrapper_i/pipe_lane[1].gt_wrapper_i/gtp_channel.gtpe2_channel_i}]
set_property PACKAGE_PIN D9 [get_ports {PCIe_rxp[0]}]
set_property PACKAGE_PIN B10 [get_ports {PCIe_rxp[1]}]

## GTP Reference Clock
set_property PACKAGE_PIN F10 [get_ports {PCIe_REFCLK_clk_p[0]}]