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

-- DATE "09/13/2021 08:45:02"

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

ENTITY 	Datapath IS
    PORT (
	RESET : IN std_logic;
	CLK : IN std_logic;
	OP : IN std_logic_vector(2 DOWNTO 0);
	IE : IN std_logic;
	INPUT : IN std_logic_vector(9 DOWNTO 0);
	WAddr : IN std_logic_vector(2 DOWNTO 0);
	Write : IN std_logic;
	RA : IN std_logic_vector(2 DOWNTO 0);
	ReadA : IN std_logic;
	RB : IN std_logic_vector(2 DOWNTO 0);
	ReadB : IN std_logic;
	OE : IN std_logic;
	OUTPUT : OUT std_logic_vector(9 DOWNTO 0);
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
	);
END Datapath;

-- Design Ports Information
-- OUTPUT[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[8]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_Flag	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_Flag	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_Flag	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadB	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadA	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IE	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[9]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[0]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[2]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[5]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[6]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[8]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_INPUT : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_WAddr : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Write : std_logic;
SIGNAL ww_RA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ReadA : std_logic;
SIGNAL ww_RB : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_ReadB : std_logic;
SIGNAL ww_OE : std_logic;
SIGNAL ww_OUTPUT : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|clk_tmp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cd|counter[1]~27_combout\ : std_logic;
SIGNAL \cd|counter[3]~31_combout\ : std_logic;
SIGNAL \cd|counter[13]~51_combout\ : std_logic;
SIGNAL \cd|counter[17]~59_combout\ : std_logic;
SIGNAL \cd|counter[21]~67_combout\ : std_logic;
SIGNAL \cd|counter[23]~71_combout\ : std_logic;
SIGNAL \rf|QB[9]~0_combout\ : std_logic;
SIGNAL \rf|QA[9]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[3][3]~q\ : std_logic;
SIGNAL \rf|QB[3]~20_combout\ : std_logic;
SIGNAL \rf|QB[3]~21_combout\ : std_logic;
SIGNAL \rf|QB[3]~22_combout\ : std_logic;
SIGNAL \rf|QB[3]~23_combout\ : std_logic;
SIGNAL \rf|QB[3]~24_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~12_combout\ : std_logic;
SIGNAL \rf|register_arr[5][4]~q\ : std_logic;
SIGNAL \rf|QA[4]~27_combout\ : std_logic;
SIGNAL \rf|register_arr[2][5]~q\ : std_logic;
SIGNAL \sweden_is_great|Add0~18_combout\ : std_logic;
SIGNAL \rf|QA[6]~37_combout\ : std_logic;
SIGNAL \rf|QA[7]~40_combout\ : std_logic;
SIGNAL \rf|QA[7]~42_combout\ : std_logic;
SIGNAL \rf|register_arr[3][7]~q\ : std_logic;
SIGNAL \rf|QA[7]~43_combout\ : std_logic;
SIGNAL \cd|Equal0~0_combout\ : std_logic;
SIGNAL \cd|Equal0~6_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~44_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~46_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~48_combout\ : std_logic;
SIGNAL \WAddr[0]~input_o\ : std_logic;
SIGNAL \WAddr[2]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \rf|register_arr[5][4]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][5]~feeder_combout\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[4]~output_o\ : std_logic;
SIGNAL \OUTPUT[5]~output_o\ : std_logic;
SIGNAL \OUTPUT[6]~output_o\ : std_logic;
SIGNAL \OUTPUT[7]~output_o\ : std_logic;
SIGNAL \OUTPUT[8]~output_o\ : std_logic;
SIGNAL \OUTPUT[9]~output_o\ : std_logic;
SIGNAL \Z_Flag~output_o\ : std_logic;
SIGNAL \N_Flag~output_o\ : std_logic;
SIGNAL \O_Flag~output_o\ : std_logic;
SIGNAL \cd|counter[0]~26_combout\ : std_logic;
SIGNAL \cd|counter[1]~28\ : std_logic;
SIGNAL \cd|counter[2]~29_combout\ : std_logic;
SIGNAL \cd|counter[2]~30\ : std_logic;
SIGNAL \cd|counter[3]~32\ : std_logic;
SIGNAL \cd|counter[4]~34\ : std_logic;
SIGNAL \cd|counter[5]~35_combout\ : std_logic;
SIGNAL \cd|counter[5]~36\ : std_logic;
SIGNAL \cd|counter[6]~37_combout\ : std_logic;
SIGNAL \cd|counter[6]~38\ : std_logic;
SIGNAL \cd|counter[7]~39_combout\ : std_logic;
SIGNAL \cd|counter[7]~40\ : std_logic;
SIGNAL \cd|counter[8]~41_combout\ : std_logic;
SIGNAL \cd|counter[8]~42\ : std_logic;
SIGNAL \cd|counter[9]~44\ : std_logic;
SIGNAL \cd|counter[10]~45_combout\ : std_logic;
SIGNAL \cd|counter[10]~46\ : std_logic;
SIGNAL \cd|counter[11]~48\ : std_logic;
SIGNAL \cd|counter[12]~49_combout\ : std_logic;
SIGNAL \cd|counter[12]~50\ : std_logic;
SIGNAL \cd|counter[13]~52\ : std_logic;
SIGNAL \cd|counter[14]~53_combout\ : std_logic;
SIGNAL \cd|counter[14]~54\ : std_logic;
SIGNAL \cd|counter[15]~55_combout\ : std_logic;
SIGNAL \cd|counter[15]~56\ : std_logic;
SIGNAL \cd|counter[16]~57_combout\ : std_logic;
SIGNAL \cd|counter[16]~58\ : std_logic;
SIGNAL \cd|counter[17]~60\ : std_logic;
SIGNAL \cd|counter[18]~61_combout\ : std_logic;
SIGNAL \cd|counter[18]~62\ : std_logic;
SIGNAL \cd|counter[19]~64\ : std_logic;
SIGNAL \cd|counter[20]~65_combout\ : std_logic;
SIGNAL \cd|counter[20]~66\ : std_logic;
SIGNAL \cd|counter[21]~68\ : std_logic;
SIGNAL \cd|counter[22]~69_combout\ : std_logic;
SIGNAL \cd|counter[22]~70\ : std_logic;
SIGNAL \cd|counter[23]~72\ : std_logic;
SIGNAL \cd|counter[24]~73_combout\ : std_logic;
SIGNAL \cd|counter[24]~74\ : std_logic;
SIGNAL \cd|counter[25]~75_combout\ : std_logic;
SIGNAL \cd|counter[25]~76\ : std_logic;
SIGNAL \cd|counter[26]~77_combout\ : std_logic;
SIGNAL \cd|Equal0~7_combout\ : std_logic;
SIGNAL \cd|counter[19]~63_combout\ : std_logic;
SIGNAL \cd|Equal0~5_combout\ : std_logic;
SIGNAL \cd|Equal0~3_combout\ : std_logic;
SIGNAL \cd|counter[4]~33_combout\ : std_logic;
SIGNAL \cd|Equal0~1_combout\ : std_logic;
SIGNAL \cd|counter[9]~43_combout\ : std_logic;
SIGNAL \cd|counter[11]~47_combout\ : std_logic;
SIGNAL \cd|Equal0~2_combout\ : std_logic;
SIGNAL \cd|Equal0~4_combout\ : std_logic;
SIGNAL \cd|Equal0~8_combout\ : std_logic;
SIGNAL \cd|clk_tmp~0_combout\ : std_logic;
SIGNAL \cd|clk_tmp~feeder_combout\ : std_logic;
SIGNAL \cd|clk_tmp~q\ : std_logic;
SIGNAL \cd|clk_tmp~clkctrl_outclk\ : std_logic;
SIGNAL \OE~input_o\ : std_logic;
SIGNAL \IE~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~7_combout\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~3_combout\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \rf|register_arr~11_combout\ : std_logic;
SIGNAL \Write~input_o\ : std_logic;
SIGNAL \rf|register_arr[5][6]~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \WAddr[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr[5][6]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[5][0]~q\ : std_logic;
SIGNAL \rf|register_arr[6][0]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][4]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[6][4]~4_combout\ : std_logic;
SIGNAL \rf|register_arr[6][0]~q\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr[4][8]~5_combout\ : std_logic;
SIGNAL \rf|register_arr[4][0]~q\ : std_logic;
SIGNAL \rf|QA[0]~5_combout\ : std_logic;
SIGNAL \rf|QA[0]~6_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~7_combout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~q\ : std_logic;
SIGNAL \rf|register_arr[1][5]~8_combout\ : std_logic;
SIGNAL \rf|register_arr[1][0]~q\ : std_logic;
SIGNAL \rf|register_arr[0][3]~9_combout\ : std_logic;
SIGNAL \rf|register_arr[0][0]~q\ : std_logic;
SIGNAL \rf|QA[0]~7_combout\ : std_logic;
SIGNAL \rf|QA[0]~8_combout\ : std_logic;
SIGNAL \rf|QA[0]~9_combout\ : std_logic;
SIGNAL \ReadB~input_o\ : std_logic;
SIGNAL \rf|register_arr[3][0]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][5]~10_combout\ : std_logic;
SIGNAL \rf|register_arr[3][0]~q\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \rf|QB[0]~7_combout\ : std_logic;
SIGNAL \rf|QB[0]~8_combout\ : std_logic;
SIGNAL \rf|register_arr[7][0]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][2]~6_combout\ : std_logic;
SIGNAL \rf|register_arr[7][0]~q\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \rf|QB[0]~5_combout\ : std_logic;
SIGNAL \rf|QB[0]~6_combout\ : std_logic;
SIGNAL \rf|QB[0]~9_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~0_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~2_cout\ : std_logic;
SIGNAL \sweden_is_great|Add0~3_combout\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~0_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~2_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~4_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~49_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr~12_combout\ : std_logic;
SIGNAL \rf|register_arr[2][1]~q\ : std_logic;
SIGNAL \rf|register_arr[0][1]~q\ : std_logic;
SIGNAL \rf|register_arr[1][1]~q\ : std_logic;
SIGNAL \rf|QB[1]~12_combout\ : std_logic;
SIGNAL \rf|QB[1]~13_combout\ : std_logic;
SIGNAL \rf|register_arr[7][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][1]~q\ : std_logic;
SIGNAL \rf|register_arr[5][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][1]~q\ : std_logic;
SIGNAL \rf|register_arr[4][1]~q\ : std_logic;
SIGNAL \rf|register_arr[6][1]~q\ : std_logic;
SIGNAL \rf|QB[1]~10_combout\ : std_logic;
SIGNAL \rf|QB[1]~11_combout\ : std_logic;
SIGNAL \rf|QB[1]~14_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~5_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~6_combout\ : std_logic;
SIGNAL \rf|QA[1]~10_combout\ : std_logic;
SIGNAL \rf|QA[1]~11_combout\ : std_logic;
SIGNAL \rf|register_arr[3][1]~q\ : std_logic;
SIGNAL \rf|QA[1]~12_combout\ : std_logic;
SIGNAL \rf|QA[1]~13_combout\ : std_logic;
SIGNAL \rf|QA[1]~14_combout\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \sweden_is_great|Add0~5_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~6_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~4\ : std_logic;
SIGNAL \sweden_is_great|Add0~7_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~8_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~9_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~10_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~11_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \rf|register_arr~13_combout\ : std_logic;
SIGNAL \rf|register_arr[2][2]~q\ : std_logic;
SIGNAL \rf|register_arr[3][2]~q\ : std_logic;
SIGNAL \rf|register_arr[0][2]~q\ : std_logic;
SIGNAL \rf|register_arr[1][2]~q\ : std_logic;
SIGNAL \rf|QB[2]~17_combout\ : std_logic;
SIGNAL \rf|QB[2]~18_combout\ : std_logic;
SIGNAL \rf|register_arr[5][2]~q\ : std_logic;
SIGNAL \rf|register_arr[7][2]~q\ : std_logic;
SIGNAL \rf|register_arr[4][2]~q\ : std_logic;
SIGNAL \rf|register_arr[6][2]~q\ : std_logic;
SIGNAL \rf|QB[2]~15_combout\ : std_logic;
SIGNAL \rf|QB[2]~16_combout\ : std_logic;
SIGNAL \rf|QB[2]~19_combout\ : std_logic;
SIGNAL \ReadA~input_o\ : std_logic;
SIGNAL \rf|QA[2]~17_combout\ : std_logic;
SIGNAL \rf|QA[2]~18_combout\ : std_logic;
SIGNAL \rf|QA[2]~15_combout\ : std_logic;
SIGNAL \rf|QA[2]~16_combout\ : std_logic;
SIGNAL \rf|QA[2]~19_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~9_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~8\ : std_logic;
SIGNAL \sweden_is_great|Add0~10_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~1_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~12_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~13_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~47_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \rf|register_arr~14_combout\ : std_logic;
SIGNAL \rf|register_arr[7][3]~q\ : std_logic;
SIGNAL \rf|register_arr[5][3]~q\ : std_logic;
SIGNAL \rf|register_arr[6][3]~q\ : std_logic;
SIGNAL \rf|register_arr[4][3]~q\ : std_logic;
SIGNAL \rf|QA[3]~20_combout\ : std_logic;
SIGNAL \rf|QA[3]~21_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~q\ : std_logic;
SIGNAL \rf|register_arr[1][3]~q\ : std_logic;
SIGNAL \rf|register_arr[0][3]~q\ : std_logic;
SIGNAL \rf|QA[3]~22_combout\ : std_logic;
SIGNAL \rf|QA[3]~23_combout\ : std_logic;
SIGNAL \rf|QA[3]~24_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~11\ : std_logic;
SIGNAL \sweden_is_great|Add0~13_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~14_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~15_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~16_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~17_combout\ : std_logic;
SIGNAL \INPUT[4]~input_o\ : std_logic;
SIGNAL \rf|register_arr~15_combout\ : std_logic;
SIGNAL \rf|register_arr[7][4]~q\ : std_logic;
SIGNAL \rf|register_arr[6][4]~q\ : std_logic;
SIGNAL \rf|register_arr[4][4]~q\ : std_logic;
SIGNAL \rf|QA[4]~25_combout\ : std_logic;
SIGNAL \rf|QA[4]~26_combout\ : std_logic;
SIGNAL \rf|register_arr[2][4]~q\ : std_logic;
SIGNAL \rf|register_arr[3][4]~q\ : std_logic;
SIGNAL \rf|QA[4]~28_combout\ : std_logic;
SIGNAL \rf|QA[4]~29_combout\ : std_logic;
SIGNAL \rf|QB[4]~25_combout\ : std_logic;
SIGNAL \rf|QB[4]~26_combout\ : std_logic;
SIGNAL \rf|register_arr[0][4]~q\ : std_logic;
SIGNAL \rf|register_arr[1][4]~q\ : std_logic;
SIGNAL \rf|QB[4]~27_combout\ : std_logic;
SIGNAL \rf|QB[4]~28_combout\ : std_logic;
SIGNAL \rf|QB[4]~29_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~15_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~14\ : std_logic;
SIGNAL \sweden_is_great|Add0~16_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~18_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~19_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~45_combout\ : std_logic;
SIGNAL \INPUT[5]~input_o\ : std_logic;
SIGNAL \rf|register_arr~16_combout\ : std_logic;
SIGNAL \rf|register_arr[3][5]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][5]~q\ : std_logic;
SIGNAL \rf|register_arr[1][5]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][5]~q\ : std_logic;
SIGNAL \rf|register_arr[0][5]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][5]~q\ : std_logic;
SIGNAL \rf|QB[5]~32_combout\ : std_logic;
SIGNAL \rf|QB[5]~33_combout\ : std_logic;
SIGNAL \rf|register_arr[7][5]~q\ : std_logic;
SIGNAL \rf|register_arr[5][5]~q\ : std_logic;
SIGNAL \rf|register_arr[4][5]~q\ : std_logic;
SIGNAL \rf|register_arr[6][5]~q\ : std_logic;
SIGNAL \rf|QB[5]~30_combout\ : std_logic;
SIGNAL \rf|QB[5]~31_combout\ : std_logic;
SIGNAL \rf|QB[5]~34_combout\ : std_logic;
SIGNAL \rf|QA[5]~32_combout\ : std_logic;
SIGNAL \rf|QA[5]~33_combout\ : std_logic;
SIGNAL \rf|QA[5]~30_combout\ : std_logic;
SIGNAL \rf|QA[5]~31_combout\ : std_logic;
SIGNAL \rf|QA[5]~34_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~17\ : std_logic;
SIGNAL \sweden_is_great|Add0~19_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~20_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~21_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~22_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~23_combout\ : std_logic;
SIGNAL \INPUT[6]~input_o\ : std_logic;
SIGNAL \rf|register_arr~17_combout\ : std_logic;
SIGNAL \rf|register_arr[2][6]~q\ : std_logic;
SIGNAL \rf|register_arr[3][6]~q\ : std_logic;
SIGNAL \rf|register_arr[1][6]~q\ : std_logic;
SIGNAL \rf|register_arr[0][6]~q\ : std_logic;
SIGNAL \rf|QB[6]~37_combout\ : std_logic;
SIGNAL \rf|QB[6]~38_combout\ : std_logic;
SIGNAL \rf|register_arr[5][6]~q\ : std_logic;
SIGNAL \rf|register_arr[6][6]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][6]~q\ : std_logic;
SIGNAL \rf|register_arr[4][6]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][6]~q\ : std_logic;
SIGNAL \rf|QB[6]~35_combout\ : std_logic;
SIGNAL \rf|QB[6]~36_combout\ : std_logic;
SIGNAL \rf|QB[6]~39_combout\ : std_logic;
SIGNAL \rf|register_arr[7][6]~q\ : std_logic;
SIGNAL \rf|QA[6]~35_combout\ : std_logic;
SIGNAL \rf|QA[6]~36_combout\ : std_logic;
SIGNAL \rf|QA[6]~38_combout\ : std_logic;
SIGNAL \rf|QA[6]~39_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~42_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~21_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~20\ : std_logic;
SIGNAL \sweden_is_great|Add0~22_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~24_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~25_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~43_combout\ : std_logic;
SIGNAL \INPUT[7]~input_o\ : std_logic;
SIGNAL \rf|register_arr~18_combout\ : std_logic;
SIGNAL \rf|register_arr[5][7]~q\ : std_logic;
SIGNAL \rf|register_arr[6][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][7]~q\ : std_logic;
SIGNAL \rf|register_arr[4][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][7]~q\ : std_logic;
SIGNAL \rf|QB[7]~40_combout\ : std_logic;
SIGNAL \rf|QB[7]~41_combout\ : std_logic;
SIGNAL \rf|register_arr[2][7]~q\ : std_logic;
SIGNAL \rf|register_arr[0][7]~q\ : std_logic;
SIGNAL \rf|register_arr[1][7]~q\ : std_logic;
SIGNAL \rf|QB[7]~42_combout\ : std_logic;
SIGNAL \rf|QB[7]~43_combout\ : std_logic;
SIGNAL \rf|QB[7]~44_combout\ : std_logic;
SIGNAL \rf|register_arr[7][7]~q\ : std_logic;
SIGNAL \rf|QA[7]~41_combout\ : std_logic;
SIGNAL \rf|QA[7]~44_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~26_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~27_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~28_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~24_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~23\ : std_logic;
SIGNAL \sweden_is_great|Add0~25_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~29_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~30_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~31_combout\ : std_logic;
SIGNAL \INPUT[8]~input_o\ : std_logic;
SIGNAL \rf|register_arr~19_combout\ : std_logic;
SIGNAL \rf|register_arr[5][8]~q\ : std_logic;
SIGNAL \rf|register_arr[7][8]~q\ : std_logic;
SIGNAL \rf|register_arr[4][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][8]~q\ : std_logic;
SIGNAL \rf|register_arr[6][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][8]~q\ : std_logic;
SIGNAL \rf|QB[8]~45_combout\ : std_logic;
SIGNAL \rf|QB[8]~46_combout\ : std_logic;
SIGNAL \rf|register_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][8]~q\ : std_logic;
SIGNAL \rf|register_arr[3][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][8]~q\ : std_logic;
SIGNAL \rf|register_arr[1][8]~q\ : std_logic;
SIGNAL \rf|register_arr[0][8]~q\ : std_logic;
SIGNAL \rf|QB[8]~47_combout\ : std_logic;
SIGNAL \rf|QB[8]~48_combout\ : std_logic;
SIGNAL \rf|QB[8]~49_combout\ : std_logic;
SIGNAL \rf|QA[8]~47_combout\ : std_logic;
SIGNAL \rf|QA[8]~48_combout\ : std_logic;
SIGNAL \rf|QA[8]~45_combout\ : std_logic;
SIGNAL \rf|QA[8]~46_combout\ : std_logic;
SIGNAL \rf|QA[8]~49_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~40_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~27_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~26\ : std_logic;
SIGNAL \sweden_is_great|Add0~28_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~32_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~33_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~41_combout\ : std_logic;
SIGNAL \INPUT[9]~input_o\ : std_logic;
SIGNAL \rf|register_arr~0_combout\ : std_logic;
SIGNAL \rf|register_arr[1][9]~q\ : std_logic;
SIGNAL \rf|register_arr[0][9]~q\ : std_logic;
SIGNAL \rf|QB[9]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[2][9]~q\ : std_logic;
SIGNAL \rf|register_arr[3][9]~q\ : std_logic;
SIGNAL \rf|QB[9]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[5][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][9]~q\ : std_logic;
SIGNAL \rf|register_arr[7][9]~q\ : std_logic;
SIGNAL \rf|QB[9]~1_combout\ : std_logic;
SIGNAL \rf|QB[9]~4_combout\ : std_logic;
SIGNAL \rf|register_arr[4][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][9]~q\ : std_logic;
SIGNAL \rf|register_arr[6][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][9]~q\ : std_logic;
SIGNAL \rf|QA[9]~0_combout\ : std_logic;
SIGNAL \rf|QA[9]~1_combout\ : std_logic;
SIGNAL \rf|QA[9]~3_combout\ : std_logic;
SIGNAL \rf|QA[9]~4_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~34_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~35_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~36_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~30_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~29\ : std_logic;
SIGNAL \sweden_is_great|Add0~31_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~37_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~38_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~39_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~1_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~0_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~2_combout\ : std_logic;
SIGNAL \sweden_is_great|O_Flag~0_combout\ : std_logic;
SIGNAL \cd|counter\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \sweden_is_great|sum_rtl\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \sweden_is_great|ALT_INV_O_Flag~0_combout\ : std_logic;
SIGNAL \sweden_is_great|ALT_INV_Z_Flag~2_combout\ : std_logic;

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
OUTPUT <= ww_OUTPUT;
Z_Flag <= ww_Z_Flag;
N_Flag <= ww_N_Flag;
O_Flag <= ww_O_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\cd|clk_tmp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cd|clk_tmp~q\);
\sweden_is_great|ALT_INV_O_Flag~0_combout\ <= NOT \sweden_is_great|O_Flag~0_combout\;
\sweden_is_great|ALT_INV_Z_Flag~2_combout\ <= NOT \sweden_is_great|Z_Flag~2_combout\;

