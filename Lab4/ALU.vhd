library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

entity ALU is
generic(N:integer);
port(
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
signal sub_overflow, add_overflow : std_logic;

begin
	A_u <= signed(A);
	B_u <= signed(B);
	
	Z_Flag <= z_tmp;
	N_Flag <= n_tmp;
	O_Flag <= o_tmp;
	SUM <= sum_rtl;
	
	with OP select sum_rtl <= 
		std_logic_vector(A_u+B_u) when "000",
		std_logic_vector(A_u-B_u) when "001",
		A and B when "010",
		A or B when "011",
		A xor B when "100",
		not A when "101",
		A when "110",
		std_logic_vector(A_u+1) when others;
	
	-- Z_Flag
	sum_or(N-2) <= sum_rtl (N-1) or sum_rtl (N-2);
	sampe_v2 : for i in N-3 downto 1 generate
		sum_or(i) <= sum_rtl (i) or sum_or(i+1);
	end generate;
	z_tmp <= not (sum_or(1) or sum_rtl (0));
		
	-- N_Flag (assuming two's complement)
	n_tmp <= sum_rtl(N-1);
	
	-- O_Flag
	
    o_tmp <= add_overflow or sub_overflow;
	
	process(OP, A, B, sum_rtl)
	begin
		if OP = "001" then
			if A(N-1) = '1' and B(N-1) = '0' and sum_rtl(N-1) = '0' then
				sub_overflow<= '1';
			elsif A(N-1) = '0' and B(N-1) = '1' and sum_rtl(N-1) = '1' then
				sub_overflow <= '1';
			else
				sub_overflow <= '0';
			end if;
		elsif OP = "000" then
		  add_overflow <= ((A(N-1) and B(N-1)) and not sum_rtl(N-1)) or ((not A(N-1)) and (not B(N-1)) and sum_rtl(N-1));
		else
		  add_overflow <= '0';
		  sub_overflow <= '0';
		end if;
	end process;
	
end behave;
