# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "N_ASSERT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "N_DELAY" -parent ${Page_0}


}

proc update_PARAM_VALUE.N_ASSERT { PARAM_VALUE.N_ASSERT } {
	# Procedure called to update N_ASSERT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_ASSERT { PARAM_VALUE.N_ASSERT } {
	# Procedure called to validate N_ASSERT
	return true
}

proc update_PARAM_VALUE.N_DELAY { PARAM_VALUE.N_DELAY } {
	# Procedure called to update N_DELAY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.N_DELAY { PARAM_VALUE.N_DELAY } {
	# Procedure called to validate N_DELAY
	return true
}


proc update_MODELPARAM_VALUE.N_DELAY { MODELPARAM_VALUE.N_DELAY PARAM_VALUE.N_DELAY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_DELAY}] ${MODELPARAM_VALUE.N_DELAY}
}

proc update_MODELPARAM_VALUE.N_ASSERT { MODELPARAM_VALUE.N_ASSERT PARAM_VALUE.N_ASSERT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.N_ASSERT}] ${MODELPARAM_VALUE.N_ASSERT}
}

