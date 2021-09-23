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

-- DATE "09/23/2021 16:35:02"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
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

ENTITY 	Datapath IS
    PORT (
	RESET : IN std_logic;
	CLK : IN std_logic;
	OP : IN std_logic_vector(2 DOWNTO 0);
	IE : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	WAddr : IN std_logic_vector(1 DOWNTO 0);
	Write : IN std_logic;
	RA : IN std_logic_vector(1 DOWNTO 0);
	ReadA : IN std_logic;
	RB : IN std_logic_vector(1 DOWNTO 0);
	ReadB : IN std_logic;
	BypassA : IN std_logic;
	BypassB : IN std_logic;
	Offset : IN std_logic_vector(3 DOWNTO 0);
	OE : IN std_logic;
	CLK1HZ_po : OUT std_logic;
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
	);
END Datapath;

-- Design Ports Information
-- CLK1HZ_po	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_Flag	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_Flag	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_Flag	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BypassB	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Offset[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadB	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadA	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BypassA	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Offset[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Offset[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Offset[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IE	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IE : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_WAddr : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Write : std_logic;
SIGNAL ww_RA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ReadA : std_logic;
SIGNAL ww_RB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ReadB : std_logic;
SIGNAL ww_BypassA : std_logic;
SIGNAL ww_BypassB : std_logic;
SIGNAL ww_Offset : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OE : std_logic;
SIGNAL ww_CLK1HZ_po : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|Add0~0_combout\ : std_logic;
SIGNAL \cd|Add0~2_combout\ : std_logic;
SIGNAL \cd|Add0~14_combout\ : std_logic;
SIGNAL \cd|Add0~28_combout\ : std_logic;
SIGNAL \cd|Add0~30_combout\ : std_logic;
SIGNAL \cd|Add0~38_combout\ : std_logic;
SIGNAL \cd|Add0~44_combout\ : std_logic;
SIGNAL \cd|Add0~47\ : std_logic;
SIGNAL \cd|Add0~48_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \alu_b[0]~24_combout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~q\ : std_logic;
SIGNAL \alu_b[0]~25_combout\ : std_logic;
SIGNAL \alu_b[0]~26_combout\ : std_logic;
SIGNAL \alu_b[1]~27_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~5_combout\ : std_logic;
SIGNAL \cd|counter~5_combout\ : std_logic;
SIGNAL \cd|counter~8_combout\ : std_logic;
SIGNAL \cd|counter~9_combout\ : std_logic;
SIGNAL \cd|counter~12_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \CLK1HZ_po~output_o\ : std_logic;
SIGNAL \Z_Flag~output_o\ : std_logic;
SIGNAL \N_Flag~output_o\ : std_logic;
SIGNAL \O_Flag~output_o\ : std_logic;
SIGNAL \cd|counter~2_combout\ : std_logic;
SIGNAL \cd|Add0~1\ : std_logic;
SIGNAL \cd|Add0~3\ : std_logic;
SIGNAL \cd|Add0~5\ : std_logic;
SIGNAL \cd|Add0~6_combout\ : std_logic;
SIGNAL \cd|Add0~7\ : std_logic;
SIGNAL \cd|Add0~8_combout\ : std_logic;
SIGNAL \cd|Add0~9\ : std_logic;
SIGNAL \cd|Add0~10_combout\ : std_logic;
SIGNAL \cd|Add0~11\ : std_logic;
SIGNAL \cd|Add0~12_combout\ : std_logic;
SIGNAL \cd|counter~1_combout\ : std_logic;
SIGNAL \cd|Add0~13\ : std_logic;
SIGNAL \cd|Add0~15\ : std_logic;
SIGNAL \cd|Add0~16_combout\ : std_logic;
SIGNAL \cd|Add0~17\ : std_logic;
SIGNAL \cd|Add0~19\ : std_logic;
SIGNAL \cd|Add0~20_combout\ : std_logic;
SIGNAL \cd|Add0~21\ : std_logic;
SIGNAL \cd|Add0~23\ : std_logic;
SIGNAL \cd|Add0~24_combout\ : std_logic;
SIGNAL \cd|counter~3_combout\ : std_logic;
SIGNAL \cd|Add0~25\ : std_logic;
SIGNAL \cd|Add0~26_combout\ : std_logic;
SIGNAL \cd|counter~4_combout\ : std_logic;
SIGNAL \cd|Add0~27\ : std_logic;
SIGNAL \cd|Add0~29\ : std_logic;
SIGNAL \cd|Add0~31\ : std_logic;
SIGNAL \cd|Add0~32_combout\ : std_logic;
SIGNAL \cd|counter~6_combout\ : std_logic;
SIGNAL \cd|Add0~33\ : std_logic;
SIGNAL \cd|Add0~34_combout\ : std_logic;
SIGNAL \cd|Add0~35\ : std_logic;
SIGNAL \cd|Add0~36_combout\ : std_logic;
SIGNAL \cd|counter~7_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|Add0~37\ : std_logic;
SIGNAL \cd|Add0~39\ : std_logic;
SIGNAL \cd|Add0~40_combout\ : std_logic;
SIGNAL \cd|counter~10_combout\ : std_logic;
SIGNAL \cd|Add0~41\ : std_logic;
SIGNAL \cd|Add0~43\ : std_logic;
SIGNAL \cd|Add0~45\ : std_logic;
SIGNAL \cd|Add0~46_combout\ : std_logic;
SIGNAL \cd|Add0~42_combout\ : std_logic;
SIGNAL \cd|counter~11_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \cd|Add0~22_combout\ : std_logic;
SIGNAL \cd|counter~0_combout\ : std_logic;
SIGNAL \cd|Add0~18_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Add0~4_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \cd|clk_tmp~0_combout\ : std_logic;
SIGNAL \cd|clk_tmp~feeder_combout\ : std_logic;
SIGNAL \cd|clk_tmp~q\ : std_logic;
SIGNAL \cd|clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \BypassA~input_o\ : std_logic;
SIGNAL \Offset[0]~input_o\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \IE~input_o\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \rf|register_arr~0_combout\ : std_logic;
SIGNAL \WAddr[0]~input_o\ : std_logic;
SIGNAL \Write~input_o\ : std_logic;
SIGNAL \WAddr[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr[3][1]~4_combout\ : std_logic;
SIGNAL \rf|register_arr[3][0]~q\ : std_logic;
SIGNAL \rf|register_arr[1][1]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[1][0]~q\ : std_logic;
SIGNAL \rf|register_arr[0][0]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[0][0]~q\ : std_logic;
SIGNAL \alu_a[0]~0_combout\ : std_logic;
SIGNAL \alu_a[0]~1_combout\ : std_logic;
SIGNAL \alu_a[0]~2_combout\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~2_cout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~3_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~2_combout\ : std_logic;
SIGNAL \BypassB~input_o\ : std_logic;
SIGNAL \ReadB~input_o\ : std_logic;
SIGNAL \alu_b[0]~38_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~4_combout\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~6_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \OE~input_o\ : std_logic;
SIGNAL \alu_en~combout\ : std_logic;
SIGNAL \Offset[1]~input_o\ : std_logic;
SIGNAL \ReadA~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr~7_combout\ : std_logic;
SIGNAL \rf|register_arr[1][1]~q\ : std_logic;
SIGNAL \rf|register_arr[3][1]~q\ : std_logic;
SIGNAL \rf|register_arr[0][1]~q\ : std_logic;
SIGNAL \rf|register_arr[2][1]~1_combout\ : std_logic;
SIGNAL \rf|register_arr[2][1]~q\ : std_logic;
SIGNAL \alu_a[1]~9_combout\ : std_logic;
SIGNAL \alu_a[1]~10_combout\ : std_logic;
SIGNAL \alu_a[1]~11_combout\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \alu_b[1]~35_combout\ : std_logic;
SIGNAL \alu_b[1]~36_combout\ : std_logic;
SIGNAL \alu_b[1]~40_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~2_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~3_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~1_combout\ : std_logic;
SIGNAL \alu_b[1]~37_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~7_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~4\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~8_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~3_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \rf|register_arr~6_combout\ : std_logic;
SIGNAL \rf|register_arr[3][2]~q\ : std_logic;
SIGNAL \rf|register_arr[0][2]~q\ : std_logic;
SIGNAL \rf|register_arr[1][2]~q\ : std_logic;
SIGNAL \alu_a[2]~6_combout\ : std_logic;
SIGNAL \alu_a[2]~7_combout\ : std_logic;
SIGNAL \alu_a[2]~8_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~2_combout\ : std_logic;
SIGNAL \Offset[2]~input_o\ : std_logic;
SIGNAL \rf|register_arr[2][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][2]~q\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \alu_b[2]~32_combout\ : std_logic;
SIGNAL \alu_b[2]~33_combout\ : std_logic;
SIGNAL \alu_b[2]~39_combout\ : std_logic;
SIGNAL \alu_b[2]~34_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~6_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~9\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~10_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~3_combout\ : std_logic;
SIGNAL \Offset[3]~input_o\ : std_logic;
SIGNAL \rf|register_arr~5_combout\ : std_logic;
SIGNAL \rf|register_arr[3][3]~q\ : std_logic;
SIGNAL \rf|register_arr[1][3]~q\ : std_logic;
SIGNAL \rf|register_arr[0][3]~q\ : std_logic;
SIGNAL \rf|register_arr[2][3]~q\ : std_logic;
SIGNAL \alu_b[3]~28_combout\ : std_logic;
SIGNAL \alu_b[3]~29_combout\ : std_logic;
SIGNAL \alu_b[3]~30_combout\ : std_logic;
SIGNAL \alu_a[3]~3_combout\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \alu_a[3]~4_combout\ : std_logic;
SIGNAL \alu_a[3]~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~2_combout\ : std_logic;
SIGNAL \alu_b[3]~31_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~11\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~12_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~3_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|z_tmp~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Z_Flag~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Z_Flag~q\ : std_logic;
SIGNAL \the_best_alu_in_kista|N_Flag~q\ : std_logic;
SIGNAL \the_best_alu_in_kista|Equal0~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|sub_overflow~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|sub_overflow~combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|o_tmp~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|O_Flag~q\ : std_logic;
SIGNAL \cd|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \the_best_alu_in_kista|SUM\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_RESET <= RESET;
ww_CLK <= CLK;
ww_OP <= OP;
ww_IE <= IE;
ww_INPUT <= INPUT;
ww_WAddr <= WAddr;
ww_Write <= Write;
ww_RA <= RA;
ww_ReadA <= ReadA;
ww_RB <= RB;
ww_ReadB <= ReadB;
ww_BypassA <= BypassA;
ww_BypassB <= BypassB;
ww_Offset <= Offset;
ww_OE <= OE;
CLK1HZ_po <= ww_CLK1HZ_po;
OUTPUT <= ww_OUTPUT;
Z_Flag <= ww_Z_Flag;
N_Flag <= ww_N_Flag;
O_Flag <= ww_O_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\cd|clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cd|clk_tmp~q\);

-- Location: LCCOMB_X2_Y17_N8
\cd|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~0_combout\ = \cd|counter\(0) $ (VCC)
-- \cd|Add0~1\ = CARRY(\cd|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(0),
	datad => VCC,
	combout => \cd|Add0~0_combout\,
	cout => \cd|Add0~1\);

-- Location: LCCOMB_X2_Y17_N10
\cd|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~2_combout\ = (\cd|counter\(1) & (!\cd|Add0~1\)) # (!\cd|counter\(1) & ((\cd|Add0~1\) # (GND)))
-- \cd|Add0~3\ = CARRY((!\cd|Add0~1\) # (!\cd|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(1),
	datad => VCC,
	cin => \cd|Add0~1\,
	combout => \cd|Add0~2_combout\,
	cout => \cd|Add0~3\);

-- Location: LCCOMB_X2_Y17_N22
\cd|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~14_combout\ = (\cd|counter\(7) & (!\cd|Add0~13\)) # (!\cd|counter\(7) & ((\cd|Add0~13\) # (GND)))
-- \cd|Add0~15\ = CARRY((!\cd|Add0~13\) # (!\cd|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(7),
	datad => VCC,
	cin => \cd|Add0~13\,
	combout => \cd|Add0~14_combout\,
	cout => \cd|Add0~15\);

-- Location: LCCOMB_X2_Y16_N4
\cd|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~28_combout\ = (\cd|counter\(14) & (\cd|Add0~27\ $ (GND))) # (!\cd|counter\(14) & (!\cd|Add0~27\ & VCC))
-- \cd|Add0~29\ = CARRY((\cd|counter\(14) & !\cd|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(14),
	datad => VCC,
	cin => \cd|Add0~27\,
	combout => \cd|Add0~28_combout\,
	cout => \cd|Add0~29\);

-- Location: LCCOMB_X2_Y16_N6
\cd|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~30_combout\ = (\cd|counter\(15) & (!\cd|Add0~29\)) # (!\cd|counter\(15) & ((\cd|Add0~29\) # (GND)))
-- \cd|Add0~31\ = CARRY((!\cd|Add0~29\) # (!\cd|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(15),
	datad => VCC,
	cin => \cd|Add0~29\,
	combout => \cd|Add0~30_combout\,
	cout => \cd|Add0~31\);

-- Location: LCCOMB_X2_Y16_N14
\cd|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~38_combout\ = (\cd|counter\(19) & (!\cd|Add0~37\)) # (!\cd|counter\(19) & ((\cd|Add0~37\) # (GND)))
-- \cd|Add0~39\ = CARRY((!\cd|Add0~37\) # (!\cd|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(19),
	datad => VCC,
	cin => \cd|Add0~37\,
	combout => \cd|Add0~38_combout\,
	cout => \cd|Add0~39\);

-- Location: LCCOMB_X2_Y16_N20
\cd|Add0~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~44_combout\ = (\cd|counter\(22) & (\cd|Add0~43\ $ (GND))) # (!\cd|counter\(22) & (!\cd|Add0~43\ & VCC))
-- \cd|Add0~45\ = CARRY((\cd|counter\(22) & !\cd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(22),
	datad => VCC,
	cin => \cd|Add0~43\,
	combout => \cd|Add0~44_combout\,
	cout => \cd|Add0~45\);

-- Location: LCCOMB_X2_Y16_N22
\cd|Add0~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~46_combout\ = (\cd|counter\(23) & (!\cd|Add0~45\)) # (!\cd|counter\(23) & ((\cd|Add0~45\) # (GND)))
-- \cd|Add0~47\ = CARRY((!\cd|Add0~45\) # (!\cd|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(23),
	datad => VCC,
	cin => \cd|Add0~45\,
	combout => \cd|Add0~46_combout\,
	cout => \cd|Add0~47\);

-- Location: LCCOMB_X2_Y16_N24
\cd|Add0~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~48_combout\ = \cd|Add0~47\ $ (!\cd|counter\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cd|counter\(24),
	cin => \cd|Add0~47\,
	combout => \cd|Add0~48_combout\);

-- Location: FF_X2_Y17_N23
\cd|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(7));

-- Location: FF_X2_Y17_N11
\cd|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(1));

-- Location: FF_X1_Y16_N3
\cd|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(14));

-- Location: FF_X2_Y16_N7
\cd|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(15));

-- Location: LCCOMB_X1_Y16_N10
\cd|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (\cd|counter\(12) & (\cd|counter\(14) & (\cd|counter\(13) & !\cd|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(12),
	datab => \cd|counter\(14),
	datac => \cd|counter\(13),
	datad => \cd|counter\(15),
	combout => \cd|Equal0~3_combout\);

-- Location: FF_X1_Y16_N27
\cd|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(19));

-- Location: FF_X1_Y16_N13
\cd|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(24));

-- Location: FF_X1_Y16_N9
\cd|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(22));

-- Location: LCCOMB_X24_Y30_N28
\alu_b[0]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[0]~24_combout\ = (\BypassB~input_o\ & \Offset[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BypassB~input_o\,
	datad => \Offset[0]~input_o\,
	combout => \alu_b[0]~24_combout\);

-- Location: FF_X26_Y30_N5
\rf|register_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~0_combout\,
	ena => \rf|register_arr[2][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][0]~q\);

-- Location: LCCOMB_X26_Y30_N20
\alu_b[0]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[0]~25_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][0]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][0]~q\,
	datad => \rf|register_arr[1][0]~q\,
	combout => \alu_b[0]~25_combout\);

