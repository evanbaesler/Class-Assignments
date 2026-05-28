-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/24/2026 19:53:17"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Quiz5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Quiz5_vhd_vec_tst IS
END Quiz5_vhd_vec_tst;
ARCHITECTURE Quiz5_arch OF Quiz5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Buzz : STD_LOGIC;
SIGNAL CF : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR_L : STD_LOGIC;
SIGNAL Fizz : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Quiz5
	PORT (
	Buzz : OUT STD_LOGIC;
	CF : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLR_L : IN STD_LOGIC;
	Fizz : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Quiz5
	PORT MAP (
-- list connections between master ports and signals
	Buzz => Buzz,
	CF => CF,
	CLK => CLK,
	CLR_L => CLR_L,
	Fizz => Fizz,
	Q => Q
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 12500 ps;
	FOR i IN 1 TO 47
	LOOP
		CLK <= '0';
		WAIT FOR 12500 ps;
		CLK <= '1';
		WAIT FOR 12500 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- CF
t_prcs_CF: PROCESS
BEGIN
	CF <= '0';
	WAIT FOR 200000 ps;
	CF <= '1';
	WAIT FOR 200000 ps;
	CF <= '0';
WAIT;
END PROCESS t_prcs_CF;

-- CLR_L
t_prcs_CLR_L: PROCESS
BEGIN
	CLR_L <= '0';
	WAIT FOR 25000 ps;
	CLR_L <= '1';
	WAIT FOR 1075000 ps;
	CLR_L <= '0';
WAIT;
END PROCESS t_prcs_CLR_L;
END Quiz5_arch;
