library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity Register_File is
generic(N, M:integer);
port(
	RESET : IN std_logic;
	CLK : IN std_logic;

	WD : IN std_logic_vector(N-1 downto 0);
	WAddr : IN std_logic_vector(M-1 downto 0);
	Write : In STD_LOGIC;
	
	RA : IN std_logic_vector(M-1 downto 0);
	ReadA : IN std_logic;
	
	RB : IN std_logic_vector(M-1 downto 0);
	ReadB : IN std_logic;
	
	fingal: out std_logic_vector(N-1 downto 0);
	
	QA : OUT std_logic_vector(N-1 downto 0);
	QB : OUT std_logic_vector(N-1 downto 0)
);
end Register_File;

architecture fuckyou of Register_File is

type reg is array (2**M - 1 downto 0) of std_logic_vector(N-1 downto 0);
signal register_arr : reg;

signal qa_tmp : std_logic_vector(N-1 downto 0);
signal qb_tmp : std_logic_vector(N-1 downto 0);

begin

with ReadA select QA <=
	register_arr(to_integer(unsigned(RA))) when '1',
	(others => '0') when others;

with ReadB select QB <=
	register_arr(to_integer(unsigned(RB))) when '1',
	(others => '0') when others;
	
fingal<= register_arr(6);

process(CLK)
begin
	if rising_edge(CLK) then
		if(RESET='1') then
			for i in 2**M - 1 downto 0 loop
				register_arr(i) <= (others => '0');
			end loop;
		elsif(Write = '1') then
			register_arr(to_integer(unsigned(WAddr))) <= WD;
		end if;
	end if;
end process;

end fuckyou;
