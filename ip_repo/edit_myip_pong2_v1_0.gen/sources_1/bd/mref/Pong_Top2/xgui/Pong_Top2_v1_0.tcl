# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "g_Active_Cols" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_Active_Rows" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_Total_Cols" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_Total_Rows" -parent ${Page_0}
  ipgui::add_param $IPINST -name "g_Video_Width" -parent ${Page_0}


}

proc update_PARAM_VALUE.g_Active_Cols { PARAM_VALUE.g_Active_Cols } {
	# Procedure called to update g_Active_Cols when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_Active_Cols { PARAM_VALUE.g_Active_Cols } {
	# Procedure called to validate g_Active_Cols
	return true
}

proc update_PARAM_VALUE.g_Active_Rows { PARAM_VALUE.g_Active_Rows } {
	# Procedure called to update g_Active_Rows when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_Active_Rows { PARAM_VALUE.g_Active_Rows } {
	# Procedure called to validate g_Active_Rows
	return true
}

proc update_PARAM_VALUE.g_Total_Cols { PARAM_VALUE.g_Total_Cols } {
	# Procedure called to update g_Total_Cols when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_Total_Cols { PARAM_VALUE.g_Total_Cols } {
	# Procedure called to validate g_Total_Cols
	return true
}

proc update_PARAM_VALUE.g_Total_Rows { PARAM_VALUE.g_Total_Rows } {
	# Procedure called to update g_Total_Rows when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_Total_Rows { PARAM_VALUE.g_Total_Rows } {
	# Procedure called to validate g_Total_Rows
	return true
}

proc update_PARAM_VALUE.g_Video_Width { PARAM_VALUE.g_Video_Width } {
	# Procedure called to update g_Video_Width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.g_Video_Width { PARAM_VALUE.g_Video_Width } {
	# Procedure called to validate g_Video_Width
	return true
}


proc update_MODELPARAM_VALUE.g_Video_Width { MODELPARAM_VALUE.g_Video_Width PARAM_VALUE.g_Video_Width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_Video_Width}] ${MODELPARAM_VALUE.g_Video_Width}
}

proc update_MODELPARAM_VALUE.g_Total_Cols { MODELPARAM_VALUE.g_Total_Cols PARAM_VALUE.g_Total_Cols } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_Total_Cols}] ${MODELPARAM_VALUE.g_Total_Cols}
}

proc update_MODELPARAM_VALUE.g_Total_Rows { MODELPARAM_VALUE.g_Total_Rows PARAM_VALUE.g_Total_Rows } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_Total_Rows}] ${MODELPARAM_VALUE.g_Total_Rows}
}

proc update_MODELPARAM_VALUE.g_Active_Cols { MODELPARAM_VALUE.g_Active_Cols PARAM_VALUE.g_Active_Cols } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_Active_Cols}] ${MODELPARAM_VALUE.g_Active_Cols}
}

proc update_MODELPARAM_VALUE.g_Active_Rows { MODELPARAM_VALUE.g_Active_Rows PARAM_VALUE.g_Active_Rows } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.g_Active_Rows}] ${MODELPARAM_VALUE.g_Active_Rows}
}

