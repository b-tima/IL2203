library ieee;
use ieee.std_logic_1164.all;
library work;

entity sync_reset_D_FF is
port (
	clk	: in std_logic;
	d		: in std_logic;
	reset	: in std_logic;
	q		: out std_logic
);
end sync_reset_D_FF;

architecture beh of sync_reset_D_FF is
begin

process(clk)
begin
	if(rising_edge(clk)) then
		if(reset = '1') then
			q <= '0';
		else
			q <= d;
		end if;
	end if;
end process;

end beh;
