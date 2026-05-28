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

-- DATE "03/31/2026 21:17:22"

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

ENTITY 	Lab2ToVHDL_Decoder IS
    PORT (
	A_L : OUT std_logic;
	T_L : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	B_L : OUT std_logic;
	C_L : OUT std_logic;
	D_L : OUT std_logic;
	E_L : OUT std_logic;
	F_L : OUT std_logic;
	G_L : OUT std_logic
	);
END Lab2ToVHDL_Decoder;

-- Design Ports Information
-- A_L	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B_L	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C_L	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_L	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E_L	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F_L	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G_L	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab2ToVHDL_Decoder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_L : std_logic;
SIGNAL ww_T_L : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B_L : std_logic;
SIGNAL ww_C_L : std_logic;
SIGNAL ww_D_L : std_logic;
SIGNAL ww_E_L : std_logic;
SIGNAL ww_F_L : std_logic;
SIGNAL ww_G_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A_L~output_o\ : std_logic;
SIGNAL \B_L~output_o\ : std_logic;
SIGNAL \C_L~output_o\ : std_logic;
SIGNAL \D_L~output_o\ : std_logic;
SIGNAL \E_L~output_o\ : std_logic;
SIGNAL \F_L~output_o\ : std_logic;
SIGNAL \G_L~output_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst1|A_H~2_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \inst1|A_H~combout\ : std_logic;
SIGNAL \inst1|B_H~0_combout\ : std_logic;
SIGNAL \inst1|B_H~1_combout\ : std_logic;
SIGNAL \inst1|C_H~2_combout\ : std_logic;
SIGNAL \inst1|C_H~3_combout\ : std_logic;
SIGNAL \inst1|D_H~2_combout\ : std_logic;
SIGNAL \inst1|D_H~3_combout\ : std_logic;
SIGNAL \inst1|E_H~0_combout\ : std_logic;
SIGNAL \inst1|E_H~1_combout\ : std_logic;
SIGNAL \inst1|F_H~2_combout\ : std_logic;
SIGNAL \inst1|F_H~3_combout\ : std_logic;
SIGNAL \inst1|G_H~0_combout\ : std_logic;
SIGNAL \inst1|G_H~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_B_H~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_E_H~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_G_H~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_F_H~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_D_H~3_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_A_H~combout\ : std_logic;
SIGNAL \inst1|ALT_INV_C_H~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A_L <= ww_A_L;
ww_T_L <= T_L;
ww_X <= X;
B_L <= ww_B_L;
C_L <= ww_C_L;
D_L <= ww_D_L;
E_L <= ww_E_L;
F_L <= ww_F_L;
G_L <= ww_G_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\inst1|ALT_INV_B_H~1_combout\ <= NOT \inst1|B_H~1_combout\;
\inst1|ALT_INV_E_H~1_combout\ <= NOT \inst1|E_H~1_combout\;
\inst1|ALT_INV_G_H~1_combout\ <= NOT \inst1|G_H~1_combout\;
\inst1|ALT_INV_F_H~3_combout\ <= NOT \inst1|F_H~3_combout\;
\inst1|ALT_INV_D_H~3_combout\ <= NOT \inst1|D_H~3_combout\;
\inst1|ALT_INV_A_H~combout\ <= NOT \inst1|A_H~combout\;
\inst1|ALT_INV_C_H~3_combout\ <= NOT \inst1|C_H~3_combout\;
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

-- Location: IOOBUF_X34_Y39_N23
\A_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_A_H~combout\,
	devoe => ww_devoe,
	o => \A_L~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\B_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_B_H~1_combout\,
	devoe => ww_devoe,
	o => \B_L~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\C_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_C_H~3_combout\,
	devoe => ww_devoe,
	o => \C_L~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\D_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_D_H~3_combout\,
	devoe => ww_devoe,
	o => \D_L~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\E_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_E_H~1_combout\,
	devoe => ww_devoe,
	o => \E_L~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\F_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_F_H~3_combout\,
	devoe => ww_devoe,
	o => \F_L~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\G_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_G_H~1_combout\,
	devoe => ww_devoe,
	o => \G_L~output_o\);

-- Location: IOIBUF_X36_Y39_N22
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

-- Location: IOIBUF_X34_Y39_N8
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

-- Location: IOIBUF_X34_Y39_N15
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

-- Location: IOIBUF_X36_Y39_N29
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

