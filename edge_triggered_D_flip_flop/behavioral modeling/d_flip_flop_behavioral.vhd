library ieee;
use ieee.std_logic_1164.all;

entity d_flip_flop_behavioral is
	port (
		clock, d, set_bar, reset_bar	:	in std_logic;
		q, q_bar								:	out std_logic
	);
end entity;

architecture behavioral of d_flip_flop_behavioral is
	signal q_int : std_logic;
begin
	behavior: process(clock, set_bar, reset_bar) is
	begin
	
	if set_bar = '0' and reset_bar = '0' then
		-- invalid state
		q_int <= 'X';
		
	elsif set_bar = '0' then
		q_int <= '1';
		
	elsif reset_bar = '0' then
		q_int <= '0';
		
	elsif rising_edge(clock) then
		q_int <= d;
	end if;
	end process behavior;

	q <= q_int;
	q_bar <= not q_int;
	
end architecture;