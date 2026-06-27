library ieee;
use ieee.std_logic_1164.all;

entity half_adder is
-- cin and cout: carry-in and carry-out
port(
	a, b, cin	:	in std_logic;
	sum, cout	:	out std_logic
);
end half_adder;

architecture arch of half_adder is
begin

	sum <= a xor b xor cin;
	cout <= (a and b) or (a and cin) or (b and cin);
	
end arch;