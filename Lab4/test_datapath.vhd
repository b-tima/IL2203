library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity test_datapath is
end test_datapath;

architecture test of test_datapath is

component Datapath is
generic(	M : integer := 3;
			N : integer := 10
);
port(
	RESET : IN std_logic;
	CLK : IN std_logic;
	
	OP : IN std_logic_vector(2 downto 0);

	IE : IN std_logic;
	
	INPUT : IN std_logic_vector(N-1 downto 0);
	
	WAddr : IN std_logic_vector(M-1 downto 0);
	Write : IN std_logic;
	
	RA : IN std_logic_vector(M-1 downto 0);
	ReadA : IN std_logic;
	
	RB : IN std_logic_vector(M-1 downto 0);
	ReadB : IN std_logic;
	
	OE : IN std_logic;
	
	OUTPUT : OUT std_logic_vector(N-1 downto 0);
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
);
end component;

signal RESET : std_logic;
signal CLK : std_logic;

signal OP : std_logic_vector(2 downto 0);

signal IE : std_logic;

signal INPUT : std_logic_vector(4 downto 0);

signal WAddr : std_logic_vector(2 downto 0);
signal Write : std_logic;

signal RA : std_logic_vector(2 downto 0);
signal ReadA : std_logic;

signal RB : std_logic_vector(2 downto 0);
signal ReadB : std_logic;

signal OE : std_logic;

signal OUTPUT : std_logic_vector(4 downto 0);

signal Z_Flag : std_logic;
signal N_Flag : std_logic;
signal O_Flag : std_logic;

begin

DUT : Datapath generic map(N => 5, M => 3) port map(	RESET => RESET,
																		CLK => CLK,
																		OP => OP,
																		IE => IE,
																		INPUT => INPUT,
																		WAddr => WAddr,
																		Write => Write,
																		RA => RA,
																		ReadA => ReadA,
																		RB => RB,
																		ReadB => ReadB,
																		OE => OE,
																		OUTPUT => OUTPUT,
																		Z_Flag => Z_Flag,
																		N_Flag => N_Flag,
																		O_Flag => O_Flag);

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

	-- Check ciruit
	reset <= '1';
	wait until rising_edge(clk);
	reset <= '0';
	IE <= '1';
	WAddr <= "110";
	INPUT <= "00001";
	Write <= '1';
	wait until rising_edge(clk);
	WAddr <= "111";
	RA <= "110";
	RB <= "111";
	ReadA <= '1';
	ReadB <= '1';
	IE <= '0';
	OE <= '1';
	OP <= "000";
	for i in 0 to 2**5-1 loop
		--INPUT <= "00001";
		wait until rising_edge(clk);
		wait until rising_edge(clk);
		wait for 100 ps;
		assert OUTPUT=std_logic_vector(to_unsigned(i+1, 5)) report "sum is incorrect" severity error;
		wait until falling_edge(clk);
	end loop;
	
	wait for 1000000 ns;
end process;
																		
end test;