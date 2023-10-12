# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_CDC_STAGES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_IRQS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PCIE_MSI_REQ_FIFO_DEPTH_W" -parent ${Page_0}
  ipgui::add_param $IPINST -name "PCIE_MSI_VEC_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_CDC_STAGES { PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to update NUM_CDC_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CDC_STAGES { PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to validate NUM_CDC_STAGES
	return true
}

proc update_PARAM_VALUE.NUM_IRQS { PARAM_VALUE.NUM_IRQS } {
	# Procedure called to update NUM_IRQS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_IRQS { PARAM_VALUE.NUM_IRQS } {
	# Procedure called to validate NUM_IRQS
	return true
}

proc update_PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W { PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W } {
	# Procedure called to update PCIE_MSI_REQ_FIFO_DEPTH_W when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W { PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W } {
	# Procedure called to validate PCIE_MSI_REQ_FIFO_DEPTH_W
	return true
}

proc update_PARAM_VALUE.PCIE_MSI_VEC_SIZE { PARAM_VALUE.PCIE_MSI_VEC_SIZE } {
	# Procedure called to update PCIE_MSI_VEC_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.PCIE_MSI_VEC_SIZE { PARAM_VALUE.PCIE_MSI_VEC_SIZE } {
	# Procedure called to validate PCIE_MSI_VEC_SIZE
	return true
}


proc update_MODELPARAM_VALUE.PCIE_MSI_VEC_SIZE { MODELPARAM_VALUE.PCIE_MSI_VEC_SIZE PARAM_VALUE.PCIE_MSI_VEC_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PCIE_MSI_VEC_SIZE}] ${MODELPARAM_VALUE.PCIE_MSI_VEC_SIZE}
}

proc update_MODELPARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W { MODELPARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W}] ${MODELPARAM_VALUE.PCIE_MSI_REQ_FIFO_DEPTH_W}
}

proc update_MODELPARAM_VALUE.NUM_IRQS { MODELPARAM_VALUE.NUM_IRQS PARAM_VALUE.NUM_IRQS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_IRQS}] ${MODELPARAM_VALUE.NUM_IRQS}
}

proc update_MODELPARAM_VALUE.NUM_CDC_STAGES { MODELPARAM_VALUE.NUM_CDC_STAGES PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_CDC_STAGES}] ${MODELPARAM_VALUE.NUM_CDC_STAGES}
}

