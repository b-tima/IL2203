-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "10/04/2021 16:48:56"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MCU_FSM IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	Instruction : IN std_logic_vector(15 DOWNTO 0);
	Read_NWrite : OUT std_logic;
	Data_out : OUT std_logic_vector(15 DOWNTO 0);
	Address_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END MCU_FSM;

-- Design Ports Information
-- RESET	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[1]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[2]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[4]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[5]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[7]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[8]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[9]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[10]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[11]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read_NWrite	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[5]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[6]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[7]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[8]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[11]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[12]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[13]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[14]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[2]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[4]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[6]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[7]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[8]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[10]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[11]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[12]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[14]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[15]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[12]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Instruction[15]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MCU_FSM IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_Instruction : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Read_NWrite : std_logic;
SIGNAL ww_Data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Address_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \Instruction[0]~input_o\ : std_logic;
SIGNAL \Instruction[1]~input_o\ : std_logic;
SIGNAL \Instruction[2]~input_o\ : std_logic;
SIGNAL \Instruction[3]~input_o\ : std_logic;
SIGNAL \Instruction[4]~input_o\ : std_logic;
SIGNAL \Instruction[5]~input_o\ : std_logic;
SIGNAL \Instruction[6]~input_o\ : std_logic;
SIGNAL \Instruction[7]~input_o\ : std_logic;
SIGNAL \Instruction[8]~input_o\ : std_logic;
SIGNAL \Instruction[9]~input_o\ : std_logic;
SIGNAL \Instruction[10]~input_o\ : std_logic;
SIGNAL \Instruction[11]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Instruction[12]~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \instruction_reg[12]~feeder_combout\ : std_logic;
SIGNAL \Read_NWrite~output_o\ : std_logic;
SIGNAL \Data_out[0]~output_o\ : std_logic;
SIGNAL \Data_out[1]~output_o\ : std_logic;
SIGNAL \Data_out[2]~output_o\ : std_logic;
SIGNAL \Data_out[3]~output_o\ : std_logic;
SIGNAL \Data_out[4]~output_o\ : std_logic;
SIGNAL \Data_out[5]~output_o\ : std_logic;
SIGNAL \Data_out[6]~output_o\ : std_logic;
SIGNAL \Data_out[7]~output_o\ : std_logic;
SIGNAL \Data_out[8]~output_o\ : std_logic;
SIGNAL \Data_out[9]~output_o\ : std_logic;
SIGNAL \Data_out[10]~output_o\ : std_logic;
SIGNAL \Data_out[11]~output_o\ : std_logic;
SIGNAL \Data_out[12]~output_o\ : std_logic;
SIGNAL \Data_out[13]~output_o\ : std_logic;
SIGNAL \Data_out[14]~output_o\ : std_logic;
SIGNAL \Data_out[15]~output_o\ : std_logic;
SIGNAL \Address_out[0]~output_o\ : std_logic;
SIGNAL \Address_out[1]~output_o\ : std_logic;
SIGNAL \Address_out[2]~output_o\ : std_logic;
SIGNAL \Address_out[3]~output_o\ : std_logic;
SIGNAL \Address_out[4]~output_o\ : std_logic;
SIGNAL \Address_out[5]~output_o\ : std_logic;
SIGNAL \Address_out[6]~output_o\ : std_logic;
SIGNAL \Address_out[7]~output_o\ : std_logic;
SIGNAL \Address_out[8]~output_o\ : std_logic;
SIGNAL \Address_out[9]~output_o\ : std_logic;
SIGNAL \Address_out[10]~output_o\ : std_logic;
SIGNAL \Address_out[11]~output_o\ : std_logic;
SIGNAL \Address_out[12]~output_o\ : std_logic;
SIGNAL \Address_out[13]~output_o\ : std_logic;
SIGNAL \Address_out[14]~output_o\ : std_logic;
SIGNAL \Address_out[15]~output_o\ : std_logic;
SIGNAL \Instruction[14]~input_o\ : std_logic;
SIGNAL \uPC[0]~1_combout\ : std_logic;
SIGNAL \uPC[1]~0_combout\ : std_logic;
SIGNAL \Instruction[13]~input_o\ : std_logic;
SIGNAL \Instruction[15]~input_o\ : std_logic;
SIGNAL \instruction_reg[15]~feeder_combout\ : std_logic;
SIGNAL \ucode|Mux15~0_combout\ : std_logic;
SIGNAL \ucode|Mux15~1_combout\ : std_logic;
SIGNAL \ucode|Mux9~0_combout\ : std_logic;
SIGNAL \ucode|Mux9~1_combout\ : std_logic;
SIGNAL instruction_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL uPC : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Instruction <= Instruction;
Read_NWrite <= ww_Read_NWrite;
Data_out <= ww_Data_out;
Address_out <= ww_Address_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: FF_X7_Y40_N23
\instruction_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \instruction_reg[12]~feeder_combout\,
	ena => \ucode|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(12));

