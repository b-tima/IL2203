library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity test_ripple_carry_adder is
	generic(N: integer:=10);
end test_ripple_carry_adder;

architecture test of test_ripple_carry_adder is

component ripple_carry_adder is
Generic(N:integer);
port (x,y: in std_logic_vector(N-1 downto 0);
		z: out std_logic_vector(N-1 downto 0));
end component;

signal a,b: std_logic_vector(N-1 downto 0);
signal sum: std_logic_vector(N-1 downto 0) := (others => '0');

begin

DUT: ripple_carry_adder generic map(N => N) port map(x => a, y => b, z => sum);

process
variable i: integer := 0;
begin
	
	-- Shift a and check that sum is equal to a
	a <= std_logic_vector(to_unsigned(1, N));
	b <= (others => '0');
	wait for 10 ns;
	while i < N-1 loop
		a <= std_logic_vector(shift_left(unsigned(a), 1));
		i := i + 1;
		wait for 1 ns;
		assert a = sum report "a != sum" severity error;
		wait for 9 ns;
	end loop;
	
	-- Set a = b and check that sum is shifted one bit further than a and b
	
	a <= std_logic_vector(to_unsigned(1, N));
	b <= std_logic_vector(to_unsigned(1, N));
	i := 0;
	wait for 10 ns;
	while i < N-1 loop
		a <= std_logic_vector(shift_left(unsigned(a), 1));
		b <= std_logic_vector(shift_left(unsigned(b), 1));
		i := i + 1;
		wait for 1 ns;
		
		wait for 9 ns;
	end loop;
	
	-- Test some numbers and check that the sum checks out
	
	wait for 10 ns;
	
	a <= std_logic_vector(to_unsigned(8, N));
	b <= std_logic_vector(to_unsigned(1, N));
	
	wait for 1 ns;
	assert sum=std_logic_vector(to_unsigned(9, N)) report "sum != 9" severity error;
	wait for 9 ns;
	
	a <= std_logic_vector(to_unsigned(827, N));
	b <= std_logic_vector(to_unsigned(155, N));
	
	wait for 1 ns;
	assert sum=std_logic_vector(to_unsigned(982, N)) report "sum != 9" severity error;
	wait for 9 ns;
	
end process;

end test;