-- Location: FF_X26_Y26_N7
\cd|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[1]~27_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(1));

-- Location: FF_X26_Y26_N11
\cd|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[3]~31_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(3));

-- Location: FF_X26_Y26_N31
\cd|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[13]~51_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(13));

-- Location: FF_X26_Y25_N7
\cd|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[17]~59_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(17));

-- Location: FF_X26_Y25_N15
\cd|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[21]~67_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(21));

-- Location: FF_X26_Y25_N19
\cd|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[23]~71_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(23));

-- Location: LCCOMB_X26_Y26_N6
\cd|counter[1]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[1]~27_combout\ = (\cd|counter\(1) & (\cd|counter\(0) $ (VCC))) # (!\cd|counter\(1) & (\cd|counter\(0) & VCC))
-- \cd|counter[1]~28\ = CARRY((\cd|counter\(1) & \cd|counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(1),
	datab => \cd|counter\(0),
	datad => VCC,
	combout => \cd|counter[1]~27_combout\,
	cout => \cd|counter[1]~28\);

-- Location: LCCOMB_X26_Y26_N10
\cd|counter[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[3]~31_combout\ = (\cd|counter\(3) & (\cd|counter[2]~30\ $ (GND))) # (!\cd|counter\(3) & (!\cd|counter[2]~30\ & VCC))
-- \cd|counter[3]~32\ = CARRY((\cd|counter\(3) & !\cd|counter[2]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(3),
	datad => VCC,
	cin => \cd|counter[2]~30\,
	combout => \cd|counter[3]~31_combout\,
	cout => \cd|counter[3]~32\);

-- Location: LCCOMB_X26_Y26_N30
\cd|counter[13]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[13]~51_combout\ = (\cd|counter\(13) & (\cd|counter[12]~50\ $ (GND))) # (!\cd|counter\(13) & (!\cd|counter[12]~50\ & VCC))
-- \cd|counter[13]~52\ = CARRY((\cd|counter\(13) & !\cd|counter[12]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(13),
	datad => VCC,
	cin => \cd|counter[12]~50\,
	combout => \cd|counter[13]~51_combout\,
	cout => \cd|counter[13]~52\);

-- Location: LCCOMB_X26_Y25_N6
\cd|counter[17]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[17]~59_combout\ = (\cd|counter\(17) & (\cd|counter[16]~58\ $ (GND))) # (!\cd|counter\(17) & (!\cd|counter[16]~58\ & VCC))
-- \cd|counter[17]~60\ = CARRY((\cd|counter\(17) & !\cd|counter[16]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(17),
	datad => VCC,
	cin => \cd|counter[16]~58\,
	combout => \cd|counter[17]~59_combout\,
	cout => \cd|counter[17]~60\);

-- Location: LCCOMB_X26_Y25_N14
\cd|counter[21]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[21]~67_combout\ = (\cd|counter\(21) & (\cd|counter[20]~66\ $ (GND))) # (!\cd|counter\(21) & (!\cd|counter[20]~66\ & VCC))
-- \cd|counter[21]~68\ = CARRY((\cd|counter\(21) & !\cd|counter[20]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(21),
	datad => VCC,
	cin => \cd|counter[20]~66\,
	combout => \cd|counter[21]~67_combout\,
	cout => \cd|counter[21]~68\);

-- Location: LCCOMB_X26_Y25_N18
\cd|counter[23]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[23]~71_combout\ = (\cd|counter\(23) & (\cd|counter[22]~70\ $ (GND))) # (!\cd|counter\(23) & (!\cd|counter[22]~70\ & VCC))
-- \cd|counter[23]~72\ = CARRY((\cd|counter\(23) & !\cd|counter[22]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(23),
	datad => VCC,
	cin => \cd|counter[22]~70\,
	combout => \cd|counter[23]~71_combout\,
	cout => \cd|counter[23]~72\);

-- Location: LCCOMB_X46_Y39_N24
\rf|QB[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~0_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][9]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][9]~q\,
	datad => \rf|register_arr[6][9]~q\,
	combout => \rf|QB[9]~0_combout\);

-- Location: LCCOMB_X47_Y37_N0
\rf|QA[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~2_combout\ = (\RA[0]~input_o\ & ((\rf|register_arr[1][9]~q\) # ((\RA[1]~input_o\)))) # (!\RA[0]~input_o\ & (((\rf|register_arr[0][9]~q\ & !\RA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[1][9]~q\,
	datac => \rf|register_arr[0][9]~q\,
	datad => \RA[1]~input_o\,
	combout => \rf|QA[9]~2_combout\);

-- Location: FF_X46_Y38_N27
\rf|register_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][3]~q\);

-- Location: LCCOMB_X48_Y38_N20
\rf|QB[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~20_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][3]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][3]~q\,
	datad => \rf|register_arr[6][3]~q\,
	combout => \rf|QB[3]~20_combout\);

-- Location: LCCOMB_X49_Y38_N0
\rf|QB[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~21_combout\ = (\RB[0]~input_o\ & ((\rf|QB[3]~20_combout\ & (\rf|register_arr[7][3]~q\)) # (!\rf|QB[3]~20_combout\ & ((\rf|register_arr[5][3]~q\))))) # (!\RB[0]~input_o\ & (((\rf|QB[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[7][3]~q\,
	datac => \rf|register_arr[5][3]~q\,
	datad => \rf|QB[3]~20_combout\,
	combout => \rf|QB[3]~21_combout\);

-- Location: LCCOMB_X46_Y38_N20
\rf|QB[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~22_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][3]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][3]~q\,
	datad => \rf|register_arr[1][3]~q\,
	combout => \rf|QB[3]~22_combout\);

-- Location: LCCOMB_X46_Y38_N26
\rf|QB[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~23_combout\ = (\RB[1]~input_o\ & ((\rf|QB[3]~22_combout\ & ((\rf|register_arr[3][3]~q\))) # (!\rf|QB[3]~22_combout\ & (\rf|register_arr[2][3]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][3]~q\,
	datac => \rf|register_arr[3][3]~q\,
	datad => \rf|QB[3]~22_combout\,
	combout => \rf|QB[3]~23_combout\);

-- Location: LCCOMB_X47_Y37_N8
\rf|QB[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~24_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[3]~21_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[3]~23_combout\,
	datad => \rf|QB[3]~21_combout\,
	combout => \rf|QB[3]~24_combout\);

-- Location: LCCOMB_X47_Y37_N6
\sweden_is_great|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~12_combout\ = \rf|QB[3]~24_combout\ $ (\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|QB[3]~24_combout\,
	datad => \OP[0]~input_o\,
	combout => \sweden_is_great|Add0~12_combout\);

-- Location: FF_X49_Y38_N31
\rf|register_arr[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[5][4]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][4]~q\);

-- Location: LCCOMB_X47_Y38_N30
\rf|QA[4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~27_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][4]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][4]~q\,
	datad => \rf|register_arr[0][4]~q\,
	combout => \rf|QA[4]~27_combout\);

-- Location: FF_X49_Y39_N13
\rf|register_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[2][5]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][5]~q\);

-- Location: LCCOMB_X47_Y39_N4
\sweden_is_great|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~18_combout\ = \OP[0]~input_o\ $ (\rf|QB[5]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[5]~34_combout\,
	combout => \sweden_is_great|Add0~18_combout\);

-- Location: LCCOMB_X47_Y38_N26
\rf|QA[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~37_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][6]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][6]~q\,
	datad => \rf|register_arr[0][6]~q\,
	combout => \rf|QA[6]~37_combout\);

-- Location: LCCOMB_X46_Y39_N16
\rf|QA[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~40_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][7]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][7]~q\,
	datad => \rf|register_arr[4][7]~q\,
	combout => \rf|QA[7]~40_combout\);

-- Location: LCCOMB_X47_Y38_N22
\rf|QA[7]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~42_combout\ = (\RA[1]~input_o\ & (((\RA[0]~input_o\)))) # (!\RA[1]~input_o\ & ((\RA[0]~input_o\ & ((\rf|register_arr[1][7]~q\))) # (!\RA[0]~input_o\ & (\rf|register_arr[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[0][7]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][7]~q\,
	datad => \RA[0]~input_o\,
	combout => \rf|QA[7]~42_combout\);

-- Location: FF_X46_Y38_N23
\rf|register_arr[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~18_combout\,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][7]~q\);

-- Location: LCCOMB_X46_Y37_N30
\rf|QA[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~43_combout\ = (\RA[1]~input_o\ & ((\rf|QA[7]~42_combout\ & ((\rf|register_arr[3][7]~q\))) # (!\rf|QA[7]~42_combout\ & (\rf|register_arr[2][7]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[7]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[2][7]~q\,
	datac => \rf|register_arr[3][7]~q\,
	datad => \rf|QA[7]~42_combout\,
	combout => \rf|QA[7]~43_combout\);

-- Location: LCCOMB_X27_Y26_N20
\cd|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~0_combout\ = (!\cd|counter\(3) & (!\cd|counter\(0) & (!\cd|counter\(1) & !\cd|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(3),
	datab => \cd|counter\(0),
	datac => \cd|counter\(1),
	datad => \cd|counter\(2),
	combout => \cd|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y25_N28
\cd|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~6_combout\ = (\cd|counter\(20) & (\cd|counter\(22) & (\cd|counter\(21) & \cd|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(20),
	datab => \cd|counter\(22),
	datac => \cd|counter\(21),
	datad => \cd|counter\(23),
	combout => \cd|Equal0~6_combout\);

-- Location: LCCOMB_X50_Y37_N22
\sweden_is_great|sum_rtl~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~44_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[4]~29_combout\) # (\rf|QB[4]~29_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QA[4]~29_combout\ & 
-- \rf|QB[4]~29_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QA[4]~29_combout\,
	datad => \rf|QB[4]~29_combout\,
	combout => \sweden_is_great|sum_rtl~44_combout\);

-- Location: LCCOMB_X48_Y37_N14
\sweden_is_great|sum_rtl~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~46_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[2]~19_combout\) # (\rf|QB[2]~19_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QA[2]~19_combout\ & 
-- \rf|QB[2]~19_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \rf|QA[2]~19_combout\,
	datac => \rf|QB[2]~19_combout\,
	datad => \sweden_is_great|sum_rtl[9]~7_combout\,
	combout => \sweden_is_great|sum_rtl~46_combout\);

-- Location: LCCOMB_X46_Y37_N18
\sweden_is_great|sum_rtl~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~48_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[0]~9_combout\) # (\rf|QB[0]~9_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QA[0]~9_combout\ & 
-- \rf|QB[0]~9_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QA[0]~9_combout\,
	datad => \rf|QB[0]~9_combout\,
	combout => \sweden_is_great|sum_rtl~48_combout\);

-- Location: IOIBUF_X52_Y30_N8
\WAddr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(0),
	o => \WAddr[0]~input_o\);

-- Location: IOIBUF_X52_Y18_N1
\WAddr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(2),
	o => \WAddr[2]~input_o\);

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

-- Location: LCCOMB_X49_Y38_N30
\rf|register_arr[5][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][4]~feeder_combout\ = \rf|register_arr~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~15_combout\,
	combout => \rf|register_arr[5][4]~feeder_combout\);

-- Location: LCCOMB_X49_Y39_N12
\rf|register_arr[2][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][5]~feeder_combout\ = \rf|register_arr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~16_combout\,
	combout => \rf|register_arr[2][5]~feeder_combout\);

