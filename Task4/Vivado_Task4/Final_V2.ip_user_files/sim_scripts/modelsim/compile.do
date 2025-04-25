vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/microblaze_v11_0_14
vlib modelsim_lib/msim/microblaze_riscv_v1_0_3
vlib modelsim_lib/msim/lmb_v10_v3_0_14
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vlib modelsim_lib/msim/blk_mem_gen_v8_4_9
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/mdm_riscv_v1_0_3
vlib modelsim_lib/msim/lib_cdc_v1_0_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_16
vlib modelsim_lib/msim/lib_pkg_v1_0_4
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_4
vlib modelsim_lib/msim/axi_uartlite_v2_0_37
vlib modelsim_lib/msim/xlconstant_v1_1_9
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_33
vlib modelsim_lib/msim/axi_vip_v1_1_19
vlib modelsim_lib/msim/util_vector_logic_v2_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_5
vlib modelsim_lib/msim/axi_gpio_v2_0_35

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap microblaze_v11_0_14 modelsim_lib/msim/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 modelsim_lib/msim/microblaze_riscv_v1_0_3
vmap lmb_v10_v3_0_14 modelsim_lib/msim/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 modelsim_lib/msim/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 modelsim_lib/msim/mdm_riscv_v1_0_3
vmap lib_cdc_v1_0_3 modelsim_lib/msim/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 modelsim_lib/msim/proc_sys_reset_v5_0_16
vmap lib_pkg_v1_0_4 modelsim_lib/msim/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 modelsim_lib/msim/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 modelsim_lib/msim/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 modelsim_lib/msim/xlconstant_v1_1_9
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 modelsim_lib/msim/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 modelsim_lib/msim/axi_vip_v1_1_19
vmap util_vector_logic_v2_0_4 modelsim_lib/msim/util_vector_logic_v2_0_4
vmap interrupt_control_v3_1_5 modelsim_lib/msim/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 modelsim_lib/msim/axi_gpio_v2_0_35

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.srcs/sources_1/new/pwm_audio.vhd" \

vcom -work microblaze_v11_0_14  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_microblaze_riscv_0_0/sim/design_1_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_4  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_9  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00s2a_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00arn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00rn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00awn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00wn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m00e_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m01s2a_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m01arn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m01rn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m01awn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m01wn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m01bn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m01e_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m02s2a_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_m02arn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_m02rn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_m02awn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_m02wn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_m02bn_0.sv" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_m02e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr -mfcu  -sv -L axi_vip_v1_1_19 -L smartconnect_v1_0 -L xilinx_vip "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vlog -work util_vector_logic_v2_0_4  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_myip_pong2_0_0/99a6/sim/design_6_util_vector_logic_0_0.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_myip_pong2_0_0/6e17/design_6_clk_wiz_0_0_clk_wiz.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_myip_pong2_0_0/6e17/design_6_clk_wiz_0_0.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/afa8/hdl/encode.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/afa8/hdl/srldelay.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_myip_pong2_0_0/71c9/sim/design_6_hdmi_tx_0_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/hdl/myip_pong2_slave_lite_v1_0_S00_AXI.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Pong_Pkg.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Pong_Ball_Ctrl.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Pong_Paddle_Ctrl.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Pong_Top2.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Sync_To_Count2.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Sync_To_Count.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/VGA_Sync_Porch.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/VGA_Sync_Pulses.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/src/Debounce_Switch.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/cc49/design_6_wrapper.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9c11/hdl/myip_pong2.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_myip_pong2_0_0/sim/design_1_myip_pong2_0_0.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_pwm_audio_0_0/sim/design_1_pwm_audio_0_0.vhd" \

vcom -work interrupt_control_v3_1_5  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../Final_V2.gen/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/sim/design_1.vhd" \
"../../../Final_V2.gen/sources_1/bd/design_1/hdl/design_1_wrapper.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

