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

-- DATE "02/24/2026 17:21:15"

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

ENTITY 	lab3_3bit_cnt IS
    PORT (
	Sp : OUT std_logic;
	F_NOT : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	CLR_L : IN std_logic_vector(2 DOWNTO 0);
	CLOCK : IN std_logic;
	B : IN std_logic;
	SET_L : IN std_logic_vector(2 DOWNTO 0);
	A_L : OUT std_logic;
	B_L : OUT std_logic;
	C_L : OUT std_logic;
	D_L : OUT std_logic;
	E_L : OUT std_logic;
	F_L : OUT std_logic;
	G_L : OUT std_logic;
	Sp_L : OUT std_logic
	);
END lab3_3bit_cnt;

-- Design Ports Information
-- Sp	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_L	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_L	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_L	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_L	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_L	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_L	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_L	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp_L	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_NOT	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET_L[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L[2]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET_L[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L[1]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET_L[0]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_3bit_cnt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Sp : std_logic;
SIGNAL ww_F_NOT : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLR_L : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLOCK : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_SET_L : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A_L : std_logic;
SIGNAL ww_B_L : std_logic;
SIGNAL ww_C_L : std_logic;
SIGNAL ww_D_L : std_logic;
SIGNAL ww_E_L : std_logic;
SIGNAL ww_F_L : std_logic;
SIGNAL ww_G_L : std_logic;
SIGNAL ww_Sp_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLOCK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Sp~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \A_L~output_o\ : std_logic;
SIGNAL \B_L~output_o\ : std_logic;
SIGNAL \C_L~output_o\ : std_logic;
SIGNAL \D_L~output_o\ : std_logic;
SIGNAL \E_L~output_o\ : std_logic;
SIGNAL \F_L~output_o\ : std_logic;
SIGNAL \G_L~output_o\ : std_logic;
SIGNAL \Sp_L~output_o\ : std_logic;
SIGNAL \SET_L[2]~input_o\ : std_logic;
SIGNAL \CLR_L[2]~input_o\ : std_logic;
SIGNAL \inst2~1_combout\ : std_logic;
SIGNAL \CLOCK~input_o\ : std_logic;
SIGNAL \CLOCK~inputclkctrl_outclk\ : std_logic;
SIGNAL \F_NOT~input_o\ : std_logic;
SIGNAL \CLR_L[0]~input_o\ : std_logic;
SIGNAL \SET_L[0]~input_o\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \CLR_L[1]~input_o\ : std_logic;
SIGNAL \SET_L[1]~input_o\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~5_combout\ : std_logic;
SIGNAL \inst3~3_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst3~_emulated_q\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;
SIGNAL \inst24~combout\ : std_logic;
SIGNAL \inst4~3_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~_emulated_q\ : std_logic;
SIGNAL \inst4~2_combout\ : std_logic;
SIGNAL \inst30~combout\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst2~3_combout\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \inst2~_emulated_q\ : std_logic;
SIGNAL \inst2~2_combout\ : std_logic;
SIGNAL \inst8~combout\ : std_logic;
SIGNAL \inst|inst32~0_combout\ : std_logic;
SIGNAL \inst|inst47~0_combout\ : std_logic;
SIGNAL \inst|inst8~0_combout\ : std_logic;
SIGNAL \inst|inst17~0_combout\ : std_logic;
SIGNAL \inst|inst17~1_combout\ : std_logic;
SIGNAL \inst|inst15~0_combout\ : std_logic;
SIGNAL \inst|inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst8~combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst32~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst47~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst8~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst17~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_inst15~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Sp <= ww_Sp;
ww_F_NOT <= F_NOT;
Q <= ww_Q;
ww_CLR_L <= CLR_L;
ww_CLOCK <= CLOCK;
ww_B <= B;
ww_SET_L <= SET_L;
A_L <= ww_A_L;
B_L <= ww_B_L;
C_L <= ww_C_L;
D_L <= ww_D_L;
E_L <= ww_E_L;
F_L <= ww_F_L;
G_L <= ww_G_L;
Sp_L <= ww_Sp_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLOCK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK~input_o\);
\ALT_INV_inst8~combout\ <= NOT \inst8~combout\;
\inst|ALT_INV_inst32~0_combout\ <= NOT \inst|inst32~0_combout\;
\inst|ALT_INV_inst17~0_combout\ <= NOT \inst|inst17~0_combout\;
\inst|ALT_INV_inst47~0_combout\ <= NOT \inst|inst47~0_combout\;
\ALT_INV_inst3~0_combout\ <= NOT \inst3~0_combout\;
\inst|ALT_INV_inst8~0_combout\ <= NOT \inst|inst8~0_combout\;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
\ALT_INV_inst2~0_combout\ <= NOT \inst2~0_combout\;
\inst|ALT_INV_inst17~1_combout\ <= NOT \inst|inst17~1_combout\;
\inst|ALT_INV_inst9~0_combout\ <= NOT \inst|inst9~0_combout\;
\inst|ALT_INV_inst15~0_combout\ <= NOT \inst|inst15~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y44_N20
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

-- Location: IOOBUF_X60_Y54_N2
\Sp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~combout\,
	devoe => ww_devoe,
	o => \Sp~output_o\);

