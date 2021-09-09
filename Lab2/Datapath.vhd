library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Datapath is
generic(	M : integer := 8;
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
end Datapath;

architecture bitch of Datapath is

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

signal sum : std_logic_vector(N-1 downto 0);
signal rf_input, alu_a, alu_b : std_logic_vector(N-1 downto 0);

begin

rf : Register_File generic map(N => N, M => M) port map(	RESET => RESET, 
																			CLK => CLK, 
																			WD => rf_input, 
																			WAddr => WAddr, 
																			Write => Write, 
																			RA => RA, 
																			ReadA => ReadA,
																			RB => RB,
																			ReadB => ReadB, 
																			QA => alu_a, 
																			QB => alu_b);
																			
																			
sweden_is_great : ALU generic map(N => N) port map(	RESET => RESET,
														CLK => CLK,
														EN => OE,
														OP => OP,
														A => alu_a,
														B => alu_b,
														SUM => sum,
														Z_Flag => Z_Flag,
														N_Flag => N_Flag,
														O_Flag => O_Flag);

process(IE)

begin
	if(IE = '1') then
		rf_input <= INPUT;
	else
		rf_input <= sum;
	end if;
end process;

process(OE)

begin
	if(OE = '1') then
		OUTPUT <= sum;
	else
		OUTPUT <= (others => 'Z');
	end if;
end process;

end bitch;