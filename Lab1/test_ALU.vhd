library ieee;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test_ALU is
generic(N:integer := 5);
end test_ALU;

architecture test of test_ALU is

component ALU is
generic(N:integer);
port(
	OP : in std_logic_vector(2 downto 0);
	A,B : in std_logic_vector(N-1 downto 0);
	SUM : out std_logic_vector(N-1 downto 0);
	
	Z_Flag : out std_logic;
	N_Flag : out std_logic;
	O_Flag : out std_logic
);
end component;

signal op : std_logic_vector(2 downto 0);
signal a, b, sum : std_logic_vector(N-1 downto 0);

signal z, neg, o : std_logic;

begin

DUT : ALU generic map(N => N) port map(OP => op, A => a, B => b, SUM => sum, Z_Flag => z, N_Flag => neg, O_Flag => o);

process
begin

	-- op = 000 sum
	
	op <= "000";
	a <= std_logic_vector(to_unsigned(5, N));
	b <= std_logic_vector(to_unsigned(10, N));
	wait for 1 ns;
	assert sum=std_logic_vector(to_unsigned(15, N)) report "sum != 15" severity error;
	wait for 1 ns;
	
	-- op = 001 sub
	
	op <= "001";
	a <= std_logic_vector(to_unsigned(10, N));
	b <= std_logic_vector(to_unsigned(5, N));
	wait for 1 ns;
	assert sum=std_logic_vector(to_unsigned(5, N)) report "sub != 5" severity error;
	wait for 1 ns;
	
	-- op = 010 and
	
	op <= "010";
	a <= "00110";
	b <= "00100";
	wait for 1 ns;
	assert sum = "00100" report "and != 00100" severity error;
	wait for 1 ns;
	
	-- op = 011 or
	
	op <= "011";
	a <= "01000";
	b <= "00110";
	wait for 1 ns;
	assert sum = "01110" report "or != 01110" severity error;
	wait for 1 ns;
	
	-- op = 100 xor

	op <= "100";
	a <= "00100";
	b <= "01000";
	wait for 1 ns;
	assert sum = "01100" report "xor != 01100" severity error;
	wait for 1 ns;
	
	-- op = 101 not
	
	op <= "101";
	a <= "01100";
	b <= "00101";
	wait for 1 ns;
	assert sum = "10011" report "not != 10011" severity error;
	wait for 1 ns;
	
	-- op = 110 mov
	
	op <= "110";
	a <= "00101";
	b <= "01010";
	wait for 1 ns;
	assert sum = "00101" report "mov != 00101" severity error;
	wait for 1 ns;
	
	-- op = 111
	
	op <= "111";
	a <= "01001";
	b <= "00110";
	wait for 1 ns;
	assert sum = "00000" report "zero != 00000" severity error;
	wait for 1 ns;
	
	-- Z_Flag
	
	op <= "111";
	wait for 1 ns;
	assert z = '1' report "z != 1" severity error;
	wait for 1 ns;
	
	op <= "110";
	a <= "01100";
	wait for 1 ns;
	assert z = '0' report "z != 0" severity error;
	wait for 1 ns;
	
	-- N_Flag
	
	op <= "001";
	a <= "00000";
	b <= "00001";
	wait for 1 ns;
	assert neg = '1' report "n != 1" severity error;
	wait for 1 ns;
	
	op <= "110";
	a <= "00001";
	wait for 1 ns;
	assert neg = '0' report "n != 0" severity error;
	wait for 1 ns;
	
	-- O_Flag
	
	op <= "001";
	a <= "10000";
	b <= "10000";
	wait for 1 ns;
	assert o = '1' report "no underflow" severity error;
	wait for 1 ns;
	
	op <= "000";
	a <= "01000";
	b <= "01000";
	wait for 1 ns;
	assert o = '1' report "no overflow" severity error;
	wait for 1 ns;
	
	op <= "000";
	a <= "00001";
	b <= "00001";
	wait for 1 ns;
	assert o = '0' report "o != 0" severity error;
	wait for 1 ns;
	
	op <= "001";
	a <= "01111";
	b <= "10000";
	wait for 1 ns;
	assert o = '1' report "o != 1" severity error;
	wait for 1 ns;
	
	op <= "001";
	a <= "10000";
	b <= "01111";
	wait for 1 ns;
	assert o = '1' report "o != 1" severity error;
	wait for 1 ns;
	
	wait for 100000000 ns;
	
end process;

end test;

