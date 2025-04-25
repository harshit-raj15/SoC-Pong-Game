// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module design_6 (
  i_Switch_0,
  i_Switch_1,
  i_Switch_2,
  i_Switch_3,
  i_Switch_4,
  clk_100MHz,
  rst_0,
  clk_rst,
  hdmi_tx_0_tmds_clk_n,
  hdmi_tx_0_tmds_data_n,
  hdmi_tx_0_tmds_clk_p,
  hdmi_tx_0_tmds_data_p
);

  (* X_INTERFACE_IGNORE = "true" *)
  input i_Switch_0;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_Switch_1;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_Switch_2;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_Switch_3;
  (* X_INTERFACE_IGNORE = "true" *)
  input i_Switch_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_100MHZ" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_6_clk_100MHz, INSERT_VIP 0" *)
  input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST_0 RST" *)
  (* X_INTERFACE_MODE = "slave RST.RST_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST_0, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input rst_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CLK_RST RST" *)
  (* X_INTERFACE_MODE = "slave RST.CLK_RST" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CLK_RST, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input clk_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx_0 TMDS_CLK_N" *)
  (* X_INTERFACE_MODE = "master hdmi_tx_0" *)
  output hdmi_tx_0_tmds_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx_0 TMDS_DATA_N" *)
  output [2:0]hdmi_tx_0_tmds_data_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx_0 TMDS_CLK_P" *)
  output hdmi_tx_0_tmds_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:hdmi:2.0 hdmi_tx_0 TMDS_DATA_P" *)
  output [2:0]hdmi_tx_0_tmds_data_p;

  // stub module has no contents

endmodule
