
################################################################
# This is a generated script based on design: icyradio
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source icyradio_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name icyradio

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

  # Add USER_COMMENTS on $design_name
  set_property USER_COMMENTS.comment_0 "Build Timestamping IP and connect to 2 AND gates that are currently masked with VCC to apply backpressure to DMA and ADC" [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_1 "For TX, we apply back-pressure by telling the Unpacker that the data from the DMA is not ready.
Since the Unpacker copies the valid signal into the ready signal, there is no need to signal the DMA that the Unpacker is not ready." [get_bd_designs $design_name]
  set_property USER_COMMENTS.comment_2 "For RX, we apply back-pressure by masking the wr_en from the ADC. This way, the ADC keeps spitting out samples that get ignored by the Packer." [get_bd_designs $design_name]

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}


##################################################################
# MIG PRJ FILE TCL PROCs
##################################################################

proc write_mig_file_icyradio_mig_7series_0_0 { str_mig_prj_filepath } {

   file mkdir [ file dirname "$str_mig_prj_filepath" ]
   set mig_prj_file [open $str_mig_prj_filepath  w+]

   puts $mig_prj_file {﻿<?xml version="1.0" encoding="UTF-8" standalone="no" ?>}
   puts $mig_prj_file {<Project NoOfControllers="1">}
   puts $mig_prj_file {  }
   puts $mig_prj_file {<!-- IMPORTANT: This is an internal file that has been generated by the MIG software. Any direct editing or changes made to this file may result in unpredictable behavior or data corruption. It is strongly advised that users do not edit the contents of this file. Re-run the MIG GUI with the required settings if any of the options provided below need to be altered. -->}
   puts $mig_prj_file {  <ModuleName>icyradio_mig_7series_0_0</ModuleName>}
   puts $mig_prj_file {  <dci_inouts_inputs>1</dci_inouts_inputs>}
   puts $mig_prj_file {  <dci_inputs>1</dci_inputs>}
   puts $mig_prj_file {  <Debug_En>OFF</Debug_En>}
   puts $mig_prj_file {  <DataDepth_En>1024</DataDepth_En>}
   puts $mig_prj_file {  <LowPower_En>ON</LowPower_En>}
   puts $mig_prj_file {  <XADC_En>Disabled</XADC_En>}
   puts $mig_prj_file {  <TargetFPGA>xc7a100t-fgg484/-2</TargetFPGA>}
   puts $mig_prj_file {  <Version>4.2</Version>}
   puts $mig_prj_file {  <SystemClock>Differential</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>TRUE</BankSelectionFlag>}
   puts $mig_prj_file {  <InternalVref>0</InternalVref>}
   puts $mig_prj_file {  <dci_hr_inouts_inputs>40 Ohms</dci_hr_inouts_inputs>}
   puts $mig_prj_file {  <dci_cascade>0</dci_cascade>}
   puts $mig_prj_file {  <FPGADevice>}
   puts $mig_prj_file {    <selected>7a/xc7a35t-fgg484</selected>}
   puts $mig_prj_file {    <selected>7a/xc7a50t-fgg484</selected>}
   puts $mig_prj_file {    <selected>7a/xc7a75t-fgg484</selected>}
   puts $mig_prj_file {    <selected>7a/xc7a15t-fgg484</selected>}
   puts $mig_prj_file {  </FPGADevice>}
   puts $mig_prj_file {  <Controller number="0">}
   puts $mig_prj_file {    <MemoryDevice>DDR3_SDRAM/Components/MT41K256M16XX-125</MemoryDevice>}
   puts $mig_prj_file {    <TimePeriod>3000</TimePeriod>}
   puts $mig_prj_file {    <VccAuxIO>1.8V</VccAuxIO>}
   puts $mig_prj_file {    <PHYRatio>4:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>333.333</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>1</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>666</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 3.250</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>26</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>66</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>32</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Strict</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>15</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.35V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>1073741824</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <BankSelection>}
   puts $mig_prj_file {      <Bank T1="DQ[0-7]" T2="DQ[8-15]" T3="DQ[16-23]" name="35"/>}
   puts $mig_prj_file {      <Bank T0="DQ[24-31]" T1="Address/Ctrl-0" T2="Address/Ctrl-1" T3="Address/Ctrl-2" name="34"/>}
   puts $mig_prj_file {    </BankSelection>}
   puts $mig_prj_file {    <System_Clock>}
   puts $mig_prj_file {      <Pin Bank="34" PADName="R4/T4(CC_P/N)" name="sys_clk_p/n"/>}
   puts $mig_prj_file {    </System_Clock>}
   puts $mig_prj_file {    <System_Control>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="sys_rst"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="init_calib_complete"/>}
   puts $mig_prj_file {      <Pin Bank="Select Bank" PADName="No connect" name="tg_compare_error"/>}
   puts $mig_prj_file {    </System_Control>}
   puts $mig_prj_file {    <TimingParameters>}
   puts $mig_prj_file {      <Parameters tcke="5" tfaw="40" tras="35" trcd="13.75" trefi="7.8" trfc="260" trp="13.75" trrd="7.5" trtp="7.5" twtr="7.5"/>}
   puts $mig_prj_file {    </TimingParameters>}
   puts $mig_prj_file {    <mrBurstLength name="Burst Length">8 - Fixed</mrBurstLength>}
   puts $mig_prj_file {    <mrBurstType name="Read Burst Type and Length">Sequential</mrBurstType>}
   puts $mig_prj_file {    <mrCasLatency name="CAS Latency">5</mrCasLatency>}
   puts $mig_prj_file {    <mrMode name="Mode">Normal</mrMode>}
   puts $mig_prj_file {    <mrDllReset name="DLL Reset">No</mrDllReset>}
   puts $mig_prj_file {    <mrPdMode name="DLL control for precharge PD">Slow Exit</mrPdMode>}
   puts $mig_prj_file {    <emrDllEnable name="DLL Enable">Enable</emrDllEnable>}
   puts $mig_prj_file {    <emrOutputDriveStrength name="Output Driver Impedance Control">RZQ/6</emrOutputDriveStrength>}
   puts $mig_prj_file {    <emrMirrorSelection name="Address Mirroring">Disable</emrMirrorSelection>}
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Enable</emrCSSelection>}
   puts $mig_prj_file {    <emrRTT name="RTT (nominal) - On Die Termination (ODT)">RZQ/6</emrRTT>}
   puts $mig_prj_file {    <emrPosted name="Additive Latency (AL)">0</emrPosted>}
   puts $mig_prj_file {    <emrOCD name="Write Leveling Enable">Disabled</emrOCD>}
   puts $mig_prj_file {    <emrDQS name="TDQS enable">Enabled</emrDQS>}
   puts $mig_prj_file {    <emrRDQS name="Qoff">Output Buffer Enabled</emrRDQS>}
   puts $mig_prj_file {    <mr2PartialArraySelfRefresh name="Partial-Array Self Refresh">Full Array</mr2PartialArraySelfRefresh>}
   puts $mig_prj_file {    <mr2CasWriteLatency name="CAS write latency">5</mr2CasWriteLatency>}
   puts $mig_prj_file {    <mr2AutoSelfRefresh name="Auto Self Refresh">Enabled</mr2AutoSelfRefresh>}
   puts $mig_prj_file {    <mr2SelfRefreshTempRange name="High Temparature Self Refresh Rate">Normal</mr2SelfRefreshTempRange>}
   puts $mig_prj_file {    <mr2RTTWR name="RTT_WR - Dynamic On Die Termination (ODT)">Dynamic ODT off</mr2RTTWR>}
   puts $mig_prj_file {    <PortInterface>AXI</PortInterface>}
   puts $mig_prj_file {    <AXIParameters>}
   puts $mig_prj_file {      <C0_C_RD_WR_ARB_ALGORITHM>RD_PRI_REG</C0_C_RD_WR_ARB_ALGORITHM>}
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>30</C0_S_AXI_ADDR_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_DATA_WIDTH>64</C0_S_AXI_DATA_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_ID_WIDTH>4</C0_S_AXI_ID_WIDTH>}
   puts $mig_prj_file {      <C0_S_AXI_SUPPORTS_NARROW_BURST>1</C0_S_AXI_SUPPORTS_NARROW_BURST>}
   puts $mig_prj_file {    </AXIParameters>}
   puts $mig_prj_file {  </Controller>}
   puts $mig_prj_file {</Project>}

   close $mig_prj_file
}
# End of write_mig_file_icyradio_mig_7series_0_0()



