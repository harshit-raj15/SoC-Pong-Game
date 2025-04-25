library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm_audio is
    Port (
        clk      : in  std_logic;
        duty     : in  std_logic_vector(7 downto 0);
        pwm_out  : out std_logic
    );
end pwm_audio;

architecture Behavioral of pwm_audio is
    signal counter : unsigned(7 downto 0) := (others => '0');
begin

    process(clk)
    begin
        if rising_edge(clk) then
            counter <= counter + 1;
            if counter < unsigned(duty) then
                pwm_out <= '1';
            else
                pwm_out <= '0';
            end if;
        end if;
    end process;

end Behavioral;