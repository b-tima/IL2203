library IEEE;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library altera_mf;

entity Computer is 
port(
	CLK, RESET : in std_logic;
	PIO : out std_logic_vector(15 downto 0)
);
end Computer;

architecture structural of Computer is

component MCU_FSM is
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
end component;

component ram IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock		: IN STD_LOGIC;
		data		: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
END component;

component GPIO is
port(
	CLK, RESET : IN std_logic;

	IE : IN std_logic;
	Din : IN std_logic_vector(15 downto 0);
	Dout : OUT std_logic_vector(15 downto 0)
);
end component;

signal address : std_logic_vector(7 downto 0);
signal mcu_address : std_logic_vector(15 downto 0);

signal ram_data_in, ram_data_out : std_logic_vector(15 downto 0);

signal wren_ram, wren_gpio, RnW : std_logic;

signal tmp_ram_addr_masked : std_logic_vector(15 downto 0);
signal tmp_gpio_addr_masked : std_logic_vector(15 downto 0);

begin

address <= mcu_address(7 downto 0);

mcu : MCU_FSM generic map(N => 16, M => 3) port map(	CLK => CLK,
																		RESET => RESET,
																		Data_in => ram_data_out,
																		Read_NWrite => RnW,
																		Data_out => ram_data_in,
																		Address_out => mcu_address);
																		
memory : ram port map(	address => address,
								clock => CLK,
								data => ram_data_in,
								wren => wren_ram,
								q => ram_data_out);

gpio_per : GPIO port map(	CLK => CLK,
									RESET => RESET,
									IE => wren_gpio,
									Din => ram_data_in,
									Dout => PIO);
								
tmp_ram_addr_masked <= mcu_address and std_logic_vector(to_unsigned(16#FF00#, 16));
								
with RnW & mcu_address select wren_gpio <=
		'1' when B"1_1111_0000_0000_0000",
		'0' when others;
		
with RnW & tmp_ram_addr_masked select wren_ram <=
		'0' when B"1_0000_0000_0000_0000",
		'1' when others;
								
end structural;
