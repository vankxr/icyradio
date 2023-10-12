# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GPIO_IN_MASK_DEFAULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GPIO_OUT_DEFAULT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NUM_CDC_STAGES" -parent ${Page_0}


}

proc update_PARAM_VALUE.GPIO_IN_MASK_DEFAULT { PARAM_VALUE.GPIO_IN_MASK_DEFAULT } {
	# Procedure called to update GPIO_IN_MASK_DEFAULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_IN_MASK_DEFAULT { PARAM_VALUE.GPIO_IN_MASK_DEFAULT } {
	# Procedure called to validate GPIO_IN_MASK_DEFAULT
	return true
}

proc update_PARAM_VALUE.GPIO_OUT_DEFAULT { PARAM_VALUE.GPIO_OUT_DEFAULT } {
	# Procedure called to update GPIO_OUT_DEFAULT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_OUT_DEFAULT { PARAM_VALUE.GPIO_OUT_DEFAULT } {
	# Procedure called to validate GPIO_OUT_DEFAULT
	return true
}

proc update_PARAM_VALUE.NUM_CDC_STAGES { PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to update NUM_CDC_STAGES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_CDC_STAGES { PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to validate NUM_CDC_STAGES
	return true
}


proc update_MODELPARAM_VALUE.GPIO_IN_MASK_DEFAULT { MODELPARAM_VALUE.GPIO_IN_MASK_DEFAULT PARAM_VALUE.GPIO_IN_MASK_DEFAULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_IN_MASK_DEFAULT}] ${MODELPARAM_VALUE.GPIO_IN_MASK_DEFAULT}
}

proc update_MODELPARAM_VALUE.GPIO_OUT_DEFAULT { MODELPARAM_VALUE.GPIO_OUT_DEFAULT PARAM_VALUE.GPIO_OUT_DEFAULT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_OUT_DEFAULT}] ${MODELPARAM_VALUE.GPIO_OUT_DEFAULT}
}

proc update_MODELPARAM_VALUE.NUM_CDC_STAGES { MODELPARAM_VALUE.NUM_CDC_STAGES PARAM_VALUE.NUM_CDC_STAGES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_CDC_STAGES}] ${MODELPARAM_VALUE.NUM_CDC_STAGES}
}

