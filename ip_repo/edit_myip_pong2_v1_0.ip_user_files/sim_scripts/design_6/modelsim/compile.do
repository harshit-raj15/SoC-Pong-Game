vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_4

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_6/ip/design_6_Pong_Top2_0_0/sim/design_6_Pong_Top2_0_0.vhd" \
"../../../bd/design_6/ip/design_6_Sync_To_Count2_0_0/sim/design_6_Sync_To_Count2_0_0.vhd" \
"../../../bd/design_6/ip/design_6_VGA_Sync_Porch_0_0/sim/design_6_VGA_Sync_Porch_0_0.vhd" \
"../../../bd/design_6/ip/design_6_VGA_Sync_Pulses_0_0/sim/design_6_VGA_Sync_Pulses_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4 -64 -incr -mfcu  "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" \
"../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" \
"../../../bd/design_6/ip/design_6_util_vector_logic_0_0/sim/design_6_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_6/ip/design_6_Debounce_Switch_3_0/sim/design_6_Debounce_Switch_3_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_4_0/sim/design_6_Debounce_Switch_4_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_0_0/sim/design_6_Debounce_Switch_0_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_2_0/sim/design_6_Debounce_Switch_2_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_1_0/sim/design_6_Debounce_Switch_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" \
"../../../bd/design_6/ip/design_6_clk_wiz_0_0/design_6_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_6/ip/design_6_clk_wiz_0_0/design_6_clk_wiz_0_0.v" \
"../../../bd/design_6/ipshared/afa8/hdl/encode.v" \
"../../../bd/design_6/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../bd/design_6/ipshared/afa8/hdl/srldelay.v" \
"../../../bd/design_6/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../bd/design_6/ip/design_6_hdmi_tx_0_0/sim/design_6_hdmi_tx_0_0.v" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/design_6/sim/design_6.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

