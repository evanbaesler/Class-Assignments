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
-- Generated on "03/31/2026 21:09:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab2ToVHDL_Decoder
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab2ToVHDL_Decoder_vhd_vec_tst IS
END Lab2ToVHDL_Decoder_vhd_vec_tst;
ARCHITECTURE Lab2ToVHDL_Decoder_arch OF Lab2ToVHDL_Decoder_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_L : STD_LOGIC;
SIGNAL B_L : STD_LOGIC;
SIGNAL C_L : STD_LOGIC;
SIGNAL D_L : STD_LOGIC;
SIGNAL E_L : STD_LOGIC;
SIGNAL F_L : STD_LOGIC;
SIGNAL G_L : STD_LOGIC;
SIGNAL T_L : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Lab2ToVHDL_Decoder
	PORT (
	A_L : OUT STD_LOGIC;
	B_L : OUT STD_LOGIC;
	C_L : OUT STD_LOGIC;
	D_L : OUT STD_LOGIC;
	E_L : OUT STD_LOGIC;
	F_L : OUT STD_LOGIC;
	G_L : OUT STD_LOGIC;
	T_L : IN STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Lab2ToVHDL_Decoder
	PORT MAP (
-- list connections between master ports and signals
	A_L => A_L,
	B_L => B_L,
	C_L => C_L,
	D_L => D_L,
	E_L => E_L,
	F_L => F_L,
	G_L => G_L,
	T_L => T_L,
	X => X
	);

-- T_L
t_prcs_T_L: PROCESS
BEGIN
	T_L <= '0';
	WAIT FOR 100000 ps;
	T_L <= '1';
WAIT;
END PROCESS t_prcs_T_L;
-- X[3]
t_prcs_X_3: PROCESS
BEGIN
	X(3) <= '1';
	WAIT FOR 100000 ps;
	FOR i IN 1 TO 2
	LOOP
		X(3) <= '0';
		WAIT FOR 200000 ps;
		X(3) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	X(3) <= '0';
	WAIT FOR 200000 ps;
	X(3) <= '1';
WAIT;
END PROCESS t_prcs_X_3;
-- X[2]
t_prcs_X_2: PROCESS
BEGIN
LOOP
	X(2) <= '1';
	WAIT FOR 100000 ps;
	X(2) <= '0';
	WAIT FOR 100000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_2;
-- X[1]
t_prcs_X_1: PROCESS
BEGIN
LOOP
	X(1) <= '0';
	WAIT FOR 50000 ps;
	X(1) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_1;
-- X[0]
t_prcs_X_0: PROCESS
BEGIN
LOOP
	X(0) <= '0';
	WAIT FOR 25000 ps;
	X(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_X_0;
END Lab2ToVHDL_Decoder_arch;