-- Location: IOOBUF_X52_Y32_N16
\OUTPUT[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(0),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X52_Y32_N2
\OUTPUT[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(1),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\OUTPUT[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(2),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\OUTPUT[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(3),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\OUTPUT[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(4),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[4]~output_o\);

-- Location: IOOBUF_X52_Y32_N23
\OUTPUT[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(5),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[5]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\OUTPUT[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(6),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\OUTPUT[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(7),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N9
\OUTPUT[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(8),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[8]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\OUTPUT[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(9),
	oe => \OE~input_o\,
	devoe => ww_devoe,
	o => \OUTPUT[9]~output_o\);

-- Location: IOOBUF_X38_Y41_N2
\Z_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|ALT_INV_Z_Flag~2_combout\,
	devoe => ww_devoe,
	o => \Z_Flag~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\N_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|sum_rtl\(9),
	devoe => ww_devoe,
	o => \N_Flag~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\O_Flag~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sweden_is_great|ALT_INV_O_Flag~0_combout\,
	devoe => ww_devoe,
	o => \O_Flag~output_o\);

-- Location: LCCOMB_X27_Y26_N18
\cd|counter[0]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[0]~26_combout\ = (\cd|Equal0~8_combout\ & !\cd|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|Equal0~8_combout\,
	datac => \cd|counter\(0),
	combout => \cd|counter[0]~26_combout\);

-- Location: FF_X27_Y26_N19
\cd|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[0]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(0));

-- Location: LCCOMB_X26_Y26_N8
\cd|counter[2]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[2]~29_combout\ = (\cd|counter\(2) & (!\cd|counter[1]~28\)) # (!\cd|counter\(2) & ((\cd|counter[1]~28\) # (GND)))
-- \cd|counter[2]~30\ = CARRY((!\cd|counter[1]~28\) # (!\cd|counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(2),
	datad => VCC,
	cin => \cd|counter[1]~28\,
	combout => \cd|counter[2]~29_combout\,
	cout => \cd|counter[2]~30\);

-- Location: FF_X26_Y26_N9
\cd|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[2]~29_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(2));

-- Location: LCCOMB_X26_Y26_N12
\cd|counter[4]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[4]~33_combout\ = (\cd|counter\(4) & (!\cd|counter[3]~32\)) # (!\cd|counter\(4) & ((\cd|counter[3]~32\) # (GND)))
-- \cd|counter[4]~34\ = CARRY((!\cd|counter[3]~32\) # (!\cd|counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(4),
	datad => VCC,
	cin => \cd|counter[3]~32\,
	combout => \cd|counter[4]~33_combout\,
	cout => \cd|counter[4]~34\);

-- Location: LCCOMB_X26_Y26_N14
\cd|counter[5]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[5]~35_combout\ = (\cd|counter\(5) & (\cd|counter[4]~34\ $ (GND))) # (!\cd|counter\(5) & (!\cd|counter[4]~34\ & VCC))
-- \cd|counter[5]~36\ = CARRY((\cd|counter\(5) & !\cd|counter[4]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(5),
	datad => VCC,
	cin => \cd|counter[4]~34\,
	combout => \cd|counter[5]~35_combout\,
	cout => \cd|counter[5]~36\);

-- Location: FF_X26_Y26_N15
\cd|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[5]~35_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(5));

-- Location: LCCOMB_X26_Y26_N16
\cd|counter[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[6]~37_combout\ = (\cd|counter\(6) & (!\cd|counter[5]~36\)) # (!\cd|counter\(6) & ((\cd|counter[5]~36\) # (GND)))
-- \cd|counter[6]~38\ = CARRY((!\cd|counter[5]~36\) # (!\cd|counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(6),
	datad => VCC,
	cin => \cd|counter[5]~36\,
	combout => \cd|counter[6]~37_combout\,
	cout => \cd|counter[6]~38\);

-- Location: FF_X26_Y26_N17
\cd|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[6]~37_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(6));

-- Location: LCCOMB_X26_Y26_N18
\cd|counter[7]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[7]~39_combout\ = (\cd|counter\(7) & (\cd|counter[6]~38\ $ (GND))) # (!\cd|counter\(7) & (!\cd|counter[6]~38\ & VCC))
-- \cd|counter[7]~40\ = CARRY((\cd|counter\(7) & !\cd|counter[6]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(7),
	datad => VCC,
	cin => \cd|counter[6]~38\,
	combout => \cd|counter[7]~39_combout\,
	cout => \cd|counter[7]~40\);

-- Location: FF_X26_Y26_N19
\cd|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[7]~39_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(7));

-- Location: LCCOMB_X26_Y26_N20
\cd|counter[8]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[8]~41_combout\ = (\cd|counter\(8) & (!\cd|counter[7]~40\)) # (!\cd|counter\(8) & ((\cd|counter[7]~40\) # (GND)))
-- \cd|counter[8]~42\ = CARRY((!\cd|counter[7]~40\) # (!\cd|counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(8),
	datad => VCC,
	cin => \cd|counter[7]~40\,
	combout => \cd|counter[8]~41_combout\,
	cout => \cd|counter[8]~42\);

-- Location: FF_X26_Y26_N21
\cd|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[8]~41_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(8));

-- Location: LCCOMB_X26_Y26_N22
\cd|counter[9]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[9]~43_combout\ = (\cd|counter\(9) & (\cd|counter[8]~42\ $ (GND))) # (!\cd|counter\(9) & (!\cd|counter[8]~42\ & VCC))
-- \cd|counter[9]~44\ = CARRY((\cd|counter\(9) & !\cd|counter[8]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(9),
	datad => VCC,
	cin => \cd|counter[8]~42\,
	combout => \cd|counter[9]~43_combout\,
	cout => \cd|counter[9]~44\);

-- Location: LCCOMB_X26_Y26_N24
\cd|counter[10]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[10]~45_combout\ = (\cd|counter\(10) & (!\cd|counter[9]~44\)) # (!\cd|counter\(10) & ((\cd|counter[9]~44\) # (GND)))
-- \cd|counter[10]~46\ = CARRY((!\cd|counter[9]~44\) # (!\cd|counter\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(10),
	datad => VCC,
	cin => \cd|counter[9]~44\,
	combout => \cd|counter[10]~45_combout\,
	cout => \cd|counter[10]~46\);

-- Location: FF_X26_Y26_N25
\cd|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[10]~45_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(10));

-- Location: LCCOMB_X26_Y26_N26
\cd|counter[11]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[11]~47_combout\ = (\cd|counter\(11) & (\cd|counter[10]~46\ $ (GND))) # (!\cd|counter\(11) & (!\cd|counter[10]~46\ & VCC))
-- \cd|counter[11]~48\ = CARRY((\cd|counter\(11) & !\cd|counter[10]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(11),
	datad => VCC,
	cin => \cd|counter[10]~46\,
	combout => \cd|counter[11]~47_combout\,
	cout => \cd|counter[11]~48\);

-- Location: LCCOMB_X26_Y26_N28
\cd|counter[12]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[12]~49_combout\ = (\cd|counter\(12) & (!\cd|counter[11]~48\)) # (!\cd|counter\(12) & ((\cd|counter[11]~48\) # (GND)))
-- \cd|counter[12]~50\ = CARRY((!\cd|counter[11]~48\) # (!\cd|counter\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(12),
	datad => VCC,
	cin => \cd|counter[11]~48\,
	combout => \cd|counter[12]~49_combout\,
	cout => \cd|counter[12]~50\);

-- Location: FF_X26_Y26_N29
\cd|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[12]~49_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(12));

-- Location: LCCOMB_X26_Y25_N0
\cd|counter[14]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[14]~53_combout\ = (\cd|counter\(14) & (!\cd|counter[13]~52\)) # (!\cd|counter\(14) & ((\cd|counter[13]~52\) # (GND)))
-- \cd|counter[14]~54\ = CARRY((!\cd|counter[13]~52\) # (!\cd|counter\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(14),
	datad => VCC,
	cin => \cd|counter[13]~52\,
	combout => \cd|counter[14]~53_combout\,
	cout => \cd|counter[14]~54\);

-- Location: FF_X26_Y26_N1
\cd|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \cd|counter[14]~53_combout\,
	sload => VCC,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(14));

-- Location: LCCOMB_X26_Y25_N2
\cd|counter[15]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[15]~55_combout\ = (\cd|counter\(15) & (\cd|counter[14]~54\ $ (GND))) # (!\cd|counter\(15) & (!\cd|counter[14]~54\ & VCC))
-- \cd|counter[15]~56\ = CARRY((\cd|counter\(15) & !\cd|counter[14]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(15),
	datad => VCC,
	cin => \cd|counter[14]~54\,
	combout => \cd|counter[15]~55_combout\,
	cout => \cd|counter[15]~56\);

-- Location: FF_X26_Y25_N3
\cd|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[15]~55_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(15));

-- Location: LCCOMB_X26_Y25_N4
\cd|counter[16]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[16]~57_combout\ = (\cd|counter\(16) & (!\cd|counter[15]~56\)) # (!\cd|counter\(16) & ((\cd|counter[15]~56\) # (GND)))
-- \cd|counter[16]~58\ = CARRY((!\cd|counter[15]~56\) # (!\cd|counter\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(16),
	datad => VCC,
	cin => \cd|counter[15]~56\,
	combout => \cd|counter[16]~57_combout\,
	cout => \cd|counter[16]~58\);

-- Location: FF_X26_Y25_N5
\cd|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[16]~57_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(16));

-- Location: LCCOMB_X26_Y25_N8
\cd|counter[18]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[18]~61_combout\ = (\cd|counter\(18) & (!\cd|counter[17]~60\)) # (!\cd|counter\(18) & ((\cd|counter[17]~60\) # (GND)))
-- \cd|counter[18]~62\ = CARRY((!\cd|counter[17]~60\) # (!\cd|counter\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(18),
	datad => VCC,
	cin => \cd|counter[17]~60\,
	combout => \cd|counter[18]~61_combout\,
	cout => \cd|counter[18]~62\);

-- Location: FF_X26_Y25_N9
\cd|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[18]~61_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(18));

-- Location: LCCOMB_X26_Y25_N10
\cd|counter[19]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[19]~63_combout\ = (\cd|counter\(19) & (\cd|counter[18]~62\ $ (GND))) # (!\cd|counter\(19) & (!\cd|counter[18]~62\ & VCC))
-- \cd|counter[19]~64\ = CARRY((\cd|counter\(19) & !\cd|counter[18]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(19),
	datad => VCC,
	cin => \cd|counter[18]~62\,
	combout => \cd|counter[19]~63_combout\,
	cout => \cd|counter[19]~64\);

-- Location: LCCOMB_X26_Y25_N12
\cd|counter[20]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[20]~65_combout\ = (\cd|counter\(20) & (!\cd|counter[19]~64\)) # (!\cd|counter\(20) & ((\cd|counter[19]~64\) # (GND)))
-- \cd|counter[20]~66\ = CARRY((!\cd|counter[19]~64\) # (!\cd|counter\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(20),
	datad => VCC,
	cin => \cd|counter[19]~64\,
	combout => \cd|counter[20]~65_combout\,
	cout => \cd|counter[20]~66\);

-- Location: FF_X26_Y25_N13
\cd|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[20]~65_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(20));

-- Location: LCCOMB_X26_Y25_N16
\cd|counter[22]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[22]~69_combout\ = (\cd|counter\(22) & (!\cd|counter[21]~68\)) # (!\cd|counter\(22) & ((\cd|counter[21]~68\) # (GND)))
-- \cd|counter[22]~70\ = CARRY((!\cd|counter[21]~68\) # (!\cd|counter\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(22),
	datad => VCC,
	cin => \cd|counter[21]~68\,
	combout => \cd|counter[22]~69_combout\,
	cout => \cd|counter[22]~70\);

-- Location: FF_X26_Y25_N17
\cd|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[22]~69_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(22));

-- Location: LCCOMB_X26_Y25_N20
\cd|counter[24]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[24]~73_combout\ = (\cd|counter\(24) & (!\cd|counter[23]~72\)) # (!\cd|counter\(24) & ((\cd|counter[23]~72\) # (GND)))
-- \cd|counter[24]~74\ = CARRY((!\cd|counter[23]~72\) # (!\cd|counter\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(24),
	datad => VCC,
	cin => \cd|counter[23]~72\,
	combout => \cd|counter[24]~73_combout\,
	cout => \cd|counter[24]~74\);

-- Location: FF_X26_Y25_N21
\cd|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[24]~73_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(24));

-- Location: LCCOMB_X26_Y25_N22
\cd|counter[25]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[25]~75_combout\ = (\cd|counter\(25) & (\cd|counter[24]~74\ $ (GND))) # (!\cd|counter\(25) & (!\cd|counter[24]~74\ & VCC))
-- \cd|counter[25]~76\ = CARRY((\cd|counter\(25) & !\cd|counter[24]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(25),
	datad => VCC,
	cin => \cd|counter[24]~74\,
	combout => \cd|counter[25]~75_combout\,
	cout => \cd|counter[25]~76\);

-- Location: FF_X26_Y25_N23
\cd|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[25]~75_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(25));

-- Location: LCCOMB_X26_Y25_N24
\cd|counter[26]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|counter[26]~77_combout\ = \cd|counter\(26) $ (\cd|counter[25]~76\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(26),
	cin => \cd|counter[25]~76\,
	combout => \cd|counter[26]~77_combout\);

-- Location: FF_X26_Y25_N25
\cd|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[26]~77_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(26));

-- Location: LCCOMB_X26_Y25_N26
\cd|Equal0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~7_combout\ = (\cd|counter\(24) & (!\cd|counter\(25) & \cd|counter\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|counter\(24),
	datac => \cd|counter\(25),
	datad => \cd|counter\(26),
	combout => \cd|Equal0~7_combout\);

-- Location: FF_X26_Y25_N11
\cd|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[19]~63_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(19));

