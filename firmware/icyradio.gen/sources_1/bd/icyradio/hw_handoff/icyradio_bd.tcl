
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


# The design that will be created by this Tcl script contains the following 
# module references:
# axi_gpio, axi_gpio, axi_gpio, axi_i2s, axi_irq_controller, axi_rf_timestamping, rst_pulse_gen, user_led

# Please add the sources of those modules before sourcing this Tcl script.

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
   puts $mig_prj_file {  <SystemClock>No Buffer</SystemClock>}
   puts $mig_prj_file {  <ReferenceClock>No Buffer</ReferenceClock>}
   puts $mig_prj_file {  <SysResetPolarity>ACTIVE LOW</SysResetPolarity>}
   puts $mig_prj_file {  <BankSelectionFlag>FALSE</BankSelectionFlag>}
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
   puts $mig_prj_file {    <PHYRatio>2:1</PHYRatio>}
   puts $mig_prj_file {    <InputClkFreq>250</InputClkFreq>}
   puts $mig_prj_file {    <UIExtraClocks>0</UIExtraClocks>}
   puts $mig_prj_file {    <MMCM_VCO>666</MMCM_VCO>}
   puts $mig_prj_file {    <MMCMClkOut0> 1.000</MMCMClkOut0>}
   puts $mig_prj_file {    <MMCMClkOut1>1</MMCMClkOut1>}
   puts $mig_prj_file {    <MMCMClkOut2>1</MMCMClkOut2>}
   puts $mig_prj_file {    <MMCMClkOut3>1</MMCMClkOut3>}
   puts $mig_prj_file {    <MMCMClkOut4>1</MMCMClkOut4>}
   puts $mig_prj_file {    <DataWidth>16</DataWidth>}
   puts $mig_prj_file {    <DeepMemory>1</DeepMemory>}
   puts $mig_prj_file {    <DataMask>1</DataMask>}
   puts $mig_prj_file {    <ECC>Disabled</ECC>}
   puts $mig_prj_file {    <Ordering>Normal</Ordering>}
   puts $mig_prj_file {    <BankMachineCnt>4</BankMachineCnt>}
   puts $mig_prj_file {    <CustomPart>FALSE</CustomPart>}
   puts $mig_prj_file {    <NewPartName/>}
   puts $mig_prj_file {    <RowAddress>15</RowAddress>}
   puts $mig_prj_file {    <ColAddress>10</ColAddress>}
   puts $mig_prj_file {    <BankAddress>3</BankAddress>}
   puts $mig_prj_file {    <MemoryVoltage>1.35V</MemoryVoltage>}
   puts $mig_prj_file {    <C0_MEM_SIZE>536870912</C0_MEM_SIZE>}
   puts $mig_prj_file {    <UserMemoryAddressMap>BANK_ROW_COLUMN</UserMemoryAddressMap>}
   puts $mig_prj_file {    <PinSelection>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="W6" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="Y3" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AB2" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AB3" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AB1" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AA1" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U5" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T5" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="W4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AA4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="Y4" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AB5" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AA5" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AA3" SLEW="FAST" VCCAUX_IO="" name="ddr3_addr[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V5" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="U6" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="W5" SLEW="FAST" VCCAUX_IO="" name="ddr3_ba[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T6" SLEW="FAST" VCCAUX_IO="" name="ddr3_cas_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL135" PADName="V8" SLEW="FAST" VCCAUX_IO="" name="ddr3_ck_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="DIFF_SSTL135" PADName="V9" SLEW="FAST" VCCAUX_IO="" name="ddr3_ck_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="AA6" SLEW="FAST" VCCAUX_IO="" name="ddr3_cke[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="N4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dm[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="T1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dm[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="R1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="V2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[10]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="W2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[11]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="Y2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[12]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="W1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[13]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="Y1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[14]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="U3" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[15]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="P1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="P2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[2]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="N2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[3]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="M6" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[4]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="M5" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[5]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="P6" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[6]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="N5" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[7]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="U1" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[8]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="SSTL135" PADName="U2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dq[9]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="DIFF_SSTL135" PADName="P4" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_n[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="DIFF_SSTL135" PADName="R2" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_n[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="DIFF_SSTL135" PADName="P5" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_p[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="UNTUNED_SPLIT_40" IOSTANDARD="DIFF_SSTL135" PADName="R3" SLEW="FAST" VCCAUX_IO="" name="ddr3_dqs_p[1]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="V7" SLEW="FAST" VCCAUX_IO="" name="ddr3_odt[0]"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R6" SLEW="FAST" VCCAUX_IO="" name="ddr3_ras_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="R4" SLEW="FAST" VCCAUX_IO="" name="ddr3_reset_n"/>}
   puts $mig_prj_file {      <Pin IN_TERM="" IOSTANDARD="SSTL135" PADName="Y6" SLEW="FAST" VCCAUX_IO="" name="ddr3_we_n"/>}
   puts $mig_prj_file {    </PinSelection>}
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
   puts $mig_prj_file {    <emrCSSelection name="Controller Chip Select Pin">Disable</emrCSSelection>}
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
   puts $mig_prj_file {      <C0_S_AXI_ADDR_WIDTH>29</C0_S_AXI_ADDR_WIDTH>}
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

  set DDR3 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddrx_rtl:1.0 DDR3 ]

  set FLASH_QSPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 FLASH_QSPI ]

  set PCIe [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 PCIe ]

  set PCIe_REFCLK [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 PCIe_REFCLK ]

  set SYNTH_SPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 SYNTH_SPI ]

  set SYS_I2C [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 SYS_I2C ]

  set TRX_SPI [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 TRX_SPI ]


  # Create ports
  set CLK_MNGR_IRQn [ create_bd_port -dir I CLK_MNGR_IRQn ]
  set CLK_MNGR_OEn [ create_bd_port -dir O -from 0 -to 0 CLK_MNGR_OEn ]
  set CM4_WAKE [ create_bd_port -dir O -from 0 -to 0 CM4_WAKE ]
  set CODEC_I2S_BCLK [ create_bd_port -dir O CODEC_I2S_BCLK ]
  set CODEC_I2S_LRCLK [ create_bd_port -dir O CODEC_I2S_LRCLK ]
  set CODEC_I2S_SDIN [ create_bd_port -dir O CODEC_I2S_SDIN ]
  set CODEC_I2S_SDOUT [ create_bd_port -dir I CODEC_I2S_SDOUT ]
  set CODEC_MCLK [ create_bd_port -dir O CODEC_MCLK ]
  set CODEC_RSTn [ create_bd_port -dir O -from 0 -to 0 -type rst CODEC_RSTn ]
  set FPGA_CLK0 [ create_bd_port -dir I -type clk -freq_hz 50000000 FPGA_CLK0 ]
  set FPGA_CLK1 [ create_bd_port -dir I -type clk -freq_hz 49152000 FPGA_CLK1 ]
  set_property -dict [ list \
   CONFIG.PHASE {0.0} \
 ] $FPGA_CLK1
  set PCIe_CLKREQn [ create_bd_port -dir O -from 0 -to 0 PCIe_CLKREQn ]
  set PCIe_RESETn [ create_bd_port -dir I -type rst PCIe_RESETn ]
  set PM_I2C_EN [ create_bd_port -dir O -from 0 -to 0 PM_I2C_EN ]
  set SYNTH_CE [ create_bd_port -dir O -from 0 -to 0 SYNTH_CE ]
  set SYNTH_LD [ create_bd_port -dir I SYNTH_LD ]
  set SYNTH_MUTE [ create_bd_port -dir O -from 0 -to 0 SYNTH_MUTE ]
  set SYNTH_RESETn [ create_bd_port -dir O -from 0 -to 0 SYNTH_RESETn ]
  set SYNTH_SYNC [ create_bd_port -dir O -from 0 -to 0 SYNTH_SYNC ]
  set TRX_5V0_BIAS_T1_OCn [ create_bd_port -dir I TRX_5V0_BIAS_T1_OCn ]
  set TRX_5V0_BIAS_T2_OCn [ create_bd_port -dir I TRX_5V0_BIAS_T2_OCn ]
  set TRX_5V0_PA1_OCn [ create_bd_port -dir I TRX_5V0_PA1_OCn ]
  set TRX_5V0_PA2_OCn [ create_bd_port -dir I TRX_5V0_PA2_OCn ]
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
  set VIN_REG_ALERTn [ create_bd_port -dir I VIN_REG_ALERTn ]

  # Create instance: GND_0, and set properties
  set GND_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_0

  # Create instance: GND_1, and set properties
  set GND_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_1

  # Create instance: GND_3, and set properties
  set GND_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {4} \
 ] $GND_3

  # Create instance: GND_4, and set properties
  set GND_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_4 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {22} \
 ] $GND_4

  # Create instance: GND_5, and set properties
  set GND_5 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_5 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $GND_5

  # Create instance: GND_6, and set properties
  set GND_6 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_6 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $GND_6

  # Create instance: GND_7, and set properties
  set GND_7 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_7 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $GND_7

  # Create instance: GND_8, and set properties
  set GND_8 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_8 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $GND_8

  # Create instance: GND_9, and set properties
  set GND_9 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_9 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {1} \
 ] $GND_9

  # Create instance: GND_11, and set properties
  set GND_11 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_11 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_11

  # Create instance: GND_13, and set properties
  set GND_13 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_13 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {32} \
 ] $GND_13

  # Create instance: GND_14, and set properties
  set GND_14 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_14 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $GND_14

  # Create instance: GND_15, and set properties
  set GND_15 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_15 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {5} \
 ] $GND_15

  # Create instance: GND_17, and set properties
  set GND_17 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_17 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_17

  # Create instance: GND_18, and set properties
  set GND_18 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_18 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_18

  # Create instance: GND_19, and set properties
  set GND_19 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_19 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_19

  # Create instance: GND_20, and set properties
  set GND_20 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_20 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_20

  # Create instance: GND_21, and set properties
  set GND_21 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_21 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {2} \
 ] $GND_21

  # Create instance: GND_22, and set properties
  set GND_22 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_22 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {3} \
 ] $GND_22

  # Create instance: GND_23, and set properties
  set GND_23 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_23 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_23

  # Create instance: GND_25, and set properties
  set GND_25 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 GND_25 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $GND_25

  # Create instance: VCC_0, and set properties
  set VCC_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 VCC_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $VCC_0

  # Create instance: VCC_1, and set properties
  set VCC_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 VCC_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $VCC_1

  # Create instance: ad9361_adc_packer, and set properties
  set ad9361_adc_packer [ create_bd_cell -type ip -vlnv analog.com:user:util_cpack2:1.0 ad9361_adc_packer ]

  # Create instance: ad9361_dac_unpacker, and set properties
  set ad9361_dac_unpacker [ create_bd_cell -type ip -vlnv analog.com:user:util_upack2:1.0 ad9361_dac_unpacker ]

  # Create instance: axi_ad9361, and set properties
  set axi_ad9361 [ create_bd_cell -type ip -vlnv analog.com:user:axi_ad9361:1.0 axi_ad9361 ]
  set_property -dict [ list \
   CONFIG.ADC_USERPORTS_DISABLE {1} \
   CONFIG.CMOS_OR_LVDS_N {1} \
   CONFIG.DAC_IODELAY_ENABLE {0} \
   CONFIG.DAC_USERPORTS_DISABLE {1} \
   CONFIG.DELAY_REFCLK_FREQUENCY {200} \
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
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {5} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.S02_HAS_DATA_FIFO {2} \
   CONFIG.S03_HAS_DATA_FIFO {2} \
   CONFIG.S04_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {2} \
 ] $axi_cpu_dma_interconnect

  # Create instance: axi_dmac_i2s_rx, and set properties
  set axi_dmac_i2s_rx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_i2s_rx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_DATA_WIDTH_DEST {64} \
   CONFIG.DMA_DATA_WIDTH_SRC {32} \
   CONFIG.DMA_LENGTH_WIDTH {24} \
   CONFIG.DMA_TYPE_DEST {0} \
   CONFIG.DMA_TYPE_SRC {1} \
   CONFIG.ID {2} \
 ] $axi_dmac_i2s_rx

  # Create instance: axi_dmac_i2s_tx, and set properties
  set axi_dmac_i2s_tx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_i2s_tx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.AXI_SLICE_DEST {false} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_DATA_WIDTH_DEST {32} \
   CONFIG.DMA_LENGTH_WIDTH {24} \
   CONFIG.DMA_TYPE_DEST {1} \
   CONFIG.DMA_TYPE_SRC {0} \
   CONFIG.ID {3} \
 ] $axi_dmac_i2s_tx

  # Create instance: axi_dmac_rf_rx, and set properties
  set axi_dmac_rf_rx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_rf_rx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_LENGTH_WIDTH {24} \
   CONFIG.SYNC_TRANSFER_START {true} \
 ] $axi_dmac_rf_rx

  # Create instance: axi_dmac_rf_tx, and set properties
  set axi_dmac_rf_tx [ create_bd_cell -type ip -vlnv analog.com:user:axi_dmac:1.0 axi_dmac_rf_tx ]
  set_property -dict [ list \
   CONFIG.ALLOW_ASYM_MEM {1} \
   CONFIG.CYCLIC {false} \
   CONFIG.DMA_LENGTH_WIDTH {24} \
   CONFIG.DMA_TYPE_DEST {1} \
   CONFIG.DMA_TYPE_SRC {0} \
   CONFIG.ID {1} \
 ] $axi_dmac_rf_tx

  # Create instance: axi_gpio_0, and set properties
  set block_name axi_gpio
  set block_cell_name axi_gpio_0
  if { [catch {set axi_gpio_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_gpio_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.GPIO_IN_MASK_DEFAULT {0x04CFFF00} \
   CONFIG.GPIO_OUT_DEFAULT {0x80000000} \
 ] $axi_gpio_0

  # Create instance: axi_gpio_1, and set properties
  set block_name axi_gpio
  set block_cell_name axi_gpio_1
  if { [catch {set axi_gpio_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_gpio_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.GPIO_IN_MASK_DEFAULT {0x00000100} \
   CONFIG.GPIO_OUT_DEFAULT {0x80000002} \
 ] $axi_gpio_1

  # Create instance: axi_gpio_2, and set properties
  set block_name axi_gpio
  set block_cell_name axi_gpio_2
  if { [catch {set axi_gpio_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_gpio_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.GPIO_IN_MASK_DEFAULT {0x00070077} \
   CONFIG.GPIO_OUT_DEFAULT {0x00000000} \
 ] $axi_gpio_2

  # Create instance: axi_i2s_0, and set properties
  set block_name axi_i2s
  set block_cell_name axi_i2s_0
  if { [catch {set axi_i2s_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_i2s_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.1 axi_iic_0 ]

  # Create instance: axi_iic_1, and set properties
  set axi_iic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.1 axi_iic_1 ]
  set_property -dict [ list \
   CONFIG.C_DEFAULT_VALUE {0x02} \
   CONFIG.C_GPO_WIDTH {2} \
 ] $axi_iic_1

  # Create instance: axi_irq_controller_0, and set properties
  set block_name axi_irq_controller
  set block_cell_name axi_irq_controller_0
  if { [catch {set axi_irq_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_irq_controller_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.NUM_IRQS {16} \
   CONFIG.PCIE_MSI_REQ_FIFO_DEPTH_W {5} \
   CONFIG.PCIE_MSI_VEC_SIZE {5} \
 ] $axi_irq_controller_0

  # Create instance: axi_pcie_0, and set properties
  set axi_pcie_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_pcie:2.9 axi_pcie_0 ]
  set_property -dict [ list \
   CONFIG.AXIBAR2PCIEBAR_0 {0x00000000} \
   CONFIG.AXIBAR2PCIEBAR_1 {0x00000000} \
   CONFIG.AXIBAR2PCIEBAR_2 {0x00000000} \
   CONFIG.AXIBAR_AS_0 {true} \
   CONFIG.AXIBAR_AS_1 {true} \
   CONFIG.AXIBAR_AS_2 {true} \
   CONFIG.AXIBAR_NUM {3} \
   CONFIG.BAR0_SCALE {Megabytes} \
   CONFIG.BAR0_SIZE {2} \
   CONFIG.BAR1_ENABLED {true} \
   CONFIG.BAR1_SCALE {Megabytes} \
   CONFIG.BAR1_SIZE {512} \
   CONFIG.BAR1_TYPE {Memory} \
   CONFIG.BAR2_ENABLED {true} \
   CONFIG.BAR2_SCALE {Megabytes} \
   CONFIG.BAR2_SIZE {32} \
   CONFIG.BAR2_TYPE {Memory} \
   CONFIG.BAR_64BIT {false} \
   CONFIG.DEVICE_ID {0x7021} \
   CONFIG.MAX_LINK_SPEED {5.0_GT/s} \
   CONFIG.M_AXI_DATA_WIDTH {64} \
   CONFIG.NO_OF_LANES {X1} \
   CONFIG.NUM_MSI_REQ {5} \
   CONFIG.PCIEBAR2AXIBAR_0 {0x40000000} \
   CONFIG.PCIEBAR2AXIBAR_1 {0x20000000} \
   CONFIG.PCIEBAR2AXIBAR_2 {0x00000000} \
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
   CONFIG.NUM_MI {18} \
   CONFIG.STRATEGY {1} \
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
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SHARED_STARTUP {0} \
   CONFIG.C_SPI_MEMORY {1} \
   CONFIG.C_SPI_MEM_ADDR_BITS {24} \
   CONFIG.C_SPI_MODE {2} \
   CONFIG.C_TYPE_OF_AXI4_INTERFACE {1} \
   CONFIG.C_USE_STARTUP {0} \
   CONFIG.C_USE_STARTUP_INT {0} \
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
   CONFIG.C_SCK_RATIO {8} \
   CONFIG.C_USE_STARTUP {0} \
 ] $axi_quad_spi_2

  # Create instance: axi_rf_timestamping_0, and set properties
  set block_name axi_rf_timestamping
  set block_cell_name axi_rf_timestamping_0
  if { [catch {set axi_rf_timestamping_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axi_rf_timestamping_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {0.3422} \
   CONFIG.CLKIN1_UI_JITTER {0.3422} \
   CONFIG.CLKIN2_JITTER_PS {100.000} \
   CONFIG.CLKIN2_UI_JITTER {100.000} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {136.987} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {250} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {142.107} \
   CONFIG.CLKOUT2_PHASE_ERROR {164.985} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {285.743} \
   CONFIG.CLKOUT3_PHASE_ERROR {164.985} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {10} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.JITTER_OPTIONS {PS} \
   CONFIG.JITTER_SEL {Min_O_Jitter} \
   CONFIG.MMCM_BANDWIDTH {HIGH} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {4.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {5} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_REF_JITTER1 {0.000} \
   CONFIG.MMCM_REF_JITTER2 {0.010} \
   CONFIG.NUM_OUT_CLKS {2} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_PHASE_ALIGNMENT {false} \
   CONFIG.USE_POWER_DOWN {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {false} \
 ] $clk_wiz_0

  # Create instance: gpio_concat_0, and set properties
  set gpio_concat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_concat_0 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {8} \
   CONFIG.IN2_WIDTH {4} \
   CONFIG.IN3_WIDTH {2} \
   CONFIG.IN4_WIDTH {2} \
   CONFIG.IN5_WIDTH {2} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {4} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.NUM_PORTS {9} \
 ] $gpio_concat_0

  # Create instance: gpio_concat_0_1, and set properties
  set gpio_concat_0_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_concat_0_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {4} \
 ] $gpio_concat_0_1

  # Create instance: gpio_concat_0_2, and set properties
  set gpio_concat_0_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_concat_0_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {2} \
 ] $gpio_concat_0_2

  # Create instance: gpio_concat_1, and set properties
  set gpio_concat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_concat_1 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {8} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {22} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.NUM_PORTS {4} \
 ] $gpio_concat_1

  # Create instance: gpio_concat_2, and set properties
  set gpio_concat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 gpio_concat_2 ]
  set_property -dict [ list \
   CONFIG.IN0_WIDTH {1} \
   CONFIG.IN10_WIDTH {1} \
   CONFIG.IN11_WIDTH {1} \
   CONFIG.IN12_WIDTH {1} \
   CONFIG.IN13_WIDTH {5} \
   CONFIG.IN14_WIDTH {3} \
   CONFIG.IN15_WIDTH {3} \
   CONFIG.IN16_WIDTH {2} \
   CONFIG.IN1_WIDTH {1} \
   CONFIG.IN2_WIDTH {1} \
   CONFIG.IN3_WIDTH {1} \
   CONFIG.IN4_WIDTH {1} \
   CONFIG.IN5_WIDTH {1} \
   CONFIG.IN6_WIDTH {1} \
   CONFIG.IN7_WIDTH {5} \
   CONFIG.IN8_WIDTH {1} \
   CONFIG.IN9_WIDTH {3} \
   CONFIG.NUM_PORTS {17} \
 ] $gpio_concat_2

  # Create instance: gpio_slice_clk_mngr_oen, and set properties
  set gpio_slice_clk_mngr_oen [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_clk_mngr_oen ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_clk_mngr_oen

  # Create instance: gpio_slice_cm4_wake, and set properties
  set gpio_slice_cm4_wake [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_cm4_wake ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {12} \
   CONFIG.DIN_TO {12} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_cm4_wake

  # Create instance: gpio_slice_cpu_resetn, and set properties
  set gpio_slice_cpu_resetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_cpu_resetn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {30} \
   CONFIG.DIN_TO {30} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_cpu_resetn

  # Create instance: gpio_slice_ddr_intf_reset, and set properties
  set gpio_slice_ddr_intf_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_ddr_intf_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {24} \
   CONFIG.DIN_TO {24} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_ddr_intf_reset

  # Create instance: gpio_slice_ddr_reset, and set properties
  set gpio_slice_ddr_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_ddr_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {25} \
   CONFIG.DIN_TO {25} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_ddr_reset

  # Create instance: gpio_slice_i2s_reset, and set properties
  set gpio_slice_i2s_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_i2s_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {26} \
   CONFIG.DIN_TO {26} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_i2s_reset

  # Create instance: gpio_slice_pm_i2c_en, and set properties
  set gpio_slice_pm_i2c_en [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_pm_i2c_en ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_WIDTH {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_pm_i2c_en

  # Create instance: gpio_slice_synth_ce, and set properties
  set gpio_slice_synth_ce [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_synth_ce ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_synth_ce

  # Create instance: gpio_slice_synth_mute, and set properties
  set gpio_slice_synth_mute [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_synth_mute ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_synth_mute

  # Create instance: gpio_slice_synth_resetn, and set properties
  set gpio_slice_synth_resetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_synth_resetn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {31} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_synth_resetn

  # Create instance: gpio_slice_synth_sync, and set properties
  set gpio_slice_synth_sync [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_synth_sync ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {2} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_synth_sync

  # Create instance: gpio_slice_sys_aux_reset, and set properties
  set gpio_slice_sys_aux_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_sys_aux_reset ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {31} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_sys_aux_reset

  # Create instance: gpio_slice_trx_ctrl_out, and set properties
  set gpio_slice_trx_ctrl_out [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_ctrl_out ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {3} \
   CONFIG.DOUT_WIDTH {4} \
 ] $gpio_slice_trx_ctrl_out

  # Create instance: gpio_slice_trx_en_agc, and set properties
  set gpio_slice_trx_en_agc [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_en_agc ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {4} \
   CONFIG.DIN_TO {4} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_trx_en_agc

  # Create instance: gpio_slice_trx_resetn, and set properties
  set gpio_slice_trx_resetn [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_resetn ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {31} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_trx_resetn

  # Create instance: gpio_slice_trx_sync_in, and set properties
  set gpio_slice_trx_sync_in [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_sync_in ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {5} \
   CONFIG.DIN_TO {5} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_trx_sync_in

  # Create instance: gpio_slice_trx_up_enable, and set properties
  set gpio_slice_trx_up_enable [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_up_enable ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {6} \
   CONFIG.DIN_TO {6} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_trx_up_enable

  # Create instance: gpio_slice_trx_up_txnrx, and set properties
  set gpio_slice_trx_up_txnrx [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 gpio_slice_trx_up_txnrx ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {7} \
   CONFIG.DIN_TO {7} \
   CONFIG.DOUT_WIDTH {1} \
 ] $gpio_slice_trx_up_txnrx

  # Create instance: irq_concat_0, and set properties
  set irq_concat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 irq_concat_0 ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {16} \
 ] $irq_concat_0

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

  # Create instance: logic_not_0, and set properties
  set logic_not_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_not_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $logic_not_0

  # Create instance: logic_not_1, and set properties
  set logic_not_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_not_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $logic_not_1

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

  # Create instance: logic_or_2, and set properties
  set logic_or_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_or_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $logic_or_2

  # Create instance: logic_or_3, and set properties
  set logic_or_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_or_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $logic_or_3

  # Create instance: logic_or_4, and set properties
  set logic_or_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 logic_or_4 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
 ] $logic_or_4

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
   CONFIG.ENABLE_FAST_MUL {true} \
   CONFIG.ENABLE_IRQ {true} \
   CONFIG.ENABLE_MUL {false} \
   CONFIG.ENABLE_PCPI {false} \
   CONFIG.ENABLE_TRACE {false} \
   CONFIG.LATCHED_IRQ {0xFFFFFFFF} \
   CONFIG.PROGADDR_IRQ {0x01000010} \
   CONFIG.PROGADDR_RESET {0x01000000} \
   CONFIG.STACKADDR {0x01020000} \
   CONFIG.TWO_CYCLE_COMPARE {false} \
 ] $picorv32_0

  # Create instance: rst_FPGA_CLK1_49M152, and set properties
  set rst_FPGA_CLK1_49M152 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_FPGA_CLK1_49M152 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_FPGA_CLK1_49M152

  # Create instance: rst_axi_ad9361_61M44, and set properties
  set rst_axi_ad9361_61M44 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_ad9361_61M44 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_axi_ad9361_61M44

  # Create instance: rst_axi_pcie_0_125M, and set properties
  set rst_axi_pcie_0_125M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_pcie_0_125M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_axi_pcie_0_125M

  # Create instance: rst_axi_pcie_0_125M_pcie_core, and set properties
  set rst_axi_pcie_0_125M_pcie_core [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_axi_pcie_0_125M_pcie_core ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_axi_pcie_0_125M_pcie_core

  # Create instance: rst_clk_wiz_0_250M, and set properties
  set rst_clk_wiz_0_250M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_250M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_clk_wiz_0_250M

  # Create instance: rst_mig_7series_0_166M, and set properties
  set rst_mig_7series_0_166M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_mig_7series_0_166M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {1} \
   CONFIG.C_AUX_RST_WIDTH {4} \
 ] $rst_mig_7series_0_166M

  # Create instance: rst_pulse_gen_0, and set properties
  set block_name rst_pulse_gen
  set block_cell_name rst_pulse_gen_0
  if { [catch {set rst_pulse_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rst_pulse_gen_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: user_led_0, and set properties
  set block_name user_led
  set block_cell_name user_led_0
  if { [catch {set user_led_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $user_led_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.2 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
 ] $util_ds_buf_0

  # Create instance: xadc_wiz_0, and set properties
  set xadc_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 xadc_wiz_0 ]
  set_property -dict [ list \
   CONFIG.ADC_CONVERSION_RATE {1000} \
   CONFIG.ADC_OFFSET_AND_GAIN_CALIBRATION {true} \
   CONFIG.AVERAGE_ENABLE_TEMPERATURE {true} \
   CONFIG.AVERAGE_ENABLE_VBRAM {true} \
   CONFIG.AVERAGE_ENABLE_VCCAUX {true} \
   CONFIG.AVERAGE_ENABLE_VCCINT {true} \
   CONFIG.AVERAGE_ENABLE_VP_VN {false} \
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
   CONFIG.CHANNEL_ENABLE_VP_VN {false} \
   CONFIG.CHANNEL_ENABLE_VREFN {false} \
   CONFIG.CHANNEL_ENABLE_VREFP {false} \
   CONFIG.DCLK_FREQUENCY {125} \
   CONFIG.ENABLE_EXTERNAL_MUX {false} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.ENABLE_TEMP_BUS {true} \
   CONFIG.ENABLE_VBRAM_ALARM {false} \
   CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.OT_ALARM {false} \
   CONFIG.SENSOR_OFFSET_AND_GAIN_CALIBRATION {true} \
   CONFIG.SEQUENCER_MODE {Continuous} \
   CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} \
   CONFIG.TEMPERATURE_ALARM_OT_RESET {100.0} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
   CONFIG.XADC_STARUP_SELECTION {channel_sequencer} \
 ] $xadc_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net PCIe_REFCLK_1 [get_bd_intf_ports PCIe_REFCLK] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net Vp_Vn_0_1 [get_bd_intf_ports ADCIN_MAIN] [get_bd_intf_pins xadc_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_dmac_i2s_rx_m_dest_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S03_AXI] [get_bd_intf_pins axi_dmac_i2s_rx/m_dest_axi]
  connect_bd_intf_net -intf_net axi_dmac_i2s_tx_m_axis [get_bd_intf_pins axi_dmac_i2s_tx/m_axis] [get_bd_intf_pins axi_i2s_0/s_axis]
  connect_bd_intf_net -intf_net axi_dmac_i2s_tx_m_src_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S02_AXI] [get_bd_intf_pins axi_dmac_i2s_tx/m_src_axi]
  connect_bd_intf_net -intf_net axi_dmac_rf_rx_m_dest_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S01_AXI] [get_bd_intf_pins axi_dmac_rf_rx/m_dest_axi]
  connect_bd_intf_net -intf_net axi_dmac_rf_tx_m_src_axi [get_bd_intf_pins axi_cpu_dma_interconnect/S00_AXI] [get_bd_intf_pins axi_dmac_rf_tx/m_src_axi]
  connect_bd_intf_net -intf_net axi_i2s_0_m_axis [get_bd_intf_pins axi_dmac_i2s_rx/s_axis] [get_bd_intf_pins axi_i2s_0/m_axis]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports AUDIO_I2C] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_iic_1_IIC [get_bd_intf_ports SYS_I2C] [get_bd_intf_pins axi_iic_1/IIC]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins axi_dmac_rf_rx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI1 [get_bd_intf_pins axi_pcie_interconnect/M00_AXI] [get_bd_intf_pins axi_protocol_convert_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI2 [get_bd_intf_pins axi_cpu_dma_interconnect/M00_AXI] [get_bd_intf_pins axi_pcie_interconnect/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins axi_dmac_rf_tx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI1 [get_bd_intf_pins axi_pcie_interconnect/M01_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_FULL]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI2 [get_bd_intf_pins axi_cpu_dma_interconnect/M01_AXI] [get_bd_intf_pins axi_pcie_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI1 [get_bd_intf_pins axi_pcie_interconnect/M02_AXI] [get_bd_intf_pins mig_7series_0/S_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins axi_peripheral_interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI1 [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_pcie_interconnect/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins axi_peripheral_interconnect/M04_AXI] [get_bd_intf_pins axi_quad_spi_0/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins axi_pcie_0/S_AXI_CTL] [get_bd_intf_pins axi_peripheral_interconnect/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins axi_dmac_i2s_rx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins axi_dmac_i2s_tx/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins axi_peripheral_interconnect/M09_AXI] [get_bd_intf_pins xadc_wiz_0/s_axi_lite]
  connect_bd_intf_net -intf_net axi_interconnect_0_M10_AXI [get_bd_intf_pins axi_peripheral_interconnect/M10_AXI] [get_bd_intf_pins axi_quad_spi_1/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M11_AXI [get_bd_intf_pins axi_iic_1/S_AXI] [get_bd_intf_pins axi_peripheral_interconnect/M11_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M12_AXI [get_bd_intf_pins axi_peripheral_interconnect/M12_AXI] [get_bd_intf_pins axi_quad_spi_2/AXI_LITE]
  connect_bd_intf_net -intf_net axi_interconnect_0_M15_AXI [get_bd_intf_pins axi_ad9361/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M15_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_M_AXI [get_bd_intf_pins axi_pcie_0/M_AXI] [get_bd_intf_pins axi_pcie_interconnect/S01_AXI]
  connect_bd_intf_net -intf_net axi_pcie_0_pcie_7x_mgt [get_bd_intf_ports PCIe] [get_bd_intf_pins axi_pcie_0/pcie_7x_mgt]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M02_AXI [get_bd_intf_pins axi_gpio_0/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M02_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M08_AXI [get_bd_intf_pins axi_i2s_0/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M08_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M13_AXI [get_bd_intf_pins axi_gpio_1/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M13_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M14_AXI [get_bd_intf_pins axi_gpio_2/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M14_AXI]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M16_AXI [get_bd_intf_pins axi_peripheral_interconnect/M16_AXI] [get_bd_intf_pins axi_rf_timestamping_0/s_axi]
  connect_bd_intf_net -intf_net axi_peripheral_interconnect_M17_AXI [get_bd_intf_pins axi_irq_controller_0/s_axi] [get_bd_intf_pins axi_peripheral_interconnect/M17_AXI]
  connect_bd_intf_net -intf_net axi_protocol_convert_0_M_AXI [get_bd_intf_pins axi_peripheral_interconnect/S00_AXI] [get_bd_intf_pins axi_protocol_convert_0/M_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports FLASH_QSPI] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_1_SPI_0 [get_bd_intf_ports TRX_SPI] [get_bd_intf_pins axi_quad_spi_1/SPI_0]
  connect_bd_intf_net -intf_net axi_quad_spi_2_SPI_0 [get_bd_intf_ports SYNTH_SPI] [get_bd_intf_pins axi_quad_spi_2/SPI_0]
  connect_bd_intf_net -intf_net mig_7series_0_DDR3 [get_bd_intf_ports DDR3] [get_bd_intf_pins mig_7series_0/DDR3]
  connect_bd_intf_net -intf_net picorv32_0_M_AXI [get_bd_intf_pins axi_cpu_dma_interconnect/S04_AXI] [get_bd_intf_pins picorv32_0/M_AXI]
  connect_bd_intf_net -intf_net util_cpack2_0_packed_fifo_wr [get_bd_intf_pins ad9361_adc_packer/packed_fifo_wr] [get_bd_intf_pins axi_dmac_rf_rx/fifo_wr]

  # Create port connections
  connect_bd_net -net FPGA_CLK0_1 [get_bd_ports FPGA_CLK0] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net FPGA_CLK1_1 [get_bd_ports FPGA_CLK1] [get_bd_pins axi_dmac_i2s_rx/s_axis_aclk] [get_bd_pins axi_dmac_i2s_tx/m_axis_aclk] [get_bd_pins axi_i2s_0/aclk] [get_bd_pins axi_peripheral_interconnect/M08_ACLK] [get_bd_pins rst_FPGA_CLK1_49M152/slowest_sync_clk]
  connect_bd_net -net GND_0_dout [get_bd_ports PCIe_CLKREQn] [get_bd_pins GND_0/dout]
  connect_bd_net -net GND_11_dout [get_bd_pins GND_11/dout] [get_bd_pins irq_concat_0/In3] [get_bd_pins irq_concat_0/In9] [get_bd_pins irq_concat_0/In14] [get_bd_pins irq_concat_0/In15]
  connect_bd_net -net GND_13_dout [get_bd_pins GND_13/dout] [get_bd_pins axi_ad9361/up_adc_gpio_in] [get_bd_pins axi_ad9361/up_dac_gpio_in]
  connect_bd_net -net GND_14_dout [get_bd_pins GND_14/dout] [get_bd_pins gpio_concat_0/In3] [get_bd_pins gpio_concat_0/In5]
  connect_bd_net -net GND_15_dout [get_bd_pins GND_15/dout] [get_bd_pins gpio_concat_2/In7] [get_bd_pins gpio_concat_2/In13]
  connect_bd_net -net GND_17_dout [get_bd_pins GND_17/dout] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/aux_reset_in] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/mb_debug_sys_rst]
  connect_bd_net -net GND_18_dout [get_bd_pins GND_18/dout] [get_bd_pins rst_axi_pcie_0_125M/mb_debug_sys_rst]
  connect_bd_net -net GND_19_dout [get_bd_pins GND_19/dout] [get_bd_pins rst_mig_7series_0_166M/mb_debug_sys_rst]
  connect_bd_net -net GND_1_dout [get_bd_pins GND_1/dout] [get_bd_pins axi_ad9361/dac_sync_in] [get_bd_pins axi_ad9361/gps_pps] [get_bd_pins axi_ad9361/tdd_sync]
  connect_bd_net -net GND_20_dout [get_bd_pins GND_20/dout] [get_bd_pins rst_clk_wiz_0_250M/mb_debug_sys_rst]
  connect_bd_net -net GND_21_dout [get_bd_pins GND_21/dout] [get_bd_pins gpio_concat_2/In16]
  connect_bd_net -net GND_22_dout [get_bd_pins GND_22/dout] [get_bd_pins gpio_concat_2/In9] [get_bd_pins gpio_concat_2/In14] [get_bd_pins gpio_concat_2/In15]
  connect_bd_net -net GND_23_dout [get_bd_pins GND_23/dout] [get_bd_pins rst_axi_ad9361_61M44/mb_debug_sys_rst]
  connect_bd_net -net GND_25_dout [get_bd_pins GND_25/dout] [get_bd_pins rst_FPGA_CLK1_49M152/mb_debug_sys_rst]
  connect_bd_net -net GND_3_dout [get_bd_pins GND_3/dout] [get_bd_pins gpio_concat_0/In7]
  connect_bd_net -net GND_4_dout [get_bd_pins GND_4/dout] [get_bd_pins gpio_concat_1/In2]
  connect_bd_net -net GND_5_dout [get_bd_pins GND_5/dout] [get_bd_pins gpio_concat_0/In0]
  connect_bd_net -net GND_6_dout [get_bd_pins GND_6/dout] [get_bd_pins gpio_concat_1/In0]
  connect_bd_net -net GND_7_dout [get_bd_pins GND_7/dout] [get_bd_pins gpio_concat_0/In8]
  connect_bd_net -net GND_8_dout [get_bd_pins GND_8/dout] [get_bd_pins gpio_concat_1/In3]
  connect_bd_net -net GND_9_dout [get_bd_pins GND_9/dout] [get_bd_pins gpio_concat_2/In3] [get_bd_pins gpio_concat_2/In8]
  connect_bd_net -net M02_ARESETN_1 [get_bd_pins axi_pcie_interconnect/M02_ARESETN] [get_bd_pins rst_mig_7series_0_166M/interconnect_aresetn]
  connect_bd_net -net M16_ARESETN_1 [get_bd_pins axi_peripheral_interconnect/M16_ARESETN] [get_bd_pins rst_axi_ad9361_61M44/interconnect_aresetn]
  connect_bd_net -net RXCLK_1 [get_bd_ports TRX_DATA_CLK] [get_bd_pins axi_ad9361/rx_clk_in]
  connect_bd_net -net RXDATA_1 [get_bd_ports TRX_P1_RXDATA] [get_bd_pins axi_ad9361/rx_data_in]
  connect_bd_net -net RXFRAME_1 [get_bd_ports TRX_RXFRAME] [get_bd_pins axi_ad9361/rx_frame_in]
  connect_bd_net -net SYNTH_LD_1 [get_bd_ports SYNTH_LD] [get_bd_pins gpio_concat_1/In1]
  connect_bd_net -net TRX_5V0_BIAS_T1_OCn_1 [get_bd_ports TRX_5V0_BIAS_T1_OCn] [get_bd_pins gpio_concat_0_1/In0]
  connect_bd_net -net TRX_5V0_BIAS_T2_OCn_1 [get_bd_ports TRX_5V0_BIAS_T2_OCn] [get_bd_pins gpio_concat_0_1/In1]
  connect_bd_net -net TRX_5V0_PA1_OCn_1 [get_bd_ports TRX_5V0_PA1_OCn] [get_bd_pins gpio_concat_0_1/In2]
  connect_bd_net -net TRX_5V0_PA2_OCn_1 [get_bd_ports TRX_5V0_PA2_OCn] [get_bd_pins gpio_concat_0_1/In3]
  connect_bd_net -net TRX_CTRL_OUT_1 [get_bd_ports TRX_CTRL_OUT] [get_bd_pins gpio_concat_0/In1]
  connect_bd_net -net VCC_0_dout [get_bd_pins VCC_0/dout] [get_bd_pins rst_axi_ad9361_61M44/dcm_locked]
  connect_bd_net -net VCC_1_dout [get_bd_pins VCC_1/dout] [get_bd_pins rst_FPGA_CLK1_49M152/dcm_locked]
  connect_bd_net -net ad9361_adc_packer_fifo_wr_overflow [get_bd_pins ad9361_adc_packer/fifo_wr_overflow] [get_bd_pins axi_ad9361/adc_dovf] [get_bd_pins axi_rf_timestamping_0/rx_fifo_overflow]
  connect_bd_net -net ad9361_dac_unpacker_fifo_rd_underflow [get_bd_pins ad9361_dac_unpacker/fifo_rd_underflow] [get_bd_pins axi_ad9361/dac_dunf] [get_bd_pins axi_rf_timestamping_0/tx_fifo_underflow]
  connect_bd_net -net ad9361_dac_unpacker_s_axis_ready [get_bd_pins ad9361_dac_unpacker/s_axis_ready] [get_bd_pins axi_dmac_rf_tx/m_axis_ready]
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
  connect_bd_net -net axi_ad9361_0_l_clk [get_bd_pins ad9361_adc_packer/clk] [get_bd_pins ad9361_dac_unpacker/clk] [get_bd_pins axi_ad9361/clk] [get_bd_pins axi_ad9361/l_clk] [get_bd_pins axi_dmac_rf_rx/fifo_wr_clk] [get_bd_pins axi_dmac_rf_tx/m_axis_aclk] [get_bd_pins axi_peripheral_interconnect/M16_ACLK] [get_bd_pins axi_rf_timestamping_0/aclk] [get_bd_pins rst_axi_ad9361_61M44/slowest_sync_clk]
  connect_bd_net -net axi_ad9361_0_rst [get_bd_pins axi_ad9361/rst] [get_bd_pins rst_axi_ad9361_61M44/aux_reset_in]
  connect_bd_net -net axi_ad9361_0_tx_clk_out [get_bd_ports TRX_FBCLK] [get_bd_pins axi_ad9361/tx_clk_out]
  connect_bd_net -net axi_ad9361_0_tx_data_out [get_bd_ports TRX_P0_TXDATA] [get_bd_pins axi_ad9361/tx_data_out]
  connect_bd_net -net axi_ad9361_0_tx_frame_out [get_bd_ports TRX_TXFRAME] [get_bd_pins axi_ad9361/tx_frame_out]
  connect_bd_net -net axi_ad9361_0_txnrx [get_bd_ports TRX_TXNRX] [get_bd_pins axi_ad9361/txnrx]
  connect_bd_net -net axi_ad9361_adc_r1_mode [get_bd_pins axi_ad9361/adc_r1_mode] [get_bd_pins gpio_concat_0_2/In0]
  connect_bd_net -net axi_ad9361_dac_r1_mode [get_bd_pins axi_ad9361/dac_r1_mode] [get_bd_pins gpio_concat_0_2/In1]
  connect_bd_net -net axi_dmac_i2s_rx_irq [get_bd_pins axi_dmac_i2s_rx/irq] [get_bd_pins irq_concat_0/In7]
  connect_bd_net -net axi_dmac_i2s_tx_irq [get_bd_pins axi_dmac_i2s_tx/irq] [get_bd_pins irq_concat_0/In8]
  connect_bd_net -net axi_dmac_rf_rx_fifo_wr_xfer_req [get_bd_pins axi_dmac_rf_rx/fifo_wr_xfer_req] [get_bd_pins axi_rf_timestamping_0/rx_dma_xfer_req] [get_bd_pins logic_not_1/Op1]
  connect_bd_net -net axi_dmac_rf_rx_irq [get_bd_pins axi_dmac_rf_rx/irq] [get_bd_pins irq_concat_0/In0]
  connect_bd_net -net axi_dmac_rf_tx_irq [get_bd_pins axi_dmac_rf_tx/irq] [get_bd_pins irq_concat_0/In1]
  connect_bd_net -net axi_dmac_rf_tx_m_axis_data [get_bd_pins ad9361_dac_unpacker/s_axis_data] [get_bd_pins axi_dmac_rf_tx/m_axis_data]
  connect_bd_net -net axi_dmac_rf_tx_m_axis_valid [get_bd_pins axi_dmac_rf_tx/m_axis_valid] [get_bd_pins axi_rf_timestamping_0/tx_dma_data_ready] [get_bd_pins logic_and_2/Op2]
  connect_bd_net -net axi_dmac_rf_tx_m_axis_xfer_req [get_bd_pins axi_dmac_rf_tx/m_axis_xfer_req] [get_bd_pins logic_not_0/Op1]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_pins axi_gpio_0/gpio_out] [get_bd_pins gpio_slice_trx_ctrl_out/Din] [get_bd_pins gpio_slice_trx_en_agc/Din] [get_bd_pins gpio_slice_trx_resetn/Din] [get_bd_pins gpio_slice_trx_sync_in/Din] [get_bd_pins gpio_slice_trx_up_enable/Din] [get_bd_pins gpio_slice_trx_up_txnrx/Din]
  connect_bd_net -net axi_gpio_1_gpio_io_o [get_bd_pins axi_gpio_1/gpio_out] [get_bd_pins gpio_slice_synth_ce/Din] [get_bd_pins gpio_slice_synth_mute/Din] [get_bd_pins gpio_slice_synth_resetn/Din] [get_bd_pins gpio_slice_synth_sync/Din]
  connect_bd_net -net axi_gpio_2_gpio_io_o [get_bd_pins axi_gpio_2/gpio_out] [get_bd_pins gpio_slice_cm4_wake/Din] [get_bd_pins gpio_slice_cpu_resetn/Din] [get_bd_pins gpio_slice_ddr_intf_reset/Din] [get_bd_pins gpio_slice_ddr_reset/Din] [get_bd_pins gpio_slice_i2s_reset/Din] [get_bd_pins gpio_slice_sys_aux_reset/Din]
  connect_bd_net -net axi_i2s_0_i2s_bclk [get_bd_ports CODEC_I2S_BCLK] [get_bd_pins axi_i2s_0/i2s_bclk]
  connect_bd_net -net axi_i2s_0_i2s_lrclk [get_bd_ports CODEC_I2S_LRCLK] [get_bd_pins axi_i2s_0/i2s_lrclk]
  connect_bd_net -net axi_i2s_0_i2s_mclk [get_bd_ports CODEC_MCLK] [get_bd_pins axi_i2s_0/i2s_mclk]
  connect_bd_net -net axi_i2s_0_i2s_sdata_out [get_bd_ports CODEC_I2S_SDIN] [get_bd_pins axi_i2s_0/i2s_sdata_out]
  connect_bd_net -net axi_iic_0_gpo [get_bd_ports CODEC_RSTn] [get_bd_pins axi_iic_0/gpo]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins irq_concat_0/In4]
  connect_bd_net -net axi_iic_1_gpo [get_bd_pins axi_iic_1/gpo] [get_bd_pins gpio_slice_clk_mngr_oen/Din] [get_bd_pins gpio_slice_pm_i2c_en/Din]
  connect_bd_net -net axi_iic_1_iic2intc_irpt [get_bd_pins axi_iic_1/iic2intc_irpt] [get_bd_pins irq_concat_0/In12]
  connect_bd_net -net axi_irq_controller_0_cpu_irq_out [get_bd_pins axi_irq_controller_0/cpu_irq_out] [get_bd_pins picorv32_0/irq]
  connect_bd_net -net axi_irq_controller_0_pcie_msi_request [get_bd_pins axi_irq_controller_0/pcie_msi_request] [get_bd_pins axi_pcie_0/INTX_MSI_Request]
  connect_bd_net -net axi_irq_controller_0_pcie_msi_vector [get_bd_pins axi_irq_controller_0/pcie_msi_vector] [get_bd_pins axi_pcie_0/MSI_Vector_Num]
  connect_bd_net -net axi_pcie_0_INTX_MSI_Grant [get_bd_pins axi_irq_controller_0/pcie_msi_granted] [get_bd_pins axi_pcie_0/INTX_MSI_Grant]
  connect_bd_net -net axi_pcie_0_MSI_Vector_Width [get_bd_pins axi_irq_controller_0/pcie_msi_vector_width] [get_bd_pins axi_pcie_0/MSI_Vector_Width]
  connect_bd_net -net axi_pcie_0_MSI_enable [get_bd_pins axi_irq_controller_0/pcie_msi_enabled] [get_bd_pins axi_pcie_0/MSI_enable]
  connect_bd_net -net axi_pcie_0_axi_aclk_out [get_bd_pins axi_ad9361/s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_cpu_dma_interconnect/ACLK] [get_bd_pins axi_cpu_dma_interconnect/M00_ACLK] [get_bd_pins axi_cpu_dma_interconnect/M01_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S00_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S01_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S02_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S03_ACLK] [get_bd_pins axi_cpu_dma_interconnect/S04_ACLK] [get_bd_pins axi_dmac_i2s_rx/m_dest_axi_aclk] [get_bd_pins axi_dmac_i2s_rx/s_axi_aclk] [get_bd_pins axi_dmac_i2s_tx/m_src_axi_aclk] [get_bd_pins axi_dmac_i2s_tx/s_axi_aclk] [get_bd_pins axi_dmac_rf_rx/m_dest_axi_aclk] [get_bd_pins axi_dmac_rf_rx/s_axi_aclk] [get_bd_pins axi_dmac_rf_tx/m_src_axi_aclk] [get_bd_pins axi_dmac_rf_tx/s_axi_aclk] [get_bd_pins axi_gpio_0/aclk] [get_bd_pins axi_gpio_1/aclk] [get_bd_pins axi_gpio_2/aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_iic_1/s_axi_aclk] [get_bd_pins axi_irq_controller_0/aclk] [get_bd_pins axi_pcie_0/axi_aclk_out] [get_bd_pins axi_pcie_interconnect/ACLK] [get_bd_pins axi_pcie_interconnect/M00_ACLK] [get_bd_pins axi_pcie_interconnect/M01_ACLK] [get_bd_pins axi_pcie_interconnect/M03_ACLK] [get_bd_pins axi_pcie_interconnect/S00_ACLK] [get_bd_pins axi_pcie_interconnect/S01_ACLK] [get_bd_pins axi_peripheral_interconnect/ACLK] [get_bd_pins axi_peripheral_interconnect/M00_ACLK] [get_bd_pins axi_peripheral_interconnect/M01_ACLK] [get_bd_pins axi_peripheral_interconnect/M02_ACLK] [get_bd_pins axi_peripheral_interconnect/M03_ACLK] [get_bd_pins axi_peripheral_interconnect/M04_ACLK] [get_bd_pins axi_peripheral_interconnect/M06_ACLK] [get_bd_pins axi_peripheral_interconnect/M07_ACLK] [get_bd_pins axi_peripheral_interconnect/M09_ACLK] [get_bd_pins axi_peripheral_interconnect/M10_ACLK] [get_bd_pins axi_peripheral_interconnect/M11_ACLK] [get_bd_pins axi_peripheral_interconnect/M12_ACLK] [get_bd_pins axi_peripheral_interconnect/M13_ACLK] [get_bd_pins axi_peripheral_interconnect/M14_ACLK] [get_bd_pins axi_peripheral_interconnect/M15_ACLK] [get_bd_pins axi_peripheral_interconnect/M17_ACLK] [get_bd_pins axi_peripheral_interconnect/S00_ACLK] [get_bd_pins axi_protocol_convert_0/aclk] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi4_aclk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_quad_spi_1/ext_spi_clk] [get_bd_pins axi_quad_spi_1/s_axi_aclk] [get_bd_pins axi_quad_spi_2/ext_spi_clk] [get_bd_pins axi_quad_spi_2/s_axi_aclk] [get_bd_pins picorv32_0/clk] [get_bd_pins rst_axi_pcie_0_125M/slowest_sync_clk] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/slowest_sync_clk] [get_bd_pins rst_pulse_gen_0/clk] [get_bd_pins xadc_wiz_0/s_axi_aclk]
  connect_bd_net -net axi_pcie_0_axi_ctl_aclk_out [get_bd_pins axi_pcie_0/axi_ctl_aclk_out] [get_bd_pins axi_peripheral_interconnect/M05_ACLK]
  connect_bd_net -net axi_pcie_0_interrupt_out [get_bd_pins axi_pcie_0/interrupt_out] [get_bd_pins irq_concat_0/In6]
  connect_bd_net -net axi_pcie_0_mmcm_lock [get_bd_pins axi_pcie_0/mmcm_lock] [get_bd_pins gpio_concat_2/In2] [get_bd_pins rst_axi_pcie_0_125M/dcm_locked] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/dcm_locked]
  connect_bd_net -net axi_pcie_0_user_link_up [get_bd_pins axi_pcie_0/user_link_up] [get_bd_pins gpio_concat_2/In5] [get_bd_pins user_led_0/user_led]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins irq_concat_0/In5]
  connect_bd_net -net axi_quad_spi_1_ip2intc_irpt [get_bd_pins axi_quad_spi_1/ip2intc_irpt] [get_bd_pins irq_concat_0/In11]
  connect_bd_net -net axi_quad_spi_2_ip2intc_irpt [get_bd_pins axi_quad_spi_2/ip2intc_irpt] [get_bd_pins irq_concat_0/In13]
  connect_bd_net -net axi_rf_timestamping_0_rx_enable [get_bd_pins axi_rf_timestamping_0/rx_enable] [get_bd_pins logic_and_0/Op1]
  connect_bd_net -net axi_rf_timestamping_0_tx_enable [get_bd_pins axi_rf_timestamping_0/tx_enable] [get_bd_pins logic_and_2/Op1]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins mig_7series_0/sys_clk_i] [get_bd_pins rst_clk_wiz_0_250M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_delay_ref_clk [get_bd_pins axi_ad9361/delay_clk] [get_bd_pins clk_wiz_0/clk_out2] [get_bd_pins mig_7series_0/clk_ref_i]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins gpio_concat_2/In0] [get_bd_pins rst_clk_wiz_0_250M/dcm_locked]
  connect_bd_net -net gpio_concat_0_2_dout [get_bd_pins gpio_concat_0/In4] [get_bd_pins gpio_concat_0_2/dout]
  connect_bd_net -net gpio_concat_0_dout [get_bd_pins axi_gpio_0/gpio_in] [get_bd_pins gpio_concat_0/dout]
  connect_bd_net -net gpio_concat_1_dout [get_bd_pins gpio_concat_0/In2] [get_bd_pins gpio_concat_0_1/dout]
  connect_bd_net -net gpio_concat_2_dout [get_bd_pins axi_gpio_1/gpio_in] [get_bd_pins gpio_concat_1/dout]
  connect_bd_net -net gpio_concat_2_dout1 [get_bd_pins axi_gpio_2/gpio_in] [get_bd_pins gpio_concat_2/dout]
  connect_bd_net -net gpio_slice_clk_mngr_oen_Dout [get_bd_ports CLK_MNGR_OEn] [get_bd_pins gpio_slice_clk_mngr_oen/Dout]
  connect_bd_net -net gpio_slice_cm4_wake_Dout [get_bd_ports CM4_WAKE] [get_bd_pins gpio_slice_cm4_wake/Dout]
  connect_bd_net -net gpio_slice_cpu_resetn_Dout [get_bd_pins gpio_slice_cpu_resetn/Dout] [get_bd_pins picorv32_0/resetn]
  connect_bd_net -net gpio_slice_ddr_intf_reset_Dout [get_bd_pins gpio_slice_ddr_intf_reset/Dout] [get_bd_pins logic_or_2/Op2]
  connect_bd_net -net gpio_slice_ddr_reset_Dout [get_bd_pins gpio_slice_ddr_reset/Dout] [get_bd_pins rst_clk_wiz_0_250M/aux_reset_in]
  connect_bd_net -net gpio_slice_i2s_reset_Dout [get_bd_pins gpio_slice_i2s_reset/Dout] [get_bd_pins rst_FPGA_CLK1_49M152/aux_reset_in]
  connect_bd_net -net gpio_slice_pm_i2c_en_Dout [get_bd_ports PM_I2C_EN] [get_bd_pins gpio_slice_pm_i2c_en/Dout]
  connect_bd_net -net gpio_slice_synth_ce_Dout [get_bd_ports SYNTH_CE] [get_bd_pins gpio_slice_synth_ce/Dout]
  connect_bd_net -net gpio_slice_synth_mute_Dout [get_bd_ports SYNTH_MUTE] [get_bd_pins gpio_slice_synth_mute/Dout]
  connect_bd_net -net gpio_slice_synth_resetn_Dout [get_bd_ports SYNTH_RESETn] [get_bd_pins gpio_slice_synth_resetn/Dout]
  connect_bd_net -net gpio_slice_synth_sync_Dout [get_bd_ports SYNTH_SYNC] [get_bd_pins gpio_slice_synth_sync/Dout]
  connect_bd_net -net gpio_slice_sys_aux_reset_Dout [get_bd_pins gpio_slice_sys_aux_reset/Dout] [get_bd_pins rst_pulse_gen_0/trigger]
  connect_bd_net -net gpio_slice_trx_en_agc_Dout [get_bd_ports TRX_EN_AGC] [get_bd_pins gpio_slice_trx_en_agc/Dout]
  connect_bd_net -net gpio_slice_trx_resestn_Dout [get_bd_ports TRX_RESETn] [get_bd_pins gpio_slice_trx_resetn/Dout]
  connect_bd_net -net gpio_slice_trx_sync_in_Dout [get_bd_ports TRX_SYNC_IN] [get_bd_pins gpio_slice_trx_sync_in/Dout]
  connect_bd_net -net gpio_slice_trx_up_enable_Dout [get_bd_pins axi_ad9361/up_enable] [get_bd_pins gpio_slice_trx_up_enable/Dout]
  connect_bd_net -net gpio_slice_trx_up_txnrx_Dout [get_bd_pins axi_ad9361/up_txnrx] [get_bd_pins gpio_slice_trx_up_txnrx/Dout]
  connect_bd_net -net i2s_sdata_in_0_1 [get_bd_ports CODEC_I2S_SDOUT] [get_bd_pins axi_i2s_0/i2s_sdata_in]
  connect_bd_net -net irq_concat_0_dout [get_bd_pins axi_irq_controller_0/irq_in] [get_bd_pins irq_concat_0/dout]
  connect_bd_net -net logic_and_0_Res [get_bd_pins ad9361_adc_packer/fifo_wr_en] [get_bd_pins logic_and_0/Res]
  connect_bd_net -net logic_and_2_Res [get_bd_pins ad9361_dac_unpacker/s_axis_valid] [get_bd_pins logic_and_2/Res]
  connect_bd_net -net logic_not_0_Res [get_bd_pins logic_not_0/Res] [get_bd_pins logic_or_3/Op1]
  connect_bd_net -net logic_not_1_Res [get_bd_pins logic_not_1/Res] [get_bd_pins logic_or_4/Op1]
  connect_bd_net -net logic_or_0_Res [get_bd_pins axi_rf_timestamping_0/rx_data_ready] [get_bd_pins logic_and_0/Op2] [get_bd_pins logic_or_0/Res]
  connect_bd_net -net logic_or_1_Res [get_bd_pins ad9361_dac_unpacker/fifo_rd_en] [get_bd_pins axi_rf_timestamping_0/tx_data_ready] [get_bd_pins logic_or_1/Res]
  connect_bd_net -net logic_or_2_Res [get_bd_pins logic_or_2/Res] [get_bd_pins rst_mig_7series_0_166M/aux_reset_in]
  connect_bd_net -net logic_or_3_Res [get_bd_pins ad9361_dac_unpacker/reset] [get_bd_pins logic_or_3/Res]
  connect_bd_net -net logic_or_4_Res [get_bd_pins ad9361_adc_packer/reset] [get_bd_pins logic_or_4/Res]
  connect_bd_net -net mig_7series_0_init_calib_complete [get_bd_pins gpio_concat_2/In4] [get_bd_pins mig_7series_0/init_calib_complete]
  connect_bd_net -net mig_7series_0_mmcm_locked [get_bd_pins gpio_concat_2/In1] [get_bd_pins mig_7series_0/mmcm_locked] [get_bd_pins rst_mig_7series_0_166M/dcm_locked]
  connect_bd_net -net mig_7series_0_ui_clk [get_bd_pins axi_pcie_interconnect/M02_ACLK] [get_bd_pins mig_7series_0/ui_clk] [get_bd_pins rst_mig_7series_0_166M/slowest_sync_clk]
  connect_bd_net -net mig_7series_0_ui_clk_sync_rst [get_bd_pins logic_or_2/Op1] [get_bd_pins mig_7series_0/ui_clk_sync_rst]
  connect_bd_net -net picorv32_0_eoi [get_bd_pins axi_irq_controller_0/cpu_eoi_in] [get_bd_pins picorv32_0/eoi]
  connect_bd_net -net picorv32_0_trap [get_bd_pins gpio_concat_2/In6] [get_bd_pins picorv32_0/trap]
  connect_bd_net -net rst_FPGA_CLK1_49M152_interconnect_aresetn [get_bd_pins axi_peripheral_interconnect/M08_ARESETN] [get_bd_pins rst_FPGA_CLK1_49M152/interconnect_aresetn]
  connect_bd_net -net rst_FPGA_CLK1_49M152_peripheral_aresetn [get_bd_pins axi_i2s_0/aresetn] [get_bd_pins gpio_concat_2/In12] [get_bd_pins rst_FPGA_CLK1_49M152/peripheral_aresetn]
  connect_bd_net -net rst_axi_ad9361_61M44_peripheral_aresetn [get_bd_pins axi_rf_timestamping_0/aresetn] [get_bd_pins gpio_concat_0/In6] [get_bd_pins rst_axi_ad9361_61M44/peripheral_aresetn]
  connect_bd_net -net rst_axi_ad9361_61M44_peripheral_reset [get_bd_pins logic_or_3/Op2] [get_bd_pins logic_or_4/Op2] [get_bd_pins rst_axi_ad9361_61M44/peripheral_reset]
  connect_bd_net -net rst_axi_pcie_0_125M_interconnect_aresetn [get_bd_pins axi_cpu_dma_interconnect/ARESETN] [get_bd_pins axi_cpu_dma_interconnect/M00_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/M01_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S00_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S01_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S02_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S03_ARESETN] [get_bd_pins axi_cpu_dma_interconnect/S04_ARESETN] [get_bd_pins axi_pcie_interconnect/ARESETN] [get_bd_pins axi_pcie_interconnect/M00_ARESETN] [get_bd_pins axi_pcie_interconnect/M01_ARESETN] [get_bd_pins axi_pcie_interconnect/M03_ARESETN] [get_bd_pins axi_pcie_interconnect/S00_ARESETN] [get_bd_pins axi_pcie_interconnect/S01_ARESETN] [get_bd_pins axi_peripheral_interconnect/ARESETN] [get_bd_pins axi_peripheral_interconnect/M00_ARESETN] [get_bd_pins axi_peripheral_interconnect/M01_ARESETN] [get_bd_pins axi_peripheral_interconnect/M02_ARESETN] [get_bd_pins axi_peripheral_interconnect/M03_ARESETN] [get_bd_pins axi_peripheral_interconnect/M04_ARESETN] [get_bd_pins axi_peripheral_interconnect/M05_ARESETN] [get_bd_pins axi_peripheral_interconnect/M06_ARESETN] [get_bd_pins axi_peripheral_interconnect/M07_ARESETN] [get_bd_pins axi_peripheral_interconnect/M09_ARESETN] [get_bd_pins axi_peripheral_interconnect/M10_ARESETN] [get_bd_pins axi_peripheral_interconnect/M11_ARESETN] [get_bd_pins axi_peripheral_interconnect/M12_ARESETN] [get_bd_pins axi_peripheral_interconnect/M13_ARESETN] [get_bd_pins axi_peripheral_interconnect/M14_ARESETN] [get_bd_pins axi_peripheral_interconnect/M15_ARESETN] [get_bd_pins axi_peripheral_interconnect/M17_ARESETN] [get_bd_pins axi_peripheral_interconnect/S00_ARESETN] [get_bd_pins axi_protocol_convert_0/aresetn] [get_bd_pins rst_axi_pcie_0_125M/interconnect_aresetn]
  connect_bd_net -net rst_axi_pcie_0_125M_pcie_core_peripheral_aresetn [get_bd_pins axi_pcie_0/axi_aresetn] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/peripheral_aresetn]
  connect_bd_net -net rst_axi_pcie_0_125M_peripheral_aresetn [get_bd_pins axi_ad9361/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_dmac_i2s_rx/m_dest_axi_aresetn] [get_bd_pins axi_dmac_i2s_rx/s_axi_aresetn] [get_bd_pins axi_dmac_i2s_tx/m_src_axi_aresetn] [get_bd_pins axi_dmac_i2s_tx/s_axi_aresetn] [get_bd_pins axi_dmac_rf_rx/m_dest_axi_aresetn] [get_bd_pins axi_dmac_rf_rx/s_axi_aresetn] [get_bd_pins axi_dmac_rf_tx/m_src_axi_aresetn] [get_bd_pins axi_dmac_rf_tx/s_axi_aresetn] [get_bd_pins axi_gpio_0/aresetn] [get_bd_pins axi_gpio_1/aresetn] [get_bd_pins axi_gpio_2/aresetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_iic_1/s_axi_aresetn] [get_bd_pins axi_irq_controller_0/aresetn] [get_bd_pins axi_quad_spi_0/s_axi4_aresetn] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_quad_spi_1/s_axi_aresetn] [get_bd_pins axi_quad_spi_2/s_axi_aresetn] [get_bd_pins clk_wiz_0/resetn] [get_bd_pins rst_axi_pcie_0_125M/peripheral_aresetn] [get_bd_pins xadc_wiz_0/s_axi_aresetn]
  connect_bd_net -net rst_mig_7series_0_166M_peripheral_aresetn [get_bd_pins gpio_concat_2/In10] [get_bd_pins mig_7series_0/aresetn] [get_bd_pins rst_mig_7series_0_166M/peripheral_aresetn]
  connect_bd_net -net rst_mig_7series_0_250M_peripheral_aresetn [get_bd_pins gpio_concat_2/In11] [get_bd_pins mig_7series_0/sys_rst] [get_bd_pins rst_clk_wiz_0_250M/peripheral_aresetn]
  connect_bd_net -net rst_pulse_gen_0_rst_out [get_bd_pins rst_axi_pcie_0_125M/aux_reset_in] [get_bd_pins rst_pulse_gen_0/rst_out]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins axi_pcie_0/REFCLK] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net util_upack2_1_fifo_rd_data_0 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_0] [get_bd_pins axi_ad9361/dac_data_i0]
  connect_bd_net -net util_upack2_1_fifo_rd_data_1 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_1] [get_bd_pins axi_ad9361/dac_data_q0]
  connect_bd_net -net util_upack2_1_fifo_rd_data_2 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_2] [get_bd_pins axi_ad9361/dac_data_i1]
  connect_bd_net -net util_upack2_1_fifo_rd_data_3 [get_bd_pins ad9361_dac_unpacker/fifo_rd_data_3] [get_bd_pins axi_ad9361/dac_data_q1]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_ports PCIe_RESETn] [get_bd_pins rst_FPGA_CLK1_49M152/ext_reset_in] [get_bd_pins rst_axi_ad9361_61M44/ext_reset_in] [get_bd_pins rst_axi_pcie_0_125M/ext_reset_in] [get_bd_pins rst_axi_pcie_0_125M_pcie_core/ext_reset_in] [get_bd_pins rst_clk_wiz_0_250M/ext_reset_in] [get_bd_pins rst_mig_7series_0_166M/ext_reset_in]
  connect_bd_net -net xadc_wiz_0_ip2intc_irpt [get_bd_pins irq_concat_0/In10] [get_bd_pins xadc_wiz_0/ip2intc_irpt]
  connect_bd_net -net xadc_wiz_0_temp_out [get_bd_pins mig_7series_0/device_temp_i] [get_bd_pins xadc_wiz_0/temp_out]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports TRX_CTRL_IN] [get_bd_pins gpio_slice_trx_ctrl_out/Dout]

  # Create address segments
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR1] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR2] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR1] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR2] -force
  assign_bd_address -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR1] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR2] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR1] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR2] -force
  assign_bd_address -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_gpio_0/s_axi/reg0] -force
  assign_bd_address -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_gpio_1/s_axi/reg0] -force
  assign_bd_address -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_gpio_2/s_axi/reg0] -force
  assign_bd_address -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_i2s_0/s_axi/reg0] -force
  assign_bd_address -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0] -force
  assign_bd_address -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_pcie_0/M_AXI] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force
  assign_bd_address -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite] -force
  assign_bd_address -offset 0x01000000 -range 0x00020000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force
  assign_bd_address -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite] -force
  assign_bd_address -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_gpio_0/s_axi/reg0] -force
  assign_bd_address -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_gpio_1/s_axi/reg0] -force
  assign_bd_address -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_gpio_2/s_axi/reg0] -force
  assign_bd_address -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_i2s_0/s_axi/reg0] -force
  assign_bd_address -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] -force
  assign_bd_address -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_iic_1/S_AXI/Reg] -force
  assign_bd_address -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0] -force
  assign_bd_address -offset 0x50000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR0] -force
  assign_bd_address -offset 0x60000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR1] -force
  assign_bd_address -offset 0x70000000 -range 0x10000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI/BAR2] -force
  assign_bd_address -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0] -force
  assign_bd_address -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0] -force
  assign_bd_address -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg] -force
  assign_bd_address -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0] -force
  assign_bd_address -offset 0x20000000 -range 0x20000000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs mig_7series_0/memmap/memaddr] -force
  assign_bd_address -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces picorv32_0/M_AXI] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg] -force

  # Exclude Address Segments
  exclude_bd_addr_seg -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_1/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_2/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_i2s_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0]
  exclude_bd_addr_seg -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0]
  exclude_bd_addr_seg -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_rx/m_dest_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg]
  exclude_bd_addr_seg -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_gpio_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_gpio_1/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_gpio_2/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_i2s_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0]
  exclude_bd_addr_seg -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_i2s_tx/m_src_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg]
  exclude_bd_addr_seg -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_1/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_gpio_2/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_i2s_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0]
  exclude_bd_addr_seg -offset 0x00000000 -range 0x00800000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/aximm/MEM0]
  exclude_bd_addr_seg -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_rx/m_dest_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg]
  exclude_bd_addr_seg -offset 0x40100000 -range 0x00010000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_ad9361/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x4000E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_i2s_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40000000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_rx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40002000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_dmac_rf_tx/s_axi/axi_lite]
  exclude_bd_addr_seg -offset 0x40004000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_gpio_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_gpio_1/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4001C000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_gpio_2/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40010000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_i2s_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40006000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_iic_0/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40016000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_iic_1/S_AXI/Reg]
  exclude_bd_addr_seg -offset 0x40020000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_irq_controller_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x4000A000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_pcie_0/S_AXI_CTL/CTL0]
  exclude_bd_addr_seg -offset 0x40008000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40014000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_1/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x40018000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_quad_spi_2/AXI_LITE/Reg]
  exclude_bd_addr_seg -offset 0x4001E000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs axi_rf_timestamping_0/s_axi/reg0]
  exclude_bd_addr_seg -offset 0x40012000 -range 0x00002000 -target_address_space [get_bd_addr_spaces axi_dmac_rf_tx/m_src_axi] [get_bd_addr_segs xadc_wiz_0/s_axi_lite/Reg]


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


