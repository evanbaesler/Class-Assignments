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

-- DATE "04/05/2026 16:34:31"

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

ENTITY 	Lab6_CONT IS
    PORT (
	IR_LOAD : OUT std_logic;
	CLR_L : IN std_logic;
	CLK : IN std_logic;
	D : OUT std_logic;
	IR : IN std_logic_vector(1 DOWNTO 0);
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0)
	);
END Lab6_CONT;

-- Design Ports Information
-- IR_LOAD	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR_L	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_CONT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR_LOAD : std_logic;
SIGNAL ww_CLR_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_IR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \IR_LOAD~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \CLR_L~input_o\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \inst5|MSC[0]~0_combout\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \inst5|MSA[0]~0_combout\ : std_logic;
SIGNAL \inst5|MSB[0]~0_combout\ : std_logic;
SIGNAL \inst5|MSC[1]~1_combout\ : std_logic;
SIGNAL \inst5|MSC\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_inst1~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IR_LOAD <= ww_IR_LOAD;
ww_CLR_L <= CLR_L;
ww_CLK <= CLK;
D <= ww_D;
ww_IR <= IR;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_inst1~q\ <= NOT \inst1~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y49_N12
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

-- Location: IOOBUF_X78_Y37_N9
\IR_LOAD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~q\,
	devoe => ww_devoe,
	o => \IR_LOAD~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst1~q\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSA[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X78_Y37_N16
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSB[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[1]~1_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC\(0),
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOIBUF_X78_Y36_N8
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

-- Location: LCCOMB_X77_Y36_N0
\inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = !\inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1~q\,
	combout => \inst1~0_combout\);

-- Location: IOIBUF_X78_Y36_N15
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

-- Location: FF_X77_Y36_N1
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst1~0_combout\,
	clrn => \CLR_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: IOIBUF_X78_Y36_N23
\IR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: LCCOMB_X77_Y36_N22
\inst5|MSC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[0]~0_combout\ = (\inst1~q\ & !\IR[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datad => \IR[0]~input_o\,
	combout => \inst5|MSC[0]~0_combout\);

-- Location: IOIBUF_X78_Y36_N1
\IR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: LCCOMB_X77_Y36_N20
\inst5|MSA[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSA[0]~0_combout\ = ((!\IR[0]~input_o\) # (!\IR[1]~input_o\)) # (!\inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \IR[1]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \inst5|MSA[0]~0_combout\);

-- Location: LCCOMB_X77_Y36_N2
\inst5|MSB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSB[0]~0_combout\ = (\inst1~q\ & (!\IR[1]~input_o\ & \IR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \IR[1]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \inst5|MSB[0]~0_combout\);

-- Location: LCCOMB_X77_Y36_N12
\inst5|MSC[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[1]~1_combout\ = (\inst1~q\ & (!\IR[1]~input_o\ & !\IR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \IR[1]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \inst5|MSC[1]~1_combout\);

-- Location: LCCOMB_X77_Y36_N30
\inst5|MSC[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC\(0) = (\inst1~q\ & (\IR[1]~input_o\ & !\IR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1~q\,
	datac => \IR[1]~input_o\,
	datad => \IR[0]~input_o\,
	combout => \inst5|MSC\(0));

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

ww_IR_LOAD <= \IR_LOAD~output_o\;

ww_D <= \D~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;
END structure;


