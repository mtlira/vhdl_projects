library ieee;
use ieee.std_logic_1164.all;

-- Ripple Carry Adder
entity rc_adder is
	generic(
		BIT_SIZE	:	natural := 8
	);
	
	port(
		A, B	: 	in	std_logic_vector(BIT_SIZE - 1 downto 0);
		SUM	: 	out std_logic_vector(BIT_SIZE - 1 downto 0);
		CARRY	:	out std_logic
	);
end rc_adder;

architecture arch of rc_adder is

	component full_adder is
	-- cin and cout: carry-in and carry-out
	port(
		a, b, cin	:	in std_logic;
		sum, cout	:	out std_logic
	);
	end component;

	signal carry_w : std_logic_vector(BIT_SIZE - 1 downto 0);

begin

	-- Full adder 0
	carry_w(0) <= '0';
	ha_inst_0: full_adder port map(
		a 		=>	A(0),
		b 		=>	B(0),
		cin	=>	carry_w(0),
		cout	=> carry_w(1),
		sum 	=>	SUM(0)
	);
	
	-- Full adder i
	loop1	:	for i in 1 to BIT_SIZE - 2 generate 
	
		ha_inst_i: full_adder port map (
			a => A(i),
			b => B(i),
			cin => carry_w(i),
			cout	=>	carry_w(i+1),
			sum	=>	SUM(i)
			
		);
	end generate loop1;
	
	-- Full adder n
	ha_inst_n: full_adder port map(
		a 		=>	A(BIT_SIZE-1),
		b 		=>	B(BIT_SIZE-1),
		cin	=>	carry_w(BIT_SIZE-1),
		cout	=> CARRY,
		sum 	=>	SUM(BIT_SIZE-1)
	);

end arch;