-- Location: LCCOMB_X26_Y25_N30
\cd|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~5_combout\ = (!\cd|counter\(17) & (\cd|counter\(18) & (\cd|counter\(16) & !\cd|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(17),
	datab => \cd|counter\(18),
	datac => \cd|counter\(16),
	datad => \cd|counter\(19),
	combout => \cd|Equal0~5_combout\);

-- Location: LCCOMB_X26_Y26_N0
\cd|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~3_combout\ = (\cd|counter\(13) & (!\cd|counter\(12) & (\cd|counter\(14) & \cd|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(13),
	datab => \cd|counter\(12),
	datac => \cd|counter\(14),
	datad => \cd|counter\(15),
	combout => \cd|Equal0~3_combout\);

-- Location: FF_X26_Y26_N13
\cd|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[4]~33_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(4));

-- Location: LCCOMB_X27_Y26_N12
\cd|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~1_combout\ = (!\cd|counter\(5) & (!\cd|counter\(7) & (!\cd|counter\(6) & !\cd|counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(5),
	datab => \cd|counter\(7),
	datac => \cd|counter\(6),
	datad => \cd|counter\(4),
	combout => \cd|Equal0~1_combout\);

-- Location: FF_X26_Y26_N23
\cd|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[9]~43_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(9));

-- Location: FF_X26_Y26_N27
\cd|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \cd|counter[11]~47_combout\,
	ena => \cd|Equal0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cd|counter\(11));

-- Location: LCCOMB_X25_Y26_N24
\cd|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~2_combout\ = (\cd|counter\(8) & (!\cd|counter\(9) & (!\cd|counter\(10) & !\cd|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|counter\(8),
	datab => \cd|counter\(9),
	datac => \cd|counter\(10),
	datad => \cd|counter\(11),
	combout => \cd|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y26_N2
\cd|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~4_combout\ = (\cd|Equal0~0_combout\ & (\cd|Equal0~3_combout\ & (\cd|Equal0~1_combout\ & \cd|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~0_combout\,
	datab => \cd|Equal0~3_combout\,
	datac => \cd|Equal0~1_combout\,
	datad => \cd|Equal0~2_combout\,
	combout => \cd|Equal0~4_combout\);

-- Location: LCCOMB_X26_Y26_N4
\cd|Equal0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|Equal0~8_combout\ = (((!\cd|Equal0~4_combout\) # (!\cd|Equal0~5_combout\)) # (!\cd|Equal0~7_combout\)) # (!\cd|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cd|Equal0~6_combout\,
	datab => \cd|Equal0~7_combout\,
	datac => \cd|Equal0~5_combout\,
	datad => \cd|Equal0~4_combout\,
	combout => \cd|Equal0~8_combout\);

-- Location: LCCOMB_X27_Y26_N10
\cd|clk_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|clk_tmp~0_combout\ = \cd|clk_tmp~q\ $ (!\cd|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cd|clk_tmp~q\,
	datac => \cd|Equal0~8_combout\,
	combout => \cd|clk_tmp~0_combout\);

-- Location: LCCOMB_X27_Y26_N28
\cd|clk_tmp~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \cd|clk_tmp~feeder_combout\ = \cd|clk_tmp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cd|clk_tmp~0_combout\,
	combout => \cd|clk_tmp~feeder_combout\);

-- Location: FF_X27_Y26_N29
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

-- Location: CLKCTRL_G12
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

-- Location: IOIBUF_X52_Y18_N8
\OE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OE,
	o => \OE~input_o\);

-- Location: IOIBUF_X43_Y41_N1
\IE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IE,
	o => \IE~input_o\);

-- Location: IOIBUF_X52_Y23_N8
\OP[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: LCCOMB_X48_Y39_N4
\sweden_is_great|sum_rtl[9]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~7_combout\ = (!\OP[2]~input_o\ & (\OP[1]~input_o\ & ((\OE~input_o\) # (!\IE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OE~input_o\,
	datac => \IE~input_o\,
	datad => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~7_combout\);

-- Location: IOIBUF_X52_Y16_N1
\OP[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LCCOMB_X48_Y39_N30
\sweden_is_great|sum_rtl[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~3_combout\ = (\OP[1]~input_o\) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[2]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~3_combout\);

-- Location: IOIBUF_X48_Y41_N8
\RA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

-- Location: IOIBUF_X46_Y41_N22
\RA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: IOIBUF_X52_Y19_N8
\INPUT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X49_Y37_N20
\rf|register_arr~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~11_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[0]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sweden_is_great|sum_rtl\(0),
	datac => \INPUT[0]~input_o\,
	datad => \IE~input_o\,
	combout => \rf|register_arr~11_combout\);

-- Location: IOIBUF_X52_Y31_N1
\Write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write,
	o => \Write~input_o\);

-- Location: LCCOMB_X50_Y38_N18
\rf|register_arr[5][6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][6]~1_combout\ = (\WAddr[0]~input_o\ & \Write~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[0]~input_o\,
	datad => \Write~input_o\,
	combout => \rf|register_arr[5][6]~1_combout\);

-- Location: IOIBUF_X46_Y41_N15
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: IOIBUF_X52_Y31_N8
\WAddr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(1),
	o => \WAddr[1]~input_o\);

-- Location: LCCOMB_X50_Y38_N12
\rf|register_arr[5][6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][6]~2_combout\ = (\RESET~input_o\) # ((\WAddr[2]~input_o\ & (\rf|register_arr[5][6]~1_combout\ & !\WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[5][6]~1_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[5][6]~2_combout\);

-- Location: FF_X50_Y38_N25
\rf|register_arr[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][0]~q\);

-- Location: LCCOMB_X49_Y38_N18
\rf|register_arr[6][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[6][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y38_N24
\rf|register_arr[6][4]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][4]~3_combout\ = (!\WAddr[0]~input_o\ & \Write~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[0]~input_o\,
	datad => \Write~input_o\,
	combout => \rf|register_arr[6][4]~3_combout\);

-- Location: LCCOMB_X50_Y38_N22
\rf|register_arr[6][4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][4]~4_combout\ = (\RESET~input_o\) # ((\WAddr[2]~input_o\ & (\rf|register_arr[6][4]~3_combout\ & \WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[6][4]~3_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[6][4]~4_combout\);

-- Location: FF_X49_Y38_N19
\rf|register_arr[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[6][0]~feeder_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][0]~q\);

-- Location: IOIBUF_X46_Y41_N8
\RA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: LCCOMB_X50_Y38_N20
\rf|register_arr[4][8]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][8]~5_combout\ = (\RESET~input_o\) # ((\WAddr[2]~input_o\ & (\rf|register_arr[6][4]~3_combout\ & !\WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[6][4]~3_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[4][8]~5_combout\);

-- Location: FF_X50_Y38_N19
\rf|register_arr[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][0]~q\);

-- Location: LCCOMB_X49_Y38_N16
\rf|QA[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~5_combout\ = (\RA[0]~input_o\ & (((\RA[1]~input_o\)))) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][0]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[6][0]~q\,
	datac => \RA[1]~input_o\,
	datad => \rf|register_arr[4][0]~q\,
	combout => \rf|QA[0]~5_combout\);

-- Location: LCCOMB_X46_Y37_N22
\rf|QA[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~6_combout\ = (\RA[0]~input_o\ & ((\rf|QA[0]~5_combout\ & (\rf|register_arr[7][0]~q\)) # (!\rf|QA[0]~5_combout\ & ((\rf|register_arr[5][0]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][0]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[5][0]~q\,
	datad => \rf|QA[0]~5_combout\,
	combout => \rf|QA[0]~6_combout\);

-- Location: LCCOMB_X50_Y38_N16
\rf|register_arr[2][3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][3]~7_combout\ = (\RESET~input_o\) # ((!\WAddr[2]~input_o\ & (\rf|register_arr[6][4]~3_combout\ & \WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[6][4]~3_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[2][3]~7_combout\);

-- Location: FF_X47_Y38_N25
\rf|register_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][0]~q\);

-- Location: LCCOMB_X50_Y38_N26
\rf|register_arr[1][5]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][5]~8_combout\ = (\RESET~input_o\) # ((!\WAddr[2]~input_o\ & (\rf|register_arr[5][6]~1_combout\ & !\WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[5][6]~1_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[1][5]~8_combout\);

-- Location: FF_X47_Y38_N11
\rf|register_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][0]~q\);

-- Location: LCCOMB_X50_Y38_N8
\rf|register_arr[0][3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][3]~9_combout\ = (\RESET~input_o\) # ((!\WAddr[2]~input_o\ & (\rf|register_arr[6][4]~3_combout\ & !\WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[6][4]~3_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[0][3]~9_combout\);

-- Location: FF_X46_Y37_N5
\rf|register_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][0]~q\);

-- Location: LCCOMB_X47_Y38_N10
\rf|QA[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~7_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][0]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][0]~q\))))

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
	combout => \rf|QA[0]~7_combout\);

-- Location: LCCOMB_X47_Y38_N24
\rf|QA[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~8_combout\ = (\RA[1]~input_o\ & ((\rf|QA[0]~7_combout\ & (\rf|register_arr[3][0]~q\)) # (!\rf|QA[0]~7_combout\ & ((\rf|register_arr[2][0]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][0]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][0]~q\,
	datad => \rf|QA[0]~7_combout\,
	combout => \rf|QA[0]~8_combout\);

-- Location: LCCOMB_X46_Y37_N8
\rf|QA[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~9_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[0]~6_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[0]~6_combout\,
	datad => \rf|QA[0]~8_combout\,
	combout => \rf|QA[0]~9_combout\);

-- Location: IOIBUF_X52_Y21_N8
\ReadB~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadB,
	o => \ReadB~input_o\);

-- Location: LCCOMB_X46_Y37_N20
\rf|register_arr[3][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[3][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y38_N14
\rf|register_arr[3][5]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][5]~10_combout\ = (\RESET~input_o\) # ((!\WAddr[2]~input_o\ & (\rf|register_arr[5][6]~1_combout\ & \WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[5][6]~1_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[3][5]~10_combout\);

-- Location: FF_X46_Y37_N21
\rf|register_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[3][0]~feeder_combout\,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][0]~q\);

-- Location: IOIBUF_X52_Y21_N1
\RB[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(0),
	o => \RB[0]~input_o\);

-- Location: LCCOMB_X46_Y37_N6
\rf|QB[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~7_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & (\rf|register_arr[1][0]~q\)) # (!\RB[0]~input_o\ & ((\rf|register_arr[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[1][0]~q\,
	datad => \rf|register_arr[0][0]~q\,
	combout => \rf|QB[0]~7_combout\);

-- Location: LCCOMB_X46_Y37_N26
\rf|QB[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~8_combout\ = (\RB[1]~input_o\ & ((\rf|QB[0]~7_combout\ & (\rf|register_arr[3][0]~q\)) # (!\rf|QB[0]~7_combout\ & ((\rf|register_arr[2][0]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][0]~q\,
	datac => \rf|register_arr[2][0]~q\,
	datad => \rf|QB[0]~7_combout\,
	combout => \rf|QB[0]~8_combout\);

-- Location: LCCOMB_X49_Y37_N0
\rf|register_arr[7][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[7][0]~feeder_combout\);

-- Location: LCCOMB_X50_Y38_N10
\rf|register_arr[7][2]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][2]~6_combout\ = (\RESET~input_o\) # ((\WAddr[2]~input_o\ & (\rf|register_arr[5][6]~1_combout\ & \WAddr[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[2]~input_o\,
	datab => \rf|register_arr[5][6]~1_combout\,
	datac => \RESET~input_o\,
	datad => \WAddr[1]~input_o\,
	combout => \rf|register_arr[7][2]~6_combout\);

-- Location: FF_X49_Y37_N1
\rf|register_arr[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[7][0]~feeder_combout\,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][0]~q\);

-- Location: IOIBUF_X50_Y41_N1
\RB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LCCOMB_X50_Y38_N28
\rf|QB[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~5_combout\ = (\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][0]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[4][0]~q\,
	datac => \RB[1]~input_o\,
	datad => \rf|register_arr[6][0]~q\,
	combout => \rf|QB[0]~5_combout\);

-- Location: LCCOMB_X50_Y38_N30
\rf|QB[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~6_combout\ = (\RB[0]~input_o\ & ((\rf|QB[0]~5_combout\ & ((\rf|register_arr[7][0]~q\))) # (!\rf|QB[0]~5_combout\ & (\rf|register_arr[5][0]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][0]~q\,
	datac => \rf|register_arr[7][0]~q\,
	datad => \rf|QB[0]~5_combout\,
	combout => \rf|QB[0]~6_combout\);

-- Location: LCCOMB_X46_Y37_N12
\rf|QB[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~9_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[0]~6_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[0]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[0]~8_combout\,
	datad => \rf|QB[0]~6_combout\,
	combout => \rf|QB[0]~9_combout\);

-- Location: LCCOMB_X47_Y37_N2
\sweden_is_great|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~0_combout\ = \OP[0]~input_o\ $ (\rf|QB[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datad => \rf|QB[0]~9_combout\,
	combout => \sweden_is_great|Add0~0_combout\);

-- Location: LCCOMB_X47_Y37_N10
\sweden_is_great|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~2_cout\ = CARRY(\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datad => VCC,
	cout => \sweden_is_great|Add0~2_cout\);

-- Location: LCCOMB_X47_Y37_N12
\sweden_is_great|Add0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~3_combout\ = (\rf|QA[0]~9_combout\ & ((\sweden_is_great|Add0~0_combout\ & (\sweden_is_great|Add0~2_cout\ & VCC)) # (!\sweden_is_great|Add0~0_combout\ & (!\sweden_is_great|Add0~2_cout\)))) # (!\rf|QA[0]~9_combout\ & 
-- ((\sweden_is_great|Add0~0_combout\ & (!\sweden_is_great|Add0~2_cout\)) # (!\sweden_is_great|Add0~0_combout\ & ((\sweden_is_great|Add0~2_cout\) # (GND)))))
-- \sweden_is_great|Add0~4\ = CARRY((\rf|QA[0]~9_combout\ & (!\sweden_is_great|Add0~0_combout\ & !\sweden_is_great|Add0~2_cout\)) # (!\rf|QA[0]~9_combout\ & ((!\sweden_is_great|Add0~2_cout\) # (!\sweden_is_great|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[0]~9_combout\,
	datab => \sweden_is_great|Add0~0_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~2_cout\,
	combout => \sweden_is_great|Add0~3_combout\,
	cout => \sweden_is_great|Add0~4\);

-- Location: IOIBUF_X43_Y41_N8
\OP[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LCCOMB_X48_Y39_N14
\sweden_is_great|sum_rtl[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~0_combout\ = ((!\OP[0]~input_o\ & \OP[1]~input_o\)) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~0_combout\);

-- Location: LCCOMB_X46_Y37_N2
\sweden_is_great|sum_rtl~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~2_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[0]~9_combout\ & ((\sweden_is_great|sum_rtl[9]~0_combout\)))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (((\sweden_is_great|Add0~3_combout\) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~1_combout\,
	datab => \rf|QA[0]~9_combout\,
	datac => \sweden_is_great|Add0~3_combout\,
	datad => \sweden_is_great|sum_rtl[9]~0_combout\,
	combout => \sweden_is_great|sum_rtl~2_combout\);

-- Location: LCCOMB_X46_Y37_N28
\sweden_is_great|sum_rtl~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~4_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~2_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[0]~9_combout\ $ (((\rf|QB[0]~9_combout\) # 
-- (!\sweden_is_great|sum_rtl~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[0]~9_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \rf|QA[0]~9_combout\,
	datad => \sweden_is_great|sum_rtl~2_combout\,
	combout => \sweden_is_great|sum_rtl~4_combout\);

-- Location: LCCOMB_X49_Y37_N4
\sweden_is_great|sum_rtl~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~49_combout\ = (\sweden_is_great|sum_rtl~48_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(0))))) # (!\sweden_is_great|sum_rtl~48_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~48_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(0),
	datad => \sweden_is_great|sum_rtl~4_combout\,
	combout => \sweden_is_great|sum_rtl~49_combout\);

-- Location: FF_X49_Y37_N5
\sweden_is_great|sum_rtl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~49_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(0));

-- Location: IOIBUF_X52_Y30_N1
\INPUT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X49_Y37_N22
\rf|register_arr~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~12_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[1]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \IE~input_o\,
	datac => \INPUT[1]~input_o\,
	datad => \sweden_is_great|sum_rtl\(1),
	combout => \rf|register_arr~12_combout\);

-- Location: FF_X47_Y38_N21
\rf|register_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][1]~q\);

-- Location: FF_X48_Y37_N27
\rf|register_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][1]~q\);

-- Location: FF_X47_Y38_N7
\rf|register_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][1]~q\);

-- Location: LCCOMB_X48_Y37_N10
\rf|QB[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~12_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][1]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & (\rf|register_arr[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[0][1]~q\,
	datad => \rf|register_arr[1][1]~q\,
	combout => \rf|QB[1]~12_combout\);

-- Location: LCCOMB_X48_Y37_N0
\rf|QB[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~13_combout\ = (\RB[1]~input_o\ & ((\rf|QB[1]~12_combout\ & (\rf|register_arr[3][1]~q\)) # (!\rf|QB[1]~12_combout\ & ((\rf|register_arr[2][1]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][1]~q\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[2][1]~q\,
	datad => \rf|QB[1]~12_combout\,
	combout => \rf|QB[1]~13_combout\);

-- Location: LCCOMB_X47_Y39_N16
\rf|register_arr[7][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[7][1]~feeder_combout\);

-- Location: FF_X47_Y39_N17
\rf|register_arr[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[7][1]~feeder_combout\,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][1]~q\);

-- Location: LCCOMB_X49_Y38_N10
\rf|register_arr[5][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[5][1]~feeder_combout\);

-- Location: FF_X49_Y38_N11
\rf|register_arr[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[5][1]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][1]~q\);

-- Location: FF_X48_Y38_N1
\rf|register_arr[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][1]~q\);

-- Location: FF_X49_Y38_N29
\rf|register_arr[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][1]~q\);

-- Location: LCCOMB_X48_Y38_N0
\rf|QB[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~10_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][1]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][1]~q\,
	datad => \rf|register_arr[6][1]~q\,
	combout => \rf|QB[1]~10_combout\);

-- Location: LCCOMB_X47_Y39_N14
\rf|QB[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~11_combout\ = (\RB[0]~input_o\ & ((\rf|QB[1]~10_combout\ & (\rf|register_arr[7][1]~q\)) # (!\rf|QB[1]~10_combout\ & ((\rf|register_arr[5][1]~q\))))) # (!\RB[0]~input_o\ & (((\rf|QB[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[7][1]~q\,
	datac => \rf|register_arr[5][1]~q\,
	datad => \rf|QB[1]~10_combout\,
	combout => \rf|QB[1]~11_combout\);

-- Location: LCCOMB_X48_Y37_N22
\rf|QB[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~14_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[1]~11_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[1]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \rf|QB[1]~13_combout\,
	datac => \rf|QB[1]~11_combout\,
	datad => \ReadB~input_o\,
	combout => \rf|QB[1]~14_combout\);

-- Location: LCCOMB_X48_Y39_N0
\sweden_is_great|sum_rtl[9]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~5_combout\ = (\OE~input_o\) # (!\IE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IE~input_o\,
	datad => \OE~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~5_combout\);

-- Location: LCCOMB_X48_Y39_N26
\sweden_is_great|sum_rtl[9]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~6_combout\ = (\sweden_is_great|sum_rtl[9]~5_combout\ & ((\OP[2]~input_o\) # ((\OP[0]~input_o\) # (!\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \sweden_is_great|sum_rtl[9]~5_combout\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~6_combout\);

-- Location: LCCOMB_X49_Y38_N28
\rf|QA[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~10_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][1]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][1]~q\,
	datad => \rf|register_arr[4][1]~q\,
	combout => \rf|QA[1]~10_combout\);

-- Location: LCCOMB_X49_Y38_N14
\rf|QA[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~11_combout\ = (\RA[0]~input_o\ & ((\rf|QA[1]~10_combout\ & ((\rf|register_arr[7][1]~q\))) # (!\rf|QA[1]~10_combout\ & (\rf|register_arr[5][1]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[5][1]~q\,
	datac => \rf|register_arr[7][1]~q\,
	datad => \rf|QA[1]~10_combout\,
	combout => \rf|QA[1]~11_combout\);

-- Location: FF_X48_Y37_N9
\rf|register_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][1]~q\);

-- Location: LCCOMB_X47_Y38_N6
\rf|QA[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~12_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][1]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][1]~q\,
	datad => \rf|register_arr[0][1]~q\,
	combout => \rf|QA[1]~12_combout\);

