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
-- Generated on "03/24/2026 17:13:19"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5_DFF_Traf_Cont
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_DFF_Traf_Cont_vhd_vec_tst IS
END Lab5_DFF_Traf_Cont_vhd_vec_tst;
ARCHITECTURE Lab5_DFF_Traf_Cont_arch OF Lab5_DFF_Traf_Cont_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR_L : STD_LOGIC;
SIGNAL CW_L : STD_LOGIC;
SIGNAL EV : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL R : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT Lab5_DFF_Traf_Cont
	PORT (
	CLK : IN STD_LOGIC;
	CLR_L : IN STD_LOGIC;
	CW_L : IN STD_LOGIC;
	EV : IN STD_LOGIC;
	G : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	R : OUT STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab5_DFF_Traf_Cont
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CLR_L => CLR_L,
	CW_L => CW_L,
	EV => EV,
	G => G,
	Q => Q,
	R => R,
	Y => Y
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '1';
	WAIT FOR 12500 ps;
	FOR i IN 1 TO 32
	LOOP
		CLK <= '0';
		WAIT FOR 12500 ps;
		CLK <= '1';
		WAIT FOR 12500 ps;
	END LOOP;
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- CLR_L
t_prcs_CLR_L: PROCESS
BEGIN
	CLR_L <= '0';
	WAIT FOR 25000 ps;
	CLR_L <= '1';
	WAIT FOR 825000 ps;
	CLR_L <= '0';
WAIT;
END PROCESS t_prcs_CLR_L;

-- CW_L
t_prcs_CW_L: PROCESS
BEGIN
	CW_L <= '1';
	WAIT FOR 250000 ps;
	CW_L <= '0';
	WAIT FOR 275000 ps;
	CW_L <= '1';
	WAIT FOR 250000 ps;
	CW_L <= '0';
WAIT;
END PROCESS t_prcs_CW_L;

-- EV
t_prcs_EV: PROCESS
BEGIN
	EV <= '0';
	WAIT FOR 175000 ps;
	EV <= '1';
	WAIT FOR 125000 ps;
	EV <= '0';
WAIT;
END PROCESS t_prcs_EV;
END Lab5_DFF_Traf_Cont_arch;
