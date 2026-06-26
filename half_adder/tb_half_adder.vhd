library ieee;
use ieee.std_logic_1164.all;

entity tb_half_adder is
end entity;

architecture sim of tb_half_adder is

	-- Signals to connect to the DUT
	signal a : std_logic := '0';
	signal b	: std_logic := '0';
	signal sum : std_logic;
	signal carry: std_logic;
	
begin

	-- Instantiate DUT (Device Under Test)
	dut: entity work.half_adder
		port map (
			a 		=> a,
			b 		=> b,
			sum 	=> sum,
			carry => carry
			);
			
	-- Stimulus process
	stimulus: process
	begin
		--Test 1
		a <= '0'; b <= '0';
		wait for 10 ns;
		
		--Test 2
		a <= '1'; b <= '0';
		wait for 10 ns;
		
		--Test 3
		a <= '0'; b <= '1';
		wait for 10 ns;
		
		--Test 4
		a <= '1'; b <= '1';
		wait for 10 ns;
		
		-- Stop simulation
		wait;
	end process;
	
end architecture;