
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity myip_pong2_slave_lite_v1_0_S00_AXI is
  generic (
    -- Width of S_AXI data bus
    C_S_AXI_DATA_WIDTH : integer := 32;
    -- Width of S_AXI address bus
    C_S_AXI_ADDR_WIDTH : integer := 4
  );
  port (
    -- User Ports
    rst_0_port                  : in  std_logic;
    hdmi_tx_0_tmds_clk_n_port   : out std_logic;
    hdmi_tx_0_tmds_data_n_port  : out std_logic_vector(2 downto 0);
    hdmi_tx_0_tmds_clk_p_port   : out std_logic;
    hdmi_tx_0_tmds_data_p_port  : out std_logic_vector(2 downto 0);
    score_p1_s                  : out std_logic;  -- Alex Villegas
    score_p2_s                  : out std_logic;  -- Alex Villegas

    -- Global Clock and Reset
    S_AXI_ACLK    : in  std_logic;
    S_AXI_ARESETN : in  std_logic;
    -- AXI Write Address Channel
    S_AXI_AWADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_AWPROT  : in  std_logic_vector(2 downto 0);
    S_AXI_AWVALID : in  std_logic;
    S_AXI_AWREADY : out std_logic;
    -- AXI Write Data Channel
    S_AXI_WDATA   : in  std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_WSTRB   : in  std_logic_vector((C_S_AXI_DATA_WIDTH/8)-1 downto 0);
    S_AXI_WVALID  : in  std_logic;
    S_AXI_WREADY  : out std_logic;
    -- AXI Write Response Channel
    S_AXI_BRESP   : out std_logic_vector(1 downto 0);
    S_AXI_BVALID  : out std_logic;
    S_AXI_BREADY  : in  std_logic;
    -- AXI Read Address Channel
    S_AXI_ARADDR  : in  std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
    S_AXI_ARPROT  : in  std_logic_vector(2 downto 0);
    S_AXI_ARVALID : in  std_logic;
    S_AXI_ARREADY : out std_logic;
    -- AXI Read Data Channel
    S_AXI_RDATA   : out std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
    S_AXI_RRESP   : out std_logic_vector(1 downto 0);
    S_AXI_RVALID  : out std_logic;
    S_AXI_RREADY  : in  std_logic
  );
end myip_pong2_slave_lite_v1_0_S00_AXI;

architecture arch_imp of myip_pong2_slave_lite_v1_0_S00_AXI is

  -- AXI4Lite internal signals
  signal axi_awaddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_awready : std_logic;
  signal axi_wready  : std_logic;
  signal axi_bresp   : std_logic_vector(1 downto 0);
  signal axi_bvalid  : std_logic;
  signal axi_araddr  : std_logic_vector(C_S_AXI_ADDR_WIDTH-1 downto 0);
  signal axi_arready : std_logic;
  signal axi_rresp   : std_logic_vector(1 downto 0);
  signal axi_rvalid  : std_logic;

  constant ADDR_LSB : integer := (C_S_AXI_DATA_WIDTH/32) + 1;
  constant OPT_MEM_ADDR_BITS : integer := 1;

  -- Slave Registers (four 32-bit registers)
  signal slv_reg0 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg1 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg2 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal slv_reg3 : std_logic_vector(C_S_AXI_DATA_WIDTH-1 downto 0);
  signal byte_index : integer;
  signal mem_logic  : std_logic_vector(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB);

  -- State machine constants and variables for read and write
  constant Idle  : std_logic_vector(1 downto 0) := "00";
  constant Raddr : std_logic_vector(1 downto 0) := "10";
  constant Rdata : std_logic_vector(1 downto 0) := "11";
  constant Waddr : std_logic_vector(1 downto 0) := "10";
  constant Wdata : std_logic_vector(1 downto 0) := "11";
  signal state_read  : std_logic_vector(1 downto 0);
  signal state_write : std_logic_vector(1 downto 0);

  -- User signals for reset and score latch logic
  signal clk_rst_s          : std_logic;
  signal score_p1_internal  : std_logic;  -- from external Pong instance
  signal score_p2_internal  : std_logic;  -- from external Pong instance
  --ALEX
  signal p1_score_latched   : std_logic := '0';
  signal p2_score_latched   : std_logic := '0';
  signal paddle_bounce_internal : std_logic;  -- from Pong instance
  signal paddle_bounce_latched  : std_logic := '0';  -- latched for AXI read

