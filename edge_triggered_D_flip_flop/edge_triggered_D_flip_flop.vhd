library ieee;
use ieee.std_logic_1164.all;

-- NAND edge-triggered D flip flop

entity edge_triggered_D_flip_flop is
	port (
		set_bar, reset_bar:	in std_logic;
		d, clock				:	in std_logic;
		q, q_bar				: 	out std_logic
	);
end entity;

architecture behavioral of edge_triggered_D_flip_flop is

	signal w: std_logic_vector(8 downto 0);

begin

	w(0) <= clock;
	w(1) <= not (w(6) and d and w(2));
	w(2) <= reset_bar;
	w(3) <= not (w(4) and w(0) and w(2));
	w(4) <= not (w(5) and w(1) and w(3));
	w(5) <= set_bar;
	w(6) <= not (w(3) and w(0) and w(1));
	w(7) <= not (w(8) and w(6) and reset_bar);
	w(8) <= not (w(5) and w(3) and w(7));
	
	q <= w(8);
	q_bar <= w(7);
	

end architecture;