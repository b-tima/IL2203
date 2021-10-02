library IEEE;
use work.all;
use work.micro_assembly.all;
use ieee.std_logic_1164.all;

entity micro_code is
port(
	OP : IN std_logic_vector(3 downto 0);
	Z_N_O : IN std_logic;
	uPC : IN std_logic;
	
	OP_out : out std_logic_vector(2 downto 0);
	Read_NWrite : out std_logic;
	IE, OE, Write : out std_logic;
	ReadA, ReadB : std_logic;
	Bypass : OUT std_logic_vector(1 downto 0);
);
end micro_code;

architecture ROM of micro_code is

-- 	type Instruction is record
		IE:std_logic;
		OE:std_logic;
		Write,ReadA,ReadB:std_logic;
		ALU:opcode;
		Bypass:std_logic_vector(1 downto 0);
	end record;
	
-- IE, OE, Write, ReadA, ReadB, ALU, Bypass, Read_NWrite, 

signal ADD_INSTRUCTION : uprogram :=(
	('0', ),
	(),
	(),
	()
);

begin

end ROM;