-- Location: IOOBUF_X0_Y25_N2
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~2_combout\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~2_combout\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~2_combout\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst32~0_combout\,
	devoe => ww_devoe,
	o => \A_L~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst47~0_combout\,
	devoe => ww_devoe,
	o => \B_L~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst8~0_combout\,
	devoe => ww_devoe,
	o => \C_L~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \D_L~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst17~1_combout\,
	devoe => ww_devoe,
	o => \E_L~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst15~0_combout\,
	devoe => ww_devoe,
	o => \F_L~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_inst9~0_combout\,
	devoe => ww_devoe,
	o => \G_L~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\Sp_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst8~combout\,
	devoe => ww_devoe,
	o => \Sp_L~output_o\);

-- Location: IOIBUF_X24_Y0_N1
\SET_L[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_L(2),
	o => \SET_L[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\CLR_L[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L(2),
	o => \CLR_L[2]~input_o\);

-- Location: LCCOMB_X55_Y6_N24
\inst2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~1_combout\ = (\CLR_L[2]~input_o\ & ((\inst2~1_combout\) # (!\SET_L[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_L[2]~input_o\,
	datac => \CLR_L[2]~input_o\,
	datad => \inst2~1_combout\,
	combout => \inst2~1_combout\);

-- Location: IOIBUF_X31_Y0_N22
\CLOCK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK,
	o => \CLOCK~input_o\);

-- Location: CLKCTRL_G19
\CLOCK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK~inputclkctrl_outclk\);

-- Location: IOIBUF_X46_Y0_N1
\F_NOT~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_F_NOT,
	o => \F_NOT~input_o\);

