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

-- DATE "02/15/2026 22:59:20"

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

ENTITY 	lab2_combined IS
    PORT (
	Y_H : OUT std_logic;
	S0_H : IN std_logic;
	S1_H : IN std_logic;
	D3_H : IN std_logic;
	D2_H : IN std_logic;
	D1_H : IN std_logic;
	D0_L : IN std_logic;
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
END lab2_combined;

-- Design Ports Information
-- Y_H	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_L	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_L	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_L	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_L	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_L	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A_L	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_L	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D3_H	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2_H	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0_H	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1_H	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1_H	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0_L	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab2_combined IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y_H : std_logic;
SIGNAL ww_S0_H : std_logic;
SIGNAL ww_S1_H : std_logic;
SIGNAL ww_D3_H : std_logic;
SIGNAL ww_D2_H : std_logic;
SIGNAL ww_D1_H : std_logic;
SIGNAL ww_D0_L : std_logic;
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
SIGNAL \Y_H~output_o\ : std_logic;
SIGNAL \C_L~output_o\ : std_logic;
SIGNAL \D_L~output_o\ : std_logic;
SIGNAL \E_L~output_o\ : std_logic;
SIGNAL \F_L~output_o\ : std_logic;
SIGNAL \G_L~output_o\ : std_logic;
SIGNAL \A_L~output_o\ : std_logic;
SIGNAL \B_L~output_o\ : std_logic;
SIGNAL \D2_H~input_o\ : std_logic;
SIGNAL \D0_L~input_o\ : std_logic;
SIGNAL \S1_H~input_o\ : std_logic;
SIGNAL \S0_H~input_o\ : std_logic;
SIGNAL \D1_H~input_o\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \D3_H~input_o\ : std_logic;
SIGNAL \inst14~1_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \inst35~0_combout\ : std_logic;
SIGNAL \inst35~combout\ : std_logic;
SIGNAL \inst36~0_combout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst37~combout\ : std_logic;
SIGNAL \inst38~0_combout\ : std_logic;
SIGNAL \inst38~combout\ : std_logic;
SIGNAL \inst39~0_combout\ : std_logic;
SIGNAL \inst39~combout\ : std_logic;
SIGNAL \inst51~0_combout\ : std_logic;
SIGNAL \inst51~1_combout\ : std_logic;
SIGNAL \inst53~0_combout\ : std_logic;
SIGNAL \inst53~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst39~combout\ : std_logic;
SIGNAL \ALT_INV_inst35~combout\ : std_logic;
SIGNAL \ALT_INV_inst37~combout\ : std_logic;
SIGNAL \ALT_INV_inst38~combout\ : std_logic;
SIGNAL \ALT_INV_inst36~combout\ : std_logic;
SIGNAL \ALT_INV_inst53~1_combout\ : std_logic;
SIGNAL \ALT_INV_inst51~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y_H <= ww_Y_H;
ww_S0_H <= S0_H;
ww_S1_H <= S1_H;
ww_D3_H <= D3_H;
ww_D2_H <= D2_H;
ww_D1_H <= D1_H;
ww_D0_L <= D0_L;
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
\ALT_INV_inst39~combout\ <= NOT \inst39~combout\;
\ALT_INV_inst35~combout\ <= NOT \inst35~combout\;
\ALT_INV_inst37~combout\ <= NOT \inst37~combout\;
\ALT_INV_inst38~combout\ <= NOT \inst38~combout\;
\ALT_INV_inst36~combout\ <= NOT \inst36~combout\;
\ALT_INV_inst53~1_combout\ <= NOT \inst53~1_combout\;
\ALT_INV_inst51~1_combout\ <= NOT \inst51~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X43_Y38_N24
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

-- Location: IOOBUF_X24_Y0_N30
\Y_H~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~1_combout\,
	devoe => ww_devoe,
	o => \Y_H~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst35~combout\,
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
	i => \ALT_INV_inst36~combout\,
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
	i => \ALT_INV_inst37~combout\,
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
	i => \ALT_INV_inst38~combout\,
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
	i => \ALT_INV_inst39~combout\,
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
	i => \ALT_INV_inst51~1_combout\,
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
	i => \ALT_INV_inst53~1_combout\,
	devoe => ww_devoe,
	o => \B_L~output_o\);

-- Location: IOIBUF_X14_Y0_N8
\D2_H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D2_H,
	o => \D2_H~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\D0_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D0_L,
	o => \D0_L~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\S1_H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S1_H,
	o => \S1_H~input_o\);

-- Location: IOIBUF_X24_Y0_N1
\S0_H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S0_H,
	o => \S0_H~input_o\);

-- Location: IOIBUF_X54_Y0_N29
\D1_H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D1_H,
	o => \D1_H~input_o\);

