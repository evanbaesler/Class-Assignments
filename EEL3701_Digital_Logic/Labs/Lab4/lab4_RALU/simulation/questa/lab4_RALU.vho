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

-- DATE "04/04/2026 14:42:33"

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

ENTITY 	lab4_RALU IS
    PORT (
	C_out : OUT std_logic;
	C_in : IN std_logic;
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	CLR_L : IN std_logic;
	CLK : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	MSC : IN std_logic_vector(2 DOWNTO 0);
	MSB : IN std_logic_vector(1 DOWNTO 0);
	MSA : IN std_logic_vector(1 DOWNTO 0);
	REGA_A_L : OUT std_logic;
	REGA_B_L : OUT std_logic;
	REGA_C_L : OUT std_logic;
	REGA_D_L : OUT std_logic;
	REGA_E_L : OUT std_logic;
	REGA_F_L : OUT std_logic;
	REGA_G_L : OUT std_logic;
	REGB_A_L : OUT std_logic;
	REGB_B_L : OUT std_logic;
	REGB_C_L : OUT std_logic;
	REGB_D_L : OUT std_logic;
	REGB_E_L : OUT std_logic;
	REGB_F_L : OUT std_logic;
	REGB_G_L : OUT std_logic;
	OUTPUT_A_L : OUT std_logic;
	OUTPUT_B_L : OUT std_logic;
	OUTPUT_C_L : OUT std_logic;
	OUTPUT_D_L : OUT std_logic;
	OUTPUT_E_L : OUT std_logic;
	OUTPUT_F_L : OUT std_logic;
	OUTPUT_G_L : OUT std_logic
	);
END lab4_RALU;

-- Design Ports Information
-- C_out	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_A_L	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_B_L	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_C_L	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_D_L	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_E_L	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_F_L	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA_G_L	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_A_L	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_B_L	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_C_L	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_D_L	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_E_L	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_F_L	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB_G_L	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_A_L	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_B_L	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_C_L	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_D_L	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_E_L	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_F_L	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT_G_L	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_in	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_RALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C_out : std_logic;
SIGNAL ww_C_in : std_logic;
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLR_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_REGA_A_L : std_logic;
SIGNAL ww_REGA_B_L : std_logic;
SIGNAL ww_REGA_C_L : std_logic;
SIGNAL ww_REGA_D_L : std_logic;
SIGNAL ww_REGA_E_L : std_logic;
SIGNAL ww_REGA_F_L : std_logic;
SIGNAL ww_REGA_G_L : std_logic;
SIGNAL ww_REGB_A_L : std_logic;
SIGNAL ww_REGB_B_L : std_logic;
SIGNAL ww_REGB_C_L : std_logic;
SIGNAL ww_REGB_D_L : std_logic;
SIGNAL ww_REGB_E_L : std_logic;
SIGNAL ww_REGB_F_L : std_logic;
SIGNAL ww_REGB_G_L : std_logic;
SIGNAL ww_OUTPUT_A_L : std_logic;
SIGNAL ww_OUTPUT_B_L : std_logic;
SIGNAL ww_OUTPUT_C_L : std_logic;
SIGNAL ww_OUTPUT_D_L : std_logic;
SIGNAL ww_OUTPUT_E_L : std_logic;
SIGNAL ww_OUTPUT_F_L : std_logic;
SIGNAL ww_OUTPUT_G_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLR_L~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C_out~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGA_A_L~output_o\ : std_logic;
SIGNAL \REGA_B_L~output_o\ : std_logic;
SIGNAL \REGA_C_L~output_o\ : std_logic;
SIGNAL \REGA_D_L~output_o\ : std_logic;
SIGNAL \REGA_E_L~output_o\ : std_logic;
SIGNAL \REGA_F_L~output_o\ : std_logic;
SIGNAL \REGA_G_L~output_o\ : std_logic;
SIGNAL \REGB_A_L~output_o\ : std_logic;
SIGNAL \REGB_B_L~output_o\ : std_logic;
SIGNAL \REGB_C_L~output_o\ : std_logic;
SIGNAL \REGB_D_L~output_o\ : std_logic;
SIGNAL \REGB_E_L~output_o\ : std_logic;
SIGNAL \REGB_F_L~output_o\ : std_logic;
SIGNAL \REGB_G_L~output_o\ : std_logic;
SIGNAL \OUTPUT_A_L~output_o\ : std_logic;
SIGNAL \OUTPUT_B_L~output_o\ : std_logic;
SIGNAL \OUTPUT_C_L~output_o\ : std_logic;
SIGNAL \OUTPUT_D_L~output_o\ : std_logic;
SIGNAL \OUTPUT_E_L~output_o\ : std_logic;
SIGNAL \OUTPUT_F_L~output_o\ : std_logic;
SIGNAL \OUTPUT_G_L~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MSB[1]~input_o\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \MSB[0]~input_o\ : std_logic;
SIGNAL \MSA[0]~input_o\ : std_logic;
SIGNAL \MSA[1]~input_o\ : std_logic;
SIGNAL \inst37|10~0_combout\ : std_logic;
SIGNAL \MSC[0]~input_o\ : std_logic;
SIGNAL \MSC[2]~input_o\ : std_logic;
SIGNAL \MSC[1]~input_o\ : std_logic;
SIGNAL \inst26|sub|81~3_combout\ : std_logic;
SIGNAL \inst26|sub|81~2_combout\ : std_logic;
SIGNAL \inst26|sub|81~4_combout\ : std_logic;
SIGNAL \inst26|sub|81~5_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \inst11|9~0_combout\ : std_logic;
SIGNAL \inst27|sub|81~2_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst9|10~0_combout\ : std_logic;
SIGNAL \inst10|10~0_combout\ : std_logic;
SIGNAL \inst28|sub|81~3_combout\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst10|9~0_combout\ : std_logic;
SIGNAL \C_in~input_o\ : std_logic;
SIGNAL \inst29|sub|69~0_combout\ : std_logic;
SIGNAL \inst29|sub|66~combout\ : std_logic;
SIGNAL \inst29|sub|81~1_combout\ : std_logic;
SIGNAL \inst29|sub|81~2_combout\ : std_logic;
SIGNAL \inst29|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|9~1_combout\ : std_logic;
SIGNAL \CLR_L~input_o\ : std_logic;
SIGNAL \CLR_L~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst8~q\ : std_logic;
SIGNAL \inst9|9~0_combout\ : std_logic;
SIGNAL \inst9|9~1_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst25|sub|104~0_combout\ : std_logic;
SIGNAL \inst28|sub|81~0_combout\ : std_logic;
SIGNAL \inst28|sub|81~1_combout\ : std_logic;
SIGNAL \inst28|sub|81~2_combout\ : std_logic;
SIGNAL \inst28|sub|81~4_combout\ : std_logic;
SIGNAL \inst10|10~1_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst9|10~1_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst25|sub|80~0_combout\ : std_logic;
SIGNAL \inst25|sub|80~combout\ : std_logic;
SIGNAL \inst27|sub|81~0_combout\ : std_logic;
SIGNAL \inst27|sub|81~1_combout\ : std_logic;
SIGNAL \inst27|sub|81~3_combout\ : std_logic;
SIGNAL \inst11|9~1_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst37|9~0_combout\ : std_logic;
SIGNAL \inst37|9~1_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst25|sub|106~0_combout\ : std_logic;
SIGNAL \inst26|sub|81~7_combout\ : std_logic;
SIGNAL \inst26|sub|81~6_combout\ : std_logic;
SIGNAL \inst37|10~1_combout\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst11|10~0_combout\ : std_logic;
SIGNAL \inst11|10~1_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst25|sub|106~1_combout\ : std_logic;
SIGNAL \inst25|sub|107~0_combout\ : std_logic;
SIGNAL \inst62|inst32~0_combout\ : std_logic;
SIGNAL \inst62|inst47~0_combout\ : std_logic;
SIGNAL \inst62|inst8~0_combout\ : std_logic;
SIGNAL \inst62|inst17~0_combout\ : std_logic;
SIGNAL \inst62|inst16~0_combout\ : std_logic;
SIGNAL \inst62|inst15~0_combout\ : std_logic;
SIGNAL \inst62|inst9~0_combout\ : std_logic;
SIGNAL \inst32|inst32~0_combout\ : std_logic;
SIGNAL \inst32|inst47~0_combout\ : std_logic;
SIGNAL \inst32|inst8~0_combout\ : std_logic;
SIGNAL \inst32|inst17~0_combout\ : std_logic;
SIGNAL \inst32|inst16~0_combout\ : std_logic;
SIGNAL \inst32|inst15~0_combout\ : std_logic;
SIGNAL \inst32|inst9~0_combout\ : std_logic;
SIGNAL \inst33|inst32~0_combout\ : std_logic;
SIGNAL \inst33|inst47~0_combout\ : std_logic;
SIGNAL \inst33|inst8~0_combout\ : std_logic;
SIGNAL \inst33|inst17~0_combout\ : std_logic;
SIGNAL \inst33|inst16~0_combout\ : std_logic;
SIGNAL \inst33|inst15~0_combout\ : std_logic;
SIGNAL \inst33|inst9~0_combout\ : std_logic;
SIGNAL \inst32|ALT_INV_inst32~0_combout\ : std_logic;
SIGNAL \inst62|ALT_INV_inst32~0_combout\ : std_logic;
SIGNAL \inst62|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst32|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_inst32~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst32|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst33|ALT_INV_inst47~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

