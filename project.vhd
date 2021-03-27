library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity project is
    port (
        i_clk     : in std_logic;
        i_rst     : in std_logic;
        i_start   : in std_logic;
        i_data    : in std_logic_vector(7 downto 0)
    );
end project;

architecture rtl of project is
    signal shifted_pixel, temp : std_logic_vector(15 downto 0);
    begin
        process(i_data)
        begin
            temp <= "00000000" & i_data;
            shifted_pixel <= shift_left(temp, 5);
        end process;
end rtl;
