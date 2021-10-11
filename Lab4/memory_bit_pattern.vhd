library IEEE;
use work.all;
use work.micro_assembly.all;
use ieee.std_logic_1164.all;

entity memory_bit is end memory_bit;

architecture fake of memory_bit is
  
  constant nu3 : std_logic_vector(2 downto 0) := "000";
  
  type program is array(255 downto 0) of std_logic_vector(15 downto 0);
  signal ram : program := (
    (LDI & R5 & B"1_0000_0000"),
    (ADD & R5 & R5 & R5 & nu3),
    (ADD & R5 & R5 & R5 & nu3),
    (ADD & R5 & R5 & R5 & nu3),
    (LDI & R6 & B"0_0010_0000"),
    (LDI & R3 & B"0_0000_0011"),
    (ST & R6 & R3 & nu3 & nu3),
    (LDI & R1 & B"0_0000_0001"),
    (LDI & R0 & B"0_0000_1110"),
    (MOV & R2 & R0 & nu3 & nu3),
    (ADD & R2 & R2 & R1 & nu3),
    (iSUB & R0 & R0 & R1 & nu3),
    (BRZ & B"0000_0000_0011"),
    (NOP & R0 & R0 & R0 & nu3),
    (BRA & B"0000_1111_1100"),
    (ST & R6 & R2 & nu3 & nu3),
    (ST & R5 & R2 & nu3 & nu3),
    (BRA & B"0000_0000_0000"),
    others => (NOP & R0 & R0 & R0 & nu3)
  );
  
begin
  
end fake;
