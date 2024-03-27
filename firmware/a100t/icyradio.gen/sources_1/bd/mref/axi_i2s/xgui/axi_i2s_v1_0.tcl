# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "BCLK_DIV_SZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "LRCLK_DIV_SZ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MCLK_DIV_SZ" -parent ${Page_0}


}

proc update_PARAM_VALUE.BCLK_DIV_SZ { PARAM_VALUE.BCLK_DIV_SZ } {
	# Procedure called to update BCLK_DIV_SZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.BCLK_DIV_SZ { PARAM_VALUE.BCLK_DIV_SZ } {
	# Procedure called to validate BCLK_DIV_SZ
	return true
}

proc update_PARAM_VALUE.LRCLK_DIV_SZ { PARAM_VALUE.LRCLK_DIV_SZ } {
	# Procedure called to update LRCLK_DIV_SZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.LRCLK_DIV_SZ { PARAM_VALUE.LRCLK_DIV_SZ } {
	# Procedure called to validate LRCLK_DIV_SZ
	return true
}

proc update_PARAM_VALUE.MCLK_DIV_SZ { PARAM_VALUE.MCLK_DIV_SZ } {
	# Procedure called to update MCLK_DIV_SZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MCLK_DIV_SZ { PARAM_VALUE.MCLK_DIV_SZ } {
	# Procedure called to validate MCLK_DIV_SZ
	return true
}


proc update_MODELPARAM_VALUE.MCLK_DIV_SZ { MODELPARAM_VALUE.MCLK_DIV_SZ PARAM_VALUE.MCLK_DIV_SZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MCLK_DIV_SZ}] ${MODELPARAM_VALUE.MCLK_DIV_SZ}
}

proc update_MODELPARAM_VALUE.BCLK_DIV_SZ { MODELPARAM_VALUE.BCLK_DIV_SZ PARAM_VALUE.BCLK_DIV_SZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.BCLK_DIV_SZ}] ${MODELPARAM_VALUE.BCLK_DIV_SZ}
}

proc update_MODELPARAM_VALUE.LRCLK_DIV_SZ { MODELPARAM_VALUE.LRCLK_DIV_SZ PARAM_VALUE.LRCLK_DIV_SZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.LRCLK_DIV_SZ}] ${MODELPARAM_VALUE.LRCLK_DIV_SZ}
}