-- Location: LCCOMB_X47_Y38_N20
\rf|QA[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~13_combout\ = (\RA[1]~input_o\ & ((\rf|QA[1]~12_combout\ & (\rf|register_arr[3][1]~q\)) # (!\rf|QA[1]~12_combout\ & ((\rf|register_arr[2][1]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[3][1]~q\,
	datac => \rf|register_arr[2][1]~q\,
	datad => \rf|QA[1]~12_combout\,
	combout => \rf|QA[1]~13_combout\);

-- Location: LCCOMB_X48_Y38_N30
\rf|QA[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~14_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[1]~11_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[1]~11_combout\,
	datad => \rf|QA[1]~13_combout\,
	combout => \rf|QA[1]~14_combout\);

-- Location: IOIBUF_X46_Y41_N1
\RB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(2),
	o => \RB[2]~input_o\);

-- Location: LCCOMB_X47_Y39_N0
\sweden_is_great|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~5_combout\ = ((!\RB[2]~input_o\ & !\rf|QB[1]~13_combout\)) # (!\ReadB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ReadB~input_o\,
	datac => \RB[2]~input_o\,
	datad => \rf|QB[1]~13_combout\,
	combout => \sweden_is_great|Add0~5_combout\);

-- Location: LCCOMB_X47_Y39_N6
\sweden_is_great|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~6_combout\ = \OP[0]~input_o\ $ (((!\sweden_is_great|Add0~5_combout\ & ((\rf|QB[1]~11_combout\) # (!\RB[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \rf|QB[1]~11_combout\,
	datad => \sweden_is_great|Add0~5_combout\,
	combout => \sweden_is_great|Add0~6_combout\);

-- Location: LCCOMB_X47_Y37_N14
\sweden_is_great|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~7_combout\ = ((\rf|QA[1]~14_combout\ $ (\sweden_is_great|Add0~6_combout\ $ (!\sweden_is_great|Add0~4\)))) # (GND)
-- \sweden_is_great|Add0~8\ = CARRY((\rf|QA[1]~14_combout\ & ((\sweden_is_great|Add0~6_combout\) # (!\sweden_is_great|Add0~4\))) # (!\rf|QA[1]~14_combout\ & (\sweden_is_great|Add0~6_combout\ & !\sweden_is_great|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[1]~14_combout\,
	datab => \sweden_is_great|Add0~6_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~4\,
	combout => \sweden_is_great|Add0~7_combout\,
	cout => \sweden_is_great|Add0~8\);

-- Location: LCCOMB_X51_Y37_N18
\sweden_is_great|sum_rtl~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~8_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & (\sweden_is_great|sum_rtl[9]~0_combout\ & (\rf|QA[1]~14_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (((\sweden_is_great|Add0~7_combout\)) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~1_combout\,
	datab => \sweden_is_great|sum_rtl[9]~0_combout\,
	datac => \rf|QA[1]~14_combout\,
	datad => \sweden_is_great|Add0~7_combout\,
	combout => \sweden_is_great|sum_rtl~8_combout\);

-- Location: LCCOMB_X51_Y37_N0
\sweden_is_great|sum_rtl~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~9_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~8_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[1]~14_combout\ $ (((\rf|QB[1]~14_combout\) # 
-- (!\sweden_is_great|sum_rtl~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QA[1]~14_combout\,
	datac => \rf|QB[1]~14_combout\,
	datad => \sweden_is_great|sum_rtl~8_combout\,
	combout => \sweden_is_great|sum_rtl~9_combout\);

-- Location: LCCOMB_X51_Y37_N2
\sweden_is_great|sum_rtl~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~10_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl[9]~6_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl~9_combout\))) 
-- # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(1),
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl[9]~6_combout\,
	datad => \sweden_is_great|sum_rtl~9_combout\,
	combout => \sweden_is_great|sum_rtl~10_combout\);

-- Location: LCCOMB_X51_Y37_N8
\sweden_is_great|sum_rtl~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~11_combout\ = (\rf|QA[1]~14_combout\ & ((\sweden_is_great|sum_rtl~10_combout\) # ((\sweden_is_great|sum_rtl[9]~7_combout\ & \rf|QB[1]~14_combout\)))) # (!\rf|QA[1]~14_combout\ & (\sweden_is_great|sum_rtl~10_combout\ & 
-- ((\rf|QB[1]~14_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[1]~14_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QB[1]~14_combout\,
	datad => \sweden_is_great|sum_rtl~10_combout\,
	combout => \sweden_is_great|sum_rtl~11_combout\);

-- Location: FF_X51_Y37_N9
\sweden_is_great|sum_rtl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~11_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(1));

-- Location: IOIBUF_X41_Y41_N22
\INPUT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: LCCOMB_X49_Y38_N6
\rf|register_arr~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~13_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[2]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IE~input_o\,
	datab => \RESET~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \sweden_is_great|sum_rtl\(2),
	combout => \rf|register_arr~13_combout\);

-- Location: FF_X47_Y38_N9
\rf|register_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][2]~q\);

-- Location: FF_X46_Y38_N15
\rf|register_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][2]~q\);

-- Location: FF_X46_Y38_N25
\rf|register_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][2]~q\);

-- Location: FF_X47_Y38_N3
\rf|register_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][2]~q\);

-- Location: LCCOMB_X46_Y38_N24
\rf|QB[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~17_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][2]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][2]~q\,
	datad => \rf|register_arr[1][2]~q\,
	combout => \rf|QB[2]~17_combout\);

-- Location: LCCOMB_X46_Y38_N14
\rf|QB[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~18_combout\ = (\RB[1]~input_o\ & ((\rf|QB[2]~17_combout\ & ((\rf|register_arr[3][2]~q\))) # (!\rf|QB[2]~17_combout\ & (\rf|register_arr[2][2]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][2]~q\,
	datac => \rf|register_arr[3][2]~q\,
	datad => \rf|QB[2]~17_combout\,
	combout => \rf|QB[2]~18_combout\);

-- Location: FF_X49_Y38_N13
\rf|register_arr[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][2]~q\);

-- Location: FF_X48_Y38_N7
\rf|register_arr[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][2]~q\);

-- Location: FF_X48_Y38_N13
\rf|register_arr[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][2]~q\);

-- Location: FF_X49_Y38_N7
\rf|register_arr[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~13_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][2]~q\);

-- Location: LCCOMB_X48_Y38_N12
\rf|QB[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~15_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][2]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][2]~q\,
	datad => \rf|register_arr[6][2]~q\,
	combout => \rf|QB[2]~15_combout\);

-- Location: LCCOMB_X48_Y38_N6
\rf|QB[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~16_combout\ = (\RB[0]~input_o\ & ((\rf|QB[2]~15_combout\ & ((\rf|register_arr[7][2]~q\))) # (!\rf|QB[2]~15_combout\ & (\rf|register_arr[5][2]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][2]~q\,
	datac => \rf|register_arr[7][2]~q\,
	datad => \rf|QB[2]~15_combout\,
	combout => \rf|QB[2]~16_combout\);

-- Location: LCCOMB_X46_Y38_N8
\rf|QB[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~19_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[2]~16_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[2]~18_combout\,
	datad => \rf|QB[2]~16_combout\,
	combout => \rf|QB[2]~19_combout\);

-- Location: IOIBUF_X48_Y41_N1
\ReadA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadA,
	o => \ReadA~input_o\);

-- Location: LCCOMB_X47_Y38_N2
\rf|QA[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~17_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][2]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][2]~q\,
	datad => \rf|register_arr[0][2]~q\,
	combout => \rf|QA[2]~17_combout\);

-- Location: LCCOMB_X47_Y38_N8
\rf|QA[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~18_combout\ = (\RA[1]~input_o\ & ((\rf|QA[2]~17_combout\ & (\rf|register_arr[3][2]~q\)) # (!\rf|QA[2]~17_combout\ & ((\rf|register_arr[2][2]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][2]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][2]~q\,
	datad => \rf|QA[2]~17_combout\,
	combout => \rf|QA[2]~18_combout\);

-- Location: LCCOMB_X49_Y38_N24
\rf|QA[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~15_combout\ = (\RA[1]~input_o\ & ((\rf|register_arr[6][2]~q\) # ((\RA[0]~input_o\)))) # (!\RA[1]~input_o\ & (((!\RA[0]~input_o\ & \rf|register_arr[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[6][2]~q\,
	datab => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \rf|register_arr[4][2]~q\,
	combout => \rf|QA[2]~15_combout\);

-- Location: LCCOMB_X49_Y38_N26
\rf|QA[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~16_combout\ = (\RA[0]~input_o\ & ((\rf|QA[2]~15_combout\ & ((\rf|register_arr[7][2]~q\))) # (!\rf|QA[2]~15_combout\ & (\rf|register_arr[5][2]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][2]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[7][2]~q\,
	datad => \rf|QA[2]~15_combout\,
	combout => \rf|QA[2]~16_combout\);

-- Location: LCCOMB_X48_Y37_N4
\rf|QA[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~19_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[2]~16_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[2]~18_combout\,
	datad => \rf|QA[2]~16_combout\,
	combout => \rf|QA[2]~19_combout\);

-- Location: LCCOMB_X46_Y38_N30
\sweden_is_great|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~9_combout\ = \OP[0]~input_o\ $ (\rf|QB[2]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datac => \rf|QB[2]~19_combout\,
	combout => \sweden_is_great|Add0~9_combout\);

-- Location: LCCOMB_X47_Y37_N16
\sweden_is_great|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~10_combout\ = (\rf|QA[2]~19_combout\ & ((\sweden_is_great|Add0~9_combout\ & (\sweden_is_great|Add0~8\ & VCC)) # (!\sweden_is_great|Add0~9_combout\ & (!\sweden_is_great|Add0~8\)))) # (!\rf|QA[2]~19_combout\ & 
-- ((\sweden_is_great|Add0~9_combout\ & (!\sweden_is_great|Add0~8\)) # (!\sweden_is_great|Add0~9_combout\ & ((\sweden_is_great|Add0~8\) # (GND)))))
-- \sweden_is_great|Add0~11\ = CARRY((\rf|QA[2]~19_combout\ & (!\sweden_is_great|Add0~9_combout\ & !\sweden_is_great|Add0~8\)) # (!\rf|QA[2]~19_combout\ & ((!\sweden_is_great|Add0~8\) # (!\sweden_is_great|Add0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[2]~19_combout\,
	datab => \sweden_is_great|Add0~9_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~8\,
	combout => \sweden_is_great|Add0~10_combout\,
	cout => \sweden_is_great|Add0~11\);

-- Location: LCCOMB_X48_Y39_N28
\sweden_is_great|sum_rtl[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~1_combout\ = (\OP[2]~input_o\ & ((\OP[0]~input_o\) # (\OP[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datac => \OP[0]~input_o\,
	datad => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~1_combout\);

-- Location: LCCOMB_X48_Y37_N2
\sweden_is_great|sum_rtl~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~12_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[2]~19_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~10_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[2]~19_combout\,
	datac => \sweden_is_great|Add0~10_combout\,
	datad => \sweden_is_great|sum_rtl[9]~1_combout\,
	combout => \sweden_is_great|sum_rtl~12_combout\);

-- Location: LCCOMB_X48_Y37_N20
\sweden_is_great|sum_rtl~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~13_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~12_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[2]~19_combout\ $ (((\rf|QB[2]~19_combout\) # 
-- (!\sweden_is_great|sum_rtl~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QB[2]~19_combout\,
	datac => \rf|QA[2]~19_combout\,
	datad => \sweden_is_great|sum_rtl~12_combout\,
	combout => \sweden_is_great|sum_rtl~13_combout\);

-- Location: LCCOMB_X49_Y37_N30
\sweden_is_great|sum_rtl~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~47_combout\ = (\sweden_is_great|sum_rtl~46_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(2))))) # (!\sweden_is_great|sum_rtl~46_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~46_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(2),
	datad => \sweden_is_great|sum_rtl~13_combout\,
	combout => \sweden_is_great|sum_rtl~47_combout\);

-- Location: FF_X49_Y37_N31
\sweden_is_great|sum_rtl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~47_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(2));

-- Location: IOIBUF_X52_Y25_N1
\INPUT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X49_Y37_N12
\rf|register_arr~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~14_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[3]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sweden_is_great|sum_rtl\(3),
	datac => \INPUT[3]~input_o\,
	datad => \IE~input_o\,
	combout => \rf|register_arr~14_combout\);

-- Location: FF_X48_Y38_N23
\rf|register_arr[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][3]~q\);

-- Location: FF_X49_Y38_N1
\rf|register_arr[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][3]~q\);

-- Location: FF_X49_Y38_N3
\rf|register_arr[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][3]~q\);

-- Location: FF_X48_Y38_N21
\rf|register_arr[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][3]~q\);

-- Location: LCCOMB_X49_Y38_N2
\rf|QA[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~20_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][3]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][3]~q\,
	datad => \rf|register_arr[4][3]~q\,
	combout => \rf|QA[3]~20_combout\);

-- Location: LCCOMB_X49_Y38_N20
\rf|QA[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~21_combout\ = (\RA[0]~input_o\ & ((\rf|QA[3]~20_combout\ & (\rf|register_arr[7][3]~q\)) # (!\rf|QA[3]~20_combout\ & ((\rf|register_arr[5][3]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][3]~q\,
	datac => \rf|register_arr[5][3]~q\,
	datad => \rf|QA[3]~20_combout\,
	combout => \rf|QA[3]~21_combout\);

-- Location: FF_X47_Y38_N29
\rf|register_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][3]~q\);

-- Location: FF_X47_Y38_N19
\rf|register_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][3]~q\);

-- Location: FF_X46_Y38_N21
\rf|register_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][3]~q\);

-- Location: LCCOMB_X47_Y38_N18
\rf|QA[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~22_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][3]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][3]~q\,
	datad => \rf|register_arr[0][3]~q\,
	combout => \rf|QA[3]~22_combout\);

-- Location: LCCOMB_X47_Y38_N28
\rf|QA[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~23_combout\ = (\RA[1]~input_o\ & ((\rf|QA[3]~22_combout\ & (\rf|register_arr[3][3]~q\)) # (!\rf|QA[3]~22_combout\ & ((\rf|register_arr[2][3]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][3]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][3]~q\,
	datad => \rf|QA[3]~22_combout\,
	combout => \rf|QA[3]~23_combout\);

-- Location: LCCOMB_X48_Y38_N28
\rf|QA[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~24_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[3]~21_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[3]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[3]~21_combout\,
	datad => \rf|QA[3]~23_combout\,
	combout => \rf|QA[3]~24_combout\);

-- Location: LCCOMB_X47_Y37_N18
\sweden_is_great|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~13_combout\ = ((\sweden_is_great|Add0~12_combout\ $ (\rf|QA[3]~24_combout\ $ (!\sweden_is_great|Add0~11\)))) # (GND)
-- \sweden_is_great|Add0~14\ = CARRY((\sweden_is_great|Add0~12_combout\ & ((\rf|QA[3]~24_combout\) # (!\sweden_is_great|Add0~11\))) # (!\sweden_is_great|Add0~12_combout\ & (\rf|QA[3]~24_combout\ & !\sweden_is_great|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~12_combout\,
	datab => \rf|QA[3]~24_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~11\,
	combout => \sweden_is_great|Add0~13_combout\,
	cout => \sweden_is_great|Add0~14\);

-- Location: LCCOMB_X50_Y37_N20
\sweden_is_great|sum_rtl~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~14_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[3]~24_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~13_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[3]~24_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|Add0~13_combout\,
	combout => \sweden_is_great|sum_rtl~14_combout\);

-- Location: LCCOMB_X50_Y37_N18
\sweden_is_great|sum_rtl~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~15_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~14_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[3]~24_combout\ $ (((\rf|QB[3]~24_combout\) # 
-- (!\sweden_is_great|sum_rtl~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[3]~24_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \rf|QA[3]~24_combout\,
	datad => \sweden_is_great|sum_rtl~14_combout\,
	combout => \sweden_is_great|sum_rtl~15_combout\);

-- Location: LCCOMB_X50_Y37_N16
\sweden_is_great|sum_rtl~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~16_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl[9]~6_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\ & 
-- ((\sweden_is_great|sum_rtl~15_combout\))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(3),
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl[9]~6_combout\,
	datad => \sweden_is_great|sum_rtl~15_combout\,
	combout => \sweden_is_great|sum_rtl~16_combout\);

-- Location: LCCOMB_X50_Y37_N8
\sweden_is_great|sum_rtl~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~17_combout\ = (\rf|QB[3]~24_combout\ & ((\sweden_is_great|sum_rtl~16_combout\) # ((\sweden_is_great|sum_rtl[9]~7_combout\ & \rf|QA[3]~24_combout\)))) # (!\rf|QB[3]~24_combout\ & (\sweden_is_great|sum_rtl~16_combout\ & 
-- ((\rf|QA[3]~24_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[3]~24_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QA[3]~24_combout\,
	datad => \sweden_is_great|sum_rtl~16_combout\,
	combout => \sweden_is_great|sum_rtl~17_combout\);

-- Location: FF_X50_Y37_N9
\sweden_is_great|sum_rtl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~17_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(3));

-- Location: IOIBUF_X52_Y19_N1
\INPUT[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(4),
	o => \INPUT[4]~input_o\);

-- Location: LCCOMB_X49_Y37_N6
\rf|register_arr~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~15_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[4]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \INPUT[4]~input_o\,
	datac => \sweden_is_great|sum_rtl\(4),
	datad => \IE~input_o\,
	combout => \rf|register_arr~15_combout\);

-- Location: FF_X48_Y38_N9
\rf|register_arr[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][4]~q\);

-- Location: FF_X49_Y38_N5
\rf|register_arr[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][4]~q\);

-- Location: FF_X48_Y38_N11
\rf|register_arr[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][4]~q\);

-- Location: LCCOMB_X49_Y38_N4
\rf|QA[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~25_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][4]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][4]~q\,
	datad => \rf|register_arr[4][4]~q\,
	combout => \rf|QA[4]~25_combout\);

