transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/microblaze_v11_0_14
vlib riviera/microblaze_riscv_v1_0_3
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_25
vlib riviera/blk_mem_gen_v8_4_9
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/mdm_riscv_v1_0_3
vlib riviera/lib_cdc_v1_0_3
vlib riviera/proc_sys_reset_v5_0_16
vlib riviera/lib_pkg_v1_0_4
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_37
vlib riviera/xlconstant_v1_1_9
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_33
vlib riviera/axi_vip_v1_1_19
vlib riviera/util_vector_logic_v2_0_4
vlib riviera/interrupt_control_v3_1_5
vlib riviera/axi_gpio_v2_0_35
vlib riviera/fifo_generator_v13_2_11
vlib riviera/lib_fifo_v1_0_20
vlib riviera/axi_datamover_v5_1_35
vlib riviera/axi_sg_v4_1_19
vlib riviera/axi_dma_v7_1_34
vlib riviera/axi_bram_ctrl_v4_1_11

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap microblaze_v11_0_14 riviera/microblaze_v11_0_14
vmap microblaze_riscv_v1_0_3 riviera/microblaze_riscv_v1_0_3
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_25 riviera/lmb_bram_if_cntlr_v4_0_25
vmap blk_mem_gen_v8_4_9 riviera/blk_mem_gen_v8_4_9
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap mdm_riscv_v1_0_3 riviera/mdm_riscv_v1_0_3
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap proc_sys_reset_v5_0_16 riviera/proc_sys_reset_v5_0_16
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_37 riviera/axi_uartlite_v2_0_37
vmap xlconstant_v1_1_9 riviera/xlconstant_v1_1_9
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_33 riviera/axi_register_slice_v2_1_33
vmap axi_vip_v1_1_19 riviera/axi_vip_v1_1_19
vmap util_vector_logic_v2_0_4 riviera/util_vector_logic_v2_0_4
vmap interrupt_control_v3_1_5 riviera/interrupt_control_v3_1_5
vmap axi_gpio_v2_0_35 riviera/axi_gpio_v2_0_35
vmap fifo_generator_v13_2_11 riviera/fifo_generator_v13_2_11
vmap lib_fifo_v1_0_20 riviera/lib_fifo_v1_0_20
vmap axi_datamover_v5_1_35 riviera/axi_datamover_v5_1_35
vmap axi_sg_v4_1_19 riviera/axi_sg_v4_1_19
vmap axi_dma_v7_1_34 riviera/axi_dma_v7_1_34
vmap axi_bram_ctrl_v4_1_11 riviera/axi_bram_ctrl_v4_1_11