begin

  -- Assign AXI interface outputs
  S_AXI_AWREADY <= axi_awready;
  S_AXI_WREADY  <= axi_wready;
  S_AXI_BRESP   <= axi_bresp;
  S_AXI_BVALID  <= axi_bvalid;
  S_AXI_ARREADY <= axi_arready;
  S_AXI_RRESP   <= axi_rresp;
  S_AXI_RVALID  <= axi_rvalid;

  -- Generate the register select signal
  mem_logic <= S_AXI_AWADDR(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB)
               when (S_AXI_AWVALID = '1')
               else axi_awaddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB);

  -- Write state machine process
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_awready <= '0';
        axi_wready  <= '0';
        axi_bvalid  <= '0';
        axi_bresp   <= (others => '0');
        state_write <= Idle;
      else
        case state_write is
          when Idle =>
            if S_AXI_ARESETN = '1' then
              axi_awready <= '1';
              axi_wready  <= '1';
              state_write <= Waddr;
            else
              state_write <= state_write;
            end if;
          when Waddr =>
            if (S_AXI_AWVALID = '1' and axi_awready = '1') then
              axi_awaddr <= S_AXI_AWADDR;
              if S_AXI_WVALID = '1' then
                axi_awready <= '1';
                state_write <= Waddr;
                axi_bvalid <= '1';
              else
                axi_awready <= '0';
                state_write <= Wdata;
                if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                  axi_bvalid <= '0';
                end if;
              end if;
            else
              state_write <= state_write;
              if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                axi_bvalid <= '0';
              end if;
            end if;
          when Wdata =>
            if S_AXI_WVALID = '1' then
              state_write <= Waddr;
              axi_bvalid <= '1';
              axi_awready <= '1';
            else
              state_write <= state_write;
              if (S_AXI_BREADY = '1' and axi_bvalid = '1') then
                axi_bvalid <= '0';
              end if;
            end if;
          when others =>
            axi_awready <= '0';
            axi_wready  <= '0';
            axi_bvalid  <= '0';
        end case;
      end if;
    end if;
  end process;

  -- Write to slave registers process
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then 
      if S_AXI_ARESETN = '0' then
        slv_reg0 <= (others => '0');
        slv_reg1 <= (others => '0');
        slv_reg2 <= (others => '0');
        slv_reg3 <= (others => '0');
      else
        if S_AXI_WVALID = '1' then
          case mem_logic is
            when b"00" =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg0(byte_index*8+7 downto byte_index*8) <=
                    S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"01" =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg1(byte_index*8+7 downto byte_index*8) <=
                    S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"10" =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg2(byte_index*8+7 downto byte_index*8) <=
                    S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when b"11" =>
              for byte_index in 0 to (C_S_AXI_DATA_WIDTH/8-1) loop
                if S_AXI_WSTRB(byte_index) = '1' then
                  slv_reg3(byte_index*8+7 downto byte_index*8) <=
                    S_AXI_WDATA(byte_index*8+7 downto byte_index*8);
                end if;
              end loop;
            when others =>
              slv_reg0 <= slv_reg0;
              slv_reg1 <= slv_reg1;
              slv_reg2 <= slv_reg2;
              slv_reg3 <= slv_reg3;
          end case;
        end if;
      end if;
    end if;
  end process;

