library IEEE;
use work.all;
use work.micro_assembly.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MCU_FSM is
generic(	M:integer := 3; 
			N:integer := 16);
port(
	CLK : IN std_logic;
	RESET : IN std_logic;
	
	Instruction : IN std_logic_vector(15 downto 0);
	
	Read_NWrite : OUT std_logic;
	Data_out : OUT std_logic_vector(N-1 downto 0);
	Address_out : OUT std_logic_vector(N-1 downto 0)
);
end MCU_FSM;

architecture mcu of MCU_FSM is

component Datapath is
generic(	M : integer;
			N : integer
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
end component;

component micro_code is
port(
	OP : IN std_logic_vector(3 downto 0);
	Z_N_O : IN std_logic;
	uPC : IN std_logic_vector(1 downto 0);
	
	OP_out : out std_logic_vector(2 downto 0);
	Read_NWrite : out std_logic;
	IE, OE : out std_logic;
	ReadA, ReadB, Write_out : out std_logic;
	Bypass : OUT std_logic_vector(1 downto 0);
	SEL : OUT std_logic_vector(1 downto 0);
	LE : OUT std_logic_vector(3 downto 0)
);
end component;

signal uPC : std_logic_vector(1 downto 0);

-- Registers
signal instruction_reg : std_logic_vector(N-1 downto 0);

-- uCode ctrl
signal uOP : std_logic_vector(3 downto 0);
signal sel : std_logic_vector(1 downto 0);
signal LE : std_logic_vector(3 downto 0);

-- Flags
signal Z, Neg, O : std_logic;
signal Z_N_O : std_logic;

-- DP CTRL
signal OP : std_logic_vector(2 downto 0);
signal Din : std_logic_vector(N-1 downto 0);
signal Bypass : std_logic_vector(1 downto 0);
signal OFFSET : std_logic_vector(N-1 downto 0);
signal ReadA, ReadB, Write : std_logic;
signal IE, OE : std_logic;

-- DP Addr
signal RA : std_logic_vector(M-1 downto 0);
signal RB : std_logic_vector(M-1 downto 0);
signal WAddr : std_logic_vector(M-1 downto 0);

-- DP output
signal Dout : std_logic_vector(N-1 downto 0);

begin

uPC_counter_proc : process(CLK)
begin
	if rising_edge(CLK) then
		uPC <= std_logic_vector(unsigned(uPC) + 1);
	end if;
end process uPC_counter_proc;

LE_proc : process(CLK)
begin
	if rising_edge(CLK) then
		if LE(0) = '1' then
			instruction_reg <= Instruction;
		end if;
		
		if LE(1) = '1' then
			Address_out <= Dout;
		end if;
		
		if LE(2) = '1' then
			Data_out <= Dout;
		end if;
		
		if LE(3) = '1' then
			
		end if;
	end if;
end process LE_proc;

dp : Datapath generic map(N => N, M => M) port map(RESET => RESET,
																	CLK => CLK,
																	IE => IE,
																	OE => OE,
																	OP => OP,
																	Bypass => Bypass,
																	OFFSET => OFFSET,
																	ReadA => ReadA,
																	ReadB => ReadB,
																	Write => Write,
																	Input => Din,
																	WAddr => WAddr,
																	RA => RA,
																	RB => RB,
																	OUTPUT => Dout,
																	Z_Flag => Z,
																	N_Flag => Neg,
																	O_Flag => O);
																	
ucode : micro_code port map(	OP => instruction_reg(15 downto 12),
										Z_N_O => Z_N_O,
										uPC => uPC,
										OP_out => OP,
										Read_NWrite => Read_NWrite,
										IE => IE,
										OE => OE,
										ReadA => ReadA,
										ReadB => ReadB,
										Write_out => Write,
										Bypass => Bypass,
										SEL => SEL,
										LE => LE);

										
										
end mcu;

