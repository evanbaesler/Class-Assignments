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

-- DATE "04/05/2026 22:03:27"

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

ENTITY 	Lab6_PART2_CONT IS
    PORT (
	IR_LOAD : OUT std_logic;
	IR : IN std_logic_vector(2 DOWNTO 0);
	RESET_L : IN std_logic;
	CLK : IN std_logic;
	PC_INC : OUT std_logic;
	PC_LD : OUT std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0)
	);
END Lab6_PART2_CONT;

-- Design Ports Information
-- IR_LOAD	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INC	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_LD	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET_L	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab6_PART2_CONT IS
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
SIGNAL ww_IR : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RESET_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_PC_INC : std_logic;
SIGNAL ww_PC_LD : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET_L~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \IR_LOAD~output_o\ : std_logic;
SIGNAL \PC_INC~output_o\ : std_logic;
SIGNAL \PC_LD~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \IR[2]~input_o\ : std_logic;
SIGNAL \inst|D[0]~1_combout\ : std_logic;
SIGNAL \inst|D[1]~0_combout\ : std_logic;
SIGNAL \RESET_L~input_o\ : std_logic;
SIGNAL \RESET_L~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst|IR_LOAD~combout\ : std_logic;
SIGNAL \inst|PC_INC~0_combout\ : std_logic;
SIGNAL \inst|MSA~0_combout\ : std_logic;
SIGNAL \inst|MSC[1]~0_combout\ : std_logic;
SIGNAL \inst|MSA~1_combout\ : std_logic;
SIGNAL \inst|MSA[0]~2_combout\ : std_logic;
SIGNAL \inst|MSB[0]~0_combout\ : std_logic;
SIGNAL \inst|MSC[0]~1_combout\ : std_logic;
SIGNAL \inst|MSA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|MSB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|D\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_IR_LOAD~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IR_LOAD <= ww_IR_LOAD;
ww_IR <= IR;
ww_RESET_L <= RESET_L;
ww_CLK <= CLK;
PC_INC <= ww_PC_INC;
PC_LD <= ww_PC_LD;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\RESET_L~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET_L~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst|ALT_INV_IR_LOAD~combout\ <= NOT \inst|IR_LOAD~combout\;
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

-- Location: IOOBUF_X51_Y54_N23
\IR_LOAD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_IR_LOAD~combout\,
	devoe => ww_devoe,
	o => \IR_LOAD~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\PC_INC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|PC_INC~0_combout\,
	devoe => ww_devoe,
	o => \PC_INC~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\PC_LD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA~0_combout\,
	devoe => ww_devoe,
	o => \PC_LD~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA\(1),
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA[0]~2_combout\,
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSB\(1),
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSB[0]~0_combout\,
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSA\(1),
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSC[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|MSC[0]~1_combout\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

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

-- Location: IOIBUF_X51_Y54_N1
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

-- Location: IOIBUF_X51_Y54_N8
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

-- Location: IOIBUF_X51_Y54_N15
\IR[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(2),
	o => \IR[2]~input_o\);

-- Location: LCCOMB_X50_Y53_N28
\inst|D[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[0]~1_combout\ = (\IR[0]~input_o\ & !\IR[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR[0]~input_o\,
	datad => \IR[2]~input_o\,
	combout => \inst|D[0]~1_combout\);

-- Location: LCCOMB_X50_Y53_N12
\inst|D[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D[1]~0_combout\ = (\IR[1]~input_o\ & (!\IR[2]~input_o\ & (!\inst2~q\ & \inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \IR[2]~input_o\,
	datac => \inst2~q\,
	datad => \inst4~q\,
	combout => \inst|D[1]~0_combout\);

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

-- Location: FF_X50_Y53_N13
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D[1]~0_combout\,
	clrn => \RESET_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X50_Y53_N6
\inst|D[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D\(0) = (!\inst2~q\ & (((\IR[1]~input_o\ & \inst|D[0]~1_combout\)) # (!\inst4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \inst|D[0]~1_combout\,
	datac => \inst4~q\,
	datad => \inst2~q\,
	combout => \inst|D\(0));

-- Location: FF_X50_Y53_N7
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|D\(0),
	clrn => \RESET_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LCCOMB_X50_Y53_N0
\inst|IR_LOAD\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|IR_LOAD~combout\ = (\inst4~q\) # (\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst2~q\,
	combout => \inst|IR_LOAD~combout\);

-- Location: LCCOMB_X50_Y53_N26
\inst|PC_INC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|PC_INC~0_combout\ = \inst4~q\ $ (\inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst2~q\,
	combout => \inst|PC_INC~0_combout\);

-- Location: LCCOMB_X50_Y53_N16
\inst|MSA~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA~0_combout\ = (\inst4~q\ & \inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst2~q\,
	combout => \inst|MSA~0_combout\);

-- Location: LCCOMB_X50_Y53_N30
\inst|MSC[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSC[1]~0_combout\ = (!\IR[1]~input_o\ & (\IR[2]~input_o\ & (\inst4~q\ & !\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \IR[2]~input_o\,
	datac => \inst4~q\,
	datad => \inst2~q\,
	combout => \inst|MSC[1]~0_combout\);

-- Location: LCCOMB_X50_Y53_N4
\inst|MSA~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA~1_combout\ = (\inst4~q\ & (!\inst2~q\ & !\IR[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~q\,
	datac => \inst2~q\,
	datad => \IR[2]~input_o\,
	combout => \inst|MSA~1_combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst|MSA[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA\(1) = (\inst|MSC[1]~0_combout\) # ((\inst|MSA~1_combout\ & (!\IR[0]~input_o\ & !\IR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|MSC[1]~0_combout\,
	datab => \inst|MSA~1_combout\,
	datac => \IR[0]~input_o\,
	datad => \IR[1]~input_o\,
	combout => \inst|MSA\(1));

-- Location: LCCOMB_X50_Y53_N20
\inst|MSA[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSA[0]~2_combout\ = (\inst4~q\ & (((\inst2~q\) # (!\IR[2]~input_o\)) # (!\IR[1]~input_o\))) # (!\inst4~q\ & (((!\inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \IR[2]~input_o\,
	datac => \inst4~q\,
	datad => \inst2~q\,
	combout => \inst|MSA[0]~2_combout\);

-- Location: LCCOMB_X50_Y53_N22
\inst|MSB[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSB\(1) = (((\inst2~q\) # (!\inst4~q\)) # (!\IR[2]~input_o\)) # (!\IR[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \IR[2]~input_o\,
	datac => \inst4~q\,
	datad => \inst2~q\,
	combout => \inst|MSB\(1));

-- Location: LCCOMB_X50_Y53_N24
\inst|MSB[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSB[0]~0_combout\ = (!\IR[1]~input_o\ & (\inst|MSA~1_combout\ & \IR[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR[1]~input_o\,
	datab => \inst|MSA~1_combout\,
	datac => \IR[0]~input_o\,
	combout => \inst|MSB[0]~0_combout\);

-- Location: LCCOMB_X50_Y53_N14
\inst|MSC[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|MSC[0]~1_combout\ = (!\inst2~q\ & (!\IR[0]~input_o\ & (\inst4~q\ & !\IR[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \IR[0]~input_o\,
	datac => \inst4~q\,
	datad => \IR[1]~input_o\,
	combout => \inst|MSC[0]~1_combout\);

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

ww_PC_INC <= \PC_INC~output_o\;

ww_PC_LD <= \PC_LD~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;
END structure;


