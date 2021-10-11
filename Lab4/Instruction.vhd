library IEEE;
use work.all;
use ieee.std_logic_1164.all;

package micro_assembly is

	subtype opcode is std_logic_vector(2 downto 0);
	subtype i_opcode is std_logic_vector(3 downto 0);
	subtype reg is std_logic_vector(2 downto 0);
	subtype bypass is std_logic_vector(1 downto 0);
	subtype sel is std_logic_vector(1 downto 0);
	subtype latching is std_logic_vector(3 downto 0);
	subtype rw is std_logic;
	type Instruction is record
		IE:std_logic;
		OE:std_logic;
		ReadA:std_logic;
		ReadB:std_logic;
		Write:std_logic;
		ALU:opcode;
		Bypass:bypass;
		Read_NWrite:rw;
		SEL:sel;
		LE:latching;
	end record;
	type uprogram is array(3 downto 0) of Instruction;
	
	-- Operations
	constant opADD : opcode := "000";
	constant opSUB : opcode := "001";
	constant opAND : opcode := "010";
	constant opOR : opcode := "011";
	constant opXOR : opcode := "100";
	constant opNOT : opcode := "101";
	constant opMOV : opcode := "110";
	constant opINC : opcode := "111";
	
	-- Instructions
	constant ADD : i_opcode := '0' & opADD;
	constant iSUB : i_opcode := '0' & opSUB;
	constant iAND : i_opcode := '0' & opAND;
	constant iOR : i_opcode := '0' & opOR;
	constant iXOR : i_opcode := '0' & opXOR;
	constant iNOT : i_opcode := '0' & opNOT;
	constant MOV : i_opcode := '0' & opMOV;
	constant INC : i_opcode := '0' & opMOV;
	constant NOP : i_opcode := "0111";
	constant LD : i_opcode := "1000";
	constant ST : i_opcode := "1001";
	constant LDI : i_opcode := "1010";
	constant BRZ : i_opcode := "1100";
	constant BRN : i_opcode := "1101";
	constant BRO : i_opcode := "1110";
	constant BRA : i_opcode := "1111";
	
	-- Registers
	constant R0 : reg := "000";
	constant R1 : reg := "001";
	constant R2 : reg := "010";
	constant R3 : reg := "011";
	constant R4 : reg := "100";
	constant R5 : reg := "101";
	constant R6 : reg := "110";
	constant R7 : reg := "111";
	
	-- Bypass
	constant No_B : bypass := "00";
	constant A_B : bypass := "01";
	constant B_B : bypass := "10";
	
	-- SEL
	constant ZERO : sel := "00";
	constant NEG : sel := "01";
	constant OVF : sel := "10";
	
	-- LE
	constant LE_NONE : latching := "0000";
	constant LE_IR : latching := "0001";
	constant LE_ADDR : latching := "0010";
	constant LE_DATA : latching := "0100";
	constant LE_FLAG : latching := "1000";
	
	-- Read NWrite
	constant Read : rw := '1';
	constant Write : rw := '0';
end micro_assembly;
