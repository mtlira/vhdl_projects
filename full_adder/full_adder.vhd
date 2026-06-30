library ieee;
use ieee.std_logic_1164.all;

-- Full adder
entity full_adder is
-- cin and cout: carry-in and carry-out
port(
	a, b, cin	:	in std_logic;
	sum, cout	:	out std_logic
);
end full_adder;

architecture arch of full_adder is
begin

	sum <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
	
end arch;