--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
--Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
--Date        : Tue Apr 15 16:18:32 2025
--Host        : ROG_LAPTOP running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_riscv_0_local_memory_imp_1TUIWYR is
  port (
    DLMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_addrstrobe : in STD_LOGIC;
    DLMB_be : in STD_LOGIC_VECTOR ( 0 to 3 );
    DLMB_ce : out STD_LOGIC;
    DLMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_readstrobe : in STD_LOGIC;
    DLMB_ready : out STD_LOGIC;
    DLMB_ue : out STD_LOGIC;
    DLMB_wait : out STD_LOGIC;
    DLMB_writedbus : in STD_LOGIC_VECTOR ( 0 to 31 );
    DLMB_writestrobe : in STD_LOGIC;
    ILMB_abus : in STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_addrstrobe : in STD_LOGIC;
    ILMB_ce : out STD_LOGIC;
    ILMB_readdbus : out STD_LOGIC_VECTOR ( 0 to 31 );
    ILMB_readstrobe : in STD_LOGIC;
    ILMB_ready : out STD_LOGIC;
    ILMB_ue : out STD_LOGIC;
    ILMB_wait : out STD_LOGIC;
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC
  );
end microblaze_riscv_0_local_memory_imp_1TUIWYR;

architecture STRUCTURE of microblaze_riscv_0_local_memory_imp_1TUIWYR is
  component design_1_dlmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_dlmb_v10_0;
  component design_1_ilmb_v10_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    SYS_Rst : in STD_LOGIC;
    LMB_Rst : out STD_LOGIC;
    M_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_ReadStrobe : in STD_LOGIC;
    M_WriteStrobe : in STD_LOGIC;
    M_AddrStrobe : in STD_LOGIC;
    M_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    M_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_Wait : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_UE : in STD_LOGIC_VECTOR ( 0 to 0 );
    Sl_CE : in STD_LOGIC_VECTOR ( 0 to 0 );
    LMB_ABus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_ReadStrobe : out STD_LOGIC;
    LMB_WriteStrobe : out STD_LOGIC;
    LMB_AddrStrobe : out STD_LOGIC;
    LMB_ReadDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_Ready : out STD_LOGIC;
    LMB_Wait : out STD_LOGIC;
    LMB_UE : out STD_LOGIC;
    LMB_CE : out STD_LOGIC;
    LMB_BE : out STD_LOGIC_VECTOR ( 0 to 3 )
  );
  end component design_1_ilmb_v10_0;
  component design_1_dlmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_dlmb_bram_if_cntlr_0;
  component design_1_ilmb_bram_if_cntlr_0 is
  port (
    LMB_Clk : in STD_LOGIC;
    LMB_Rst : in STD_LOGIC;
    LMB_ABus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_WriteDBus : in STD_LOGIC_VECTOR ( 0 to 31 );
    LMB_AddrStrobe : in STD_LOGIC;
    LMB_ReadStrobe : in STD_LOGIC;
    LMB_WriteStrobe : in STD_LOGIC;
    LMB_BE : in STD_LOGIC_VECTOR ( 0 to 3 );
    Sl_DBus : out STD_LOGIC_VECTOR ( 0 to 31 );
    Sl_Ready : out STD_LOGIC;
    Sl_Wait : out STD_LOGIC;
    Sl_UE : out STD_LOGIC;
    Sl_CE : out STD_LOGIC;
    BRAM_Rst_A : out STD_LOGIC;
    BRAM_Clk_A : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_EN_A : out STD_LOGIC;
    BRAM_WEN_A : out STD_LOGIC_VECTOR ( 0 to 3 );
    BRAM_Dout_A : out STD_LOGIC_VECTOR ( 0 to 31 );
    BRAM_Din_A : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
  end component design_1_ilmb_bram_if_cntlr_0;
  component design_1_lmb_bram_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC
  );
  end component design_1_lmb_bram_0;
  signal microblaze_riscv_0_dlmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_riscv_0_dlmb_bus_CE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_READY : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_UE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_WAIT : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_dlmb_cntlr_EN : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_cntlr_RST : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_riscv_0_ilmb_bus_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_bus_ADDRSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_riscv_0_ilmb_bus_CE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_bus_READSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_READY : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_UE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_WAIT : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_bus_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_bus_WRITESTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_cntlr_ADDR : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_cntlr_CLK : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_cntlr_DIN : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_cntlr_DOUT : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_ilmb_cntlr_EN : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_cntlr_RST : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_cntlr_WE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal NLW_dlmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_ilmb_v10_LMB_Rst_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_lmb_bram_rstb_busy_UNCONNECTED : STD_LOGIC;
  attribute BMM_INFO_ADDRESS_SPACE : string;
  attribute BMM_INFO_ADDRESS_SPACE of dlmb_bram_if_cntlr : label is "byte  0x00000000 32 > design_1 microblaze_riscv_0_local_memory/lmb_bram";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of dlmb_bram_if_cntlr : label is "yes";
begin
dlmb_bram_if_cntlr: component design_1_dlmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_riscv_0_dlmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_riscv_0_dlmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_riscv_0_dlmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_riscv_0_dlmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_riscv_0_dlmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_riscv_0_dlmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_riscv_0_dlmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_riscv_0_dlmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_riscv_0_dlmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_riscv_0_dlmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_riscv_0_dlmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_riscv_0_dlmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_riscv_0_dlmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_riscv_0_dlmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_riscv_0_dlmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_riscv_0_dlmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_riscv_0_dlmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_riscv_0_dlmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_riscv_0_dlmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_riscv_0_dlmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_riscv_0_dlmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_riscv_0_dlmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_riscv_0_dlmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_riscv_0_dlmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_riscv_0_dlmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_riscv_0_dlmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_riscv_0_dlmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_riscv_0_dlmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_riscv_0_dlmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_riscv_0_dlmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_riscv_0_dlmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_riscv_0_dlmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_riscv_0_dlmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_riscv_0_dlmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_riscv_0_dlmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_riscv_0_dlmb_cntlr_EN,
      BRAM_Rst_A => microblaze_riscv_0_dlmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_riscv_0_dlmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_riscv_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_riscv_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_riscv_0_dlmb_bus_BE(0 to 3),
      LMB_Clk => LMB_Clk,
      LMB_ReadStrobe => microblaze_riscv_0_dlmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 31) => microblaze_riscv_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_riscv_0_dlmb_bus_WRITESTROBE,
      Sl_CE => microblaze_riscv_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_riscv_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_riscv_0_dlmb_bus_READY,
      Sl_UE => microblaze_riscv_0_dlmb_bus_UE,
      Sl_Wait => microblaze_riscv_0_dlmb_bus_WAIT
    );
