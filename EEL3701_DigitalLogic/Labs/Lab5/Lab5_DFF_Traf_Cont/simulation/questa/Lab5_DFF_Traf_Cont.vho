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

-- DATE "03/24/2026 14:57:39"

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

ENTITY 	Lab5_DFF_Traf_Cont IS
    PORT (
	G : OUT std_logic;
	CW_L : IN std_logic;
	EV : IN std_logic;
	Q : OUT std_logic_vector(3 DOWNTO 0);
	CLR_L : IN std_logic;
	CLK : IN std_logic;
	Y : OUT std_logic;
	R : OUT std_logic
	);
END Lab5_DFF_Traf_Cont;

-- Design Ports Information
-- G	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EV	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CW_L	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_DFF_Traf_Cont IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_CW_L : std_logic;
SIGNAL ww_EV : std_logic;
SIGNAL ww_Q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLR_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Y~output_o\ : std_logic;
SIGNAL \R~output_o\ : std_logic;
SIGNAL \EV~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CW_L~input_o\ : std_logic;
SIGNAL \inst11|Red~0_combout\ : std_logic;
SIGNAL \inst11|Red~1_combout\ : std_logic;
SIGNAL \inst~feeder_combout\ : std_logic;
SIGNAL \CLR_L~input_o\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst11|D[0]~0_combout\ : std_logic;
SIGNAL \inst11|D[0]~1_combout\ : std_logic;
SIGNAL \inst11|D[0]~2_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst11|D[1]~3_combout\ : std_logic;
SIGNAL \inst11|D[1]~4_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst11|D[2]~5_combout\ : std_logic;
SIGNAL \inst11|D[2]~6_combout\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst11|Green~0_combout\ : std_logic;
SIGNAL \inst11|Green~1_combout\ : std_logic;
SIGNAL \inst11|Yellow~0_combout\ : std_logic;
SIGNAL \inst11|Yellow~1_combout\ : std_logic;
SIGNAL \inst11|ALT_INV_Green~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

G <= ww_G;
ww_CW_L <= CW_L;
ww_EV <= EV;
Q <= ww_Q;
ww_CLR_L <= CLR_L;
ww_CLK <= CLK;
Y <= ww_Y;
R <= ww_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst11|ALT_INV_Green~1_combout\ <= NOT \inst11|Green~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y45_N20
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

-- Location: IOOBUF_X26_Y0_N2
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|ALT_INV_Green~1_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Q[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~q\,
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Q[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~q\,
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Y~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Yellow~1_combout\,
	devoe => ww_devoe,
	o => \Y~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\R~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11|Red~1_combout\,
	devoe => ww_devoe,
	o => \R~output_o\);

-- Location: IOIBUF_X54_Y0_N29
\EV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EV,
	o => \EV~input_o\);

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

-- Location: IOIBUF_X46_Y0_N1
\CW_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CW_L,
	o => \CW_L~input_o\);

-- Location: LCCOMB_X23_Y1_N0
\inst11|Red~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Red~0_combout\ = (\inst4~q\ & (\inst5~q\ & !\inst~q\)) # (!\inst4~q\ & (!\inst5~q\ & \inst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst5~q\,
	datad => \inst~q\,
	combout => \inst11|Red~0_combout\);

-- Location: LCCOMB_X23_Y1_N2
\inst11|Red~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Red~1_combout\ = (\inst11|Red~0_combout\ & ((\inst5~q\ & ((\inst6~q\))) # (!\inst5~q\ & ((\EV~input_o\) # (!\inst6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst6~q\,
	datad => \inst11|Red~0_combout\,
	combout => \inst11|Red~1_combout\);

-- Location: LCCOMB_X23_Y1_N6
\inst~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst~feeder_combout\ = \inst11|Red~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst11|Red~1_combout\,
	combout => \inst~feeder_combout\);

-- Location: IOIBUF_X20_Y0_N8
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

-- Location: FF_X23_Y1_N7
inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst~feeder_combout\,
	clrn => \CLR_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

