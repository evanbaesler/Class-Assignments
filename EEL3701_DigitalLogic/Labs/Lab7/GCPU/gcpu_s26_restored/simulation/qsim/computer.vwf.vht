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
-- Generated on "04/21/2026 07:58:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          computer_simulation
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY computer_simulation_vhd_vec_tst IS
END computer_simulation_vhd_vec_tst;
ARCHITECTURE computer_simulation_arch OF computer_simulation_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL ADDR : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL ALU : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL DATA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL IR : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL MCLK : STD_LOGIC;
SIGNAL MSC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL N_FLG : STD_LOGIC;
SIGNAL nRESET : STD_LOGIC;
SIGNAL R_nW : STD_LOGIC;
SIGNAL RAM_ENABLE : STD_LOGIC;
SIGNAL RAM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RAM_RD_EN : STD_LOGIC;
SIGNAL RAM_WR_EN : STD_LOGIC;
SIGNAL ROM_ENABLE : STD_LOGIC;
SIGNAL ROM_OUT : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL STATE : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL XDISP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL YDISP : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL Z_FLG : STD_LOGIC;
COMPONENT computer_simulation
	PORT (
	A : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	ADDR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ALU : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	DATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	IR : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	MCLK : IN STD_LOGIC;
	MSC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	N_FLG : OUT STD_LOGIC;
	nRESET : IN STD_LOGIC;
	R_nW : OUT STD_LOGIC;
	RAM_ENABLE : OUT STD_LOGIC;
	RAM_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	RAM_RD_EN : OUT STD_LOGIC;
	RAM_WR_EN : OUT STD_LOGIC;
	ROM_ENABLE : OUT STD_LOGIC;
	ROM_OUT : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	STATE : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	X : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	XDISP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	YDISP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	Z_FLG : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : computer_simulation
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	ADDR => ADDR,
	ALU => ALU,
	B => B,
	DATA => DATA,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	IR => IR,
	MCLK => MCLK,
	MSC => MSC,
	N_FLG => N_FLG,
	nRESET => nRESET,
	R_nW => R_nW,
	RAM_ENABLE => RAM_ENABLE,
	RAM_OUT => RAM_OUT,
	RAM_RD_EN => RAM_RD_EN,
	RAM_WR_EN => RAM_WR_EN,
	ROM_ENABLE => ROM_ENABLE,
	ROM_OUT => ROM_OUT,
	STATE => STATE,
	X => X,
	XDISP => XDISP,
	Y => Y,
	YDISP => YDISP,
	Z_FLG => Z_FLG
	);

-- MCLK
t_prcs_MCLK: PROCESS
BEGIN
LOOP
	MCLK <= '0';
	WAIT FOR 25000 ps;
	MCLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 20000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MCLK;

-- nRESET
t_prcs_nRESET: PROCESS
BEGIN
	nRESET <= '0';
	WAIT FOR 200000 ps;
	nRESET <= '1';
WAIT;
END PROCESS t_prcs_nRESET;
END computer_simulation_arch;