dlmb_v10: component design_1_dlmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_riscv_0_dlmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_riscv_0_dlmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_riscv_0_dlmb_bus_BE(0 to 3),
      LMB_CE => DLMB_ce,
      LMB_Clk => LMB_Clk,
      LMB_ReadDBus(0 to 31) => DLMB_readdbus(0 to 31),
      LMB_ReadStrobe => microblaze_riscv_0_dlmb_bus_READSTROBE,
      LMB_Ready => DLMB_ready,
      LMB_Rst => NLW_dlmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => DLMB_ue,
      LMB_Wait => DLMB_wait,
      LMB_WriteDBus(0 to 31) => microblaze_riscv_0_dlmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_riscv_0_dlmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => DLMB_abus(0 to 31),
      M_AddrStrobe => DLMB_addrstrobe,
      M_BE(0 to 3) => DLMB_be(0 to 3),
      M_DBus(0 to 31) => DLMB_writedbus(0 to 31),
      M_ReadStrobe => DLMB_readstrobe,
      M_WriteStrobe => DLMB_writestrobe,
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_riscv_0_dlmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_riscv_0_dlmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_riscv_0_dlmb_bus_READY,
      Sl_UE(0) => microblaze_riscv_0_dlmb_bus_UE,
      Sl_Wait(0) => microblaze_riscv_0_dlmb_bus_WAIT
    );
ilmb_bram_if_cntlr: component design_1_ilmb_bram_if_cntlr_0
     port map (
      BRAM_Addr_A(0 to 31) => microblaze_riscv_0_ilmb_cntlr_ADDR(0 to 31),
      BRAM_Clk_A => microblaze_riscv_0_ilmb_cntlr_CLK,
      BRAM_Din_A(0) => microblaze_riscv_0_ilmb_cntlr_DOUT(31),
      BRAM_Din_A(1) => microblaze_riscv_0_ilmb_cntlr_DOUT(30),
      BRAM_Din_A(2) => microblaze_riscv_0_ilmb_cntlr_DOUT(29),
      BRAM_Din_A(3) => microblaze_riscv_0_ilmb_cntlr_DOUT(28),
      BRAM_Din_A(4) => microblaze_riscv_0_ilmb_cntlr_DOUT(27),
      BRAM_Din_A(5) => microblaze_riscv_0_ilmb_cntlr_DOUT(26),
      BRAM_Din_A(6) => microblaze_riscv_0_ilmb_cntlr_DOUT(25),
      BRAM_Din_A(7) => microblaze_riscv_0_ilmb_cntlr_DOUT(24),
      BRAM_Din_A(8) => microblaze_riscv_0_ilmb_cntlr_DOUT(23),
      BRAM_Din_A(9) => microblaze_riscv_0_ilmb_cntlr_DOUT(22),
      BRAM_Din_A(10) => microblaze_riscv_0_ilmb_cntlr_DOUT(21),
      BRAM_Din_A(11) => microblaze_riscv_0_ilmb_cntlr_DOUT(20),
      BRAM_Din_A(12) => microblaze_riscv_0_ilmb_cntlr_DOUT(19),
      BRAM_Din_A(13) => microblaze_riscv_0_ilmb_cntlr_DOUT(18),
      BRAM_Din_A(14) => microblaze_riscv_0_ilmb_cntlr_DOUT(17),
      BRAM_Din_A(15) => microblaze_riscv_0_ilmb_cntlr_DOUT(16),
      BRAM_Din_A(16) => microblaze_riscv_0_ilmb_cntlr_DOUT(15),
      BRAM_Din_A(17) => microblaze_riscv_0_ilmb_cntlr_DOUT(14),
      BRAM_Din_A(18) => microblaze_riscv_0_ilmb_cntlr_DOUT(13),
      BRAM_Din_A(19) => microblaze_riscv_0_ilmb_cntlr_DOUT(12),
      BRAM_Din_A(20) => microblaze_riscv_0_ilmb_cntlr_DOUT(11),
      BRAM_Din_A(21) => microblaze_riscv_0_ilmb_cntlr_DOUT(10),
      BRAM_Din_A(22) => microblaze_riscv_0_ilmb_cntlr_DOUT(9),
      BRAM_Din_A(23) => microblaze_riscv_0_ilmb_cntlr_DOUT(8),
      BRAM_Din_A(24) => microblaze_riscv_0_ilmb_cntlr_DOUT(7),
      BRAM_Din_A(25) => microblaze_riscv_0_ilmb_cntlr_DOUT(6),
      BRAM_Din_A(26) => microblaze_riscv_0_ilmb_cntlr_DOUT(5),
      BRAM_Din_A(27) => microblaze_riscv_0_ilmb_cntlr_DOUT(4),
      BRAM_Din_A(28) => microblaze_riscv_0_ilmb_cntlr_DOUT(3),
      BRAM_Din_A(29) => microblaze_riscv_0_ilmb_cntlr_DOUT(2),
      BRAM_Din_A(30) => microblaze_riscv_0_ilmb_cntlr_DOUT(1),
      BRAM_Din_A(31) => microblaze_riscv_0_ilmb_cntlr_DOUT(0),
      BRAM_Dout_A(0 to 31) => microblaze_riscv_0_ilmb_cntlr_DIN(0 to 31),
      BRAM_EN_A => microblaze_riscv_0_ilmb_cntlr_EN,
      BRAM_Rst_A => microblaze_riscv_0_ilmb_cntlr_RST,
      BRAM_WEN_A(0 to 3) => microblaze_riscv_0_ilmb_cntlr_WE(0 to 3),
      LMB_ABus(0 to 31) => microblaze_riscv_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_riscv_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_riscv_0_ilmb_bus_BE(0 to 3),
      LMB_Clk => LMB_Clk,
      LMB_ReadStrobe => microblaze_riscv_0_ilmb_bus_READSTROBE,
      LMB_Rst => SYS_Rst,
      LMB_WriteDBus(0 to 31) => microblaze_riscv_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_riscv_0_ilmb_bus_WRITESTROBE,
      Sl_CE => microblaze_riscv_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_riscv_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready => microblaze_riscv_0_ilmb_bus_READY,
      Sl_UE => microblaze_riscv_0_ilmb_bus_UE,
      Sl_Wait => microblaze_riscv_0_ilmb_bus_WAIT
    );
