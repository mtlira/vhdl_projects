-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/30/2026 16:21:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          d_flip_flop_behavioral
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY d_flip_flop_behavioral_tb IS
END d_flip_flop_behavioral_tb;
ARCHITECTURE d_flip_flop_behavioral_arch OF d_flip_flop_behavioral_tb IS
-- constants                                                 
-- signals                                                   
SIGNAL clock : STD_LOGIC;
SIGNAL d : STD_LOGIC;
SIGNAL q : STD_LOGIC;
SIGNAL q_bar : STD_LOGIC;
SIGNAL reset_bar : STD_LOGIC;
SIGNAL set_bar : STD_LOGIC;
COMPONENT d_flip_flop_behavioral
	PORT (
	clock : IN STD_LOGIC;
	d : IN STD_LOGIC;
	q : OUT STD_LOGIC;
	q_bar : OUT STD_LOGIC;
	reset_bar : IN STD_LOGIC;
	set_bar : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : d_flip_flop_behavioral
	PORT MAP (
-- list connections between master ports and signals
	clock => clock,
	d => d,
	q => q,
	q_bar => q_bar,
	reset_bar => reset_bar,
	set_bar => set_bar
	);

-- d
t_prcs_d: PROCESS
BEGIN
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 25000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 20000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 20000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 25000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 20000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 30000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 15000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 25000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 10000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 30000 ps;
	d <= '0';
	WAIT FOR 10000 ps;
	d <= '1';
	WAIT FOR 5000 ps;
	d <= '0';
	WAIT FOR 5000 ps;
	d <= '1';
	WAIT FOR 15000 ps;
	d <= '0';
	WAIT FOR 50000 ps;
	d <= '1';
WAIT;
END PROCESS t_prcs_d;

-- reset_bar
t_prcs_reset_bar: PROCESS
BEGIN
	reset_bar <= '1';
	WAIT FOR 360000 ps;
	reset_bar <= '0';
	WAIT FOR 140000 ps;
	reset_bar <= '1';
WAIT;
END PROCESS t_prcs_reset_bar;

-- set_bar
t_prcs_set_bar: PROCESS
BEGIN
	set_bar <= '1';
	WAIT FOR 690000 ps;
	set_bar <= '0';
	WAIT FOR 120000 ps;
	set_bar <= '1';
WAIT;
END PROCESS t_prcs_set_bar;

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 10000 ps;
	clock <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
END d_flip_flop_behavioral_arch;
