library ieee;
use ieee.std_logic_1164.all;
library work;

entity async_reset_D_FF is
port (
	clk 	: in std_logic;
	d		: in std_logic;
	reset	: in std_logic;
	q		: out std_logic
);
end async_reset_D_FF;

architecture beh of async_reset_D_FF is

signal q_internal : std_logic;

begin

q <= q_internal;

process(clk, reset)
begin
	if(reset = '1') then
		q_internal <= '0';
	elsif(rising_edge(clk)) then
		q_internal <= d;
	end if;
end process;

end beh;