-- Location: LCCOMB_X48_Y38_N26
\rf|QA[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~26_combout\ = (\rf|QA[4]~25_combout\ & (((\rf|register_arr[7][4]~q\) # (!\RA[0]~input_o\)))) # (!\rf|QA[4]~25_combout\ & (\rf|register_arr[5][4]~q\ & ((\RA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][4]~q\,
	datab => \rf|register_arr[7][4]~q\,
	datac => \rf|QA[4]~25_combout\,
	datad => \RA[0]~input_o\,
	combout => \rf|QA[4]~26_combout\);

-- Location: FF_X47_Y38_N13
\rf|register_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][4]~q\);

-- Location: FF_X46_Y38_N3
\rf|register_arr[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][4]~q\);

-- Location: LCCOMB_X47_Y38_N12
\rf|QA[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~28_combout\ = (\rf|QA[4]~27_combout\ & (((\rf|register_arr[3][4]~q\)) # (!\RA[1]~input_o\))) # (!\rf|QA[4]~27_combout\ & (\RA[1]~input_o\ & (\rf|register_arr[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[4]~27_combout\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][4]~q\,
	datad => \rf|register_arr[3][4]~q\,
	combout => \rf|QA[4]~28_combout\);

-- Location: LCCOMB_X48_Y38_N4
\rf|QA[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~29_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[4]~26_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[4]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[4]~26_combout\,
	datad => \rf|QA[4]~28_combout\,
	combout => \rf|QA[4]~29_combout\);

-- Location: LCCOMB_X48_Y38_N10
\rf|QB[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~25_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][4]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][4]~q\,
	datad => \rf|register_arr[6][4]~q\,
	combout => \rf|QB[4]~25_combout\);

-- Location: LCCOMB_X48_Y38_N8
\rf|QB[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~26_combout\ = (\RB[0]~input_o\ & ((\rf|QB[4]~25_combout\ & ((\rf|register_arr[7][4]~q\))) # (!\rf|QB[4]~25_combout\ & (\rf|register_arr[5][4]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][4]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[7][4]~q\,
	datad => \rf|QB[4]~25_combout\,
	combout => \rf|QB[4]~26_combout\);

-- Location: FF_X46_Y38_N29
\rf|register_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][4]~q\);

-- Location: FF_X47_Y38_N31
\rf|register_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][4]~q\);

-- Location: LCCOMB_X46_Y38_N28
\rf|QB[4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~27_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][4]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][4]~q\,
	datad => \rf|register_arr[1][4]~q\,
	combout => \rf|QB[4]~27_combout\);

-- Location: LCCOMB_X46_Y38_N2
\rf|QB[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~28_combout\ = (\RB[1]~input_o\ & ((\rf|QB[4]~27_combout\ & ((\rf|register_arr[3][4]~q\))) # (!\rf|QB[4]~27_combout\ & (\rf|register_arr[2][4]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][4]~q\,
	datac => \rf|register_arr[3][4]~q\,
	datad => \rf|QB[4]~27_combout\,
	combout => \rf|QB[4]~28_combout\);

-- Location: LCCOMB_X46_Y38_N0
\rf|QB[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~29_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[4]~26_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[4]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[4]~26_combout\,
	datad => \rf|QB[4]~28_combout\,
	combout => \rf|QB[4]~29_combout\);

-- Location: LCCOMB_X46_Y38_N6
\sweden_is_great|Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~15_combout\ = \OP[0]~input_o\ $ (\rf|QB[4]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[4]~29_combout\,
	combout => \sweden_is_great|Add0~15_combout\);

-- Location: LCCOMB_X47_Y37_N20
\sweden_is_great|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~16_combout\ = (\rf|QA[4]~29_combout\ & ((\sweden_is_great|Add0~15_combout\ & (\sweden_is_great|Add0~14\ & VCC)) # (!\sweden_is_great|Add0~15_combout\ & (!\sweden_is_great|Add0~14\)))) # (!\rf|QA[4]~29_combout\ & 
-- ((\sweden_is_great|Add0~15_combout\ & (!\sweden_is_great|Add0~14\)) # (!\sweden_is_great|Add0~15_combout\ & ((\sweden_is_great|Add0~14\) # (GND)))))
-- \sweden_is_great|Add0~17\ = CARRY((\rf|QA[4]~29_combout\ & (!\sweden_is_great|Add0~15_combout\ & !\sweden_is_great|Add0~14\)) # (!\rf|QA[4]~29_combout\ & ((!\sweden_is_great|Add0~14\) # (!\sweden_is_great|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[4]~29_combout\,
	datab => \sweden_is_great|Add0~15_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~14\,
	combout => \sweden_is_great|Add0~16_combout\,
	cout => \sweden_is_great|Add0~17\);

-- Location: LCCOMB_X50_Y37_N26
\sweden_is_great|sum_rtl~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~18_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[4]~29_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~16_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[4]~29_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|Add0~16_combout\,
	combout => \sweden_is_great|sum_rtl~18_combout\);

-- Location: LCCOMB_X50_Y37_N12
\sweden_is_great|sum_rtl~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~19_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~18_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[4]~29_combout\ $ (((\rf|QB[4]~29_combout\) # 
-- (!\sweden_is_great|sum_rtl~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[4]~29_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \sweden_is_great|sum_rtl~18_combout\,
	datad => \rf|QB[4]~29_combout\,
	combout => \sweden_is_great|sum_rtl~19_combout\);

-- Location: LCCOMB_X50_Y37_N30
\sweden_is_great|sum_rtl~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~45_combout\ = (\sweden_is_great|sum_rtl~44_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(4))))) # (!\sweden_is_great|sum_rtl~44_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~44_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(4),
	datad => \sweden_is_great|sum_rtl~19_combout\,
	combout => \sweden_is_great|sum_rtl~45_combout\);

-- Location: FF_X50_Y37_N31
\sweden_is_great|sum_rtl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~45_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(4));

-- Location: IOIBUF_X50_Y41_N8
\INPUT[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(5),
	o => \INPUT[5]~input_o\);

-- Location: LCCOMB_X49_Y37_N24
\rf|register_arr~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~16_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[5]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \IE~input_o\,
	datac => \INPUT[5]~input_o\,
	datad => \sweden_is_great|sum_rtl\(5),
	combout => \rf|register_arr~16_combout\);

-- Location: LCCOMB_X49_Y39_N26
\rf|register_arr[3][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][5]~feeder_combout\ = \rf|register_arr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~16_combout\,
	combout => \rf|register_arr[3][5]~feeder_combout\);

-- Location: FF_X49_Y39_N27
\rf|register_arr[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[3][5]~feeder_combout\,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][5]~q\);

-- Location: LCCOMB_X50_Y39_N8
\rf|register_arr[1][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][5]~feeder_combout\ = \rf|register_arr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~16_combout\,
	combout => \rf|register_arr[1][5]~feeder_combout\);

-- Location: FF_X50_Y39_N9
\rf|register_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[1][5]~feeder_combout\,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][5]~q\);

-- Location: LCCOMB_X50_Y39_N10
\rf|register_arr[0][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][5]~feeder_combout\ = \rf|register_arr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~16_combout\,
	combout => \rf|register_arr[0][5]~feeder_combout\);

-- Location: FF_X50_Y39_N11
\rf|register_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[0][5]~feeder_combout\,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][5]~q\);

-- Location: LCCOMB_X50_Y39_N22
\rf|QB[5]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~32_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][5]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & ((\rf|register_arr[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[1][5]~q\,
	datad => \rf|register_arr[0][5]~q\,
	combout => \rf|QB[5]~32_combout\);

-- Location: LCCOMB_X49_Y39_N14
\rf|QB[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~33_combout\ = (\RB[1]~input_o\ & ((\rf|QB[5]~32_combout\ & ((\rf|register_arr[3][5]~q\))) # (!\rf|QB[5]~32_combout\ & (\rf|register_arr[2][5]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[2][5]~q\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[3][5]~q\,
	datad => \rf|QB[5]~32_combout\,
	combout => \rf|QB[5]~33_combout\);

-- Location: FF_X48_Y38_N17
\rf|register_arr[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][5]~q\);

-- Location: FF_X47_Y39_N29
\rf|register_arr[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][5]~q\);

-- Location: FF_X48_Y38_N3
\rf|register_arr[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][5]~q\);

-- Location: FF_X49_Y38_N23
\rf|register_arr[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][5]~q\);

-- Location: LCCOMB_X48_Y38_N2
\rf|QB[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~30_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][5]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][5]~q\,
	datad => \rf|register_arr[6][5]~q\,
	combout => \rf|QB[5]~30_combout\);

-- Location: LCCOMB_X47_Y39_N28
\rf|QB[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~31_combout\ = (\RB[0]~input_o\ & ((\rf|QB[5]~30_combout\ & (\rf|register_arr[7][5]~q\)) # (!\rf|QB[5]~30_combout\ & ((\rf|register_arr[5][5]~q\))))) # (!\RB[0]~input_o\ & (((\rf|QB[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[7][5]~q\,
	datac => \rf|register_arr[5][5]~q\,
	datad => \rf|QB[5]~30_combout\,
	combout => \rf|QB[5]~31_combout\);

-- Location: LCCOMB_X47_Y39_N10
\rf|QB[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~34_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[5]~31_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[5]~33_combout\,
	datad => \rf|QB[5]~31_combout\,
	combout => \rf|QB[5]~34_combout\);

-- Location: LCCOMB_X50_Y39_N28
\rf|QA[5]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~32_combout\ = (\RA[1]~input_o\ & (\RA[0]~input_o\)) # (!\RA[1]~input_o\ & ((\RA[0]~input_o\ & (\rf|register_arr[1][5]~q\)) # (!\RA[0]~input_o\ & ((\rf|register_arr[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[1][5]~q\,
	datad => \rf|register_arr[0][5]~q\,
	combout => \rf|QA[5]~32_combout\);

-- Location: LCCOMB_X49_Y39_N16
\rf|QA[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~33_combout\ = (\RA[1]~input_o\ & ((\rf|QA[5]~32_combout\ & ((\rf|register_arr[3][5]~q\))) # (!\rf|QA[5]~32_combout\ & (\rf|register_arr[2][5]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[2][5]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[3][5]~q\,
	datad => \rf|QA[5]~32_combout\,
	combout => \rf|QA[5]~33_combout\);

-- Location: LCCOMB_X49_Y38_N22
\rf|QA[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~30_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][5]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][5]~q\,
	datad => \rf|register_arr[4][5]~q\,
	combout => \rf|QA[5]~30_combout\);

-- Location: LCCOMB_X48_Y38_N16
\rf|QA[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~31_combout\ = (\RA[0]~input_o\ & ((\rf|QA[5]~30_combout\ & ((\rf|register_arr[7][5]~q\))) # (!\rf|QA[5]~30_combout\ & (\rf|register_arr[5][5]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][5]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[7][5]~q\,
	datad => \rf|QA[5]~30_combout\,
	combout => \rf|QA[5]~31_combout\);

-- Location: LCCOMB_X48_Y38_N14
\rf|QA[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~34_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[5]~31_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[5]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[5]~33_combout\,
	datad => \rf|QA[5]~31_combout\,
	combout => \rf|QA[5]~34_combout\);

-- Location: LCCOMB_X47_Y37_N22
\sweden_is_great|Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~19_combout\ = ((\sweden_is_great|Add0~18_combout\ $ (\rf|QA[5]~34_combout\ $ (!\sweden_is_great|Add0~17\)))) # (GND)
-- \sweden_is_great|Add0~20\ = CARRY((\sweden_is_great|Add0~18_combout\ & ((\rf|QA[5]~34_combout\) # (!\sweden_is_great|Add0~17\))) # (!\sweden_is_great|Add0~18_combout\ & (\rf|QA[5]~34_combout\ & !\sweden_is_great|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~18_combout\,
	datab => \rf|QA[5]~34_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~17\,
	combout => \sweden_is_great|Add0~19_combout\,
	cout => \sweden_is_great|Add0~20\);

-- Location: LCCOMB_X50_Y37_N2
\sweden_is_great|sum_rtl~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~20_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[5]~34_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~19_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[5]~34_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|Add0~19_combout\,
	combout => \sweden_is_great|sum_rtl~20_combout\);

-- Location: LCCOMB_X50_Y37_N24
\sweden_is_great|sum_rtl~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~21_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~20_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[5]~34_combout\ $ (((\rf|QB[5]~34_combout\) # 
-- (!\sweden_is_great|sum_rtl~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[5]~34_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \rf|QA[5]~34_combout\,
	datad => \sweden_is_great|sum_rtl~20_combout\,
	combout => \sweden_is_great|sum_rtl~21_combout\);

-- Location: LCCOMB_X50_Y37_N10
\sweden_is_great|sum_rtl~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~22_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl~21_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- (\sweden_is_great|sum_rtl\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(5),
	datad => \sweden_is_great|sum_rtl~21_combout\,
	combout => \sweden_is_great|sum_rtl~22_combout\);

-- Location: LCCOMB_X50_Y37_N4
\sweden_is_great|sum_rtl~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~23_combout\ = (\rf|QA[5]~34_combout\ & ((\sweden_is_great|sum_rtl~22_combout\) # ((\sweden_is_great|sum_rtl[9]~7_combout\ & \rf|QB[5]~34_combout\)))) # (!\rf|QA[5]~34_combout\ & (\sweden_is_great|sum_rtl~22_combout\ & 
-- ((\rf|QB[5]~34_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[5]~34_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QB[5]~34_combout\,
	datad => \sweden_is_great|sum_rtl~22_combout\,
	combout => \sweden_is_great|sum_rtl~23_combout\);

-- Location: FF_X50_Y37_N5
\sweden_is_great|sum_rtl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~23_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(5));

-- Location: IOIBUF_X38_Y41_N8
\INPUT[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(6),
	o => \INPUT[6]~input_o\);

-- Location: LCCOMB_X46_Y38_N12
\rf|register_arr~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~17_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[6]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sweden_is_great|sum_rtl\(6),
	datac => \INPUT[6]~input_o\,
	datad => \IE~input_o\,
	combout => \rf|register_arr~17_combout\);

-- Location: FF_X47_Y38_N5
\rf|register_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][6]~q\);

-- Location: FF_X46_Y38_N5
\rf|register_arr[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][6]~q\);

-- Location: FF_X47_Y38_N27
\rf|register_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][6]~q\);

-- Location: FF_X46_Y38_N13
\rf|register_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr~17_combout\,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][6]~q\);

-- Location: LCCOMB_X46_Y38_N18
\rf|QB[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~37_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & (\rf|register_arr[1][6]~q\)) # (!\RB[0]~input_o\ & ((\rf|register_arr[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[1][6]~q\,
	datad => \rf|register_arr[0][6]~q\,
	combout => \rf|QB[6]~37_combout\);

-- Location: LCCOMB_X46_Y38_N4
\rf|QB[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~38_combout\ = (\RB[1]~input_o\ & ((\rf|QB[6]~37_combout\ & ((\rf|register_arr[3][6]~q\))) # (!\rf|QB[6]~37_combout\ & (\rf|register_arr[2][6]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][6]~q\,
	datac => \rf|register_arr[3][6]~q\,
	datad => \rf|QB[6]~37_combout\,
	combout => \rf|QB[6]~38_combout\);

-- Location: FF_X47_Y39_N31
\rf|register_arr[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][6]~q\);

-- Location: LCCOMB_X46_Y39_N8
\rf|register_arr[6][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][6]~feeder_combout\ = \rf|register_arr~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~17_combout\,
	combout => \rf|register_arr[6][6]~feeder_combout\);

-- Location: FF_X46_Y39_N9
\rf|register_arr[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[6][6]~feeder_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][6]~q\);

-- Location: LCCOMB_X46_Y39_N6
\rf|register_arr[4][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][6]~feeder_combout\ = \rf|register_arr~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~17_combout\,
	combout => \rf|register_arr[4][6]~feeder_combout\);

-- Location: FF_X46_Y39_N7
\rf|register_arr[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[4][6]~feeder_combout\,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][6]~q\);

-- Location: LCCOMB_X46_Y39_N28
\rf|QB[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~35_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & (\rf|register_arr[6][6]~q\)) # (!\RB[1]~input_o\ & ((\rf|register_arr[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[6][6]~q\,
	datad => \rf|register_arr[4][6]~q\,
	combout => \rf|QB[6]~35_combout\);

