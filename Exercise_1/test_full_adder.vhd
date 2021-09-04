library work;

architecture test_full_adder of test is

Component full_adder is
port(	a,b,cin:IN std_logic;
		cout,sum:OUT std_logic);
end component;
	signal a,b,cin : std_logic := '0';
	signal cout,sum : std_logic;
begin
	DUT: full_adder port map(a,b,cin,cout,sum);
	a <= not(a) after 5 ns;
	b <= not(b) after 10 ns;
	cin <= not(cin) after 20 ns;
end test_full_adder;