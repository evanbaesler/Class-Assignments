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

-- DATE "02/15/2026 21:54:16"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab2_decoder IS
    PORT (
	C_L : OUT std_logic;
	T_L : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	D_L : OUT std_logic;
	E_L : OUT std_logic;
	F_L : OUT std_logic;
	G_L : OUT std_logic;
	A_L : OUT std_logic;
	B_L : OUT std_logic
	);
END lab2_decoder;

-- Design Ports Information
-- C_L	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_L	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_L	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_L	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_L	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_L	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_L	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_C_L : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_D_L : std_logic;
SIGNAL ww_E_L : std_logic;
SIGNAL ww_F_L : std_logic;
SIGNAL ww_G_L : std_logic;
SIGNAL ww_A_L : std_logic;
SIGNAL ww_B_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C_L~output_o\ : std_logic;
SIGNAL \D_L~output_o\ : std_logic;
SIGNAL \E_L~output_o\ : std_logic;
SIGNAL \F_L~output_o\ : std_logic;
SIGNAL \G_L~output_o\ : std_logic;
SIGNAL \A_L~output_o\ : std_logic;
SIGNAL \B_L~output_o\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \inst18~0_combout\ : std_logic;
SIGNAL \inst18~combout\ : std_logic;
SIGNAL \inst19~0_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst20~0_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst21~0_combout\ : std_logic;
SIGNAL \inst21~combout\ : std_logic;
SIGNAL \inst22~0_combout\ : std_logic;
SIGNAL \inst22~combout\ : std_logic;
SIGNAL \inst46~0_combout\ : std_logic;
SIGNAL \inst46~1_combout\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \inst48~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst19~combout\ : std_logic;
SIGNAL \ALT_INV_inst20~combout\ : std_logic;
SIGNAL \ALT_INV_inst21~combout\ : std_logic;
SIGNAL \ALT_INV_inst18~combout\ : std_logic;
SIGNAL \ALT_INV_inst22~combout\ : std_logic;
SIGNAL \ALT_INV_inst48~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst46~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

C_L <= ww_C_L;
ww_T_L <= T_L;
ww_X <= X;
D_L <= ww_D_L;
E_L <= ww_E_L;
F_L <= ww_F_L;
G_L <= ww_G_L;
A_L <= ww_A_L;
B_L <= ww_B_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_inst19~combout\ <= NOT \inst19~combout\;
\ALT_INV_inst20~combout\ <= NOT \inst20~combout\;
\ALT_INV_inst21~combout\ <= NOT \inst21~combout\;
\ALT_INV_inst18~combout\ <= NOT \inst18~combout\;
\ALT_INV_inst22~combout\ <= NOT \inst22~combout\;
\ALT_INV_inst48~1_combout\ <= NOT \inst48~1_combout\;
\ALT_INV_inst46~1_combout\ <= NOT \inst46~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N8
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
\C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst18~combout\,
	devoe => ww_devoe,
	o => \C_L~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst19~combout\,
	devoe => ww_devoe,
	o => \D_L~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst20~combout\,
	devoe => ww_devoe,
	o => \E_L~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst21~combout\,
	devoe => ww_devoe,
	o => \F_L~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst22~combout\,
	devoe => ww_devoe,
	o => \G_L~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst46~1_combout\,
	devoe => ww_devoe,
	o => \A_L~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst48~1_combout\,
	devoe => ww_devoe,
	o => \B_L~output_o\);

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: IOIBUF_X20_Y0_N15
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N29
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N22
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X31_Y0_N29
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X56_Y50_N24
\inst18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~0_combout\ = (\X[2]~input_o\ & (\X[3]~input_o\ & ((\X[1]~input_o\) # (!\X[0]~input_o\)))) # (!\X[2]~input_o\ & (!\X[0]~input_o\ & (\X[1]~input_o\ & !\X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst18~0_combout\);

-- Location: LCCOMB_X56_Y50_N10
inst18 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst18~combout\ = (!\inst18~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst18~0_combout\,
	combout => \inst18~combout\);

-- Location: LCCOMB_X56_Y50_N20
\inst19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~0_combout\ = (\X[1]~input_o\ & ((\X[2]~input_o\ & (\X[0]~input_o\)) # (!\X[2]~input_o\ & (!\X[0]~input_o\ & \X[3]~input_o\)))) # (!\X[1]~input_o\ & (!\X[3]~input_o\ & (\X[2]~input_o\ $ (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst19~0_combout\);

-- Location: LCCOMB_X56_Y50_N22
inst19 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (!\inst19~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst19~0_combout\,
	combout => \inst19~combout\);

-- Location: LCCOMB_X56_Y50_N8
\inst20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~0_combout\ = (\X[1]~input_o\ & (((\X[0]~input_o\ & !\X[3]~input_o\)))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & ((!\X[3]~input_o\))) # (!\X[2]~input_o\ & (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst20~0_combout\);

-- Location: LCCOMB_X56_Y50_N2
inst20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (!\T_L~input_o\) # (!\inst20~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X56_Y50_N28
\inst21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~0_combout\ = (\X[2]~input_o\ & (\X[0]~input_o\ & (\X[1]~input_o\ $ (\X[3]~input_o\)))) # (!\X[2]~input_o\ & (!\X[3]~input_o\ & ((\X[0]~input_o\) # (\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst21~0_combout\);

-- Location: LCCOMB_X56_Y50_N14
inst21 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst21~combout\ = (!\inst21~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst21~0_combout\,
	combout => \inst21~combout\);

-- Location: LCCOMB_X56_Y50_N16
\inst22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\ $ (\X[1]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[2]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst22~0_combout\);

-- Location: LCCOMB_X56_Y50_N18
inst22 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22~combout\ = (\inst22~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst22~0_combout\,
	combout => \inst22~combout\);

-- Location: LCCOMB_X56_Y50_N12
\inst46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst46~0_combout\ = (\X[2]~input_o\ & (!\X[1]~input_o\ & (\X[0]~input_o\ $ (!\X[3]~input_o\)))) # (!\X[2]~input_o\ & (\X[0]~input_o\ & (\X[1]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst46~0_combout\);

-- Location: LCCOMB_X56_Y50_N30
\inst46~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst46~1_combout\ = (!\inst46~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst46~0_combout\,
	combout => \inst46~1_combout\);

-- Location: LCCOMB_X56_Y50_N0
\inst48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & ((!\X[3]~input_o\))) # (!\X[0]~input_o\ & (!\X[2]~input_o\)))) # (!\X[1]~input_o\ & ((\X[0]~input_o\ $ (!\X[3]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[1]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst48~0_combout\);

-- Location: LCCOMB_X56_Y50_N26
\inst48~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48~1_combout\ = (\inst48~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst48~0_combout\,
	combout => \inst48~1_combout\);

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

ww_C_L <= \C_L~output_o\;

ww_D_L <= \D_L~output_o\;

ww_E_L <= \E_L~output_o\;

ww_F_L <= \F_L~output_o\;

ww_G_L <= \G_L~output_o\;

ww_A_L <= \A_L~output_o\;

ww_B_L <= \B_L~output_o\;
END structure;


