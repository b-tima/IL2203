library IEEE;
use work.all;
use work.micro_assembly.all;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity micro_code is
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
end micro_code;

architecture ROM of micro_code is
	
-- IE, OE, ReadA, ReadB, Write, ALU, Bypass, Read_NWrite, SEL, LE

constant ADD_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '1', '1', opADD, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant SUB_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '1', '1', opSUB, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant AND_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '1', '1', opAND, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant OR_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '1', '1', opOR, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant XOR_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '1', '1', opXOR, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant NOR_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '0', '1', opNOT, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant MOV_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '1', '0', '1', opMOV, No_B, Read, ZERO, LE_FLAG),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant NOP_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant LD_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opINC, No_B, Read, ZERO, LE_IR),					-- Latch instruction
	('0', '1', '1', '0', '0', opMOV, No_B, Read, ZERO, LE_ADDR),	-- Latch Memory ADDR
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),					-- Increment PC and Latch instruction ADDR
	('1', '1', '1', '0', '1', opMOV, No_B, Read, ZERO, LE_NONE)					-- Store DIN in register
);

constant ST_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Write, ZERO, LE_IR),
	('0', '1', '1', '0', '0', opMOV, No_B, Read, ZERO, LE_DATA),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '1', '1', '0', '0', opMOV, No_B, Read, ZERO, LE_ADDR)
);

constant LDI_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),     -- Load next instruction
	('1', '0', '0', '0', '1', opMOV, No_B, Read, ZERO, LE_NONE),   -- Read instruction data as input
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),	    -- Fetch next instruction
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)	   -- NOP
);

constant BRZ_INSTRUCTION_NO_Z : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opINC, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRZ_INSTRUCTION_Z : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opADD, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRN_INSTRUCTION_NO_N : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opINC, B_B, Read, NEG, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRN_INSTRUCTION_N : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opADD, B_B, Read, NEG, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRO_INSTRUCTION_NO_O : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opINC, B_B, Read, OVF, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRO_INSTRUCTION_O : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opADD, B_B, Read, OVF, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

constant BRA_INSTRUCTION : uprogram :=(
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_IR),
	('0', '1', '1', '0', '1', opADD, B_B, Read, ZERO, LE_ADDR),
	('0', '0', '0', '0', '0', opADD, No_B, Read, ZERO, LE_NONE),
	('0', '0', '0', '0', '0', opMOV, No_B, Read, ZERO, LE_NONE)
);

signal running_uprogram : uprogram;
signal running_instruction : instruction;

begin

OP_out <= running_instruction.ALU;
Read_NWrite <= running_instruction.Read_NWrite;
IE <= running_instruction.IE;
OE <= running_instruction.OE;
ReadA <= running_instruction.ReadA;
ReadB <= running_instruction.ReadB;
Write_out <= running_instruction.Write;
Bypass <= running_instruction.Bypass;
SEL <= running_instruction.SEL;
LE <= running_instruction.LE;

running_instruction <= running_uprogram(3-to_integer(unsigned(uPC)));

with OP & Z_N_O select running_uprogram <=
	ADD_INSTRUCTION when "00000",
	ADD_INSTRUCTION when "00001",
	SUB_INSTRUCTION when "00010",
	SUB_INSTRUCTION when "00011",
	AND_INSTRUCTION when "00100",
	AND_INSTRUCTION when "00101",
	OR_INSTRUCTION when "00110",
	OR_INSTRUCTION when "00111",
	XOR_INSTRUCTION when "01000",
	XOR_INSTRUCTION when "01001",
	NOR_INSTRUCTION when "01010",
	NOR_INSTRUCTION when "01011",
	MOV_INSTRUCTION when "01100",
	MOV_INSTRUCTION when "01101",
	NOP_INSTRUCTION when "01110",
	NOP_INSTRUCTION when "01111",
	LD_INSTRUCTION when "10000",
	LD_INSTRUCTION when "10001",
	ST_INSTRUCTION when "10010",
	ST_INSTRUCTION when "10011",
	LDI_INSTRUCTION when "10100",
	LDI_INSTRUCTION when "10101",
	BRZ_INSTRUCTION_NO_Z when "11000",
	BRZ_INSTRUCTION_Z when "11001",
	BRN_INSTRUCTION_NO_N when "11010",
	BRN_INSTRUCTION_N when "11011",
	BRO_INSTRUCTION_NO_O when "11100",
	BRO_INSTRUCTION_O when "11101",
	BRA_INSTRUCTION when "11110",
	BRA_INSTRUCTION when "11111",
	NOP_INSTRUCTION when others;

end ROM;
