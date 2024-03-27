# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DNA_CLK_DIV" -parent ${Page_0}


}

proc update_PARAM_VALUE.DNA_CLK_DIV { PARAM_VALUE.DNA_CLK_DIV } {
	# Procedure called to update DNA_CLK_DIV when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DNA_CLK_DIV { PARAM_VALUE.DNA_CLK_DIV } {
	# Procedure called to validate DNA_CLK_DIV
	return true
}


proc update_MODELPARAM_VALUE.DNA_CLK_DIV { MODELPARAM_VALUE.DNA_CLK_DIV PARAM_VALUE.DNA_CLK_DIV } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DNA_CLK_DIV}] ${MODELPARAM_VALUE.DNA_CLK_DIV}
}

