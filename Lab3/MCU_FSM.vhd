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
	
	Data_in : IN std_logic_vector(15 downto 0);
	
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
signal instruction_reg : std_logic_vector(N-1 downto 0) := "0111000000000000";
signal Z_N_O_reg : std_logic;

-- uCode ctrl
signal uOP : std_logic_vector(3 downto 0);
signal sel : std_logic_vector(1 downto 0);
signal LE : std_logic_vector(3 downto 0);

-- Flags
signal Z, Neg, O : std_logic;
signal Z_reg : std_logic := '0';
signal Neg_reg : std_logic := '0';
signal O_reg : std_logic := '0';
signal Z_N_O : std_logic := '0';

-- DP CTRL
signal OP : std_logic_vector(2 downto 0);
signal DPInput : std_logic_vector(N-1 downto 0);
signal Bypass : std_logic_vector(1 downto 0);
signal OFFSET : std_logic_vector(N-1 downto 0);
signal ReadA, ReadB, Write : std_logic;
signal IE, OE : std_logic;

-- DP Addr
signal RA : std_logic_vector(M-1 downto 0);
signal RA_real : std_logic_vector(M-1 downto 0);
signal RB : std_logic_vector(M-1 downto 0);
signal WAddr : std_logic_vector(M-1 downto 0);

-- DP output
signal Dout : std_logic_vector(N-1 downto 0);

begin

WAddr <= instruction_reg(11 downto 9);
RA <= instruction_reg(8 downto 6);
RB <= instruction_reg(5 downto 3);
OFFSET <= std_logic_vector(resize(signed(instruction_reg(8 downto 0)), N));

with instruction_reg(15 downto 12) & uPC select RA_real <=
    instruction_reg(5 downto 3) when "100101",
    RA when others;

with instruction_reg(15 downto 12) select DPInput <=
		Data_in when "1000",
		std_logic_vector(resize(signed(instruction_reg(8 downto 0)), N)) when "1010",
		(others => 'X') when others;

uPC_counter_proc : process(CLK, RESET)
begin
	if RESET = '1' then
		uPC <= "00";
		Address_out <= (others => '0');
    Data_out <= (others => '0');
	elsif rising_edge(CLK) then
		uPC <= std_logic_vector(unsigned(uPC) + 1);
		if LE(0) = '1' then
			instruction_reg <= Data_in;
		end if;
		
		if LE(1) = '1' then
			Address_out <= Dout;
		end if;
		
		if LE(2) = '1' then
			Data_out <= Dout;
		end if;
		
		if LE(3) = '1' then
      Z_reg <= Z;
      Neg_reg <= Neg;
      O_reg <= O;
		end if;
	end if;
end process uPC_counter_proc;

with SEL select Z_N_O <=
		Z_reg when "00",
		Neg_reg when "01",
		O_reg when "10",
		'X' when others;

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
																	Input => DPInput,
																	WAddr => WAddr,
																	RA => RA_real,
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