-- Location: LCCOMB_X26_Y30_N6
\alu_b[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[0]~26_combout\ = (\RB[1]~input_o\ & ((\alu_b[0]~25_combout\ & ((\rf|register_arr[3][0]~q\))) # (!\alu_b[0]~25_combout\ & (\rf|register_arr[2][0]~q\)))) # (!\RB[1]~input_o\ & (((\alu_b[0]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][0]~q\,
	datac => \rf|register_arr[3][0]~q\,
	datad => \alu_b[0]~25_combout\,
	combout => \alu_b[0]~26_combout\);

-- Location: LCCOMB_X26_Y30_N22
\alu_b[1]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[1]~27_combout\ = (\ReadB~input_o\ & !\BypassB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ReadB~input_o\,
	datad => \BypassB~input_o\,
	combout => \alu_b[1]~27_combout\);

-- Location: LCCOMB_X25_Y29_N26
\the_best_alu_in_kista|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~0_combout\ = \OP[0]~input_o\ $ (((\alu_b[0]~24_combout\) # ((\alu_b[1]~27_combout\ & \alu_b[0]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~27_combout\,
	datab => \alu_b[0]~24_combout\,
	datac => \OP[0]~input_o\,
	datad => \alu_b[0]~26_combout\,
	combout => \the_best_alu_in_kista|Add0~0_combout\);

-- Location: LCCOMB_X26_Y29_N18
\the_best_alu_in_kista|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~5_combout\ = (\OP[0]~input_o\ & ((\alu_a[0]~2_combout\) # (\alu_b[0]~38_combout\))) # (!\OP[0]~input_o\ & (\alu_a[0]~2_combout\ & \alu_b[0]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datac => \alu_a[0]~2_combout\,
	datad => \alu_b[0]~38_combout\,
	combout => \the_best_alu_in_kista|Mux3~5_combout\);

-- Location: LCCOMB_X1_Y16_N2
\cd|counter~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~5_combout\ = (\cd|Add0~28_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~28_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~5_combout\);

-- Location: LCCOMB_X1_Y16_N26
\cd|counter~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~8_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datad => \cd|Add0~38_combout\,
	combout => \cd|counter~8_combout\);

-- Location: LCCOMB_X1_Y16_N12
\cd|counter~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~9_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datad => \cd|Add0~48_combout\,
	combout => \cd|counter~9_combout\);

-- Location: LCCOMB_X1_Y16_N8
\cd|counter~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~12_combout\ = (\cd|Add0~44_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~44_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~12_combout\);

-- Location: IOIBUF_X16_Y0_N15
\CLK~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: IOIBUF_X33_Y12_N1
\INPUT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

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

-- Location: IOOBUF_X33_Y24_N2
\OUTPUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|SUM\(0),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\OUTPUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|SUM\(1),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\OUTPUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|SUM\(2),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\OUTPUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|SUM\(3),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\CLK1HZ_po~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cd|clk_tmp~q\,
	devoe => ww_devoe,
	o => \CLK1HZ_po~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\Z_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|Z_Flag~q\,
	devoe => ww_devoe,
	o => \Z_Flag~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\N_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|N_Flag~q\,
	devoe => ww_devoe,
	o => \N_Flag~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\O_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \the_best_alu_in_kista|O_Flag~q\,
	devoe => ww_devoe,
	o => \O_Flag~output_o\);

-- Location: LCCOMB_X2_Y17_N4
\cd|counter~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~2_combout\ = (\cd|Add0~0_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Add0~0_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~2_combout\);

-- Location: FF_X2_Y17_N5
\cd|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(0));