-- Location: LCCOMB_X22_Y1_N24
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\S1_H~input_o\ & (((\S0_H~input_o\) # (!\D1_H~input_o\)))) # (!\S1_H~input_o\ & (\D0_L~input_o\ & (!\S0_H~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D0_L~input_o\,
	datab => \S1_H~input_o\,
	datac => \S0_H~input_o\,
	datad => \D1_H~input_o\,
	combout => \inst14~0_combout\);

-- Location: IOIBUF_X24_Y0_N8
\D3_H~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D3_H,
	o => \D3_H~input_o\);

-- Location: LCCOMB_X22_Y1_N10
\inst14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~1_combout\ = (\inst14~0_combout\ & (((\S0_H~input_o\ & \D3_H~input_o\)))) # (!\inst14~0_combout\ & ((\D2_H~input_o\) # ((!\S0_H~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D2_H~input_o\,
	datab => \inst14~0_combout\,
	datac => \S0_H~input_o\,
	datad => \D3_H~input_o\,
	combout => \inst14~1_combout\);

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

-- Location: LCCOMB_X63_Y52_N24
\inst35~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35~0_combout\ = (\X[2]~input_o\ & (\X[3]~input_o\ & ((\X[1]~input_o\) # (!\X[0]~input_o\)))) # (!\X[2]~input_o\ & (\X[1]~input_o\ & (!\X[0]~input_o\ & !\X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst35~0_combout\);

-- Location: LCCOMB_X63_Y52_N2
inst35 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst35~combout\ = (!\inst35~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst35~0_combout\,
	combout => \inst35~combout\);

-- Location: LCCOMB_X63_Y52_N12
\inst36~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & (\X[2]~input_o\)) # (!\X[0]~input_o\ & (!\X[2]~input_o\ & \X[3]~input_o\)))) # (!\X[1]~input_o\ & (!\X[3]~input_o\ & (\X[0]~input_o\ $ (\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst36~0_combout\);

-- Location: LCCOMB_X63_Y52_N6
inst36 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst36~combout\ = (!\inst36~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst36~0_combout\,
	combout => \inst36~combout\);

-- Location: LCCOMB_X63_Y52_N16
\inst37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = (\X[1]~input_o\ & (\X[0]~input_o\ & ((!\X[3]~input_o\)))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & ((!\X[3]~input_o\))) # (!\X[2]~input_o\ & (\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst37~0_combout\);

-- Location: LCCOMB_X63_Y52_N18
inst37 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37~combout\ = (!\inst37~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst37~0_combout\,
	combout => \inst37~combout\);

-- Location: LCCOMB_X63_Y52_N20
\inst38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38~0_combout\ = (\X[1]~input_o\ & (!\X[3]~input_o\ & ((\X[0]~input_o\) # (!\X[2]~input_o\)))) # (!\X[1]~input_o\ & (\X[0]~input_o\ & (\X[2]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst38~0_combout\);

-- Location: LCCOMB_X63_Y52_N30
inst38 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38~combout\ = (!\inst38~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst38~0_combout\,
	combout => \inst38~combout\);

-- Location: LCCOMB_X63_Y52_N8
\inst39~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[1]~input_o\ $ (\X[2]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[2]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst39~0_combout\);

-- Location: LCCOMB_X63_Y52_N26
inst39 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39~combout\ = (\inst39~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst39~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst39~combout\);

-- Location: LCCOMB_X63_Y52_N28
\inst51~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51~0_combout\ = (\X[2]~input_o\ & (!\X[1]~input_o\ & (\X[0]~input_o\ $ (!\X[3]~input_o\)))) # (!\X[2]~input_o\ & (\X[0]~input_o\ & (\X[1]~input_o\ $ (!\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst51~0_combout\);

-- Location: LCCOMB_X63_Y52_N22
\inst51~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst51~1_combout\ = (!\inst51~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst51~0_combout\,
	combout => \inst51~1_combout\);

-- Location: LCCOMB_X63_Y52_N0
\inst53~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53~0_combout\ = (\X[1]~input_o\ & ((\X[0]~input_o\ & ((!\X[3]~input_o\))) # (!\X[0]~input_o\ & (!\X[2]~input_o\)))) # (!\X[1]~input_o\ & ((\X[0]~input_o\ $ (!\X[3]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[0]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst53~0_combout\);

-- Location: LCCOMB_X63_Y52_N10
\inst53~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst53~1_combout\ = (\inst53~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \T_L~input_o\,
	datad => \inst53~0_combout\,
	combout => \inst53~1_combout\);

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

ww_Y_H <= \Y_H~output_o\;

ww_C_L <= \C_L~output_o\;

ww_D_L <= \D_L~output_o\;

ww_E_L <= \E_L~output_o\;

ww_F_L <= \F_L~output_o\;

ww_G_L <= \G_L~output_o\;

ww_A_L <= \A_L~output_o\;

ww_B_L <= \B_L~output_o\;
END structure;