-- Location: IOIBUF_X24_Y0_N8
\CLR_L[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L(0),
	o => \CLR_L[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N29
\SET_L[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_L(0),
	o => \SET_L[0]~input_o\);

-- Location: LCCOMB_X55_Y6_N10
\inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\CLR_L[0]~input_o\ & ((\inst4~1_combout\) # (!\SET_L[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L[0]~input_o\,
	datac => \SET_L[0]~input_o\,
	datad => \inst4~1_combout\,
	combout => \inst4~1_combout\);

-- Location: IOIBUF_X40_Y0_N15
\B~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X55_Y6_N20
inst20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (!\inst4~2_combout\ & (\B~input_o\ & !\inst2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \B~input_o\,
	datad => \inst2~2_combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X55_Y6_N22
inst15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\F_NOT~input_o\ & (!\B~input_o\ & \inst4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_NOT~input_o\,
	datac => \B~input_o\,
	datad => \inst4~2_combout\,
	combout => \inst15~combout\);

-- Location: IOIBUF_X14_Y0_N8
\CLR_L[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR_L(1),
	o => \CLR_L[1]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\SET_L[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET_L(1),
	o => \SET_L[1]~input_o\);

-- Location: LCCOMB_X56_Y6_N12
\inst3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\CLR_L[1]~input_o\ & ((\inst3~1_combout\) # (!\SET_L[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L[1]~input_o\,
	datac => \SET_L[1]~input_o\,
	datad => \inst3~1_combout\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X56_Y6_N24
\inst3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~5_combout\ = (\F_NOT~input_o\ & ((\B~input_o\) # ((!\inst3~2_combout\)))) # (!\F_NOT~input_o\ & (((\inst3~2_combout\ & !\inst2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \F_NOT~input_o\,
	datab => \B~input_o\,
	datac => \inst3~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst3~5_combout\);

-- Location: LCCOMB_X56_Y6_N20
\inst3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~3_combout\ = \inst3~1_combout\ $ ((((\B~input_o\ & !\inst4~2_combout\)) # (!\inst3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~1_combout\,
	datab => \B~input_o\,
	datac => \inst4~2_combout\,
	datad => \inst3~5_combout\,
	combout => \inst3~3_combout\);

-- Location: LCCOMB_X56_Y6_N18
\inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (!\CLR_L[1]~input_o\) # (!\SET_L[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SET_L[1]~input_o\,
	datad => \CLR_L[1]~input_o\,
	combout => \inst3~0_combout\);

-- Location: FF_X56_Y6_N21
\inst3~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst3~3_combout\,
	clrn => \ALT_INV_inst3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~_emulated_q\);

-- Location: LCCOMB_X56_Y6_N22
\inst3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\CLR_L[1]~input_o\ & ((\inst3~1_combout\ $ (\inst3~_emulated_q\)) # (!\SET_L[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L[1]~input_o\,
	datab => \inst3~1_combout\,
	datac => \SET_L[1]~input_o\,
	datad => \inst3~_emulated_q\,
	combout => \inst3~2_combout\);

-- Location: LCCOMB_X55_Y6_N16
inst24 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24~combout\ = (\F_NOT~input_o\) # (\inst3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \F_NOT~input_o\,
	datad => \inst3~2_combout\,
	combout => \inst24~combout\);

-- Location: LCCOMB_X55_Y6_N12
\inst4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~3_combout\ = \inst4~1_combout\ $ (((\inst20~combout\) # ((\inst15~combout\) # (!\inst24~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~1_combout\,
	datab => \inst20~combout\,
	datac => \inst15~combout\,
	datad => \inst24~combout\,
	combout => \inst4~3_combout\);

-- Location: LCCOMB_X55_Y6_N26
\inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (!\SET_L[0]~input_o\) # (!\CLR_L[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L[0]~input_o\,
	datac => \SET_L[0]~input_o\,
	combout => \inst4~0_combout\);

-- Location: FF_X55_Y6_N13
\inst4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst4~3_combout\,
	clrn => \ALT_INV_inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~_emulated_q\);

-- Location: LCCOMB_X55_Y6_N6
\inst4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~2_combout\ = (\CLR_L[0]~input_o\ & ((\inst4~1_combout\ $ (\inst4~_emulated_q\)) # (!\SET_L[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR_L[0]~input_o\,
	datab => \inst4~1_combout\,
	datac => \SET_L[0]~input_o\,
	datad => \inst4~_emulated_q\,
	combout => \inst4~2_combout\);

-- Location: LCCOMB_X55_Y6_N30
inst30 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30~combout\ = (!\F_NOT~input_o\ & (!\inst2~2_combout\ & !\inst4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \F_NOT~input_o\,
	datac => \inst2~2_combout\,
	datad => \inst4~2_combout\,
	combout => \inst30~combout\);

-- Location: LCCOMB_X55_Y6_N4
inst28 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~combout\ = (!\B~input_o\ & (\F_NOT~input_o\ & \inst2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \F_NOT~input_o\,
	datad => \inst2~2_combout\,
	combout => \inst28~combout\);

-- Location: LCCOMB_X55_Y6_N0
inst29 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29~combout\ = (\B~input_o\ & (!\inst2~2_combout\ & \inst3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~input_o\,
	datac => \inst2~2_combout\,
	datad => \inst3~2_combout\,
	combout => \inst29~combout\);

-- Location: LCCOMB_X55_Y6_N28
\inst2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~3_combout\ = \inst2~1_combout\ $ (((\inst30~combout\) # ((\inst28~combout\) # (\inst29~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst30~combout\,
	datab => \inst2~1_combout\,
	datac => \inst28~combout\,
	datad => \inst29~combout\,
	combout => \inst2~3_combout\);

-- Location: LCCOMB_X55_Y6_N18
\inst2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (!\SET_L[2]~input_o\) # (!\CLR_L[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR_L[2]~input_o\,
	datad => \SET_L[2]~input_o\,
	combout => \inst2~0_combout\);

-- Location: FF_X55_Y6_N29
\inst2~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK~inputclkctrl_outclk\,
	d => \inst2~3_combout\,
	clrn => \ALT_INV_inst2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~_emulated_q\);

-- Location: LCCOMB_X55_Y6_N2
\inst2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~2_combout\ = (\CLR_L[2]~input_o\ & ((\inst2~1_combout\ $ (\inst2~_emulated_q\)) # (!\SET_L[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET_L[2]~input_o\,
	datab => \inst2~1_combout\,
	datac => \CLR_L[2]~input_o\,
	datad => \inst2~_emulated_q\,
	combout => \inst2~2_combout\);

-- Location: LCCOMB_X56_Y6_N28
inst8 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8~combout\ = (\inst4~2_combout\ & (\inst2~2_combout\)) # (!\inst4~2_combout\ & (((\inst3~2_combout\ & \F_NOT~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~2_combout\,
	datab => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \F_NOT~input_o\,
	combout => \inst8~combout\);

-- Location: LCCOMB_X56_Y6_N10
\inst|inst32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst32~0_combout\ = (\inst3~2_combout\) # (\inst4~2_combout\ $ (!\inst2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst32~0_combout\);

-- Location: LCCOMB_X56_Y6_N4
\inst|inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst47~0_combout\ = (\inst3~2_combout\ $ (!\inst4~2_combout\)) # (!\inst2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst47~0_combout\);

-- Location: LCCOMB_X56_Y6_N30
\inst|inst8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst8~0_combout\ = ((\inst4~2_combout\) # (\inst2~2_combout\)) # (!\inst3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst8~0_combout\);

-- Location: LCCOMB_X56_Y6_N0
\inst|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst17~0_combout\ = (\inst3~2_combout\ & ((!\inst2~2_combout\) # (!\inst4~2_combout\))) # (!\inst3~2_combout\ & (\inst4~2_combout\ $ (!\inst2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst17~0_combout\);

-- Location: LCCOMB_X56_Y6_N14
\inst|inst17~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst17~1_combout\ = (!\inst4~2_combout\ & ((\inst3~2_combout\) # (!\inst2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst17~1_combout\);

-- Location: LCCOMB_X56_Y6_N8
\inst|inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst15~0_combout\ = (\inst3~2_combout\ & (!\inst4~2_combout\ & \inst2~2_combout\)) # (!\inst3~2_combout\ & ((\inst2~2_combout\) # (!\inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst15~0_combout\);

-- Location: LCCOMB_X56_Y6_N26
\inst|inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst9~0_combout\ = (\inst3~2_combout\ & ((!\inst2~2_combout\) # (!\inst4~2_combout\))) # (!\inst3~2_combout\ & ((\inst2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~2_combout\,
	datac => \inst4~2_combout\,
	datad => \inst2~2_combout\,
	combout => \inst|inst9~0_combout\);

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

ww_Sp <= \Sp~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_A_L <= \A_L~output_o\;

ww_B_L <= \B_L~output_o\;

ww_C_L <= \C_L~output_o\;

ww_D_L <= \D_L~output_o\;

ww_E_L <= \E_L~output_o\;

ww_F_L <= \F_L~output_o\;

ww_G_L <= \G_L~output_o\;

ww_Sp_L <= \Sp_L~output_o\;
END structure;


