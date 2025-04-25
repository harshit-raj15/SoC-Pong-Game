--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
--Date        : Thu Jan 23 13:00:24 2025
--Host        : wfort-Laptop-13-Intel-Core-Ultra-Series-1 running 64-bit Ubuntu 24.04.1 LTS
--Command     : generate_target design_6_wrapper.bd
--Design      : design_6_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_6_wrapper is
  port (
    clk_100MHz : in STD_LOGIC;
    clk_rst : in STD_LOGIC;
    hdmi_tx_0_tmds_clk_n : out STD_LOGIC;
    hdmi_tx_0_tmds_clk_p : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    i_Switch_0 : in STD_LOGIC;
    i_Switch_1 : in STD_LOGIC;
    i_Switch_2 : in STD_LOGIC;
    i_Switch_3 : in STD_LOGIC;
    i_Switch_4 : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    o_P1_Score_Pulse : out STD_LOGIC;
    o_P2_Score_Pulse : out STD_LOGIC;
    o_Paddle_Bounce_Pulse : out STD_LOGIC  -- Alex Villegas
  );
end design_6_wrapper;

architecture STRUCTURE of design_6_wrapper is
  component design_6 is
  port (
    i_Switch_0 : in STD_LOGIC;
    i_Switch_1 : in STD_LOGIC;
    i_Switch_2 : in STD_LOGIC;
    i_Switch_3 : in STD_LOGIC;
    i_Switch_4 : in STD_LOGIC;
    clk_100MHz : in STD_LOGIC;
    rst_0 : in STD_LOGIC;
    clk_rst : in STD_LOGIC;
    hdmi_tx_0_tmds_clk_n : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_clk_p : out STD_LOGIC;
    hdmi_tx_0_tmds_data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_P1_Score_Pulse : out STD_LOGIC;
    o_P2_Score_Pulse : out STD_LOGIC;
    o_Paddle_Bounce_Pulse : out STD_LOGIC  -- Alex Villegas

  );
  end component design_6;
begin
design_6_i: component design_6
     port map (
      clk_100MHz => clk_100MHz,
      clk_rst => clk_rst,
      hdmi_tx_0_tmds_clk_n => hdmi_tx_0_tmds_clk_n,
      hdmi_tx_0_tmds_clk_p => hdmi_tx_0_tmds_clk_p,
      hdmi_tx_0_tmds_data_n(2 downto 0) => hdmi_tx_0_tmds_data_n(2 downto 0),
      hdmi_tx_0_tmds_data_p(2 downto 0) => hdmi_tx_0_tmds_data_p(2 downto 0),
      i_Switch_0 => i_Switch_0,
      i_Switch_1 => i_Switch_1,
      i_Switch_2 => i_Switch_2,
      i_Switch_3 => i_Switch_3,
      i_Switch_4 => i_Switch_4,
      rst_0 => rst_0,
      o_p1_Score_Pulse => o_P1_Score_Pulse,
      o_p2_Score_Pulse => o_P2_Score_Pulse,
      o_Paddle_Bounce_Pulse => o_Paddle_Bounce_Pulse

    );
end STRUCTURE;
