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

-- DATE "03/10/2026 16:13:20"

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

ENTITY 	lab4_ALU IS
    PORT (
	C_out : OUT std_logic;
	C_in : IN std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	F_sum : OUT std_logic_vector(3 DOWNTO 0);
	F_not : OUT std_logic_vector(3 DOWNTO 0);
	F_and : OUT std_logic_vector(3 DOWNTO 0);
	F_or : OUT std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0)
	);
END lab4_ALU;

-- Design Ports Information
-- C_out	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_sum[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_sum[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_sum[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_sum[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_not[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_not[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_not[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_not[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_and[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_and[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_and[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_and[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_or[3]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_or[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_or[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_or[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_in	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4_ALU IS
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
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F_sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F_not : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F_and : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_F_or : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \C_out~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \F_sum[3]~output_o\ : std_logic;
SIGNAL \F_sum[2]~output_o\ : std_logic;
SIGNAL \F_sum[1]~output_o\ : std_logic;
SIGNAL \F_sum[0]~output_o\ : std_logic;
SIGNAL \F_not[3]~output_o\ : std_logic;
SIGNAL \F_not[2]~output_o\ : std_logic;
SIGNAL \F_not[1]~output_o\ : std_logic;
SIGNAL \F_not[0]~output_o\ : std_logic;
SIGNAL \F_and[3]~output_o\ : std_logic;
SIGNAL \F_and[2]~output_o\ : std_logic;
SIGNAL \F_and[1]~output_o\ : std_logic;
SIGNAL \F_and[0]~output_o\ : std_logic;
SIGNAL \F_or[3]~output_o\ : std_logic;
SIGNAL \F_or[2]~output_o\ : std_logic;
SIGNAL \F_or[1]~output_o\ : std_logic;
SIGNAL \F_or[0]~output_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \C_in~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \inst101|sub|104~0_combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \inst101|sub|105~0_combout\ : std_logic;
SIGNAL \inst101|sub|106~0_combout\ : std_logic;
SIGNAL \inst101|sub|107~0_combout\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \inst101|sub|82~0_combout\ : std_logic;
SIGNAL \inst101|sub|82~combout\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \inst14|10~0_combout\ : std_logic;
SIGNAL \inst14|10~1_combout\ : std_logic;
SIGNAL \inst14|9~0_combout\ : std_logic;
SIGNAL \inst101|sub|80~combout\ : std_logic;
SIGNAL \inst14|9~1_combout\ : std_logic;
SIGNAL \inst13|10~0_combout\ : std_logic;
SIGNAL \inst101|sub|78~combout\ : std_logic;
SIGNAL \inst13|10~1_combout\ : std_logic;
SIGNAL \inst13|9~3_combout\ : std_logic;
SIGNAL \inst13|9~2_combout\ : std_logic;
SIGNAL \inst101|sub|76~0_combout\ : std_logic;
SIGNAL \inst101|sub|103~combout\ : std_logic;
SIGNAL \inst101|sub|100~combout\ : std_logic;
SIGNAL \inst101|sub|97~combout\ : std_logic;
SIGNAL \inst101|sub|93~combout\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

C_out <= ww_C_out;
ww_C_in <= C_in;
ww_A <= A;
ww_B <= B;
F <= ww_F;
F_sum <= ww_F_sum;
F_not <= ww_F_not;
F_and <= ww_F_and;
F_or <= ww_F_or;
ww_S <= S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y49_N8
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

-- Location: IOOBUF_X29_Y39_N2
\C_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \C_out~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|10~1_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|9~1_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|10~1_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13|9~2_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\F_sum[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|82~combout\,
	devoe => ww_devoe,
	o => \F_sum[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\F_sum[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|80~combout\,
	devoe => ww_devoe,
	o => \F_sum[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\F_sum[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|78~combout\,
	devoe => ww_devoe,
	o => \F_sum[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\F_sum[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|76~0_combout\,
	devoe => ww_devoe,
	o => \F_sum[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\F_not[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[3]~input_o\,
	devoe => ww_devoe,
	o => \F_not[3]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\F_not[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[2]~input_o\,
	devoe => ww_devoe,
	o => \F_not[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\F_not[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[1]~input_o\,
	devoe => ww_devoe,
	o => \F_not[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\F_not[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[0]~input_o\,
	devoe => ww_devoe,
	o => \F_not[0]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\F_and[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|103~combout\,
	devoe => ww_devoe,
	o => \F_and[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\F_and[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|100~combout\,
	devoe => ww_devoe,
	o => \F_and[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\F_and[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|97~combout\,
	devoe => ww_devoe,
	o => \F_and[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\F_and[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst101|sub|93~combout\,
	devoe => ww_devoe,
	o => \F_and[0]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\F_or[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~combout\,
	devoe => ww_devoe,
	o => \F_or[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\F_or[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~combout\,
	devoe => ww_devoe,
	o => \F_or[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\F_or[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \F_or[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\F_or[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \F_or[0]~output_o\);

-- Location: IOIBUF_X29_Y0_N15
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X31_Y0_N8
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X46_Y54_N8
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X46_Y54_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X49_Y54_N15
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

-- Location: IOIBUF_X49_Y54_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LCCOMB_X49_Y53_N8
\inst101|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|104~0_combout\ = (\A[0]~input_o\ & ((\C_in~input_o\) # (\B[0]~input_o\))) # (!\A[0]~input_o\ & (\C_in~input_o\ & \B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \C_in~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst101|sub|104~0_combout\);

-- Location: IOIBUF_X49_Y54_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LCCOMB_X49_Y53_N18
\inst101|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|105~0_combout\ = (\A[1]~input_o\ & ((\inst101|sub|104~0_combout\) # (\B[1]~input_o\))) # (!\A[1]~input_o\ & (\inst101|sub|104~0_combout\ & \B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \inst101|sub|104~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst101|sub|105~0_combout\);

-- Location: LCCOMB_X32_Y35_N24
\inst101|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|106~0_combout\ = (\B[2]~input_o\ & ((\A[2]~input_o\) # (\inst101|sub|105~0_combout\))) # (!\B[2]~input_o\ & (\A[2]~input_o\ & \inst101|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst101|sub|105~0_combout\,
	combout => \inst101|sub|106~0_combout\);

-- Location: LCCOMB_X32_Y35_N18
\inst101|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|107~0_combout\ = (\A[3]~input_o\ & ((\B[3]~input_o\) # (\inst101|sub|106~0_combout\))) # (!\A[3]~input_o\ & (\B[3]~input_o\ & \inst101|sub|106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	datad => \inst101|sub|106~0_combout\,
	combout => \inst101|sub|107~0_combout\);

-- Location: IOIBUF_X36_Y39_N29
\S[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X32_Y35_N30
\inst101|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|82~0_combout\ = \A[3]~input_o\ $ (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst101|sub|82~0_combout\);

-- Location: LCCOMB_X32_Y35_N16
\inst101|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|82~combout\ = \inst101|sub|82~0_combout\ $ (((\A[2]~input_o\ & ((\inst101|sub|105~0_combout\) # (\B[2]~input_o\))) # (!\A[2]~input_o\ & (\inst101|sub|105~0_combout\ & \B[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst101|sub|82~0_combout\,
	datab => \A[2]~input_o\,
	datac => \inst101|sub|105~0_combout\,
	datad => \B[2]~input_o\,
	combout => \inst101|sub|82~combout\);

-- Location: IOIBUF_X36_Y39_N15
\S[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: LCCOMB_X32_Y35_N20
\inst14|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|10~0_combout\ = (\A[3]~input_o\ & (\S[1]~input_o\ & ((\B[3]~input_o\) # (\S[0]~input_o\)))) # (!\A[3]~input_o\ & ((\S[1]~input_o\ & (\B[3]~input_o\ & \S[0]~input_o\)) # (!\S[1]~input_o\ & ((!\S[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datab => \B[3]~input_o\,
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst14|10~0_combout\);

-- Location: LCCOMB_X32_Y35_N2
\inst14|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|10~1_combout\ = (\inst14|10~0_combout\) # ((\S[0]~input_o\ & (\inst101|sub|82~combout\ & !\S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst101|sub|82~combout\,
	datac => \S[1]~input_o\,
	datad => \inst14|10~0_combout\,
	combout => \inst14|10~1_combout\);

-- Location: LCCOMB_X32_Y35_N28
\inst14|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|9~0_combout\ = (\A[2]~input_o\ & (\S[1]~input_o\ & ((\B[2]~input_o\) # (\S[0]~input_o\)))) # (!\A[2]~input_o\ & ((\S[1]~input_o\ & (\B[2]~input_o\ & \S[0]~input_o\)) # (!\S[1]~input_o\ & ((!\S[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst14|9~0_combout\);

-- Location: LCCOMB_X32_Y35_N22
\inst101|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|80~combout\ = \B[2]~input_o\ $ (\A[2]~input_o\ $ (\inst101|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[2]~input_o\,
	datab => \A[2]~input_o\,
	datac => \inst101|sub|105~0_combout\,
	combout => \inst101|sub|80~combout\);

-- Location: LCCOMB_X32_Y35_N0
\inst14|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14|9~1_combout\ = (\inst14|9~0_combout\) # ((!\S[1]~input_o\ & (\inst101|sub|80~combout\ & \S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst14|9~0_combout\,
	datac => \inst101|sub|80~combout\,
	datad => \S[0]~input_o\,
	combout => \inst14|9~1_combout\);

-- Location: LCCOMB_X49_Y53_N20
\inst13|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|10~0_combout\ = (\S[1]~input_o\ & ((\A[1]~input_o\ & ((\B[1]~input_o\) # (\S[0]~input_o\))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & \S[0]~input_o\)))) # (!\S[1]~input_o\ & (!\A[1]~input_o\ & ((!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \A[1]~input_o\,
	datac => \B[1]~input_o\,
	datad => \S[0]~input_o\,
	combout => \inst13|10~0_combout\);

-- Location: LCCOMB_X49_Y53_N6
\inst101|sub|78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|78~combout\ = \A[1]~input_o\ $ (\inst101|sub|104~0_combout\ $ (\B[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datac => \inst101|sub|104~0_combout\,
	datad => \B[1]~input_o\,
	combout => \inst101|sub|78~combout\);

-- Location: LCCOMB_X49_Y53_N0
\inst13|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|10~1_combout\ = (\inst13|10~0_combout\) # ((!\S[1]~input_o\ & (\inst101|sub|78~combout\ & \S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst13|10~0_combout\,
	datac => \inst101|sub|78~combout\,
	datad => \S[0]~input_o\,
	combout => \inst13|10~1_combout\);

-- Location: LCCOMB_X49_Y53_N14
\inst13|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|9~3_combout\ = \B[0]~input_o\ $ (((!\S[1]~input_o\ & (\A[0]~input_o\ $ (\C_in~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \C_in~input_o\,
	datac => \S[1]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst13|9~3_combout\);

-- Location: LCCOMB_X49_Y53_N4
\inst13|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13|9~2_combout\ = (\S[0]~input_o\ & ((\inst13|9~3_combout\) # ((\S[1]~input_o\ & \A[0]~input_o\)))) # (!\S[0]~input_o\ & ((\S[1]~input_o\ & (\inst13|9~3_combout\ & \A[0]~input_o\)) # (!\S[1]~input_o\ & ((!\A[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst13|9~3_combout\,
	datad => \A[0]~input_o\,
	combout => \inst13|9~2_combout\);

-- Location: LCCOMB_X49_Y53_N26
\inst101|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|76~0_combout\ = \A[0]~input_o\ $ (\C_in~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datab => \C_in~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst101|sub|76~0_combout\);

-- Location: LCCOMB_X32_Y35_N26
\inst101|sub|103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|103~combout\ = (\A[3]~input_o\ & \B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst101|sub|103~combout\);

-- Location: LCCOMB_X32_Y35_N12
\inst101|sub|100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|100~combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst101|sub|100~combout\);

-- Location: LCCOMB_X49_Y53_N22
\inst101|sub|97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|97~combout\ = (\A[1]~input_o\ & \B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst101|sub|97~combout\);

-- Location: LCCOMB_X49_Y53_N24
\inst101|sub|93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst101|sub|93~combout\ = (\A[0]~input_o\ & \B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst101|sub|93~combout\);

-- Location: LCCOMB_X32_Y35_N6
inst4 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\A[3]~input_o\) # (\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[3]~input_o\,
	datac => \B[3]~input_o\,
	combout => \inst4~combout\);

-- Location: LCCOMB_X32_Y35_N8
inst3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\A[2]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X49_Y53_N2
inst2 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\A[1]~input_o\) # (\B[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A[1]~input_o\,
	datad => \B[1]~input_o\,
	combout => \inst2~combout\);

-- Location: LCCOMB_X49_Y53_N28
inst1 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (\A[0]~input_o\) # (\B[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[0]~input_o\,
	datad => \B[0]~input_o\,
	combout => \inst1~combout\);

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

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;

ww_F_sum(3) <= \F_sum[3]~output_o\;

ww_F_sum(2) <= \F_sum[2]~output_o\;

ww_F_sum(1) <= \F_sum[1]~output_o\;

ww_F_sum(0) <= \F_sum[0]~output_o\;

ww_F_not(3) <= \F_not[3]~output_o\;

ww_F_not(2) <= \F_not[2]~output_o\;

ww_F_not(1) <= \F_not[1]~output_o\;

ww_F_not(0) <= \F_not[0]~output_o\;

ww_F_and(3) <= \F_and[3]~output_o\;

ww_F_and(2) <= \F_and[2]~output_o\;

ww_F_and(1) <= \F_and[1]~output_o\;

ww_F_and(0) <= \F_and[0]~output_o\;

ww_F_or(3) <= \F_or[3]~output_o\;

ww_F_or(2) <= \F_or[2]~output_o\;

ww_F_or(1) <= \F_or[1]~output_o\;

ww_F_or(0) <= \F_or[0]~output_o\;
END structure;


