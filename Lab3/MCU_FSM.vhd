library IEEE;
use work.all;
use ieee.std_logic_1164.all;

entity MCU_FSM is
generic(M:integer, N:integer);
port(
	CLK : IN std_logic;
	RESET : IN std_logic;
	
	Instruction : IN std_logic_vector(15 downto 0);
	
	Read_NWrite : OUT std_logic;
	Data_out : OUT std_logic_vector(N-1 downto 0);
	Address_out : OUT std_logic_vector(M-1 downto 0);
);
end MCU_FSM;

architecture mcu of MCU_FSM is
begin



end mcu;

