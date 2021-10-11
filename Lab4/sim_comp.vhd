library IEEE;
use work.all;
use ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

entity sim_comp is end sim_comp;

architecture sim of sim_comp is
  
component Computer is 
port(
	CLK, RESET : in std_logic;
	PIO : out std_logic_vector(15 downto 0)
);
end component;
  
signal CLK : std_logic := '0';
signal RESET : std_logic := '1';

signal PIO : std_logic_vector(15 downto 0);
  
begin
  
comp : Computer port map(CLK => CLK, RESET => RESET, PIO => PIO);
  
process
  
begin
  
  CLK <= not CLK;
  wait for 1 ns;
  
end process;
  
end sim;