-- Location: IOIBUF_X27_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X7_Y41_N22
\Instruction[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(12),
	o => \Instruction[12]~input_o\);

-- Location: CLKCTRL_G17
\CLK~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: LCCOMB_X7_Y40_N22
\instruction_reg[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[12]~feeder_combout\ = \Instruction[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instruction[12]~input_o\,
	combout => \instruction_reg[12]~feeder_combout\);

-- Location: IOOBUF_X5_Y41_N9
\Read_NWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucode|Mux9~1_combout\,
	devoe => ww_devoe,
	o => \Read_NWrite~output_o\);

-- Location: IOOBUF_X43_Y0_N9
\Data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\Data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\Data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[3]~output_o\);

-- Location: IOOBUF_X25_Y41_N9
\Data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[4]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\Data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[5]~output_o\);

-- Location: IOOBUF_X52_Y9_N2
\Data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[6]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\Data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\Data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\Data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[9]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\Data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[10]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\Data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[11]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\Data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[12]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\Data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[13]~output_o\);

-- Location: IOOBUF_X34_Y41_N2
\Data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[14]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\Data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Data_out[15]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\Address_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[0]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\Address_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\Address_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[2]~output_o\);

-- Location: IOOBUF_X41_Y0_N16
\Address_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[3]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\Address_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[4]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\Address_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[5]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\Address_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[6]~output_o\);

-- Location: IOOBUF_X10_Y41_N9
\Address_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Address_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\Address_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[9]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\Address_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[10]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\Address_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[11]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Address_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\Address_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[13]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\Address_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[14]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\Address_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address_out[15]~output_o\);

-- Location: IOIBUF_X7_Y41_N8
\Instruction[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(14),
	o => \Instruction[14]~input_o\);

-- Location: LCCOMB_X7_Y40_N12
\uPC[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uPC[0]~1_combout\ = !uPC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uPC(0),
	combout => \uPC[0]~1_combout\);

-- Location: FF_X7_Y40_N13
\uPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \uPC[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uPC(0));

-- Location: LCCOMB_X7_Y40_N20
\uPC[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uPC[1]~0_combout\ = uPC(1) $ (uPC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uPC(1),
	datad => uPC(0),
	combout => \uPC[1]~0_combout\);

-- Location: FF_X7_Y40_N21
\uPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \uPC[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uPC(1));

-- Location: IOIBUF_X7_Y41_N15
\Instruction[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(13),
	o => \Instruction[13]~input_o\);

-- Location: FF_X7_Y40_N27
\instruction_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Instruction[13]~input_o\,
	sload => VCC,
	ena => \ucode|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(13));

-- Location: IOIBUF_X7_Y41_N1
\Instruction[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(15),
	o => \Instruction[15]~input_o\);

-- Location: LCCOMB_X7_Y40_N18
\instruction_reg[15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[15]~feeder_combout\ = \Instruction[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Instruction[15]~input_o\,
	combout => \instruction_reg[15]~feeder_combout\);

-- Location: FF_X7_Y40_N19
\instruction_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \instruction_reg[15]~feeder_combout\,
	ena => \ucode|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(15));