---- Score Latching Process (ALEX)
--process (S_AXI_ACLK)
--begin
--  if rising_edge(S_AXI_ACLK) then
--    if S_AXI_ARESETN = '0' then
--      p1_score_latched <= '0';
--      p2_score_latched <= '0';
--    else
--      -- TEMPORARY: Force both latch bits high
--      p1_score_latched <= '1';
--      p2_score_latched <= '1';
--    end if;
--  end if;
--end process;


  -- Score Latching Process (ALEX)
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        p1_score_latched <= '0';
        p2_score_latched <= '0';
      else
        -- Latch when pulse goes high
        if score_p1_internal = '1' then
          p1_score_latched <= '1';
        end if;
        if score_p2_internal = '1' then
          p2_score_latched <= '1';
        end if;
        -- Clear on read of register "01"
        if (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "01") and
           (state_read = Rdata) and (S_AXI_RREADY = '1') then
          p1_score_latched <= '0';
          p2_score_latched <= '0';
        end if;
      end if;
    end if;
  end process;
  
  -- Score + Paddle Bounce Latching Process (ALEX)
process (S_AXI_ACLK)
begin
  if rising_edge(S_AXI_ACLK) then
    if S_AXI_ARESETN = '0' then
      p1_score_latched <= '0';
      p2_score_latched <= '0';
      paddle_bounce_latched <= '0';
    else
      if score_p1_internal = '1' then
        p1_score_latched <= '1';
      end if;
      if score_p2_internal = '1' then
        p2_score_latched <= '1';
      end if;
      if paddle_bounce_internal = '1' then
        paddle_bounce_latched <= '1';
      end if;
      -- Clear all on read of slv_reg1
      if (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "01") and
         (state_read = Rdata) and (S_AXI_RREADY = '1') then
        p1_score_latched <= '0';
        p2_score_latched <= '0';
        paddle_bounce_latched <= '0';
      end if;
    end if;
  end if;
end process;


  -- Read State Machine Process
  process (S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        axi_arready <= '0';
        axi_rvalid  <= '0';
        axi_rresp   <= (others => '0');
        state_read  <= Idle;
      else
        case state_read is
          when Idle =>
            if S_AXI_ARESETN = '1' then
              axi_arready <= '1';
              state_read <= Raddr;
            else
              state_read <= state_read;
            end if;
          when Raddr =>
            if (S_AXI_ARVALID = '1' and axi_arready = '1') then
              state_read <= Rdata;
              axi_rvalid <= '1';
              axi_arready <= '0';
              axi_araddr <= S_AXI_ARADDR;
            else
              state_read <= state_read;
            end if;
          when Rdata =>
            if (axi_rvalid = '1' and S_AXI_RREADY = '1') then
              axi_rvalid <= '0';
              axi_arready <= '1';
              state_read <= Raddr;
            else
              state_read <= state_read;
            end if;
          when others =>
            axi_arready <= '0';
            axi_rvalid  <= '0';
        end case;
      end if;
    end if;
  end process;

  -- Read Data Multiplexer
-- Implement memory mapped register select and read logic generation
S_AXI_RDATA <= slv_reg0 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "00") else 
               (31 downto 3 => '0') & paddle_bounce_latched & p2_score_latched & p1_score_latched when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "01") else 
               slv_reg2 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "10") else 
               slv_reg3 when (axi_araddr(ADDR_LSB+OPT_MEM_ADDR_BITS downto ADDR_LSB) = "11") else 
               (others => '0');



  -- External Pong Wrapper Instance
  PONG_INST : entity work.design_6_wrapper
    port map(
      clk_100MHz          => S_AXI_ACLK,
      clk_rst             => clk_rst_s,
      rst_0               => rst_0_port,
      i_switch_0          => slv_reg0(0),
      i_switch_1          => slv_reg0(1),
      i_switch_2          => slv_reg0(2),
      i_switch_3          => slv_reg0(3),
      i_switch_4          => slv_reg0(4),
      hdmi_tx_0_tmds_clk_n  => hdmi_tx_0_tmds_clk_n_port,
      hdmi_tx_0_tmds_data_n => hdmi_tx_0_tmds_data_n_port,
      hdmi_tx_0_tmds_clk_p  => hdmi_tx_0_tmds_clk_p_port,
      hdmi_tx_0_tmds_data_p => hdmi_tx_0_tmds_data_p_port,
      o_P1_Score_Pulse     => score_p1_internal,
      o_P2_Score_Pulse     => score_p2_internal,
      o_Paddle_Bounce_Pulse => paddle_bounce_internal
    );
    
  clk_rst_s <= not S_AXI_ARESETN;

end arch_imp;
