library IEEE;
use work.all;
use ieee.std_logic_1164.all;

entity GPIO is
port(
	CLK, RESET : IN std_logic;

	IE : IN std_logic;
	Din : IN std_logic_vector(15 downto 0);
	Dout : OUT std_logic_vector(15 downto 0)
);
end GPIO;

architecture behave of GPIO is

begin

process(CLK, RESET)

begin
	if RESET = '1' then
		Dout <= (others => '0');
	elsif rising_edge(CLK) then
		if IE = '1' then
			Dout <= Din;
		end if;
	end if;
end process;

end behave;