##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set ADCIN_MAIN [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 ADCIN_MAIN ]

  set AUDIO_I2C [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 AUDIO_I2C ]

  set CODEC_I2S [ create_bd_intf_port -mode Master -vlnv analog.com:interface:i2s_rtl:1.0 CODEC_I2S ]

  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]

  set DDR3_CLK_IN [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 DDR3_CLK_IN ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {33333333} \
   ] $DDR3_CLK_IN

  set FLASH_QSPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 FLASH_QSPI ]

  set GPIO0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO0 ]

  set GPIO1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 GPIO1 ]

  set PCIe [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 PCIe ]

  set PCIe_REFCLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIe_REFCLK ]

  set SYNTH_SPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SYNTH_SPI ]

  set SYS_I2C [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 SYS_I2C ]

  set TRX_SPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_SPI ]


  # Create ports
  set CODEC_RESETn [ create_bd_port -dir O -from 0 -to 0 CODEC_RESETn ]
  set I2S_BCLK_IN [ create_bd_port -dir I -type clk -freq_hz 49152000 I2S_BCLK_IN ]
  set_property -dict [ list \
   CONFIG.PHASE {0.0} \
 ] $I2S_BCLK_IN
  set PCIe_CLKREQn [ create_bd_port -dir O -from 0 -to 0 PCIe_CLKREQn ]
  set PCIe_RESETn [ create_bd_port -dir I -type rst PCIe_RESETn ]
  set PM_I2C_EN [ create_bd_port -dir O -from 0 -to 0 PM_I2C_EN ]
  set RESETn [ create_bd_port -dir I -type rst RESETn ]
  set TRX_CLK_OUT [ create_bd_port -dir I -type clk -freq_hz 100000000 TRX_CLK_OUT ]
  set TRX_CTRL_IN [ create_bd_port -dir O -from 3 -to 0 TRX_CTRL_IN ]
  set TRX_CTRL_OUT [ create_bd_port -dir I -from 7 -to 0 TRX_CTRL_OUT ]
  set TRX_DATA_CLK [ create_bd_port -dir I -type clk -freq_hz 61440000 TRX_DATA_CLK ]
  set TRX_EN [ create_bd_port -dir O TRX_EN ]
  set TRX_EN_AGC [ create_bd_port -dir O -from 0 -to 0 TRX_EN_AGC ]
  set TRX_FBCLK [ create_bd_port -dir O -type clk TRX_FBCLK ]
  set TRX_P0_TXDATA [ create_bd_port -dir O -from 11 -to 0 -type data TRX_P0_TXDATA ]
  set TRX_P1_RXDATA [ create_bd_port -dir I -from 11 -to 0 -type data TRX_P1_RXDATA ]
  set TRX_RESETn [ create_bd_port -dir O -from 0 -to 0 -type rst TRX_RESETn ]
  set TRX_RXFRAME [ create_bd_port -dir I TRX_RXFRAME ]
  set TRX_SYNC_IN [ create_bd_port -dir O -from 0 -to 0 TRX_SYNC_IN ]
  set TRX_TXFRAME [ create_bd_port -dir O TRX_TXFRAME ]
  set TRX_TXNRX [ create_bd_port -dir O TRX_TXNRX ]

  # Create instance: GND_0, and set properties
  set GND_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_0

  # Create instance: GND_1, and set properties
  set GND_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $GND_1

  # Create instance: GND_2, and set properties
  set GND_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_2 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {13} \
 ] $GND_2

  # Create instance: SOFT_RESET, and set properties
  set SOFT_RESET [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 SOFT_RESET ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $SOFT_RESET

  # Create instance: VCC_0, and set properties
  set VCC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 VCC_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $VCC_0

  # Create instance: ad9361_adc_packer, and set properties
  set ad9361_adc_packer [ create_bd_cell -type ip -vlnv analog.com:user:util_cpack2:1.0 ad9361_adc_packer ]

  # Create instance: ad9361_dac_unpacker, and set properties
  set ad9361_dac_unpacker [ create_bd_cell -type ip -vlnv analog.com:user:util_upack2:1.0 ad9361_dac_unpacker ]

  # Create instance: axi_ad9361, and set properties
  set axi_ad9361 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9361 ]
  set_property -dict [ list \
   CONFIG.ADC_USERPORTS_DISABLE {1} \
   CONFIG.CMOS_OR_LVDS_N {1} \
   CONFIG.DAC_USERPORTS_DISABLE {1} \
   CONFIG.DELAY_REFCLK_FREQUENCY {204} \
   CONFIG.TDD_DISABLE {1} \
 ] $axi_ad9361

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {64} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.SINGLE_PORT_BRAM {1} \
   CONFIG.USE_ECC {0} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_cpu_dma_interconnect, and set properties
  set axi_cpu_dma_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_cpu_dma_interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {5} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S03_HAS_DATA_FIFO {2} \
   CONFIG.S04_HAS_DATA_FIFO {2} \
   CONFIG.S05_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
   CONFIG.XBAR_DATA_WIDTH {64} \
 ] $axi_cpu_dma_interconnect

  # Create instance: axi_dmac_i2s_rx, and set properties
  set axi_dmac_i2s_rx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_i2s_rx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_DATA_WIDTH_DEST {64} \
   CONFIG.DMA_DATA_WIDTH_SRC {32} \
   CONFIG.DMA_LENGTH_WIDTH {16} \
   CONFIG.DMA_TYPE_DEST {0} \
   CONFIG.DMA_TYPE_SRC {1} \
 ] $axi_dmac_i2s_rx

  # Create instance: axi_dmac_i2s_tx, and set properties
  set axi_dmac_i2s_tx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_i2s_tx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_DATA_WIDTH_DEST {32} \
   CONFIG.DMA_LENGTH_WIDTH {16} \
   CONFIG.DMA_TYPE_DEST {1} \
   CONFIG.DMA_TYPE_SRC {0} \
 ] $axi_dmac_i2s_tx

  # Create instance: axi_dmac_rf_rx, and set properties
  set axi_dmac_rf_rx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_rf_rx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_LENGTH_WIDTH {16} \
   CONFIG.SYNC_TRANSFER_START {true} \
 ] $axi_dmac_rf_rx

  # Create instance: axi_dmac_rf_tx, and set properties
  set axi_dmac_rf_tx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_rf_tx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_LENGTH_WIDTH {16} \
   CONFIG.DMA_TYPE_DEST {1} \
   CONFIG.DMA_TYPE_SRC {0} \
 ] $axi_dmac_rf_tx

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_GPIO2_WIDTH {2} \
   CONFIG.C_GPIO_WIDTH {2} \
   CONFIG.C_INTERRUPT_PRESENT {1} \
   CONFIG.C_IS_DUAL {1} \
 ] $axi_gpio_0

  # Create instance: axi_i2s_adi_0, and set properties
  set axi_i2s_adi_0 [ create_bd_cell -type ip -vlnv analog.com:user:axi_i2s_adi:1.0 axi_i2s_adi_0 ]
  set_property -dict [ list \
   CONFIG.NUM_OF_CHANNEL {1} \
   CONFIG.SLOT_WIDTH {24} \
 ] $axi_i2s_adi_0

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.1 axi_iic_0 ]

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.1 axi_iic_1 ]

  # Create instance: axi_pcie_0, and set properties
  set axi_pcie_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_pcie:2.9 axi_pcie_0 ]
  set_property -dict [ list \
   CONFIG.AXIBAR2PCIEBAR_0 {0x60000000} \
   CONFIG.AXIBAR_NUM {1} \
   CONFIG.BAR0_SCALE {Megabytes} \
   CONFIG.BAR0_SIZE {1} \
   CONFIG.BAR1_ENABLED {true} \
   CONFIG.BAR1_SCALE {Megabytes} \
   CONFIG.BAR1_SIZE {256} \
   CONFIG.BAR1_TYPE {Memory} \
   CONFIG.BAR_64BIT {false} \
   CONFIG.DEVICE_ID {0x7022} \
   CONFIG.MAX_LINK_SPEED {5.0_GT/s} \
   CONFIG.M_AXI_DATA_WIDTH {64} \
   CONFIG.NO_OF_LANES {X2} \
   CONFIG.NUM_MSI_REQ {5} \
   CONFIG.PCIEBAR2AXIBAR_0 {0x40000000} \
   CONFIG.PCIEBAR2AXIBAR_1 {0xA0000000} \
   CONFIG.S_AXI_DATA_WIDTH {64} \
   CONFIG.S_AXI_SUPPORTS_NARROW_BURST {true} \
 ] $axi_pcie_0

  # Create instance: axi_pcie_interconnect, and set properties
  set axi_pcie_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_pcie_interconnect ]
  set_property -dict [ list \
   CONFIG.NUM_MI {4} \
   CONFIG.NUM_SI {2} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
 ] $axi_pcie_interconnect

  # Create instance: axi_peripheral_interconnect, and set properties
  set axi_peripheral_interconnect [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_peripheral_interconnect ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {1} \
   CONFIG.ENABLE_PROTOCOL_CHECKERS {0} \
   CONFIG.NUM_MI {14} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S00_HAS_REGSLICE {0} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {1} \
   CONFIG.XBAR_DATA_WIDTH {32} \
 ] $axi_peripheral_interconnect

  # Create instance: axi_protocol_convert_0, and set properties
  set axi_protocol_convert_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_protocol_converter:2.1 axi_protocol_convert_0 ]
  set_property -dict [ list \
   CONFIG.MI_PROTOCOL {AXI4LITE} \
   CONFIG.SI_PROTOCOL {AXI4} \
 ] $axi_protocol_convert_0

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SHARED_STARTUP {1} \
   CONFIG.C_SPI_MEMORY {1} \
   CONFIG.C_SPI_MEM_ADDR_BITS {24} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
   CONFIG.C_USE_STARTUP {1} \
   CONFIG.C_XIP_MODE {1} \
   CONFIG.C_XIP_PERF_MODE {0} \
 ] $axi_quad_spi_0

  # Create instance: axi_quad_spi_1, and set properties
  set axi_quad_spi_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_1 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {4} \
   CONFIG.C_USE_STARTUP {0} \
 ] $axi_quad_spi_1

  # Create instance: axi_quad_spi_2, and set properties
  set axi_quad_spi_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_2 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {4} \
   CONFIG.C_USE_STARTUP {0} \
 ] $axi_quad_spi_2

  # Create instance: ext_reset_combiner, and set properties
  set ext_reset_combiner [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 ext_reset_combiner ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $ext_reset_combiner

  # Create instance: int_reset_combiner, and set properties
  set int_reset_combiner [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 int_reset_combiner ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $int_reset_combiner

  # Create instance: irq_concat_0, and set properties
  set irq_concat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 irq_concat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $irq_concat_0

  # Create instance: irq_concat_1, and set properties
  set irq_concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 irq_concat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN4_WIDTH {13} \
   CONFIG.NUM_PORTS {5} \
 ] $irq_concat_1

  # Create instance: logic_and_0, and set properties
  set logic_and_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_and_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $logic_and_0

  # Create instance: logic_and_2, and set properties
  set logic_and_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_and_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
 ] $logic_and_2

  # Create instance: logic_or_0, and set properties
  set logic_or_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_or_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $logic_or_0

  # Create instance: logic_or_1, and set properties
  set logic_or_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_or_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $logic_or_1

  # Create instance: mig_7series_0, and set properties
  set mig_7series_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mig_7series:4.2 mig_7series_0 ]

  # Generate the PRJ File for MIG
  set str_mig_folder [get_property IP_DIR [ get_ips [ get_property CONFIG.Component_Name $mig_7series_0 ] ] ]
  set str_mig_file_name mig_b.prj
  set str_mig_file_path ${str_mig_folder}/${str_mig_file_name}

  write_mig_file_icyradio_mig_7series_0_0 $str_mig_file_path

  set_property -dict [ list \
   CONFIG.BOARD_MIG_PARAM {Custom} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.XML_INPUT_FILE {mig_b.prj} \
 ] $mig_7series_0

  # Create instance: picorv32_0, and set properties
  set picorv32_0 [ create_bd_cell -type ip -vlnv clifford.at:user:picorv32:1.0 picorv32_0 ]
  set_property -dict [ list \
   CONFIG.COMPRESSED_ISA {true} \
   CONFIG.ENABLE_DIV {true} \
   CONFIG.ENABLE_IRQ {true} \
   CONFIG.ENABLE_MUL {true} \
   CONFIG.ENABLE_TRACE {false} \
 ] $picorv32_0

  # Create instance: rst_axi_pcie_0_125M, and set properties
  set rst_axi_pcie_0_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_pcie_0_125M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $rst_axi_pcie_0_125M

  # Create instance: rst_mig_7series_0_10M, and set properties
  set rst_mig_7series_0_10M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_10M ]

  # Create instance: rst_mig_7series_0_166M, and set properties
  set rst_mig_7series_0_166M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_166M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
 ] $rst_mig_7series_0_166M

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
   CONFIG.AVERAGE_ENABLE_TEMPERATURE {true} \
   CONFIG.AVERAGE_ENABLE_VBRAM {true} \
   CONFIG.AVERAGE_ENABLE_VCCAUX {true} \
   CONFIG.AVERAGE_ENABLE_VCCINT {true} \
   CONFIG.AVERAGE_ENABLE_VP_VN {true} \
   CONFIG.CHANNEL_AVERAGING {16} \
   CONFIG.CHANNEL_ENABLE_CALIBRATION {false} \
   CONFIG.CHANNEL_ENABLE_TEMPERATURE {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP0_VAUXN0 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP10_VAUXN10 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP11_VAUXN11 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP12_VAUXN12 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP13_VAUXN13 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP14_VAUXN14 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP15_VAUXN15 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP1_VAUXN1 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP2_VAUXN2 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP3_VAUXN3 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP4_VAUXN4 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP5_VAUXN5 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP6_VAUXN6 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP7_VAUXN7 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP8_VAUXN8 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP9_VAUXN9 {false} \
   CONFIG.CHANNEL_ENABLE_VBRAM {true} \
   CONFIG.CHANNEL_ENABLE_VCCAUX {true} \
   CONFIG.CHANNEL_ENABLE_VCCINT {true} \
   CONFIG.CHANNEL_ENABLE_VP_VN {true} \
   CONFIG.CHANNEL_ENABLE_VREFN {false} \
   CONFIG.CHANNEL_ENABLE_VREFP {false} \
   CONFIG.ENABLE_EXTERNAL_MUX {false} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.ENABLE_TEMP_BUS {true} \
   CONFIG.ENABLE_VBRAM_ALARM {false} \
   CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.OT_ALARM {false} \
   CONFIG.SEQUENCER_MODE {Continuous} \
   CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
   CONFIG.XADC_STARUP_SELECTION {channel_sequencer} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net PCIe_REFCLK_1 [get_bd_intf_ports PCIe_REFCLK] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins axi_cpu_dma_interconnect/S00_AXI] [get_bd_intf_pins axi_dmac_rf_tx/m_src_axi]
  connect_bd_intf_net -intf_net S01_AXI_1 [get_bd_intf_pins axi_cpu_dma_interconnect/S01_AXI] [get_bd_intf_pins axi_dmac_rf_rx/m_dest_axi]
  connect_bd_intf_net -intf_net S04_AXI_1 [get_bd_intf_pins axi_cpu_dma_interconnect/S04_AXI] [get_bd_intf_pins picorv32_0/M_AXI]
  connect_bd_intf_net -intf_net SYS_CLK_0_1 [get_bd_intf_ports DDR3_CLK_IN] [get_bd_intf_pins mig_7series_0/SYS_CLK]
  connect_bd_intf_net -intf_net Vp_Vn_0_1 [get_bd_intf_ports ADCIN_MAIN] [get_bd_intf_pins xadc_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_dmac_i2s_rx_m_dest_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S03_AXI] [get_bd_intf_pins axi_dmac_i2s_rx/m_dest_axi]
  connect_bd_intf_net -intf_net axi_dmac_i2s_tx_m_axis [get_bd_intf_pins axi_dmac_i2s_tx/m_axis] [get_bd_intf_pins axi_i2s_adi_0/s_axis]
  connect_bd_intf_net -intf_net axi_dmac_i2s_tx_m_src_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S02_AXI] [get_bd_intf_pins axi_dmac_i2s_tx/m_src_axi]
  connect_bd_intf_net -intf_net axi_dmac_rf_tx_m_axis [get_bd_intf_pins ad9361_dac_unpacker/s_axis] [get_bd_intf_pins axi_dmac_rf_tx/m_axis]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports GPIO0] [get_bd_intf_pins axi_gpio_0/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports GPIO1] [get_bd_intf_pins axi_gpio_0/GPIO2]
  connect_bd_intf_net -intf_net axi_i2s_adi_0_i2s [get_bd_intf_ports CODEC_I2S] [get_bd_intf_pins axi_i2s_adi_0/i2s]
  connect_bd_intf_net -intf_net axi_i2s_adi_0_m_axis [get_bd_intf_pins axi_dmac_i2s_rx/s_axis] [get_bd_intf_pins axi_i2s_adi_0/m_axis]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports AUDIO_I2C] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports SYS_I2C] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_cpu_dma_interconnect/M01_AXI] [get_bd_intf_pins axi_pcie_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M00_AXI [get_bd_intf_pins axi_dmac_rf_rx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M01_AXI [get_bd_intf_pins axi_dmac_rf_tx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M02_AXI [get_bd_intf_pins axi_ad9361/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M03_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins axi_peripheral_interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M04_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_peripheral_interconnect/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_1_M05_AXI [get_bd_intf_pins axi_peripheral_interconnect/M05_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_1_M06_AXI [get_bd_intf_pins axi_pcie_0/S_AXI_CTL] [get_bd_intf_pins axi_peripheral_interconnect/M06_AXI]
  connect_bd_intf_net -intf_net axi_mem_interconnect_M00_AXI [get_bd_intf_pins axi_pcie_interconnect/M00_AXI] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net axi_mem_interconnect_M01_AXI [get_bd_intf_pins axi_pcie_interconnect/M01_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_FULL]
  connect_bd_intf_net -intf_net axi_pcie_0_M_AXI [get_bd_intf_pins axi_pcie_0/M_AXI] [get_bd_intf_pins axi_pcie_interconnect/S01_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_pcie_7x_mgt [get_bd_intf_ports PCIe] [get_bd_intf_pins axi_pcie_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net axi_pcie_interconnect_M00_AXI [get_bd_intf_pins axi_cpu_dma_interconnect/M00_AXI] [get_bd_intf_pins axi_pcie_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net axi_pcie_interconnect_M02_AXI [get_bd_intf_pins axi_pcie_interconnect/M02_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_pcie_interconnect_M03_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_pcie_interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M07_AXI [get_bd_intf_pins axi_dmac_i2s_rx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M07_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M08_AXI [get_bd_intf_pins axi_dmac_i2s_tx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M08_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M09_AXI [get_bd_intf_pins axi_i2s_adi_0/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M09_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M10_AXI [get_bd_intf_pins axi_peripheral_interconnect/M10_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M11_AXI [get_bd_intf_pins axi_peripheral_interconnect/M11_AXI] [get_bd_intf_pins axi_quad_spi_1/AXI_LITE]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M12_AXI [get_bd_intf_pins axi_iic_1/S_AXI] [get_bd_intf_pins axi_peripheral_interconnect/M12_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M13_AXI [get_bd_intf_pins axi_peripheral_interconnect/M13_AXI] [get_bd_intf_pins axi_quad_spi_2/AXI_LITE]
  connect_bd_intf_net -intf_net axi_protocol_convert_1_M_AXI [get_bd_intf_pins axi_peripheral_interconnect/S00_AXI] [get_bd_intf_pins axi_protocol_convert_0/M_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports FLASH_QSPI] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_1_SPI_0 [get_bd_intf_ports TRX_SPI] [get_bd_intf_pins axi_quad_spi_1/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_2_SPI_0 [get_bd_intf_ports SYNTH_SPI] [get_bd_intf_pins axi_quad_spi_2/SPI_0]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net util_cpack2_0_packed_fifo_wr [get_bd_intf_pins ad9361_adc_packer/packed_fifo_wr] [get_bd_intf_pins axi_dmac_rf_rx/fifo_wr]

  # Create port connections
  connect_bd_net -net CORTEXM3_AXI_0_SYSRESETREQ [get_bd_pins SOFT_RESET/dout] [get_bd_pins int_reset_combiner/Op2] [get_bd_pins rst_axi_pcie_0_125M/aux_reset_in]
  connect_bd_net -net GND_0_dout [get_bd_ports PCIe_CLKREQn] [get_bd_ports TRX_EN_AGC] [get_bd_ports TRX_SYNC_IN] [get_bd_pins GND_0/dout] [get_bd_pins axi_ad9361/up_enable] [get_bd_pins axi_ad9361/up_txnrx] [get_bd_pins axi_pcie_0/INTX_MSI_Request] [get_bd_pins axi_quad_spi_0/gsr] [get_bd_pins axi_quad_spi_0/gts] [get_bd_pins axi_quad_spi_0/usrcclkts] [get_bd_pins axi_quad_spi_0/usrdonets] [get_bd_pins irq_concat_0/In9] [get_bd_pins irq_concat_0/In14] [get_bd_pins irq_concat_0/In15] [get_bd_pins irq_concat_1/In0] [get_bd_pins irq_concat_1/In1] [get_bd_pins irq_concat_1/In2]
  connect_bd_net -net GND_1_dout [get_bd_ports TRX_CTRL_IN] [get_bd_pins GND_1/dout]
  connect_bd_net -net GND_2_dout [get_bd_pins GND_2/dout] [get_bd_pins irq_concat_1/In4]
  connect_bd_net -net PCIe_RESETn_1 [get_bd_ports PCIe_RESETn] [get_bd_pins ext_reset_combiner/Op2]
  connect_bd_net -net RESETn_1 [get_bd_ports RESETn] [get_bd_pins ext_reset_combiner/Op1]
  connect_bd_net -net RXCLK_1 [get_bd_ports TRX_DATA_CLK] [get_bd_pins axi_ad9361/rx_clk_in]
  connect_bd_net -net RXDATA_1 [get_bd_ports TRX_P1_RXDATA] [get_bd_pins axi_ad9361/rx_data_in]
  connect_bd_net -net RXFRAME_1 [get_bd_ports TRX_RXFRAME] [get_bd_pins axi_ad9361/rx_frame_in]
  connect_bd_net -net VCC_0_dout [get_bd_pins VCC_0/dout] [get_bd_pins axi_quad_spi_0/usrdoneo] [get_bd_pins logic_and_0/Op1] [get_bd_pins logic_and_2/Op1]
  connect_bd_net -net ad9361_adc_packer_fifo_wr_overflow [get_bd_pins ad9361_adc_packer/fifo_wr_overflow] [get_bd_pins axi_ad9361/adc_dovf]
  connect_bd_net -net ad9361_dac_unpacker_fifo_rd_underflow [get_bd_pins ad9361_dac_unpacker/fifo_rd_underflow] [get_bd_pins axi_ad9361/dac_dunf]
  connect_bd_net -net axi_ad9361_0_adc_data_i0 [get_bd_pins ad9361_adc_packer/fifo_wr_data_0] [get_bd_pins axi_ad9361/adc_data_i0]
  connect_bd_net -net axi_ad9361_0_adc_data_i1 [get_bd_pins ad9361_adc_packer/fifo_wr_data_2] [get_bd_pins axi_ad9361/adc_data_i1]
  connect_bd_net -net axi_ad9361_0_adc_data_q0 [get_bd_pins ad9361_adc_packer/fifo_wr_data_1] [get_bd_pins axi_ad9361/adc_data_q0]
  connect_bd_net -net axi_ad9361_0_adc_data_q1 [get_bd_pins ad9361_adc_packer/fifo_wr_data_3] [get_bd_pins axi_ad9361/adc_data_q1]
  connect_bd_net -net axi_ad9361_0_adc_enable_i0 [get_bd_pins ad9361_adc_packer/enable_0] [get_bd_pins axi_ad9361/adc_enable_i0]
  connect_bd_net -net axi_ad9361_0_adc_enable_i1 [get_bd_pins ad9361_adc_packer/enable_2] [get_bd_pins axi_ad9361/adc_enable_i1]
  connect_bd_net -net axi_ad9361_0_adc_enable_q0 [get_bd_pins ad9361_adc_packer/enable_1] [get_bd_pins axi_ad9361/adc_enable_q0]
  connect_bd_net -net axi_ad9361_0_adc_enable_q1 [get_bd_pins ad9361_adc_packer/enable_3] [get_bd_pins axi_ad9361/adc_enable_q1]
  connect_bd_net -net axi_ad9361_0_adc_valid_i0 [get_bd_pins axi_ad9361/adc_valid_i0] [get_bd_pins logic_or_0/Op1]
  connect_bd_net -net axi_ad9361_0_adc_valid_i1 [get_bd_pins axi_ad9361/adc_valid_i1] [get_bd_pins logic_or_0/Op2]
  connect_bd_net -net axi_ad9361_0_dac_enable_i0 [get_bd_pins ad9361_dac_unpacker/enable_0] [get_bd_pins axi_ad9361/dac_enable_i0]
  connect_bd_net -net axi_ad9361_0_dac_enable_i1 [get_bd_pins ad9361_dac_unpacker/enable_2] [get_bd_pins axi_ad9361/dac_enable_i1]
  connect_bd_net -net axi_ad9361_0_dac_enable_q0 [get_bd_pins ad9361_dac_unpacker/enable_1] [get_bd_pins axi_ad9361/dac_enable_q0]
  connect_bd_net -net axi_ad9361_0_dac_enable_q1 [get_bd_pins ad9361_dac_unpacker/enable_3] [get_bd_pins axi_ad9361/dac_enable_q1]
  connect_bd_net -net axi_ad9361_0_dac_valid_i0 [get_bd_pins axi_ad9361/dac_valid_i0] [get_bd_pins logic_or_1/Op1]
  connect_bd_net -net axi_ad9361_0_dac_valid_i1 [get_bd_pins axi_ad9361/dac_valid_i1] [get_bd_pins logic_or_1/Op2]
  connect_bd_net -net axi_ad9361_0_enable [get_bd_ports TRX_EN] [get_bd_pins axi_ad9361/enable]
  connect_bd_net -net axi_ad9361_0_gps_pps_irq [get_bd_pins axi_ad9361/gps_pps_irq] [get_bd_pins irq_concat_0/In2]
  connect_bd_net -net axi_ad9361_0_l_clk [get_bd_pins ad9361_adc_packer/clk] [get_bd_pins ad9361_dac_unpacker/clk] [get_bd_pins axi_ad9361/clk] [get_bd_pins axi_ad9361/l_clk] [get_bd_pins axi_dmac_rf_rx/fifo_wr_clk] [get_bd_pins axi_dmac_rf_tx/m_axis_aclk]
  connect_bd_net -net axi_ad9361_0_rst [get_bd_pins ad9361_adc_packer/reset] [get_bd_pins ad9361_dac_unpacker/reset] [get_bd_pins axi_ad9361/rst]
  connect_bd_net -net axi_ad9361_0_tx_clk_out [get_bd_ports TRX_FBCLK] [get_bd_pins axi_ad9361/tx_clk_out]
  connect_bd_net -net axi_ad9361_0_tx_data_out [get_bd_ports TRX_P0_TXDATA] [get_bd_pins axi_ad9361/tx_data_out]
  connect_bd_net -net axi_ad9361_0_tx_frame_out [get_bd_ports TRX_TXFRAME] [get_bd_pins axi_ad9361/tx_frame_out]
  connect_bd_net -net axi_ad9361_0_txnrx [get_bd_ports TRX_TXNRX] [get_bd_pins axi_ad9361/txnrx]
  connect_bd_net -net axi_dmac_i2s_rx_irq [get_bd_pins axi_dmac_i2s_rx/irq] [get_bd_pins irq_concat_0/In7]
  connect_bd_net -net axi_dmac_i2s_tx_irq [get_bd_pins axi_dmac_i2s_tx/irq] [get_bd_pins irq_concat_0/In8]
  connect_bd_net -net axi_dmac_rf_rx_irq [get_bd_pins axi_dmac_rf_rx/irq] [get_bd_pins irq_concat_0/In0]
  connect_bd_net -net axi_dmac_rf_tx_irq [get_bd_pins axi_dmac_rf_tx/irq] [get_bd_pins irq_concat_0/In1]
  connect_bd_net -net axi_dmac_rf_tx_m_axis_valid [get_bd_pins axi_dmac_rf_tx/m_axis_valid] [get_bd_pins logic_and_2/Op2]
  connect_bd_net -net axi_gpio_0_ip2intc_irpt [get_bd_pins axi_gpio_0/ip2intc_irpt] [get_bd_pins irq_concat_0/In3]
  connect_bd_net -net axi_iic_0_gpo [get_bd_ports CODEC_RESETn] [get_bd_pins axi_iic_0/gpo]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins irq_concat_0/In4]
  connect_bd_net -net axi_iic_1_gpo [get_bd_ports PM_I2C_EN] [get_bd_pins axi_iic_1/gpo]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins axi_iic_1/iic2intc_irpt] [get_bd_pins irq_concat_0/In12]
  connect_bd_net -net axi_pcie_0_axi_aclk_out [get_bd_pins axi_ad9361/s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_cpu_dma_interconnect/ACLK] [get_bd_pins axi_cpu_dma_interconnect/M00_ACLK] [get_bd_pins axi_cpu_dma_interconnect/M01_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S00_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S01_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S02_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S03_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S04_ACLK] [get_bd_pins axi_dmac_i2s_rx/m_dest_axi_aclk] [get_bd_pins axi_dmac_i2s_rx/s_axi_aclk] [get_bd_pins axi_dmac_i2s_rx/s_axis_aclk] [get_bd_pins axi_dmac_i2s_tx/m_axis_aclk] [get_bd_pins axi_dmac_i2s_tx/m_src_axi_aclk] [get_bd_pins axi_dmac_i2s_tx/s_axi_aclk] [get_bd_pins axi_dmac_rf_rx/m_dest_axi_aclk] [get_bd_pins axi_dmac_rf_rx/s_axi_aclk] [get_bd_pins axi_dmac_rf_tx/m_src_axi_aclk] [get_bd_pins axi_dmac_rf_tx/s_axi_aclk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_i2s_adi_0/m_axis_aclk] [get_bd_pins axi_i2s_adi_0/s_axi_aclk] [get_bd_pins axi_i2s_adi_0/s_axis_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_pcie_0/axi_aclk_out] [get_bd_pins axi_pcie_interconnect/ACLK] [get_bd_pins axi_pcie_interconnect/M00_ACLK] [get_bd_pins axi_pcie_interconnect/M01_ACLK] [get_bd_pins axi_pcie_interconnect/M03_ACLK] [get_bd_pins axi_pcie_interconnect/S00_ACLK] [get_bd_pins axi_pcie_interconnect/S01_ACLK] [get_bd_pins axi_peripheral_interconnect/ACLK] [get_bd_pins axi_peripheral_interconnect/M00_ACLK] [get_bd_pins axi_peripheral_interconnect/M01_ACLK] [get_bd_pins axi_peripheral_interconnect/M02_ACLK] [get_bd_pins axi_peripheral_interconnect/M03_ACLK] [get_bd_pins axi_peripheral_interconnect/M04_ACLK] [get_bd_pins axi_peripheral_interconnect/M05_ACLK] [get_bd_pins axi_peripheral_interconnect/M07_ACLK] [get_bd_pins axi_peripheral_interconnect/M08_ACLK] [get_bd_pins axi_peripheral_interconnect/M09_ACLK] [get_bd_pins axi_peripheral_interconnect/M10_ACLK] [get_bd_pins axi_peripheral_interconnect/M11_ACLK] [get_bd_pins axi_peripheral_interconnect/M12_ACLK] [get_bd_pins axi_peripheral_interconnect/M13_ACLK] [get_bd_pins axi_peripheral_interconnect/S00_ACLK] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi4_aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_quad_spi_1/ext_spi_clk] [get_bd_pins axi_quad_spi_1/s_axi_aclk] [get_bd_pins axi_quad_spi_2/ext_spi_clk] [get_bd_pins axi_quad_spi_2/s_axi_aclk] [get_bd_pins picorv32_0/clk] [get_bd_pins rst_axi_pcie_0_125M/slowest_sync_clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net axi_pcie_0_axi_ctl_aclk_out [get_bd_pins axi_pcie_0/axi_ctl_aclk_out] [get_bd_pins axi_peripheral_interconnect/M06_ACLK]
  connect_bd_net -net axi_pcie_0_interrupt_out [get_bd_pins axi_pcie_0/interrupt_out] [get_bd_pins irq_concat_0/In6]
  connect_bd_net -net axi_pcie_0_mmcm_lock [get_bd_pins axi_pcie_0/mmcm_lock] [get_bd_pins rst_axi_pcie_0_125M/dcm_locked]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins irq_concat_0/In5]
  connect_bd_net -net axi_quad_spi_1_ip2intc_irpt [get_bd_pins axi_quad_spi_1/ip2intc_irpt] [get_bd_pins irq_concat_0/In11]
  connect_bd_net -net axi_quad_spi_2_ip2intc_irpt [get_bd_pins axi_quad_spi_2/ip2intc_irpt] [get_bd_pins irq_concat_0/In13]
  connect_bd_net -net clk_wiz_0_delay_ref_clk [get_bd_pins axi_ad9361/delay_clk] [get_bd_pins mig_7series_0/clk_ref_i] [get_bd_pins mig_7series_0/ui_addn_clk_0]
  connect_bd_net -net data_clk_i_0_1 [get_bd_ports I2S_BCLK_IN] [get_bd_pins axi_i2s_adi_0/data_clk_i]
  connect_bd_net -net int_reset_combiner_Res [get_bd_pins int_reset_combiner/Res] [get_bd_pins rst_mig_7series_0_10M/aux_reset_in] [get_bd_pins rst_mig_7series_0_166M/aux_reset_in]
  connect_bd_net -net irq_concat_0_dout [get_bd_pins irq_concat_0/dout] [get_bd_pins irq_concat_1/In3]
  connect_bd_net -net irq_concat_1_dout [get_bd_pins irq_concat_1/dout] [get_bd_pins picorv32_0/irq]
  connect_bd_net -net logic_and_0_Res [get_bd_pins ad9361_adc_packer/fifo_wr_en] [get_bd_pins logic_and_0/Res]
  connect_bd_net -net logic_and_2_Res [get_bd_pins ad9361_dac_unpacker/s_axis_valid] [get_bd_pins logic_and_2/Res]
  connect_bd_net -net logic_or_0_Res [get_bd_pins logic_and_0/Op2] [get_bd_pins logic_or_0/Res]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_10M/dcm_locked] [get_bd_pins rst_mig_7series_0_166M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_addn_clk_2 [get_bd_pins mig_7series_0/ui_addn_clk_2] [get_bd_pins rst_mig_7series_0_10M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_pcie_interconnect/M02_ACLK] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_166M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins int_reset_combiner/Op1] [get_bd_pins mig_7series_0/ui_clk_sync_rst]
  connect_bd_net -net rst_axi_pcie_0_125M_interconnect_aresetn [get_bd_pins axi_cpu_dma_interconnect/ARESETN] [get_bd_pins axi_cpu_dma_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S00_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S01_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S02_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S03_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S04_ARESETN] [get_bd_pins axi_pcie_0/axi_aresetn] [get_bd_pins axi_pcie_interconnect/ARESETN] [get_bd_pins axi_pcie_interconnect/M00_ARESETN] [get_bd_pins axi_pcie_interconnect/M01_ARESETN] [get_bd_pins axi_pcie_interconnect/M03_ARESETN] [get_bd_pins axi_pcie_interconnect/S00_ARESETN] [get_bd_pins axi_pcie_interconnect/S01_ARESETN] [get_bd_pins axi_peripheral_interconnect/ARESETN] [get_bd_pins axi_peripheral_interconnect/M00_ARESETN] [get_bd_pins axi_peripheral_interconnect/M01_ARESETN] [get_bd_pins axi_peripheral_interconnect/M02_ARESETN] [get_bd_pins axi_peripheral_interconnect/M03_ARESETN] [get_bd_pins axi_peripheral_interconnect/M04_ARESETN] [get_bd_pins axi_peripheral_interconnect/M05_ARESETN] [get_bd_pins axi_peripheral_interconnect/M06_ARESETN] [get_bd_pins axi_peripheral_interconnect/M07_ARESETN] [get_bd_pins axi_peripheral_interconnect/M08_ARESETN] [get_bd_pins axi_peripheral_interconnect/M09_ARESETN] [get_bd_pins axi_peripheral_interconnect/M10_ARESETN] [get_bd_pins axi_peripheral_interconnect/M11_ARESETN] [get_bd_pins axi_peripheral_interconnect/M12_ARESETN] [get_bd_pins axi_peripheral_interconnect/M13_ARESETN] [get_bd_pins axi_peripheral_interconnect/S00_ARESETN] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins picorv32_0/resetn] [get_bd_pins rst_axi_pcie_0_125M/interconnect_aresetn]
  connect_bd_net -net rst_axi_pcie_0_125M_peripheral_aresetn [get_bd_ports TRX_RESETn] [get_bd_pins axi_ad9361/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_dmac_i2s_rx/m_dest_axi_aresetn] [get_bd_pins axi_dmac_i2s_rx/s_axi_aresetn] [get_bd_pins axi_dmac_i2s_tx/m_src_axi_aresetn] [get_bd_pins axi_dmac_i2s_tx/s_axi_aresetn] [get_bd_pins axi_dmac_rf_rx/m_dest_axi_aresetn] [get_bd_pins axi_dmac_rf_rx/s_axi_aresetn] [get_bd_pins axi_dmac_rf_tx/m_src_axi_aresetn] [get_bd_pins axi_dmac_rf_tx/s_axi_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_i2s_adi_0/s_axi_aresetn] [get_bd_pins axi_i2s_adi_0/s_axis_aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_0/s_axi4_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_2/s_axi_aresetn] [get_bd_pins rst_axi_pcie_0_125M/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net rst_mig_7series_0_166M_interconnect_aresetn [get_bd_pins axi_pcie_interconnect/M02_ARESETN] [get_bd_pins rst_mig_7series_0_166M/interconnect_aresetn]
  connect_bd_net -net rst_mig_7series_0_166M_peripheral_aresetn [get_bd_pins mig_7series_0/aresetn] [get_bd_pins rst_mig_7series_0_166M/peripheral_aresetn]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins axi_pcie_0/REFCLK] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net util_upack2_1_fifo_rd_data_0 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_0] [get_bd_pins axi_ad9361/dac_data_i0]
  connect_bd_net -net util_upack2_1_fifo_rd_data_1 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_1] [get_bd_pins axi_ad9361/dac_data_q0]
  connect_bd_net -net util_upack2_1_fifo_rd_data_2 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_2] [get_bd_pins axi_ad9361/dac_data_i1]
  connect_bd_net -net util_upack2_1_fifo_rd_data_3 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_3] [get_bd_pins axi_ad9361/dac_data_q1]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins ad9361_dac_unpacker/fifo_rd_en] [get_bd_pins logic_or_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins ext_reset_combiner/Res] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins rst_axi_pcie_0_125M/ext_reset_in] [get_bd_pins rst_mig_7series_0_10M/ext_reset_in] [get_bd_pins rst_mig_7series_0_166M/ext_reset_in]
  connect_bd_net -net xadc_wiz_0_ip2intc_irpt [get_bd_pins irq_concat_0/In10] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
  connect_bd_net -net xadc_wiz_0_temp_out [get_bd_pins mig_7series_0/device_temp_i] [get_bd_pins xadc_wiz_0/temp_out]

  # Create address segments
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40002000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x41000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x40007000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40008000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40001000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40003000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40009000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_i2s_adi_0/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x4000C000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x40006000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00100000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40005000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000B000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4000D000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x4000A000 -range 0x00001000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


