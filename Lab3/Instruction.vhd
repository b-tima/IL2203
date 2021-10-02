library IEEE;
use work.all;
use ieee.std_logic_1164.all;

package micro_assembly is

	subtype opcode is std_logic_vector(3 downto 0);
	subtype bypass is std_logic_vector(1 downto 0);
	type Instruction is record
		IE:std_logic;
		OE:std_logic;
		Write,ReadA,ReadB:std_logic;
		ALU:opcode;
		Bypass:std_logic_vector(1 downto 0);
	end record;
	type uprogram is array(4) of Instruction;
	
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
end micro_assembly;
