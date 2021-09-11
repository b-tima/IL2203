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
	CLK : in std_logic;
	RESET : in std_logic;
	EN : std_logic;
	
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

signal clk, reset, en : std_logic;

begin

DUT : ALU generic map(N => N) port map(CLK => clk, RESET => reset, EN => en, OP => op, A => a, B => b, SUM => sum, Z_Flag => z, N_Flag => neg, O_Flag => o);

signal_generator : process
begin

loop
	clk <= '0';
	wait for 1 ns;
	clk <= '1';
	wait for 1 ns;
end loop;

end process;

process
begin
	reset <= '0';
	en <= '1';
	wait until rising_edge(clk);

	-- op = 000 sum
	op <= "000";
	a <= std_logic_vector(to_unsigned(5, N));
	b <= std_logic_vector(to_unsigned(10, N));
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum=std_logic_vector(to_unsigned(15, N)) report "sum != 15" severity error;
	wait until falling_edge(clk);
	
	-- op = 001 sub
	
	op <= "001";
	a <= std_logic_vector(to_unsigned(10, N));
	b <= std_logic_vector(to_unsigned(5, N));
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum=std_logic_vector(to_unsigned(5, N)) report "sub != 5" severity error;
	wait until falling_edge(clk);
	
	-- op = 010 and
	
	op <= "010";
	a <= "00110";
	b <= "00100";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "00100" report "and != 00100" severity error;
	wait until falling_edge(clk);
	
	-- op = 011 or
	
	op <= "011";
	a <= "01000";
	b <= "00110";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "01110" report "or != 01110" severity error;
	wait until falling_edge(clk);
	
	-- op = 100 xor

	op <= "100";
	a <= "00100";
	b <= "01000";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "01100" report "xor != 01100" severity error;
	wait until falling_edge(clk);
	
	-- op = 101 not
	
	op <= "101";
	a <= "01100";
	b <= "00101";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "10011" report "not != 10011" severity error;
	wait until falling_edge(clk);
	
	-- op = 110 mov
	
	op <= "110";
	a <= "00101";
	b <= "01010";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "00101" report "mov != 00101" severity error;
	wait until falling_edge(clk);
	
	-- op = 111
	
	op <= "111";
	a <= "01001";
	b <= "00110";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "00000" report "zero != 00000" severity error;
	wait until falling_edge(clk);
	
	-- Z_Flag
	
	op <= "111";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert z = '1' report "z != 1" severity error;
	wait until falling_edge(clk);
	
	op <= "110";
	a <= "01100";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert z = '0' report "z != 0" severity error;
	wait until falling_edge(clk);
	
	-- N_Flag
	
	op <= "001";
	a <= "00000";
	b <= "00001";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert neg = '1' report "n != 1" severity error;
	wait until falling_edge(clk);
	
	op <= "110";
	a <= "00001";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert neg = '0' report "n != 0" severity error;
	wait until falling_edge(clk);
	
	-- O_Flag
	
	op <= "001";
	a <= "10000";
	b <= "10000";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert o = '1' report "no underflow" severity error;
	wait until falling_edge(clk);
	
	op <= "000";
	a <= "01000";
	b <= "01000";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert o = '1' report "no overflow" severity error;
	wait until falling_edge(clk);
	
	op <= "000";
	a <= "00001";
	b <= "00001";
	wait until rising_edge(clk);
	wait for 100 ps;
	assert o = '0' report "o != 0" severity error;
	wait until falling_edge(clk);
	
	-- Reset
	
	op <= "110";
	a <= "10100";
	reset <= '1';
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "00000" report "reset didnt reset" severity error;
	wait until falling_edge(clk);
	
	-- EN
	
	op <= "110";
	a <= "10101";
	EN <= '1';
	reset <= '0';
	wait until rising_edge(clk);
	wait until falling_edge(clk);
	a <= "01010";
	EN <= '0';
	wait until rising_edge(clk);
	wait for 100 ps;
	assert sum = "10101" report "Enable didnt enable" severity error;
	
	wait for 100000000 ns;
	
end process;

end test;