-- Location: LCCOMB_X2_Y17_N12
\cd|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~4_combout\ = (\cd|counter\(2) & (\cd|Add0~3\ $ (GND))) # (!\cd|counter\(2) & (!\cd|Add0~3\ & VCC))
-- \cd|Add0~5\ = CARRY((\cd|counter\(2) & !\cd|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(2),
	datad => VCC,
	cin => \cd|Add0~3\,
	combout => \cd|Add0~4_combout\,
	cout => \cd|Add0~5\);

-- Location: LCCOMB_X2_Y17_N14
\cd|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~6_combout\ = (\cd|counter\(3) & (!\cd|Add0~5\)) # (!\cd|counter\(3) & ((\cd|Add0~5\) # (GND)))
-- \cd|Add0~7\ = CARRY((!\cd|Add0~5\) # (!\cd|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(3),
	datad => VCC,
	cin => \cd|Add0~5\,
	combout => \cd|Add0~6_combout\,
	cout => \cd|Add0~7\);

-- Location: FF_X2_Y17_N15
\cd|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(3));

-- Location: LCCOMB_X2_Y17_N16
\cd|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~8_combout\ = (\cd|counter\(4) & (\cd|Add0~7\ $ (GND))) # (!\cd|counter\(4) & (!\cd|Add0~7\ & VCC))
-- \cd|Add0~9\ = CARRY((\cd|counter\(4) & !\cd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(4),
	datad => VCC,
	cin => \cd|Add0~7\,
	combout => \cd|Add0~8_combout\,
	cout => \cd|Add0~9\);

-- Location: FF_X2_Y17_N17
\cd|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(4));

-- Location: LCCOMB_X2_Y17_N18
\cd|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~10_combout\ = (\cd|counter\(5) & (!\cd|Add0~9\)) # (!\cd|counter\(5) & ((\cd|Add0~9\) # (GND)))
-- \cd|Add0~11\ = CARRY((!\cd|Add0~9\) # (!\cd|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(5),
	datad => VCC,
	cin => \cd|Add0~9\,
	combout => \cd|Add0~10_combout\,
	cout => \cd|Add0~11\);

-- Location: FF_X2_Y17_N19
\cd|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(5));

-- Location: LCCOMB_X2_Y17_N20
\cd|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~12_combout\ = (\cd|counter\(6) & (\cd|Add0~11\ $ (GND))) # (!\cd|counter\(6) & (!\cd|Add0~11\ & VCC))
-- \cd|Add0~13\ = CARRY((\cd|counter\(6) & !\cd|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(6),
	datad => VCC,
	cin => \cd|Add0~11\,
	combout => \cd|Add0~12_combout\,
	cout => \cd|Add0~13\);

-- Location: LCCOMB_X2_Y17_N0
\cd|counter~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~1_combout\ = (\cd|Add0~12_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Add0~12_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~1_combout\);

-- Location: FF_X2_Y17_N1
\cd|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(6));

-- Location: LCCOMB_X2_Y17_N24
\cd|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~16_combout\ = (\cd|counter\(8) & (\cd|Add0~15\ $ (GND))) # (!\cd|counter\(8) & (!\cd|Add0~15\ & VCC))
-- \cd|Add0~17\ = CARRY((\cd|counter\(8) & !\cd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(8),
	datad => VCC,
	cin => \cd|Add0~15\,
	combout => \cd|Add0~16_combout\,
	cout => \cd|Add0~17\);

-- Location: FF_X2_Y17_N25
\cd|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(8));

-- Location: LCCOMB_X2_Y17_N26
\cd|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~18_combout\ = (\cd|counter\(9) & (!\cd|Add0~17\)) # (!\cd|counter\(9) & ((\cd|Add0~17\) # (GND)))
-- \cd|Add0~19\ = CARRY((!\cd|Add0~17\) # (!\cd|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(9),
	datad => VCC,
	cin => \cd|Add0~17\,
	combout => \cd|Add0~18_combout\,
	cout => \cd|Add0~19\);

-- Location: LCCOMB_X2_Y17_N28
\cd|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~20_combout\ = (\cd|counter\(10) & (\cd|Add0~19\ $ (GND))) # (!\cd|counter\(10) & (!\cd|Add0~19\ & VCC))
-- \cd|Add0~21\ = CARRY((\cd|counter\(10) & !\cd|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(10),
	datad => VCC,
	cin => \cd|Add0~19\,
	combout => \cd|Add0~20_combout\,
	cout => \cd|Add0~21\);

-- Location: FF_X2_Y17_N29
\cd|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(10));

-- Location: LCCOMB_X2_Y17_N30
\cd|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~22_combout\ = (\cd|counter\(11) & (!\cd|Add0~21\)) # (!\cd|counter\(11) & ((\cd|Add0~21\) # (GND)))
-- \cd|Add0~23\ = CARRY((!\cd|Add0~21\) # (!\cd|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(11),
	datad => VCC,
	cin => \cd|Add0~21\,
	combout => \cd|Add0~22_combout\,
	cout => \cd|Add0~23\);

-- Location: LCCOMB_X2_Y16_N0
\cd|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~24_combout\ = (\cd|counter\(12) & (\cd|Add0~23\ $ (GND))) # (!\cd|counter\(12) & (!\cd|Add0~23\ & VCC))
-- \cd|Add0~25\ = CARRY((\cd|counter\(12) & !\cd|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(12),
	datad => VCC,
	cin => \cd|Add0~23\,
	combout => \cd|Add0~24_combout\,
	cout => \cd|Add0~25\);

-- Location: LCCOMB_X1_Y16_N6
\cd|counter~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~3_combout\ = (\cd|Add0~24_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~24_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~3_combout\);

-- Location: FF_X1_Y16_N7
\cd|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(12));

-- Location: LCCOMB_X2_Y16_N2
\cd|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~26_combout\ = (\cd|counter\(13) & (!\cd|Add0~25\)) # (!\cd|counter\(13) & ((\cd|Add0~25\) # (GND)))
-- \cd|Add0~27\ = CARRY((!\cd|Add0~25\) # (!\cd|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(13),
	datad => VCC,
	cin => \cd|Add0~25\,
	combout => \cd|Add0~26_combout\,
	cout => \cd|Add0~27\);

-- Location: LCCOMB_X1_Y16_N30
\cd|counter~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~4_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datac => \cd|Add0~26_combout\,
	combout => \cd|counter~4_combout\);

-- Location: FF_X1_Y16_N31
\cd|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(13));

-- Location: LCCOMB_X2_Y16_N8
\cd|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~32_combout\ = (\cd|counter\(16) & (\cd|Add0~31\ $ (GND))) # (!\cd|counter\(16) & (!\cd|Add0~31\ & VCC))
-- \cd|Add0~33\ = CARRY((\cd|counter\(16) & !\cd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(16),
	datad => VCC,
	cin => \cd|Add0~31\,
	combout => \cd|Add0~32_combout\,
	cout => \cd|Add0~33\);

-- Location: LCCOMB_X1_Y16_N16
\cd|counter~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~6_combout\ = (\cd|Add0~32_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~32_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~6_combout\);

-- Location: FF_X1_Y16_N17
\cd|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(16));

