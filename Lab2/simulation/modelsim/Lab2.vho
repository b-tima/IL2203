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

-- DATE "09/27/2021 09:56:46"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
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
	OE : IN std_logic;
	CLK1HZ_po : OUT std_logic;
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
	);
END Datapath;

-- Design Ports Information
-- OUTPUT[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTPUT[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK1HZ_po	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z_Flag	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N_Flag	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- O_Flag	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OE	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ReadB	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ReadA	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IE	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WAddr[1]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Write	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WAddr[0]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_OE : std_logic;
SIGNAL ww_CLK1HZ_po : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL \cd|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RESET~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|Add0~4_combout\ : std_logic;
SIGNAL \cd|Add0~8_combout\ : std_logic;
SIGNAL \cd|Add0~28_combout\ : std_logic;
SIGNAL \cd|Add0~30_combout\ : std_logic;
SIGNAL \cd|Add0~34_combout\ : std_logic;
SIGNAL \cd|Add0~47\ : std_logic;
SIGNAL \cd|Add0~48_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \rf|register_arr[2][1]~regout\ : std_logic;
SIGNAL \rf|register_arr[1][1]~regout\ : std_logic;
SIGNAL \rf|register_arr[0][1]~regout\ : std_logic;
SIGNAL \rf|QA[1]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[3][1]~regout\ : std_logic;
SIGNAL \rf|QA[1]~4_combout\ : std_logic;
SIGNAL \rf|QA[1]~5_combout\ : std_logic;
SIGNAL \rf|QB[1]~3_combout\ : std_logic;
SIGNAL \rf|QB[1]~4_combout\ : std_logic;
SIGNAL \cd|counter~5_combout\ : std_logic;
SIGNAL \cd|counter~9_combout\ : std_logic;
SIGNAL \rf_input[1]~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~10_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \cd|Add0~0_combout\ : std_logic;
SIGNAL \cd|counter~2_combout\ : std_logic;
SIGNAL \cd|Add0~1\ : std_logic;
SIGNAL \cd|Add0~3\ : std_logic;
SIGNAL \cd|Add0~5\ : std_logic;
SIGNAL \cd|Add0~6_combout\ : std_logic;
SIGNAL \cd|Add0~7\ : std_logic;
SIGNAL \cd|Add0~9\ : std_logic;
SIGNAL \cd|Add0~10_combout\ : std_logic;
SIGNAL \cd|Add0~11\ : std_logic;
SIGNAL \cd|Add0~12_combout\ : std_logic;
SIGNAL \cd|counter~1_combout\ : std_logic;
SIGNAL \cd|Add0~13\ : std_logic;
SIGNAL \cd|Add0~14_combout\ : std_logic;
SIGNAL \cd|Add0~15\ : std_logic;
SIGNAL \cd|Add0~17\ : std_logic;
SIGNAL \cd|Add0~18_combout\ : std_logic;
SIGNAL \cd|Add0~19\ : std_logic;
SIGNAL \cd|Add0~20_combout\ : std_logic;
SIGNAL \cd|Add0~21\ : std_logic;
SIGNAL \cd|Add0~22_combout\ : std_logic;
SIGNAL \cd|counter~0_combout\ : std_logic;
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
SIGNAL \cd|Add0~35\ : std_logic;
SIGNAL \cd|Add0~36_combout\ : std_logic;
SIGNAL \cd|counter~7_combout\ : std_logic;
SIGNAL \cd|Add0~37\ : std_logic;
SIGNAL \cd|Add0~38_combout\ : std_logic;
SIGNAL \cd|counter~8_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|Add0~39\ : std_logic;
SIGNAL \cd|Add0~40_combout\ : std_logic;
SIGNAL \cd|counter~10_combout\ : std_logic;
SIGNAL \cd|Add0~41\ : std_logic;
SIGNAL \cd|Add0~42_combout\ : std_logic;
SIGNAL \cd|counter~11_combout\ : std_logic;
SIGNAL \cd|Add0~43\ : std_logic;
SIGNAL \cd|Add0~44_combout\ : std_logic;
SIGNAL \cd|counter~12_combout\ : std_logic;
SIGNAL \cd|Add0~45\ : std_logic;
SIGNAL \cd|Add0~46_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|Add0~2_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|Add0~16_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \cd|clk_tmp~0_combout\ : std_logic;
SIGNAL \cd|clk_tmp~regout\ : std_logic;
SIGNAL \cd|clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \IE~combout\ : std_logic;
SIGNAL \rf_input[0]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[3][0]~feeder_combout\ : std_logic;
SIGNAL \RESET~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \RESET~clkctrl_outclk\ : std_logic;
SIGNAL \Write~combout\ : std_logic;
SIGNAL \rf|Decoder0~3_combout\ : std_logic;
SIGNAL \rf|register_arr[3][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~1_combout\ : std_logic;
SIGNAL \rf|register_arr[1][0]~regout\ : std_logic;
SIGNAL \rf|Decoder0~2_combout\ : std_logic;
SIGNAL \rf|register_arr[0][0]~regout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~feeder_combout\ : std_logic;
SIGNAL \rf|Decoder0~0_combout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~regout\ : std_logic;
SIGNAL \rf|QA[0]~6_combout\ : std_logic;
SIGNAL \rf|QA[0]~7_combout\ : std_logic;
SIGNAL \rf|QB[0]~5_combout\ : std_logic;
SIGNAL \rf|QB[0]~6_combout\ : std_logic;
SIGNAL \rf|QB[0]~11_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~7_combout\ : std_logic;
SIGNAL \ReadA~combout\ : std_logic;
SIGNAL \rf|QA[0]~8_combout\ : std_logic;
SIGNAL \ReadB~combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~2_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~4_cout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~4_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~6_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux3~6_combout\ : std_logic;
SIGNAL \OE~combout\ : std_logic;
SIGNAL \alu_en~combout\ : std_logic;
SIGNAL \rf|QB[1]~10_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~4_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~6\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~7_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~7_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~8_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux2~9_combout\ : std_logic;
SIGNAL \rf_input[2]~0_combout\ : std_logic;
SIGNAL \rf|register_arr[2][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][2]~regout\ : std_logic;
SIGNAL \rf|register_arr[3][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][2]~regout\ : std_logic;
SIGNAL \rf|register_arr[1][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][2]~regout\ : std_logic;
SIGNAL \rf|register_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][2]~regout\ : std_logic;
SIGNAL \rf|QA[2]~0_combout\ : std_logic;
SIGNAL \rf|QA[2]~1_combout\ : std_logic;
SIGNAL \rf|QA[2]~2_combout\ : std_logic;
SIGNAL \rf|QB[2]~0_combout\ : std_logic;
SIGNAL \rf|QB[2]~1_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~7_combout\ : std_logic;
SIGNAL \rf|QB[2]~2_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~8\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~9_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~4_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux1~6_combout\ : std_logic;
SIGNAL \rf_input[3]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[3][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][3]~regout\ : std_logic;
SIGNAL \rf|register_arr[1][3]~regout\ : std_logic;
SIGNAL \rf|register_arr[0][3]~regout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~regout\ : std_logic;
SIGNAL \rf|QB[3]~7_combout\ : std_logic;
SIGNAL \rf|QB[3]~8_combout\ : std_logic;
SIGNAL \rf|QA[3]~9_combout\ : std_logic;
SIGNAL \rf|QA[3]~10_combout\ : std_logic;
SIGNAL \rf|QA[3]~11_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~7_combout\ : std_logic;
SIGNAL \rf|QB[3]~9_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~11_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~10\ : std_logic;
SIGNAL \the_best_alu_in_kista|Add0~12_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~4_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~5_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Mux0~6_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|z_tmp~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Z_Flag~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Z_Flag~regout\ : std_logic;
SIGNAL \the_best_alu_in_kista|N_Flag~regout\ : std_logic;
SIGNAL \the_best_alu_in_kista|Equal0~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|sub_overflow~4_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|sub_overflow~combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|o_tmp~0_combout\ : std_logic;
SIGNAL \the_best_alu_in_kista|O_Flag~regout\ : std_logic;
SIGNAL \INPUT~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \WAddr~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \OP~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RB~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \RA~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \the_best_alu_in_kista|SUM\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|counter\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_RESET~clkctrl_outclk\ : std_logic;

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
ww_OE <= OE;
CLK1HZ_po <= ww_CLK1HZ_po;
OUTPUT <= ww_OUTPUT;
Z_Flag <= ww_Z_Flag;
N_Flag <= ww_N_Flag;
O_Flag <= ww_O_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cd|clk_tmp~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \cd|clk_tmp~regout\);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\RESET~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RESET~clk_delay_ctrl_clkout\);
\ALT_INV_RESET~clkctrl_outclk\ <= NOT \RESET~clkctrl_outclk\;