ilmb_v10: component design_1_ilmb_v10_0
     port map (
      LMB_ABus(0 to 31) => microblaze_riscv_0_ilmb_bus_ABUS(0 to 31),
      LMB_AddrStrobe => microblaze_riscv_0_ilmb_bus_ADDRSTROBE,
      LMB_BE(0 to 3) => microblaze_riscv_0_ilmb_bus_BE(0 to 3),
      LMB_CE => ILMB_ce,
      LMB_Clk => LMB_Clk,
      LMB_ReadDBus(0 to 31) => ILMB_readdbus(0 to 31),
      LMB_ReadStrobe => microblaze_riscv_0_ilmb_bus_READSTROBE,
      LMB_Ready => ILMB_ready,
      LMB_Rst => NLW_ilmb_v10_LMB_Rst_UNCONNECTED,
      LMB_UE => ILMB_ue,
      LMB_Wait => ILMB_wait,
      LMB_WriteDBus(0 to 31) => microblaze_riscv_0_ilmb_bus_WRITEDBUS(0 to 31),
      LMB_WriteStrobe => microblaze_riscv_0_ilmb_bus_WRITESTROBE,
      M_ABus(0 to 31) => ILMB_abus(0 to 31),
      M_AddrStrobe => ILMB_addrstrobe,
      M_BE(0 to 3) => B"0000",
      M_DBus(0 to 31) => B"00000000000000000000000000000000",
      M_ReadStrobe => ILMB_readstrobe,
      M_WriteStrobe => '0',
      SYS_Rst => SYS_Rst,
      Sl_CE(0) => microblaze_riscv_0_ilmb_bus_CE,
      Sl_DBus(0 to 31) => microblaze_riscv_0_ilmb_bus_READDBUS(0 to 31),
      Sl_Ready(0) => microblaze_riscv_0_ilmb_bus_READY,
      Sl_UE(0) => microblaze_riscv_0_ilmb_bus_UE,
      Sl_Wait(0) => microblaze_riscv_0_ilmb_bus_WAIT
    );