-- Location: LCCOMB_X47_Y39_N30
\rf|QB[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~36_combout\ = (\RB[0]~input_o\ & ((\rf|QB[6]~35_combout\ & (\rf|register_arr[7][6]~q\)) # (!\rf|QB[6]~35_combout\ & ((\rf|register_arr[5][6]~q\))))) # (!\RB[0]~input_o\ & (((\rf|QB[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][6]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[5][6]~q\,
	datad => \rf|QB[6]~35_combout\,
	combout => \rf|QB[6]~36_combout\);

-- Location: LCCOMB_X46_Y38_N10
\rf|QB[6]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~39_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[6]~36_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[6]~38_combout\,
	datad => \rf|QB[6]~36_combout\,
	combout => \rf|QB[6]~39_combout\);

-- Location: FF_X47_Y39_N25
\rf|register_arr[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][6]~q\);

-- Location: LCCOMB_X46_Y39_N14
\rf|QA[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~35_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][6]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][6]~q\,
	datad => \rf|register_arr[4][6]~q\,
	combout => \rf|QA[6]~35_combout\);

-- Location: LCCOMB_X47_Y39_N24
\rf|QA[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~36_combout\ = (\RA[0]~input_o\ & ((\rf|QA[6]~35_combout\ & ((\rf|register_arr[7][6]~q\))) # (!\rf|QA[6]~35_combout\ & (\rf|register_arr[5][6]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][6]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[7][6]~q\,
	datad => \rf|QA[6]~35_combout\,
	combout => \rf|QA[6]~36_combout\);

-- Location: LCCOMB_X47_Y38_N4
\rf|QA[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~38_combout\ = (\rf|QA[6]~37_combout\ & (((\rf|register_arr[3][6]~q\)) # (!\RA[1]~input_o\))) # (!\rf|QA[6]~37_combout\ & (\RA[1]~input_o\ & (\rf|register_arr[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[6]~37_combout\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][6]~q\,
	datad => \rf|register_arr[3][6]~q\,
	combout => \rf|QA[6]~38_combout\);

-- Location: LCCOMB_X47_Y39_N2
\rf|QA[6]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~39_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[6]~36_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[6]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \rf|QA[6]~36_combout\,
	datac => \ReadA~input_o\,
	datad => \rf|QA[6]~38_combout\,
	combout => \rf|QA[6]~39_combout\);

-- Location: LCCOMB_X50_Y37_N0
\sweden_is_great|sum_rtl~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~42_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[6]~39_combout\) # (\rf|QA[6]~39_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QB[6]~39_combout\ & 
-- \rf|QA[6]~39_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QB[6]~39_combout\,
	datad => \rf|QA[6]~39_combout\,
	combout => \sweden_is_great|sum_rtl~42_combout\);

-- Location: LCCOMB_X47_Y37_N4
\sweden_is_great|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~21_combout\ = \OP[0]~input_o\ $ (\rf|QB[6]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datad => \rf|QB[6]~39_combout\,
	combout => \sweden_is_great|Add0~21_combout\);

-- Location: LCCOMB_X47_Y37_N24
\sweden_is_great|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~22_combout\ = (\rf|QA[6]~39_combout\ & ((\sweden_is_great|Add0~21_combout\ & (\sweden_is_great|Add0~20\ & VCC)) # (!\sweden_is_great|Add0~21_combout\ & (!\sweden_is_great|Add0~20\)))) # (!\rf|QA[6]~39_combout\ & 
-- ((\sweden_is_great|Add0~21_combout\ & (!\sweden_is_great|Add0~20\)) # (!\sweden_is_great|Add0~21_combout\ & ((\sweden_is_great|Add0~20\) # (GND)))))
-- \sweden_is_great|Add0~23\ = CARRY((\rf|QA[6]~39_combout\ & (!\sweden_is_great|Add0~21_combout\ & !\sweden_is_great|Add0~20\)) # (!\rf|QA[6]~39_combout\ & ((!\sweden_is_great|Add0~20\) # (!\sweden_is_great|Add0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[6]~39_combout\,
	datab => \sweden_is_great|Add0~21_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~20\,
	combout => \sweden_is_great|Add0~22_combout\,
	cout => \sweden_is_great|Add0~23\);

-- Location: LCCOMB_X50_Y37_N28
\sweden_is_great|sum_rtl~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~24_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[6]~39_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~22_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[6]~39_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|Add0~22_combout\,
	combout => \sweden_is_great|sum_rtl~24_combout\);

-- Location: LCCOMB_X50_Y37_N6
\sweden_is_great|sum_rtl~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~25_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~24_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[6]~39_combout\ $ (((\rf|QB[6]~39_combout\) # 
-- (!\sweden_is_great|sum_rtl~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[6]~39_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \rf|QB[6]~39_combout\,
	datad => \sweden_is_great|sum_rtl~24_combout\,
	combout => \sweden_is_great|sum_rtl~25_combout\);

-- Location: LCCOMB_X50_Y37_N14
\sweden_is_great|sum_rtl~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~43_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (\sweden_is_great|sum_rtl~42_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl~42_combout\ & (\sweden_is_great|sum_rtl\(6))) # 
-- (!\sweden_is_great|sum_rtl~42_combout\ & ((\sweden_is_great|sum_rtl~25_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \sweden_is_great|sum_rtl~42_combout\,
	datac => \sweden_is_great|sum_rtl\(6),
	datad => \sweden_is_great|sum_rtl~25_combout\,
	combout => \sweden_is_great|sum_rtl~43_combout\);

-- Location: FF_X50_Y37_N15
\sweden_is_great|sum_rtl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~43_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(6));

-- Location: IOIBUF_X36_Y41_N8
\INPUT[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(7),
	o => \INPUT[7]~input_o\);

-- Location: LCCOMB_X46_Y38_N22
\rf|register_arr~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~18_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[7]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IE~input_o\,
	datab => \sweden_is_great|sum_rtl\(7),
	datac => \INPUT[7]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~18_combout\);

-- Location: FF_X47_Y39_N9
\rf|register_arr[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][7]~q\);

-- Location: LCCOMB_X46_Y39_N4
\rf|register_arr[6][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[6][7]~feeder_combout\);

-- Location: FF_X46_Y39_N5
\rf|register_arr[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[6][7]~feeder_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][7]~q\);

-- Location: LCCOMB_X46_Y39_N10
\rf|register_arr[4][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[4][7]~feeder_combout\);

-- Location: FF_X46_Y39_N11
\rf|register_arr[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[4][7]~feeder_combout\,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][7]~q\);

-- Location: LCCOMB_X46_Y39_N18
\rf|QB[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~40_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & (\rf|register_arr[6][7]~q\)) # (!\RB[1]~input_o\ & ((\rf|register_arr[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[6][7]~q\,
	datad => \rf|register_arr[4][7]~q\,
	combout => \rf|QB[7]~40_combout\);

-- Location: LCCOMB_X47_Y39_N8
\rf|QB[7]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~41_combout\ = (\RB[0]~input_o\ & ((\rf|QB[7]~40_combout\ & (\rf|register_arr[7][7]~q\)) # (!\rf|QB[7]~40_combout\ & ((\rf|register_arr[5][7]~q\))))) # (!\RB[0]~input_o\ & (((\rf|QB[7]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][7]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[5][7]~q\,
	datad => \rf|QB[7]~40_combout\,
	combout => \rf|QB[7]~41_combout\);

-- Location: FF_X47_Y38_N1
\rf|register_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][7]~q\);

-- Location: FF_X46_Y38_N17
\rf|register_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][7]~q\);

-- Location: FF_X47_Y38_N23
\rf|register_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][7]~q\);

-- Location: LCCOMB_X46_Y38_N16
\rf|QB[7]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~42_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][7]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][7]~q\,
	datad => \rf|register_arr[1][7]~q\,
	combout => \rf|QB[7]~42_combout\);

-- Location: LCCOMB_X47_Y38_N0
\rf|QB[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~43_combout\ = (\RB[1]~input_o\ & ((\rf|QB[7]~42_combout\ & (\rf|register_arr[3][7]~q\)) # (!\rf|QB[7]~42_combout\ & ((\rf|register_arr[2][7]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[7]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][7]~q\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[2][7]~q\,
	datad => \rf|QB[7]~42_combout\,
	combout => \rf|QB[7]~43_combout\);

-- Location: LCCOMB_X47_Y39_N12
\rf|QB[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~44_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[7]~41_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[7]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[7]~41_combout\,
	datad => \rf|QB[7]~43_combout\,
	combout => \rf|QB[7]~44_combout\);

-- Location: FF_X47_Y39_N23
\rf|register_arr[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][7]~q\);

-- Location: LCCOMB_X47_Y39_N22
\rf|QA[7]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~41_combout\ = (\rf|QA[7]~40_combout\ & (((\rf|register_arr[7][7]~q\) # (!\RA[0]~input_o\)))) # (!\rf|QA[7]~40_combout\ & (\rf|register_arr[5][7]~q\ & ((\RA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[7]~40_combout\,
	datab => \rf|register_arr[5][7]~q\,
	datac => \rf|register_arr[7][7]~q\,
	datad => \RA[0]~input_o\,
	combout => \rf|QA[7]~41_combout\);

-- Location: LCCOMB_X46_Y37_N0
\rf|QA[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~44_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[7]~41_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[7]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[7]~43_combout\,
	datab => \RA[2]~input_o\,
	datac => \ReadA~input_o\,
	datad => \rf|QA[7]~41_combout\,
	combout => \rf|QA[7]~44_combout\);

-- Location: LCCOMB_X46_Y37_N14
\sweden_is_great|sum_rtl~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~26_combout\ = (\rf|QA[7]~44_combout\ & ((\sweden_is_great|sum_rtl[9]~0_combout\) # ((!\sweden_is_great|sum_rtl[9]~1_combout\)))) # (!\rf|QA[7]~44_combout\ & ((\sweden_is_great|sum_rtl[9]~3_combout\ $ 
-- (\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \rf|QA[7]~44_combout\,
	combout => \sweden_is_great|sum_rtl~26_combout\);

-- Location: LCCOMB_X46_Y37_N16
\sweden_is_great|sum_rtl~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~27_combout\ = (\rf|QB[7]~44_combout\ & ((\sweden_is_great|sum_rtl[9]~3_combout\ & (\sweden_is_great|sum_rtl~26_combout\)) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & ((!\rf|QA[7]~44_combout\))))) # (!\rf|QB[7]~44_combout\ & 
-- (((\sweden_is_great|sum_rtl~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[7]~44_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \sweden_is_great|sum_rtl~26_combout\,
	datad => \rf|QA[7]~44_combout\,
	combout => \sweden_is_great|sum_rtl~27_combout\);

-- Location: LCCOMB_X46_Y37_N4
\sweden_is_great|sum_rtl~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~28_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|sum_rtl~27_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (!\sweden_is_great|sum_rtl~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~1_combout\,
	datab => \sweden_is_great|sum_rtl~26_combout\,
	datad => \sweden_is_great|sum_rtl~27_combout\,
	combout => \sweden_is_great|sum_rtl~28_combout\);

-- Location: LCCOMB_X47_Y39_N18
\sweden_is_great|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~24_combout\ = \OP[0]~input_o\ $ (\rf|QB[7]~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[7]~44_combout\,
	combout => \sweden_is_great|Add0~24_combout\);

-- Location: LCCOMB_X47_Y37_N26
\sweden_is_great|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~25_combout\ = ((\rf|QA[7]~44_combout\ $ (\sweden_is_great|Add0~24_combout\ $ (!\sweden_is_great|Add0~23\)))) # (GND)
-- \sweden_is_great|Add0~26\ = CARRY((\rf|QA[7]~44_combout\ & ((\sweden_is_great|Add0~24_combout\) # (!\sweden_is_great|Add0~23\))) # (!\rf|QA[7]~44_combout\ & (\sweden_is_great|Add0~24_combout\ & !\sweden_is_great|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[7]~44_combout\,
	datab => \sweden_is_great|Add0~24_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~23\,
	combout => \sweden_is_great|Add0~25_combout\,
	cout => \sweden_is_great|Add0~26\);

-- Location: LCCOMB_X46_Y37_N10
\sweden_is_great|sum_rtl~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~29_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|Add0~25_combout\ & (\sweden_is_great|sum_rtl~27_combout\)) # (!\sweden_is_great|Add0~25_combout\ & ((\sweden_is_great|sum_rtl~28_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (\sweden_is_great|sum_rtl~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl~27_combout\,
	datac => \sweden_is_great|sum_rtl~28_combout\,
	datad => \sweden_is_great|Add0~25_combout\,
	combout => \sweden_is_great|sum_rtl~29_combout\);

-- Location: LCCOMB_X46_Y37_N24
\sweden_is_great|sum_rtl~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~30_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl~29_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- (\sweden_is_great|sum_rtl\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(7),
	datad => \sweden_is_great|sum_rtl~29_combout\,
	combout => \sweden_is_great|sum_rtl~30_combout\);

-- Location: LCCOMB_X49_Y37_N16
\sweden_is_great|sum_rtl~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~31_combout\ = (\rf|QA[7]~44_combout\ & ((\sweden_is_great|sum_rtl~30_combout\) # ((\sweden_is_great|sum_rtl[9]~7_combout\ & \rf|QB[7]~44_combout\)))) # (!\rf|QA[7]~44_combout\ & (\sweden_is_great|sum_rtl~30_combout\ & 
-- ((\rf|QB[7]~44_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[7]~44_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QB[7]~44_combout\,
	datad => \sweden_is_great|sum_rtl~30_combout\,
	combout => \sweden_is_great|sum_rtl~31_combout\);

-- Location: FF_X49_Y37_N17
\sweden_is_great|sum_rtl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~31_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(7));

-- Location: IOIBUF_X41_Y41_N8
\INPUT[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(8),
	o => \INPUT[8]~input_o\);

-- Location: LCCOMB_X48_Y39_N24
\rf|register_arr~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~19_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[8]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IE~input_o\,
	datab => \sweden_is_great|sum_rtl\(8),
	datac => \INPUT[8]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~19_combout\);

-- Location: FF_X47_Y39_N21
\rf|register_arr[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][8]~q\);

-- Location: FF_X47_Y39_N27
\rf|register_arr[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][8]~q\);

-- Location: LCCOMB_X46_Y39_N26
\rf|register_arr[4][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[4][8]~feeder_combout\);

-- Location: FF_X46_Y39_N27
\rf|register_arr[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[4][8]~feeder_combout\,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][8]~q\);

-- Location: LCCOMB_X46_Y39_N20
\rf|register_arr[6][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[6][8]~feeder_combout\);

-- Location: FF_X46_Y39_N21
\rf|register_arr[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[6][8]~feeder_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][8]~q\);

-- Location: LCCOMB_X46_Y39_N12
\rf|QB[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~45_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][8]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[4][8]~q\,
	datad => \rf|register_arr[6][8]~q\,
	combout => \rf|QB[8]~45_combout\);

-- Location: LCCOMB_X47_Y39_N26
\rf|QB[8]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~46_combout\ = (\RB[0]~input_o\ & ((\rf|QB[8]~45_combout\ & ((\rf|register_arr[7][8]~q\))) # (!\rf|QB[8]~45_combout\ & (\rf|register_arr[5][8]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[8]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][8]~q\,
	datac => \rf|register_arr[7][8]~q\,
	datad => \rf|QB[8]~45_combout\,
	combout => \rf|QB[8]~46_combout\);

-- Location: LCCOMB_X49_Y39_N8
\rf|register_arr[2][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[2][8]~feeder_combout\);

-- Location: FF_X49_Y39_N9
\rf|register_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[2][8]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][8]~q\);

-- Location: LCCOMB_X49_Y39_N22
\rf|register_arr[3][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[3][8]~feeder_combout\);

-- Location: FF_X49_Y39_N23
\rf|register_arr[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[3][8]~feeder_combout\,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][8]~q\);

-- Location: FF_X50_Y39_N5
\rf|register_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][8]~q\);

-- Location: FF_X50_Y39_N3
\rf|register_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][8]~q\);