-- Location: LCCOMB_X23_Y1_N24
\inst11|D[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[0]~0_combout\ = (!\inst5~q\ & ((\EV~input_o\ & (\inst~q\ & !\inst4~q\)) # (!\EV~input_o\ & (!\inst~q\ & \inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst~q\,
	datad => \inst4~q\,
	combout => \inst11|D[0]~0_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst11|D[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[0]~1_combout\ = (\EV~input_o\ & ((\inst~q\ $ (!\inst4~q\)) # (!\inst5~q\))) # (!\EV~input_o\ & (\inst~q\ & ((\inst5~q\) # (\inst4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst~q\,
	datad => \inst4~q\,
	combout => \inst11|D[0]~1_combout\);

-- Location: LCCOMB_X23_Y1_N22
\inst11|D[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[0]~2_combout\ = (\inst11|D[0]~1_combout\ & (((\inst11|D[0]~0_combout\)))) # (!\inst11|D[0]~1_combout\ & (!\inst6~q\ & ((!\inst11|D[0]~0_combout\) # (!\CW_L~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW_L~input_o\,
	datab => \inst11|D[0]~0_combout\,
	datac => \inst6~q\,
	datad => \inst11|D[0]~1_combout\,
	combout => \inst11|D[0]~2_combout\);

-- Location: FF_X23_Y1_N23
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|D[0]~2_combout\,
	clrn => \CLR_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X23_Y1_N16
\inst11|D[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[1]~3_combout\ = (\EV~input_o\ & (!\inst~q\ & ((!\inst4~q\) # (!\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst~q\,
	datad => \inst4~q\,
	combout => \inst11|D[1]~3_combout\);

-- Location: LCCOMB_X23_Y1_N8
\inst11|D[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[1]~4_combout\ = (\inst11|D[1]~3_combout\) # ((!\inst~q\ & (\inst6~q\ $ (\inst5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6~q\,
	datab => \inst~q\,
	datac => \inst5~q\,
	datad => \inst11|D[1]~3_combout\,
	combout => \inst11|D[1]~4_combout\);

-- Location: FF_X23_Y1_N9
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|D[1]~4_combout\,
	clrn => \CLR_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LCCOMB_X23_Y1_N10
\inst11|D[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[2]~5_combout\ = (\inst5~q\ & ((\inst6~q\ & ((!\inst4~q\))) # (!\inst6~q\ & ((\EV~input_o\) # (\inst4~q\))))) # (!\inst5~q\ & (\EV~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst6~q\,
	datad => \inst4~q\,
	combout => \inst11|D[2]~5_combout\);

-- Location: LCCOMB_X23_Y1_N4
\inst11|D[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|D[2]~6_combout\ = (\inst11|D[2]~5_combout\) # ((!\CW_L~input_o\ & (!\inst5~q\ & \inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW_L~input_o\,
	datab => \inst5~q\,
	datac => \inst4~q\,
	datad => \inst11|D[2]~5_combout\,
	combout => \inst11|D[2]~6_combout\);

-- Location: FF_X23_Y1_N5
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst11|D[2]~6_combout\,
	clrn => \CLR_L~input_o\,
	sclr => \inst~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X23_Y1_N28
\inst11|Green~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Green~0_combout\ = (\inst5~q\ & ((\inst4~q\) # ((\inst~q\)))) # (!\inst5~q\ & ((\inst6~q\ & (\inst4~q\)) # (!\inst6~q\ & ((\inst~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~q\,
	datab => \inst~q\,
	datac => \inst6~q\,
	datad => \inst5~q\,
	combout => \inst11|Green~0_combout\);

-- Location: LCCOMB_X23_Y1_N30
\inst11|Green~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Green~1_combout\ = (\EV~input_o\) # (\inst11|Green~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datac => \inst11|Green~0_combout\,
	combout => \inst11|Green~1_combout\);

-- Location: LCCOMB_X23_Y1_N12
\inst11|Yellow~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Yellow~0_combout\ = (\EV~input_o\ & (\inst5~q\ & \inst6~q\)) # (!\EV~input_o\ & (\inst5~q\ $ (\inst6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EV~input_o\,
	datab => \inst5~q\,
	datac => \inst6~q\,
	combout => \inst11|Yellow~0_combout\);

-- Location: LCCOMB_X23_Y1_N18
\inst11|Yellow~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst11|Yellow~1_combout\ = (!\inst~q\ & (\EV~input_o\ $ (((\inst11|Yellow~0_combout\ & \inst4~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|Yellow~0_combout\,
	datab => \inst~q\,
	datac => \EV~input_o\,
	datad => \inst4~q\,
	combout => \inst11|Yellow~1_combout\);

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

ww_G <= \G~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_Y <= \Y~output_o\;

ww_R <= \R~output_o\;
END structure;


