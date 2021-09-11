library IEEE;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is
--port();
end test;

architecture tset_tse_tes_s of test is

component Register_File is
generic(N, M:integer);
port(
	RESET : IN std_logic;
	CLK : IN std_logic;

	WD : IN std_logic_vector(N-1 downto 0);
	WAddr : IN std_logic_vector(M-1 downto 0);
	Write : In STD_LOGIC;
	
	RA : IN std_logic_vector(M-1 downto 0);
	ReadA : IN std_logic;
	
	RB : IN std_logic_vector(M-1 downto 0);
	ReadB : IN std_logic;
	
	QA : OUT std_logic_vector(N-1 downto 0);
	QB : OUT std_logic_vector(N-1 downto 0)
);
end component;

signal clk, reset : std_logic;

signal WAddr, RA, RB : std_logic_vector(2 downto 0);
signal WD, QB, QA : std_logic_vector(4 downto 0);

signal write, read_a, read_b : std_logic;

begin

DUT : Register_File generic map(N => 5, M => 3) port map(RESET => reset, CLK => clk, WAddr => WAddr, RA => RA, RB => RB, WD => WD, QB => QB, QA => QA, Write => write, ReadA => read_a, ReadB => read_b);

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
	wait until rising_edge(clk);
	
	Write <= '1';
	
	-- Write to RF
	for i in 0 to 3 loop
		WAddr <= std_logic_vector(to_unsigned(2*i+1, 3));
		WD <= "01010";
		wait until rising_edge(clk);
		WAddr <= std_logic_vector(to_unsigned(2*i, 3));
		WD <= "10101";
		wait until rising_edge(clk);
	end loop;
	
	-- ReadA and ReadB
	for i in 0 to 3 loop
		RA <= std_logic_vector(to_unsigned(2*i, 3));
		RB <= std_logic_vector(to_unsigned(2*i+1, 3));
		read_a <= '1';
		read_b <= '1';
		wait until rising_edge(clk);
		wait for 100 ps;
		assert QA = "10101" report "QA IS WRONG" severity error;
		assert QB = "01010" report "QB IS WRONG" severity error;
		wait until falling_edge(clk);
	end loop;
	
	-- ReadB and ReadA
	for i in 0 to 3 loop
		RB <= std_logic_vector(to_unsigned(2*i, 3));
		RA <= std_logic_vector(to_unsigned(2*i+1, 3));
		read_a <= '1';
		read_b <= '1';
		wait until rising_edge(clk);
		wait for 100 ps;
		assert QB = "10101" report "QA IS WRONG" severity error;
		assert QA = "01010" report "QB IS WRONG" severity error;
		wait until falling_edge(clk);
	end loop;

	-- Reset
	reset <= '1';
	wait until rising_edge(clk);
	
	for i in 0 to 7 loop
		RA <= std_logic_vector(to_unsigned(i, 3));
		wait until rising_edge(clk);
		wait for 100 ps;
		assert QA = "00000" report "Reset not working" severity error;
		wait until falling_edge(clk);
	end loop;
	
end process;


end tset_tse_tes_s;