-- Location: LCCOMB_X2_Y16_N10
\cd|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~34_combout\ = (\cd|counter\(17) & (!\cd|Add0~33\)) # (!\cd|counter\(17) & ((\cd|Add0~33\) # (GND)))
-- \cd|Add0~35\ = CARRY((!\cd|Add0~33\) # (!\cd|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(17),
	datad => VCC,
	cin => \cd|Add0~33\,
	combout => \cd|Add0~34_combout\,
	cout => \cd|Add0~35\);

-- Location: FF_X2_Y16_N11
\cd|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(17));

-- Location: LCCOMB_X2_Y16_N12
\cd|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~36_combout\ = (\cd|counter\(18) & (\cd|Add0~35\ $ (GND))) # (!\cd|counter\(18) & (!\cd|Add0~35\ & VCC))
-- \cd|Add0~37\ = CARRY((\cd|counter\(18) & !\cd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(18),
	datad => VCC,
	cin => \cd|Add0~35\,
	combout => \cd|Add0~36_combout\,
	cout => \cd|Add0~37\);

-- Location: LCCOMB_X2_Y16_N26
\cd|counter~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~7_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datad => \cd|Add0~36_combout\,
	combout => \cd|counter~7_combout\);

-- Location: FF_X2_Y16_N27
\cd|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(18));

-- Location: LCCOMB_X1_Y16_N4
\cd|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (\cd|counter\(19) & (\cd|counter\(16) & (!\cd|counter\(17) & \cd|counter\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(19),
	datab => \cd|counter\(16),
	datac => \cd|counter\(17),
	datad => \cd|counter\(18),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y16_N16
\cd|Add0~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~40_combout\ = (\cd|counter\(20) & (\cd|Add0~39\ $ (GND))) # (!\cd|counter\(20) & (!\cd|Add0~39\ & VCC))
-- \cd|Add0~41\ = CARRY((\cd|counter\(20) & !\cd|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(20),
	datad => VCC,
	cin => \cd|Add0~39\,
	combout => \cd|Add0~40_combout\,
	cout => \cd|Add0~41\);

-- Location: LCCOMB_X2_Y16_N28
\cd|counter~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~10_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datad => \cd|Add0~40_combout\,
	combout => \cd|counter~10_combout\);

-- Location: FF_X2_Y16_N29
\cd|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(20));

-- Location: LCCOMB_X2_Y16_N18
\cd|Add0~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Add0~42_combout\ = (\cd|counter\(21) & (!\cd|Add0~41\)) # (!\cd|counter\(21) & ((\cd|Add0~41\) # (GND)))
-- \cd|Add0~43\ = CARRY((!\cd|Add0~41\) # (!\cd|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(21),
	datad => VCC,
	cin => \cd|Add0~41\,
	combout => \cd|Add0~42_combout\,
	cout => \cd|Add0~43\);

-- Location: FF_X2_Y16_N23
\cd|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(23));

-- Location: LCCOMB_X2_Y16_N30
\cd|counter~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~11_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~7_combout\,
	datad => \cd|Add0~42_combout\,
	combout => \cd|counter~11_combout\);

-- Location: FF_X2_Y16_N31
\cd|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(21));

-- Location: LCCOMB_X1_Y16_N22
\cd|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (\cd|counter\(22) & (!\cd|counter\(23) & (\cd|counter\(21) & \cd|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(22),
	datab => \cd|counter\(23),
	datac => \cd|counter\(21),
	datad => \cd|counter\(20),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y16_N0
\cd|counter~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter~0_combout\ = (\cd|Add0~22_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~22_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~0_combout\);

-- Location: FF_X1_Y16_N1
\cd|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(11));

-- Location: FF_X2_Y17_N27
\cd|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(9));

-- Location: LCCOMB_X1_Y16_N20
\cd|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (!\cd|counter\(8) & (\cd|counter\(11) & (!\cd|counter\(10) & !\cd|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(8),
	datab => \cd|counter\(11),
	datac => \cd|counter\(10),
	datad => \cd|counter\(9),
	combout => \cd|Equal0~0_combout\);

-- Location: FF_X2_Y17_N13
\cd|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(2));

-- Location: LCCOMB_X2_Y17_N2
\cd|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (!\cd|counter\(1) & (!\cd|counter\(3) & (!\cd|counter\(0) & !\cd|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(1),
	datab => \cd|counter\(3),
	datac => \cd|counter\(0),
	datad => \cd|counter\(2),
	combout => \cd|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y17_N6
\cd|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|counter\(7) & (!\cd|counter\(4) & (!\cd|counter\(5) & \cd|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(7),
	datab => \cd|counter\(4),
	datac => \cd|counter\(5),
	datad => \cd|counter\(6),
	combout => \cd|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y16_N28
\cd|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~3_combout\ & (\cd|Equal0~0_combout\ & (\cd|Equal0~2_combout\ & \cd|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~3_combout\,
	datab => \cd|Equal0~0_combout\,
	datac => \cd|Equal0~2_combout\,
	datad => \cd|Equal0~1_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X1_Y16_N24
\cd|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~7_combout\ = (\cd|counter\(24) & (\cd|Equal0~5_combout\ & (\cd|Equal0~6_combout\ & \cd|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(24),
	datab => \cd|Equal0~5_combout\,
	datac => \cd|Equal0~6_combout\,
	datad => \cd|Equal0~4_combout\,
	combout => \cd|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y16_N18
\cd|clk_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|clk_tmp~0_combout\ = \cd|clk_tmp~q\ $ (\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|clk_tmp~q\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|clk_tmp~0_combout\);

-- Location: LCCOMB_X1_Y16_N14
\cd|clk_tmp~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|clk_tmp~feeder_combout\ = \cd|clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clk_tmp~0_combout\,
	combout => \cd|clk_tmp~feeder_combout\);

-- Location: FF_X1_Y16_N15
\cd|clk_tmp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|clk_tmp~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|clk_tmp~q\);

-- Location: CLKCTRL_G0
\cd|clk_tmp~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cd|clk_tmp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cd|clk_tmp~clkctrl_outclk\);

-- Location: IOIBUF_X16_Y31_N8
\OP[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\BypassA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BypassA,
	o => \BypassA~input_o\);

-- Location: IOIBUF_X33_Y27_N8
\Offset[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Offset(0),
	o => \Offset[0]~input_o\);

-- Location: IOIBUF_X31_Y31_N1
\RA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: IOIBUF_X33_Y28_N8
\IE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IE,
	o => \IE~input_o\);

-- Location: IOIBUF_X33_Y24_N8
\INPUT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X26_Y30_N4
\rf|register_arr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~0_combout\ = (\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[0]~input_o\))) # (!\IE~input_o\ & (\the_best_alu_in_kista|SUM\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \the_best_alu_in_kista|SUM\(0),
	datac => \IE~input_o\,
	datad => \INPUT[0]~input_o\,
	combout => \rf|register_arr~0_combout\);

-- Location: IOIBUF_X29_Y31_N8
\WAddr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(0),
	o => \WAddr[0]~input_o\);

-- Location: IOIBUF_X22_Y31_N1
\Write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write,
	o => \Write~input_o\);

-- Location: IOIBUF_X33_Y15_N8
\WAddr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(1),
	o => \WAddr[1]~input_o\);

-- Location: LCCOMB_X25_Y30_N14
\rf|register_arr[3][1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][1]~4_combout\ = ((\WAddr[0]~input_o\ & (\Write~input_o\ & \WAddr[1]~input_o\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \WAddr[0]~input_o\,
	datac => \Write~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[3][1]~4_combout\);

-- Location: FF_X25_Y30_N7
\rf|register_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][0]~q\);

-- Location: LCCOMB_X25_Y30_N22
\rf|register_arr[1][1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][1]~2_combout\ = ((\WAddr[0]~input_o\ & (\Write~input_o\ & !\WAddr[1]~input_o\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \WAddr[0]~input_o\,
	datac => \Write~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[1][1]~2_combout\);

-- Location: FF_X25_Y30_N25
\rf|register_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][0]~q\);

-- Location: LCCOMB_X25_Y30_N12
\rf|register_arr[0][0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][0]~3_combout\ = ((!\WAddr[0]~input_o\ & (\Write~input_o\ & !\WAddr[1]~input_o\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \WAddr[0]~input_o\,
	datac => \Write~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[0][0]~3_combout\);

-- Location: FF_X26_Y30_N23
\rf|register_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][0]~q\);

-- Location: LCCOMB_X25_Y30_N24
\alu_a[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[0]~0_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][0]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][0]~q\,
	datad => \rf|register_arr[0][0]~q\,
	combout => \alu_a[0]~0_combout\);

