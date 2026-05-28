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
-- Generated on "04/07/2026 19:45:56"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab6_PART2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab6_PART2_vhd_vec_tst IS
END Lab6_PART2_vhd_vec_tst;
ARCHITECTURE Lab6_PART2_arch OF Lab6_PART2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL AA_L : STD_LOGIC;
SIGNAL AB_L : STD_LOGIC;
SIGNAL AC_L : STD_LOGIC;
SIGNAL AD_L : STD_LOGIC;
SIGNAL AE_L : STD_LOGIC;
SIGNAL AF_L : STD_LOGIC;
SIGNAL AG_L : STD_LOGIC;
SIGNAL BA_L : STD_LOGIC;
SIGNAL BB_L : STD_LOGIC;
SIGNAL BC_L : STD_LOGIC;
SIGNAL BD_L : STD_LOGIC;
SIGNAL BE_L : STD_LOGIC;
SIGNAL BF_L : STD_LOGIC;
SIGNAL BG_L : STD_LOGIC;
SIGNAL C_IN : STD_LOGIC;
SIGNAL C_OUT : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL IR_LD : STD_LOGIC;
SIGNAL MEMCLK : STD_LOGIC;
SIGNAL MSA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC_INC : STD_LOGIC;
SIGNAL PC_LD : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL RCO : STD_LOGIC;
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RESET_L : STD_LOGIC;
SIGNAL T_L : STD_LOGIC;
COMPONENT Lab6_PART2
	PORT (
	A : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	AA_L : OUT STD_LOGIC;
	AB_L : OUT STD_LOGIC;
	AC_L : OUT STD_LOGIC;
	AD_L : OUT STD_LOGIC;
	AE_L : OUT STD_LOGIC;
	AF_L : OUT STD_LOGIC;
	AG_L : OUT STD_LOGIC;
	BA_L : OUT STD_LOGIC;
	BB_L : OUT STD_LOGIC;
	BC_L : OUT STD_LOGIC;
	BD_L : OUT STD_LOGIC;
	BE_L : OUT STD_LOGIC;
	BF_L : OUT STD_LOGIC;
	BG_L : OUT STD_LOGIC;
	C_IN : IN STD_LOGIC;
	C_OUT : OUT STD_LOGIC;
	INPUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	IR_LD : OUT STD_LOGIC;
	MEMCLK : IN STD_LOGIC;
	MSA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC_INC : OUT STD_LOGIC;
	PC_LD : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	RCO : OUT STD_LOGIC;
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RESET_L : IN STD_LOGIC;
	T_L : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab6_PART2
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AA_L => AA_L,
	AB_L => AB_L,
	AC_L => AC_L,
	AD_L => AD_L,
	AE_L => AE_L,
	AF_L => AF_L,
	AG_L => AG_L,
	BA_L => BA_L,
	BB_L => BB_L,
	BC_L => BC_L,
	BD_L => BD_L,
	BE_L => BE_L,
	BF_L => BF_L,
	BG_L => BG_L,
	C_IN => C_IN,
	C_OUT => C_OUT,
	INPUT => INPUT,
	IR => IR,
	IR_LD => IR_LD,
	MEMCLK => MEMCLK,
	MSA => MSA,
	MSB => MSB,
	MSC => MSC,
	OUTPUT => OUTPUT,
	PC => PC,
	PC_INC => PC_INC,
	PC_LD => PC_LD,
	Q => Q,
	RCO => RCO,
	REGA => REGA,
	REGB => REGB,
	RESET_L => RESET_L,
	T_L => T_L
	);

-- MEMCLK
t_prcs_MEMCLK: PROCESS
BEGIN
LOOP
	MEMCLK <= '0';
	WAIT FOR 12500 ps;
	MEMCLK <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 5000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MEMCLK;

-- RESET_L
t_prcs_RESET_L: PROCESS
BEGIN
	RESET_L <= '0';
	WAIT FOR 100000 ps;
	RESET_L <= '1';
WAIT;
END PROCESS t_prcs_RESET_L;

-- C_IN
t_prcs_C_IN: PROCESS
BEGIN
	C_IN <= '0';
WAIT;
END PROCESS t_prcs_C_IN;
END Lab6_PART2_arch;