-- Location: LCCOMB_X50_Y39_N24
\rf|QB[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~47_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][8]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & ((\rf|register_arr[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[1][8]~q\,
	datad => \rf|register_arr[0][8]~q\,
	combout => \rf|QB[8]~47_combout\);

-- Location: LCCOMB_X49_Y39_N4
\rf|QB[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~48_combout\ = (\RB[1]~input_o\ & ((\rf|QB[8]~47_combout\ & ((\rf|register_arr[3][8]~q\))) # (!\rf|QB[8]~47_combout\ & (\rf|register_arr[2][8]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[8]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][8]~q\,
	datac => \rf|register_arr[3][8]~q\,
	datad => \rf|QB[8]~47_combout\,
	combout => \rf|QB[8]~48_combout\);

-- Location: LCCOMB_X48_Y39_N18
\rf|QB[8]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~49_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[8]~46_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[8]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[8]~46_combout\,
	datad => \rf|QB[8]~48_combout\,
	combout => \rf|QB[8]~49_combout\);

-- Location: LCCOMB_X50_Y39_N6
\rf|QA[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~47_combout\ = (\RA[1]~input_o\ & (\RA[0]~input_o\)) # (!\RA[1]~input_o\ & ((\RA[0]~input_o\ & (\rf|register_arr[1][8]~q\)) # (!\RA[0]~input_o\ & ((\rf|register_arr[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[1][8]~q\,
	datad => \rf|register_arr[0][8]~q\,
	combout => \rf|QA[8]~47_combout\);

-- Location: LCCOMB_X49_Y39_N30
\rf|QA[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~48_combout\ = (\RA[1]~input_o\ & ((\rf|QA[8]~47_combout\ & (\rf|register_arr[3][8]~q\)) # (!\rf|QA[8]~47_combout\ & ((\rf|register_arr[2][8]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[8]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][8]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][8]~q\,
	datad => \rf|QA[8]~47_combout\,
	combout => \rf|QA[8]~48_combout\);

-- Location: LCCOMB_X46_Y39_N2
\rf|QA[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~45_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\rf|register_arr[6][8]~q\))) # (!\RA[1]~input_o\ & (\rf|register_arr[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[4][8]~q\,
	datad => \rf|register_arr[6][8]~q\,
	combout => \rf|QA[8]~45_combout\);

-- Location: LCCOMB_X47_Y39_N20
\rf|QA[8]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~46_combout\ = (\RA[0]~input_o\ & ((\rf|QA[8]~45_combout\ & (\rf|register_arr[7][8]~q\)) # (!\rf|QA[8]~45_combout\ & ((\rf|register_arr[5][8]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[8]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][8]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[5][8]~q\,
	datad => \rf|QA[8]~45_combout\,
	combout => \rf|QA[8]~46_combout\);

-- Location: LCCOMB_X48_Y39_N16
\rf|QA[8]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~49_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[8]~46_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[8]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[8]~48_combout\,
	datad => \rf|QA[8]~46_combout\,
	combout => \rf|QA[8]~49_combout\);

-- Location: LCCOMB_X48_Y39_N2
\sweden_is_great|sum_rtl~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~40_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[8]~49_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\) # (\rf|QA[8]~49_combout\))) # (!\rf|QB[8]~49_combout\ & (\sweden_is_great|sum_rtl[9]~6_combout\ & 
-- \rf|QA[8]~49_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((!\sweden_is_great|sum_rtl[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \rf|QB[8]~49_combout\,
	datac => \sweden_is_great|sum_rtl[9]~6_combout\,
	datad => \rf|QA[8]~49_combout\,
	combout => \sweden_is_great|sum_rtl~40_combout\);

-- Location: LCCOMB_X48_Y39_N10
\sweden_is_great|Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~27_combout\ = \OP[0]~input_o\ $ (\rf|QB[8]~49_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[8]~49_combout\,
	combout => \sweden_is_great|Add0~27_combout\);

-- Location: LCCOMB_X47_Y37_N28
\sweden_is_great|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~28_combout\ = (\rf|QA[8]~49_combout\ & ((\sweden_is_great|Add0~27_combout\ & (\sweden_is_great|Add0~26\ & VCC)) # (!\sweden_is_great|Add0~27_combout\ & (!\sweden_is_great|Add0~26\)))) # (!\rf|QA[8]~49_combout\ & 
-- ((\sweden_is_great|Add0~27_combout\ & (!\sweden_is_great|Add0~26\)) # (!\sweden_is_great|Add0~27_combout\ & ((\sweden_is_great|Add0~26\) # (GND)))))
-- \sweden_is_great|Add0~29\ = CARRY((\rf|QA[8]~49_combout\ & (!\sweden_is_great|Add0~27_combout\ & !\sweden_is_great|Add0~26\)) # (!\rf|QA[8]~49_combout\ & ((!\sweden_is_great|Add0~26\) # (!\sweden_is_great|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[8]~49_combout\,
	datab => \sweden_is_great|Add0~27_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~26\,
	combout => \sweden_is_great|Add0~28_combout\,
	cout => \sweden_is_great|Add0~29\);

-- Location: LCCOMB_X48_Y39_N20
\sweden_is_great|sum_rtl~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~32_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & ((\rf|QA[8]~49_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (\sweden_is_great|Add0~28_combout\)))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (!\sweden_is_great|sum_rtl[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \sweden_is_great|Add0~28_combout\,
	datad => \rf|QA[8]~49_combout\,
	combout => \sweden_is_great|sum_rtl~32_combout\);

-- Location: LCCOMB_X48_Y39_N6
\sweden_is_great|sum_rtl~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~33_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~32_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[8]~49_combout\ $ (((\rf|QB[8]~49_combout\) # 
-- (!\sweden_is_great|sum_rtl~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QB[8]~49_combout\,
	datac => \rf|QA[8]~49_combout\,
	datad => \sweden_is_great|sum_rtl~32_combout\,
	combout => \sweden_is_great|sum_rtl~33_combout\);

-- Location: LCCOMB_X48_Y39_N8
\sweden_is_great|sum_rtl~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~41_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (\sweden_is_great|sum_rtl~40_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl~40_combout\ & (\sweden_is_great|sum_rtl\(8))) # 
-- (!\sweden_is_great|sum_rtl~40_combout\ & ((\sweden_is_great|sum_rtl~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \sweden_is_great|sum_rtl~40_combout\,
	datac => \sweden_is_great|sum_rtl\(8),
	datad => \sweden_is_great|sum_rtl~33_combout\,
	combout => \sweden_is_great|sum_rtl~41_combout\);

-- Location: FF_X48_Y39_N9
\sweden_is_great|sum_rtl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~41_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(8));

-- Location: IOIBUF_X52_Y16_N8
\INPUT[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(9),
	o => \INPUT[9]~input_o\);

-- Location: LCCOMB_X49_Y37_N2
\rf|register_arr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~0_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[9]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sweden_is_great|sum_rtl\(9),
	datac => \INPUT[9]~input_o\,
	datad => \IE~input_o\,
	combout => \rf|register_arr~0_combout\);

-- Location: FF_X47_Y38_N15
\rf|register_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][9]~q\);

-- Location: FF_X47_Y37_N1
\rf|register_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][9]~q\);

-- Location: LCCOMB_X47_Y38_N14
\rf|QB[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~2_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & (\rf|register_arr[1][9]~q\)) # (!\RB[0]~input_o\ & ((\rf|register_arr[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[1][9]~q\,
	datad => \rf|register_arr[0][9]~q\,
	combout => \rf|QB[9]~2_combout\);

-- Location: FF_X47_Y38_N17
\rf|register_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][9]~q\);

-- Location: FF_X48_Y37_N17
\rf|register_arr[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][5]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][9]~q\);

-- Location: LCCOMB_X47_Y38_N16
\rf|QB[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~3_combout\ = (\RB[1]~input_o\ & ((\rf|QB[9]~2_combout\ & ((\rf|register_arr[3][9]~q\))) # (!\rf|QB[9]~2_combout\ & (\rf|register_arr[2][9]~q\)))) # (!\RB[1]~input_o\ & (\rf|QB[9]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|QB[9]~2_combout\,
	datac => \rf|register_arr[2][9]~q\,
	datad => \rf|register_arr[3][9]~q\,
	combout => \rf|QB[9]~3_combout\);

-- Location: LCCOMB_X49_Y38_N8
\rf|register_arr[5][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[5][9]~feeder_combout\);

-- Location: FF_X49_Y38_N9
\rf|register_arr[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[5][9]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][9]~q\);

-- Location: FF_X48_Y38_N25
\rf|register_arr[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][9]~q\);

-- Location: LCCOMB_X48_Y38_N18
\rf|QB[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~1_combout\ = (\rf|QB[9]~0_combout\ & (((\rf|register_arr[7][9]~q\) # (!\RB[0]~input_o\)))) # (!\rf|QB[9]~0_combout\ & (\rf|register_arr[5][9]~q\ & (\RB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[9]~0_combout\,
	datab => \rf|register_arr[5][9]~q\,
	datac => \RB[0]~input_o\,
	datad => \rf|register_arr[7][9]~q\,
	combout => \rf|QB[9]~1_combout\);

-- Location: LCCOMB_X48_Y37_N6
\rf|QB[9]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~4_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[9]~1_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[9]~3_combout\,
	datad => \rf|QB[9]~1_combout\,
	combout => \rf|QB[9]~4_combout\);

-- Location: LCCOMB_X46_Y39_N22
\rf|register_arr[4][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[4][9]~feeder_combout\);

-- Location: FF_X46_Y39_N23
\rf|register_arr[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[4][9]~feeder_combout\,
	ena => \rf|register_arr[4][8]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][9]~q\);

-- Location: LCCOMB_X46_Y39_N0
\rf|register_arr[6][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[6][9]~feeder_combout\);

-- Location: FF_X46_Y39_N1
\rf|register_arr[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \rf|register_arr[6][9]~feeder_combout\,
	ena => \rf|register_arr[6][4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][9]~q\);

-- Location: LCCOMB_X46_Y39_N30
\rf|QA[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~0_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\rf|register_arr[6][9]~q\))) # (!\RA[1]~input_o\ & (\rf|register_arr[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[4][9]~q\,
	datad => \rf|register_arr[6][9]~q\,
	combout => \rf|QA[9]~0_combout\);

-- Location: LCCOMB_X48_Y38_N24
\rf|QA[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~1_combout\ = (\RA[0]~input_o\ & ((\rf|QA[9]~0_combout\ & ((\rf|register_arr[7][9]~q\))) # (!\rf|QA[9]~0_combout\ & (\rf|register_arr[5][9]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[5][9]~q\,
	datac => \rf|register_arr[7][9]~q\,
	datad => \rf|QA[9]~0_combout\,
	combout => \rf|QA[9]~1_combout\);

-- Location: LCCOMB_X48_Y37_N16
\rf|QA[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~3_combout\ = (\rf|QA[9]~2_combout\ & (((\rf|register_arr[3][9]~q\) # (!\RA[1]~input_o\)))) # (!\rf|QA[9]~2_combout\ & (\rf|register_arr[2][9]~q\ & ((\RA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[9]~2_combout\,
	datab => \rf|register_arr[2][9]~q\,
	datac => \rf|register_arr[3][9]~q\,
	datad => \RA[1]~input_o\,
	combout => \rf|QA[9]~3_combout\);

-- Location: LCCOMB_X48_Y37_N28
\rf|QA[9]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~4_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[9]~1_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[9]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[9]~1_combout\,
	datad => \rf|QA[9]~3_combout\,
	combout => \rf|QA[9]~4_combout\);

-- Location: LCCOMB_X48_Y37_N30
\sweden_is_great|sum_rtl~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~34_combout\ = (\rf|QA[9]~4_combout\ & ((\sweden_is_great|sum_rtl[9]~0_combout\) # ((!\sweden_is_great|sum_rtl[9]~1_combout\)))) # (!\rf|QA[9]~4_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ $ 
-- (\sweden_is_great|sum_rtl[9]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \sweden_is_great|sum_rtl[9]~3_combout\,
	datad => \rf|QA[9]~4_combout\,
	combout => \sweden_is_great|sum_rtl~34_combout\);

-- Location: LCCOMB_X48_Y37_N24
\sweden_is_great|sum_rtl~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~35_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~34_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & ((\rf|QB[9]~4_combout\ & (!\rf|QA[9]~4_combout\)) # (!\rf|QB[9]~4_combout\ & 
-- ((\sweden_is_great|sum_rtl~34_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QA[9]~4_combout\,
	datac => \sweden_is_great|sum_rtl~34_combout\,
	datad => \rf|QB[9]~4_combout\,
	combout => \sweden_is_great|sum_rtl~35_combout\);

-- Location: LCCOMB_X48_Y37_N8
\sweden_is_great|sum_rtl~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~36_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|sum_rtl~35_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (!\sweden_is_great|sum_rtl~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~34_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|sum_rtl~35_combout\,
	combout => \sweden_is_great|sum_rtl~36_combout\);

-- Location: LCCOMB_X48_Y37_N26
\sweden_is_great|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~30_combout\ = \OP[0]~input_o\ $ (\rf|QB[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datad => \rf|QB[9]~4_combout\,
	combout => \sweden_is_great|Add0~30_combout\);

-- Location: LCCOMB_X47_Y37_N30
\sweden_is_great|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~31_combout\ = \rf|QA[9]~4_combout\ $ (\sweden_is_great|Add0~29\ $ (!\sweden_is_great|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[9]~4_combout\,
	datad => \sweden_is_great|Add0~30_combout\,
	cin => \sweden_is_great|Add0~29\,
	combout => \sweden_is_great|Add0~31_combout\);

-- Location: LCCOMB_X48_Y37_N18
\sweden_is_great|sum_rtl~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~37_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|Add0~31_combout\ & (\sweden_is_great|sum_rtl~35_combout\)) # (!\sweden_is_great|Add0~31_combout\ & ((\sweden_is_great|sum_rtl~36_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (\sweden_is_great|sum_rtl~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl~35_combout\,
	datac => \sweden_is_great|sum_rtl~36_combout\,
	datad => \sweden_is_great|Add0~31_combout\,
	combout => \sweden_is_great|sum_rtl~37_combout\);

-- Location: LCCOMB_X48_Y37_N12
\sweden_is_great|sum_rtl~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~38_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl[9]~6_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\ & 
-- ((\sweden_is_great|sum_rtl~37_combout\))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(9),
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl[9]~6_combout\,
	datad => \sweden_is_great|sum_rtl~37_combout\,
	combout => \sweden_is_great|sum_rtl~38_combout\);

-- Location: LCCOMB_X49_Y37_N18
\sweden_is_great|sum_rtl~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~39_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[9]~4_combout\ & ((\rf|QA[9]~4_combout\) # (\sweden_is_great|sum_rtl~38_combout\))) # (!\rf|QB[9]~4_combout\ & (\rf|QA[9]~4_combout\ & 
-- \sweden_is_great|sum_rtl~38_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \rf|QB[9]~4_combout\,
	datac => \rf|QA[9]~4_combout\,
	datad => \sweden_is_great|sum_rtl~38_combout\,
	combout => \sweden_is_great|sum_rtl~39_combout\);

-- Location: FF_X49_Y37_N19
\sweden_is_great|sum_rtl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cd|clk_tmp~clkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~39_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(9));

-- Location: LCCOMB_X49_Y37_N14
\sweden_is_great|Z_Flag~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~1_combout\ = (\sweden_is_great|sum_rtl\(5)) # ((\sweden_is_great|sum_rtl\(6)) # ((\sweden_is_great|sum_rtl\(4)) # (\sweden_is_great|sum_rtl\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(5),
	datab => \sweden_is_great|sum_rtl\(6),
	datac => \sweden_is_great|sum_rtl\(4),
	datad => \sweden_is_great|sum_rtl\(7),
	combout => \sweden_is_great|Z_Flag~1_combout\);

-- Location: LCCOMB_X49_Y37_N8
\sweden_is_great|Z_Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~0_combout\ = (\sweden_is_great|sum_rtl\(2)) # ((\sweden_is_great|sum_rtl\(3)) # ((\sweden_is_great|sum_rtl\(0)) # (\sweden_is_great|sum_rtl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(2),
	datab => \sweden_is_great|sum_rtl\(3),
	datac => \sweden_is_great|sum_rtl\(0),
	datad => \sweden_is_great|sum_rtl\(1),
	combout => \sweden_is_great|Z_Flag~0_combout\);

-- Location: LCCOMB_X49_Y37_N28
\sweden_is_great|Z_Flag~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~2_combout\ = (\sweden_is_great|sum_rtl\(8)) # ((\sweden_is_great|Z_Flag~1_combout\) # ((\sweden_is_great|Z_Flag~0_combout\) # (\sweden_is_great|sum_rtl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(8),
	datab => \sweden_is_great|Z_Flag~1_combout\,
	datac => \sweden_is_great|Z_Flag~0_combout\,
	datad => \sweden_is_great|sum_rtl\(9),
	combout => \sweden_is_great|Z_Flag~2_combout\);

-- Location: LCCOMB_X49_Y37_N10
\sweden_is_great|O_Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|O_Flag~0_combout\ = (\rf|QB[9]~4_combout\ & ((\sweden_is_great|sum_rtl\(9)) # (!\rf|QA[9]~4_combout\))) # (!\rf|QB[9]~4_combout\ & ((\rf|QA[9]~4_combout\) # (!\sweden_is_great|sum_rtl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|QB[9]~4_combout\,
	datac => \rf|QA[9]~4_combout\,
	datad => \sweden_is_great|sum_rtl\(9),
	combout => \sweden_is_great|O_Flag~0_combout\);

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(4) <= \OUTPUT[4]~output_o\;

ww_OUTPUT(5) <= \OUTPUT[5]~output_o\;

ww_OUTPUT(6) <= \OUTPUT[6]~output_o\;

ww_OUTPUT(7) <= \OUTPUT[7]~output_o\;

ww_OUTPUT(8) <= \OUTPUT[8]~output_o\;

ww_OUTPUT(9) <= \OUTPUT[9]~output_o\;

ww_Z_Flag <= \Z_Flag~output_o\;

ww_N_Flag <= \N_Flag~output_o\;

ww_O_Flag <= \O_Flag~output_o\;
END structure;