-- Location: LCCOMB_X25_Y30_N6
\alu_a[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[0]~1_combout\ = (\RA[1]~input_o\ & ((\alu_a[0]~0_combout\ & ((\rf|register_arr[3][0]~q\))) # (!\alu_a[0]~0_combout\ & (\rf|register_arr[2][0]~q\)))) # (!\RA[1]~input_o\ & (((\alu_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[2][0]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[3][0]~q\,
	datad => \alu_a[0]~0_combout\,
	combout => \alu_a[0]~1_combout\);

-- Location: LCCOMB_X25_Y30_N8
\alu_a[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[0]~2_combout\ = (\BypassA~input_o\ & (((\Offset[0]~input_o\)))) # (!\BypassA~input_o\ & (\ReadA~input_o\ & ((\alu_a[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \BypassA~input_o\,
	datac => \Offset[0]~input_o\,
	datad => \alu_a[0]~1_combout\,
	combout => \alu_a[0]~2_combout\);

-- Location: IOIBUF_X26_Y31_N8
\OP[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LCCOMB_X26_Y29_N6
\the_best_alu_in_kista|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~0_combout\ = ((\OP[1]~input_o\ & !\OP[0]~input_o\)) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[2]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \the_best_alu_in_kista|Mux3~0_combout\);

-- Location: LCCOMB_X25_Y29_N14
\the_best_alu_in_kista|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~2_cout\ = CARRY(\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => VCC,
	cout => \the_best_alu_in_kista|Add0~2_cout\);

-- Location: LCCOMB_X25_Y29_N16
\the_best_alu_in_kista|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~3_combout\ = (\the_best_alu_in_kista|Add0~0_combout\ & ((\alu_a[0]~2_combout\ & (\the_best_alu_in_kista|Add0~2_cout\ & VCC)) # (!\alu_a[0]~2_combout\ & (!\the_best_alu_in_kista|Add0~2_cout\)))) # 
-- (!\the_best_alu_in_kista|Add0~0_combout\ & ((\alu_a[0]~2_combout\ & (!\the_best_alu_in_kista|Add0~2_cout\)) # (!\alu_a[0]~2_combout\ & ((\the_best_alu_in_kista|Add0~2_cout\) # (GND)))))
-- \the_best_alu_in_kista|Add0~4\ = CARRY((\the_best_alu_in_kista|Add0~0_combout\ & (!\alu_a[0]~2_combout\ & !\the_best_alu_in_kista|Add0~2_cout\)) # (!\the_best_alu_in_kista|Add0~0_combout\ & ((!\the_best_alu_in_kista|Add0~2_cout\) # 
-- (!\alu_a[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Add0~0_combout\,
	datab => \alu_a[0]~2_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~2_cout\,
	combout => \the_best_alu_in_kista|Add0~3_combout\,
	cout => \the_best_alu_in_kista|Add0~4\);

-- Location: LCCOMB_X26_Y29_N4
\the_best_alu_in_kista|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~2_combout\ = (\the_best_alu_in_kista|Mux3~1_combout\ & (\the_best_alu_in_kista|Mux3~0_combout\ & ((\alu_a[0]~2_combout\)))) # (!\the_best_alu_in_kista|Mux3~1_combout\ & (((\the_best_alu_in_kista|Add0~3_combout\)) # 
-- (!\the_best_alu_in_kista|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux3~1_combout\,
	datab => \the_best_alu_in_kista|Mux3~0_combout\,
	datac => \the_best_alu_in_kista|Add0~3_combout\,
	datad => \alu_a[0]~2_combout\,
	combout => \the_best_alu_in_kista|Mux3~2_combout\);

-- Location: IOIBUF_X24_Y31_N1
\BypassB~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BypassB,
	o => \BypassB~input_o\);

-- Location: IOIBUF_X33_Y28_N1
\ReadB~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadB,
	o => \ReadB~input_o\);

-- Location: LCCOMB_X26_Y29_N16
\alu_b[0]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[0]~38_combout\ = (\BypassB~input_o\ & (((\Offset[0]~input_o\)))) # (!\BypassB~input_o\ & (\alu_b[0]~26_combout\ & ((\ReadB~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[0]~26_combout\,
	datab => \Offset[0]~input_o\,
	datac => \BypassB~input_o\,
	datad => \ReadB~input_o\,
	combout => \alu_b[0]~38_combout\);

-- Location: LCCOMB_X26_Y29_N22
\the_best_alu_in_kista|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~4_combout\ = (\the_best_alu_in_kista|Mux3~3_combout\ & (((\the_best_alu_in_kista|Mux3~2_combout\)))) # (!\the_best_alu_in_kista|Mux3~3_combout\ & (\alu_a[0]~2_combout\ $ (((\alu_b[0]~38_combout\) # 
-- (!\the_best_alu_in_kista|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux3~3_combout\,
	datab => \alu_a[0]~2_combout\,
	datac => \the_best_alu_in_kista|Mux3~2_combout\,
	datad => \alu_b[0]~38_combout\,
	combout => \the_best_alu_in_kista|Mux3~4_combout\);

-- Location: IOIBUF_X16_Y31_N1
\OP[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X26_Y29_N24
\the_best_alu_in_kista|Mux3~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~6_combout\ = (\OP[2]~input_o\ & (((\the_best_alu_in_kista|Mux3~4_combout\)))) # (!\OP[2]~input_o\ & ((\OP[1]~input_o\ & (\the_best_alu_in_kista|Mux3~5_combout\)) # (!\OP[1]~input_o\ & 
-- ((\the_best_alu_in_kista|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux3~5_combout\,
	datab => \OP[2]~input_o\,
	datac => \the_best_alu_in_kista|Mux3~4_combout\,
	datad => \OP[1]~input_o\,
	combout => \the_best_alu_in_kista|Mux3~6_combout\);

-- Location: IOIBUF_X16_Y0_N22
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G19
\RESET~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: IOIBUF_X33_Y22_N1
\OE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OE,
	o => \OE~input_o\);

-- Location: LCCOMB_X27_Y29_N8
alu_en : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_en~combout\ = (\OE~input_o\) # (!\IE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OE~input_o\,
	datad => \IE~input_o\,
	combout => \alu_en~combout\);

-- Location: FF_X26_Y29_N25
\the_best_alu_in_kista|SUM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|Mux3~6_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|SUM\(0));

-- Location: IOIBUF_X33_Y16_N1
\Offset[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Offset(1),
	o => \Offset[1]~input_o\);

-- Location: IOIBUF_X22_Y31_N8
\ReadA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadA,
	o => \ReadA~input_o\);

-- Location: IOIBUF_X33_Y14_N8
\INPUT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X26_Y30_N8
\rf|register_arr~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~7_combout\ = (\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[1]~input_o\)) # (!\IE~input_o\ & ((\the_best_alu_in_kista|SUM\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \IE~input_o\,
	datac => \INPUT[1]~input_o\,
	datad => \the_best_alu_in_kista|SUM\(1),
	combout => \rf|register_arr~7_combout\);

-- Location: FF_X25_Y30_N3
\rf|register_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~7_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][1]~q\);

-- Location: FF_X25_Y30_N17
\rf|register_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~7_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][1]~q\);

-- Location: FF_X26_Y30_N9
\rf|register_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~7_combout\,
	ena => \rf|register_arr[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][1]~q\);

-- Location: LCCOMB_X25_Y30_N4
\rf|register_arr[2][1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][1]~1_combout\ = ((!\WAddr[0]~input_o\ & (\Write~input_o\ & \WAddr[1]~input_o\))) # (!\RESET~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \WAddr[0]~input_o\,
	datac => \Write~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[2][1]~1_combout\);

-- Location: FF_X26_Y30_N29
\rf|register_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~7_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][1]~q\);

-- Location: LCCOMB_X26_Y30_N16
\alu_a[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[1]~9_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\rf|register_arr[2][1]~q\))) # (!\RA[1]~input_o\ & (\rf|register_arr[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][1]~q\,
	datad => \rf|register_arr[2][1]~q\,
	combout => \alu_a[1]~9_combout\);

