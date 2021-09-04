library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity test_ripple_carry_adder is
	generic(N: integer:=4);
end test_ripple_carry_adder;

architecture test of test_ripple_carry_adder is

component ripple_carry_adder is
Generic(N:integer);
port (x,y: in std_logic_vector(N-1 downto 0);
		z: out std_logic_vector(N-1 downto 0));
end component;

signal num1 : integer;
signal num2 : integer;

signal a,b: std_logic_vector(3 downto 0);
signal sum: std_logic_vector(3 downto 0) := (others => '0');

begin

a <= std_logic_vector(to_unsigned(num1,a'length));
b <= std_logic_vector(to_unsigned(num2,b'length));

DUT: ripple_carry_adder generic map(N => N) port map(x => a, y => b, z => sum);

process
begin

	num1 <= 9;
	num2 <= 1;
	wait for 10 ns;

	num1 <= 2;
	num2 <= 2;
	wait for 10 ns;
	
end process;

end test;