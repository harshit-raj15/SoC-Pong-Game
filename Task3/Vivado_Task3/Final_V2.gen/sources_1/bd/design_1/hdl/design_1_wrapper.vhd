--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Apr 15 16:18:33 2025
--Host        : ROG_LAPTOP running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    hdmi_tx_0_tmds_clk_n_port_out_0 : out STD_LOGIC;
    hdmi_tx_0_tmds_clk_p_port_out_0 : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n_port_out_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_data_p_port_out_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pwm_out_0 : out STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    rst_0_port_out_0 : in STD_LOGIC;
    score_p1_flag_0 : out STD_LOGIC;
    score_p2_flag_0 : out STD_LOGIC;
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    uart_rtl_0_rxd : in STD_LOGIC;
    uart_rtl_0_txd : out STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    reset_rtl_0 : in STD_LOGIC;
    hdmi_tx_0_tmds_clk_n_port_out_0 : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n_port_out_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_clk_p_port_out_0 : out STD_LOGIC;
    hdmi_tx_0_tmds_data_p_port_out_0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_0_port_out_0 : in STD_LOGIC;
    gpio_io_i_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pwm_out_0 : out STD_LOGIC;
    score_p1_flag_0 : out STD_LOGIC;
    score_p2_flag_0 : out STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      clk_100MHz => clk_100MHz,
      gpio_io_i_0(3 downto 0) => gpio_io_i_0(3 downto 0),
      hdmi_tx_0_tmds_clk_n_port_out_0 => hdmi_tx_0_tmds_clk_n_port_out_0,
      hdmi_tx_0_tmds_clk_p_port_out_0 => hdmi_tx_0_tmds_clk_p_port_out_0,
      hdmi_tx_0_tmds_data_n_port_out_0(2 downto 0) => hdmi_tx_0_tmds_data_n_port_out_0(2 downto 0),
      hdmi_tx_0_tmds_data_p_port_out_0(2 downto 0) => hdmi_tx_0_tmds_data_p_port_out_0(2 downto 0),
      pwm_out_0 => pwm_out_0,
      reset_rtl_0 => reset_rtl_0,
      rst_0_port_out_0 => rst_0_port_out_0,
      score_p1_flag_0 => score_p1_flag_0,
      score_p2_flag_0 => score_p2_flag_0,
      uart_rtl_0_rxd => uart_rtl_0_rxd,
      uart_rtl_0_txd => uart_rtl_0_txd
    );
end STRUCTURE;