C_out <= ww_C_out;
ww_C_in <= C_in;
REGA <= ww_REGA;
ww_CLR_L <= CLR_L;
ww_CLK <= CLK;
ww_INPUT <= INPUT;
REGB <= ww_REGB;
OUTPUT <= ww_OUTPUT;
ww_MSC <= MSC;
ww_MSB <= MSB;
ww_MSA <= MSA;
REGA_A_L <= ww_REGA_A_L;
REGA_B_L <= ww_REGA_B_L;
REGA_C_L <= ww_REGA_C_L;
REGA_D_L <= ww_REGA_D_L;
REGA_E_L <= ww_REGA_E_L;
REGA_F_L <= ww_REGA_F_L;
REGA_G_L <= ww_REGA_G_L;
REGB_A_L <= ww_REGB_A_L;
REGB_B_L <= ww_REGB_B_L;
REGB_C_L <= ww_REGB_C_L;
REGB_D_L <= ww_REGB_D_L;
REGB_E_L <= ww_REGB_E_L;
REGB_F_L <= ww_REGB_F_L;
REGB_G_L <= ww_REGB_G_L;
OUTPUT_A_L <= ww_OUTPUT_A_L;
OUTPUT_B_L <= ww_OUTPUT_B_L;
OUTPUT_C_L <= ww_OUTPUT_C_L;
OUTPUT_D_L <= ww_OUTPUT_D_L;
OUTPUT_E_L <= ww_OUTPUT_E_L;
OUTPUT_F_L <= ww_OUTPUT_F_L;
OUTPUT_G_L <= ww_OUTPUT_G_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLR_L~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLR_L~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst32|ALT_INV_inst32~0_combout\ <= NOT \inst32|inst32~0_combout\;
\inst62|ALT_INV_inst32~0_combout\ <= NOT \inst62|inst32~0_combout\;
\inst62|ALT_INV_inst9~0_combout\ <= NOT \inst62|inst9~0_combout\;
\inst32|ALT_INV_inst47~0_combout\ <= NOT \inst32|inst47~0_combout\;
\inst33|ALT_INV_inst32~0_combout\ <= NOT \inst33|inst32~0_combout\;
\inst33|ALT_INV_inst9~0_combout\ <= NOT \inst33|inst9~0_combout\;
\inst32|ALT_INV_inst9~0_combout\ <= NOT \inst32|inst9~0_combout\;
\inst33|ALT_INV_inst47~0_combout\ <= NOT \inst33|inst47~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X66_Y54_N9
\C_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \C_out~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26|sub|81~6_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29|sub|81~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\REGA_A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|ALT_INV_inst32~0_combout\,
	devoe => ww_devoe,
	o => \REGA_A_L~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\REGA_B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|inst47~0_combout\,
	devoe => ww_devoe,
	o => \REGA_B_L~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\REGA_C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|inst8~0_combout\,
	devoe => ww_devoe,
	o => \REGA_C_L~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\REGA_D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|inst17~0_combout\,
	devoe => ww_devoe,
	o => \REGA_D_L~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\REGA_E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|inst16~0_combout\,
	devoe => ww_devoe,
	o => \REGA_E_L~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\REGA_F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|inst15~0_combout\,
	devoe => ww_devoe,
	o => \REGA_F_L~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\REGA_G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst62|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \REGA_G_L~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\REGB_A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|ALT_INV_inst32~0_combout\,
	devoe => ww_devoe,
	o => \REGB_A_L~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\REGB_B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => \REGB_B_L~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\REGB_C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|inst8~0_combout\,
	devoe => ww_devoe,
	o => \REGB_C_L~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\REGB_D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|inst17~0_combout\,
	devoe => ww_devoe,
	o => \REGB_D_L~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\REGB_E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|inst16~0_combout\,
	devoe => ww_devoe,
	o => \REGB_E_L~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\REGB_F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|inst15~0_combout\,
	devoe => ww_devoe,
	o => \REGB_F_L~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\REGB_G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \REGB_G_L~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\OUTPUT_A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|ALT_INV_inst32~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_A_L~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\OUTPUT_B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_B_L~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\OUTPUT_C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst8~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_C_L~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\OUTPUT_D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst17~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_D_L~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\OUTPUT_E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst16~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_E_L~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\OUTPUT_F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|inst15~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_F_L~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\OUTPUT_G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT_G_L~output_o\);

