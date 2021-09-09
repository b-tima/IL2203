library IEEE;
use work.all;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
generic(N:integer);
port(
	CLK : in std_logic;
	RESET : in std_logic;
	EN : std_logic;
	
	OP : in std_logic_vector(2 downto 0);
	A,B : in std_logic_vector(N-1 downto 0);
	SUM : out std_logic_vector(N-1 downto 0);
	
	Z_Flag : out std_logic;
	N_Flag : out std_logic;
	O_Flag : out std_logic
);
end ALU;

architecture behave of ALU is

signal sum_rtl : std_logic_vector(N-1 downto 0);
signal sum_or : std_logic_vector(N-2 downto 0);
signal A_u, B_u : signed(N-1 downto 0);

signal z_tmp, n_tmp, o_tmp : std_logic;

begin
	A_u <= signed(A);
	B_u <= signed(B);
	
	process(CLK)
	begin
		if rising_edge(CLK) then
			if(EN = '1') then
				SUM <= sum_rtl;
				Z_Flag <= z_tmp;
				N_Flag <= n_tmp;
				O_Flag <= o_tmp;
			end if;
		end if;
	end process;
	
	process(RESET)
	begin
		if (reset = '1') then
			sum_rtl <= (others => '0');
			z_tmp <= '0';
			n_tmp <= '0';
			o_tmp <= '0';
		else
			case OP is
				when "000" => 
					sum_rtl <= std_logic_vector(A_u+B_u);
				when "001" =>
					sum_rtl <= std_logic_vector(A_u-B_u);
				when "010" => 
					sum_rtl <= A and B;
				when "011" =>
					sum_rtl <= A or B;
				when "100" => 
					sum_rtl <= A xor B;
				when "101" => 
					sum_rtl <= not A;
				when "110" => 
					sum_rtl <= A;
				when others => 
					sum_rtl <= (others => '0');
			end case;
				
			-- Z_Flag
			sum_or(N-2) <= sum_rtl (N-1) or sum_rtl (N-2);
			sampe_v2 : for i in N-3 downto 1 loop
				sum_or(i) <= sum_rtl (i) or sum_or(i+1);
			end loop;
			z_tmp <= not (sum_or(1) or sum_rtl (0));
				
			-- N_Flag (assuming two's complement)
			n_tmp <= sum_rtl(N-1);
			
			-- O_Flag
			o_tmp <= ((A(N-1) and B(N-1)) and not sum_rtl(N-1)) or ((not A(N-1)) and (not B(N-1)) and sum_rtl(N-1));
		end if;
	end process;
	
end behave;
