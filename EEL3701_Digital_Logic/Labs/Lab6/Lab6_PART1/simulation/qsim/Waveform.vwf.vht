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
-- Generated on "04/05/2026 17:55:27"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab6_PART1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab6_PART1_vhd_vec_tst IS
END Lab6_PART1_vhd_vec_tst;
ARCHITECTURE Lab6_PART1_arch OF Lab6_PART1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL C_IN : STD_LOGIC;
SIGNAL C_OUT : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL INPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL IR_LOAD : STD_LOGIC;
SIGNAL MSA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL RESET_L : STD_LOGIC;
COMPONENT Lab6_PART1
	PORT (
	C_IN : IN STD_LOGIC;
	C_OUT : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	INPUT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	IR_LOAD : OUT STD_LOGIC;
	MSA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	RESET_L : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab6_PART1
	PORT MAP (
-- list connections between master ports and signals
	C_IN => C_IN,
	C_OUT => C_OUT,
	CLK => CLK,
	INPUT => INPUT,
	IR_LOAD => IR_LOAD,
	MSA => MSA,
	MSB => MSB,
	MSC => MSC,
	OUTPUT => OUTPUT,
	REGA => REGA,
	REGB => REGB,
	RESET_L => RESET_L
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 12500 ps;
	CLK <= '1';
	WAIT FOR 12500 ps;
	IF (NOW >= 800000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- C_IN
t_prcs_C_IN: PROCESS
BEGIN
	C_IN <= '0';
WAIT;
END PROCESS t_prcs_C_IN;

-- RESET_L
t_prcs_RESET_L: PROCESS
BEGIN
	RESET_L <= '0';
	WAIT FOR 50000 ps;
	RESET_L <= '1';
WAIT;
END PROCESS t_prcs_RESET_L;
-- INPUT[3]
t_prcs_INPUT_3: PROCESS
BEGIN
	INPUT(3) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_3;
-- INPUT[2]
t_prcs_INPUT_2: PROCESS
BEGIN
	INPUT(2) <= '0';
	WAIT FOR 100000 ps;
	INPUT(2) <= '1';
	WAIT FOR 50000 ps;
	INPUT(2) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_2;
-- INPUT[1]
t_prcs_INPUT_1: PROCESS
BEGIN
	INPUT(1) <= '0';
	WAIT FOR 50000 ps;
	INPUT(1) <= '1';
	WAIT FOR 100000 ps;
	INPUT(1) <= '0';
	WAIT FOR 50000 ps;
	INPUT(1) <= '1';
	WAIT FOR 50000 ps;
	INPUT(1) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_1;
-- INPUT[0]
t_prcs_INPUT_0: PROCESS
BEGIN
	INPUT(0) <= '0';
	WAIT FOR 50000 ps;
	INPUT(0) <= '1';
	WAIT FOR 150000 ps;
	INPUT(0) <= '0';
WAIT;
END PROCESS t_prcs_INPUT_0;
END Lab6_PART1_arch;
