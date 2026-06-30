library ieee;
use ieee.std_logic_1164.all;

entity tb_edge_triggered_D_flip_flop is
end entity;

architecture tb of tb_edge_triggered_D_flip_flop is

	signal set_bar, reset_bar, d, q, q_bar: std_logic;
	signal clock: std_logic := '0';

	component edge_triggered_D_flip_flop is
		port (
			set_bar, reset_bar:	in std_logic;
			d, clock				:	in std_logic;
			q, q_bar				: 	out std_logic
		);
	end component;

begin

	i1: edge_triggered_D_flip_flop port map (
		set_bar 		=> set_bar,
		reset_bar 	=> reset_bar,
		d 				=> d,
		clock 		=> clock,
		q 				=> q,
		q_bar 		=> q_bar
		);
		
	set_bar <= '1';
	reset_bar <= '0';

	clock <= not clock after 20 ns;

		
	p: process is
	begin
		d <= 	'0',
				'1' after 15 ns,
				'0' after 30 ns,
				'1' after 60 ns,
				'0' after 70 ns,
				'1' after 80 ns,
				'0' after 90 ns,
				'0' after 125 ns,
				'1' after 175 ns,
				'0' after 250 ns,
				'1' after 270 ns,
				'0' after 300 ns,
				'1' after 370 ns;
				wait;
	end process p;
end architecture;