lmb_bram: component design_1_lmb_bram_0
     port map (
      addra(31) => microblaze_riscv_0_dlmb_cntlr_ADDR(0),
      addra(30) => microblaze_riscv_0_dlmb_cntlr_ADDR(1),
      addra(29) => microblaze_riscv_0_dlmb_cntlr_ADDR(2),
      addra(28) => microblaze_riscv_0_dlmb_cntlr_ADDR(3),
      addra(27) => microblaze_riscv_0_dlmb_cntlr_ADDR(4),
      addra(26) => microblaze_riscv_0_dlmb_cntlr_ADDR(5),
      addra(25) => microblaze_riscv_0_dlmb_cntlr_ADDR(6),
      addra(24) => microblaze_riscv_0_dlmb_cntlr_ADDR(7),
      addra(23) => microblaze_riscv_0_dlmb_cntlr_ADDR(8),
      addra(22) => microblaze_riscv_0_dlmb_cntlr_ADDR(9),
      addra(21) => microblaze_riscv_0_dlmb_cntlr_ADDR(10),
      addra(20) => microblaze_riscv_0_dlmb_cntlr_ADDR(11),
      addra(19) => microblaze_riscv_0_dlmb_cntlr_ADDR(12),
      addra(18) => microblaze_riscv_0_dlmb_cntlr_ADDR(13),
      addra(17) => microblaze_riscv_0_dlmb_cntlr_ADDR(14),
      addra(16) => microblaze_riscv_0_dlmb_cntlr_ADDR(15),
      addra(15) => microblaze_riscv_0_dlmb_cntlr_ADDR(16),
      addra(14) => microblaze_riscv_0_dlmb_cntlr_ADDR(17),
      addra(13) => microblaze_riscv_0_dlmb_cntlr_ADDR(18),
      addra(12) => microblaze_riscv_0_dlmb_cntlr_ADDR(19),
      addra(11) => microblaze_riscv_0_dlmb_cntlr_ADDR(20),
      addra(10) => microblaze_riscv_0_dlmb_cntlr_ADDR(21),
      addra(9) => microblaze_riscv_0_dlmb_cntlr_ADDR(22),
      addra(8) => microblaze_riscv_0_dlmb_cntlr_ADDR(23),
      addra(7) => microblaze_riscv_0_dlmb_cntlr_ADDR(24),
      addra(6) => microblaze_riscv_0_dlmb_cntlr_ADDR(25),
      addra(5) => microblaze_riscv_0_dlmb_cntlr_ADDR(26),
      addra(4) => microblaze_riscv_0_dlmb_cntlr_ADDR(27),
      addra(3) => microblaze_riscv_0_dlmb_cntlr_ADDR(28),
      addra(2) => microblaze_riscv_0_dlmb_cntlr_ADDR(29),
      addra(1) => microblaze_riscv_0_dlmb_cntlr_ADDR(30),
      addra(0) => microblaze_riscv_0_dlmb_cntlr_ADDR(31),
      addrb(31) => microblaze_riscv_0_ilmb_cntlr_ADDR(0),
      addrb(30) => microblaze_riscv_0_ilmb_cntlr_ADDR(1),
      addrb(29) => microblaze_riscv_0_ilmb_cntlr_ADDR(2),
      addrb(28) => microblaze_riscv_0_ilmb_cntlr_ADDR(3),
      addrb(27) => microblaze_riscv_0_ilmb_cntlr_ADDR(4),
      addrb(26) => microblaze_riscv_0_ilmb_cntlr_ADDR(5),
      addrb(25) => microblaze_riscv_0_ilmb_cntlr_ADDR(6),
      addrb(24) => microblaze_riscv_0_ilmb_cntlr_ADDR(7),
      addrb(23) => microblaze_riscv_0_ilmb_cntlr_ADDR(8),
      addrb(22) => microblaze_riscv_0_ilmb_cntlr_ADDR(9),
      addrb(21) => microblaze_riscv_0_ilmb_cntlr_ADDR(10),
      addrb(20) => microblaze_riscv_0_ilmb_cntlr_ADDR(11),
      addrb(19) => microblaze_riscv_0_ilmb_cntlr_ADDR(12),
      addrb(18) => microblaze_riscv_0_ilmb_cntlr_ADDR(13),
      addrb(17) => microblaze_riscv_0_ilmb_cntlr_ADDR(14),
      addrb(16) => microblaze_riscv_0_ilmb_cntlr_ADDR(15),
      addrb(15) => microblaze_riscv_0_ilmb_cntlr_ADDR(16),
      addrb(14) => microblaze_riscv_0_ilmb_cntlr_ADDR(17),
      addrb(13) => microblaze_riscv_0_ilmb_cntlr_ADDR(18),
      addrb(12) => microblaze_riscv_0_ilmb_cntlr_ADDR(19),
      addrb(11) => microblaze_riscv_0_ilmb_cntlr_ADDR(20),
      addrb(10) => microblaze_riscv_0_ilmb_cntlr_ADDR(21),
      addrb(9) => microblaze_riscv_0_ilmb_cntlr_ADDR(22),
      addrb(8) => microblaze_riscv_0_ilmb_cntlr_ADDR(23),
      addrb(7) => microblaze_riscv_0_ilmb_cntlr_ADDR(24),
      addrb(6) => microblaze_riscv_0_ilmb_cntlr_ADDR(25),
      addrb(5) => microblaze_riscv_0_ilmb_cntlr_ADDR(26),
      addrb(4) => microblaze_riscv_0_ilmb_cntlr_ADDR(27),
      addrb(3) => microblaze_riscv_0_ilmb_cntlr_ADDR(28),
      addrb(2) => microblaze_riscv_0_ilmb_cntlr_ADDR(29),
      addrb(1) => microblaze_riscv_0_ilmb_cntlr_ADDR(30),
      addrb(0) => microblaze_riscv_0_ilmb_cntlr_ADDR(31),
      clka => microblaze_riscv_0_dlmb_cntlr_CLK,
      clkb => microblaze_riscv_0_ilmb_cntlr_CLK,
      dina(31) => microblaze_riscv_0_dlmb_cntlr_DIN(0),
      dina(30) => microblaze_riscv_0_dlmb_cntlr_DIN(1),
      dina(29) => microblaze_riscv_0_dlmb_cntlr_DIN(2),
      dina(28) => microblaze_riscv_0_dlmb_cntlr_DIN(3),
      dina(27) => microblaze_riscv_0_dlmb_cntlr_DIN(4),
      dina(26) => microblaze_riscv_0_dlmb_cntlr_DIN(5),
      dina(25) => microblaze_riscv_0_dlmb_cntlr_DIN(6),
      dina(24) => microblaze_riscv_0_dlmb_cntlr_DIN(7),
      dina(23) => microblaze_riscv_0_dlmb_cntlr_DIN(8),
      dina(22) => microblaze_riscv_0_dlmb_cntlr_DIN(9),
      dina(21) => microblaze_riscv_0_dlmb_cntlr_DIN(10),
      dina(20) => microblaze_riscv_0_dlmb_cntlr_DIN(11),
      dina(19) => microblaze_riscv_0_dlmb_cntlr_DIN(12),
      dina(18) => microblaze_riscv_0_dlmb_cntlr_DIN(13),
      dina(17) => microblaze_riscv_0_dlmb_cntlr_DIN(14),
      dina(16) => microblaze_riscv_0_dlmb_cntlr_DIN(15),
      dina(15) => microblaze_riscv_0_dlmb_cntlr_DIN(16),
      dina(14) => microblaze_riscv_0_dlmb_cntlr_DIN(17),
      dina(13) => microblaze_riscv_0_dlmb_cntlr_DIN(18),
      dina(12) => microblaze_riscv_0_dlmb_cntlr_DIN(19),
      dina(11) => microblaze_riscv_0_dlmb_cntlr_DIN(20),
      dina(10) => microblaze_riscv_0_dlmb_cntlr_DIN(21),
      dina(9) => microblaze_riscv_0_dlmb_cntlr_DIN(22),
      dina(8) => microblaze_riscv_0_dlmb_cntlr_DIN(23),
      dina(7) => microblaze_riscv_0_dlmb_cntlr_DIN(24),
      dina(6) => microblaze_riscv_0_dlmb_cntlr_DIN(25),
      dina(5) => microblaze_riscv_0_dlmb_cntlr_DIN(26),
      dina(4) => microblaze_riscv_0_dlmb_cntlr_DIN(27),
      dina(3) => microblaze_riscv_0_dlmb_cntlr_DIN(28),
      dina(2) => microblaze_riscv_0_dlmb_cntlr_DIN(29),
      dina(1) => microblaze_riscv_0_dlmb_cntlr_DIN(30),
      dina(0) => microblaze_riscv_0_dlmb_cntlr_DIN(31),
      dinb(31) => microblaze_riscv_0_ilmb_cntlr_DIN(0),
      dinb(30) => microblaze_riscv_0_ilmb_cntlr_DIN(1),
      dinb(29) => microblaze_riscv_0_ilmb_cntlr_DIN(2),
      dinb(28) => microblaze_riscv_0_ilmb_cntlr_DIN(3),
      dinb(27) => microblaze_riscv_0_ilmb_cntlr_DIN(4),
      dinb(26) => microblaze_riscv_0_ilmb_cntlr_DIN(5),
      dinb(25) => microblaze_riscv_0_ilmb_cntlr_DIN(6),
      dinb(24) => microblaze_riscv_0_ilmb_cntlr_DIN(7),
      dinb(23) => microblaze_riscv_0_ilmb_cntlr_DIN(8),
      dinb(22) => microblaze_riscv_0_ilmb_cntlr_DIN(9),
      dinb(21) => microblaze_riscv_0_ilmb_cntlr_DIN(10),
      dinb(20) => microblaze_riscv_0_ilmb_cntlr_DIN(11),
      dinb(19) => microblaze_riscv_0_ilmb_cntlr_DIN(12),
      dinb(18) => microblaze_riscv_0_ilmb_cntlr_DIN(13),
      dinb(17) => microblaze_riscv_0_ilmb_cntlr_DIN(14),
      dinb(16) => microblaze_riscv_0_ilmb_cntlr_DIN(15),
      dinb(15) => microblaze_riscv_0_ilmb_cntlr_DIN(16),
      dinb(14) => microblaze_riscv_0_ilmb_cntlr_DIN(17),
      dinb(13) => microblaze_riscv_0_ilmb_cntlr_DIN(18),
      dinb(12) => microblaze_riscv_0_ilmb_cntlr_DIN(19),
      dinb(11) => microblaze_riscv_0_ilmb_cntlr_DIN(20),
      dinb(10) => microblaze_riscv_0_ilmb_cntlr_DIN(21),
      dinb(9) => microblaze_riscv_0_ilmb_cntlr_DIN(22),
      dinb(8) => microblaze_riscv_0_ilmb_cntlr_DIN(23),
      dinb(7) => microblaze_riscv_0_ilmb_cntlr_DIN(24),
      dinb(6) => microblaze_riscv_0_ilmb_cntlr_DIN(25),
      dinb(5) => microblaze_riscv_0_ilmb_cntlr_DIN(26),
      dinb(4) => microblaze_riscv_0_ilmb_cntlr_DIN(27),
      dinb(3) => microblaze_riscv_0_ilmb_cntlr_DIN(28),
      dinb(2) => microblaze_riscv_0_ilmb_cntlr_DIN(29),
      dinb(1) => microblaze_riscv_0_ilmb_cntlr_DIN(30),
      dinb(0) => microblaze_riscv_0_ilmb_cntlr_DIN(31),
      douta(31 downto 0) => microblaze_riscv_0_dlmb_cntlr_DOUT(31 downto 0),
      doutb(31 downto 0) => microblaze_riscv_0_ilmb_cntlr_DOUT(31 downto 0),
      ena => microblaze_riscv_0_dlmb_cntlr_EN,
      enb => microblaze_riscv_0_ilmb_cntlr_EN,
      rsta => microblaze_riscv_0_dlmb_cntlr_RST,
      rsta_busy => NLW_lmb_bram_rsta_busy_UNCONNECTED,
      rstb => microblaze_riscv_0_ilmb_cntlr_RST,
      rstb_busy => NLW_lmb_bram_rstb_busy_UNCONNECTED,
      wea(3) => microblaze_riscv_0_dlmb_cntlr_WE(0),
      wea(2) => microblaze_riscv_0_dlmb_cntlr_WE(1),
      wea(1) => microblaze_riscv_0_dlmb_cntlr_WE(2),
      wea(0) => microblaze_riscv_0_dlmb_cntlr_WE(3),
      web(3) => microblaze_riscv_0_ilmb_cntlr_WE(0),
      web(2) => microblaze_riscv_0_ilmb_cntlr_WE(1),
      web(1) => microblaze_riscv_0_ilmb_cntlr_WE(2),
      web(0) => microblaze_riscv_0_ilmb_cntlr_WE(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=14,numNonXlnxBlks=1,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=5,da_clkrst_cnt=1,da_microblaze_riscv_cnt=1,synth_mode=None}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_microblaze_riscv_0_0 is
  port (
    Clk : in STD_LOGIC;
    Reset : in STD_LOGIC;
    Interrupt : in STD_LOGIC;
    Interrupt_Address : in STD_LOGIC_VECTOR ( 0 to 31 );
    Interrupt_Ack : out STD_LOGIC_VECTOR ( 0 to 1 );
    Instr_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Instr : in STD_LOGIC_VECTOR ( 0 to 31 );
    IFetch : out STD_LOGIC;
    I_AS : out STD_LOGIC;
    IReady : in STD_LOGIC;
    IWAIT : in STD_LOGIC;
    ICE : in STD_LOGIC;
    IUE : in STD_LOGIC;
    Data_Addr : out STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Read : in STD_LOGIC_VECTOR ( 0 to 31 );
    Data_Write : out STD_LOGIC_VECTOR ( 0 to 31 );
    D_AS : out STD_LOGIC;
    Read_Strobe : out STD_LOGIC;
    Write_Strobe : out STD_LOGIC;
    DReady : in STD_LOGIC;
    DWait : in STD_LOGIC;
    DCE : in STD_LOGIC;
    DUE : in STD_LOGIC;
    Byte_Enable : out STD_LOGIC_VECTOR ( 0 to 3 );
    M_AXI_DP_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_AWVALID : out STD_LOGIC;
    M_AXI_DP_AWREADY : in STD_LOGIC;
    M_AXI_DP_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_DP_WVALID : out STD_LOGIC;
    M_AXI_DP_WREADY : in STD_LOGIC;
    M_AXI_DP_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_BVALID : in STD_LOGIC;
    M_AXI_DP_BREADY : out STD_LOGIC;
    M_AXI_DP_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_DP_ARVALID : out STD_LOGIC;
    M_AXI_DP_ARREADY : in STD_LOGIC;
    M_AXI_DP_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_DP_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_DP_RVALID : in STD_LOGIC;
    M_AXI_DP_RREADY : out STD_LOGIC;
    Dbg_Clk : in STD_LOGIC;
    Dbg_TDI : in STD_LOGIC;
    Dbg_TDO : out STD_LOGIC;
    Dbg_Reg_En : in STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Shift : in STD_LOGIC;
    Dbg_Capture : in STD_LOGIC;
    Dbg_Update : in STD_LOGIC;
    Debug_Rst : in STD_LOGIC;
    Dbg_Disable : in STD_LOGIC
  );
  end component design_1_microblaze_riscv_0_0;
  component design_1_mdm_1_0 is
  port (
    Debug_SYS_Rst : out STD_LOGIC;
    Dbg_Clk_0 : out STD_LOGIC;
    Dbg_TDI_0 : out STD_LOGIC;
    Dbg_TDO_0 : in STD_LOGIC;
    Dbg_Reg_En_0 : out STD_LOGIC_VECTOR ( 0 to 7 );
    Dbg_Capture_0 : out STD_LOGIC;
    Dbg_Shift_0 : out STD_LOGIC;
    Dbg_Update_0 : out STD_LOGIC;
    Dbg_Rst_0 : out STD_LOGIC;
    Dbg_Disable_0 : out STD_LOGIC
  );
  end component design_1_mdm_1_0;
  component design_1_clk_wiz_1_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC
  );
  end component design_1_clk_wiz_1_0;
  component design_1_rst_clk_wiz_1_100M_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_clk_wiz_1_100M_0;
  component design_1_axi_uartlite_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    rx : in STD_LOGIC;
    tx : out STD_LOGIC
  );
  end component design_1_axi_uartlite_0_0;
  component design_1_axi_smc_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC
  );
  end component design_1_axi_smc_0;
  component design_1_myip_pong2_0_0 is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    rst_0_port_out : in STD_LOGIC;
    hdmi_tx_0_tmds_clk_n_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_data_n_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_0_tmds_clk_p_port_out : out STD_LOGIC;
    hdmi_tx_0_tmds_data_p_port_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    score_p1_flag : out STD_LOGIC;
    score_p2_flag : out STD_LOGIC
  );
  end component design_1_myip_pong2_0_0;
  component design_1_pwm_audio_0_0 is
  port (
    clk : in STD_LOGIC;
    duty : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pwm_out : out STD_LOGIC
  );
  end component design_1_pwm_audio_0_0;
  component design_1_axi_gpio_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component design_1_axi_gpio_0_0;
  signal axi_gpio_0_gpio2_io_o : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_smc_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M00_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M00_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M00_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M01_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M01_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M01_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_smc_M01_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M01_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M01_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M01_AXI_WVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M02_AXI_ARREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_ARVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal axi_smc_M02_AXI_AWREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_AWVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_BREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M02_AXI_BVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M02_AXI_RREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_smc_M02_AXI_RVALID : STD_LOGIC;
  signal axi_smc_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axi_smc_M02_AXI_WREADY : STD_LOGIC;
  signal axi_smc_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal axi_smc_M02_AXI_WVALID : STD_LOGIC;
  signal clk_wiz_1_locked : STD_LOGIC;
  signal mdm_1_debug_sys_rst : STD_LOGIC;
  signal microblaze_riscv_0_Clk : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_ARREADY : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_ARVALID : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_AWREADY : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_AWVALID : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_BREADY : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_BVALID : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_RREADY : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_RVALID : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_WREADY : STD_LOGIC;
  signal microblaze_riscv_0_M_AXI_DP_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal microblaze_riscv_0_M_AXI_DP_WVALID : STD_LOGIC;
  signal microblaze_riscv_0_debug_CAPTURE : STD_LOGIC;
  signal microblaze_riscv_0_debug_CLK : STD_LOGIC;
  signal microblaze_riscv_0_debug_DISABLE : STD_LOGIC;
  signal microblaze_riscv_0_debug_REG_EN : STD_LOGIC_VECTOR ( 0 to 7 );
  signal microblaze_riscv_0_debug_RST : STD_LOGIC;
  signal microblaze_riscv_0_debug_SHIFT : STD_LOGIC;
  signal microblaze_riscv_0_debug_TDI : STD_LOGIC;
  signal microblaze_riscv_0_debug_TDO : STD_LOGIC;
  signal microblaze_riscv_0_debug_UPDATE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_BE : STD_LOGIC_VECTOR ( 0 to 3 );
  signal microblaze_riscv_0_dlmb_1_CE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_READY : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_UE : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_WAIT : STD_LOGIC;
  signal microblaze_riscv_0_dlmb_1_WRITEDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_dlmb_1_WRITESTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_ABUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_1_ADDRSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_CE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_READDBUS : STD_LOGIC_VECTOR ( 0 to 31 );
  signal microblaze_riscv_0_ilmb_1_READSTROBE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_READY : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_UE : STD_LOGIC;
  signal microblaze_riscv_0_ilmb_1_WAIT : STD_LOGIC;
  signal rst_clk_wiz_1_100M_bus_struct_reset : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_clk_wiz_1_100M_mb_reset : STD_LOGIC;
  signal rst_clk_wiz_1_100M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axi_smc_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M02_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_smc_M02_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_axi_uartlite_0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_microblaze_riscv_0_Interrupt_Ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_rst_clk_wiz_1_100M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute BMM_INFO_PROCESSOR : string;
  attribute BMM_INFO_PROCESSOR of microblaze_riscv_0 : label is "riscv > design_1 microblaze_riscv_0_local_memory/dlmb_bram_if_cntlr";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of microblaze_riscv_0 : label is "yes";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_100MHz : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_100MHz : signal is "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN design_1_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0";
  attribute X_INTERFACE_INFO of reset_rtl_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_rtl_0 : signal is "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of uart_rtl_0_rxd : signal is "xilinx.com:interface:uart:1.0 uart_rtl_0 RxD";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of uart_rtl_0_rxd : signal is "Master";
  attribute X_INTERFACE_INFO of uart_rtl_0_txd : signal is "xilinx.com:interface:uart:1.0 uart_rtl_0 TxD";