-- Location: LCCOMB_X25_Y30_N16
\alu_a[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[1]~10_combout\ = (\RA[0]~input_o\ & ((\alu_a[1]~9_combout\ & ((\rf|register_arr[3][1]~q\))) # (!\alu_a[1]~9_combout\ & (\rf|register_arr[1][1]~q\)))) # (!\RA[0]~input_o\ & (((\alu_a[1]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[1][1]~q\,
	datac => \rf|register_arr[3][1]~q\,
	datad => \alu_a[1]~9_combout\,
	combout => \alu_a[1]~10_combout\);

-- Location: LCCOMB_X25_Y30_N30
\alu_a[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[1]~11_combout\ = (\BypassA~input_o\ & (\Offset[1]~input_o\)) # (!\BypassA~input_o\ & (((\ReadA~input_o\ & \alu_a[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BypassA~input_o\,
	datab => \Offset[1]~input_o\,
	datac => \ReadA~input_o\,
	datad => \alu_a[1]~10_combout\,
	combout => \alu_a[1]~11_combout\);

-- Location: IOIBUF_X29_Y31_N1
\RB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(0),
	o => \RB[0]~input_o\);

-- Location: LCCOMB_X26_Y30_N26
\alu_b[1]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[1]~35_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[2][1]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & (\rf|register_arr[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][1]~q\,
	datad => \rf|register_arr[2][1]~q\,
	combout => \alu_b[1]~35_combout\);

-- Location: LCCOMB_X25_Y30_N2
\alu_b[1]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[1]~36_combout\ = (\RB[0]~input_o\ & ((\alu_b[1]~35_combout\ & (\rf|register_arr[3][1]~q\)) # (!\alu_b[1]~35_combout\ & ((\rf|register_arr[1][1]~q\))))) # (!\RB[0]~input_o\ & (((\alu_b[1]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][1]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[1][1]~q\,
	datad => \alu_b[1]~35_combout\,
	combout => \alu_b[1]~36_combout\);

-- Location: LCCOMB_X25_Y30_N10
\alu_b[1]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[1]~40_combout\ = (\BypassB~input_o\ & (((\Offset[1]~input_o\)))) # (!\BypassB~input_o\ & (\ReadB~input_o\ & ((\alu_b[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \Offset[1]~input_o\,
	datac => \alu_b[1]~36_combout\,
	datad => \BypassB~input_o\,
	combout => \alu_b[1]~40_combout\);

-- Location: LCCOMB_X26_Y29_N28
\the_best_alu_in_kista|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~2_combout\ = (\OP[0]~input_o\ & ((\alu_a[1]~11_combout\) # (\alu_b[1]~40_combout\))) # (!\OP[0]~input_o\ & (\alu_a[1]~11_combout\ & \alu_b[1]~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \alu_a[1]~11_combout\,
	datad => \alu_b[1]~40_combout\,
	combout => \the_best_alu_in_kista|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y29_N8
\the_best_alu_in_kista|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~3_combout\ = (\OP[1]~input_o\) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datac => \OP[1]~input_o\,
	combout => \the_best_alu_in_kista|Mux3~3_combout\);

-- Location: LCCOMB_X25_Y29_N24
\the_best_alu_in_kista|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~1_combout\ = (\OP[2]~input_o\ & ((\OP[0]~input_o\) # (\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \the_best_alu_in_kista|Mux3~1_combout\);

-- Location: LCCOMB_X26_Y29_N12
\alu_b[1]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[1]~37_combout\ = (\BypassB~input_o\ & \Offset[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BypassB~input_o\,
	datad => \Offset[1]~input_o\,
	combout => \alu_b[1]~37_combout\);

-- Location: LCCOMB_X25_Y29_N2
\the_best_alu_in_kista|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~7_combout\ = \OP[0]~input_o\ $ (((\alu_b[1]~37_combout\) # ((\alu_b[1]~27_combout\ & \alu_b[1]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~27_combout\,
	datab => \alu_b[1]~37_combout\,
	datac => \OP[0]~input_o\,
	datad => \alu_b[1]~36_combout\,
	combout => \the_best_alu_in_kista|Add0~7_combout\);

-- Location: LCCOMB_X25_Y29_N18
\the_best_alu_in_kista|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~8_combout\ = ((\alu_a[1]~11_combout\ $ (\the_best_alu_in_kista|Add0~7_combout\ $ (!\the_best_alu_in_kista|Add0~4\)))) # (GND)
-- \the_best_alu_in_kista|Add0~9\ = CARRY((\alu_a[1]~11_combout\ & ((\the_best_alu_in_kista|Add0~7_combout\) # (!\the_best_alu_in_kista|Add0~4\))) # (!\alu_a[1]~11_combout\ & (\the_best_alu_in_kista|Add0~7_combout\ & !\the_best_alu_in_kista|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[1]~11_combout\,
	datab => \the_best_alu_in_kista|Add0~7_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~4\,
	combout => \the_best_alu_in_kista|Add0~8_combout\,
	cout => \the_best_alu_in_kista|Add0~9\);

-- Location: LCCOMB_X26_Y29_N10
\the_best_alu_in_kista|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~0_combout\ = (\the_best_alu_in_kista|Mux3~0_combout\ & ((\the_best_alu_in_kista|Mux3~1_combout\ & (\alu_a[1]~11_combout\)) # (!\the_best_alu_in_kista|Mux3~1_combout\ & ((\the_best_alu_in_kista|Add0~8_combout\))))) # 
-- (!\the_best_alu_in_kista|Mux3~0_combout\ & (!\the_best_alu_in_kista|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux3~0_combout\,
	datab => \the_best_alu_in_kista|Mux3~1_combout\,
	datac => \alu_a[1]~11_combout\,
	datad => \the_best_alu_in_kista|Add0~8_combout\,
	combout => \the_best_alu_in_kista|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y29_N0
\the_best_alu_in_kista|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~1_combout\ = (\the_best_alu_in_kista|Mux3~3_combout\ & (((\the_best_alu_in_kista|Mux2~0_combout\)))) # (!\the_best_alu_in_kista|Mux3~3_combout\ & (\alu_a[1]~11_combout\ $ (((\alu_b[1]~40_combout\) # 
-- (!\the_best_alu_in_kista|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~40_combout\,
	datab => \the_best_alu_in_kista|Mux3~3_combout\,
	datac => \alu_a[1]~11_combout\,
	datad => \the_best_alu_in_kista|Mux2~0_combout\,
	combout => \the_best_alu_in_kista|Mux2~1_combout\);

-- Location: LCCOMB_X26_Y29_N26
\the_best_alu_in_kista|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~3_combout\ = (\OP[1]~input_o\ & ((\OP[2]~input_o\ & ((\the_best_alu_in_kista|Mux2~1_combout\))) # (!\OP[2]~input_o\ & (\the_best_alu_in_kista|Mux2~2_combout\)))) # (!\OP[1]~input_o\ & 
-- (((\the_best_alu_in_kista|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \the_best_alu_in_kista|Mux2~2_combout\,
	datad => \the_best_alu_in_kista|Mux2~1_combout\,
	combout => \the_best_alu_in_kista|Mux2~3_combout\);

-- Location: FF_X26_Y29_N27
\the_best_alu_in_kista|SUM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|Mux2~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|SUM\(1));

-- Location: IOIBUF_X33_Y12_N8
\INPUT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: LCCOMB_X26_Y30_N2
\rf|register_arr~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~6_combout\ = (\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[2]~input_o\))) # (!\IE~input_o\ & (\the_best_alu_in_kista|SUM\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \IE~input_o\,
	datac => \the_best_alu_in_kista|SUM\(2),
	datad => \INPUT[2]~input_o\,
	combout => \rf|register_arr~6_combout\);

-- Location: FF_X25_Y30_N29
\rf|register_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~6_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][2]~q\);

-- Location: FF_X24_Y30_N21
\rf|register_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~6_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][2]~q\);

-- Location: FF_X25_Y30_N19
\rf|register_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~6_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][2]~q\);

-- Location: LCCOMB_X24_Y30_N10
\alu_a[2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[2]~6_combout\ = (\RA[0]~input_o\ & (((\RA[1]~input_o\) # (\rf|register_arr[1][2]~q\)))) # (!\RA[0]~input_o\ & (\rf|register_arr[0][2]~q\ & (!\RA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[0][2]~q\,
	datac => \RA[1]~input_o\,
	datad => \rf|register_arr[1][2]~q\,
	combout => \alu_a[2]~6_combout\);

-- Location: LCCOMB_X24_Y30_N12
\alu_a[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[2]~7_combout\ = (\RA[1]~input_o\ & ((\alu_a[2]~6_combout\ & ((\rf|register_arr[3][2]~q\))) # (!\alu_a[2]~6_combout\ & (\rf|register_arr[2][2]~q\)))) # (!\RA[1]~input_o\ & (((\alu_a[2]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[2][2]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[3][2]~q\,
	datad => \alu_a[2]~6_combout\,
	combout => \alu_a[2]~7_combout\);

-- Location: LCCOMB_X24_Y30_N26
\alu_a[2]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[2]~8_combout\ = (\BypassA~input_o\ & (\Offset[2]~input_o\)) # (!\BypassA~input_o\ & (((\ReadA~input_o\ & \alu_a[2]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Offset[2]~input_o\,
	datab => \BypassA~input_o\,
	datac => \ReadA~input_o\,
	datad => \alu_a[2]~7_combout\,
	combout => \alu_a[2]~8_combout\);

-- Location: LCCOMB_X26_Y29_N20
\the_best_alu_in_kista|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~2_combout\ = (\alu_b[2]~39_combout\ & ((\OP[0]~input_o\) # (\alu_a[2]~8_combout\))) # (!\alu_b[2]~39_combout\ & (\OP[0]~input_o\ & \alu_a[2]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[2]~39_combout\,
	datab => \OP[0]~input_o\,
	datad => \alu_a[2]~8_combout\,
	combout => \the_best_alu_in_kista|Mux1~2_combout\);

-- Location: IOIBUF_X33_Y16_N8
\Offset[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Offset(2),
	o => \Offset[2]~input_o\);

-- Location: LCCOMB_X24_Y30_N6
\rf|register_arr[2][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][2]~feeder_combout\ = \rf|register_arr~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~6_combout\,
	combout => \rf|register_arr[2][2]~feeder_combout\);

-- Location: FF_X24_Y30_N7
\rf|register_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[2][2]~feeder_combout\,
	ena => \rf|register_arr[2][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][2]~q\);

-- Location: IOIBUF_X26_Y31_N1
\RB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LCCOMB_X25_Y30_N18
\alu_b[2]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[2]~32_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][2]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & ((\rf|register_arr[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[1][2]~q\,
	datad => \rf|register_arr[0][2]~q\,
	combout => \alu_b[2]~32_combout\);

-- Location: LCCOMB_X25_Y30_N28
\alu_b[2]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[2]~33_combout\ = (\RB[1]~input_o\ & ((\alu_b[2]~32_combout\ & ((\rf|register_arr[3][2]~q\))) # (!\alu_b[2]~32_combout\ & (\rf|register_arr[2][2]~q\)))) # (!\RB[1]~input_o\ & (((\alu_b[2]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][2]~q\,
	datac => \rf|register_arr[3][2]~q\,
	datad => \alu_b[2]~32_combout\,
	combout => \alu_b[2]~33_combout\);

-- Location: LCCOMB_X25_Y30_N0
\alu_b[2]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[2]~39_combout\ = (\BypassB~input_o\ & (((\Offset[2]~input_o\)))) # (!\BypassB~input_o\ & (\ReadB~input_o\ & ((\alu_b[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \Offset[2]~input_o\,
	datac => \BypassB~input_o\,
	datad => \alu_b[2]~33_combout\,
	combout => \alu_b[2]~39_combout\);

-- Location: LCCOMB_X24_Y30_N20
\alu_b[2]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[2]~34_combout\ = (\BypassB~input_o\ & \Offset[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BypassB~input_o\,
	datad => \Offset[2]~input_o\,
	combout => \alu_b[2]~34_combout\);

-- Location: LCCOMB_X25_Y29_N4
\the_best_alu_in_kista|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~6_combout\ = \OP[0]~input_o\ $ (((\alu_b[2]~34_combout\) # ((\alu_b[1]~27_combout\ & \alu_b[2]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~27_combout\,
	datab => \alu_b[2]~34_combout\,
	datac => \OP[0]~input_o\,
	datad => \alu_b[2]~33_combout\,
	combout => \the_best_alu_in_kista|Add0~6_combout\);

-- Location: LCCOMB_X25_Y29_N20
\the_best_alu_in_kista|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~10_combout\ = (\alu_a[2]~8_combout\ & ((\the_best_alu_in_kista|Add0~6_combout\ & (\the_best_alu_in_kista|Add0~9\ & VCC)) # (!\the_best_alu_in_kista|Add0~6_combout\ & (!\the_best_alu_in_kista|Add0~9\)))) # (!\alu_a[2]~8_combout\ 
-- & ((\the_best_alu_in_kista|Add0~6_combout\ & (!\the_best_alu_in_kista|Add0~9\)) # (!\the_best_alu_in_kista|Add0~6_combout\ & ((\the_best_alu_in_kista|Add0~9\) # (GND)))))
-- \the_best_alu_in_kista|Add0~11\ = CARRY((\alu_a[2]~8_combout\ & (!\the_best_alu_in_kista|Add0~6_combout\ & !\the_best_alu_in_kista|Add0~9\)) # (!\alu_a[2]~8_combout\ & ((!\the_best_alu_in_kista|Add0~9\) # (!\the_best_alu_in_kista|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[2]~8_combout\,
	datab => \the_best_alu_in_kista|Add0~6_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~9\,
	combout => \the_best_alu_in_kista|Add0~10_combout\,
	cout => \the_best_alu_in_kista|Add0~11\);

-- Location: LCCOMB_X25_Y29_N10
\the_best_alu_in_kista|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~0_combout\ = (\the_best_alu_in_kista|Mux3~0_combout\ & ((\the_best_alu_in_kista|Mux3~1_combout\ & (\alu_a[2]~8_combout\)) # (!\the_best_alu_in_kista|Mux3~1_combout\ & ((\the_best_alu_in_kista|Add0~10_combout\))))) # 
-- (!\the_best_alu_in_kista|Mux3~0_combout\ & (!\the_best_alu_in_kista|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux3~0_combout\,
	datab => \the_best_alu_in_kista|Mux3~1_combout\,
	datac => \alu_a[2]~8_combout\,
	datad => \the_best_alu_in_kista|Add0~10_combout\,
	combout => \the_best_alu_in_kista|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y29_N2
\the_best_alu_in_kista|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~1_combout\ = (\the_best_alu_in_kista|Mux3~3_combout\ & (((\the_best_alu_in_kista|Mux1~0_combout\)))) # (!\the_best_alu_in_kista|Mux3~3_combout\ & (\alu_a[2]~8_combout\ $ (((\alu_b[2]~39_combout\) # 
-- (!\the_best_alu_in_kista|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[2]~8_combout\,
	datab => \the_best_alu_in_kista|Mux3~3_combout\,
	datac => \alu_b[2]~39_combout\,
	datad => \the_best_alu_in_kista|Mux1~0_combout\,
	combout => \the_best_alu_in_kista|Mux1~1_combout\);

-- Location: LCCOMB_X26_Y29_N30
\the_best_alu_in_kista|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~3_combout\ = (\OP[1]~input_o\ & ((\OP[2]~input_o\ & ((\the_best_alu_in_kista|Mux1~1_combout\))) # (!\OP[2]~input_o\ & (\the_best_alu_in_kista|Mux1~2_combout\)))) # (!\OP[1]~input_o\ & 
-- (((\the_best_alu_in_kista|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[2]~input_o\,
	datac => \the_best_alu_in_kista|Mux1~2_combout\,
	datad => \the_best_alu_in_kista|Mux1~1_combout\,
	combout => \the_best_alu_in_kista|Mux1~3_combout\);

-- Location: FF_X26_Y29_N31
\the_best_alu_in_kista|SUM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|Mux1~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|SUM\(2));

-- Location: IOIBUF_X33_Y27_N1
\Offset[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Offset(3),
	o => \Offset[3]~input_o\);

-- Location: LCCOMB_X25_Y30_N26
\rf|register_arr~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~5_combout\ = (\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[3]~input_o\)) # (!\IE~input_o\ & ((\the_best_alu_in_kista|SUM\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[3]~input_o\,
	datab => \the_best_alu_in_kista|SUM\(3),
	datac => \IE~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~5_combout\);

-- Location: FF_X25_Y30_N21
\rf|register_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~5_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][3]~q\);

-- Location: FF_X25_Y30_N27
\rf|register_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~5_combout\,
	ena => \rf|register_arr[1][1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][3]~q\);

-- Location: FF_X26_Y30_N19
\rf|register_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~5_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][3]~q\);

-- Location: FF_X26_Y30_N25
\rf|register_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~5_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][3]~q\);

-- Location: LCCOMB_X26_Y30_N18
\alu_b[3]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[3]~28_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[2][3]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & (\rf|register_arr[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][3]~q\,
	datad => \rf|register_arr[2][3]~q\,
	combout => \alu_b[3]~28_combout\);

-- Location: LCCOMB_X26_Y30_N0
\alu_b[3]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[3]~29_combout\ = (\RB[0]~input_o\ & ((\alu_b[3]~28_combout\ & (\rf|register_arr[3][3]~q\)) # (!\alu_b[3]~28_combout\ & ((\rf|register_arr[1][3]~q\))))) # (!\RB[0]~input_o\ & (((\alu_b[3]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[3][3]~q\,
	datac => \rf|register_arr[1][3]~q\,
	datad => \alu_b[3]~28_combout\,
	combout => \alu_b[3]~29_combout\);

-- Location: LCCOMB_X26_Y30_N14
\alu_b[3]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[3]~30_combout\ = (\BypassB~input_o\ & (\Offset[3]~input_o\)) # (!\BypassB~input_o\ & (((\ReadB~input_o\ & \alu_b[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BypassB~input_o\,
	datab => \Offset[3]~input_o\,
	datac => \ReadB~input_o\,
	datad => \alu_b[3]~29_combout\,
	combout => \alu_b[3]~30_combout\);

-- Location: LCCOMB_X26_Y30_N24
\alu_a[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[3]~3_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[2][3]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][3]~q\,
	datad => \rf|register_arr[0][3]~q\,
	combout => \alu_a[3]~3_combout\);

-- Location: IOIBUF_X24_Y31_N8
\RA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: LCCOMB_X26_Y30_N12
\alu_a[3]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[3]~4_combout\ = (\alu_a[3]~3_combout\ & (((\rf|register_arr[3][3]~q\) # (!\RA[0]~input_o\)))) # (!\alu_a[3]~3_combout\ & (\rf|register_arr[1][3]~q\ & ((\RA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[1][3]~q\,
	datab => \rf|register_arr[3][3]~q\,
	datac => \alu_a[3]~3_combout\,
	datad => \RA[0]~input_o\,
	combout => \alu_a[3]~4_combout\);

-- Location: LCCOMB_X26_Y30_N10
\alu_a[3]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_a[3]~5_combout\ = (\BypassA~input_o\ & (\Offset[3]~input_o\)) # (!\BypassA~input_o\ & (((\ReadA~input_o\ & \alu_a[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BypassA~input_o\,
	datab => \Offset[3]~input_o\,
	datac => \ReadA~input_o\,
	datad => \alu_a[3]~4_combout\,
	combout => \alu_a[3]~5_combout\);

-- Location: LCCOMB_X25_Y30_N20
\the_best_alu_in_kista|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~2_combout\ = (\OP[0]~input_o\ & ((\alu_b[3]~30_combout\) # (\alu_a[3]~5_combout\))) # (!\OP[0]~input_o\ & (\alu_b[3]~30_combout\ & \alu_a[3]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \alu_b[3]~30_combout\,
	datad => \alu_a[3]~5_combout\,
	combout => \the_best_alu_in_kista|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y30_N28
\alu_b[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \alu_b[3]~31_combout\ = (\BypassB~input_o\ & \Offset[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BypassB~input_o\,
	datad => \Offset[3]~input_o\,
	combout => \alu_b[3]~31_combout\);

-- Location: LCCOMB_X26_Y30_N30
\the_best_alu_in_kista|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~5_combout\ = \OP[0]~input_o\ $ (((\alu_b[3]~31_combout\) # ((\alu_b[1]~27_combout\ & \alu_b[3]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[1]~27_combout\,
	datab => \alu_b[3]~31_combout\,
	datac => \OP[0]~input_o\,
	datad => \alu_b[3]~29_combout\,
	combout => \the_best_alu_in_kista|Add0~5_combout\);

-- Location: LCCOMB_X25_Y29_N22
\the_best_alu_in_kista|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~12_combout\ = \alu_a[3]~5_combout\ $ (\the_best_alu_in_kista|Add0~11\ $ (!\the_best_alu_in_kista|Add0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[3]~5_combout\,
	datad => \the_best_alu_in_kista|Add0~5_combout\,
	cin => \the_best_alu_in_kista|Add0~11\,
	combout => \the_best_alu_in_kista|Add0~12_combout\);

-- Location: LCCOMB_X25_Y29_N12
\the_best_alu_in_kista|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~0_combout\ = (\the_best_alu_in_kista|Mux3~1_combout\ & (\alu_a[3]~5_combout\ & ((\the_best_alu_in_kista|Mux3~0_combout\)))) # (!\the_best_alu_in_kista|Mux3~1_combout\ & (((\the_best_alu_in_kista|Add0~12_combout\) # 
-- (!\the_best_alu_in_kista|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[3]~5_combout\,
	datab => \the_best_alu_in_kista|Mux3~1_combout\,
	datac => \the_best_alu_in_kista|Add0~12_combout\,
	datad => \the_best_alu_in_kista|Mux3~0_combout\,
	combout => \the_best_alu_in_kista|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y29_N0
\the_best_alu_in_kista|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~1_combout\ = (\the_best_alu_in_kista|Mux3~3_combout\ & (((\the_best_alu_in_kista|Mux0~0_combout\)))) # (!\the_best_alu_in_kista|Mux3~3_combout\ & (\alu_a[3]~5_combout\ $ (((\alu_b[3]~30_combout\) # 
-- (!\the_best_alu_in_kista|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[3]~5_combout\,
	datab => \the_best_alu_in_kista|Mux3~3_combout\,
	datac => \alu_b[3]~30_combout\,
	datad => \the_best_alu_in_kista|Mux0~0_combout\,
	combout => \the_best_alu_in_kista|Mux0~1_combout\);

-- Location: LCCOMB_X25_Y29_N8
\the_best_alu_in_kista|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~3_combout\ = (\OP[1]~input_o\ & ((\OP[2]~input_o\ & ((\the_best_alu_in_kista|Mux0~1_combout\))) # (!\OP[2]~input_o\ & (\the_best_alu_in_kista|Mux0~2_combout\)))) # (!\OP[1]~input_o\ & 
-- (((\the_best_alu_in_kista|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \the_best_alu_in_kista|Mux0~2_combout\,
	datac => \OP[2]~input_o\,
	datad => \the_best_alu_in_kista|Mux0~1_combout\,
	combout => \the_best_alu_in_kista|Mux0~3_combout\);

-- Location: FF_X25_Y29_N25
\the_best_alu_in_kista|SUM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \the_best_alu_in_kista|Mux0~3_combout\,
	clrn => \RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|SUM\(3));

-- Location: LCCOMB_X26_Y29_N8
\the_best_alu_in_kista|z_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|z_tmp~0_combout\ = (!\the_best_alu_in_kista|Mux1~3_combout\ & (!\the_best_alu_in_kista|Mux3~6_combout\ & (!\the_best_alu_in_kista|Mux2~3_combout\ & !\the_best_alu_in_kista|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux1~3_combout\,
	datab => \the_best_alu_in_kista|Mux3~6_combout\,
	datac => \the_best_alu_in_kista|Mux2~3_combout\,
	datad => \the_best_alu_in_kista|Mux0~3_combout\,
	combout => \the_best_alu_in_kista|z_tmp~0_combout\);

-- Location: LCCOMB_X26_Y28_N0
\the_best_alu_in_kista|Z_Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Z_Flag~0_combout\ = (\RESET~input_o\ & ((\OE~input_o\) # (!\IE~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OE~input_o\,
	datac => \RESET~input_o\,
	datad => \IE~input_o\,
	combout => \the_best_alu_in_kista|Z_Flag~0_combout\);

-- Location: FF_X26_Y29_N9
\the_best_alu_in_kista|Z_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|z_tmp~0_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|Z_Flag~q\);

-- Location: FF_X25_Y29_N9
\the_best_alu_in_kista|N_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|Mux0~3_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|N_Flag~q\);

-- Location: LCCOMB_X26_Y29_N14
\the_best_alu_in_kista|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Equal0~0_combout\ = (!\OP[1]~input_o\ & (!\OP[2]~input_o\ & \OP[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[2]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \the_best_alu_in_kista|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y29_N28
\the_best_alu_in_kista|sub_overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|sub_overflow~0_combout\ = (\alu_a[3]~5_combout\ & (!\alu_b[3]~30_combout\ & !\the_best_alu_in_kista|Mux0~3_combout\)) # (!\alu_a[3]~5_combout\ & (\alu_b[3]~30_combout\ & \the_best_alu_in_kista|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_a[3]~5_combout\,
	datab => \alu_b[3]~30_combout\,
	datac => \the_best_alu_in_kista|Mux0~3_combout\,
	combout => \the_best_alu_in_kista|sub_overflow~0_combout\);

-- Location: LCCOMB_X25_Y29_N6
\the_best_alu_in_kista|sub_overflow\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|sub_overflow~combout\ = (\the_best_alu_in_kista|Equal0~0_combout\ & ((\the_best_alu_in_kista|sub_overflow~0_combout\))) # (!\the_best_alu_in_kista|Equal0~0_combout\ & (\the_best_alu_in_kista|sub_overflow~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|sub_overflow~combout\,
	datac => \the_best_alu_in_kista|Equal0~0_combout\,
	datad => \the_best_alu_in_kista|sub_overflow~0_combout\,
	combout => \the_best_alu_in_kista|sub_overflow~combout\);

-- Location: LCCOMB_X25_Y29_N30
\the_best_alu_in_kista|o_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|o_tmp~0_combout\ = (\the_best_alu_in_kista|sub_overflow~combout\) # ((\alu_b[3]~30_combout\ & (\alu_a[3]~5_combout\ & !\the_best_alu_in_kista|Mux0~3_combout\)) # (!\alu_b[3]~30_combout\ & (!\alu_a[3]~5_combout\ & 
-- \the_best_alu_in_kista|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_b[3]~30_combout\,
	datab => \alu_a[3]~5_combout\,
	datac => \the_best_alu_in_kista|Mux0~3_combout\,
	datad => \the_best_alu_in_kista|sub_overflow~combout\,
	combout => \the_best_alu_in_kista|o_tmp~0_combout\);

-- Location: FF_X25_Y29_N31
\the_best_alu_in_kista|O_Flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \the_best_alu_in_kista|o_tmp~0_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \the_best_alu_in_kista|O_Flag~q\);

ww_CLK1HZ_po <= \CLK1HZ_po~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_Z_Flag <= \Z_Flag~output_o\;

ww_N_Flag <= \N_Flag~output_o\;

ww_O_Flag <= \O_Flag~output_o\;
END structure;


