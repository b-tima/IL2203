library IEEE;
use ieee.std_logic_1164.all;
use work.all;

entity full_adder is
port(	a,b,cin : IN std_logic;
		sum,cout : OUT std_logic);
end full_adder;

architecture dataflow of full_adder is

begin

sum <= a xor b xor cin;
cout <= (a and b) or (a and cin) or (b and cin);

end dataflow;