-- Location: LCCOMB_X28_Y34_N12
\cd|Add0~4\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y34_N16
\cd|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~8_combout\ = (\cd|counter\(4) & (\cd|Add0~7\ $ (GND))) # (!\cd|counter\(4) & (!\cd|Add0~7\ & VCC))
-- \cd|Add0~9\ = CARRY((\cd|counter\(4) & !\cd|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(4),
	datad => VCC,
	cin => \cd|Add0~7\,
	combout => \cd|Add0~8_combout\,
	cout => \cd|Add0~9\);

-- Location: LCCOMB_X28_Y33_N4
\cd|Add0~28\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y33_N6
\cd|Add0~30\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y33_N10
\cd|Add0~34\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y33_N22
\cd|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~46_combout\ = (\cd|counter\(23) & (!\cd|Add0~45\)) # (!\cd|counter\(23) & ((\cd|Add0~45\) # (GND)))
-- \cd|Add0~47\ = CARRY((!\cd|Add0~45\) # (!\cd|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(23),
	datad => VCC,
	cin => \cd|Add0~45\,
	combout => \cd|Add0~46_combout\,
	cout => \cd|Add0~47\);

-- Location: LCCOMB_X28_Y33_N24
\cd|Add0~48\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y34_N17
\cd|counter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(4));

-- Location: LCFF_X28_Y34_N13
\cd|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(2));

-- Location: LCFF_X29_Y33_N17
\cd|counter[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(14));

-- Location: LCFF_X28_Y33_N7
\cd|counter[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(15));

