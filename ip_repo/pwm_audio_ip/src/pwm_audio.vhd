library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_audio_axi is
  port (
    -- AXI4-Lite slave interface
    S_AXI_ACLK     : in  std_logic;
    S_AXI_ARESETN  : in  std_logic;
    S_AXI_AWADDR   : in  std_logic_vector(31 downto 0);
    S_AXI_AWVALID  : in  std_logic;
    S_AXI_AWREADY  : out std_logic;
    S_AXI_WDATA    : in  std_logic_vector(31 downto 0);
    S_AXI_WSTRB    : in  std_logic_vector(3 downto 0);
    S_AXI_WVALID   : in  std_logic;
    S_AXI_WREADY   : out std_logic;
    S_AXI_BRESP    : out std_logic_vector(1 downto 0);
    S_AXI_BVALID   : out std_logic;
    S_AXI_BREADY   : in  std_logic;
    S_AXI_ARADDR   : in  std_logic_vector(31 downto 0);
    S_AXI_ARVALID  : in  std_logic;
    S_AXI_ARREADY  : out std_logic;
    S_AXI_RDATA    : out std_logic_vector(31 downto 0);
    S_AXI_RRESP    : out std_logic_vector(1 downto 0);
    S_AXI_RVALID   : out std_logic;
    S_AXI_RREADY   : in  std_logic;
    -- PWM output
    pwm_out        : out std_logic
  );
end entity pwm_audio_axi;

architecture RTL of pwm_audio_axi is
  -- AXI write channel handshake signals
  signal awready  : std_logic := '0';
  signal wready   : std_logic := '0';
  signal bvalid   : std_logic := '0';
  -- AXI read channel handshake signals
  signal arready  : std_logic := '0';
  signal rvalid   : std_logic := '0';
  signal rdata    : std_logic_vector(31 downto 0) := (others => '0');
  -- Internal 32-bit register (only bits [7:0] used)
  signal duty_reg32 : std_logic_vector(31 downto 0) := (others => '0');
  -- PWM logic signals
  signal counter   : unsigned(7 downto 0) := (others => '0');
  signal duty_reg  : unsigned(7 downto 0);
begin
  -- Hook signals to top-level ports
  S_AXI_AWREADY <= awready;
  S_AXI_WREADY  <= wready;
  S_AXI_BRESP   <= "00";        -- OKAY response
  S_AXI_BVALID  <= bvalid;
  S_AXI_ARREADY <= arready;
  S_AXI_RDATA   <= rdata;
  S_AXI_RRESP   <= "00";
  S_AXI_RVALID  <= rvalid;

  -----------------------------------------------------------------------------
  -- AXI4-Lite Write Channel
  -----------------------------------------------------------------------------
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        awready     <= '0';
        wready      <= '0';
        bvalid      <= '0';
        duty_reg32  <= (others => '0');
      else
        -- AW handshake
        if awready = '0' and S_AXI_AWVALID = '1' then
          awready <= '1';
        elsif awready = '1' and S_AXI_WVALID = '1' then
          awready <= '0';
        end if;
        -- W handshake
        if wready = '0' and S_AXI_WVALID = '1' then
          wready <= '1';
        elsif wready = '1' and S_AXI_BREADY = '1' then
          wready <= '0';
        end if;
        -- Latch write data on both AWVALID/WVALID
        if awready = '1' and S_AXI_AWVALID = '1' and
           wready  = '1' and S_AXI_WVALID  = '1' then
          -- Only offset 0x00 supported: take lower 8 bits
          duty_reg32(7 downto 0) <= S_AXI_WDATA(7 downto 0);
        end if;
        -- Generate write response
        if awready = '1' and S_AXI_AWVALID = '1' and
           wready  = '1' and S_AXI_WVALID  = '1' then
          bvalid <= '1';
        elsif bvalid = '1' and S_AXI_BREADY = '1' then
          bvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- AXI4-Lite Read Channel
  -----------------------------------------------------------------------------
  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      if S_AXI_ARESETN = '0' then
        arready <= '0';
        rvalid  <= '0';
        rdata   <= (others => '0');
      else
        -- AR handshake
        if arready = '0' and S_AXI_ARVALID = '1' then
          arready <= '1';
        elsif arready = '1' and S_AXI_RREADY = '1' then
          arready <= '0';
        end if;
        -- Drive read data on ARVALID
        if arready = '1' and S_AXI_ARVALID = '1' then
          rdata  <= duty_reg32;   -- full 32-bit, lower byte is PWM duty
          rvalid <= '1';
        elsif rvalid = '1' and S_AXI_RREADY = '1' then
          rvalid <= '0';
        end if;
      end if;
    end if;
  end process;

  -----------------------------------------------------------------------------
  -- PWM logic: compare a free-running 8-bit counter to duty_reg32[7:0]
  -----------------------------------------------------------------------------
  duty_reg <= unsigned(duty_reg32(7 downto 0));

  process(S_AXI_ACLK)
  begin
    if rising_edge(S_AXI_ACLK) then
      counter <= counter + 1;
      if counter < duty_reg then
        pwm_out <= '1';
      else
        pwm_out <= '0';
      end if;
    end if;
  end process;

end architecture RTL;
