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

-- DATE "04/05/2026 20:36:16"

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

ENTITY 	Lab6_PART1 IS
    PORT (
	C_OUT : OUT std_logic;
	CLK : IN std_logic;
	C_IN : IN std_logic;
	RESET_L : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	IR_LOAD : OUT std_logic;
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END Lab6_PART1;

-- Design Ports Information
-- C_OUT	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_LOAD	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_IN	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_L	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_PART1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C_OUT : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_C_IN : std_logic;
SIGNAL ww_RESET_L : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_IR_LOAD : std_logic;
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET_L~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C_OUT~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \IR_LOAD~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst|inst3~feeder_combout\ : std_logic;
SIGNAL \RESET_L~input_o\ : std_logic;
SIGNAL \RESET_L~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst1~0_combout\ : std_logic;
SIGNAL \inst3|inst1~q\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \inst3|inst5|MSC[0]~0_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst|inst1~feeder_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \C_IN~input_o\ : std_logic;
SIGNAL \inst2|inst4~0_combout\ : std_logic;
SIGNAL \inst3|inst5|MSA[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst4~q\ : std_logic;
SIGNAL \inst2|inst29|sub|81~2_combout\ : std_logic;
SIGNAL \inst2|inst29|sub|81~3_combout\ : std_logic;
SIGNAL \inst3|inst5|MSB[0]~0_combout\ : std_logic;
SIGNAL \inst2|inst8~q\ : std_logic;
SIGNAL \inst2|inst28|sub|81~4_combout\ : std_logic;
SIGNAL \inst2|inst12~feeder_combout\ : std_logic;
SIGNAL \inst2|inst12~q\ : std_logic;
SIGNAL \inst2|inst25|sub|78~0_combout\ : std_logic;
SIGNAL \inst2|inst28|sub|81~2_combout\ : std_logic;
SIGNAL \inst2|inst28|sub|81~3_combout\ : std_logic;
SIGNAL \inst2|inst5~0_combout\ : std_logic;
SIGNAL \inst2|inst5~q\ : std_logic;
SIGNAL \inst2|inst25|sub|104~0_combout\ : std_logic;
SIGNAL \inst2|inst27|sub|81~2_combout\ : std_logic;
SIGNAL \inst2|inst27|sub|81~5_combout\ : std_logic;
SIGNAL \inst2|inst7~q\ : std_logic;
SIGNAL \inst2|inst27|sub|81~3_combout\ : std_logic;
SIGNAL \inst2|inst27|sub|81~4_combout\ : std_logic;
SIGNAL \inst2|inst3~0_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \inst2|inst3~q\ : std_logic;
SIGNAL \inst2|inst25|sub|100~combout\ : std_logic;
SIGNAL \inst2|inst25|sub|82~0_combout\ : std_logic;
SIGNAL \inst2|inst25|sub|106~0_combout\ : std_logic;
SIGNAL \inst2|inst25|sub|106~1_combout\ : std_logic;
SIGNAL \inst2|inst26|sub|81~3_combout\ : std_logic;
SIGNAL \inst2|inst26|sub|81~2_combout\ : std_logic;
SIGNAL \inst2|inst26|sub|81~4_combout\ : std_logic;
SIGNAL \inst2|inst6~q\ : std_logic;
SIGNAL \inst2|inst26|sub|81~6_combout\ : std_logic;
SIGNAL \inst2|inst26|sub|81~5_combout\ : std_logic;
SIGNAL \inst2|inst2~0_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \inst2|inst2~q\ : std_logic;
SIGNAL \inst2|inst25|sub|107~0_combout\ : std_logic;
SIGNAL \inst3|inst5|MSC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|inst5|ALT_INV_MSA[0]~0_combout\ : std_logic;
SIGNAL \inst3|inst5|ALT_INV_MSC\ : std_logic_vector(1 DOWNTO 1);
SIGNAL \inst3|ALT_INV_inst1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

C_OUT <= ww_C_OUT;
ww_CLK <= CLK;
ww_C_IN <= C_IN;
ww_RESET_L <= RESET_L;
ww_INPUT <= INPUT;
MSA <= ww_MSA;
IR_LOAD <= ww_IR_LOAD;
MSB <= ww_MSB;
MSC <= ww_MSC;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET_L~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_L~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst3|inst5|ALT_INV_MSA[0]~0_combout\ <= NOT \inst3|inst5|MSA[0]~0_combout\;
\inst3|inst5|ALT_INV_MSC\(1) <= NOT \inst3|inst5|MSC\(1);
\inst3|ALT_INV_inst1~q\ <= NOT \inst3|inst1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X54_Y54_N23
\C_OUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst25|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \C_OUT~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5|MSC[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5|MSA[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\IR_LOAD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_inst1~q\,
	devoe => ww_devoe,
	o => \IR_LOAD~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => \inst3|inst5|MSB[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5|MSC[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5|ALT_INV_MSC\(1),
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|inst5|MSC\(0),
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst26|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst27|sub|81~5_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst28|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst29|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst2~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst3~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst5~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst4~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst6~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst7~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst12~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|inst8~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
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

-- Location: CLKCTRL_G3
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

-- Location: IOIBUF_X60_Y54_N8
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

-- Location: LCCOMB_X57_Y53_N6
\inst|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3~feeder_combout\ = \INPUT[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[0]~input_o\,
	combout => \inst|inst3~feeder_combout\);

-- Location: IOIBUF_X0_Y18_N22
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

-- Location: CLKCTRL_G4
\RESET_L~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET_L~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET_L~inputclkctrl_outclk\);

-- Location: LCCOMB_X58_Y53_N26
\inst3|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst1~0_combout\ = !\inst3|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1~q\,
	combout => \inst3|inst1~0_combout\);

-- Location: FF_X58_Y53_N27
\inst3|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst3|inst1~0_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|inst1~q\);

-- Location: FF_X57_Y53_N7
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst3~feeder_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|ALT_INV_inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: LCCOMB_X57_Y53_N4
\inst3|inst5|MSC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst5|MSC[0]~0_combout\ = (!\inst|inst3~q\ & \inst3|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datad => \inst3|inst1~q\,
	combout => \inst3|inst5|MSC[0]~0_combout\);

-- Location: IOIBUF_X58_Y54_N8
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

-- Location: LCCOMB_X57_Y53_N26
\inst|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1~feeder_combout\ = \INPUT[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INPUT[1]~input_o\,
	combout => \inst|inst1~feeder_combout\);

-- Location: FF_X57_Y53_N27
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1~feeder_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|ALT_INV_inst1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: LCCOMB_X57_Y53_N20
\inst3|inst5|MSC[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst5|MSC\(1) = (\inst|inst3~q\) # ((\inst|inst1~q\) # (!\inst3|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst3|inst1~q\,
	combout => \inst3|inst5|MSC\(1));

-- Location: LCCOMB_X57_Y53_N22
\inst3|inst5|MSC[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst5|MSC\(0) = (!\inst|inst3~q\ & (\inst|inst1~q\ & \inst3|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst3|inst1~q\,
	combout => \inst3|inst5|MSC\(0));

-- Location: IOIBUF_X60_Y54_N1
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

-- Location: LCCOMB_X56_Y53_N0
\inst2|inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst4~0_combout\ = (\inst3|inst5|MSC[0]~0_combout\ & (\inst2|inst29|sub|81~2_combout\)) # (!\inst3|inst5|MSC[0]~0_combout\ & ((\inst2|inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst29|sub|81~2_combout\,
	datac => \inst2|inst4~q\,
	datad => \inst3|inst5|MSC[0]~0_combout\,
	combout => \inst2|inst4~0_combout\);

-- Location: LCCOMB_X57_Y53_N16
\inst3|inst5|MSA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst5|MSA[0]~0_combout\ = ((!\inst3|inst1~q\) # (!\inst|inst3~q\)) # (!\inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1~q\,
	datac => \inst|inst3~q\,
	datad => \inst3|inst1~q\,
	combout => \inst3|inst5|MSA[0]~0_combout\);

-- Location: FF_X56_Y53_N1
\inst2|inst4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst4~0_combout\,
	asdata => \INPUT[0]~input_o\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	sload => \inst3|inst5|ALT_INV_MSA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst4~q\);

-- Location: LCCOMB_X57_Y53_N12
\inst2|inst29|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst29|sub|81~2_combout\ = (\inst3|inst5|MSC\(0) & (\inst2|inst4~q\ $ (\inst2|inst8~q\ $ (\C_IN~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4~q\,
	datab => \inst2|inst8~q\,
	datac => \inst3|inst5|MSC\(0),
	datad => \C_IN~input_o\,
	combout => \inst2|inst29|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y53_N20
\inst2|inst29|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst29|sub|81~3_combout\ = (\inst|inst3~q\ & (((\inst2|inst4~q\)))) # (!\inst|inst3~q\ & ((\inst3|inst1~q\ & (\inst2|inst29|sub|81~2_combout\)) # (!\inst3|inst1~q\ & ((\inst2|inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst3|inst1~q\,
	datac => \inst2|inst29|sub|81~2_combout\,
	datad => \inst2|inst4~q\,
	combout => \inst2|inst29|sub|81~3_combout\);

-- Location: LCCOMB_X57_Y53_N30
\inst3|inst5|MSB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|inst5|MSB[0]~0_combout\ = (!\inst|inst1~q\ & (\inst|inst3~q\ & \inst3|inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|inst1~q\,
	datac => \inst|inst3~q\,
	datad => \inst3|inst1~q\,
	combout => \inst3|inst5|MSB[0]~0_combout\);

-- Location: FF_X56_Y53_N21
\inst2|inst8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst29|sub|81~3_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|inst5|MSB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst8~q\);

-- Location: LCCOMB_X57_Y53_N2
\inst2|inst28|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst28|sub|81~4_combout\ = (\inst3|inst1~q\ & ((\inst|inst3~q\ & (\inst2|inst5~q\)) # (!\inst|inst3~q\ & ((\inst2|inst28|sub|81~3_combout\))))) # (!\inst3|inst1~q\ & (\inst2|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	datab => \inst3|inst1~q\,
	datac => \inst|inst3~q\,
	datad => \inst2|inst28|sub|81~3_combout\,
	combout => \inst2|inst28|sub|81~4_combout\);

-- Location: LCCOMB_X57_Y53_N28
\inst2|inst12~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst12~feeder_combout\ = \inst2|inst28|sub|81~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|inst28|sub|81~4_combout\,
	combout => \inst2|inst12~feeder_combout\);

-- Location: FF_X57_Y53_N29
\inst2|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst12~feeder_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|inst5|MSB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst12~q\);

-- Location: LCCOMB_X57_Y53_N0
\inst2|inst25|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|78~0_combout\ = \inst2|inst12~q\ $ (((\C_IN~input_o\ & ((\inst2|inst8~q\) # (\inst2|inst4~q\))) # (!\C_IN~input_o\ & (\inst2|inst8~q\ & \inst2|inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C_IN~input_o\,
	datab => \inst2|inst8~q\,
	datac => \inst2|inst4~q\,
	datad => \inst2|inst12~q\,
	combout => \inst2|inst25|sub|78~0_combout\);

-- Location: LCCOMB_X57_Y53_N18
\inst2|inst28|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst28|sub|81~2_combout\ = (\inst3|inst5|MSC\(1) & (((\inst2|inst12~q\) # (\inst2|inst5~q\)))) # (!\inst3|inst5|MSC\(1) & (\inst2|inst4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst4~q\,
	datab => \inst2|inst12~q\,
	datac => \inst2|inst5~q\,
	datad => \inst3|inst5|MSC\(1),
	combout => \inst2|inst28|sub|81~2_combout\);

-- Location: LCCOMB_X57_Y53_N10
\inst2|inst28|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst28|sub|81~3_combout\ = (\inst3|inst5|MSC\(0) & (\inst2|inst5~q\ $ ((\inst2|inst25|sub|78~0_combout\)))) # (!\inst3|inst5|MSC\(0) & (((\inst2|inst28|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	datab => \inst2|inst25|sub|78~0_combout\,
	datac => \inst3|inst5|MSC\(0),
	datad => \inst2|inst28|sub|81~2_combout\,
	combout => \inst2|inst28|sub|81~3_combout\);

-- Location: LCCOMB_X58_Y53_N24
\inst2|inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst5~0_combout\ = (\inst3|inst5|MSC[0]~0_combout\ & ((\inst2|inst28|sub|81~3_combout\))) # (!\inst3|inst5|MSC[0]~0_combout\ & (\inst2|inst5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst5|MSC[0]~0_combout\,
	datac => \inst2|inst5~q\,
	datad => \inst2|inst28|sub|81~3_combout\,
	combout => \inst2|inst5~0_combout\);

-- Location: FF_X58_Y53_N25
\inst2|inst5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst5~0_combout\,
	asdata => \INPUT[1]~input_o\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	sload => \inst3|inst5|ALT_INV_MSA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst5~q\);

-- Location: LCCOMB_X56_Y53_N14
\inst2|inst25|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|104~0_combout\ = (\inst2|inst4~q\ & ((\C_IN~input_o\) # (\inst2|inst8~q\))) # (!\inst2|inst4~q\ & (\C_IN~input_o\ & \inst2|inst8~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|inst4~q\,
	datac => \C_IN~input_o\,
	datad => \inst2|inst8~q\,
	combout => \inst2|inst25|sub|104~0_combout\);

-- Location: LCCOMB_X56_Y53_N26
\inst2|inst27|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst27|sub|81~2_combout\ = (\inst2|inst5~q\ & ((\inst2|inst12~q\) # ((\inst2|inst25|sub|104~0_combout\) # (!\inst3|inst5|MSC\(0))))) # (!\inst2|inst5~q\ & (\inst2|inst12~q\ & (\inst2|inst25|sub|104~0_combout\ & \inst3|inst5|MSC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	datab => \inst2|inst12~q\,
	datac => \inst2|inst25|sub|104~0_combout\,
	datad => \inst3|inst5|MSC\(0),
	combout => \inst2|inst27|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y53_N16
\inst2|inst27|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst27|sub|81~5_combout\ = (\inst|inst3~q\ & (((\inst2|inst3~q\)))) # (!\inst|inst3~q\ & ((\inst3|inst1~q\ & ((\inst2|inst27|sub|81~4_combout\))) # (!\inst3|inst1~q\ & (\inst2|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst3|inst1~q\,
	datac => \inst2|inst3~q\,
	datad => \inst2|inst27|sub|81~4_combout\,
	combout => \inst2|inst27|sub|81~5_combout\);

-- Location: FF_X56_Y53_N17
\inst2|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst27|sub|81~5_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|inst5|MSB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst7~q\);

-- Location: LCCOMB_X56_Y53_N28
\inst2|inst27|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst27|sub|81~3_combout\ = (\inst2|inst3~q\ & ((!\inst3|inst5|MSC\(0)) # (!\inst2|inst7~q\))) # (!\inst2|inst3~q\ & (\inst2|inst7~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3~q\,
	datab => \inst2|inst7~q\,
	datad => \inst3|inst5|MSC\(0),
	combout => \inst2|inst27|sub|81~3_combout\);

-- Location: LCCOMB_X56_Y53_N18
\inst2|inst27|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst27|sub|81~4_combout\ = (\inst3|inst5|MSC\(0) & ((\inst2|inst27|sub|81~2_combout\ $ (\inst2|inst27|sub|81~3_combout\)))) # (!\inst3|inst5|MSC\(0) & ((\inst3|inst5|MSC\(1) & ((\inst2|inst27|sub|81~3_combout\))) # (!\inst3|inst5|MSC\(1) & 
-- (\inst2|inst27|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|MSC\(1),
	datab => \inst3|inst5|MSC\(0),
	datac => \inst2|inst27|sub|81~2_combout\,
	datad => \inst2|inst27|sub|81~3_combout\,
	combout => \inst2|inst27|sub|81~4_combout\);

-- Location: LCCOMB_X56_Y53_N10
\inst2|inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst3~0_combout\ = (\inst3|inst5|MSC[0]~0_combout\ & ((\inst2|inst27|sub|81~4_combout\))) # (!\inst3|inst5|MSC[0]~0_combout\ & (\inst2|inst3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|MSC[0]~0_combout\,
	datac => \inst2|inst3~q\,
	datad => \inst2|inst27|sub|81~4_combout\,
	combout => \inst2|inst3~0_combout\);

-- Location: IOIBUF_X56_Y54_N1
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

-- Location: FF_X56_Y53_N11
\inst2|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst3~0_combout\,
	asdata => \INPUT[2]~input_o\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	sload => \inst3|inst5|ALT_INV_MSA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst3~q\);

-- Location: LCCOMB_X55_Y53_N16
\inst2|inst25|sub|100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|100~combout\ = (\inst2|inst3~q\ & \inst2|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst3~q\,
	datad => \inst2|inst7~q\,
	combout => \inst2|inst25|sub|100~combout\);

-- Location: LCCOMB_X56_Y53_N30
\inst2|inst25|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|82~0_combout\ = \inst2|inst2~q\ $ (\inst2|inst6~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|inst2~q\,
	datad => \inst2|inst6~q\,
	combout => \inst2|inst25|sub|82~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\inst2|inst25|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|106~0_combout\ = (\inst2|inst3~q\) # (\inst2|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3~q\,
	datad => \inst2|inst7~q\,
	combout => \inst2|inst25|sub|106~0_combout\);

-- Location: LCCOMB_X56_Y53_N12
\inst2|inst25|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|106~1_combout\ = (\inst2|inst25|sub|106~0_combout\ & ((\inst2|inst5~q\ & ((\inst2|inst12~q\) # (\inst2|inst25|sub|104~0_combout\))) # (!\inst2|inst5~q\ & (\inst2|inst12~q\ & \inst2|inst25|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst5~q\,
	datab => \inst2|inst12~q\,
	datac => \inst2|inst25|sub|104~0_combout\,
	datad => \inst2|inst25|sub|106~0_combout\,
	combout => \inst2|inst25|sub|106~1_combout\);

-- Location: LCCOMB_X56_Y53_N8
\inst2|inst26|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst26|sub|81~3_combout\ = (\inst3|inst5|MSC\(0) & (\inst2|inst25|sub|82~0_combout\ $ (((\inst2|inst25|sub|100~combout\) # (\inst2|inst25|sub|106~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst25|sub|82~0_combout\,
	datab => \inst3|inst5|MSC\(0),
	datac => \inst2|inst25|sub|100~combout\,
	datad => \inst2|inst25|sub|106~1_combout\,
	combout => \inst2|inst26|sub|81~3_combout\);

-- Location: LCCOMB_X57_Y53_N24
\inst2|inst26|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst26|sub|81~2_combout\ = (\inst2|inst3~q\ & (((\inst|inst3~q\) # (!\inst3|inst1~q\)) # (!\inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst3~q\,
	datab => \inst|inst1~q\,
	datac => \inst|inst3~q\,
	datad => \inst3|inst1~q\,
	combout => \inst2|inst26|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y53_N6
\inst2|inst26|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst26|sub|81~4_combout\ = (\inst3|inst5|MSC[0]~0_combout\ & (((\inst2|inst26|sub|81~3_combout\) # (\inst2|inst26|sub|81~2_combout\)))) # (!\inst3|inst5|MSC[0]~0_combout\ & (\inst2|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|MSC[0]~0_combout\,
	datab => \inst2|inst2~q\,
	datac => \inst2|inst26|sub|81~3_combout\,
	datad => \inst2|inst26|sub|81~2_combout\,
	combout => \inst2|inst26|sub|81~4_combout\);

-- Location: FF_X56_Y53_N7
\inst2|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst26|sub|81~4_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	ena => \inst3|inst5|MSB[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst6~q\);

-- Location: LCCOMB_X56_Y53_N22
\inst2|inst26|sub|81~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst26|sub|81~6_combout\ = (\inst3|inst5|MSC\(0) & (\inst2|inst6~q\ $ ((!\inst2|inst2~q\)))) # (!\inst3|inst5|MSC\(0) & (((\inst2|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst6~q\,
	datab => \inst2|inst2~q\,
	datac => \inst2|inst3~q\,
	datad => \inst3|inst5|MSC\(0),
	combout => \inst2|inst26|sub|81~6_combout\);

-- Location: LCCOMB_X56_Y53_N24
\inst2|inst26|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst26|sub|81~5_combout\ = \inst2|inst26|sub|81~6_combout\ $ (((!\inst2|inst25|sub|100~combout\ & (\inst3|inst5|MSC\(0) & !\inst2|inst25|sub|106~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst25|sub|100~combout\,
	datab => \inst3|inst5|MSC\(0),
	datac => \inst2|inst26|sub|81~6_combout\,
	datad => \inst2|inst25|sub|106~1_combout\,
	combout => \inst2|inst26|sub|81~5_combout\);

-- Location: LCCOMB_X56_Y53_N4
\inst2|inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst2~0_combout\ = (\inst3|inst5|MSC[0]~0_combout\ & ((\inst2|inst26|sub|81~5_combout\))) # (!\inst3|inst5|MSC[0]~0_combout\ & (\inst2|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst5|MSC[0]~0_combout\,
	datac => \inst2|inst2~q\,
	datad => \inst2|inst26|sub|81~5_combout\,
	combout => \inst2|inst2~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
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

-- Location: FF_X56_Y53_N5
\inst2|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst2|inst2~0_combout\,
	asdata => \INPUT[3]~input_o\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	sload => \inst3|inst5|ALT_INV_MSA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|inst2~q\);

-- Location: LCCOMB_X55_Y53_N22
\inst2|inst25|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|inst25|sub|107~0_combout\ = (\inst2|inst2~q\ & ((\inst2|inst6~q\) # ((\inst2|inst25|sub|106~1_combout\) # (\inst2|inst25|sub|100~combout\)))) # (!\inst2|inst2~q\ & (\inst2|inst6~q\ & ((\inst2|inst25|sub|106~1_combout\) # 
-- (\inst2|inst25|sub|100~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|inst2~q\,
	datab => \inst2|inst6~q\,
	datac => \inst2|inst25|sub|106~1_combout\,
	datad => \inst2|inst25|sub|100~combout\,
	combout => \inst2|inst25|sub|107~0_combout\);

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

ww_C_OUT <= \C_OUT~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_IR_LOAD <= \IR_LOAD~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;
END structure;


