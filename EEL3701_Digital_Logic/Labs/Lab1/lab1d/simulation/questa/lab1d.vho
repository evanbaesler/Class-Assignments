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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 25.1std.0 Build 1129 10/21/2025 SC Lite Edition"

-- DATE "02/02/2026 14:45:38"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	lab1d IS
    PORT (
	Y_L : OUT std_logic;
	B_L : IN std_logic;
	A : IN std_logic;
	D : IN std_logic;
	C_L : IN std_logic;
	Z : OUT std_logic
	);
END lab1d;

-- Design Ports Information


ARCHITECTURE structure OF lab1d IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y_L : std_logic;
SIGNAL ww_B_L : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_C_L : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL \C_L~combout\ : std_logic;
SIGNAL \B_L~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \D~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst7~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~combout\ : std_logic;

BEGIN

Y_L <= ww_Y_L;
ww_B_L <= B_L;
ww_A <= A;
ww_D <= D;
ww_C_L <= C_L;
Z <= ww_Z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst4~combout\ <= NOT \inst4~combout\;

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C_L,
	combout => \C_L~combout\);

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B_L,
	combout => \B_L~combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D,
	combout => \D~combout\);

-- Location: LC_X5_Y2_N2
inst4 : maxv_lcell
-- Equation(s):
-- \inst4~combout\ = (\C_L~combout\ & ((\D~combout\) # ((!\B_L~combout\ & !\A~combout\)))) # (!\C_L~combout\ & (!\B_L~combout\ & (!\A~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C_L~combout\,
	datab => \B_L~combout\,
	datac => \A~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst4~combout\);

-- Location: LC_X5_Y2_N4
inst7 : maxv_lcell
-- Equation(s):
-- \inst7~combout\ = (\B_L~combout\) # ((\A~combout\) # ((\C_L~combout\ & \D~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C_L~combout\,
	datab => \B_L~combout\,
	datac => \A~combout\,
	datad => \D~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst7~combout\);

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Y_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst4~combout\,
	oe => VCC,
	padio => ww_Y_L);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst7~combout\,
	oe => VCC,
	padio => ww_Z);
END structure;


