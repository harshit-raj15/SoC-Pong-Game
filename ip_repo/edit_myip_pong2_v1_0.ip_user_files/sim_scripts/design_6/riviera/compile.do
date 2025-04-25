transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/util_vector_logic_v2_0_4

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4

vlog -work xpm  -incr "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93  -incr \
"/tools/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_6/ip/design_6_Pong_Top2_0_0/sim/design_6_Pong_Top2_0_0.vhd" \
"../../../bd/design_6/ip/design_6_Sync_To_Count2_0_0/sim/design_6_Sync_To_Count2_0_0.vhd" \
"../../../bd/design_6/ip/design_6_VGA_Sync_Porch_0_0/sim/design_6_VGA_Sync_Porch_0_0.vhd" \
"../../../bd/design_6/ip/design_6_VGA_Sync_Pulses_0_0/sim/design_6_VGA_Sync_Pulses_0_0.vhd" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../bd/design_6/ip/design_6_util_vector_logic_0_0/sim/design_6_util_vector_logic_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_6/ip/design_6_Debounce_Switch_3_0/sim/design_6_Debounce_Switch_3_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_4_0/sim/design_6_Debounce_Switch_4_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_0_0/sim/design_6_Debounce_Switch_0_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_2_0/sim/design_6_Debounce_Switch_2_0.vhd" \
"../../../bd/design_6/ip/design_6_Debounce_Switch_1_0/sim/design_6_Debounce_Switch_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../edit_myip_pong2_v1_0.gen/sources_1/bd/design_6/ipshared/3cbc" -l xpm -l xil_defaultlib -l util_vector_logic_v2_0_4 \
"../../../bd/design_6/ip/design_6_clk_wiz_0_0/design_6_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_6/ip/design_6_clk_wiz_0_0/design_6_clk_wiz_0_0.v" \
"../../../bd/design_6/ipshared/afa8/hdl/encode.v" \
"../../../bd/design_6/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../bd/design_6/ipshared/afa8/hdl/srldelay.v" \
"../../../bd/design_6/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../bd/design_6/ip/design_6_hdmi_tx_0_0/sim/design_6_hdmi_tx_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_6/sim/design_6.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

