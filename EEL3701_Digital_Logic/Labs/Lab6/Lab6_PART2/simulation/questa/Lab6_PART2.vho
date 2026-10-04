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

-- DATE "04/20/2026 21:13:06"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Altera FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab6_PART2 IS
    PORT (
	RCO : OUT std_logic;
	RESET_L : IN std_logic;
	MEMCLK : IN std_logic;
	PC_INC : OUT std_logic;
	IR : OUT std_logic_vector(2 DOWNTO 0);
	IR_LD : OUT std_logic;
	INPUT : OUT std_logic_vector(7 DOWNTO 0);
	A : OUT std_logic_vector(14 DOWNTO 0);
	PC_LD : OUT std_logic;
	C_OUT : OUT std_logic;
	C_IN : IN std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	AA_L : OUT std_logic;
	T_L : IN std_logic;
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	AB_L : OUT std_logic;
	AC_L : OUT std_logic;
	AD_L : OUT std_logic;
	AE_L : OUT std_logic;
	AF_L : OUT std_logic;
	AG_L : OUT std_logic;
	BA_L : OUT std_logic;
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	BB_L : OUT std_logic;
	BC_L : OUT std_logic;
	BD_L : OUT std_logic;
	BE_L : OUT std_logic;
	BF_L : OUT std_logic;
	BG_L : OUT std_logic;
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	PC : OUT std_logic_vector(3 DOWNTO 0);
	Q : OUT std_logic_vector(1 DOWNTO 0)
	);
END Lab6_PART2;

-- Design Ports Information
-- RCO	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INC	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_LD	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[7]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_W18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_LD	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_OUT	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA_L	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AB_L	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AC_L	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AD_L	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AE_L	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AF_L	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AG_L	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BA_L	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB_L	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BC_L	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BD_L	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BE_L	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BF_L	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BG_L	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_L	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_IN	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEMCLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_PART2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL ww_RESET_L : std_logic;
SIGNAL ww_MEMCLK : std_logic;
SIGNAL ww_PC_INC : std_logic;
SIGNAL ww_IR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IR_LD : std_logic;
SIGNAL ww_INPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_PC_LD : std_logic;
SIGNAL ww_C_OUT : std_logic;
SIGNAL ww_C_IN : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_AA_L : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AB_L : std_logic;
SIGNAL ww_AC_L : std_logic;
SIGNAL ww_AD_L : std_logic;
SIGNAL ww_AE_L : std_logic;
SIGNAL ww_AF_L : std_logic;
SIGNAL ww_AG_L : std_logic;
SIGNAL ww_BA_L : std_logic;
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BB_L : std_logic;
SIGNAL ww_BC_L : std_logic;
SIGNAL ww_BD_L : std_logic;
SIGNAL ww_BE_L : std_logic;
SIGNAL ww_BF_L : std_logic;
SIGNAL ww_BG_L : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEMCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \RCO~output_o\ : std_logic;
SIGNAL \PC_INC~output_o\ : std_logic;
SIGNAL \IR[2]~output_o\ : std_logic;
SIGNAL \IR[1]~output_o\ : std_logic;
SIGNAL \IR[0]~output_o\ : std_logic;
SIGNAL \IR_LD~output_o\ : std_logic;
SIGNAL \INPUT[7]~output_o\ : std_logic;
SIGNAL \INPUT[6]~output_o\ : std_logic;
SIGNAL \INPUT[5]~output_o\ : std_logic;
SIGNAL \INPUT[4]~output_o\ : std_logic;
SIGNAL \INPUT[3]~output_o\ : std_logic;
SIGNAL \INPUT[2]~output_o\ : std_logic;
SIGNAL \INPUT[1]~output_o\ : std_logic;
SIGNAL \INPUT[0]~output_o\ : std_logic;
SIGNAL \A[14]~output_o\ : std_logic;
SIGNAL \A[13]~output_o\ : std_logic;
SIGNAL \A[12]~output_o\ : std_logic;
SIGNAL \A[11]~output_o\ : std_logic;
SIGNAL \A[10]~output_o\ : std_logic;
SIGNAL \A[9]~output_o\ : std_logic;
SIGNAL \A[8]~output_o\ : std_logic;
SIGNAL \A[7]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \PC_LD~output_o\ : std_logic;
SIGNAL \C_OUT~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \AA_L~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \AB_L~output_o\ : std_logic;
SIGNAL \AC_L~output_o\ : std_logic;
SIGNAL \AD_L~output_o\ : std_logic;
SIGNAL \AE_L~output_o\ : std_logic;
SIGNAL \AF_L~output_o\ : std_logic;
SIGNAL \AG_L~output_o\ : std_logic;
SIGNAL \BA_L~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \BB_L~output_o\ : std_logic;
SIGNAL \BC_L~output_o\ : std_logic;
SIGNAL \BD_L~output_o\ : std_logic;
SIGNAL \BE_L~output_o\ : std_logic;
SIGNAL \BF_L~output_o\ : std_logic;
SIGNAL \BG_L~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \MEMCLK~input_o\ : std_logic;
SIGNAL \MEMCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~feeder_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst7~clkctrl_outclk\ : std_logic;
SIGNAL \RESET_L~input_o\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst6|inst4~q\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst6|inst1~q\ : std_logic;
SIGNAL \inst17|inst|D~0_combout\ : std_logic;
SIGNAL \inst17|inst2~q\ : std_logic;
SIGNAL \inst17|inst|IR_LOAD~0_combout\ : std_logic;
SIGNAL \inst6|inst3~q\ : std_logic;
SIGNAL \inst17|inst4~q\ : std_logic;
SIGNAL \inst1|sub|75~0_combout\ : std_logic;
SIGNAL \inst1|sub|9~q\ : std_logic;
SIGNAL \inst1|sub|92~2_combout\ : std_logic;
SIGNAL \inst1|sub|92~3_combout\ : std_logic;
SIGNAL \inst1|sub|87~q\ : std_logic;
SIGNAL \inst17|inst|PC_INC~0_combout\ : std_logic;
SIGNAL \inst1|sub|97~combout\ : std_logic;
SIGNAL \inst1|sub|102~2_combout\ : std_logic;
SIGNAL \inst1|sub|99~q\ : std_logic;
SIGNAL \inst1|sub|104~0_combout\ : std_logic;
SIGNAL \inst17|inst|MSA~0_combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst1|sub|109~0_combout\ : std_logic;
SIGNAL \inst1|sub|110~q\ : std_logic;
SIGNAL \inst1|sub|104~combout\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst3|altsyncram_component|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst17|inst|MSA[0]~1_combout\ : std_logic;
SIGNAL \inst17|inst|MSB[0]~1_combout\ : std_logic;
SIGNAL \inst17|inst|MSB[0]~2_combout\ : std_logic;
SIGNAL \inst17|inst|MSB[1]~0_combout\ : std_logic;
SIGNAL \inst|inst11|10~0_combout\ : std_logic;
SIGNAL \inst|inst11|10~1_combout\ : std_logic;
SIGNAL \inst|inst6~q\ : std_logic;
SIGNAL \inst|inst26|sub|81~1_combout\ : std_logic;
SIGNAL \inst17|inst|MSC[0]~1_combout\ : std_logic;
SIGNAL \inst17|inst|MSC[1]~0_combout\ : std_logic;
SIGNAL \C_IN~input_o\ : std_logic;
SIGNAL \inst|inst10|9~0_combout\ : std_logic;
SIGNAL \inst|inst10|9~1_combout\ : std_logic;
SIGNAL \inst|inst8~q\ : std_logic;
SIGNAL \inst|inst25|sub|76~0_combout\ : std_logic;
SIGNAL \inst|inst29|sub|81~0_combout\ : std_logic;
SIGNAL \inst17|inst|MSA~2_combout\ : std_logic;
SIGNAL \inst|inst29|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst29|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst9|9~0_combout\ : std_logic;
SIGNAL \inst|inst9|9~1_combout\ : std_logic;
SIGNAL \inst|inst4~q\ : std_logic;
SIGNAL \inst|inst25|sub|104~0_combout\ : std_logic;
SIGNAL \inst|inst28|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst28|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst28|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst10|10~0_combout\ : std_logic;
SIGNAL \inst|inst10|10~1_combout\ : std_logic;
SIGNAL \inst|inst12~q\ : std_logic;
SIGNAL \inst|inst9|10~0_combout\ : std_logic;
SIGNAL \inst|inst9|10~1_combout\ : std_logic;
SIGNAL \inst|inst5~q\ : std_logic;
SIGNAL \inst|inst11|9~0_combout\ : std_logic;
SIGNAL \inst|inst11|9~1_combout\ : std_logic;
SIGNAL \inst|inst7~q\ : std_logic;
SIGNAL \inst|inst25|sub|105~0_combout\ : std_logic;
SIGNAL \inst|inst27|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst27|sub|81~1_combout\ : std_logic;
SIGNAL \inst|inst27|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst37|9~0_combout\ : std_logic;
SIGNAL \inst|inst37|9~1_combout\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst|inst26|sub|81~0_combout\ : std_logic;
SIGNAL \inst|inst25|sub|106~0_combout\ : std_logic;
SIGNAL \inst|inst26|sub|81~2_combout\ : std_logic;
SIGNAL \inst|inst37|10~0_combout\ : std_logic;
SIGNAL \inst|inst37|10~1_combout\ : std_logic;
SIGNAL \inst|inst2~q\ : std_logic;
SIGNAL \inst|inst25|sub|107~0_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \inst10|inst46~0_combout\ : std_logic;
SIGNAL \inst10|inst46~1_combout\ : std_logic;
SIGNAL \inst10|inst48~0_combout\ : std_logic;
SIGNAL \inst10|inst48~1_combout\ : std_logic;
SIGNAL \inst10|inst18~0_combout\ : std_logic;
SIGNAL \inst10|inst18~combout\ : std_logic;
SIGNAL \inst10|inst19~0_combout\ : std_logic;
SIGNAL \inst10|inst19~combout\ : std_logic;
SIGNAL \inst10|inst20~0_combout\ : std_logic;
SIGNAL \inst10|inst20~combout\ : std_logic;
SIGNAL \inst10|inst21~0_combout\ : std_logic;
SIGNAL \inst10|inst21~combout\ : std_logic;
SIGNAL \inst10|inst22~0_combout\ : std_logic;
SIGNAL \inst10|inst22~combout\ : std_logic;
SIGNAL \inst14|inst46~0_combout\ : std_logic;
SIGNAL \inst14|inst46~1_combout\ : std_logic;
SIGNAL \inst14|inst48~0_combout\ : std_logic;
SIGNAL \inst14|inst48~1_combout\ : std_logic;
SIGNAL \inst14|inst18~0_combout\ : std_logic;
SIGNAL \inst14|inst18~combout\ : std_logic;
SIGNAL \inst14|inst19~0_combout\ : std_logic;
SIGNAL \inst14|inst19~combout\ : std_logic;
SIGNAL \inst14|inst20~0_combout\ : std_logic;
SIGNAL \inst14|inst20~combout\ : std_logic;
SIGNAL \inst14|inst21~0_combout\ : std_logic;
SIGNAL \inst14|inst21~combout\ : std_logic;
SIGNAL \inst14|inst22~0_combout\ : std_logic;
SIGNAL \inst14|inst22~combout\ : std_logic;
SIGNAL \inst17|inst|MSA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst17|inst|D\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst10|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst46~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst18~combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst22~combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst48~1_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst21~combout\ : std_logic;
SIGNAL \inst17|inst|ALT_INV_MSA~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst46~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst18~combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst21~combout\ : std_logic;
SIGNAL \inst14|ALT_INV_inst19~combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst20~combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst48~1_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst22~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