-- Location: LCCOMB_X7_Y40_N16
\ucode|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux15~0_combout\ = (instruction_reg(15) & ((!instruction_reg(13)) # (!instruction_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datac => instruction_reg(13),
	datad => instruction_reg(15),
	combout => \ucode|Mux15~0_combout\);

-- Location: LCCOMB_X7_Y40_N14
\ucode|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux15~1_combout\ = (!uPC(1) & (((instruction_reg(14) & \ucode|Mux15~0_combout\)) # (!uPC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(0),
	datab => instruction_reg(14),
	datac => uPC(1),
	datad => \ucode|Mux15~0_combout\,
	combout => \ucode|Mux15~1_combout\);

-- Location: FF_X7_Y40_N29
\instruction_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Instruction[14]~input_o\,
	sload => VCC,
	ena => \ucode|Mux15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(14));

-- Location: LCCOMB_X7_Y40_N26
\ucode|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux9~0_combout\ = ((instruction_reg(14)) # ((instruction_reg(13)) # (uPC(0)))) # (!instruction_reg(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datab => instruction_reg(14),
	datac => instruction_reg(13),
	datad => uPC(0),
	combout => \ucode|Mux9~0_combout\);

-- Location: LCCOMB_X7_Y40_N28
\ucode|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux9~1_combout\ = (\ucode|Mux9~0_combout\) # ((uPC(1)) # (!instruction_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux9~0_combout\,
	datab => uPC(1),
	datad => instruction_reg(15),
	combout => \ucode|Mux9~1_combout\);

-- Location: IOIBUF_X34_Y0_N8
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X46_Y0_N15
\Instruction[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(0),
	o => \Instruction[0]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Instruction[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(1),
	o => \Instruction[1]~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\Instruction[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(2),
	o => \Instruction[2]~input_o\);

-- Location: IOIBUF_X41_Y0_N1
\Instruction[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(3),
	o => \Instruction[3]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\Instruction[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(4),
	o => \Instruction[4]~input_o\);

-- Location: IOIBUF_X34_Y41_N8
\Instruction[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(5),
	o => \Instruction[5]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\Instruction[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(6),
	o => \Instruction[6]~input_o\);

-- Location: IOIBUF_X41_Y0_N22
\Instruction[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(7),
	o => \Instruction[7]~input_o\);

-- Location: IOIBUF_X14_Y41_N1
\Instruction[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(8),
	o => \Instruction[8]~input_o\);

-- Location: IOIBUF_X10_Y0_N8
\Instruction[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(9),
	o => \Instruction[9]~input_o\);

-- Location: IOIBUF_X52_Y32_N8
\Instruction[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(10),
	o => \Instruction[10]~input_o\);

-- Location: IOIBUF_X23_Y41_N8
\Instruction[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Instruction(11),
	o => \Instruction[11]~input_o\);

ww_Read_NWrite <= \Read_NWrite~output_o\;

ww_Data_out(0) <= \Data_out[0]~output_o\;

ww_Data_out(1) <= \Data_out[1]~output_o\;

ww_Data_out(2) <= \Data_out[2]~output_o\;

ww_Data_out(3) <= \Data_out[3]~output_o\;

ww_Data_out(4) <= \Data_out[4]~output_o\;

ww_Data_out(5) <= \Data_out[5]~output_o\;

ww_Data_out(6) <= \Data_out[6]~output_o\;

ww_Data_out(7) <= \Data_out[7]~output_o\;

ww_Data_out(8) <= \Data_out[8]~output_o\;

ww_Data_out(9) <= \Data_out[9]~output_o\;

ww_Data_out(10) <= \Data_out[10]~output_o\;

ww_Data_out(11) <= \Data_out[11]~output_o\;

ww_Data_out(12) <= \Data_out[12]~output_o\;

ww_Data_out(13) <= \Data_out[13]~output_o\;

ww_Data_out(14) <= \Data_out[14]~output_o\;

ww_Data_out(15) <= \Data_out[15]~output_o\;

ww_Address_out(0) <= \Address_out[0]~output_o\;

ww_Address_out(1) <= \Address_out[1]~output_o\;

ww_Address_out(2) <= \Address_out[2]~output_o\;

ww_Address_out(3) <= \Address_out[3]~output_o\;

ww_Address_out(4) <= \Address_out[4]~output_o\;

ww_Address_out(5) <= \Address_out[5]~output_o\;

ww_Address_out(6) <= \Address_out[6]~output_o\;

ww_Address_out(7) <= \Address_out[7]~output_o\;

ww_Address_out(8) <= \Address_out[8]~output_o\;

ww_Address_out(9) <= \Address_out[9]~output_o\;

ww_Address_out(10) <= \Address_out[10]~output_o\;

ww_Address_out(11) <= \Address_out[11]~output_o\;

ww_Address_out(12) <= \Address_out[12]~output_o\;

ww_Address_out(13) <= \Address_out[13]~output_o\;

ww_Address_out(14) <= \Address_out[14]~output_o\;

ww_Address_out(15) <= \Address_out[15]~output_o\;
END structure;


