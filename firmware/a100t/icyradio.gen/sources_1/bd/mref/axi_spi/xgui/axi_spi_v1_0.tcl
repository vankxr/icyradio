# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "NUM_SLAVES" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SCK_DIV_SZ" -parent ${Page_0}


}

proc update_PARAM_VALUE.NUM_SLAVES { PARAM_VALUE.NUM_SLAVES } {
	# Procedure called to update NUM_SLAVES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_SLAVES { PARAM_VALUE.NUM_SLAVES } {
	# Procedure called to validate NUM_SLAVES
	return true
}

proc update_PARAM_VALUE.SCK_DIV_SZ { PARAM_VALUE.SCK_DIV_SZ } {
	# Procedure called to update SCK_DIV_SZ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SCK_DIV_SZ { PARAM_VALUE.SCK_DIV_SZ } {
	# Procedure called to validate SCK_DIV_SZ
	return true
}


proc update_MODELPARAM_VALUE.NUM_SLAVES { MODELPARAM_VALUE.NUM_SLAVES PARAM_VALUE.NUM_SLAVES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_SLAVES}] ${MODELPARAM_VALUE.NUM_SLAVES}
}

proc update_MODELPARAM_VALUE.SCK_DIV_SZ { MODELPARAM_VALUE.SCK_DIV_SZ PARAM_VALUE.SCK_DIV_SZ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SCK_DIV_SZ}] ${MODELPARAM_VALUE.SCK_DIV_SZ}
}

