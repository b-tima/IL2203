library IEEE;
use ieee.std_logic_1164.all;

Entity full_adder is
port(	a,b,cin:IN std_logic;
		cout,sum:OUT std_logic);
end full_adder;

architecture behave of full_adder is

begin
	cout <= (a and b) or (a and cin) or (b and cin);
	sum <= a xor b xor cin;
end behave;

architecture structure of full_adder is

procedure and2_gate(signal a,b: in std_logic; signal q: out std_logic) is
begin

q <= a and b;

end and2_gate;

procedure or3_gate(signal a,b,c: in std_logic; signal q: out std_logic) is
begin

q <= a or b or c;

end or3_gate;

procedure xor3_gate(signal a,b,c: in std_logic; signal q: out std_logic) is
begin

q <= a xor b xor c;

end xor3_gate;

begin

end structure;
