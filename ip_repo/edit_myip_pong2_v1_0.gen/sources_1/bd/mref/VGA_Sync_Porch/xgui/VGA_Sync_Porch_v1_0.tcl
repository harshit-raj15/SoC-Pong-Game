# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "g_ACTIVE_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_ACTIVE_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_TOTAL_COLS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_TOTAL_ROWS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_VIDEO_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.g_ACTIVE_COLS { PARAM_VALUE.g_ACTIVE_COLS } {
	# Procedure called to update g_ACTIVE_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_ACTIVE_COLS { PARAM_VALUE.g_ACTIVE_COLS } {
	# Procedure called to validate g_ACTIVE_COLS
	return true
}

proc update_PARAM_VALUE.g_ACTIVE_ROWS { PARAM_VALUE.g_ACTIVE_ROWS } {
	# Procedure called to update g_ACTIVE_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_ACTIVE_ROWS { PARAM_VALUE.g_ACTIVE_ROWS } {
	# Procedure called to validate g_ACTIVE_ROWS
	return true
}

proc update_PARAM_VALUE.g_TOTAL_COLS { PARAM_VALUE.g_TOTAL_COLS } {
	# Procedure called to update g_TOTAL_COLS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_TOTAL_COLS { PARAM_VALUE.g_TOTAL_COLS } {
	# Procedure called to validate g_TOTAL_COLS
	return true
}

proc update_PARAM_VALUE.g_TOTAL_ROWS { PARAM_VALUE.g_TOTAL_ROWS } {
	# Procedure called to update g_TOTAL_ROWS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_TOTAL_ROWS { PARAM_VALUE.g_TOTAL_ROWS } {
	# Procedure called to validate g_TOTAL_ROWS
	return true
}

proc update_PARAM_VALUE.g_VIDEO_WIDTH { PARAM_VALUE.g_VIDEO_WIDTH } {
	# Procedure called to update g_VIDEO_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_VIDEO_WIDTH { PARAM_VALUE.g_VIDEO_WIDTH } {
	# Procedure called to validate g_VIDEO_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.g_VIDEO_WIDTH { MODELPARAM_VALUE.g_VIDEO_WIDTH PARAM_VALUE.g_VIDEO_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_VIDEO_WIDTH}] ${MODELPARAM_VALUE.g_VIDEO_WIDTH}
}

proc update_MODELPARAM_VALUE.g_TOTAL_COLS { MODELPARAM_VALUE.g_TOTAL_COLS PARAM_VALUE.g_TOTAL_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_TOTAL_COLS}] ${MODELPARAM_VALUE.g_TOTAL_COLS}
}

proc update_MODELPARAM_VALUE.g_TOTAL_ROWS { MODELPARAM_VALUE.g_TOTAL_ROWS PARAM_VALUE.g_TOTAL_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_TOTAL_ROWS}] ${MODELPARAM_VALUE.g_TOTAL_ROWS}
}

proc update_MODELPARAM_VALUE.g_ACTIVE_COLS { MODELPARAM_VALUE.g_ACTIVE_COLS PARAM_VALUE.g_ACTIVE_COLS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_ACTIVE_COLS}] ${MODELPARAM_VALUE.g_ACTIVE_COLS}
}

proc update_MODELPARAM_VALUE.g_ACTIVE_ROWS { MODELPARAM_VALUE.g_ACTIVE_ROWS PARAM_VALUE.g_ACTIVE_ROWS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_ACTIVE_ROWS}] ${MODELPARAM_VALUE.g_ACTIVE_ROWS}
}