begin
axi_gpio_0: component design_1_axi_gpio_0_0
     port map (
      gpio2_io_o(7 downto 0) => axi_gpio_0_gpio2_io_o(7 downto 0),
      gpio_io_i(3 downto 0) => gpio_io_i_0(3 downto 0),
      s_axi_aclk => microblaze_riscv_0_Clk,
      s_axi_araddr(8 downto 0) => axi_smc_M02_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => axi_smc_M02_AXI_ARREADY,
      s_axi_arvalid => axi_smc_M02_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => axi_smc_M02_AXI_AWADDR(8 downto 0),
      s_axi_awready => axi_smc_M02_AXI_AWREADY,
      s_axi_awvalid => axi_smc_M02_AXI_AWVALID,
      s_axi_bready => axi_smc_M02_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M02_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M02_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M02_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smc_M02_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M02_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M02_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M02_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smc_M02_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M02_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M02_AXI_WVALID
    );
axi_smc: component design_1_axi_smc_0
     port map (
      M00_AXI_araddr(3 downto 0) => axi_smc_M00_AXI_ARADDR(3 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_axi_smc_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => axi_smc_M00_AXI_ARREADY,
      M00_AXI_arvalid => axi_smc_M00_AXI_ARVALID,
      M00_AXI_awaddr(3 downto 0) => axi_smc_M00_AXI_AWADDR(3 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_axi_smc_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => axi_smc_M00_AXI_AWREADY,
      M00_AXI_awvalid => axi_smc_M00_AXI_AWVALID,
      M00_AXI_bready => axi_smc_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => axi_smc_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => axi_smc_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => axi_smc_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => axi_smc_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => axi_smc_M00_AXI_WVALID,
      M01_AXI_araddr(3 downto 0) => axi_smc_M01_AXI_ARADDR(3 downto 0),
      M01_AXI_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      M01_AXI_arready => axi_smc_M01_AXI_ARREADY,
      M01_AXI_arvalid => axi_smc_M01_AXI_ARVALID,
      M01_AXI_awaddr(3 downto 0) => axi_smc_M01_AXI_AWADDR(3 downto 0),
      M01_AXI_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      M01_AXI_awready => axi_smc_M01_AXI_AWREADY,
      M01_AXI_awvalid => axi_smc_M01_AXI_AWVALID,
      M01_AXI_bready => axi_smc_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => axi_smc_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => axi_smc_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => axi_smc_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => axi_smc_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => axi_smc_M01_AXI_WVALID,
      M02_AXI_araddr(8 downto 0) => axi_smc_M02_AXI_ARADDR(8 downto 0),
      M02_AXI_arprot(2 downto 0) => NLW_axi_smc_M02_AXI_arprot_UNCONNECTED(2 downto 0),
      M02_AXI_arready => axi_smc_M02_AXI_ARREADY,
      M02_AXI_arvalid => axi_smc_M02_AXI_ARVALID,
      M02_AXI_awaddr(8 downto 0) => axi_smc_M02_AXI_AWADDR(8 downto 0),
      M02_AXI_awprot(2 downto 0) => NLW_axi_smc_M02_AXI_awprot_UNCONNECTED(2 downto 0),
      M02_AXI_awready => axi_smc_M02_AXI_AWREADY,
      M02_AXI_awvalid => axi_smc_M02_AXI_AWVALID,
      M02_AXI_bready => axi_smc_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => axi_smc_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => axi_smc_M02_AXI_BVALID,
      M02_AXI_rdata(31 downto 0) => axi_smc_M02_AXI_RDATA(31 downto 0),
      M02_AXI_rready => axi_smc_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => axi_smc_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => axi_smc_M02_AXI_RVALID,
      M02_AXI_wdata(31 downto 0) => axi_smc_M02_AXI_WDATA(31 downto 0),
      M02_AXI_wready => axi_smc_M02_AXI_WREADY,
      M02_AXI_wstrb(3 downto 0) => axi_smc_M02_AXI_WSTRB(3 downto 0),
      M02_AXI_wvalid => axi_smc_M02_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => microblaze_riscv_0_M_AXI_DP_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => microblaze_riscv_0_M_AXI_DP_ARPROT(2 downto 0),
      S00_AXI_arready => microblaze_riscv_0_M_AXI_DP_ARREADY,
      S00_AXI_arvalid => microblaze_riscv_0_M_AXI_DP_ARVALID,
      S00_AXI_awaddr(31 downto 0) => microblaze_riscv_0_M_AXI_DP_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => microblaze_riscv_0_M_AXI_DP_AWPROT(2 downto 0),
      S00_AXI_awready => microblaze_riscv_0_M_AXI_DP_AWREADY,
      S00_AXI_awvalid => microblaze_riscv_0_M_AXI_DP_AWVALID,
      S00_AXI_bready => microblaze_riscv_0_M_AXI_DP_BREADY,
      S00_AXI_bresp(1 downto 0) => microblaze_riscv_0_M_AXI_DP_BRESP(1 downto 0),
      S00_AXI_bvalid => microblaze_riscv_0_M_AXI_DP_BVALID,
      S00_AXI_rdata(31 downto 0) => microblaze_riscv_0_M_AXI_DP_RDATA(31 downto 0),
      S00_AXI_rready => microblaze_riscv_0_M_AXI_DP_RREADY,
      S00_AXI_rresp(1 downto 0) => microblaze_riscv_0_M_AXI_DP_RRESP(1 downto 0),
      S00_AXI_rvalid => microblaze_riscv_0_M_AXI_DP_RVALID,
      S00_AXI_wdata(31 downto 0) => microblaze_riscv_0_M_AXI_DP_WDATA(31 downto 0),
      S00_AXI_wready => microblaze_riscv_0_M_AXI_DP_WREADY,
      S00_AXI_wstrb(3 downto 0) => microblaze_riscv_0_M_AXI_DP_WSTRB(3 downto 0),
      S00_AXI_wvalid => microblaze_riscv_0_M_AXI_DP_WVALID,
      aclk => microblaze_riscv_0_Clk,
      aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0)
    );
axi_uartlite_0: component design_1_axi_uartlite_0_0
     port map (
      interrupt => NLW_axi_uartlite_0_interrupt_UNCONNECTED,
      rx => uart_rtl_0_rxd,
      s_axi_aclk => microblaze_riscv_0_Clk,
      s_axi_araddr(3 downto 0) => axi_smc_M00_AXI_ARADDR(3 downto 0),
      s_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s_axi_arready => axi_smc_M00_AXI_ARREADY,
      s_axi_arvalid => axi_smc_M00_AXI_ARVALID,
      s_axi_awaddr(3 downto 0) => axi_smc_M00_AXI_AWADDR(3 downto 0),
      s_axi_awready => axi_smc_M00_AXI_AWREADY,
      s_axi_awvalid => axi_smc_M00_AXI_AWVALID,
      s_axi_bready => axi_smc_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => axi_smc_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => axi_smc_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => axi_smc_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => axi_smc_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => axi_smc_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => axi_smc_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => axi_smc_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => axi_smc_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => axi_smc_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => axi_smc_M00_AXI_WVALID,
      tx => uart_rtl_0_txd
    );
clk_wiz_1: component design_1_clk_wiz_1_0
     port map (
      clk_in1 => clk_100MHz,
      clk_out1 => microblaze_riscv_0_Clk,
      locked => clk_wiz_1_locked,
      reset => mdm_1_debug_sys_rst
    );
mdm_1: component design_1_mdm_1_0
     port map (
      Dbg_Capture_0 => microblaze_riscv_0_debug_CAPTURE,
      Dbg_Clk_0 => microblaze_riscv_0_debug_CLK,
      Dbg_Disable_0 => microblaze_riscv_0_debug_DISABLE,
      Dbg_Reg_En_0(0 to 7) => microblaze_riscv_0_debug_REG_EN(0 to 7),
      Dbg_Rst_0 => microblaze_riscv_0_debug_RST,
      Dbg_Shift_0 => microblaze_riscv_0_debug_SHIFT,
      Dbg_TDI_0 => microblaze_riscv_0_debug_TDI,
      Dbg_TDO_0 => microblaze_riscv_0_debug_TDO,
      Dbg_Update_0 => microblaze_riscv_0_debug_UPDATE,
      Debug_SYS_Rst => mdm_1_debug_sys_rst
    );
microblaze_riscv_0: component design_1_microblaze_riscv_0_0
     port map (
      Byte_Enable(0 to 3) => microblaze_riscv_0_dlmb_1_BE(0 to 3),
      Clk => microblaze_riscv_0_Clk,
      DCE => microblaze_riscv_0_dlmb_1_CE,
      DReady => microblaze_riscv_0_dlmb_1_READY,
      DUE => microblaze_riscv_0_dlmb_1_UE,
      DWait => microblaze_riscv_0_dlmb_1_WAIT,
      D_AS => microblaze_riscv_0_dlmb_1_ADDRSTROBE,
      Data_Addr(0 to 31) => microblaze_riscv_0_dlmb_1_ABUS(0 to 31),
      Data_Read(0 to 31) => microblaze_riscv_0_dlmb_1_READDBUS(0 to 31),
      Data_Write(0 to 31) => microblaze_riscv_0_dlmb_1_WRITEDBUS(0 to 31),
      Dbg_Capture => microblaze_riscv_0_debug_CAPTURE,
      Dbg_Clk => microblaze_riscv_0_debug_CLK,
      Dbg_Disable => microblaze_riscv_0_debug_DISABLE,
      Dbg_Reg_En(0 to 7) => microblaze_riscv_0_debug_REG_EN(0 to 7),
      Dbg_Shift => microblaze_riscv_0_debug_SHIFT,
      Dbg_TDI => microblaze_riscv_0_debug_TDI,
      Dbg_TDO => microblaze_riscv_0_debug_TDO,
      Dbg_Update => microblaze_riscv_0_debug_UPDATE,
      Debug_Rst => microblaze_riscv_0_debug_RST,
      ICE => microblaze_riscv_0_ilmb_1_CE,
      IFetch => microblaze_riscv_0_ilmb_1_READSTROBE,
      IReady => microblaze_riscv_0_ilmb_1_READY,
      IUE => microblaze_riscv_0_ilmb_1_UE,
      IWAIT => microblaze_riscv_0_ilmb_1_WAIT,
      I_AS => microblaze_riscv_0_ilmb_1_ADDRSTROBE,
      Instr(0 to 31) => microblaze_riscv_0_ilmb_1_READDBUS(0 to 31),
      Instr_Addr(0 to 31) => microblaze_riscv_0_ilmb_1_ABUS(0 to 31),
      Interrupt => '0',
      Interrupt_Ack(0 to 1) => NLW_microblaze_riscv_0_Interrupt_Ack_UNCONNECTED(0 to 1),
      Interrupt_Address(0 to 31) => B"00000000000000000000000000000000",
      M_AXI_DP_ARADDR(31 downto 0) => microblaze_riscv_0_M_AXI_DP_ARADDR(31 downto 0),
      M_AXI_DP_ARPROT(2 downto 0) => microblaze_riscv_0_M_AXI_DP_ARPROT(2 downto 0),
      M_AXI_DP_ARREADY => microblaze_riscv_0_M_AXI_DP_ARREADY,
      M_AXI_DP_ARVALID => microblaze_riscv_0_M_AXI_DP_ARVALID,
      M_AXI_DP_AWADDR(31 downto 0) => microblaze_riscv_0_M_AXI_DP_AWADDR(31 downto 0),
      M_AXI_DP_AWPROT(2 downto 0) => microblaze_riscv_0_M_AXI_DP_AWPROT(2 downto 0),
      M_AXI_DP_AWREADY => microblaze_riscv_0_M_AXI_DP_AWREADY,
      M_AXI_DP_AWVALID => microblaze_riscv_0_M_AXI_DP_AWVALID,
      M_AXI_DP_BREADY => microblaze_riscv_0_M_AXI_DP_BREADY,
      M_AXI_DP_BRESP(1 downto 0) => microblaze_riscv_0_M_AXI_DP_BRESP(1 downto 0),
      M_AXI_DP_BVALID => microblaze_riscv_0_M_AXI_DP_BVALID,
      M_AXI_DP_RDATA(31 downto 0) => microblaze_riscv_0_M_AXI_DP_RDATA(31 downto 0),
      M_AXI_DP_RREADY => microblaze_riscv_0_M_AXI_DP_RREADY,
      M_AXI_DP_RRESP(1 downto 0) => microblaze_riscv_0_M_AXI_DP_RRESP(1 downto 0),
      M_AXI_DP_RVALID => microblaze_riscv_0_M_AXI_DP_RVALID,
      M_AXI_DP_WDATA(31 downto 0) => microblaze_riscv_0_M_AXI_DP_WDATA(31 downto 0),
      M_AXI_DP_WREADY => microblaze_riscv_0_M_AXI_DP_WREADY,
      M_AXI_DP_WSTRB(3 downto 0) => microblaze_riscv_0_M_AXI_DP_WSTRB(3 downto 0),
      M_AXI_DP_WVALID => microblaze_riscv_0_M_AXI_DP_WVALID,
      Read_Strobe => microblaze_riscv_0_dlmb_1_READSTROBE,
      Reset => rst_clk_wiz_1_100M_mb_reset,
      Write_Strobe => microblaze_riscv_0_dlmb_1_WRITESTROBE
    );
microblaze_riscv_0_local_memory: entity work.microblaze_riscv_0_local_memory_imp_1TUIWYR
     port map (
      DLMB_abus(0 to 31) => microblaze_riscv_0_dlmb_1_ABUS(0 to 31),
      DLMB_addrstrobe => microblaze_riscv_0_dlmb_1_ADDRSTROBE,
      DLMB_be(0 to 3) => microblaze_riscv_0_dlmb_1_BE(0 to 3),
      DLMB_ce => microblaze_riscv_0_dlmb_1_CE,
      DLMB_readdbus(0 to 31) => microblaze_riscv_0_dlmb_1_READDBUS(0 to 31),
      DLMB_readstrobe => microblaze_riscv_0_dlmb_1_READSTROBE,
      DLMB_ready => microblaze_riscv_0_dlmb_1_READY,
      DLMB_ue => microblaze_riscv_0_dlmb_1_UE,
      DLMB_wait => microblaze_riscv_0_dlmb_1_WAIT,
      DLMB_writedbus(0 to 31) => microblaze_riscv_0_dlmb_1_WRITEDBUS(0 to 31),
      DLMB_writestrobe => microblaze_riscv_0_dlmb_1_WRITESTROBE,
      ILMB_abus(0 to 31) => microblaze_riscv_0_ilmb_1_ABUS(0 to 31),
      ILMB_addrstrobe => microblaze_riscv_0_ilmb_1_ADDRSTROBE,
      ILMB_ce => microblaze_riscv_0_ilmb_1_CE,
      ILMB_readdbus(0 to 31) => microblaze_riscv_0_ilmb_1_READDBUS(0 to 31),
      ILMB_readstrobe => microblaze_riscv_0_ilmb_1_READSTROBE,
      ILMB_ready => microblaze_riscv_0_ilmb_1_READY,
      ILMB_ue => microblaze_riscv_0_ilmb_1_UE,
      ILMB_wait => microblaze_riscv_0_ilmb_1_WAIT,
      LMB_Clk => microblaze_riscv_0_Clk,
      SYS_Rst => rst_clk_wiz_1_100M_bus_struct_reset(0)
    );
myip_pong2_0: component design_1_myip_pong2_0_0
     port map (
      hdmi_tx_0_tmds_clk_n_port_out => hdmi_tx_0_tmds_clk_n_port_out_0,
      hdmi_tx_0_tmds_clk_p_port_out => hdmi_tx_0_tmds_clk_p_port_out_0,
      hdmi_tx_0_tmds_data_n_port_out(2 downto 0) => hdmi_tx_0_tmds_data_n_port_out_0(2 downto 0),
      hdmi_tx_0_tmds_data_p_port_out(2 downto 0) => hdmi_tx_0_tmds_data_p_port_out_0(2 downto 0),
      rst_0_port_out => rst_0_port_out_0,
      s00_axi_aclk => microblaze_riscv_0_Clk,
      s00_axi_araddr(3 downto 0) => axi_smc_M01_AXI_ARADDR(3 downto 0),
      s00_axi_aresetn => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      s00_axi_arprot(2 downto 0) => axi_smc_M01_AXI_ARPROT(2 downto 0),
      s00_axi_arready => axi_smc_M01_AXI_ARREADY,
      s00_axi_arvalid => axi_smc_M01_AXI_ARVALID,
      s00_axi_awaddr(3 downto 0) => axi_smc_M01_AXI_AWADDR(3 downto 0),
      s00_axi_awprot(2 downto 0) => axi_smc_M01_AXI_AWPROT(2 downto 0),
      s00_axi_awready => axi_smc_M01_AXI_AWREADY,
      s00_axi_awvalid => axi_smc_M01_AXI_AWVALID,
      s00_axi_bready => axi_smc_M01_AXI_BREADY,
      s00_axi_bresp(1 downto 0) => axi_smc_M01_AXI_BRESP(1 downto 0),
      s00_axi_bvalid => axi_smc_M01_AXI_BVALID,
      s00_axi_rdata(31 downto 0) => axi_smc_M01_AXI_RDATA(31 downto 0),
      s00_axi_rready => axi_smc_M01_AXI_RREADY,
      s00_axi_rresp(1 downto 0) => axi_smc_M01_AXI_RRESP(1 downto 0),
      s00_axi_rvalid => axi_smc_M01_AXI_RVALID,
      s00_axi_wdata(31 downto 0) => axi_smc_M01_AXI_WDATA(31 downto 0),
      s00_axi_wready => axi_smc_M01_AXI_WREADY,
      s00_axi_wstrb(3 downto 0) => axi_smc_M01_AXI_WSTRB(3 downto 0),
      s00_axi_wvalid => axi_smc_M01_AXI_WVALID,
      score_p1_flag => score_p1_flag_0,
      score_p2_flag => score_p2_flag_0
    );
pwm_audio_0: component design_1_pwm_audio_0_0
     port map (
      clk => microblaze_riscv_0_Clk,
      duty(7 downto 0) => axi_gpio_0_gpio2_io_o(7 downto 0),
      pwm_out => pwm_out_0
    );
rst_clk_wiz_1_100M: component design_1_rst_clk_wiz_1_100M_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => rst_clk_wiz_1_100M_bus_struct_reset(0),
      dcm_locked => clk_wiz_1_locked,
      ext_reset_in => reset_rtl_0,
      interconnect_aresetn(0) => NLW_rst_clk_wiz_1_100M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => mdm_1_debug_sys_rst,
      mb_reset => rst_clk_wiz_1_100M_mb_reset,
      peripheral_aresetn(0) => rst_clk_wiz_1_100M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_clk_wiz_1_100M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => microblaze_riscv_0_Clk
    );
end STRUCTURE;
