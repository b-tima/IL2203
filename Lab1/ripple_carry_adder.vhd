library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity ripple_carry_adder is
Generic(N:integer);
port (x,y: in std_logic_vector(N-1 downto 0);
		z: out std_logic_vector(N-1 downto 0));
end ripple_carry_adder;

architecture structural of ripple_carry_adder is

component full_adder is
port(	a,b,cin : IN std_logic;
		sum,cout : OUT std_logic);
end component;

signal carry : std_logic_vector(N-1 downto 0);

begin

adder: for i in 0 to N-1 generate
	zero_index : if i = 0  generate
		fa: full_adder port map(a => x(0), b => y(0), cin => '0', sum => z(0), cout => carry(0));
	end generate;
	not_zero_index : if i > 0 generate
		fa: full_adder port map(a => x(i), b => y(i), cin => carry(i-1), sum => z(i), cout => carry(i));
	end generate;
end generate adder;

end structural;