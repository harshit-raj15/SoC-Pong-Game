library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_audio_axi_stream is
  generic (
    SAMPLE_RATE  : integer := 8000;   -- desired audio rate
    CLK_FREQ_HZ  : integer := 100_000_000
  );
  port (
    -- AXI-Stream Slave Interface
    s_axis_aclk    : in  std_logic;
    s_axis_aresetn : in  std_logic;
    s_axis_tdata   : in  std_logic_vector(7 downto 0);
    s_axis_tvalid  : in  std_logic;
    s_axis_tlast   : in  std_logic;
    s_axis_tready  : out std_logic;

    -- PWM output
    pwm_out        : out std_logic
  );
end entity;

architecture RTL of pwm_audio_axi_stream is
  -- down-counter width to divide 100 MHz → 8 kHz
  constant DIVIDER : integer := CLK_FREQ_HZ / SAMPLE_RATE;
  signal divider_cnt : integer range 0 to DIVIDER-1 := 0;
  signal sample_en   : std_logic := '0';

  signal duty_reg    : unsigned(7 downto 0) := (others => '0');
  signal counter     : unsigned(7 downto 0) := (others => '0');
  signal last_sample : std_logic := '0';
begin

  -- 1) Generate an 8 kHz enable pulse
  process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_axis_aresetn = '0' then
        divider_cnt <= 0;
        sample_en   <= '0';
      elsif divider_cnt = DIVIDER-1 then
        divider_cnt <= 0;
        sample_en   <= '1';
      else
        divider_cnt <= divider_cnt + 1;
        sample_en   <= '0';
      end if;
    end if;
  end process;

  -- 2) Only ready to accept a new sample at sample_en
  s_axis_tready <= sample_en;

  -- 3) Latch new duty_reg when tvalid AND sample_en
  process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_axis_aresetn = '0' then
        duty_reg    <= (others => '0');
        last_sample <= '0';
      else
        if sample_en = '1' and s_axis_tvalid = '1' then
          duty_reg <= unsigned(s_axis_tdata);
        end if;
        -- capture TLAST to stop or reset if you want:
        if sample_en = '1' and s_axis_tlast = '1' then
          last_sample <= '1';
        end if;
      end if;
    end if;
  end process;

  -- 4) PWM counter runs continuously, but you could gate it on last_sample
  process(s_axis_aclk)
  begin
    if rising_edge(s_axis_aclk) then
      if s_axis_aresetn = '0' then
        counter <= (others => '0');
        pwm_out <= '0';
      else
        counter <= counter + 1;
        if counter < duty_reg then
          pwm_out <= '1';
        else
          pwm_out <= '0';
        end if;
      end if;
    end if;
  end process;

end architecture;