-- Location: LCCOMB_X34_Y35_N12
\inst1|A_H~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|A_H~2_combout\ = (\X[2]~input_o\ & ((\X[1]~input_o\) # (\X[3]~input_o\ $ (\X[0]~input_o\)))) # (!\X[2]~input_o\ & ((\X[3]~input_o\ $ (\X[1]~input_o\)) # (!\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|A_H~2_combout\);

-- Location: IOIBUF_X34_Y39_N1
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

-- Location: LCCOMB_X34_Y35_N30
\inst1|A_H\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|A_H~combout\ = (\inst1|A_H~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|A_H~2_combout\,
	datac => \T_L~input_o\,
	combout => \inst1|A_H~combout\);

-- Location: LCCOMB_X34_Y35_N0
\inst1|B_H~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|B_H~0_combout\ = (\X[1]~input_o\ & (((!\X[3]~input_o\ & \X[0]~input_o\)))) # (!\X[1]~input_o\ & ((\X[3]~input_o\ $ (!\X[0]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|B_H~0_combout\);

-- Location: LCCOMB_X34_Y35_N2
\inst1|B_H~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|B_H~1_combout\ = (\inst1|B_H~0_combout\) # (((!\X[0]~input_o\ & !\X[2]~input_o\)) # (!\T_L~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \inst1|B_H~0_combout\,
	datac => \X[2]~input_o\,
	datad => \T_L~input_o\,
	combout => \inst1|B_H~1_combout\);

-- Location: LCCOMB_X34_Y35_N24
\inst1|C_H~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|C_H~2_combout\ = (\X[2]~input_o\ & (((\X[0]~input_o\ & !\X[1]~input_o\)) # (!\X[3]~input_o\))) # (!\X[2]~input_o\ & ((\X[3]~input_o\) # ((\X[0]~input_o\) # (!\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|C_H~2_combout\);

-- Location: LCCOMB_X34_Y35_N26
\inst1|C_H~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|C_H~3_combout\ = (\inst1|C_H~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|C_H~2_combout\,
	datac => \T_L~input_o\,
	combout => \inst1|C_H~3_combout\);

-- Location: LCCOMB_X34_Y35_N20
\inst1|D_H~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D_H~2_combout\ = (\X[1]~input_o\ & ((\X[2]~input_o\ & ((!\X[0]~input_o\))) # (!\X[2]~input_o\ & ((\X[0]~input_o\) # (!\X[3]~input_o\))))) # (!\X[1]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\ $ (!\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|D_H~2_combout\);

-- Location: LCCOMB_X34_Y35_N22
\inst1|D_H~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|D_H~3_combout\ = (\inst1|D_H~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|D_H~2_combout\,
	datac => \T_L~input_o\,
	combout => \inst1|D_H~3_combout\);

-- Location: LCCOMB_X34_Y35_N28
\inst1|E_H~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E_H~0_combout\ = (\X[1]~input_o\ & (((\X[3]~input_o\) # (!\X[0]~input_o\)))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & (\X[3]~input_o\)) # (!\X[2]~input_o\ & ((!\X[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|E_H~0_combout\);

-- Location: LCCOMB_X34_Y35_N6
\inst1|E_H~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|E_H~1_combout\ = (\inst1|E_H~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|E_H~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst1|E_H~1_combout\);

-- Location: LCCOMB_X34_Y35_N8
\inst1|F_H~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|F_H~2_combout\ = (\X[2]~input_o\ & ((\X[3]~input_o\ $ (!\X[1]~input_o\)) # (!\X[0]~input_o\))) # (!\X[2]~input_o\ & ((\X[3]~input_o\) # ((!\X[0]~input_o\ & !\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|F_H~2_combout\);

-- Location: LCCOMB_X34_Y35_N18
\inst1|F_H~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|F_H~3_combout\ = (\inst1|F_H~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \T_L~input_o\,
	datac => \inst1|F_H~2_combout\,
	combout => \inst1|F_H~3_combout\);

-- Location: LCCOMB_X34_Y35_N16
\inst1|G_H~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|G_H~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\ $ (\X[1]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[2]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[0]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst1|G_H~0_combout\);

-- Location: LCCOMB_X34_Y35_N10
\inst1|G_H~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|G_H~1_combout\ = (\inst1|G_H~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|G_H~0_combout\,
	datac => \T_L~input_o\,
	combout => \inst1|G_H~1_combout\);

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

ww_A_L <= \A_L~output_o\;

ww_B_L <= \B_L~output_o\;

ww_C_L <= \C_L~output_o\;

ww_D_L <= \D_L~output_o\;

ww_E_L <= \E_L~output_o\;

ww_F_L <= \F_L~output_o\;

ww_G_L <= \G_L~output_o\;
END structure;