-- Location: LCCOMB_X29_Y33_N10
\cd|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (\cd|counter\(14) & (\cd|counter\(13) & (!\cd|counter\(15) & \cd|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(14),
	datab => \cd|counter\(13),
	datac => \cd|counter\(15),
	datad => \cd|counter\(12),
	combout => \cd|Equal0~3_combout\);

-- Location: LCFF_X28_Y33_N11
\cd|counter[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(17));

-- Location: LCFF_X28_Y33_N31
\cd|counter[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(24));

-- Location: LCFF_X3_Y12_N9
\rf|register_arr[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[1]~1_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[2][1]~regout\);

-- Location: LCFF_X2_Y12_N3
\rf|register_arr[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[1]~1_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[1][1]~regout\);

-- Location: LCFF_X2_Y12_N29
\rf|register_arr[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[1]~1_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[0][1]~regout\);

-- Location: LCCOMB_X2_Y12_N28
\rf|QA[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[1]~3_combout\ = (\RA~combout\(0) & ((\RA~combout\(1)) # ((\rf|register_arr[1][1]~regout\)))) # (!\RA~combout\(0) & (!\RA~combout\(1) & (\rf|register_arr[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \rf|register_arr[0][1]~regout\,
	datad => \rf|register_arr[1][1]~regout\,
	combout => \rf|QA[1]~3_combout\);

-- Location: LCFF_X3_Y12_N25
\rf|register_arr[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[1]~1_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[3][1]~regout\);

-- Location: LCCOMB_X3_Y12_N22
\rf|QA[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[1]~4_combout\ = (\RA~combout\(1) & ((\rf|QA[1]~3_combout\ & ((\rf|register_arr[3][1]~regout\))) # (!\rf|QA[1]~3_combout\ & (\rf|register_arr[2][1]~regout\)))) # (!\RA~combout\(1) & (((\rf|QA[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(1),
	datab => \rf|register_arr[2][1]~regout\,
	datac => \rf|register_arr[3][1]~regout\,
	datad => \rf|QA[1]~3_combout\,
	combout => \rf|QA[1]~4_combout\);

-- Location: LCCOMB_X3_Y12_N14
\rf|QA[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[1]~5_combout\ = (\ReadA~combout\ & \rf|QA[1]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadA~combout\,
	datad => \rf|QA[1]~4_combout\,
	combout => \rf|QA[1]~5_combout\);

-- Location: LCCOMB_X2_Y12_N2
\rf|QB[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[1]~3_combout\ = (\RB~combout\(0) & ((\RB~combout\(1)) # ((\rf|register_arr[1][1]~regout\)))) # (!\RB~combout\(0) & (!\RB~combout\(1) & ((\rf|register_arr[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \RB~combout\(1),
	datac => \rf|register_arr[1][1]~regout\,
	datad => \rf|register_arr[0][1]~regout\,
	combout => \rf|QB[1]~3_combout\);

-- Location: LCCOMB_X3_Y12_N20
\rf|QB[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[1]~4_combout\ = (\RB~combout\(1) & ((\rf|QB[1]~3_combout\ & ((\rf|register_arr[3][1]~regout\))) # (!\rf|QB[1]~3_combout\ & (\rf|register_arr[2][1]~regout\)))) # (!\RB~combout\(1) & (((\rf|QB[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \rf|register_arr[2][1]~regout\,
	datac => \rf|register_arr[3][1]~regout\,
	datad => \rf|QB[1]~3_combout\,
	combout => \rf|QB[1]~4_combout\);

-- Location: LCCOMB_X29_Y33_N16
\cd|counter~5\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y33_N30
\cd|counter~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~9_combout\ = (\cd|Add0~48_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~48_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~9_combout\);

-- Location: LCCOMB_X5_Y12_N22
\rf_input[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf_input[1]~1_combout\ = (\IE~combout\ & ((\INPUT~combout\(1)))) # (!\IE~combout\ & (\the_best_alu_in_kista|SUM\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|SUM\(1),
	datac => \IE~combout\,
	datad => \INPUT~combout\(1),
	combout => \rf_input[1]~1_combout\);

-- Location: LCCOMB_X3_Y12_N26
\the_best_alu_in_kista|Mux2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~10_combout\ = (\OP~combout\(0) & ((\rf|QB[1]~10_combout\) # ((\ReadA~combout\ & \rf|QA[1]~4_combout\)))) # (!\OP~combout\(0) & (\ReadA~combout\ & (\rf|QB[1]~10_combout\ & \rf|QA[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(0),
	datab => \ReadA~combout\,
	datac => \rf|QB[1]~10_combout\,
	datad => \rf|QA[1]~4_combout\,
	combout => \the_best_alu_in_kista|Mux2~10_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RA(0),
	combout => \RA~combout\(0));

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WAddr(0),
	combout => \WAddr~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(1),
	combout => \INPUT~combout\(1));

-- Location: CLKCTRL_G2
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y34_N8
\cd|Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y34_N4
\cd|counter~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~2_combout\ = (\cd|Add0~0_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~0_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~2_combout\);

-- Location: LCFF_X28_Y34_N5
\cd|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(0));

-- Location: LCCOMB_X28_Y34_N10
\cd|Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y34_N14
\cd|Add0~6\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y34_N15
\cd|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(3));

-- Location: LCCOMB_X28_Y34_N18
\cd|Add0~10\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y34_N19
\cd|counter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(5));

-- Location: LCCOMB_X28_Y34_N20
\cd|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X28_Y34_N0
\cd|counter~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~1_combout\ = (\cd|Add0~12_combout\ & !\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|Add0~12_combout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|counter~1_combout\);

-- Location: LCFF_X28_Y34_N1
\cd|counter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(6));

-- Location: LCCOMB_X28_Y34_N22
\cd|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~14_combout\ = (\cd|counter\(7) & (!\cd|Add0~13\)) # (!\cd|counter\(7) & ((\cd|Add0~13\) # (GND)))
-- \cd|Add0~15\ = CARRY((!\cd|Add0~13\) # (!\cd|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(7),
	datad => VCC,
	cin => \cd|Add0~13\,
	combout => \cd|Add0~14_combout\,
	cout => \cd|Add0~15\);

-- Location: LCFF_X28_Y34_N23
\cd|counter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(7));

-- Location: LCCOMB_X28_Y34_N24
\cd|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~16_combout\ = (\cd|counter\(8) & (\cd|Add0~15\ $ (GND))) # (!\cd|counter\(8) & (!\cd|Add0~15\ & VCC))
-- \cd|Add0~17\ = CARRY((\cd|counter\(8) & !\cd|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(8),
	datad => VCC,
	cin => \cd|Add0~15\,
	combout => \cd|Add0~16_combout\,
	cout => \cd|Add0~17\);

-- Location: LCCOMB_X28_Y34_N26
\cd|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~18_combout\ = (\cd|counter\(9) & (!\cd|Add0~17\)) # (!\cd|counter\(9) & ((\cd|Add0~17\) # (GND)))
-- \cd|Add0~19\ = CARRY((!\cd|Add0~17\) # (!\cd|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(9),
	datad => VCC,
	cin => \cd|Add0~17\,
	combout => \cd|Add0~18_combout\,
	cout => \cd|Add0~19\);

-- Location: LCFF_X28_Y34_N27
\cd|counter[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(9));

-- Location: LCCOMB_X28_Y34_N28
\cd|Add0~20\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y34_N29
\cd|counter[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(10));

-- Location: LCCOMB_X28_Y34_N30
\cd|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~22_combout\ = (\cd|counter\(11) & (!\cd|Add0~21\)) # (!\cd|counter\(11) & ((\cd|Add0~21\) # (GND)))
-- \cd|Add0~23\ = CARRY((!\cd|Add0~21\) # (!\cd|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(11),
	datad => VCC,
	cin => \cd|Add0~21\,
	combout => \cd|Add0~22_combout\,
	cout => \cd|Add0~23\);

-- Location: LCCOMB_X29_Y34_N20
\cd|counter~0\ : cycloneii_lcell_comb
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

-- Location: LCFF_X29_Y34_N21
\cd|counter[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(11));

-- Location: LCCOMB_X28_Y33_N0
\cd|Add0~24\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X29_Y33_N12
\cd|counter~3\ : cycloneii_lcell_comb
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

-- Location: LCFF_X29_Y33_N13
\cd|counter[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(12));

-- Location: LCCOMB_X28_Y33_N2
\cd|Add0~26\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X29_Y33_N14
\cd|counter~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~4_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~26_combout\,
	combout => \cd|counter~4_combout\);

-- Location: LCFF_X29_Y33_N15
\cd|counter[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(13));

-- Location: LCCOMB_X28_Y33_N8
\cd|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~32_combout\ = (\cd|counter\(16) & (\cd|Add0~31\ $ (GND))) # (!\cd|counter\(16) & (!\cd|Add0~31\ & VCC))
-- \cd|Add0~33\ = CARRY((\cd|counter\(16) & !\cd|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(16),
	datad => VCC,
	cin => \cd|Add0~31\,
	combout => \cd|Add0~32_combout\,
	cout => \cd|Add0~33\);

-- Location: LCCOMB_X29_Y33_N30
\cd|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~6_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~32_combout\,
	combout => \cd|counter~6_combout\);

-- Location: LCFF_X29_Y33_N31
\cd|counter[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(16));

-- Location: LCCOMB_X28_Y33_N12
\cd|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~36_combout\ = (\cd|counter\(18) & (\cd|Add0~35\ $ (GND))) # (!\cd|counter\(18) & (!\cd|Add0~35\ & VCC))
-- \cd|Add0~37\ = CARRY((\cd|counter\(18) & !\cd|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(18),
	datad => VCC,
	cin => \cd|Add0~35\,
	combout => \cd|Add0~36_combout\,
	cout => \cd|Add0~37\);

-- Location: LCCOMB_X29_Y33_N24
\cd|counter~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~7_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~36_combout\,
	combout => \cd|counter~7_combout\);

-- Location: LCFF_X29_Y33_N25
\cd|counter[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(18));

-- Location: LCCOMB_X28_Y33_N14
\cd|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~38_combout\ = (\cd|counter\(19) & (!\cd|Add0~37\)) # (!\cd|counter\(19) & ((\cd|Add0~37\) # (GND)))
-- \cd|Add0~39\ = CARRY((!\cd|Add0~37\) # (!\cd|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(19),
	datad => VCC,
	cin => \cd|Add0~37\,
	combout => \cd|Add0~38_combout\,
	cout => \cd|Add0~39\);

-- Location: LCCOMB_X29_Y33_N22
\cd|counter~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~8_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~38_combout\,
	combout => \cd|counter~8_combout\);

-- Location: LCFF_X29_Y33_N23
\cd|counter[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(19));

-- Location: LCCOMB_X29_Y33_N8
\cd|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (!\cd|counter\(17) & (\cd|counter\(19) & (\cd|counter\(18) & \cd|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(17),
	datab => \cd|counter\(19),
	datac => \cd|counter\(18),
	datad => \cd|counter\(16),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y33_N16
\cd|Add0~40\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X29_Y33_N18
\cd|counter~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~10_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~40_combout\,
	combout => \cd|counter~10_combout\);

-- Location: LCFF_X29_Y33_N19
\cd|counter[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(20));

-- Location: LCCOMB_X28_Y33_N18
\cd|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~42_combout\ = (\cd|counter\(21) & (!\cd|Add0~41\)) # (!\cd|counter\(21) & ((\cd|Add0~41\) # (GND)))
-- \cd|Add0~43\ = CARRY((!\cd|Add0~41\) # (!\cd|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(21),
	datad => VCC,
	cin => \cd|Add0~41\,
	combout => \cd|Add0~42_combout\,
	cout => \cd|Add0~43\);

-- Location: LCCOMB_X28_Y33_N28
\cd|counter~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|counter~11_combout\ = (!\cd|Equal0~7_combout\ & \cd|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~7_combout\,
	datad => \cd|Add0~42_combout\,
	combout => \cd|counter~11_combout\);

-- Location: LCFF_X28_Y33_N29
\cd|counter[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(21));

-- Location: LCCOMB_X28_Y33_N20
\cd|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Add0~44_combout\ = (\cd|counter\(22) & (\cd|Add0~43\ $ (GND))) # (!\cd|counter\(22) & (!\cd|Add0~43\ & VCC))
-- \cd|Add0~45\ = CARRY((\cd|counter\(22) & !\cd|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(22),
	datad => VCC,
	cin => \cd|Add0~43\,
	combout => \cd|Add0~44_combout\,
	cout => \cd|Add0~45\);

-- Location: LCCOMB_X28_Y33_N26
\cd|counter~12\ : cycloneii_lcell_comb
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

-- Location: LCFF_X28_Y33_N27
\cd|counter[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|counter~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(22));

-- Location: LCFF_X28_Y33_N23
\cd|counter[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(23));

-- Location: LCCOMB_X29_Y33_N20
\cd|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (\cd|counter\(22) & (\cd|counter\(21) & (\cd|counter\(20) & !\cd|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(22),
	datab => \cd|counter\(21),
	datac => \cd|counter\(20),
	datad => \cd|counter\(23),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X28_Y34_N6
\cd|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|counter\(4) & (!\cd|counter\(5) & (!\cd|counter\(7) & \cd|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(4),
	datab => \cd|counter\(5),
	datac => \cd|counter\(7),
	datad => \cd|counter\(6),
	combout => \cd|Equal0~1_combout\);

-- Location: LCFF_X28_Y34_N11
\cd|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(1));

-- Location: LCCOMB_X28_Y34_N2
\cd|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (!\cd|counter\(2) & (!\cd|counter\(0) & (!\cd|counter\(3) & !\cd|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(2),
	datab => \cd|counter\(0),
	datac => \cd|counter\(3),
	datad => \cd|counter\(1),
	combout => \cd|Equal0~2_combout\);

-- Location: LCFF_X28_Y34_N25
\cd|counter[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|counter\(8));

-- Location: LCCOMB_X29_Y34_N10
\cd|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (\cd|counter\(11) & (!\cd|counter\(8) & (!\cd|counter\(10) & !\cd|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(11),
	datab => \cd|counter\(8),
	datac => \cd|counter\(10),
	datad => \cd|counter\(9),
	combout => \cd|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y33_N28
\cd|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~3_combout\ & (\cd|Equal0~1_combout\ & (\cd|Equal0~2_combout\ & \cd|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~3_combout\,
	datab => \cd|Equal0~1_combout\,
	datac => \cd|Equal0~2_combout\,
	datad => \cd|Equal0~0_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y33_N6
\cd|Equal0~7\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X30_Y33_N0
\cd|clk_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \cd|clk_tmp~0_combout\ = \cd|clk_tmp~regout\ $ (\cd|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|clk_tmp~regout\,
	datad => \cd|Equal0~7_combout\,
	combout => \cd|clk_tmp~0_combout\);

-- Location: LCFF_X30_Y33_N1
\cd|clk_tmp\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \cd|clk_tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cd|clk_tmp~regout\);

-- Location: CLKCTRL_G11
\cd|clk_tmp~clkctrl\ : cycloneii_clkctrl
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

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(2),
	combout => \OP~combout\(2));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IE,
	combout => \IE~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(0),
	combout => \INPUT~combout\(0));

-- Location: LCCOMB_X5_Y12_N8
\rf_input[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf_input[0]~2_combout\ = (\IE~combout\ & ((\INPUT~combout\(0)))) # (!\IE~combout\ & (\the_best_alu_in_kista|SUM\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|SUM\(0),
	datac => \IE~combout\,
	datad => \INPUT~combout\(0),
	combout => \rf_input[0]~2_combout\);

-- Location: LCCOMB_X1_Y12_N4
\rf|register_arr[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][0]~feeder_combout\ = \rf_input[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[0]~2_combout\,
	combout => \rf|register_arr[3][0]~feeder_combout\);

-- Location: CLKDELAYCTRL_G7
\RESET~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \RESET~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \RESET~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G7
\RESET~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~clkctrl_outclk\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Write~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Write,
	combout => \Write~combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WAddr[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WAddr(1),
	combout => \WAddr~combout\(1));

-- Location: LCCOMB_X3_Y12_N28
\rf|Decoder0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|Decoder0~3_combout\ = (\WAddr~combout\(0) & (\Write~combout\ & \WAddr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \Write~combout\,
	datac => \WAddr~combout\(1),
	combout => \rf|Decoder0~3_combout\);

-- Location: LCFF_X1_Y12_N5
\rf|register_arr[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[3][0]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[3][0]~regout\);

-- Location: LCCOMB_X3_Y12_N24
\rf|Decoder0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|Decoder0~1_combout\ = (\WAddr~combout\(0) & (!\WAddr~combout\(1) & \Write~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datad => \Write~combout\,
	combout => \rf|Decoder0~1_combout\);

-- Location: LCFF_X2_Y12_N15
\rf|register_arr[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[0]~2_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[1][0]~regout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RA(1),
	combout => \RA~combout\(1));

-- Location: LCCOMB_X3_Y12_N2
\rf|Decoder0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|Decoder0~2_combout\ = (!\WAddr~combout\(0) & (\Write~combout\ & !\WAddr~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \Write~combout\,
	datac => \WAddr~combout\(1),
	combout => \rf|Decoder0~2_combout\);

-- Location: LCFF_X2_Y12_N5
\rf|register_arr[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[0]~2_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[0][0]~regout\);

-- Location: LCCOMB_X1_Y12_N14
\rf|register_arr[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][0]~feeder_combout\ = \rf_input[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[0]~2_combout\,
	combout => \rf|register_arr[2][0]~feeder_combout\);

-- Location: LCCOMB_X3_Y12_N8
\rf|Decoder0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|Decoder0~0_combout\ = (!\WAddr~combout\(0) & (\WAddr~combout\(1) & \Write~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr~combout\(0),
	datab => \WAddr~combout\(1),
	datad => \Write~combout\,
	combout => \rf|Decoder0~0_combout\);

-- Location: LCFF_X1_Y12_N15
\rf|register_arr[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[2][0]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[2][0]~regout\);

-- Location: LCCOMB_X2_Y12_N6
\rf|QA[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[0]~6_combout\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((\rf|register_arr[2][0]~regout\))) # (!\RA~combout\(1) & (\rf|register_arr[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \rf|register_arr[0][0]~regout\,
	datad => \rf|register_arr[2][0]~regout\,
	combout => \rf|QA[0]~6_combout\);

-- Location: LCCOMB_X2_Y12_N14
\rf|QA[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[0]~7_combout\ = (\RA~combout\(0) & ((\rf|QA[0]~6_combout\ & (\rf|register_arr[3][0]~regout\)) # (!\rf|QA[0]~6_combout\ & ((\rf|register_arr[1][0]~regout\))))) # (!\RA~combout\(0) & (((\rf|QA[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \rf|register_arr[3][0]~regout\,
	datac => \rf|register_arr[1][0]~regout\,
	datad => \rf|QA[0]~6_combout\,
	combout => \rf|QA[0]~7_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(0),
	combout => \OP~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RB(0),
	combout => \RB~combout\(0));

-- Location: LCCOMB_X1_Y12_N22
\rf|QB[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[0]~5_combout\ = (\RB~combout\(1) & ((\RB~combout\(0)) # ((\rf|register_arr[2][0]~regout\)))) # (!\RB~combout\(1) & (!\RB~combout\(0) & ((\rf|register_arr[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \RB~combout\(0),
	datac => \rf|register_arr[2][0]~regout\,
	datad => \rf|register_arr[0][0]~regout\,
	combout => \rf|QB[0]~5_combout\);

-- Location: LCCOMB_X1_Y12_N28
\rf|QB[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[0]~6_combout\ = (\RB~combout\(0) & ((\rf|QB[0]~5_combout\ & (\rf|register_arr[3][0]~regout\)) # (!\rf|QB[0]~5_combout\ & ((\rf|register_arr[1][0]~regout\))))) # (!\RB~combout\(0) & (((\rf|QB[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \rf|register_arr[3][0]~regout\,
	datac => \rf|register_arr[1][0]~regout\,
	datad => \rf|QB[0]~5_combout\,
	combout => \rf|QB[0]~6_combout\);

-- Location: LCCOMB_X2_Y12_N4
\rf|QB[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[0]~11_combout\ = (\ReadB~combout\ & \rf|QB[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~combout\,
	datad => \rf|QB[0]~6_combout\,
	combout => \rf|QB[0]~11_combout\);

-- Location: LCCOMB_X2_Y12_N10
\the_best_alu_in_kista|Mux3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~7_combout\ = (\OP~combout\(0) & ((\rf|QB[0]~11_combout\) # ((\ReadA~combout\ & \rf|QA[0]~7_combout\)))) # (!\OP~combout\(0) & (\ReadA~combout\ & (\rf|QA[0]~7_combout\ & \rf|QB[0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~combout\,
	datab => \rf|QA[0]~7_combout\,
	datac => \OP~combout\(0),
	datad => \rf|QB[0]~11_combout\,
	combout => \the_best_alu_in_kista|Mux3~7_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ReadA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ReadA,
	combout => \ReadA~combout\);

-- Location: LCCOMB_X3_Y12_N12
\rf|QA[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[0]~8_combout\ = (\ReadA~combout\ & \rf|QA[0]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadA~combout\,
	datad => \rf|QA[0]~7_combout\,
	combout => \rf|QA[0]~8_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ReadB~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ReadB,
	combout => \ReadB~combout\);

-- Location: LCCOMB_X4_Y12_N14
\the_best_alu_in_kista|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~2_combout\ = \OP~combout\(0) $ (((\ReadB~combout\ & \rf|QB[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ReadB~combout\,
	datac => \rf|QB[0]~6_combout\,
	datad => \OP~combout\(0),
	combout => \the_best_alu_in_kista|Add0~2_combout\);

-- Location: LCCOMB_X4_Y12_N18
\the_best_alu_in_kista|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~4_cout\ = CARRY(\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(0),
	datad => VCC,
	cout => \the_best_alu_in_kista|Add0~4_cout\);

-- Location: LCCOMB_X4_Y12_N20
\the_best_alu_in_kista|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~5_combout\ = (\rf|QA[0]~8_combout\ & ((\the_best_alu_in_kista|Add0~2_combout\ & (\the_best_alu_in_kista|Add0~4_cout\ & VCC)) # (!\the_best_alu_in_kista|Add0~2_combout\ & (!\the_best_alu_in_kista|Add0~4_cout\)))) # 
-- (!\rf|QA[0]~8_combout\ & ((\the_best_alu_in_kista|Add0~2_combout\ & (!\the_best_alu_in_kista|Add0~4_cout\)) # (!\the_best_alu_in_kista|Add0~2_combout\ & ((\the_best_alu_in_kista|Add0~4_cout\) # (GND)))))
-- \the_best_alu_in_kista|Add0~6\ = CARRY((\rf|QA[0]~8_combout\ & (!\the_best_alu_in_kista|Add0~2_combout\ & !\the_best_alu_in_kista|Add0~4_cout\)) # (!\rf|QA[0]~8_combout\ & ((!\the_best_alu_in_kista|Add0~4_cout\) # 
-- (!\the_best_alu_in_kista|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[0]~8_combout\,
	datab => \the_best_alu_in_kista|Add0~2_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~4_cout\,
	combout => \the_best_alu_in_kista|Add0~5_combout\,
	cout => \the_best_alu_in_kista|Add0~6\);

-- Location: LCCOMB_X5_Y12_N28
\the_best_alu_in_kista|Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~5_combout\ = (\OP~combout\(2) & ((\OP~combout\(1)) # (\OP~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datac => \OP~combout\(0),
	datad => \OP~combout\(2),
	combout => \the_best_alu_in_kista|Mux2~5_combout\);

-- Location: LCCOMB_X5_Y12_N24
\the_best_alu_in_kista|Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~4_combout\ = (\the_best_alu_in_kista|Mux2~4_combout\ & ((\the_best_alu_in_kista|Mux2~5_combout\ & (\rf|QA[0]~8_combout\)) # (!\the_best_alu_in_kista|Mux2~5_combout\ & ((\the_best_alu_in_kista|Add0~5_combout\))))) # 
-- (!\the_best_alu_in_kista|Mux2~4_combout\ & (((!\the_best_alu_in_kista|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~4_combout\,
	datab => \rf|QA[0]~8_combout\,
	datac => \the_best_alu_in_kista|Add0~5_combout\,
	datad => \the_best_alu_in_kista|Mux2~5_combout\,
	combout => \the_best_alu_in_kista|Mux3~4_combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OP(1),
	combout => \OP~combout\(1));

-- Location: LCCOMB_X5_Y12_N30
\the_best_alu_in_kista|Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~6_combout\ = (\OP~combout\(1)) # (!\OP~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP~combout\(1),
	datad => \OP~combout\(2),
	combout => \the_best_alu_in_kista|Mux2~6_combout\);

-- Location: LCCOMB_X5_Y12_N18
\the_best_alu_in_kista|Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~5_combout\ = (\the_best_alu_in_kista|Mux2~6_combout\ & (((\the_best_alu_in_kista|Mux3~4_combout\)))) # (!\the_best_alu_in_kista|Mux2~6_combout\ & (\rf|QA[0]~8_combout\ $ (((\rf|QB[0]~11_combout\) # 
-- (!\the_best_alu_in_kista|Mux3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[0]~11_combout\,
	datab => \rf|QA[0]~8_combout\,
	datac => \the_best_alu_in_kista|Mux3~4_combout\,
	datad => \the_best_alu_in_kista|Mux2~6_combout\,
	combout => \the_best_alu_in_kista|Mux3~5_combout\);

-- Location: LCCOMB_X5_Y12_N2
\the_best_alu_in_kista|Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux3~6_combout\ = (\OP~combout\(1) & ((\OP~combout\(2) & ((\the_best_alu_in_kista|Mux3~5_combout\))) # (!\OP~combout\(2) & (\the_best_alu_in_kista|Mux3~7_combout\)))) # (!\OP~combout\(1) & 
-- (((\the_best_alu_in_kista|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datab => \OP~combout\(2),
	datac => \the_best_alu_in_kista|Mux3~7_combout\,
	datad => \the_best_alu_in_kista|Mux3~5_combout\,
	combout => \the_best_alu_in_kista|Mux3~6_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OE~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OE,
	combout => \OE~combout\);

-- Location: LCCOMB_X5_Y12_N6
alu_en : cycloneii_lcell_comb
-- Equation(s):
-- \alu_en~combout\ = (\OE~combout\) # (!\IE~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IE~combout\,
	datac => \OE~combout\,
	combout => \alu_en~combout\);

-- Location: LCFF_X5_Y12_N3
\the_best_alu_in_kista|SUM[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \the_best_alu_in_kista|Mux3~6_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|SUM\(0));

-- Location: LCCOMB_X3_Y12_N4
\rf|QB[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[1]~10_combout\ = (\rf|QB[1]~4_combout\ & \ReadB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[1]~4_combout\,
	datac => \ReadB~combout\,
	combout => \rf|QB[1]~10_combout\);

-- Location: LCCOMB_X5_Y12_N26
\the_best_alu_in_kista|Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~4_combout\ = ((\OP~combout\(1) & !\OP~combout\(0))) # (!\OP~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datab => \OP~combout\(0),
	datad => \OP~combout\(2),
	combout => \the_best_alu_in_kista|Mux2~4_combout\);

-- Location: LCCOMB_X4_Y12_N4
\the_best_alu_in_kista|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~1_combout\ = \OP~combout\(0) $ (((\rf|QB[1]~4_combout\ & \ReadB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[1]~4_combout\,
	datab => \ReadB~combout\,
	datad => \OP~combout\(0),
	combout => \the_best_alu_in_kista|Add0~1_combout\);

-- Location: LCCOMB_X4_Y12_N22
\the_best_alu_in_kista|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~7_combout\ = ((\rf|QA[1]~5_combout\ $ (\the_best_alu_in_kista|Add0~1_combout\ $ (!\the_best_alu_in_kista|Add0~6\)))) # (GND)
-- \the_best_alu_in_kista|Add0~8\ = CARRY((\rf|QA[1]~5_combout\ & ((\the_best_alu_in_kista|Add0~1_combout\) # (!\the_best_alu_in_kista|Add0~6\))) # (!\rf|QA[1]~5_combout\ & (\the_best_alu_in_kista|Add0~1_combout\ & !\the_best_alu_in_kista|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[1]~5_combout\,
	datab => \the_best_alu_in_kista|Add0~1_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~6\,
	combout => \the_best_alu_in_kista|Add0~7_combout\,
	cout => \the_best_alu_in_kista|Add0~8\);

-- Location: LCCOMB_X4_Y12_N2
\the_best_alu_in_kista|Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~7_combout\ = (\the_best_alu_in_kista|Mux2~5_combout\ & (\rf|QA[1]~5_combout\ & (\the_best_alu_in_kista|Mux2~4_combout\))) # (!\the_best_alu_in_kista|Mux2~5_combout\ & (((\the_best_alu_in_kista|Add0~7_combout\) # 
-- (!\the_best_alu_in_kista|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[1]~5_combout\,
	datab => \the_best_alu_in_kista|Mux2~5_combout\,
	datac => \the_best_alu_in_kista|Mux2~4_combout\,
	datad => \the_best_alu_in_kista|Add0~7_combout\,
	combout => \the_best_alu_in_kista|Mux2~7_combout\);

-- Location: LCCOMB_X4_Y12_N16
\the_best_alu_in_kista|Mux2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~8_combout\ = (\the_best_alu_in_kista|Mux2~6_combout\ & (((\the_best_alu_in_kista|Mux2~7_combout\)))) # (!\the_best_alu_in_kista|Mux2~6_combout\ & (\rf|QA[1]~5_combout\ $ (((\rf|QB[1]~10_combout\) # 
-- (!\the_best_alu_in_kista|Mux2~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[1]~5_combout\,
	datab => \the_best_alu_in_kista|Mux2~6_combout\,
	datac => \rf|QB[1]~10_combout\,
	datad => \the_best_alu_in_kista|Mux2~7_combout\,
	combout => \the_best_alu_in_kista|Mux2~8_combout\);

-- Location: LCCOMB_X5_Y12_N20
\the_best_alu_in_kista|Mux2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux2~9_combout\ = (\OP~combout\(2) & (((\the_best_alu_in_kista|Mux2~8_combout\)))) # (!\OP~combout\(2) & ((\OP~combout\(1) & (\the_best_alu_in_kista|Mux2~10_combout\)) # (!\OP~combout\(1) & 
-- ((\the_best_alu_in_kista|Mux2~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~10_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \the_best_alu_in_kista|Mux2~8_combout\,
	combout => \the_best_alu_in_kista|Mux2~9_combout\);

-- Location: LCFF_X5_Y12_N21
\the_best_alu_in_kista|SUM[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \the_best_alu_in_kista|Mux2~9_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|SUM\(1));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(2),
	combout => \INPUT~combout\(2));

-- Location: LCCOMB_X5_Y12_N4
\rf_input[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf_input[2]~0_combout\ = (\IE~combout\ & ((\INPUT~combout\(2)))) # (!\IE~combout\ & (\the_best_alu_in_kista|SUM\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|SUM\(2),
	datac => \IE~combout\,
	datad => \INPUT~combout\(2),
	combout => \rf_input[2]~0_combout\);

-- Location: LCCOMB_X1_Y12_N24
\rf|register_arr[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][2]~feeder_combout\ = \rf_input[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[2]~0_combout\,
	combout => \rf|register_arr[2][2]~feeder_combout\);

-- Location: LCFF_X1_Y12_N25
\rf|register_arr[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[2][2]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[2][2]~regout\);

-- Location: LCCOMB_X1_Y12_N30
\rf|register_arr[3][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][2]~feeder_combout\ = \rf_input[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[2]~0_combout\,
	combout => \rf|register_arr[3][2]~feeder_combout\);

-- Location: LCFF_X1_Y12_N31
\rf|register_arr[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[3][2]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[3][2]~regout\);

-- Location: LCCOMB_X2_Y12_N20
\rf|register_arr[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][2]~feeder_combout\ = \rf_input[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[2]~0_combout\,
	combout => \rf|register_arr[1][2]~feeder_combout\);

-- Location: LCFF_X2_Y12_N21
\rf|register_arr[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[1][2]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[1][2]~regout\);

-- Location: LCCOMB_X2_Y12_N22
\rf|register_arr[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][2]~feeder_combout\ = \rf_input[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[2]~0_combout\,
	combout => \rf|register_arr[0][2]~feeder_combout\);

-- Location: LCFF_X2_Y12_N23
\rf|register_arr[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[0][2]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[0][2]~regout\);

-- Location: LCCOMB_X2_Y12_N26
\rf|QA[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[2]~0_combout\ = (\RA~combout\(0) & ((\RA~combout\(1)) # ((\rf|register_arr[1][2]~regout\)))) # (!\RA~combout\(0) & (!\RA~combout\(1) & ((\rf|register_arr[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \rf|register_arr[1][2]~regout\,
	datad => \rf|register_arr[0][2]~regout\,
	combout => \rf|QA[2]~0_combout\);

-- Location: LCCOMB_X2_Y12_N12
\rf|QA[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[2]~1_combout\ = (\RA~combout\(1) & ((\rf|QA[2]~0_combout\ & ((\rf|register_arr[3][2]~regout\))) # (!\rf|QA[2]~0_combout\ & (\rf|register_arr[2][2]~regout\)))) # (!\RA~combout\(1) & (((\rf|QA[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(1),
	datab => \rf|register_arr[2][2]~regout\,
	datac => \rf|register_arr[3][2]~regout\,
	datad => \rf|QA[2]~0_combout\,
	combout => \rf|QA[2]~1_combout\);

-- Location: LCCOMB_X3_Y12_N10
\rf|QA[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[2]~2_combout\ = (\ReadA~combout\ & \rf|QA[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadA~combout\,
	datad => \rf|QA[2]~1_combout\,
	combout => \rf|QA[2]~2_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RB(1),
	combout => \RB~combout\(1));

-- Location: LCCOMB_X2_Y12_N24
\rf|QB[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[2]~0_combout\ = (\RB~combout\(0) & ((\RB~combout\(1)) # ((\rf|register_arr[1][2]~regout\)))) # (!\RB~combout\(0) & (!\RB~combout\(1) & ((\rf|register_arr[0][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \RB~combout\(1),
	datac => \rf|register_arr[1][2]~regout\,
	datad => \rf|register_arr[0][2]~regout\,
	combout => \rf|QB[2]~0_combout\);

-- Location: LCCOMB_X1_Y12_N8
\rf|QB[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[2]~1_combout\ = (\RB~combout\(1) & ((\rf|QB[2]~0_combout\ & (\rf|register_arr[3][2]~regout\)) # (!\rf|QB[2]~0_combout\ & ((\rf|register_arr[2][2]~regout\))))) # (!\RB~combout\(1) & (((\rf|QB[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(1),
	datab => \rf|register_arr[3][2]~regout\,
	datac => \rf|register_arr[2][2]~regout\,
	datad => \rf|QB[2]~0_combout\,
	combout => \rf|QB[2]~1_combout\);

-- Location: LCCOMB_X2_Y12_N0
\the_best_alu_in_kista|Mux1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~7_combout\ = (\rf|QA[2]~2_combout\ & ((\OP~combout\(0)) # ((\ReadB~combout\ & \rf|QB[2]~1_combout\)))) # (!\rf|QA[2]~2_combout\ & (\ReadB~combout\ & (\OP~combout\(0) & \rf|QB[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~combout\,
	datab => \rf|QA[2]~2_combout\,
	datac => \OP~combout\(0),
	datad => \rf|QB[2]~1_combout\,
	combout => \the_best_alu_in_kista|Mux1~7_combout\);

-- Location: LCCOMB_X1_Y12_N26
\rf|QB[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[2]~2_combout\ = (\rf|QB[2]~1_combout\ & \ReadB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|QB[2]~1_combout\,
	datac => \ReadB~combout\,
	combout => \rf|QB[2]~2_combout\);

-- Location: LCCOMB_X1_Y12_N20
\the_best_alu_in_kista|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~0_combout\ = \OP~combout\(0) $ (((\ReadB~combout\ & \rf|QB[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~combout\,
	datac => \rf|QB[2]~1_combout\,
	datad => \OP~combout\(0),
	combout => \the_best_alu_in_kista|Add0~0_combout\);

-- Location: LCCOMB_X4_Y12_N24
\the_best_alu_in_kista|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~9_combout\ = (\rf|QA[2]~2_combout\ & ((\the_best_alu_in_kista|Add0~0_combout\ & (\the_best_alu_in_kista|Add0~8\ & VCC)) # (!\the_best_alu_in_kista|Add0~0_combout\ & (!\the_best_alu_in_kista|Add0~8\)))) # (!\rf|QA[2]~2_combout\ 
-- & ((\the_best_alu_in_kista|Add0~0_combout\ & (!\the_best_alu_in_kista|Add0~8\)) # (!\the_best_alu_in_kista|Add0~0_combout\ & ((\the_best_alu_in_kista|Add0~8\) # (GND)))))
-- \the_best_alu_in_kista|Add0~10\ = CARRY((\rf|QA[2]~2_combout\ & (!\the_best_alu_in_kista|Add0~0_combout\ & !\the_best_alu_in_kista|Add0~8\)) # (!\rf|QA[2]~2_combout\ & ((!\the_best_alu_in_kista|Add0~8\) # (!\the_best_alu_in_kista|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[2]~2_combout\,
	datab => \the_best_alu_in_kista|Add0~0_combout\,
	datad => VCC,
	cin => \the_best_alu_in_kista|Add0~8\,
	combout => \the_best_alu_in_kista|Add0~9_combout\,
	cout => \the_best_alu_in_kista|Add0~10\);

-- Location: LCCOMB_X4_Y12_N8
\the_best_alu_in_kista|Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~4_combout\ = (\the_best_alu_in_kista|Mux2~4_combout\ & ((\the_best_alu_in_kista|Mux2~5_combout\ & (\rf|QA[2]~2_combout\)) # (!\the_best_alu_in_kista|Mux2~5_combout\ & ((\the_best_alu_in_kista|Add0~9_combout\))))) # 
-- (!\the_best_alu_in_kista|Mux2~4_combout\ & (((!\the_best_alu_in_kista|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~4_combout\,
	datab => \rf|QA[2]~2_combout\,
	datac => \the_best_alu_in_kista|Add0~9_combout\,
	datad => \the_best_alu_in_kista|Mux2~5_combout\,
	combout => \the_best_alu_in_kista|Mux1~4_combout\);

-- Location: LCCOMB_X5_Y12_N12
\the_best_alu_in_kista|Mux1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~5_combout\ = (\the_best_alu_in_kista|Mux2~6_combout\ & (((\the_best_alu_in_kista|Mux1~4_combout\)))) # (!\the_best_alu_in_kista|Mux2~6_combout\ & (\rf|QA[2]~2_combout\ $ (((\rf|QB[2]~2_combout\) # 
-- (!\the_best_alu_in_kista|Mux1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[2]~2_combout\,
	datab => \the_best_alu_in_kista|Mux2~6_combout\,
	datac => \rf|QB[2]~2_combout\,
	datad => \the_best_alu_in_kista|Mux1~4_combout\,
	combout => \the_best_alu_in_kista|Mux1~5_combout\);

-- Location: LCCOMB_X5_Y12_N14
\the_best_alu_in_kista|Mux1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux1~6_combout\ = (\OP~combout\(1) & ((\OP~combout\(2) & ((\the_best_alu_in_kista|Mux1~5_combout\))) # (!\OP~combout\(2) & (\the_best_alu_in_kista|Mux1~7_combout\)))) # (!\OP~combout\(1) & 
-- (((\the_best_alu_in_kista|Mux1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datab => \OP~combout\(2),
	datac => \the_best_alu_in_kista|Mux1~7_combout\,
	datad => \the_best_alu_in_kista|Mux1~5_combout\,
	combout => \the_best_alu_in_kista|Mux1~6_combout\);

-- Location: LCFF_X5_Y12_N27
\the_best_alu_in_kista|SUM[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \the_best_alu_in_kista|Mux1~6_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|SUM\(2));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INPUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_INPUT(3),
	combout => \INPUT~combout\(3));

-- Location: LCCOMB_X5_Y12_N10
\rf_input[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf_input[3]~3_combout\ = (\IE~combout\ & ((\INPUT~combout\(3)))) # (!\IE~combout\ & (\the_best_alu_in_kista|SUM\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|SUM\(3),
	datac => \IE~combout\,
	datad => \INPUT~combout\(3),
	combout => \rf_input[3]~3_combout\);

-- Location: LCCOMB_X1_Y12_N16
\rf|register_arr[3][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][3]~feeder_combout\ = \rf_input[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[3]~3_combout\,
	combout => \rf|register_arr[3][3]~feeder_combout\);

-- Location: LCFF_X1_Y12_N17
\rf|register_arr[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[3][3]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[3][3]~regout\);

-- Location: LCFF_X2_Y12_N9
\rf|register_arr[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[3]~3_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[1][3]~regout\);

-- Location: LCFF_X2_Y12_N31
\rf|register_arr[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \rf_input[3]~3_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \rf|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[0][3]~regout\);

-- Location: LCCOMB_X1_Y12_N18
\rf|register_arr[2][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][3]~feeder_combout\ = \rf_input[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf_input[3]~3_combout\,
	combout => \rf|register_arr[2][3]~feeder_combout\);

-- Location: LCFF_X1_Y12_N19
\rf|register_arr[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \rf|register_arr[2][3]~feeder_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	ena => \rf|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rf|register_arr[2][3]~regout\);

-- Location: LCCOMB_X2_Y12_N30
\rf|QB[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[3]~7_combout\ = (\RB~combout\(0) & (\RB~combout\(1))) # (!\RB~combout\(0) & ((\RB~combout\(1) & ((\rf|register_arr[2][3]~regout\))) # (!\RB~combout\(1) & (\rf|register_arr[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \RB~combout\(1),
	datac => \rf|register_arr[0][3]~regout\,
	datad => \rf|register_arr[2][3]~regout\,
	combout => \rf|QB[3]~7_combout\);

-- Location: LCCOMB_X2_Y12_N16
\rf|QB[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[3]~8_combout\ = (\RB~combout\(0) & ((\rf|QB[3]~7_combout\ & (\rf|register_arr[3][3]~regout\)) # (!\rf|QB[3]~7_combout\ & ((\rf|register_arr[1][3]~regout\))))) # (!\RB~combout\(0) & (((\rf|QB[3]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB~combout\(0),
	datab => \rf|register_arr[3][3]~regout\,
	datac => \rf|register_arr[1][3]~regout\,
	datad => \rf|QB[3]~7_combout\,
	combout => \rf|QB[3]~8_combout\);

-- Location: LCCOMB_X2_Y12_N18
\rf|QA[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[3]~9_combout\ = (\RA~combout\(0) & (\RA~combout\(1))) # (!\RA~combout\(0) & ((\RA~combout\(1) & ((\rf|register_arr[2][3]~regout\))) # (!\RA~combout\(1) & (\rf|register_arr[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \RA~combout\(1),
	datac => \rf|register_arr[0][3]~regout\,
	datad => \rf|register_arr[2][3]~regout\,
	combout => \rf|QA[3]~9_combout\);

-- Location: LCCOMB_X2_Y12_N8
\rf|QA[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[3]~10_combout\ = (\RA~combout\(0) & ((\rf|QA[3]~9_combout\ & (\rf|register_arr[3][3]~regout\)) # (!\rf|QA[3]~9_combout\ & ((\rf|register_arr[1][3]~regout\))))) # (!\RA~combout\(0) & (((\rf|QA[3]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA~combout\(0),
	datab => \rf|register_arr[3][3]~regout\,
	datac => \rf|register_arr[1][3]~regout\,
	datad => \rf|QA[3]~9_combout\,
	combout => \rf|QA[3]~10_combout\);

-- Location: LCCOMB_X3_Y12_N18
\rf|QA[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QA[3]~11_combout\ = (\ReadA~combout\ & \rf|QA[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadA~combout\,
	datad => \rf|QA[3]~10_combout\,
	combout => \rf|QA[3]~11_combout\);

-- Location: LCCOMB_X3_Y12_N16
\the_best_alu_in_kista|Mux0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~7_combout\ = (\OP~combout\(0) & ((\rf|QA[3]~11_combout\) # ((\rf|QB[3]~8_combout\ & \ReadB~combout\)))) # (!\OP~combout\(0) & (\rf|QB[3]~8_combout\ & (\ReadB~combout\ & \rf|QA[3]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(0),
	datab => \rf|QB[3]~8_combout\,
	datac => \ReadB~combout\,
	datad => \rf|QA[3]~11_combout\,
	combout => \the_best_alu_in_kista|Mux0~7_combout\);

-- Location: LCCOMB_X3_Y12_N0
\rf|QB[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rf|QB[3]~9_combout\ = (\ReadB~combout\ & \rf|QB[3]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ReadB~combout\,
	datad => \rf|QB[3]~8_combout\,
	combout => \rf|QB[3]~9_combout\);

-- Location: LCCOMB_X3_Y12_N6
\the_best_alu_in_kista|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~11_combout\ = \OP~combout\(0) $ (((\ReadB~combout\ & \rf|QB[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(0),
	datac => \ReadB~combout\,
	datad => \rf|QB[3]~8_combout\,
	combout => \the_best_alu_in_kista|Add0~11_combout\);

-- Location: LCCOMB_X4_Y12_N26
\the_best_alu_in_kista|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Add0~12_combout\ = \the_best_alu_in_kista|Add0~11_combout\ $ (\the_best_alu_in_kista|Add0~10\ $ (!\rf|QA[3]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|Add0~11_combout\,
	datad => \rf|QA[3]~11_combout\,
	cin => \the_best_alu_in_kista|Add0~10\,
	combout => \the_best_alu_in_kista|Add0~12_combout\);

-- Location: LCCOMB_X4_Y12_N6
\the_best_alu_in_kista|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~4_combout\ = (\the_best_alu_in_kista|Mux2~4_combout\ & ((\the_best_alu_in_kista|Mux2~5_combout\ & (\rf|QA[3]~11_combout\)) # (!\the_best_alu_in_kista|Mux2~5_combout\ & ((\the_best_alu_in_kista|Add0~12_combout\))))) # 
-- (!\the_best_alu_in_kista|Mux2~4_combout\ & (((!\the_best_alu_in_kista|Mux2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~4_combout\,
	datab => \rf|QA[3]~11_combout\,
	datac => \the_best_alu_in_kista|Mux2~5_combout\,
	datad => \the_best_alu_in_kista|Add0~12_combout\,
	combout => \the_best_alu_in_kista|Mux0~4_combout\);

-- Location: LCCOMB_X4_Y12_N28
\the_best_alu_in_kista|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~5_combout\ = (\the_best_alu_in_kista|Mux2~6_combout\ & (((\the_best_alu_in_kista|Mux0~4_combout\)))) # (!\the_best_alu_in_kista|Mux2~6_combout\ & (\rf|QA[3]~11_combout\ $ (((\rf|QB[3]~9_combout\) # 
-- (!\the_best_alu_in_kista|Mux0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~6_combout\,
	datab => \rf|QA[3]~11_combout\,
	datac => \rf|QB[3]~9_combout\,
	datad => \the_best_alu_in_kista|Mux0~4_combout\,
	combout => \the_best_alu_in_kista|Mux0~5_combout\);

-- Location: LCCOMB_X4_Y12_N12
\the_best_alu_in_kista|Mux0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Mux0~6_combout\ = (\OP~combout\(2) & (((\the_best_alu_in_kista|Mux0~5_combout\)))) # (!\OP~combout\(2) & ((\OP~combout\(1) & (\the_best_alu_in_kista|Mux0~7_combout\)) # (!\OP~combout\(1) & 
-- ((\the_best_alu_in_kista|Mux0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(2),
	datab => \the_best_alu_in_kista|Mux0~7_combout\,
	datac => \OP~combout\(1),
	datad => \the_best_alu_in_kista|Mux0~5_combout\,
	combout => \the_best_alu_in_kista|Mux0~6_combout\);

-- Location: LCFF_X4_Y12_N5
\the_best_alu_in_kista|SUM[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	sdata => \the_best_alu_in_kista|Mux0~6_combout\,
	aclr => \ALT_INV_RESET~clkctrl_outclk\,
	sload => VCC,
	ena => \alu_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|SUM\(3));

-- Location: LCCOMB_X5_Y12_N0
\the_best_alu_in_kista|z_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|z_tmp~0_combout\ = (!\the_best_alu_in_kista|Mux2~9_combout\ & (!\the_best_alu_in_kista|Mux3~6_combout\ & (!\the_best_alu_in_kista|Mux1~6_combout\ & !\the_best_alu_in_kista|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \the_best_alu_in_kista|Mux2~9_combout\,
	datab => \the_best_alu_in_kista|Mux3~6_combout\,
	datac => \the_best_alu_in_kista|Mux1~6_combout\,
	datad => \the_best_alu_in_kista|Mux0~6_combout\,
	combout => \the_best_alu_in_kista|z_tmp~0_combout\);

-- Location: LCCOMB_X5_Y12_N16
\the_best_alu_in_kista|Z_Flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Z_Flag~0_combout\ = (\RESET~combout\ & ((\OE~combout\) # (!\IE~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~combout\,
	datab => \IE~combout\,
	datac => \OE~combout\,
	combout => \the_best_alu_in_kista|Z_Flag~0_combout\);

-- Location: LCFF_X5_Y12_N1
\the_best_alu_in_kista|Z_Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \the_best_alu_in_kista|z_tmp~0_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|Z_Flag~regout\);

-- Location: LCFF_X4_Y12_N13
\the_best_alu_in_kista|N_Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \the_best_alu_in_kista|Mux0~6_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|N_Flag~regout\);

-- Location: LCCOMB_X3_Y12_N30
\the_best_alu_in_kista|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|Equal0~0_combout\ = (!\OP~combout\(2) & (!\OP~combout\(1) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \OP~combout\(0),
	combout => \the_best_alu_in_kista|Equal0~0_combout\);

-- Location: LCCOMB_X4_Y12_N0
\the_best_alu_in_kista|sub_overflow~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|sub_overflow~4_combout\ = (\rf|QA[3]~11_combout\ & (!\the_best_alu_in_kista|Mux0~6_combout\ & ((!\rf|QB[3]~8_combout\) # (!\ReadB~combout\)))) # (!\rf|QA[3]~11_combout\ & (\ReadB~combout\ & (\rf|QB[3]~8_combout\ & 
-- \the_best_alu_in_kista|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~combout\,
	datab => \rf|QA[3]~11_combout\,
	datac => \rf|QB[3]~8_combout\,
	datad => \the_best_alu_in_kista|Mux0~6_combout\,
	combout => \the_best_alu_in_kista|sub_overflow~4_combout\);

-- Location: LCCOMB_X4_Y12_N30
\the_best_alu_in_kista|sub_overflow\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|sub_overflow~combout\ = (\the_best_alu_in_kista|Equal0~0_combout\ & ((\the_best_alu_in_kista|sub_overflow~4_combout\))) # (!\the_best_alu_in_kista|Equal0~0_combout\ & (\the_best_alu_in_kista|sub_overflow~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \the_best_alu_in_kista|sub_overflow~combout\,
	datac => \the_best_alu_in_kista|Equal0~0_combout\,
	datad => \the_best_alu_in_kista|sub_overflow~4_combout\,
	combout => \the_best_alu_in_kista|sub_overflow~combout\);

-- Location: LCCOMB_X4_Y12_N10
\the_best_alu_in_kista|o_tmp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \the_best_alu_in_kista|o_tmp~0_combout\ = (\the_best_alu_in_kista|sub_overflow~combout\) # ((\rf|QB[3]~9_combout\ & (\rf|QA[3]~11_combout\ & !\the_best_alu_in_kista|Mux0~6_combout\)) # (!\rf|QB[3]~9_combout\ & (!\rf|QA[3]~11_combout\ & 
-- \the_best_alu_in_kista|Mux0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[3]~9_combout\,
	datab => \rf|QA[3]~11_combout\,
	datac => \the_best_alu_in_kista|Mux0~6_combout\,
	datad => \the_best_alu_in_kista|sub_overflow~combout\,
	combout => \the_best_alu_in_kista|o_tmp~0_combout\);

-- Location: LCFF_X4_Y12_N11
\the_best_alu_in_kista|O_Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	datain => \the_best_alu_in_kista|o_tmp~0_combout\,
	ena => \the_best_alu_in_kista|Z_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \the_best_alu_in_kista|O_Flag~regout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|SUM\(0),
	oe => \OE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_OUTPUT(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|SUM\(1),
	oe => \OE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_OUTPUT(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|SUM\(2),
	oe => \OE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_OUTPUT(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTPUT[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|SUM\(3),
	oe => \OE~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => ww_OUTPUT(3));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\CLK1HZ_po~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \cd|clk_tmp~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CLK1HZ_po);

-- Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|Z_Flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z_Flag);

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\N_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|N_Flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_N_Flag);

-- Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\O_Flag~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \the_best_alu_in_kista|O_Flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_O_Flag);
END structure;