RCO <= ww_RCO;
ww_RESET_L <= RESET_L;
ww_MEMCLK <= MEMCLK;
PC_INC <= ww_PC_INC;
IR <= ww_IR;
IR_LD <= ww_IR_LD;
INPUT <= ww_INPUT;
A <= ww_A;
PC_LD <= ww_PC_LD;
C_OUT <= ww_C_OUT;
ww_C_IN <= C_IN;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
AA_L <= ww_AA_L;
ww_T_L <= T_L;
REGA <= ww_REGA;
AB_L <= ww_AB_L;
AC_L <= ww_AC_L;
AD_L <= ww_AD_L;
AE_L <= ww_AE_L;
AF_L <= ww_AF_L;
AG_L <= ww_AG_L;
BA_L <= ww_BA_L;
REGB <= ww_REGB;
BB_L <= ww_BB_L;
BC_L <= ww_BC_L;
BD_L <= ww_BD_L;
BE_L <= ww_BE_L;
BF_L <= ww_BF_L;
BG_L <= ww_BG_L;
OUTPUT <= ww_OUTPUT;
PC <= ww_PC;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\RESET_L~input_o\ & \RESET_L~input_o\ & \RESET_L~input_o\ & \RESET_L~input_o\);

\inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst3|altsyncram_component|auto_generated|ram_block1a9\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst3|altsyncram_component|auto_generated|ram_block1a10\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst3|altsyncram_component|auto_generated|ram_block1a11\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\inst3|altsyncram_component|auto_generated|ram_block1a12\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\inst3|altsyncram_component|auto_generated|ram_block1a13\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\inst3|altsyncram_component|auto_generated|ram_block1a14\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\inst3|altsyncram_component|auto_generated|ram_block1a15\ <= \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7~q\);

\MEMCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MEMCLK~input_o\);
\inst10|ALT_INV_inst19~combout\ <= NOT \inst10|inst19~combout\;
\inst14|ALT_INV_inst46~1_combout\ <= NOT \inst14|inst46~1_combout\;
\inst14|ALT_INV_inst18~combout\ <= NOT \inst14|inst18~combout\;
\inst14|ALT_INV_inst20~combout\ <= NOT \inst14|inst20~combout\;
\inst14|ALT_INV_inst22~combout\ <= NOT \inst14|inst22~combout\;
\inst14|ALT_INV_inst48~1_combout\ <= NOT \inst14|inst48~1_combout\;
\inst14|ALT_INV_inst21~combout\ <= NOT \inst14|inst21~combout\;
\inst17|inst|ALT_INV_MSA~0_combout\ <= NOT \inst17|inst|MSA~0_combout\;
\inst10|ALT_INV_inst46~1_combout\ <= NOT \inst10|inst46~1_combout\;
\inst10|ALT_INV_inst18~combout\ <= NOT \inst10|inst18~combout\;
\inst10|ALT_INV_inst21~combout\ <= NOT \inst10|inst21~combout\;
\inst14|ALT_INV_inst19~combout\ <= NOT \inst14|inst19~combout\;
\inst10|ALT_INV_inst20~combout\ <= NOT \inst10|inst20~combout\;
\inst10|ALT_INV_inst48~1_combout\ <= NOT \inst10|inst48~1_combout\;
\inst10|ALT_INV_inst22~combout\ <= NOT \inst10|inst22~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X36_Y39_N16
\RCO~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|104~combout\,
	devoe => ww_devoe,
	o => \RCO~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\PC_INC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|PC_INC~0_combout\,
	devoe => ww_devoe,
	o => \PC_INC~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\IR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst4~q\,
	devoe => ww_devoe,
	o => \IR[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\IR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst1~q\,
	devoe => ww_devoe,
	o => \IR[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\IR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|inst3~q\,
	devoe => ww_devoe,
	o => \IR[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\IR_LD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|IR_LOAD~0_combout\,
	devoe => ww_devoe,
	o => \IR_LD~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\INPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \INPUT[7]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\INPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \INPUT[6]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\INPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \INPUT[5]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\INPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \INPUT[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\INPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \INPUT[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\INPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \INPUT[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\INPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \INPUT[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\INPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => \INPUT[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\A[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[14]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\A[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[13]~output_o\);

-- Location: IOOBUF_X78_Y15_N2
\A[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[12]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\A[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[11]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\A[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[10]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\A[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\A[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\A[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X62_Y0_N9
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET_L~input_o\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET_L~input_o\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET_L~input_o\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RESET_L~input_o\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\PC_LD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|ALT_INV_MSA~0_combout\,
	devoe => ww_devoe,
	o => \PC_LD~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\C_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst25|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \C_OUT~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSA\(1),
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSA[0]~1_combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSB[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSB[0]~2_combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSA\(1),
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSC[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst|MSC[0]~1_combout\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\AA_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst46~1_combout\,
	devoe => ww_devoe,
	o => \AA_L~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst2~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst5~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst4~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\AB_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst48~1_combout\,
	devoe => ww_devoe,
	o => \AB_L~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\AC_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst18~combout\,
	devoe => ww_devoe,
	o => \AC_L~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\AD_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst19~combout\,
	devoe => ww_devoe,
	o => \AD_L~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\AE_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \AE_L~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\AF_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst21~combout\,
	devoe => ww_devoe,
	o => \AF_L~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\AG_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst22~combout\,
	devoe => ww_devoe,
	o => \AG_L~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\BA_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst46~1_combout\,
	devoe => ww_devoe,
	o => \BA_L~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst6~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst7~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst12~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst8~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\BB_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst48~1_combout\,
	devoe => ww_devoe,
	o => \BB_L~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\BC_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst18~combout\,
	devoe => ww_devoe,
	o => \BC_L~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\BD_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst19~combout\,
	devoe => ww_devoe,
	o => \BD_L~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\BE_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \BE_L~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\BF_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst21~combout\,
	devoe => ww_devoe,
	o => \BF_L~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\BG_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_inst22~combout\,
	devoe => ww_devoe,
	o => \BG_L~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst26|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst27|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst28|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst29|sub|81~2_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|110~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|99~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|87~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|9~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst2~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17|inst4~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOIBUF_X31_Y0_N22
\MEMCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEMCLK,
	o => \MEMCLK~input_o\);

-- Location: CLKCTRL_G19
\MEMCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MEMCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MEMCLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y38_N26
\inst7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = !\inst7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7~q\,
	combout => \inst7~0_combout\);

-- Location: LCCOMB_X1_Y38_N12
\inst7~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7~feeder_combout\ = \inst7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7~0_combout\,
	combout => \inst7~feeder_combout\);

-- Location: FF_X1_Y38_N13
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MEMCLK~inputclkctrl_outclk\,
	d => \inst7~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: CLKCTRL_G1
\inst7~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7~clkctrl_outclk\);

-- Location: IOIBUF_X24_Y0_N29
\RESET_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET_L,
	o => \RESET_L~input_o\);

-- Location: M9K_X53_Y51_N0
\inst3|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000080003000100001000440002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "lab6QUIZ.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Lab6_ROM:inst3|altsyncram:altsyncram_component|altsyncram_7ir3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MEMCLK~inputclkctrl_outclk\,
	portaaddr => \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: FF_X55_Y51_N1
\inst6|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst3|altsyncram_component|auto_generated|ram_block1a10\,
	clrn => \RESET_L~input_o\,
	sload => VCC,
	ena => \inst17|inst|IR_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst4~q\);

-- Location: FF_X55_Y51_N27
\inst6|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst3|altsyncram_component|auto_generated|ram_block1a9\,
	clrn => \RESET_L~input_o\,
	sload => VCC,
	ena => \inst17|inst|IR_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst1~q\);

-- Location: LCCOMB_X54_Y51_N12
\inst17|inst|D~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|D~0_combout\ = (\inst17|inst4~q\ & (!\inst6|inst4~q\ & (!\inst17|inst2~q\ & \inst6|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst6|inst4~q\,
	datac => \inst17|inst2~q\,
	datad => \inst6|inst1~q\,
	combout => \inst17|inst|D~0_combout\);

-- Location: FF_X54_Y51_N13
\inst17|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst17|inst|D~0_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst2~q\);

-- Location: LCCOMB_X56_Y51_N12
\inst17|inst|IR_LOAD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|IR_LOAD~0_combout\ = (!\inst17|inst4~q\ & !\inst17|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst4~q\,
	datad => \inst17|inst2~q\,
	combout => \inst17|inst|IR_LOAD~0_combout\);

-- Location: FF_X55_Y51_N21
\inst6|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	asdata => \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	clrn => \RESET_L~input_o\,
	sload => VCC,
	ena => \inst17|inst|IR_LOAD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6|inst3~q\);

-- Location: LCCOMB_X54_Y51_N22
\inst17|inst|D[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|D\(0) = (\inst6|inst3~q\ & ((\inst17|inst|D~0_combout\) # ((!\inst17|inst2~q\ & !\inst17|inst4~q\)))) # (!\inst6|inst3~q\ & (!\inst17|inst2~q\ & (!\inst17|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst3~q\,
	datab => \inst17|inst2~q\,
	datac => \inst17|inst4~q\,
	datad => \inst17|inst|D~0_combout\,
	combout => \inst17|inst|D\(0));

-- Location: FF_X54_Y51_N23
\inst17|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst17|inst|D\(0),
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|inst4~q\);

-- Location: LCCOMB_X52_Y51_N10
\inst1|sub|75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|75~0_combout\ = (\inst17|inst2~q\ & ((\inst17|inst4~q\ & ((\inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\))) # (!\inst17|inst4~q\ & (!\inst1|sub|9~q\)))) # (!\inst17|inst2~q\ & (\inst17|inst4~q\ $ ((\inst1|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst2~q\,
	datab => \inst17|inst4~q\,
	datac => \inst1|sub|9~q\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \inst1|sub|75~0_combout\);

-- Location: FF_X52_Y51_N11
\inst1|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst1|sub|75~0_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|9~q\);

-- Location: LCCOMB_X54_Y51_N30
\inst1|sub|92~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|92~2_combout\ = (\inst17|inst4~q\ & (!\inst17|inst2~q\ & (\inst1|sub|9~q\ $ (\inst1|sub|87~q\)))) # (!\inst17|inst4~q\ & (\inst1|sub|87~q\ $ (((\inst1|sub|9~q\ & \inst17|inst2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst1|sub|9~q\,
	datac => \inst17|inst2~q\,
	datad => \inst1|sub|87~q\,
	combout => \inst1|sub|92~2_combout\);

-- Location: LCCOMB_X54_Y51_N18
\inst1|sub|92~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|92~3_combout\ = (\inst1|sub|92~2_combout\) # ((\inst17|inst2~q\ & (\inst17|inst4~q\ & \inst3|altsyncram_component|auto_generated|ram_block1a9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst2~q\,
	datab => \inst17|inst4~q\,
	datac => \inst1|sub|92~2_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a9\,
	combout => \inst1|sub|92~3_combout\);

-- Location: FF_X54_Y51_N19
\inst1|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst1|sub|92~3_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|87~q\);

-- Location: LCCOMB_X54_Y51_N0
\inst17|inst|PC_INC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|PC_INC~0_combout\ = \inst17|inst2~q\ $ (\inst17|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|inst2~q\,
	datac => \inst17|inst4~q\,
	combout => \inst17|inst|PC_INC~0_combout\);

-- Location: LCCOMB_X54_Y51_N24
\inst1|sub|97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|97~combout\ = \inst1|sub|99~q\ $ (((\inst1|sub|87~q\ & (\inst1|sub|9~q\ & \inst17|inst|PC_INC~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|99~q\,
	datab => \inst1|sub|87~q\,
	datac => \inst1|sub|9~q\,
	datad => \inst17|inst|PC_INC~0_combout\,
	combout => \inst1|sub|97~combout\);

-- Location: LCCOMB_X54_Y51_N28
\inst1|sub|102~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|102~2_combout\ = (\inst17|inst4~q\ & ((\inst17|inst2~q\ & ((\inst3|altsyncram_component|auto_generated|ram_block1a10\))) # (!\inst17|inst2~q\ & (\inst1|sub|97~combout\)))) # (!\inst17|inst4~q\ & (\inst1|sub|97~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst1|sub|97~combout\,
	datac => \inst17|inst2~q\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a10\,
	combout => \inst1|sub|102~2_combout\);

-- Location: FF_X54_Y51_N29
\inst1|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst1|sub|102~2_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|99~q\);

-- Location: LCCOMB_X52_Y51_N0
\inst1|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|104~0_combout\ = (\inst1|sub|99~q\ & (\inst1|sub|87~q\ & (\inst17|inst|PC_INC~0_combout\ & \inst1|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|99~q\,
	datab => \inst1|sub|87~q\,
	datac => \inst17|inst|PC_INC~0_combout\,
	datad => \inst1|sub|9~q\,
	combout => \inst1|sub|104~0_combout\);

-- Location: LCCOMB_X52_Y51_N12
\inst17|inst|MSA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSA~0_combout\ = (\inst17|inst2~q\ & \inst17|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|inst2~q\,
	datad => \inst17|inst4~q\,
	combout => \inst17|inst|MSA~0_combout\);

-- Location: LCCOMB_X52_Y51_N8
\inst1|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|109~0_combout\ = (\inst17|inst|MSA~0_combout\ & (((\inst3|altsyncram_component|auto_generated|ram_block1a11\)))) # (!\inst17|inst|MSA~0_combout\ & (\inst1|sub|104~0_combout\ $ ((\inst1|sub|110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSA~0_combout\,
	datab => \inst1|sub|104~0_combout\,
	datac => \inst1|sub|110~q\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a11\,
	combout => \inst1|sub|109~0_combout\);

-- Location: FF_X52_Y51_N9
\inst1|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst1|sub|109~0_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|110~q\);

-- Location: LCCOMB_X52_Y51_N22
\inst1|sub|104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|104~combout\ = (\inst1|sub|104~0_combout\ & \inst1|sub|110~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|104~0_combout\,
	datac => \inst1|sub|110~q\,
	combout => \inst1|sub|104~combout\);

-- Location: LCCOMB_X54_Y51_N14
\inst17|inst|MSA[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSA[0]~1_combout\ = (\inst17|inst4~q\ & ((\inst17|inst2~q\) # ((!\inst6|inst1~q\) # (!\inst6|inst4~q\)))) # (!\inst17|inst4~q\ & (!\inst17|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst17|inst2~q\,
	datac => \inst6|inst4~q\,
	datad => \inst6|inst1~q\,
	combout => \inst17|inst|MSA[0]~1_combout\);

-- Location: LCCOMB_X54_Y51_N2
\inst17|inst|MSB[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSB[0]~1_combout\ = (\inst17|inst4~q\ & (!\inst17|inst2~q\ & (\inst6|inst3~q\ & !\inst6|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst17|inst2~q\,
	datac => \inst6|inst3~q\,
	datad => \inst6|inst1~q\,
	combout => \inst17|inst|MSB[0]~1_combout\);

-- Location: LCCOMB_X54_Y51_N8
\inst17|inst|MSB[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSB[0]~2_combout\ = (!\inst6|inst4~q\ & \inst17|inst|MSB[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst4~q\,
	datad => \inst17|inst|MSB[0]~1_combout\,
	combout => \inst17|inst|MSB[0]~2_combout\);

-- Location: LCCOMB_X54_Y51_N16
\inst17|inst|MSB[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSB[1]~0_combout\ = ((\inst17|inst2~q\) # ((!\inst6|inst1~q\) # (!\inst6|inst4~q\))) # (!\inst17|inst4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst4~q\,
	datab => \inst17|inst2~q\,
	datac => \inst6|inst4~q\,
	datad => \inst6|inst1~q\,
	combout => \inst17|inst|MSB[1]~0_combout\);

-- Location: LCCOMB_X55_Y51_N24
\inst|inst11|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst11|10~0_combout\ = (\inst17|inst|MSB[0]~2_combout\ & (\inst17|inst|MSB[1]~0_combout\)) # (!\inst17|inst|MSB[0]~2_combout\ & ((\inst17|inst|MSB[1]~0_combout\ & (\inst|inst6~q\)) # (!\inst17|inst|MSB[1]~0_combout\ & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSB[0]~2_combout\,
	datab => \inst17|inst|MSB[1]~0_combout\,
	datac => \inst|inst6~q\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a11\,
	combout => \inst|inst11|10~0_combout\);

-- Location: LCCOMB_X55_Y51_N2
\inst|inst11|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst11|10~1_combout\ = (\inst17|inst|MSB[0]~2_combout\ & ((\inst|inst11|10~0_combout\ & ((\inst|inst26|sub|81~2_combout\))) # (!\inst|inst11|10~0_combout\ & (\inst|inst2~q\)))) # (!\inst17|inst|MSB[0]~2_combout\ & (((\inst|inst11|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst17|inst|MSB[0]~2_combout\,
	datac => \inst|inst26|sub|81~2_combout\,
	datad => \inst|inst11|10~0_combout\,
	combout => \inst|inst11|10~1_combout\);

-- Location: FF_X55_Y51_N3
\inst|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst11|10~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst6~q\);

-- Location: LCCOMB_X54_Y51_N10
\inst|inst26|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst26|sub|81~1_combout\ = \inst|inst2~q\ $ (!\inst|inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst2~q\,
	datad => \inst|inst6~q\,
	combout => \inst|inst26|sub|81~1_combout\);

-- Location: LCCOMB_X55_Y51_N28
\inst17|inst|MSC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSC[0]~1_combout\ = (!\inst17|inst2~q\ & (!\inst6|inst3~q\ & (!\inst6|inst1~q\ & \inst17|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst2~q\,
	datab => \inst6|inst3~q\,
	datac => \inst6|inst1~q\,
	datad => \inst17|inst4~q\,
	combout => \inst17|inst|MSC[0]~1_combout\);

-- Location: LCCOMB_X55_Y51_N26
\inst17|inst|MSC[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSC[1]~0_combout\ = (\inst6|inst4~q\ & (\inst17|inst4~q\ & (!\inst6|inst1~q\ & !\inst17|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst4~q\,
	datab => \inst17|inst4~q\,
	datac => \inst6|inst1~q\,
	datad => \inst17|inst2~q\,
	combout => \inst17|inst|MSC[1]~0_combout\);

-- Location: IOIBUF_X24_Y0_N1
\C_IN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_IN,
	o => \C_IN~input_o\);

-- Location: LCCOMB_X56_Y51_N2
\inst|inst10|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst10|9~0_combout\ = (\inst17|inst|MSB[1]~0_combout\ & ((\inst|inst8~q\) # ((\inst17|inst|MSB[0]~2_combout\)))) # (!\inst17|inst|MSB[1]~0_combout\ & (((!\inst17|inst|MSB[0]~2_combout\ & 
-- \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~q\,
	datab => \inst17|inst|MSB[1]~0_combout\,
	datac => \inst17|inst|MSB[0]~2_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \inst|inst10|9~0_combout\);

-- Location: LCCOMB_X56_Y51_N4
\inst|inst10|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst10|9~1_combout\ = (\inst17|inst|MSB[0]~2_combout\ & ((\inst|inst10|9~0_combout\ & ((\inst|inst29|sub|81~2_combout\))) # (!\inst|inst10|9~0_combout\ & (\inst|inst4~q\)))) # (!\inst17|inst|MSB[0]~2_combout\ & (((\inst|inst10|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSB[0]~2_combout\,
	datab => \inst|inst4~q\,
	datac => \inst|inst29|sub|81~2_combout\,
	datad => \inst|inst10|9~0_combout\,
	combout => \inst|inst10|9~1_combout\);

-- Location: FF_X56_Y51_N5
\inst|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst10|9~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst8~q\);

-- Location: LCCOMB_X56_Y51_N14
\inst|inst25|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst25|sub|76~0_combout\ = \C_IN~input_o\ $ (\inst|inst4~q\ $ (\inst|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_IN~input_o\,
	datac => \inst|inst4~q\,
	datad => \inst|inst8~q\,
	combout => \inst|inst25|sub|76~0_combout\);

-- Location: LCCOMB_X56_Y51_N8
\inst|inst29|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst29|sub|81~0_combout\ = (\inst17|inst|MSC[0]~1_combout\ & (\inst6|inst4~q\ & (\inst|inst8~q\))) # (!\inst17|inst|MSC[0]~1_combout\ & (((\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst4~q\,
	datab => \inst|inst8~q\,
	datac => \inst|inst4~q\,
	datad => \inst17|inst|MSC[0]~1_combout\,
	combout => \inst|inst29|sub|81~0_combout\);

-- Location: LCCOMB_X55_Y51_N22
\inst17|inst|MSA~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSA~2_combout\ = (!\inst6|inst4~q\ & \inst17|inst|MSC[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6|inst4~q\,
	datad => \inst17|inst|MSC[0]~1_combout\,
	combout => \inst17|inst|MSA~2_combout\);

-- Location: LCCOMB_X56_Y51_N16
\inst|inst29|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst29|sub|81~1_combout\ = (!\inst17|inst|MSC[1]~0_combout\ & ((\inst|inst29|sub|81~0_combout\) # ((\inst|inst25|sub|76~0_combout\ & \inst17|inst|MSA~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSC[1]~0_combout\,
	datab => \inst|inst25|sub|76~0_combout\,
	datac => \inst|inst29|sub|81~0_combout\,
	datad => \inst17|inst|MSA~2_combout\,
	combout => \inst|inst29|sub|81~1_combout\);

-- Location: LCCOMB_X56_Y51_N22
\inst|inst29|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst29|sub|81~2_combout\ = (\inst|inst29|sub|81~1_combout\) # ((\inst17|inst|MSC[1]~0_combout\ & (\inst|inst5~q\ & \inst17|inst|MSC[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSC[1]~0_combout\,
	datab => \inst|inst5~q\,
	datac => \inst17|inst|MSC[0]~1_combout\,
	datad => \inst|inst29|sub|81~1_combout\,
	combout => \inst|inst29|sub|81~2_combout\);

-- Location: LCCOMB_X55_Y51_N20
\inst17|inst|MSA[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst17|inst|MSA\(1) = (\inst17|inst|MSC[1]~0_combout\) # ((!\inst6|inst4~q\ & \inst17|inst|MSC[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|inst4~q\,
	datab => \inst17|inst|MSC[0]~1_combout\,
	datad => \inst17|inst|MSC[1]~0_combout\,
	combout => \inst17|inst|MSA\(1));

-- Location: LCCOMB_X56_Y51_N28
\inst|inst9|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9|9~0_combout\ = (\inst17|inst|MSA\(1) & ((\inst|inst8~q\) # ((\inst17|inst|MSA[0]~1_combout\)))) # (!\inst17|inst|MSA\(1) & (((!\inst17|inst|MSA[0]~1_combout\ & \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst8~q\,
	datab => \inst17|inst|MSA\(1),
	datac => \inst17|inst|MSA[0]~1_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \inst|inst9|9~0_combout\);

-- Location: LCCOMB_X56_Y51_N10
\inst|inst9|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9|9~1_combout\ = (\inst17|inst|MSA[0]~1_combout\ & ((\inst|inst9|9~0_combout\ & (\inst|inst29|sub|81~2_combout\)) # (!\inst|inst9|9~0_combout\ & ((\inst|inst4~q\))))) # (!\inst17|inst|MSA[0]~1_combout\ & (((\inst|inst9|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst29|sub|81~2_combout\,
	datab => \inst17|inst|MSA[0]~1_combout\,
	datac => \inst|inst4~q\,
	datad => \inst|inst9|9~0_combout\,
	combout => \inst|inst9|9~1_combout\);

-- Location: FF_X56_Y51_N11
\inst|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst9|9~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst4~q\);

-- Location: LCCOMB_X56_Y51_N18
\inst|inst25|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst25|sub|104~0_combout\ = (\C_IN~input_o\ & ((\inst|inst8~q\) # (\inst|inst4~q\))) # (!\C_IN~input_o\ & (\inst|inst8~q\ & \inst|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C_IN~input_o\,
	datac => \inst|inst8~q\,
	datad => \inst|inst4~q\,
	combout => \inst|inst25|sub|104~0_combout\);

-- Location: LCCOMB_X55_Y51_N30
\inst|inst28|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst28|sub|81~0_combout\ = \inst|inst12~q\ $ (((\inst17|inst|MSA~2_combout\ & (\inst|inst5~q\ $ (\inst|inst25|sub|104~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst5~q\,
	datac => \inst17|inst|MSA~2_combout\,
	datad => \inst|inst25|sub|104~0_combout\,
	combout => \inst|inst28|sub|81~0_combout\);

-- Location: LCCOMB_X56_Y51_N0
\inst|inst28|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst28|sub|81~1_combout\ = (\inst17|inst|MSC[1]~0_combout\ & (\inst17|inst|MSC[0]~1_combout\)) # (!\inst17|inst|MSC[1]~0_combout\ & ((\inst17|inst|MSC[0]~1_combout\ & ((\inst|inst28|sub|81~0_combout\))) # (!\inst17|inst|MSC[0]~1_combout\ & 
-- (\inst|inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSC[1]~0_combout\,
	datab => \inst17|inst|MSC[0]~1_combout\,
	datac => \inst|inst5~q\,
	datad => \inst|inst28|sub|81~0_combout\,
	combout => \inst|inst28|sub|81~1_combout\);

-- Location: LCCOMB_X56_Y51_N26
\inst|inst28|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst28|sub|81~2_combout\ = (\inst17|inst|MSC[1]~0_combout\ & ((\inst|inst28|sub|81~1_combout\ & ((\inst|inst3~q\))) # (!\inst|inst28|sub|81~1_combout\ & (\inst|inst4~q\)))) # (!\inst17|inst|MSC[1]~0_combout\ & (((\inst|inst28|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSC[1]~0_combout\,
	datab => \inst|inst4~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst28|sub|81~1_combout\,
	combout => \inst|inst28|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y51_N24
\inst|inst10|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst10|10~0_combout\ = (\inst17|inst|MSB[1]~0_combout\ & (((\inst17|inst|MSB[0]~2_combout\)))) # (!\inst17|inst|MSB[1]~0_combout\ & ((\inst17|inst|MSB[0]~2_combout\ & (\inst|inst5~q\)) # (!\inst17|inst|MSB[0]~2_combout\ & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst17|inst|MSB[1]~0_combout\,
	datac => \inst17|inst|MSB[0]~2_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a9\,
	combout => \inst|inst10|10~0_combout\);

-- Location: LCCOMB_X56_Y51_N30
\inst|inst10|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst10|10~1_combout\ = (\inst17|inst|MSB[1]~0_combout\ & ((\inst|inst10|10~0_combout\ & (\inst|inst28|sub|81~2_combout\)) # (!\inst|inst10|10~0_combout\ & ((\inst|inst12~q\))))) # (!\inst17|inst|MSB[1]~0_combout\ & (((\inst|inst10|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst28|sub|81~2_combout\,
	datab => \inst17|inst|MSB[1]~0_combout\,
	datac => \inst|inst12~q\,
	datad => \inst|inst10|10~0_combout\,
	combout => \inst|inst10|10~1_combout\);

-- Location: FF_X56_Y51_N31
\inst|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst10|10~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst12~q\);

-- Location: LCCOMB_X56_Y51_N6
\inst|inst9|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9|10~0_combout\ = (\inst17|inst|MSA\(1) & (((\inst17|inst|MSA[0]~1_combout\)))) # (!\inst17|inst|MSA\(1) & ((\inst17|inst|MSA[0]~1_combout\ & (\inst|inst5~q\)) # (!\inst17|inst|MSA[0]~1_combout\ & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst17|inst|MSA\(1),
	datac => \inst17|inst|MSA[0]~1_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a9\,
	combout => \inst|inst9|10~0_combout\);

-- Location: LCCOMB_X56_Y51_N20
\inst|inst9|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9|10~1_combout\ = (\inst17|inst|MSA\(1) & ((\inst|inst9|10~0_combout\ & ((\inst|inst28|sub|81~2_combout\))) # (!\inst|inst9|10~0_combout\ & (\inst|inst12~q\)))) # (!\inst17|inst|MSA\(1) & (((\inst|inst9|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst17|inst|MSA\(1),
	datac => \inst|inst28|sub|81~2_combout\,
	datad => \inst|inst9|10~0_combout\,
	combout => \inst|inst9|10~1_combout\);

-- Location: FF_X56_Y51_N21
\inst|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst9|10~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst5~q\);

-- Location: LCCOMB_X54_Y51_N20
\inst|inst11|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst11|9~0_combout\ = (\inst17|inst|MSB[1]~0_combout\ & (((\inst17|inst|MSB[0]~2_combout\)))) # (!\inst17|inst|MSB[1]~0_combout\ & ((\inst17|inst|MSB[0]~2_combout\ & (\inst|inst3~q\)) # (!\inst17|inst|MSB[0]~2_combout\ & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSB[1]~0_combout\,
	datab => \inst|inst3~q\,
	datac => \inst17|inst|MSB[0]~2_combout\,
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a10\,
	combout => \inst|inst11|9~0_combout\);

-- Location: LCCOMB_X54_Y51_N26
\inst|inst11|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst11|9~1_combout\ = (\inst17|inst|MSB[1]~0_combout\ & ((\inst|inst11|9~0_combout\ & (\inst|inst27|sub|81~2_combout\)) # (!\inst|inst11|9~0_combout\ & ((\inst|inst7~q\))))) # (!\inst17|inst|MSB[1]~0_combout\ & (((\inst|inst11|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|sub|81~2_combout\,
	datab => \inst17|inst|MSB[1]~0_combout\,
	datac => \inst|inst7~q\,
	datad => \inst|inst11|9~0_combout\,
	combout => \inst|inst11|9~1_combout\);

-- Location: FF_X54_Y51_N27
\inst|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst11|9~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst7~q\);

-- Location: LCCOMB_X55_Y51_N18
\inst|inst25|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst25|sub|105~0_combout\ = (\inst|inst12~q\ & ((\inst|inst5~q\) # (\inst|inst25|sub|104~0_combout\))) # (!\inst|inst12~q\ & (\inst|inst5~q\ & \inst|inst25|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datac => \inst|inst5~q\,
	datad => \inst|inst25|sub|104~0_combout\,
	combout => \inst|inst25|sub|105~0_combout\);

-- Location: LCCOMB_X55_Y51_N12
\inst|inst27|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst27|sub|81~0_combout\ = \inst|inst7~q\ $ (((\inst17|inst|MSA~2_combout\ & (\inst|inst3~q\ $ (\inst|inst25|sub|105~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst|inst3~q\,
	datac => \inst17|inst|MSA~2_combout\,
	datad => \inst|inst25|sub|105~0_combout\,
	combout => \inst|inst27|sub|81~0_combout\);

-- Location: LCCOMB_X55_Y51_N6
\inst|inst27|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst27|sub|81~1_combout\ = (\inst17|inst|MSC[0]~1_combout\ & (((\inst17|inst|MSC[1]~0_combout\) # (\inst|inst27|sub|81~0_combout\)))) # (!\inst17|inst|MSC[0]~1_combout\ & (\inst|inst3~q\ & (!\inst17|inst|MSC[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst17|inst|MSC[0]~1_combout\,
	datac => \inst17|inst|MSC[1]~0_combout\,
	datad => \inst|inst27|sub|81~0_combout\,
	combout => \inst|inst27|sub|81~1_combout\);

-- Location: LCCOMB_X55_Y51_N4
\inst|inst27|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst27|sub|81~2_combout\ = (\inst17|inst|MSC[1]~0_combout\ & ((\inst|inst27|sub|81~1_combout\ & (\inst|inst2~q\)) # (!\inst|inst27|sub|81~1_combout\ & ((\inst|inst5~q\))))) # (!\inst17|inst|MSC[1]~0_combout\ & (((\inst|inst27|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst17|inst|MSC[1]~0_combout\,
	datac => \inst|inst5~q\,
	datad => \inst|inst27|sub|81~1_combout\,
	combout => \inst|inst27|sub|81~2_combout\);

-- Location: LCCOMB_X54_Y51_N6
\inst|inst37|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst37|9~0_combout\ = (\inst17|inst|MSA[0]~1_combout\ & (((\inst17|inst|MSA\(1))))) # (!\inst17|inst|MSA[0]~1_combout\ & ((\inst17|inst|MSA\(1) & (\inst|inst7~q\)) # (!\inst17|inst|MSA\(1) & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a10\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst17|inst|MSA[0]~1_combout\,
	datac => \inst17|inst|MSA\(1),
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a10\,
	combout => \inst|inst37|9~0_combout\);

-- Location: LCCOMB_X54_Y51_N4
\inst|inst37|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst37|9~1_combout\ = (\inst17|inst|MSA[0]~1_combout\ & ((\inst|inst37|9~0_combout\ & (\inst|inst27|sub|81~2_combout\)) # (!\inst|inst37|9~0_combout\ & ((\inst|inst3~q\))))) # (!\inst17|inst|MSA[0]~1_combout\ & (((\inst|inst37|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst27|sub|81~2_combout\,
	datab => \inst17|inst|MSA[0]~1_combout\,
	datac => \inst|inst3~q\,
	datad => \inst|inst37|9~0_combout\,
	combout => \inst|inst37|9~1_combout\);

-- Location: FF_X54_Y51_N5
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst37|9~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X55_Y51_N16
\inst|inst26|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst26|sub|81~0_combout\ = (!\inst17|inst|MSC[0]~1_combout\ & ((\inst17|inst|MSC[1]~0_combout\ & ((\inst|inst3~q\))) # (!\inst17|inst|MSC[1]~0_combout\ & (\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst17|inst|MSC[0]~1_combout\,
	datac => \inst|inst3~q\,
	datad => \inst17|inst|MSC[1]~0_combout\,
	combout => \inst|inst26|sub|81~0_combout\);

-- Location: LCCOMB_X55_Y51_N0
\inst|inst25|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst25|sub|106~0_combout\ = (\inst|inst7~q\ & ((\inst|inst3~q\) # (\inst|inst25|sub|105~0_combout\))) # (!\inst|inst7~q\ & (\inst|inst3~q\ & \inst|inst25|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst7~q\,
	datab => \inst|inst3~q\,
	datad => \inst|inst25|sub|105~0_combout\,
	combout => \inst|inst25|sub|106~0_combout\);

-- Location: LCCOMB_X55_Y51_N14
\inst|inst26|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst26|sub|81~2_combout\ = (\inst17|inst|MSA~2_combout\ & (\inst|inst26|sub|81~1_combout\ $ (((!\inst|inst25|sub|106~0_combout\))))) # (!\inst17|inst|MSA~2_combout\ & (((\inst|inst26|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst26|sub|81~1_combout\,
	datab => \inst|inst26|sub|81~0_combout\,
	datac => \inst17|inst|MSA~2_combout\,
	datad => \inst|inst25|sub|106~0_combout\,
	combout => \inst|inst26|sub|81~2_combout\);

-- Location: LCCOMB_X55_Y51_N10
\inst|inst37|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst37|10~0_combout\ = (\inst17|inst|MSA[0]~1_combout\ & (((\inst17|inst|MSA\(1))))) # (!\inst17|inst|MSA[0]~1_combout\ & ((\inst17|inst|MSA\(1) & (\inst|inst6~q\)) # (!\inst17|inst|MSA\(1) & 
-- ((\inst3|altsyncram_component|auto_generated|ram_block1a11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSA[0]~1_combout\,
	datab => \inst|inst6~q\,
	datac => \inst17|inst|MSA\(1),
	datad => \inst3|altsyncram_component|auto_generated|ram_block1a11\,
	combout => \inst|inst37|10~0_combout\);

-- Location: LCCOMB_X55_Y51_N8
\inst|inst37|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst37|10~1_combout\ = (\inst17|inst|MSA[0]~1_combout\ & ((\inst|inst37|10~0_combout\ & (\inst|inst26|sub|81~2_combout\)) # (!\inst|inst37|10~0_combout\ & ((\inst|inst2~q\))))) # (!\inst17|inst|MSA[0]~1_combout\ & (((\inst|inst37|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|inst|MSA[0]~1_combout\,
	datab => \inst|inst26|sub|81~2_combout\,
	datac => \inst|inst2~q\,
	datad => \inst|inst37|10~0_combout\,
	combout => \inst|inst37|10~1_combout\);

-- Location: FF_X55_Y51_N9
\inst|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7~clkctrl_outclk\,
	d => \inst|inst37|10~1_combout\,
	clrn => \RESET_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst2~q\);

-- Location: LCCOMB_X54_Y50_N4
\inst|inst25|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst25|sub|107~0_combout\ = (\inst|inst2~q\ & ((\inst|inst6~q\) # (\inst|inst25|sub|106~0_combout\))) # (!\inst|inst2~q\ & (\inst|inst6~q\ & \inst|inst25|sub|106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst2~q\,
	datab => \inst|inst6~q\,
	datad => \inst|inst25|sub|106~0_combout\,
	combout => \inst|inst25|sub|107~0_combout\);

-- Location: IOIBUF_X22_Y0_N1
\T_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T_L,
	o => \T_L~input_o\);

-- Location: LCCOMB_X63_Y51_N28
\inst10|inst46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst46~0_combout\ = (\inst|inst3~q\ & ((\inst|inst5~q\) # (\inst|inst4~q\ $ (\inst|inst2~q\)))) # (!\inst|inst3~q\ & ((\inst|inst5~q\ $ (\inst|inst2~q\)) # (!\inst|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst46~0_combout\);

-- Location: LCCOMB_X63_Y51_N30
\inst10|inst46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst46~1_combout\ = (\inst10|inst46~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst10|inst46~0_combout\,
	combout => \inst10|inst46~1_combout\);

-- Location: LCCOMB_X63_Y51_N4
\inst10|inst48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48~0_combout\ = (\inst|inst5~q\ & ((\inst|inst4~q\ & ((!\inst|inst2~q\))) # (!\inst|inst4~q\ & (!\inst|inst3~q\)))) # (!\inst|inst5~q\ & ((\inst|inst4~q\ $ (!\inst|inst2~q\)) # (!\inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst48~0_combout\);

-- Location: LCCOMB_X63_Y51_N26
\inst10|inst48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst48~1_combout\ = (\inst10|inst48~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst48~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst10|inst48~1_combout\);

-- Location: LCCOMB_X63_Y51_N24
\inst10|inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst18~0_combout\ = (\inst|inst3~q\ & (\inst|inst2~q\ & ((\inst|inst5~q\) # (!\inst|inst4~q\)))) # (!\inst|inst3~q\ & (\inst|inst5~q\ & (!\inst|inst4~q\ & !\inst|inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst18~0_combout\);

-- Location: LCCOMB_X63_Y51_N2
\inst10|inst18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst18~combout\ = (!\inst10|inst18~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst10|inst18~0_combout\,
	combout => \inst10|inst18~combout\);

-- Location: LCCOMB_X63_Y51_N8
\inst10|inst19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst19~0_combout\ = (\inst|inst5~q\ & ((\inst|inst3~q\ & (\inst|inst4~q\)) # (!\inst|inst3~q\ & (!\inst|inst4~q\ & \inst|inst2~q\)))) # (!\inst|inst5~q\ & (!\inst|inst2~q\ & (\inst|inst3~q\ $ (\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst19~0_combout\);

-- Location: LCCOMB_X63_Y51_N14
\inst10|inst19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst19~combout\ = (!\T_L~input_o\) # (!\inst10|inst19~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst19~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst10|inst19~combout\);

-- Location: LCCOMB_X63_Y51_N20
\inst10|inst20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst20~0_combout\ = (\inst|inst5~q\ & (((\inst|inst4~q\ & !\inst|inst2~q\)))) # (!\inst|inst5~q\ & ((\inst|inst3~q\ & ((!\inst|inst2~q\))) # (!\inst|inst3~q\ & (\inst|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst20~0_combout\);

-- Location: LCCOMB_X63_Y51_N10
\inst10|inst20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst20~combout\ = (!\inst10|inst20~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst10|inst20~0_combout\,
	combout => \inst10|inst20~combout\);

-- Location: LCCOMB_X63_Y51_N12
\inst10|inst21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst21~0_combout\ = (\inst|inst5~q\ & (!\inst|inst2~q\ & ((\inst|inst4~q\) # (!\inst|inst3~q\)))) # (!\inst|inst5~q\ & (\inst|inst4~q\ & (\inst|inst3~q\ $ (!\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst21~0_combout\);

-- Location: LCCOMB_X63_Y51_N22
\inst10|inst21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst21~combout\ = (!\inst10|inst21~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst10|inst21~0_combout\,
	combout => \inst10|inst21~combout\);

-- Location: LCCOMB_X63_Y51_N16
\inst10|inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst22~0_combout\ = (\inst|inst4~q\ & ((\inst|inst2~q\) # (\inst|inst5~q\ $ (\inst|inst3~q\)))) # (!\inst|inst4~q\ & ((\inst|inst5~q\) # (\inst|inst3~q\ $ (\inst|inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst5~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst4~q\,
	datad => \inst|inst2~q\,
	combout => \inst10|inst22~0_combout\);

-- Location: LCCOMB_X63_Y51_N18
\inst10|inst22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst22~combout\ = (\inst10|inst22~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst10|inst22~0_combout\,
	combout => \inst10|inst22~combout\);

-- Location: LCCOMB_X65_Y51_N16
\inst14|inst46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst46~0_combout\ = (\inst|inst6~q\ & ((\inst|inst12~q\ $ (!\inst|inst7~q\)) # (!\inst|inst8~q\))) # (!\inst|inst6~q\ & ((\inst|inst12~q\) # (\inst|inst8~q\ $ (!\inst|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst46~0_combout\);

-- Location: LCCOMB_X65_Y51_N2
\inst14|inst46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst46~1_combout\ = (\inst14|inst46~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst46~0_combout\,
	combout => \inst14|inst46~1_combout\);

-- Location: LCCOMB_X65_Y51_N24
\inst14|inst48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst48~0_combout\ = (\inst|inst12~q\ & ((\inst|inst8~q\ & (!\inst|inst6~q\)) # (!\inst|inst8~q\ & ((!\inst|inst7~q\))))) # (!\inst|inst12~q\ & ((\inst|inst6~q\ $ (!\inst|inst8~q\)) # (!\inst|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst48~0_combout\);

-- Location: LCCOMB_X65_Y51_N6
\inst14|inst48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst48~1_combout\ = (\inst14|inst48~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst48~0_combout\,
	combout => \inst14|inst48~1_combout\);

-- Location: LCCOMB_X65_Y51_N12
\inst14|inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst18~0_combout\ = (\inst|inst6~q\ & (\inst|inst7~q\ & ((\inst|inst12~q\) # (!\inst|inst8~q\)))) # (!\inst|inst6~q\ & (\inst|inst12~q\ & (!\inst|inst8~q\ & !\inst|inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst18~0_combout\);

-- Location: LCCOMB_X65_Y51_N14
\inst14|inst18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst18~combout\ = (!\inst14|inst18~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst18~0_combout\,
	combout => \inst14|inst18~combout\);

-- Location: LCCOMB_X65_Y51_N28
\inst14|inst19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst19~0_combout\ = (\inst|inst12~q\ & ((\inst|inst8~q\ & ((\inst|inst7~q\))) # (!\inst|inst8~q\ & (\inst|inst6~q\ & !\inst|inst7~q\)))) # (!\inst|inst12~q\ & (!\inst|inst6~q\ & (\inst|inst8~q\ $ (\inst|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst19~0_combout\);

-- Location: LCCOMB_X65_Y51_N26
\inst14|inst19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst19~combout\ = (!\inst14|inst19~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst19~0_combout\,
	combout => \inst14|inst19~combout\);

-- Location: LCCOMB_X65_Y51_N0
\inst14|inst20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst20~0_combout\ = (\inst|inst12~q\ & (!\inst|inst6~q\ & (\inst|inst8~q\))) # (!\inst|inst12~q\ & ((\inst|inst7~q\ & (!\inst|inst6~q\)) # (!\inst|inst7~q\ & ((\inst|inst8~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst20~0_combout\);

-- Location: LCCOMB_X65_Y51_N10
\inst14|inst20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst20~combout\ = (!\inst14|inst20~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst20~0_combout\,
	combout => \inst14|inst20~combout\);

-- Location: LCCOMB_X65_Y51_N4
\inst14|inst21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst21~0_combout\ = (\inst|inst12~q\ & (!\inst|inst6~q\ & ((\inst|inst8~q\) # (!\inst|inst7~q\)))) # (!\inst|inst12~q\ & (\inst|inst8~q\ & (\inst|inst6~q\ $ (!\inst|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst21~0_combout\);

-- Location: LCCOMB_X65_Y51_N30
\inst14|inst21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst21~combout\ = (!\T_L~input_o\) # (!\inst14|inst21~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14|inst21~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst14|inst21~combout\);

-- Location: LCCOMB_X65_Y51_N20
\inst14|inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst22~0_combout\ = (\inst|inst8~q\ & ((\inst|inst6~q\) # (\inst|inst12~q\ $ (\inst|inst7~q\)))) # (!\inst|inst8~q\ & ((\inst|inst12~q\) # (\inst|inst6~q\ $ (\inst|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst12~q\,
	datab => \inst|inst6~q\,
	datac => \inst|inst8~q\,
	datad => \inst|inst7~q\,
	combout => \inst14|inst22~0_combout\);

-- Location: LCCOMB_X65_Y51_N18
\inst14|inst22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|inst22~combout\ = (\inst14|inst22~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst14|inst22~0_combout\,
	combout => \inst14|inst22~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_RCO <= \RCO~output_o\;

ww_PC_INC <= \PC_INC~output_o\;

ww_IR(2) <= \IR[2]~output_o\;

ww_IR(1) <= \IR[1]~output_o\;

ww_IR(0) <= \IR[0]~output_o\;

ww_IR_LD <= \IR_LD~output_o\;

ww_INPUT(7) <= \INPUT[7]~output_o\;

ww_INPUT(6) <= \INPUT[6]~output_o\;

ww_INPUT(5) <= \INPUT[5]~output_o\;

ww_INPUT(4) <= \INPUT[4]~output_o\;

ww_INPUT(3) <= \INPUT[3]~output_o\;

ww_INPUT(2) <= \INPUT[2]~output_o\;

ww_INPUT(1) <= \INPUT[1]~output_o\;

ww_INPUT(0) <= \INPUT[0]~output_o\;

ww_A(14) <= \A[14]~output_o\;

ww_A(13) <= \A[13]~output_o\;

ww_A(12) <= \A[12]~output_o\;

ww_A(11) <= \A[11]~output_o\;

ww_A(10) <= \A[10]~output_o\;

ww_A(9) <= \A[9]~output_o\;

ww_A(8) <= \A[8]~output_o\;

ww_A(7) <= \A[7]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_PC_LD <= \PC_LD~output_o\;

ww_C_OUT <= \C_OUT~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;

ww_AA_L <= \AA_L~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_AB_L <= \AB_L~output_o\;

ww_AC_L <= \AC_L~output_o\;

ww_AD_L <= \AD_L~output_o\;

ww_AE_L <= \AE_L~output_o\;

ww_AF_L <= \AF_L~output_o\;

ww_AG_L <= \AG_L~output_o\;

ww_BA_L <= \BA_L~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;

ww_BB_L <= \BB_L~output_o\;

ww_BC_L <= \BC_L~output_o\;

ww_BD_L <= \BD_L~output_o\;

ww_BE_L <= \BE_L~output_o\;

ww_BF_L <= \BF_L~output_o\;

ww_BG_L <= \BG_L~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;
END structure;


