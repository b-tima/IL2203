library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Datapath is
generic(	M : integer := 2;
			N : integer := 4
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
	
	Bypass : IN std_logic_vector(1 downto 0);
	Offset: IN std_logic_vector(N-1 downto 0);
	
	OE : IN std_logic;
	
	OUTPUT : OUT std_logic_vector(N-1 downto 0);
	
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
);
end Datapath;

architecture dp of Datapath is

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

signal sum : std_logic_vector(N-1 downto 0);
signal rf_input, alu_a, alu_b : std_logic_vector(N-1 downto 0);

signal qa_out : std_logic_vector(N-1 downto 0);
signal qb_out : std_logic_vector(N-1 downto 0);

signal internal_a_addr : std_logic_vector(M-1 downto 0);
signal internal_read_a : std_logic;
signal internal_waddr : std_logic_vector(M-1 downto 0);

begin

rf : Register_File generic map(N => N, M => M) port map(	RESET => RESET,
																			CLK => CLK,
																			WD => rf_input,
																			WAddr => internal_waddr,
																			Write => Write,
																			RA => internal_a_addr,
																			ReadA => internal_read_a,
																			RB => RB,
																			ReadB => ReadB,
																			QA => qa_out,
																			QB => qb_out);
																			
																			
the_best_alu_in_kista : ALU generic map(N => N) port map(	OP => OP,
																				A => alu_a,
																				B => alu_b,
																				SUM => sum,
																				Z_Flag => Z_Flag,
																				N_Flag => N_Flag,
																				O_Flag => O_Flag);
																																						
with IE select rf_input <=
		INPUT when '1',
		sum when others;
		
with OE select OUTPUT <=
		sum when '1',
		(others => 'Z') when others;

with Bypass(0) select alu_a <=
		Offset when '1',
		qa_out when '0',
		(others => 'X') when others;
		
with Bypass(1) select alu_b <=
		Offset when '1',
		qb_out when '0',
		(others => 'X') when others;

with Bypass(1) select internal_read_a <=
		ReadA when '0',
		'1' when '1',
		'X' when others;

with Bypass(1) select internal_a_addr <=
		RA when '0',
		(others => '1') when '1',
		(others => 'X') when others;
	
with Bypass(1) select internal_waddr <=
      WAddr when '0',
      internal_a_addr when '1',
      (others => 'X') when others;
		
end dp;
