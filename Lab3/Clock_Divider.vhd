library IEEE;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock_Divider is
port(
	CLK100MHZ : in std_logic;
	CLK1HZ : out std_logic
);
end Clock_Divider;

architecture count of Clock_Divider is

signal counter : integer range 0 to 25000000 := 0;
signal clk_tmp : std_logic;

begin

CLK1HZ <= clk_tmp;

process(CLK100MHZ)

begin

if rising_edge(CLK100MHZ) then
		if counter = 25000000 then
			clk_tmp <= not clk_tmp;
			counter <= 0;
		else
			counter <= counter + 1;
		end if;
	end if;

end process;

end count;
