library IEEE;
use work.all;
use ieee.std_logic_1164.all;

package micro_assembly is

	subtype opcode is std_logic_vector(2 downto 0);
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