vlog -work xilinx_vip  -incr "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2024.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_14 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/a243/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work microblaze_riscv_v1_0_3 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f9dd/hdl/microblaze_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_microblaze_riscv_0_0/sim/design_1_microblaze_riscv_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_25 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/73e9/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_9  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/5ec1/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_riscv_v1_0_3 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/d547/hdl/mdm_riscv_v1_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_16 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0831/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_37 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/9a87/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_9  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/e2d2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3718/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awinsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_winsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_binsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_aroutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_routsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_awoutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_woutsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_boutsw_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_arni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_rni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_awni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_wni_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_bni_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f49a/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/2da8/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/63ed/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/cef3/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/7f4f/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/37bc/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_37/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_38/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_39/sim/bd_afc3_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_40/sim/bd_afc3_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_41/sim/bd_afc3_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_42/sim/bd_afc3_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_43/sim/bd_afc3_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_44/sim/bd_afc3_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_45/sim/bd_afc3_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_46/sim/bd_afc3_m02e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_47/sim/bd_afc3_m03s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_48/sim/bd_afc3_m03arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_49/sim/bd_afc3_m03rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_50/sim/bd_afc3_m03awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_51/sim/bd_afc3_m03wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_52/sim/bd_afc3_m03bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_53/sim/bd_afc3_m03e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_54/sim/bd_afc3_m04s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_55/sim/bd_afc3_m04arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_56/sim/bd_afc3_m04rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_57/sim/bd_afc3_m04awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_58/sim/bd_afc3_m04wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_59/sim/bd_afc3_m04bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_60/sim/bd_afc3_m04e_0.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_33  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3ee4/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_19  -incr "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/8c45/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vlog -work util_vector_logic_v2_0_4  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/fd7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_myip_pong2_0_0/99a6/sim/design_6_util_vector_logic_0_0.v" \
"../../../bd/design_1/ip/design_1_myip_pong2_0_0/6e17/design_6_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_myip_pong2_0_0/6e17/design_6_clk_wiz_0_0.v" \
"../../../bd/design_1/ip/ipshared/afa8/hdl/encode.v" \
"../../../bd/design_1/ip/ipshared/afa8/hdl/serdes_10_to_1.v" \
"../../../bd/design_1/ip/ipshared/afa8/hdl/srldelay.v" \
"../../../bd/design_1/ip/ipshared/afa8/hdl/hdmi_tx_v1_0.v" \
"../../../bd/design_1/ip/design_1_myip_pong2_0_0/71c9/sim/design_6_hdmi_tx_0_0.v" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ipshared/9c11/hdl/myip_pong2_slave_lite_v1_0_S00_AXI.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Pong_Pkg.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Pong_Ball_Ctrl.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Pong_Paddle_Ctrl.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Pong_Top2.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Sync_To_Count2.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Sync_To_Count.vhd" \
"../../../bd/design_1/ipshared/9c11/src/VGA_Sync_Porch.vhd" \
"../../../bd/design_1/ipshared/9c11/src/VGA_Sync_Pulses.vhd" \
"../../../bd/design_1/ipshared/9c11/src/Debounce_Switch.vhd" \
"../../../bd/design_1/ipshared/9c11/cc49/design_6_wrapper.vhd" \
"../../../bd/design_1/ipshared/9c11/hdl/myip_pong2.vhd" \
"../../../bd/design_1/ip/design_1_myip_pong2_0_0/sim/design_1_myip_pong2_0_0.vhd" \

vcom -work interrupt_control_v3_1_5 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/d8cc/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_35 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/6718/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/6080/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_11 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_11  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/6080/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_20 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/e160/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_35 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/4277/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_19 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/fc5d/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_34 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/70ff/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \
"../../../bd/design_1/ipshared/5e94/src/pwm_audio.vhd" \
"../../../bd/design_1/ip/design_1_pwm_audio_axi_stream_0_1/sim/design_1_pwm_audio_axi_stream_0_1.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/3cbc" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/0127/hdl/verilog" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../Final_V2.gen/sources_1/bd/design_1/ip/ipshared/3cbc" "+incdir+C:/Xilinx/Vivado/2024.2/data/xilinx_vip/include" -l xilinx_vip -l xpm -l microblaze_v11_0_14 -l microblaze_riscv_v1_0_3 -l xil_defaultlib -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_25 -l blk_mem_gen_v8_4_9 -l axi_lite_ipif_v3_0_4 -l mdm_riscv_v1_0_3 -l lib_cdc_v1_0_3 -l proc_sys_reset_v5_0_16 -l lib_pkg_v1_0_4 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_37 -l xlconstant_v1_1_9 -l smartconnect_v1_0 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_33 -l axi_vip_v1_1_19 -l util_vector_logic_v2_0_4 -l interrupt_control_v3_1_5 -l axi_gpio_v2_0_35 -l fifo_generator_v13_2_11 -l lib_fifo_v1_0_20 -l axi_datamover_v5_1_35 -l axi_sg_v4_1_19 -l axi_dma_v7_1_34 -l axi_bram_ctrl_v4_1_11 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_11 -93  -incr \
"../../../../Final_V2.gen/sources_1/bd/design_1/ipshared/df79/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_1_0/sim/design_1_axi_bram_ctrl_1_0.vhd" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