-- Location: IOIBUF_X31_Y0_N22
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G19
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X36_Y0_N8
\MSB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(1),
	o => \MSB[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\INPUT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\MSB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(0),
	o => \MSB[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\MSA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(0),
	o => \MSA[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\MSA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(1),
	o => \MSA[1]~input_o\);

-- Location: LCCOMB_X38_Y1_N30
\inst37|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37|10~0_combout\ = (\MSA[0]~input_o\ & ((\inst2~q\) # ((\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & (((!\MSA[1]~input_o\ & \INPUT[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \MSA[0]~input_o\,
	datac => \MSA[1]~input_o\,
	datad => \INPUT[3]~input_o\,
	combout => \inst37|10~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\MSC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(0),
	o => \MSC[0]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\MSC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(2),
	o => \MSC[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N15
\MSC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(1),
	o => \MSC[1]~input_o\);

-- Location: LCCOMB_X38_Y1_N14
\inst26|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~3_combout\ = (\MSC[2]~input_o\ & ((\MSC[1]~input_o\) # (\MSC[0]~input_o\ $ (!\inst2~q\)))) # (!\MSC[2]~input_o\ & (\MSC[1]~input_o\ & (\MSC[0]~input_o\ & !\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \MSC[0]~input_o\,
	datad => \inst2~q\,
	combout => \inst26|sub|81~3_combout\);

-- Location: LCCOMB_X38_Y1_N12
\inst26|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~2_combout\ = (\MSC[1]~input_o\ & ((\MSC[2]~input_o\) # ((!\inst2~q\)))) # (!\MSC[1]~input_o\ & ((\MSC[0]~input_o\ & (\MSC[2]~input_o\ & !\inst2~q\)) # (!\MSC[0]~input_o\ & ((\inst2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \MSC[0]~input_o\,
	datad => \inst2~q\,
	combout => \inst26|sub|81~2_combout\);

-- Location: LCCOMB_X38_Y1_N28
\inst26|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~4_combout\ = (\inst26|sub|81~3_combout\ & (!\inst26|sub|81~2_combout\ & (\MSC[0]~input_o\ $ (\inst6~q\)))) # (!\inst26|sub|81~3_combout\ & ((\MSC[0]~input_o\ & (\inst6~q\)) # (!\MSC[0]~input_o\ & ((\inst26|sub|81~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \inst6~q\,
	datac => \inst26|sub|81~3_combout\,
	datad => \inst26|sub|81~2_combout\,
	combout => \inst26|sub|81~4_combout\);

-- Location: LCCOMB_X38_Y1_N22
\inst26|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~5_combout\ = (\MSC[0]~input_o\ & (\inst26|sub|81~3_combout\ $ (\inst26|sub|81~2_combout\))) # (!\MSC[0]~input_o\ & (\inst26|sub|81~3_combout\ & \inst26|sub|81~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datac => \inst26|sub|81~3_combout\,
	datad => \inst26|sub|81~2_combout\,
	combout => \inst26|sub|81~5_combout\);

-- Location: IOIBUF_X20_Y0_N22
\INPUT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: LCCOMB_X40_Y1_N22
\inst11|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|9~0_combout\ = (\MSB[1]~input_o\ & (((\inst7~q\) # (\MSB[0]~input_o\)))) # (!\MSB[1]~input_o\ & (\INPUT[2]~input_o\ & ((!\MSB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[2]~input_o\,
	datab => \inst7~q\,
	datac => \MSB[1]~input_o\,
	datad => \MSB[0]~input_o\,
	combout => \inst11|9~0_combout\);

-- Location: LCCOMB_X38_Y1_N6
\inst27|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27|sub|81~2_combout\ = (\MSC[0]~input_o\ & (\inst7~q\ & ((\inst3~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ ((\inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst3~q\,
	datad => \inst7~q\,
	combout => \inst27|sub|81~2_combout\);

-- Location: IOIBUF_X20_Y0_N15
\INPUT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X40_Y1_N12
\inst9|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|10~0_combout\ = (\MSA[0]~input_o\ & ((\inst5~q\) # ((\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & (((\INPUT[1]~input_o\ & !\MSA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \MSA[0]~input_o\,
	datac => \INPUT[1]~input_o\,
	datad => \MSA[1]~input_o\,
	combout => \inst9|10~0_combout\);

-- Location: LCCOMB_X40_Y1_N14
\inst10|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|10~0_combout\ = (\MSB[1]~input_o\ & (((\MSB[0]~input_o\)))) # (!\MSB[1]~input_o\ & ((\MSB[0]~input_o\ & ((\inst5~q\))) # (!\MSB[0]~input_o\ & (\INPUT[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[1]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \inst5~q\,
	datad => \MSB[0]~input_o\,
	combout => \inst10|10~0_combout\);

-- Location: LCCOMB_X40_Y1_N30
\inst28|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|sub|81~3_combout\ = (\MSC[0]~input_o\ & (\inst12~q\ & ((\inst5~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ (((\inst5~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst12~q\,
	datad => \inst5~q\,
	combout => \inst28|sub|81~3_combout\);

-- Location: IOIBUF_X31_Y0_N29
\INPUT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X38_Y1_N18
\inst10|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|9~0_combout\ = (\MSB[1]~input_o\ & (((\MSB[0]~input_o\) # (\inst8~q\)))) # (!\MSB[1]~input_o\ & (\INPUT[0]~input_o\ & (!\MSB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[1]~input_o\,
	datab => \INPUT[0]~input_o\,
	datac => \MSB[0]~input_o\,
	datad => \inst8~q\,
	combout => \inst10|9~0_combout\);

-- Location: IOIBUF_X54_Y0_N29
\C_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_in,
	o => \C_in~input_o\);

-- Location: LCCOMB_X40_Y1_N20
\inst29|sub|69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|sub|69~0_combout\ = (\MSC[0]~input_o\ & (\C_in~input_o\ $ (\inst4~q\ $ (\inst8~q\)))) # (!\MSC[0]~input_o\ & (((\inst4~q\) # (\inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_in~input_o\,
	datab => \inst4~q\,
	datac => \inst8~q\,
	datad => \MSC[0]~input_o\,
	combout => \inst29|sub|69~0_combout\);

-- Location: LCCOMB_X40_Y1_N26
\inst29|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|sub|66~combout\ = (\inst5~q\ & \MSC[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5~q\,
	datad => \MSC[0]~input_o\,
	combout => \inst29|sub|66~combout\);

-- Location: LCCOMB_X40_Y1_N10
\inst29|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|sub|81~1_combout\ = (\MSC[0]~input_o\ & (\inst8~q\ & ((\inst4~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ (((\inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst8~q\,
	datad => \inst4~q\,
	combout => \inst29|sub|81~1_combout\);

-- Location: LCCOMB_X40_Y1_N24
\inst29|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|sub|81~2_combout\ = (\MSC[2]~input_o\ & (\MSC[1]~input_o\)) # (!\MSC[2]~input_o\ & ((\inst29|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datac => \MSC[1]~input_o\,
	datad => \inst29|sub|81~1_combout\,
	combout => \inst29|sub|81~2_combout\);

-- Location: LCCOMB_X40_Y1_N4
\inst29|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29|sub|81~0_combout\ = (\MSC[2]~input_o\ & ((\inst29|sub|81~2_combout\ & ((\inst29|sub|66~combout\))) # (!\inst29|sub|81~2_combout\ & (\inst29|sub|69~0_combout\)))) # (!\MSC[2]~input_o\ & (((\inst29|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \inst29|sub|69~0_combout\,
	datac => \inst29|sub|66~combout\,
	datad => \inst29|sub|81~2_combout\,
	combout => \inst29|sub|81~0_combout\);

-- Location: LCCOMB_X39_Y1_N16
\inst10|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|9~1_combout\ = (\MSB[0]~input_o\ & ((\inst10|9~0_combout\ & ((\inst29|sub|81~0_combout\))) # (!\inst10|9~0_combout\ & (\inst4~q\)))) # (!\MSB[0]~input_o\ & (\inst10|9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \inst10|9~0_combout\,
	datac => \inst4~q\,
	datad => \inst29|sub|81~0_combout\,
	combout => \inst10|9~1_combout\);

-- Location: IOIBUF_X31_Y0_N1
\CLR_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L,
	o => \CLR_L~input_o\);

-- Location: CLKCTRL_G18
\CLR_L~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLR_L~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLR_L~inputclkctrl_outclk\);

-- Location: FF_X39_Y1_N17
inst8 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|9~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8~q\);

-- Location: LCCOMB_X38_Y1_N24
\inst9|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|9~0_combout\ = (\MSA[1]~input_o\ & ((\MSA[0]~input_o\) # ((\inst8~q\)))) # (!\MSA[1]~input_o\ & (!\MSA[0]~input_o\ & (\INPUT[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[1]~input_o\,
	datab => \MSA[0]~input_o\,
	datac => \INPUT[0]~input_o\,
	datad => \inst8~q\,
	combout => \inst9|9~0_combout\);

-- Location: LCCOMB_X39_Y1_N30
\inst9|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|9~1_combout\ = (\MSA[0]~input_o\ & ((\inst9|9~0_combout\ & ((\inst29|sub|81~0_combout\))) # (!\inst9|9~0_combout\ & (\inst4~q\)))) # (!\MSA[0]~input_o\ & (\inst9|9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst9|9~0_combout\,
	datac => \inst4~q\,
	datad => \inst29|sub|81~0_combout\,
	combout => \inst9|9~1_combout\);

-- Location: FF_X39_Y1_N31
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|9~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X39_Y1_N2
\inst25|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|104~0_combout\ = (\C_in~input_o\ & ((\inst4~q\) # (\inst8~q\))) # (!\C_in~input_o\ & (\inst4~q\ & \inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_in~input_o\,
	datac => \inst4~q\,
	datad => \inst8~q\,
	combout => \inst25|sub|104~0_combout\);

-- Location: LCCOMB_X40_Y1_N28
\inst28|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|sub|81~0_combout\ = (\MSC[0]~input_o\ & (\inst12~q\ $ (!\inst5~q\))) # (!\MSC[0]~input_o\ & ((\inst12~q\) # (\inst5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datac => \inst12~q\,
	datad => \inst5~q\,
	combout => \inst28|sub|81~0_combout\);

-- Location: LCCOMB_X39_Y1_N28
\inst28|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|sub|81~1_combout\ = (\MSC[1]~input_o\ & (((\MSC[0]~input_o\)))) # (!\MSC[1]~input_o\ & (\inst28|sub|81~0_combout\ $ (((!\inst25|sub|104~0_combout\ & \MSC[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[1]~input_o\,
	datab => \inst25|sub|104~0_combout\,
	datac => \MSC[0]~input_o\,
	datad => \inst28|sub|81~0_combout\,
	combout => \inst28|sub|81~1_combout\);

-- Location: LCCOMB_X39_Y1_N6
\inst28|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|sub|81~2_combout\ = (\MSC[1]~input_o\ & ((\inst28|sub|81~1_combout\ & (\inst3~q\)) # (!\inst28|sub|81~1_combout\ & ((\inst4~q\))))) # (!\MSC[1]~input_o\ & (((\inst28|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst4~q\,
	datac => \MSC[1]~input_o\,
	datad => \inst28|sub|81~1_combout\,
	combout => \inst28|sub|81~2_combout\);

-- Location: LCCOMB_X39_Y1_N8
\inst28|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28|sub|81~4_combout\ = (\MSC[2]~input_o\ & ((\inst28|sub|81~2_combout\))) # (!\MSC[2]~input_o\ & (\inst28|sub|81~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC[2]~input_o\,
	datac => \inst28|sub|81~3_combout\,
	datad => \inst28|sub|81~2_combout\,
	combout => \inst28|sub|81~4_combout\);

-- Location: LCCOMB_X40_Y1_N8
\inst10|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|10~1_combout\ = (\MSB[1]~input_o\ & ((\inst10|10~0_combout\ & ((\inst28|sub|81~4_combout\))) # (!\inst10|10~0_combout\ & (\inst12~q\)))) # (!\MSB[1]~input_o\ & (\inst10|10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[1]~input_o\,
	datab => \inst10|10~0_combout\,
	datac => \inst12~q\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst10|10~1_combout\);

-- Location: FF_X40_Y1_N9
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|10~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X40_Y1_N18
\inst9|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|10~1_combout\ = (\inst9|10~0_combout\ & (((\inst28|sub|81~4_combout\)) # (!\MSA[1]~input_o\))) # (!\inst9|10~0_combout\ & (\MSA[1]~input_o\ & (\inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|10~0_combout\,
	datab => \MSA[1]~input_o\,
	datac => \inst12~q\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst9|10~1_combout\);

-- Location: FF_X40_Y1_N19
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9|10~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X39_Y1_N4
inst36 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (\inst3~q\) # (\inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	datad => \inst7~q\,
	combout => \inst36~combout\);

-- Location: LCCOMB_X39_Y1_N22
\inst25|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|80~0_combout\ = \inst3~q\ $ (\inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3~q\,
	datad => \inst7~q\,
	combout => \inst25|sub|80~0_combout\);

-- Location: LCCOMB_X39_Y1_N0
\inst25|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|80~combout\ = \inst25|sub|80~0_combout\ $ (((\inst5~q\ & ((\inst12~q\) # (\inst25|sub|104~0_combout\))) # (!\inst5~q\ & (\inst12~q\ & \inst25|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst12~q\,
	datac => \inst25|sub|80~0_combout\,
	datad => \inst25|sub|104~0_combout\,
	combout => \inst25|sub|80~combout\);

-- Location: LCCOMB_X39_Y1_N10
\inst27|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27|sub|81~0_combout\ = (\MSC[1]~input_o\ & (((\MSC[0]~input_o\)))) # (!\MSC[1]~input_o\ & ((\MSC[0]~input_o\ & ((\inst25|sub|80~combout\))) # (!\MSC[0]~input_o\ & (\inst36~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[1]~input_o\,
	datab => \inst36~combout\,
	datac => \MSC[0]~input_o\,
	datad => \inst25|sub|80~combout\,
	combout => \inst27|sub|81~0_combout\);

-- Location: LCCOMB_X39_Y1_N12
\inst27|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27|sub|81~1_combout\ = (\MSC[1]~input_o\ & ((\inst27|sub|81~0_combout\ & (\inst2~q\)) # (!\inst27|sub|81~0_combout\ & ((\inst5~q\))))) # (!\MSC[1]~input_o\ & (((\inst27|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \inst5~q\,
	datac => \MSC[1]~input_o\,
	datad => \inst27|sub|81~0_combout\,
	combout => \inst27|sub|81~1_combout\);

-- Location: LCCOMB_X39_Y1_N18
\inst27|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27|sub|81~3_combout\ = (\MSC[2]~input_o\ & ((\inst27|sub|81~1_combout\))) # (!\MSC[2]~input_o\ & (\inst27|sub|81~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC[2]~input_o\,
	datac => \inst27|sub|81~2_combout\,
	datad => \inst27|sub|81~1_combout\,
	combout => \inst27|sub|81~3_combout\);

-- Location: LCCOMB_X39_Y1_N20
\inst11|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|9~1_combout\ = (\inst11|9~0_combout\ & (((\inst27|sub|81~3_combout\) # (!\MSB[0]~input_o\)))) # (!\inst11|9~0_combout\ & (\inst3~q\ & (\MSB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst11|9~0_combout\,
	datac => \MSB[0]~input_o\,
	datad => \inst27|sub|81~3_combout\,
	combout => \inst11|9~1_combout\);

-- Location: FF_X39_Y1_N21
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|9~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X40_Y1_N16
\inst37|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37|9~0_combout\ = (\MSA[1]~input_o\ & (((\inst7~q\) # (\MSA[0]~input_o\)))) # (!\MSA[1]~input_o\ & (\INPUT[2]~input_o\ & ((!\MSA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[2]~input_o\,
	datab => \inst7~q\,
	datac => \MSA[1]~input_o\,
	datad => \MSA[0]~input_o\,
	combout => \inst37|9~0_combout\);

-- Location: LCCOMB_X39_Y1_N14
\inst37|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37|9~1_combout\ = (\MSA[0]~input_o\ & ((\inst37|9~0_combout\ & ((\inst27|sub|81~3_combout\))) # (!\inst37|9~0_combout\ & (\inst3~q\)))) # (!\MSA[0]~input_o\ & (\inst37|9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst37|9~0_combout\,
	datac => \inst3~q\,
	datad => \inst27|sub|81~3_combout\,
	combout => \inst37|9~1_combout\);

-- Location: FF_X39_Y1_N15
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst37|9~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X39_Y1_N24
\inst25|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|106~0_combout\ = (\inst36~combout\ & ((\inst5~q\ & ((\inst12~q\) # (\inst25|sub|104~0_combout\))) # (!\inst5~q\ & (\inst12~q\ & \inst25|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~q\,
	datab => \inst12~q\,
	datac => \inst36~combout\,
	datad => \inst25|sub|104~0_combout\,
	combout => \inst25|sub|106~0_combout\);

-- Location: LCCOMB_X39_Y1_N26
\inst26|sub|81~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~7_combout\ = (\MSC[1]~input_o\ & (\inst3~q\)) # (!\MSC[1]~input_o\ & ((\inst25|sub|106~0_combout\) # ((\inst3~q\ & \inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \MSC[1]~input_o\,
	datac => \inst7~q\,
	datad => \inst25|sub|106~0_combout\,
	combout => \inst26|sub|81~7_combout\);

-- Location: LCCOMB_X38_Y1_N16
\inst26|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26|sub|81~6_combout\ = \inst26|sub|81~4_combout\ $ (((\inst26|sub|81~5_combout\ & \inst26|sub|81~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst26|sub|81~4_combout\,
	datac => \inst26|sub|81~5_combout\,
	datad => \inst26|sub|81~7_combout\,
	combout => \inst26|sub|81~6_combout\);

-- Location: LCCOMB_X38_Y1_N10
\inst37|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37|10~1_combout\ = (\inst37|10~0_combout\ & (((\inst26|sub|81~6_combout\) # (!\MSA[1]~input_o\)))) # (!\inst37|10~0_combout\ & (\inst6~q\ & (\MSA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst37|10~0_combout\,
	datab => \inst6~q\,
	datac => \MSA[1]~input_o\,
	datad => \inst26|sub|81~6_combout\,
	combout => \inst37|10~1_combout\);

-- Location: FF_X38_Y1_N11
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst37|10~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X38_Y1_N8
\inst11|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|10~0_combout\ = (\MSB[1]~input_o\ & (((\MSB[0]~input_o\)))) # (!\MSB[1]~input_o\ & ((\MSB[0]~input_o\ & ((\inst2~q\))) # (!\MSB[0]~input_o\ & (\INPUT[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[1]~input_o\,
	datab => \INPUT[3]~input_o\,
	datac => \MSB[0]~input_o\,
	datad => \inst2~q\,
	combout => \inst11|10~0_combout\);

-- Location: LCCOMB_X38_Y1_N20
\inst11|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|10~1_combout\ = (\MSB[1]~input_o\ & ((\inst11|10~0_combout\ & ((\inst26|sub|81~6_combout\))) # (!\inst11|10~0_combout\ & (\inst6~q\)))) # (!\MSB[1]~input_o\ & (\inst11|10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[1]~input_o\,
	datab => \inst11|10~0_combout\,
	datac => \inst6~q\,
	datad => \inst26|sub|81~6_combout\,
	combout => \inst11|10~1_combout\);

-- Location: FF_X38_Y1_N21
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|10~1_combout\,
	clrn => \CLR_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X38_Y1_N4
\inst25|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|106~1_combout\ = (\inst25|sub|106~0_combout\) # ((\inst3~q\ & \inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25|sub|106~0_combout\,
	datac => \inst3~q\,
	datad => \inst7~q\,
	combout => \inst25|sub|106~1_combout\);

-- Location: LCCOMB_X38_Y1_N26
\inst25|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|sub|107~0_combout\ = (\inst6~q\ & ((\inst25|sub|106~1_combout\) # (\inst2~q\))) # (!\inst6~q\ & (\inst25|sub|106~1_combout\ & \inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst6~q\,
	datac => \inst25|sub|106~1_combout\,
	datad => \inst2~q\,
	combout => \inst25|sub|107~0_combout\);

-- Location: LCCOMB_X62_Y50_N12
\inst62|inst32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst32~0_combout\ = (\inst3~q\ & ((\inst5~q\) # (\inst2~q\ $ (\inst4~q\)))) # (!\inst3~q\ & ((\inst2~q\ $ (\inst5~q\)) # (!\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst32~0_combout\);

-- Location: LCCOMB_X62_Y50_N18
\inst62|inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst47~0_combout\ = (\inst2~q\ & ((\inst4~q\ & ((\inst5~q\))) # (!\inst4~q\ & (\inst3~q\)))) # (!\inst2~q\ & (\inst3~q\ & (\inst5~q\ $ (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst47~0_combout\);

-- Location: LCCOMB_X62_Y50_N4
\inst62|inst8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst8~0_combout\ = (\inst3~q\ & (\inst2~q\ & ((\inst5~q\) # (!\inst4~q\)))) # (!\inst3~q\ & (!\inst2~q\ & (\inst5~q\ & !\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst8~0_combout\);

-- Location: LCCOMB_X62_Y50_N10
\inst62|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst17~0_combout\ = (\inst5~q\ & ((\inst3~q\ & ((\inst4~q\))) # (!\inst3~q\ & (\inst2~q\ & !\inst4~q\)))) # (!\inst5~q\ & (!\inst2~q\ & (\inst3~q\ $ (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst17~0_combout\);

-- Location: LCCOMB_X62_Y50_N0
\inst62|inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst16~0_combout\ = (\inst5~q\ & (((!\inst2~q\ & \inst4~q\)))) # (!\inst5~q\ & ((\inst3~q\ & (!\inst2~q\)) # (!\inst3~q\ & ((\inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst16~0_combout\);

-- Location: LCCOMB_X62_Y50_N26
\inst62|inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst15~0_combout\ = (\inst3~q\ & (\inst4~q\ & (\inst2~q\ $ (\inst5~q\)))) # (!\inst3~q\ & (!\inst2~q\ & ((\inst5~q\) # (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst15~0_combout\);

-- Location: LCCOMB_X62_Y50_N8
\inst62|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst62|inst9~0_combout\ = (\inst4~q\ & ((\inst2~q\) # (\inst3~q\ $ (\inst5~q\)))) # (!\inst4~q\ & ((\inst5~q\) # (\inst3~q\ $ (\inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst5~q\,
	datad => \inst4~q\,
	combout => \inst62|inst9~0_combout\);

-- Location: LCCOMB_X42_Y1_N4
\inst32|inst32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst32~0_combout\ = (\inst7~q\ & ((\inst12~q\) # (\inst8~q\ $ (\inst6~q\)))) # (!\inst7~q\ & ((\inst12~q\ $ (\inst6~q\)) # (!\inst8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst32~0_combout\);

-- Location: LCCOMB_X42_Y1_N30
\inst32|inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst47~0_combout\ = (\inst12~q\ & ((\inst8~q\ & ((!\inst6~q\))) # (!\inst8~q\ & (!\inst7~q\)))) # (!\inst12~q\ & ((\inst8~q\ $ (!\inst6~q\)) # (!\inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst47~0_combout\);

-- Location: LCCOMB_X42_Y1_N20
\inst32|inst8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst8~0_combout\ = (\inst7~q\ & (\inst6~q\ & ((\inst12~q\) # (!\inst8~q\)))) # (!\inst7~q\ & (!\inst8~q\ & (\inst12~q\ & !\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst8~0_combout\);

-- Location: LCCOMB_X42_Y1_N14
\inst32|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst17~0_combout\ = (\inst12~q\ & ((\inst7~q\ & (\inst8~q\)) # (!\inst7~q\ & (!\inst8~q\ & \inst6~q\)))) # (!\inst12~q\ & (!\inst6~q\ & (\inst7~q\ $ (\inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst17~0_combout\);

-- Location: LCCOMB_X42_Y1_N0
\inst32|inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst16~0_combout\ = (\inst12~q\ & (((\inst8~q\ & !\inst6~q\)))) # (!\inst12~q\ & ((\inst7~q\ & ((!\inst6~q\))) # (!\inst7~q\ & (\inst8~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst16~0_combout\);

-- Location: LCCOMB_X42_Y1_N2
\inst32|inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst15~0_combout\ = (\inst7~q\ & (\inst8~q\ & (\inst12~q\ $ (\inst6~q\)))) # (!\inst7~q\ & (!\inst6~q\ & ((\inst8~q\) # (\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst15~0_combout\);

-- Location: LCCOMB_X42_Y1_N12
\inst32|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32|inst9~0_combout\ = (\inst8~q\ & ((\inst6~q\) # (\inst7~q\ $ (\inst12~q\)))) # (!\inst8~q\ & ((\inst12~q\) # (\inst7~q\ $ (\inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst8~q\,
	datac => \inst12~q\,
	datad => \inst6~q\,
	combout => \inst32|inst9~0_combout\);

-- Location: LCCOMB_X74_Y40_N4
\inst33|inst32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst32~0_combout\ = (\inst27|sub|81~3_combout\ & ((\inst28|sub|81~4_combout\) # (\inst26|sub|81~6_combout\ $ (\inst29|sub|81~0_combout\)))) # (!\inst27|sub|81~3_combout\ & ((\inst26|sub|81~6_combout\ $ (\inst28|sub|81~4_combout\)) # 
-- (!\inst29|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst32~0_combout\);

-- Location: LCCOMB_X74_Y40_N2
\inst33|inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst47~0_combout\ = (\inst26|sub|81~6_combout\ & ((\inst29|sub|81~0_combout\ & ((!\inst28|sub|81~4_combout\))) # (!\inst29|sub|81~0_combout\ & (!\inst27|sub|81~3_combout\)))) # (!\inst26|sub|81~6_combout\ & ((\inst29|sub|81~0_combout\ $ 
-- (!\inst28|sub|81~4_combout\)) # (!\inst27|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst47~0_combout\);

-- Location: LCCOMB_X74_Y40_N12
\inst33|inst8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst8~0_combout\ = (\inst27|sub|81~3_combout\ & (\inst26|sub|81~6_combout\ & ((\inst28|sub|81~4_combout\) # (!\inst29|sub|81~0_combout\)))) # (!\inst27|sub|81~3_combout\ & (!\inst26|sub|81~6_combout\ & (!\inst29|sub|81~0_combout\ & 
-- \inst28|sub|81~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst8~0_combout\);

-- Location: LCCOMB_X74_Y40_N10
\inst33|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst17~0_combout\ = (\inst28|sub|81~4_combout\ & ((\inst27|sub|81~3_combout\ & ((\inst29|sub|81~0_combout\))) # (!\inst27|sub|81~3_combout\ & (\inst26|sub|81~6_combout\ & !\inst29|sub|81~0_combout\)))) # (!\inst28|sub|81~4_combout\ & 
-- (!\inst26|sub|81~6_combout\ & (\inst27|sub|81~3_combout\ $ (\inst29|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst17~0_combout\);

-- Location: LCCOMB_X74_Y40_N20
\inst33|inst16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst16~0_combout\ = (\inst28|sub|81~4_combout\ & (((!\inst26|sub|81~6_combout\ & \inst29|sub|81~0_combout\)))) # (!\inst28|sub|81~4_combout\ & ((\inst27|sub|81~3_combout\ & (!\inst26|sub|81~6_combout\)) # (!\inst27|sub|81~3_combout\ & 
-- ((\inst29|sub|81~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst16~0_combout\);

-- Location: LCCOMB_X74_Y40_N30
\inst33|inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst15~0_combout\ = (\inst27|sub|81~3_combout\ & (\inst29|sub|81~0_combout\ & (\inst26|sub|81~6_combout\ $ (\inst28|sub|81~4_combout\)))) # (!\inst27|sub|81~3_combout\ & (!\inst26|sub|81~6_combout\ & ((\inst29|sub|81~0_combout\) # 
-- (\inst28|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst15~0_combout\);

-- Location: LCCOMB_X74_Y40_N16
\inst33|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|inst9~0_combout\ = (\inst29|sub|81~0_combout\ & ((\inst26|sub|81~6_combout\) # (\inst27|sub|81~3_combout\ $ (\inst28|sub|81~4_combout\)))) # (!\inst29|sub|81~0_combout\ & ((\inst28|sub|81~4_combout\) # (\inst27|sub|81~3_combout\ $ 
-- (\inst26|sub|81~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst27|sub|81~3_combout\,
	datab => \inst26|sub|81~6_combout\,
	datac => \inst29|sub|81~0_combout\,
	datad => \inst28|sub|81~4_combout\,
	combout => \inst33|inst9~0_combout\);

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

ww_C_out <= \C_out~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGA_A_L <= \REGA_A_L~output_o\;

ww_REGA_B_L <= \REGA_B_L~output_o\;

ww_REGA_C_L <= \REGA_C_L~output_o\;

ww_REGA_D_L <= \REGA_D_L~output_o\;

ww_REGA_E_L <= \REGA_E_L~output_o\;

ww_REGA_F_L <= \REGA_F_L~output_o\;

ww_REGA_G_L <= \REGA_G_L~output_o\;

ww_REGB_A_L <= \REGB_A_L~output_o\;

ww_REGB_B_L <= \REGB_B_L~output_o\;

ww_REGB_C_L <= \REGB_C_L~output_o\;

ww_REGB_D_L <= \REGB_D_L~output_o\;

ww_REGB_E_L <= \REGB_E_L~output_o\;

ww_REGB_F_L <= \REGB_F_L~output_o\;

ww_REGB_G_L <= \REGB_G_L~output_o\;

ww_OUTPUT_A_L <= \OUTPUT_A_L~output_o\;

ww_OUTPUT_B_L <= \OUTPUT_B_L~output_o\;

ww_OUTPUT_C_L <= \OUTPUT_C_L~output_o\;

ww_OUTPUT_D_L <= \OUTPUT_D_L~output_o\;

ww_OUTPUT_E_L <= \OUTPUT_E_L~output_o\;

ww_OUTPUT_F_L <= \OUTPUT_F_L~output_o\;

ww_OUTPUT_G_L <= \OUTPUT_G_L~output_o\;
END structure;


