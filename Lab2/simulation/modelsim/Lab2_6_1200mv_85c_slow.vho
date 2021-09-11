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

-- DATE "09/11/2021 14:55:08"

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
-- OUTPUT[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[6]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[7]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[8]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z_Flag	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N_Flag	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O_Flag	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadB	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[0]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RB[2]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ReadA	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RA[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OE	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IE	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[9]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Write	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WAddr[2]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[5]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[8]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \rf|QB[1]~10_combout\ : std_logic;
SIGNAL \rf|QB[1]~11_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~5_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~6_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~9_combout\ : std_logic;
SIGNAL \rf|register_arr[5][4]~q\ : std_logic;
SIGNAL \sweden_is_great|Add0~15_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~18_combout\ : std_logic;
SIGNAL \rf|QB[6]~35_combout\ : std_logic;
SIGNAL \rf|register_arr[7][6]~q\ : std_logic;
SIGNAL \rf|QB[6]~36_combout\ : std_logic;
SIGNAL \rf|QB[6]~37_combout\ : std_logic;
SIGNAL \rf|QB[6]~38_combout\ : std_logic;
SIGNAL \rf|QB[6]~39_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~21_combout\ : std_logic;
SIGNAL \rf|register_arr[3][7]~q\ : std_logic;
SIGNAL \rf|QB[7]~40_combout\ : std_logic;
SIGNAL \rf|QB[7]~41_combout\ : std_logic;
SIGNAL \rf|QB[7]~42_combout\ : std_logic;
SIGNAL \rf|QB[7]~43_combout\ : std_logic;
SIGNAL \rf|QB[7]~44_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~24_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~27_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~38_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~40_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~44_combout\ : std_logic;
SIGNAL \WAddr[1]~input_o\ : std_logic;
SIGNAL \INPUT[6]~input_o\ : std_logic;
SIGNAL \rf|register_arr[5][4]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][7]~feeder_combout\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \IE~input_o\ : std_logic;
SIGNAL \OP[1]~input_o\ : std_logic;
SIGNAL \OE~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~7_combout\ : std_logic;
SIGNAL \OP[0]~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~5_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~6_combout\ : std_logic;
SIGNAL \ReadA~input_o\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \rf|register_arr~11_combout\ : std_logic;
SIGNAL \rf|register_arr[7][0]~feeder_combout\ : std_logic;
SIGNAL \WAddr[2]~input_o\ : std_logic;
SIGNAL \Write~input_o\ : std_logic;
SIGNAL \WAddr[0]~input_o\ : std_logic;
SIGNAL \rf|register_arr[5][6]~1_combout\ : std_logic;
SIGNAL \rf|register_arr[7][4]~6_combout\ : std_logic;
SIGNAL \rf|register_arr[7][0]~q\ : std_logic;
SIGNAL \rf|register_arr[5][6]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[5][0]~q\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr[6][1]~3_combout\ : std_logic;
SIGNAL \rf|register_arr[4][6]~5_combout\ : std_logic;
SIGNAL \rf|register_arr[4][0]~q\ : std_logic;
SIGNAL \rf|register_arr[6][1]~4_combout\ : std_logic;
SIGNAL \rf|register_arr[6][0]~q\ : std_logic;
SIGNAL \rf|QA[0]~5_combout\ : std_logic;
SIGNAL \rf|QA[0]~6_combout\ : std_logic;
SIGNAL \rf|register_arr[3][6]~10_combout\ : std_logic;
SIGNAL \rf|register_arr[3][0]~q\ : std_logic;
SIGNAL \rf|register_arr[0][1]~9_combout\ : std_logic;
SIGNAL \rf|register_arr[0][0]~q\ : std_logic;
SIGNAL \rf|register_arr[1][0]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][9]~8_combout\ : std_logic;
SIGNAL \rf|register_arr[1][0]~q\ : std_logic;
SIGNAL \rf|QA[0]~7_combout\ : std_logic;
SIGNAL \rf|QA[0]~8_combout\ : std_logic;
SIGNAL \rf|QA[0]~9_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~46_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~3_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~1_combout\ : std_logic;
SIGNAL \ReadB~input_o\ : std_logic;
SIGNAL \RB[0]~input_o\ : std_logic;
SIGNAL \RB[1]~input_o\ : std_logic;
SIGNAL \rf|QB[0]~5_combout\ : std_logic;
SIGNAL \rf|QB[0]~6_combout\ : std_logic;
SIGNAL \rf|QB[0]~7_combout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~7_combout\ : std_logic;
SIGNAL \rf|register_arr[2][0]~q\ : std_logic;
SIGNAL \rf|QB[0]~8_combout\ : std_logic;
SIGNAL \rf|QB[0]~9_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~0_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~2_cout\ : std_logic;
SIGNAL \sweden_is_great|Add0~3_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~2_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~4_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~47_combout\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \rf|register_arr~12_combout\ : std_logic;
SIGNAL \rf|register_arr[7][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][1]~q\ : std_logic;
SIGNAL \rf|register_arr[4][1]~q\ : std_logic;
SIGNAL \rf|register_arr[6][1]~q\ : std_logic;
SIGNAL \rf|QA[1]~10_combout\ : std_logic;
SIGNAL \rf|register_arr[5][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][1]~q\ : std_logic;
SIGNAL \rf|QA[1]~11_combout\ : std_logic;
SIGNAL \rf|register_arr[3][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][1]~q\ : std_logic;
SIGNAL \rf|register_arr[2][1]~q\ : std_logic;
SIGNAL \rf|register_arr[0][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][1]~q\ : std_logic;
SIGNAL \rf|register_arr[1][1]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][1]~q\ : std_logic;
SIGNAL \rf|QA[1]~12_combout\ : std_logic;
SIGNAL \rf|QA[1]~13_combout\ : std_logic;
SIGNAL \rf|QA[1]~14_combout\ : std_logic;
SIGNAL \RB[2]~input_o\ : std_logic;
SIGNAL \rf|QB[1]~12_combout\ : std_logic;
SIGNAL \rf|QB[1]~13_combout\ : std_logic;
SIGNAL \rf|QB[1]~14_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~4\ : std_logic;
SIGNAL \sweden_is_great|Add0~7_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~8_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~9_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~10_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~11_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \rf|register_arr~13_combout\ : std_logic;
SIGNAL \rf|register_arr[3][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][2]~q\ : std_logic;
SIGNAL \rf|register_arr[2][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][2]~q\ : std_logic;
SIGNAL \rf|register_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][2]~q\ : std_logic;
SIGNAL \rf|register_arr[1][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][2]~q\ : std_logic;
SIGNAL \rf|QB[2]~17_combout\ : std_logic;
SIGNAL \rf|QB[2]~18_combout\ : std_logic;
SIGNAL \rf|register_arr[7][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][2]~q\ : std_logic;
SIGNAL \rf|register_arr[4][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][2]~q\ : std_logic;
SIGNAL \rf|register_arr[6][2]~q\ : std_logic;
SIGNAL \rf|QB[2]~15_combout\ : std_logic;
SIGNAL \rf|QB[2]~16_combout\ : std_logic;
SIGNAL \rf|QB[2]~19_combout\ : std_logic;
SIGNAL \OP[2]~input_o\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl[9]~0_combout\ : std_logic;
SIGNAL \rf|QA[2]~17_combout\ : std_logic;
SIGNAL \rf|QA[2]~18_combout\ : std_logic;
SIGNAL \rf|QA[2]~15_combout\ : std_logic;
SIGNAL \rf|register_arr[5][2]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][2]~q\ : std_logic;
SIGNAL \rf|QA[2]~16_combout\ : std_logic;
SIGNAL \rf|QA[2]~19_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~8\ : std_logic;
SIGNAL \sweden_is_great|Add0~10_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~12_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~13_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~45_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \rf|register_arr~14_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][3]~q\ : std_logic;
SIGNAL \rf|register_arr[3][3]~q\ : std_logic;
SIGNAL \rf|register_arr[0][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][3]~q\ : std_logic;
SIGNAL \rf|register_arr[1][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][3]~q\ : std_logic;
SIGNAL \rf|QB[3]~22_combout\ : std_logic;
SIGNAL \rf|QB[3]~23_combout\ : std_logic;
SIGNAL \rf|register_arr[5][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][3]~q\ : std_logic;
SIGNAL \rf|register_arr[7][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][3]~q\ : std_logic;
SIGNAL \rf|register_arr[4][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[4][3]~q\ : std_logic;
SIGNAL \rf|register_arr[6][3]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][3]~q\ : std_logic;
SIGNAL \rf|QB[3]~20_combout\ : std_logic;
SIGNAL \rf|QB[3]~21_combout\ : std_logic;
SIGNAL \rf|QB[3]~24_combout\ : std_logic;
SIGNAL \rf|QA[3]~22_combout\ : std_logic;
SIGNAL \rf|QA[3]~23_combout\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \rf|QA[3]~20_combout\ : std_logic;
SIGNAL \rf|QA[3]~21_combout\ : std_logic;
SIGNAL \rf|QA[3]~24_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~12_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~11\ : std_logic;
SIGNAL \sweden_is_great|Add0~13_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~14_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~15_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~16_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~17_combout\ : std_logic;
SIGNAL \INPUT[4]~input_o\ : std_logic;
SIGNAL \rf|register_arr~15_combout\ : std_logic;
SIGNAL \rf|register_arr[2][4]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][4]~q\ : std_logic;
SIGNAL \rf|register_arr[1][4]~q\ : std_logic;
SIGNAL \rf|register_arr[0][4]~q\ : std_logic;
SIGNAL \rf|QB[4]~27_combout\ : std_logic;
SIGNAL \rf|QB[4]~28_combout\ : std_logic;
SIGNAL \rf|register_arr[7][4]~q\ : std_logic;
SIGNAL \rf|register_arr[4][4]~q\ : std_logic;
SIGNAL \rf|register_arr[6][4]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][4]~q\ : std_logic;
SIGNAL \rf|QB[4]~25_combout\ : std_logic;
SIGNAL \rf|QB[4]~26_combout\ : std_logic;
SIGNAL \rf|QB[4]~29_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~42_combout\ : std_logic;
SIGNAL \rf|register_arr[3][4]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][4]~q\ : std_logic;
SIGNAL \rf|QA[4]~27_combout\ : std_logic;
SIGNAL \rf|QA[4]~28_combout\ : std_logic;
SIGNAL \rf|QA[4]~25_combout\ : std_logic;
SIGNAL \rf|QA[4]~26_combout\ : std_logic;
SIGNAL \rf|QA[4]~29_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~14\ : std_logic;
SIGNAL \sweden_is_great|Add0~16_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~18_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~19_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~43_combout\ : std_logic;
SIGNAL \INPUT[5]~input_o\ : std_logic;
SIGNAL \rf|register_arr~16_combout\ : std_logic;
SIGNAL \rf|register_arr[7][5]~q\ : std_logic;
SIGNAL \rf|register_arr[5][5]~q\ : std_logic;
SIGNAL \rf|register_arr[4][5]~q\ : std_logic;
SIGNAL \rf|register_arr[6][5]~q\ : std_logic;
SIGNAL \rf|QB[5]~30_combout\ : std_logic;
SIGNAL \rf|QB[5]~31_combout\ : std_logic;
SIGNAL \rf|register_arr[3][5]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][5]~q\ : std_logic;
SIGNAL \rf|register_arr[2][5]~q\ : std_logic;
SIGNAL \rf|register_arr[1][5]~q\ : std_logic;
SIGNAL \rf|register_arr[0][5]~q\ : std_logic;
SIGNAL \rf|QB[5]~32_combout\ : std_logic;
SIGNAL \rf|QB[5]~33_combout\ : std_logic;
SIGNAL \rf|QB[5]~34_combout\ : std_logic;
SIGNAL \rf|QA[5]~30_combout\ : std_logic;
SIGNAL \rf|QA[5]~31_combout\ : std_logic;
SIGNAL \rf|QA[5]~32_combout\ : std_logic;
SIGNAL \rf|QA[5]~33_combout\ : std_logic;
SIGNAL \rf|QA[5]~34_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~17\ : std_logic;
SIGNAL \sweden_is_great|Add0~19_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~20_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~21_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~22_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~23_combout\ : std_logic;
SIGNAL \rf|register_arr~17_combout\ : std_logic;
SIGNAL \rf|register_arr[3][6]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][6]~q\ : std_logic;
SIGNAL \rf|register_arr[2][6]~q\ : std_logic;
SIGNAL \rf|register_arr[0][6]~q\ : std_logic;
SIGNAL \rf|register_arr[1][6]~q\ : std_logic;
SIGNAL \rf|QA[6]~37_combout\ : std_logic;
SIGNAL \rf|QA[6]~38_combout\ : std_logic;
SIGNAL \rf|register_arr[5][6]~q\ : std_logic;
SIGNAL \rf|register_arr[6][6]~q\ : std_logic;
SIGNAL \rf|register_arr[4][6]~q\ : std_logic;
SIGNAL \rf|QA[6]~35_combout\ : std_logic;
SIGNAL \rf|QA[6]~36_combout\ : std_logic;
SIGNAL \rf|QA[6]~39_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~20\ : std_logic;
SIGNAL \sweden_is_great|Add0~22_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~24_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~25_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~41_combout\ : std_logic;
SIGNAL \INPUT[7]~input_o\ : std_logic;
SIGNAL \rf|register_arr~18_combout\ : std_logic;
SIGNAL \rf|register_arr[7][7]~q\ : std_logic;
SIGNAL \rf|register_arr[6][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[6][7]~q\ : std_logic;
SIGNAL \rf|register_arr[4][7]~q\ : std_logic;
SIGNAL \rf|QA[7]~40_combout\ : std_logic;
SIGNAL \rf|register_arr[5][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][7]~q\ : std_logic;
SIGNAL \rf|QA[7]~41_combout\ : std_logic;
SIGNAL \rf|register_arr[2][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][7]~q\ : std_logic;
SIGNAL \rf|register_arr[1][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][7]~q\ : std_logic;
SIGNAL \rf|register_arr[0][7]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][7]~q\ : std_logic;
SIGNAL \rf|QA[7]~42_combout\ : std_logic;
SIGNAL \rf|QA[7]~43_combout\ : std_logic;
SIGNAL \rf|QA[7]~44_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~23\ : std_logic;
SIGNAL \sweden_is_great|Add0~25_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~26_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~27_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~28_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~29_combout\ : std_logic;
SIGNAL \INPUT[8]~input_o\ : std_logic;
SIGNAL \rf|register_arr~19_combout\ : std_logic;
SIGNAL \rf|register_arr[5][8]~q\ : std_logic;
SIGNAL \rf|register_arr[6][8]~q\ : std_logic;
SIGNAL \rf|register_arr[4][8]~q\ : std_logic;
SIGNAL \rf|QA[8]~45_combout\ : std_logic;
SIGNAL \rf|QA[8]~46_combout\ : std_logic;
SIGNAL \rf|register_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][8]~q\ : std_logic;
SIGNAL \rf|register_arr[0][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[0][8]~q\ : std_logic;
SIGNAL \rf|register_arr[1][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[1][8]~q\ : std_logic;
SIGNAL \rf|QA[8]~47_combout\ : std_logic;
SIGNAL \rf|register_arr[3][8]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][8]~q\ : std_logic;
SIGNAL \rf|QA[8]~48_combout\ : std_logic;
SIGNAL \rf|QA[8]~49_combout\ : std_logic;
SIGNAL \rf|register_arr[7][8]~q\ : std_logic;
SIGNAL \rf|QB[8]~45_combout\ : std_logic;
SIGNAL \rf|QB[8]~46_combout\ : std_logic;
SIGNAL \rf|QB[8]~47_combout\ : std_logic;
SIGNAL \rf|QB[8]~48_combout\ : std_logic;
SIGNAL \rf|QB[8]~49_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~26\ : std_logic;
SIGNAL \sweden_is_great|Add0~28_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~30_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~31_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~39_combout\ : std_logic;
SIGNAL \INPUT[9]~input_o\ : std_logic;
SIGNAL \rf|register_arr~0_combout\ : std_logic;
SIGNAL \rf|register_arr[5][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[5][9]~q\ : std_logic;
SIGNAL \rf|register_arr[6][9]~q\ : std_logic;
SIGNAL \rf|register_arr[4][9]~q\ : std_logic;
SIGNAL \rf|QA[9]~0_combout\ : std_logic;
SIGNAL \rf|QA[9]~1_combout\ : std_logic;
SIGNAL \rf|register_arr[2][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[2][9]~q\ : std_logic;
SIGNAL \rf|register_arr[1][9]~q\ : std_logic;
SIGNAL \rf|QA[9]~2_combout\ : std_logic;
SIGNAL \rf|register_arr[3][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[3][9]~q\ : std_logic;
SIGNAL \rf|QA[9]~3_combout\ : std_logic;
SIGNAL \rf|QA[9]~4_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~32_combout\ : std_logic;
SIGNAL \rf|register_arr[0][9]~q\ : std_logic;
SIGNAL \rf|QB[9]~2_combout\ : std_logic;
SIGNAL \rf|QB[9]~3_combout\ : std_logic;
SIGNAL \rf|QB[9]~0_combout\ : std_logic;
SIGNAL \rf|register_arr[7][9]~feeder_combout\ : std_logic;
SIGNAL \rf|register_arr[7][9]~q\ : std_logic;
SIGNAL \rf|QB[9]~1_combout\ : std_logic;
SIGNAL \rf|QB[9]~4_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~33_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~30_combout\ : std_logic;
SIGNAL \sweden_is_great|Add0~29\ : std_logic;
SIGNAL \sweden_is_great|Add0~31_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~34_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~35_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~36_combout\ : std_logic;
SIGNAL \sweden_is_great|sum_rtl~37_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~1_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~0_combout\ : std_logic;
SIGNAL \sweden_is_great|Z_Flag~2_combout\ : std_logic;
SIGNAL \sweden_is_great|O_Flag~0_combout\ : std_logic;
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
\sweden_is_great|ALT_INV_O_Flag~0_combout\ <= NOT \sweden_is_great|O_Flag~0_combout\;
\sweden_is_great|ALT_INV_Z_Flag~2_combout\ <= NOT \sweden_is_great|Z_Flag~2_combout\;

-- Location: LCCOMB_X38_Y34_N10
\rf|QB[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~10_combout\ = (\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][1]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[4][1]~q\,
	datac => \RB[1]~input_o\,
	datad => \rf|register_arr[6][1]~q\,
	combout => \rf|QB[1]~10_combout\);

-- Location: LCCOMB_X36_Y34_N26
\rf|QB[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~11_combout\ = (\RB[0]~input_o\ & ((\rf|QB[1]~10_combout\ & ((\rf|register_arr[7][1]~q\))) # (!\rf|QB[1]~10_combout\ & (\rf|register_arr[5][1]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][1]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|QB[1]~10_combout\,
	datad => \rf|register_arr[7][1]~q\,
	combout => \rf|QB[1]~11_combout\);

-- Location: LCCOMB_X37_Y34_N20
\sweden_is_great|Add0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~5_combout\ = ((!\RB[2]~input_o\ & !\rf|QB[1]~13_combout\)) # (!\ReadB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RB[2]~input_o\,
	datac => \ReadB~input_o\,
	datad => \rf|QB[1]~13_combout\,
	combout => \sweden_is_great|Add0~5_combout\);

-- Location: LCCOMB_X37_Y34_N6
\sweden_is_great|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~6_combout\ = \OP[0]~input_o\ $ (((!\sweden_is_great|Add0~5_combout\ & ((\rf|QB[1]~11_combout\) # (!\RB[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[0]~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[1]~11_combout\,
	datad => \sweden_is_great|Add0~5_combout\,
	combout => \sweden_is_great|Add0~6_combout\);

-- Location: LCCOMB_X37_Y31_N16
\sweden_is_great|Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~9_combout\ = \OP[0]~input_o\ $ (\rf|QB[2]~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[2]~19_combout\,
	combout => \sweden_is_great|Add0~9_combout\);

-- Location: FF_X36_Y35_N13
\rf|register_arr[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][4]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][4]~q\);

-- Location: LCCOMB_X36_Y33_N24
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

-- Location: LCCOMB_X37_Y33_N14
\sweden_is_great|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~18_combout\ = \OP[0]~input_o\ $ (\rf|QB[5]~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => \rf|QB[5]~34_combout\,
	combout => \sweden_is_great|Add0~18_combout\);

-- Location: LCCOMB_X37_Y35_N20
\rf|QB[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~35_combout\ = (\RB[1]~input_o\ & (((\RB[0]~input_o\) # (\rf|register_arr[6][6]~q\)))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][6]~q\ & (!\RB[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[4][6]~q\,
	datac => \RB[0]~input_o\,
	datad => \rf|register_arr[6][6]~q\,
	combout => \rf|QB[6]~35_combout\);

-- Location: FF_X37_Y35_N31
\rf|register_arr[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][6]~q\);

-- Location: LCCOMB_X37_Y35_N30
\rf|QB[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~36_combout\ = (\RB[0]~input_o\ & ((\rf|QB[6]~35_combout\ & ((\rf|register_arr[7][6]~q\))) # (!\rf|QB[6]~35_combout\ & (\rf|register_arr[5][6]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][6]~q\,
	datac => \rf|register_arr[7][6]~q\,
	datad => \rf|QB[6]~35_combout\,
	combout => \rf|QB[6]~36_combout\);

-- Location: LCCOMB_X36_Y32_N12
\rf|QB[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~37_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][6]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & ((\rf|register_arr[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[1][6]~q\,
	datad => \rf|register_arr[0][6]~q\,
	combout => \rf|QB[6]~37_combout\);

-- Location: LCCOMB_X37_Y32_N14
\rf|QB[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[6]~38_combout\ = (\RB[1]~input_o\ & ((\rf|QB[6]~37_combout\ & (\rf|register_arr[3][6]~q\)) # (!\rf|QB[6]~37_combout\ & ((\rf|register_arr[2][6]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][6]~q\,
	datac => \rf|register_arr[2][6]~q\,
	datad => \rf|QB[6]~37_combout\,
	combout => \rf|QB[6]~38_combout\);

-- Location: LCCOMB_X37_Y33_N12
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

-- Location: LCCOMB_X37_Y33_N16
\sweden_is_great|Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~21_combout\ = \OP[0]~input_o\ $ (\rf|QB[6]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => \rf|QB[6]~39_combout\,
	combout => \sweden_is_great|Add0~21_combout\);

-- Location: FF_X37_Y32_N9
\rf|register_arr[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][7]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][7]~q\);

-- Location: LCCOMB_X37_Y35_N0
\rf|QB[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~40_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[6][7]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & ((\rf|register_arr[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[6][7]~q\,
	datad => \rf|register_arr[4][7]~q\,
	combout => \rf|QB[7]~40_combout\);

-- Location: LCCOMB_X37_Y35_N14
\rf|QB[7]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~41_combout\ = (\RB[0]~input_o\ & ((\rf|QB[7]~40_combout\ & ((\rf|register_arr[7][7]~q\))) # (!\rf|QB[7]~40_combout\ & (\rf|register_arr[5][7]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[7]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][7]~q\,
	datac => \rf|register_arr[7][7]~q\,
	datad => \rf|QB[7]~40_combout\,
	combout => \rf|QB[7]~41_combout\);

-- Location: LCCOMB_X36_Y34_N2
\rf|QB[7]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~42_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & (\rf|register_arr[1][7]~q\)) # (!\RB[0]~input_o\ & ((\rf|register_arr[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[1][7]~q\,
	datad => \rf|register_arr[0][7]~q\,
	combout => \rf|QB[7]~42_combout\);

-- Location: LCCOMB_X37_Y32_N10
\rf|QB[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~43_combout\ = (\RB[1]~input_o\ & ((\rf|QB[7]~42_combout\ & ((\rf|register_arr[3][7]~q\))) # (!\rf|QB[7]~42_combout\ & (\rf|register_arr[2][7]~q\)))) # (!\RB[1]~input_o\ & (((\rf|QB[7]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[2][7]~q\,
	datac => \rf|register_arr[3][7]~q\,
	datad => \rf|QB[7]~42_combout\,
	combout => \rf|QB[7]~43_combout\);

-- Location: LCCOMB_X37_Y32_N16
\rf|QB[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[7]~44_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[7]~41_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[7]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[7]~41_combout\,
	datad => \rf|QB[7]~43_combout\,
	combout => \rf|QB[7]~44_combout\);

-- Location: LCCOMB_X37_Y32_N22
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

-- Location: LCCOMB_X37_Y32_N18
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

-- Location: LCCOMB_X39_Y33_N12
\sweden_is_great|sum_rtl~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~38_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[8]~49_combout\) # (\rf|QA[8]~49_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QB[8]~49_combout\ & 
-- \rf|QA[8]~49_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[8]~49_combout\,
	datab => \sweden_is_great|sum_rtl[9]~6_combout\,
	datac => \rf|QA[8]~49_combout\,
	datad => \sweden_is_great|sum_rtl[9]~7_combout\,
	combout => \sweden_is_great|sum_rtl~38_combout\);

-- Location: LCCOMB_X37_Y33_N26
\sweden_is_great|sum_rtl~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~40_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[6]~39_combout\) # (\rf|QB[6]~39_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QA[6]~39_combout\ & 
-- \rf|QB[6]~39_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \rf|QA[6]~39_combout\,
	datac => \sweden_is_great|sum_rtl[9]~7_combout\,
	datad => \rf|QB[6]~39_combout\,
	combout => \sweden_is_great|sum_rtl~40_combout\);

-- Location: LCCOMB_X39_Y34_N22
\sweden_is_great|sum_rtl~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~44_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[2]~19_combout\) # (\rf|QA[2]~19_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (((\rf|QB[2]~19_combout\ & 
-- \rf|QA[2]~19_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \rf|QB[2]~19_combout\,
	datac => \rf|QA[2]~19_combout\,
	datad => \sweden_is_great|sum_rtl[9]~7_combout\,
	combout => \sweden_is_great|sum_rtl~44_combout\);

-- Location: IOIBUF_X52_Y23_N8
\WAddr[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(1),
	o => \WAddr[1]~input_o\);

-- Location: IOIBUF_X48_Y41_N1
\INPUT[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(6),
	o => \INPUT[6]~input_o\);

-- Location: LCCOMB_X36_Y35_N12
\rf|register_arr[5][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][4]~feeder_combout\ = \rf|register_arr~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~15_combout\,
	combout => \rf|register_arr[5][4]~feeder_combout\);

-- Location: LCCOMB_X37_Y32_N8
\rf|register_arr[3][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[3][7]~feeder_combout\);

-- Location: IOOBUF_X46_Y41_N9
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

-- Location: IOOBUF_X46_Y41_N23
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

-- Location: IOOBUF_X52_Y30_N9
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

-- Location: IOOBUF_X52_Y30_N2
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

-- Location: IOOBUF_X43_Y41_N2
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

-- Location: IOOBUF_X52_Y31_N2
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

-- Location: IOOBUF_X43_Y41_N9
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

-- Location: IOOBUF_X52_Y31_N9
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

-- Location: IOOBUF_X46_Y41_N16
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

-- Location: IOOBUF_X52_Y27_N9
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

-- Location: IOOBUF_X52_Y12_N9
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

-- Location: IOOBUF_X52_Y25_N2
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

-- Location: IOOBUF_X52_Y19_N9
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

-- Location: IOIBUF_X41_Y41_N8
\IE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IE,
	o => \IE~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\OP[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(1),
	o => \OP[1]~input_o\);

-- Location: IOIBUF_X52_Y27_N1
\OE~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OE,
	o => \OE~input_o\);

-- Location: LCCOMB_X38_Y32_N22
\sweden_is_great|sum_rtl[9]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~7_combout\ = (!\OP[2]~input_o\ & (\OP[1]~input_o\ & ((\OE~input_o\) # (!\IE~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \IE~input_o\,
	datac => \OP[1]~input_o\,
	datad => \OE~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~7_combout\);

-- Location: IOIBUF_X38_Y41_N1
\OP[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(0),
	o => \OP[0]~input_o\);

-- Location: LCCOMB_X38_Y32_N10
\sweden_is_great|sum_rtl[9]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~5_combout\ = (\OE~input_o\) # (!\IE~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IE~input_o\,
	datad => \OE~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~5_combout\);

-- Location: LCCOMB_X38_Y32_N28
\sweden_is_great|sum_rtl[9]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~6_combout\ = (\sweden_is_great|sum_rtl[9]~5_combout\ & ((\OP[2]~input_o\) # ((\OP[0]~input_o\) # (!\OP[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[0]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \sweden_is_great|sum_rtl[9]~5_combout\,
	combout => \sweden_is_great|sum_rtl[9]~6_combout\);

-- Location: IOIBUF_X34_Y41_N8
\ReadA~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ReadA,
	o => \ReadA~input_o\);

-- Location: IOIBUF_X52_Y32_N15
\INPUT[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: IOIBUF_X41_Y41_N22
\RESET~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: LCCOMB_X38_Y32_N26
\rf|register_arr~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~11_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[0]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(0),
	datab => \IE~input_o\,
	datac => \INPUT[0]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~11_combout\);

-- Location: LCCOMB_X36_Y34_N22
\rf|register_arr[7][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[7][0]~feeder_combout\);

-- Location: IOIBUF_X52_Y23_N1
\WAddr[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(2),
	o => \WAddr[2]~input_o\);

-- Location: IOIBUF_X52_Y28_N1
\Write~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Write,
	o => \Write~input_o\);

-- Location: IOIBUF_X52_Y28_N8
\WAddr[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WAddr(0),
	o => \WAddr[0]~input_o\);

-- Location: LCCOMB_X39_Y32_N24
\rf|register_arr[5][6]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][6]~1_combout\ = (\Write~input_o\ & \WAddr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Write~input_o\,
	datad => \WAddr[0]~input_o\,
	combout => \rf|register_arr[5][6]~1_combout\);

-- Location: LCCOMB_X39_Y32_N30
\rf|register_arr[7][4]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][4]~6_combout\ = (\RESET~input_o\) # ((\WAddr[1]~input_o\ & (\WAddr[2]~input_o\ & \rf|register_arr[5][6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[5][6]~1_combout\,
	combout => \rf|register_arr[7][4]~6_combout\);

-- Location: FF_X36_Y34_N23
\rf|register_arr[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[7][0]~feeder_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][0]~q\);

-- Location: LCCOMB_X39_Y32_N6
\rf|register_arr[5][6]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][6]~2_combout\ = (\RESET~input_o\) # ((!\WAddr[1]~input_o\ & (\WAddr[2]~input_o\ & \rf|register_arr[5][6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[5][6]~1_combout\,
	combout => \rf|register_arr[5][6]~2_combout\);

-- Location: FF_X38_Y32_N11
\rf|register_arr[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][0]~q\);

-- Location: IOIBUF_X36_Y41_N8
\RA[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

-- Location: LCCOMB_X39_Y32_N28
\rf|register_arr[6][1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][1]~3_combout\ = (\Write~input_o\ & !\WAddr[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Write~input_o\,
	datad => \WAddr[0]~input_o\,
	combout => \rf|register_arr[6][1]~3_combout\);

-- Location: LCCOMB_X39_Y32_N16
\rf|register_arr[4][6]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][6]~5_combout\ = (\RESET~input_o\) # ((!\WAddr[1]~input_o\ & (\WAddr[2]~input_o\ & \rf|register_arr[6][1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[6][1]~3_combout\,
	combout => \rf|register_arr[4][6]~5_combout\);

-- Location: FF_X38_Y34_N17
\rf|register_arr[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][0]~q\);

-- Location: LCCOMB_X39_Y32_N2
\rf|register_arr[6][1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][1]~4_combout\ = (\RESET~input_o\) # ((\WAddr[1]~input_o\ & (\WAddr[2]~input_o\ & \rf|register_arr[6][1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[6][1]~3_combout\,
	combout => \rf|register_arr[6][1]~4_combout\);

-- Location: FF_X38_Y34_N19
\rf|register_arr[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][0]~q\);

-- Location: LCCOMB_X38_Y34_N16
\rf|QA[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~5_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\rf|register_arr[6][0]~q\))) # (!\RA[1]~input_o\ & (\rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[4][0]~q\,
	datad => \rf|register_arr[6][0]~q\,
	combout => \rf|QA[0]~5_combout\);

-- Location: LCCOMB_X37_Y34_N4
\rf|QA[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~6_combout\ = (\RA[0]~input_o\ & ((\rf|QA[0]~5_combout\ & (\rf|register_arr[7][0]~q\)) # (!\rf|QA[0]~5_combout\ & ((\rf|register_arr[5][0]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][0]~q\,
	datac => \rf|register_arr[5][0]~q\,
	datad => \rf|QA[0]~5_combout\,
	combout => \rf|QA[0]~6_combout\);

-- Location: LCCOMB_X39_Y32_N26
\rf|register_arr[3][6]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][6]~10_combout\ = (\RESET~input_o\) # ((\WAddr[1]~input_o\ & (!\WAddr[2]~input_o\ & \rf|register_arr[5][6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[5][6]~1_combout\,
	combout => \rf|register_arr[3][6]~10_combout\);

-- Location: FF_X38_Y32_N31
\rf|register_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][0]~q\);

-- Location: LCCOMB_X39_Y32_N8
\rf|register_arr[0][1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][1]~9_combout\ = (\RESET~input_o\) # ((!\WAddr[1]~input_o\ & (!\WAddr[2]~input_o\ & \rf|register_arr[6][1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[6][1]~3_combout\,
	combout => \rf|register_arr[0][1]~9_combout\);

-- Location: FF_X36_Y32_N23
\rf|register_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~11_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][0]~q\);

-- Location: LCCOMB_X36_Y32_N28
\rf|register_arr[1][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[1][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y32_N10
\rf|register_arr[1][9]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][9]~8_combout\ = (\RESET~input_o\) # ((!\WAddr[1]~input_o\ & (!\WAddr[2]~input_o\ & \rf|register_arr[5][6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[5][6]~1_combout\,
	combout => \rf|register_arr[1][9]~8_combout\);

-- Location: FF_X36_Y32_N29
\rf|register_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][0]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][0]~q\);

-- Location: LCCOMB_X36_Y32_N22
\rf|QA[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~7_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][0]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][0]~q\,
	datad => \rf|register_arr[1][0]~q\,
	combout => \rf|QA[0]~7_combout\);

-- Location: LCCOMB_X37_Y34_N2
\rf|QA[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~8_combout\ = (\RA[1]~input_o\ & ((\rf|QA[0]~7_combout\ & ((\rf|register_arr[3][0]~q\))) # (!\rf|QA[0]~7_combout\ & (\rf|register_arr[2][0]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[2][0]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[3][0]~q\,
	datad => \rf|QA[0]~7_combout\,
	combout => \rf|QA[0]~8_combout\);

-- Location: LCCOMB_X37_Y34_N28
\rf|QA[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[0]~9_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[0]~6_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[0]~6_combout\,
	datad => \rf|QA[0]~8_combout\,
	combout => \rf|QA[0]~9_combout\);

-- Location: LCCOMB_X38_Y34_N6
\sweden_is_great|sum_rtl~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~46_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[0]~9_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\) # (\rf|QA[0]~9_combout\))) # (!\rf|QB[0]~9_combout\ & (\sweden_is_great|sum_rtl[9]~6_combout\ & 
-- \rf|QA[0]~9_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((!\sweden_is_great|sum_rtl[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[0]~9_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl[9]~6_combout\,
	datad => \rf|QA[0]~9_combout\,
	combout => \sweden_is_great|sum_rtl~46_combout\);

-- Location: LCCOMB_X38_Y32_N30
\sweden_is_great|sum_rtl[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~3_combout\ = (\OP[1]~input_o\) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datab => \OP[1]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~3_combout\);

-- Location: LCCOMB_X38_Y32_N2
\sweden_is_great|sum_rtl[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~1_combout\ = (\OP[2]~input_o\ & ((\OP[1]~input_o\) # (\OP[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[2]~input_o\,
	datac => \OP[1]~input_o\,
	datad => \OP[0]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~1_combout\);

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

-- Location: IOIBUF_X38_Y41_N8
\RB[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(1),
	o => \RB[1]~input_o\);

-- Location: LCCOMB_X38_Y34_N18
\rf|QB[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~5_combout\ = (\RB[0]~input_o\ & (\RB[1]~input_o\)) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & (\rf|register_arr[6][0]~q\)) # (!\RB[1]~input_o\ & ((\rf|register_arr[4][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[6][0]~q\,
	datad => \rf|register_arr[4][0]~q\,
	combout => \rf|QB[0]~5_combout\);

-- Location: LCCOMB_X38_Y32_N4
\rf|QB[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~6_combout\ = (\RB[0]~input_o\ & ((\rf|QB[0]~5_combout\ & ((\rf|register_arr[7][0]~q\))) # (!\rf|QB[0]~5_combout\ & (\rf|register_arr[5][0]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][0]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[7][0]~q\,
	datad => \rf|QB[0]~5_combout\,
	combout => \rf|QB[0]~6_combout\);

-- Location: LCCOMB_X36_Y32_N16
\rf|QB[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~7_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][0]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & (\rf|register_arr[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[0][0]~q\,
	datad => \rf|register_arr[1][0]~q\,
	combout => \rf|QB[0]~7_combout\);

-- Location: LCCOMB_X37_Y34_N22
\rf|register_arr[2][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][0]~feeder_combout\ = \rf|register_arr~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~11_combout\,
	combout => \rf|register_arr[2][0]~feeder_combout\);

-- Location: LCCOMB_X39_Y32_N12
\rf|register_arr[2][3]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][3]~7_combout\ = (\RESET~input_o\) # ((\WAddr[1]~input_o\ & (!\WAddr[2]~input_o\ & \rf|register_arr[6][1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WAddr[1]~input_o\,
	datab => \RESET~input_o\,
	datac => \WAddr[2]~input_o\,
	datad => \rf|register_arr[6][1]~3_combout\,
	combout => \rf|register_arr[2][3]~7_combout\);

-- Location: FF_X37_Y34_N23
\rf|register_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][0]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][0]~q\);

-- Location: LCCOMB_X38_Y32_N24
\rf|QB[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~8_combout\ = (\RB[1]~input_o\ & ((\rf|QB[0]~7_combout\ & (\rf|register_arr[3][0]~q\)) # (!\rf|QB[0]~7_combout\ & ((\rf|register_arr[2][0]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][0]~q\,
	datac => \rf|QB[0]~7_combout\,
	datad => \rf|register_arr[2][0]~q\,
	combout => \rf|QB[0]~8_combout\);

-- Location: LCCOMB_X38_Y32_N18
\rf|QB[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[0]~9_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[0]~6_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[0]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[0]~6_combout\,
	datad => \rf|QB[0]~8_combout\,
	combout => \rf|QB[0]~9_combout\);

-- Location: LCCOMB_X38_Y32_N0
\sweden_is_great|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~0_combout\ = \OP[0]~input_o\ $ (\rf|QB[0]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => \rf|QB[0]~9_combout\,
	combout => \sweden_is_great|Add0~0_combout\);

-- Location: LCCOMB_X38_Y33_N6
\sweden_is_great|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~2_cout\ = CARRY(\OP[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => VCC,
	cout => \sweden_is_great|Add0~2_cout\);

-- Location: LCCOMB_X38_Y33_N8
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

-- Location: LCCOMB_X38_Y34_N22
\sweden_is_great|sum_rtl~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~2_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[0]~9_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~3_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[0]~9_combout\,
	datac => \sweden_is_great|sum_rtl[9]~1_combout\,
	datad => \sweden_is_great|Add0~3_combout\,
	combout => \sweden_is_great|sum_rtl~2_combout\);

-- Location: LCCOMB_X38_Y34_N24
\sweden_is_great|sum_rtl~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~4_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~2_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[0]~9_combout\ $ (((\rf|QB[0]~9_combout\) # 
-- (!\sweden_is_great|sum_rtl~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[0]~9_combout\,
	datab => \sweden_is_great|sum_rtl[9]~3_combout\,
	datac => \sweden_is_great|sum_rtl~2_combout\,
	datad => \rf|QA[0]~9_combout\,
	combout => \sweden_is_great|sum_rtl~4_combout\);

-- Location: LCCOMB_X39_Y34_N20
\sweden_is_great|sum_rtl~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~47_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (\sweden_is_great|sum_rtl~46_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl~46_combout\ & (\sweden_is_great|sum_rtl\(0))) # 
-- (!\sweden_is_great|sum_rtl~46_combout\ & ((\sweden_is_great|sum_rtl~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \sweden_is_great|sum_rtl~46_combout\,
	datac => \sweden_is_great|sum_rtl\(0),
	datad => \sweden_is_great|sum_rtl~4_combout\,
	combout => \sweden_is_great|sum_rtl~47_combout\);

-- Location: FF_X39_Y34_N21
\sweden_is_great|sum_rtl[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~47_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(0));

-- Location: IOIBUF_X34_Y41_N1
\RA[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

-- Location: IOIBUF_X41_Y41_N15
\INPUT[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X38_Y34_N2
\rf|register_arr~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~12_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[1]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IE~input_o\,
	datab => \RESET~input_o\,
	datac => \sweden_is_great|sum_rtl\(1),
	datad => \INPUT[1]~input_o\,
	combout => \rf|register_arr~12_combout\);

-- Location: LCCOMB_X36_Y34_N20
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

-- Location: FF_X36_Y34_N21
\rf|register_arr[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[7][1]~feeder_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][1]~q\);

-- Location: FF_X38_Y34_N1
\rf|register_arr[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][1]~q\);

-- Location: FF_X38_Y34_N3
\rf|register_arr[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr~12_combout\,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][1]~q\);

-- Location: LCCOMB_X38_Y34_N0
\rf|QA[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~10_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & ((\rf|register_arr[6][1]~q\))) # (!\RA[1]~input_o\ & (\rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[4][1]~q\,
	datad => \rf|register_arr[6][1]~q\,
	combout => \rf|QA[1]~10_combout\);

-- Location: LCCOMB_X35_Y34_N26
\rf|register_arr[5][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[5][1]~feeder_combout\);

-- Location: FF_X35_Y34_N27
\rf|register_arr[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][1]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][1]~q\);

-- Location: LCCOMB_X38_Y34_N14
\rf|QA[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~11_combout\ = (\RA[0]~input_o\ & ((\rf|QA[1]~10_combout\ & (\rf|register_arr[7][1]~q\)) # (!\rf|QA[1]~10_combout\ & ((\rf|register_arr[5][1]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][1]~q\,
	datac => \rf|QA[1]~10_combout\,
	datad => \rf|register_arr[5][1]~q\,
	combout => \rf|QA[1]~11_combout\);

-- Location: LCCOMB_X37_Y32_N28
\rf|register_arr[3][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[3][1]~feeder_combout\);

-- Location: FF_X37_Y32_N29
\rf|register_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][1]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][1]~q\);

-- Location: FF_X37_Y32_N31
\rf|register_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~12_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][1]~q\);

-- Location: LCCOMB_X36_Y32_N4
\rf|register_arr[0][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[0][1]~feeder_combout\);

-- Location: FF_X36_Y32_N5
\rf|register_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[0][1]~feeder_combout\,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][1]~q\);

-- Location: LCCOMB_X36_Y32_N18
\rf|register_arr[1][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][1]~feeder_combout\ = \rf|register_arr~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~12_combout\,
	combout => \rf|register_arr[1][1]~feeder_combout\);

-- Location: FF_X36_Y32_N19
\rf|register_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][1]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][1]~q\);

-- Location: LCCOMB_X36_Y32_N2
\rf|QA[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[1]~12_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][1]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][1]~q\,
	datad => \rf|register_arr[1][1]~q\,
	combout => \rf|QA[1]~12_combout\);

-- Location: LCCOMB_X37_Y32_N6
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

-- Location: LCCOMB_X38_Y34_N20
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

-- Location: IOIBUF_X41_Y41_N1
\RB[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RB(2),
	o => \RB[2]~input_o\);

-- Location: LCCOMB_X36_Y32_N24
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

-- Location: LCCOMB_X37_Y32_N12
\rf|QB[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~13_combout\ = (\RB[1]~input_o\ & ((\rf|QB[1]~12_combout\ & (\rf|register_arr[3][1]~q\)) # (!\rf|QB[1]~12_combout\ & ((\rf|register_arr[2][1]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[1]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][1]~q\,
	datac => \rf|register_arr[2][1]~q\,
	datad => \rf|QB[1]~12_combout\,
	combout => \rf|QB[1]~13_combout\);

-- Location: LCCOMB_X37_Y34_N18
\rf|QB[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[1]~14_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[1]~11_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[1]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[1]~11_combout\,
	datab => \RB[2]~input_o\,
	datac => \ReadB~input_o\,
	datad => \rf|QB[1]~13_combout\,
	combout => \rf|QB[1]~14_combout\);

-- Location: LCCOMB_X38_Y33_N10
\sweden_is_great|Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~7_combout\ = ((\sweden_is_great|Add0~6_combout\ $ (\rf|QA[1]~14_combout\ $ (!\sweden_is_great|Add0~4\)))) # (GND)
-- \sweden_is_great|Add0~8\ = CARRY((\sweden_is_great|Add0~6_combout\ & ((\rf|QA[1]~14_combout\) # (!\sweden_is_great|Add0~4\))) # (!\sweden_is_great|Add0~6_combout\ & (\rf|QA[1]~14_combout\ & !\sweden_is_great|Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~6_combout\,
	datab => \rf|QA[1]~14_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~4\,
	combout => \sweden_is_great|Add0~7_combout\,
	cout => \sweden_is_great|Add0~8\);

-- Location: LCCOMB_X39_Y34_N18
\sweden_is_great|sum_rtl~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~8_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[1]~14_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~7_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[1]~14_combout\,
	datac => \sweden_is_great|Add0~7_combout\,
	datad => \sweden_is_great|sum_rtl[9]~1_combout\,
	combout => \sweden_is_great|sum_rtl~8_combout\);

-- Location: LCCOMB_X39_Y34_N12
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

-- Location: LCCOMB_X39_Y34_N10
\sweden_is_great|sum_rtl~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~10_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl~9_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- (\sweden_is_great|sum_rtl\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(1),
	datad => \sweden_is_great|sum_rtl~9_combout\,
	combout => \sweden_is_great|sum_rtl~10_combout\);

-- Location: LCCOMB_X39_Y34_N30
\sweden_is_great|sum_rtl~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~11_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[1]~14_combout\ & ((\rf|QB[1]~14_combout\) # (\sweden_is_great|sum_rtl~10_combout\))) # (!\rf|QA[1]~14_combout\ & (\rf|QB[1]~14_combout\ & 
-- \sweden_is_great|sum_rtl~10_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \rf|QA[1]~14_combout\,
	datac => \rf|QB[1]~14_combout\,
	datad => \sweden_is_great|sum_rtl~10_combout\,
	combout => \sweden_is_great|sum_rtl~11_combout\);

-- Location: FF_X39_Y34_N31
\sweden_is_great|sum_rtl[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~11_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(1));

-- Location: IOIBUF_X52_Y32_N22
\INPUT[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: LCCOMB_X38_Y32_N20
\rf|register_arr~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~13_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[2]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(2),
	datab => \IE~input_o\,
	datac => \INPUT[2]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~13_combout\);

-- Location: LCCOMB_X37_Y31_N28
\rf|register_arr[3][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[3][2]~feeder_combout\);

-- Location: FF_X37_Y31_N29
\rf|register_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][2]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][2]~q\);

-- Location: LCCOMB_X36_Y31_N26
\rf|register_arr[2][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[2][2]~feeder_combout\);

-- Location: FF_X36_Y31_N27
\rf|register_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][2]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][2]~q\);

-- Location: LCCOMB_X38_Y31_N14
\rf|register_arr[0][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[0][2]~feeder_combout\);

-- Location: FF_X38_Y31_N15
\rf|register_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[0][2]~feeder_combout\,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][2]~q\);

-- Location: LCCOMB_X38_Y31_N20
\rf|register_arr[1][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[1][2]~feeder_combout\);

-- Location: FF_X38_Y31_N21
\rf|register_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][2]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][2]~q\);

-- Location: LCCOMB_X38_Y31_N24
\rf|QB[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~17_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][2]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & (\rf|register_arr[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[0][2]~q\,
	datad => \rf|register_arr[1][2]~q\,
	combout => \rf|QB[2]~17_combout\);

-- Location: LCCOMB_X37_Y31_N22
\rf|QB[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~18_combout\ = (\RB[1]~input_o\ & ((\rf|QB[2]~17_combout\ & (\rf|register_arr[3][2]~q\)) # (!\rf|QB[2]~17_combout\ & ((\rf|register_arr[2][2]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][2]~q\,
	datac => \rf|register_arr[2][2]~q\,
	datad => \rf|QB[2]~17_combout\,
	combout => \rf|QB[2]~18_combout\);

-- Location: LCCOMB_X37_Y31_N8
\rf|register_arr[7][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[7][2]~feeder_combout\);

-- Location: FF_X37_Y31_N9
\rf|register_arr[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[7][2]~feeder_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][2]~q\);

-- Location: LCCOMB_X38_Y34_N30
\rf|register_arr[4][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[4][2]~feeder_combout\);

-- Location: FF_X38_Y34_N31
\rf|register_arr[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[4][2]~feeder_combout\,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][2]~q\);

-- Location: FF_X38_Y34_N13
\rf|register_arr[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~13_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][2]~q\);

-- Location: LCCOMB_X38_Y34_N28
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

-- Location: LCCOMB_X37_Y31_N6
\rf|QB[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~16_combout\ = (\RB[0]~input_o\ & ((\rf|QB[2]~15_combout\ & ((\rf|register_arr[7][2]~q\))) # (!\rf|QB[2]~15_combout\ & (\rf|register_arr[5][2]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][2]~q\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[7][2]~q\,
	datad => \rf|QB[2]~15_combout\,
	combout => \rf|QB[2]~16_combout\);

-- Location: LCCOMB_X37_Y31_N24
\rf|QB[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[2]~19_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[2]~16_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[2]~input_o\,
	datab => \ReadB~input_o\,
	datac => \rf|QB[2]~18_combout\,
	datad => \rf|QB[2]~16_combout\,
	combout => \rf|QB[2]~19_combout\);

-- Location: IOIBUF_X52_Y32_N8
\OP[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_OP(2),
	o => \OP[2]~input_o\);

-- Location: LCCOMB_X37_Y32_N30
\sweden_is_great|sum_rtl[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl[9]~0_combout\ = ((\OP[1]~input_o\ & !\OP[0]~input_o\)) # (!\OP[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP[1]~input_o\,
	datab => \OP[0]~input_o\,
	datad => \OP[2]~input_o\,
	combout => \sweden_is_great|sum_rtl[9]~0_combout\);

-- Location: LCCOMB_X38_Y31_N18
\rf|QA[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~17_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][2]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][2]~q\,
	datad => \rf|register_arr[1][2]~q\,
	combout => \rf|QA[2]~17_combout\);

-- Location: LCCOMB_X37_Y31_N4
\rf|QA[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~18_combout\ = (\RA[1]~input_o\ & ((\rf|QA[2]~17_combout\ & (\rf|register_arr[3][2]~q\)) # (!\rf|QA[2]~17_combout\ & ((\rf|register_arr[2][2]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[3][2]~q\,
	datac => \rf|register_arr[2][2]~q\,
	datad => \rf|QA[2]~17_combout\,
	combout => \rf|QA[2]~18_combout\);

-- Location: LCCOMB_X38_Y34_N12
\rf|QA[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~15_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][2]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][2]~q\,
	datad => \rf|register_arr[4][2]~q\,
	combout => \rf|QA[2]~15_combout\);

-- Location: LCCOMB_X36_Y31_N8
\rf|register_arr[5][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][2]~feeder_combout\ = \rf|register_arr~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~13_combout\,
	combout => \rf|register_arr[5][2]~feeder_combout\);

-- Location: FF_X36_Y31_N9
\rf|register_arr[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][2]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][2]~q\);

-- Location: LCCOMB_X37_Y31_N10
\rf|QA[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~16_combout\ = (\RA[0]~input_o\ & ((\rf|QA[2]~15_combout\ & (\rf|register_arr[7][2]~q\)) # (!\rf|QA[2]~15_combout\ & ((\rf|register_arr[5][2]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[2]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][2]~q\,
	datac => \rf|QA[2]~15_combout\,
	datad => \rf|register_arr[5][2]~q\,
	combout => \rf|QA[2]~16_combout\);

-- Location: LCCOMB_X37_Y31_N26
\rf|QA[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[2]~19_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[2]~16_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[2]~18_combout\,
	datad => \rf|QA[2]~16_combout\,
	combout => \rf|QA[2]~19_combout\);

-- Location: LCCOMB_X38_Y33_N12
\sweden_is_great|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~10_combout\ = (\sweden_is_great|Add0~9_combout\ & ((\rf|QA[2]~19_combout\ & (\sweden_is_great|Add0~8\ & VCC)) # (!\rf|QA[2]~19_combout\ & (!\sweden_is_great|Add0~8\)))) # (!\sweden_is_great|Add0~9_combout\ & ((\rf|QA[2]~19_combout\ & 
-- (!\sweden_is_great|Add0~8\)) # (!\rf|QA[2]~19_combout\ & ((\sweden_is_great|Add0~8\) # (GND)))))
-- \sweden_is_great|Add0~11\ = CARRY((\sweden_is_great|Add0~9_combout\ & (!\rf|QA[2]~19_combout\ & !\sweden_is_great|Add0~8\)) # (!\sweden_is_great|Add0~9_combout\ & ((!\sweden_is_great|Add0~8\) # (!\rf|QA[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~9_combout\,
	datab => \rf|QA[2]~19_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~8\,
	combout => \sweden_is_great|Add0~10_combout\,
	cout => \sweden_is_great|Add0~11\);

-- Location: LCCOMB_X39_Y34_N0
\sweden_is_great|sum_rtl~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~12_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[2]~19_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~10_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[2]~19_combout\,
	datab => \sweden_is_great|sum_rtl[9]~0_combout\,
	datac => \sweden_is_great|Add0~10_combout\,
	datad => \sweden_is_great|sum_rtl[9]~1_combout\,
	combout => \sweden_is_great|sum_rtl~12_combout\);

-- Location: LCCOMB_X39_Y34_N2
\sweden_is_great|sum_rtl~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~13_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~12_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[2]~19_combout\ $ (((\rf|QB[2]~19_combout\) # 
-- (!\sweden_is_great|sum_rtl~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[2]~19_combout\,
	datab => \rf|QB[2]~19_combout\,
	datac => \sweden_is_great|sum_rtl[9]~3_combout\,
	datad => \sweden_is_great|sum_rtl~12_combout\,
	combout => \sweden_is_great|sum_rtl~13_combout\);

-- Location: LCCOMB_X39_Y34_N4
\sweden_is_great|sum_rtl~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~45_combout\ = (\sweden_is_great|sum_rtl~44_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(2))))) # (!\sweden_is_great|sum_rtl~44_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~44_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(2),
	datad => \sweden_is_great|sum_rtl~13_combout\,
	combout => \sweden_is_great|sum_rtl~45_combout\);

-- Location: FF_X39_Y34_N5
\sweden_is_great|sum_rtl[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~45_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(2));

-- Location: IOIBUF_X52_Y25_N8
\INPUT[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X38_Y32_N14
\rf|register_arr~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~14_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[3]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(3),
	datab => \IE~input_o\,
	datac => \INPUT[3]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~14_combout\);

-- Location: LCCOMB_X36_Y31_N24
\rf|register_arr[2][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[2][3]~feeder_combout\);

-- Location: FF_X36_Y31_N25
\rf|register_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][3]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][3]~q\);

-- Location: FF_X37_Y31_N31
\rf|register_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~14_combout\,
	sload => VCC,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][3]~q\);

-- Location: LCCOMB_X38_Y31_N26
\rf|register_arr[0][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[0][3]~feeder_combout\);

-- Location: FF_X38_Y31_N27
\rf|register_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[0][3]~feeder_combout\,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][3]~q\);

-- Location: LCCOMB_X38_Y31_N16
\rf|register_arr[1][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[1][3]~feeder_combout\);

-- Location: FF_X38_Y31_N17
\rf|register_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][3]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][3]~q\);

-- Location: LCCOMB_X38_Y31_N22
\rf|QB[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~22_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][3]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & (\rf|register_arr[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[0][3]~q\,
	datad => \rf|register_arr[1][3]~q\,
	combout => \rf|QB[3]~22_combout\);

-- Location: LCCOMB_X37_Y31_N30
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

-- Location: LCCOMB_X36_Y35_N8
\rf|register_arr[5][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[5][3]~feeder_combout\);

-- Location: FF_X36_Y35_N9
\rf|register_arr[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][3]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][3]~q\);

-- Location: LCCOMB_X37_Y31_N18
\rf|register_arr[7][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[7][3]~feeder_combout\);

-- Location: FF_X37_Y31_N19
\rf|register_arr[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[7][3]~feeder_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][3]~q\);

-- Location: LCCOMB_X37_Y35_N4
\rf|register_arr[4][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[4][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[4][3]~feeder_combout\);

-- Location: FF_X37_Y35_N5
\rf|register_arr[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[4][3]~feeder_combout\,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][3]~q\);

-- Location: LCCOMB_X36_Y35_N18
\rf|register_arr[6][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][3]~feeder_combout\ = \rf|register_arr~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~14_combout\,
	combout => \rf|register_arr[6][3]~feeder_combout\);

-- Location: FF_X36_Y35_N19
\rf|register_arr[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[6][3]~feeder_combout\,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][3]~q\);

-- Location: LCCOMB_X37_Y35_N22
\rf|QB[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~20_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[6][3]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & (\rf|register_arr[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[4][3]~q\,
	datad => \rf|register_arr[6][3]~q\,
	combout => \rf|QB[3]~20_combout\);

-- Location: LCCOMB_X36_Y35_N14
\rf|QB[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[3]~21_combout\ = (\RB[0]~input_o\ & ((\rf|QB[3]~20_combout\ & ((\rf|register_arr[7][3]~q\))) # (!\rf|QB[3]~20_combout\ & (\rf|register_arr[5][3]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][3]~q\,
	datac => \rf|register_arr[7][3]~q\,
	datad => \rf|QB[3]~20_combout\,
	combout => \rf|QB[3]~21_combout\);

-- Location: LCCOMB_X37_Y31_N12
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

-- Location: LCCOMB_X38_Y31_N0
\rf|QA[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~22_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][3]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][3]~q\,
	datad => \rf|register_arr[1][3]~q\,
	combout => \rf|QA[3]~22_combout\);

-- Location: LCCOMB_X37_Y31_N0
\rf|QA[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~23_combout\ = (\RA[1]~input_o\ & ((\rf|QA[3]~22_combout\ & (\rf|register_arr[3][3]~q\)) # (!\rf|QA[3]~22_combout\ & ((\rf|register_arr[2][3]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[3][3]~q\,
	datac => \rf|QA[3]~22_combout\,
	datad => \rf|register_arr[2][3]~q\,
	combout => \rf|QA[3]~23_combout\);

-- Location: IOIBUF_X36_Y41_N1
\RA[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

-- Location: LCCOMB_X36_Y35_N20
\rf|QA[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~20_combout\ = (\RA[1]~input_o\ & ((\rf|register_arr[6][3]~q\) # ((\RA[0]~input_o\)))) # (!\RA[1]~input_o\ & (((!\RA[0]~input_o\ & \rf|register_arr[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[6][3]~q\,
	datac => \RA[0]~input_o\,
	datad => \rf|register_arr[4][3]~q\,
	combout => \rf|QA[3]~20_combout\);

-- Location: LCCOMB_X37_Y31_N20
\rf|QA[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~21_combout\ = (\RA[0]~input_o\ & ((\rf|QA[3]~20_combout\ & ((\rf|register_arr[7][3]~q\))) # (!\rf|QA[3]~20_combout\ & (\rf|register_arr[5][3]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[5][3]~q\,
	datac => \rf|QA[3]~20_combout\,
	datad => \rf|register_arr[7][3]~q\,
	combout => \rf|QA[3]~21_combout\);

-- Location: LCCOMB_X37_Y31_N2
\rf|QA[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[3]~24_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[3]~21_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \rf|QA[3]~23_combout\,
	datac => \RA[2]~input_o\,
	datad => \rf|QA[3]~21_combout\,
	combout => \rf|QA[3]~24_combout\);

-- Location: LCCOMB_X37_Y31_N14
\sweden_is_great|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~12_combout\ = \OP[0]~input_o\ $ (\rf|QB[3]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP[0]~input_o\,
	datad => \rf|QB[3]~24_combout\,
	combout => \sweden_is_great|Add0~12_combout\);

-- Location: LCCOMB_X38_Y33_N14
\sweden_is_great|Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~13_combout\ = ((\rf|QA[3]~24_combout\ $ (\sweden_is_great|Add0~12_combout\ $ (!\sweden_is_great|Add0~11\)))) # (GND)
-- \sweden_is_great|Add0~14\ = CARRY((\rf|QA[3]~24_combout\ & ((\sweden_is_great|Add0~12_combout\) # (!\sweden_is_great|Add0~11\))) # (!\rf|QA[3]~24_combout\ & (\sweden_is_great|Add0~12_combout\ & !\sweden_is_great|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[3]~24_combout\,
	datab => \sweden_is_great|Add0~12_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~11\,
	combout => \sweden_is_great|Add0~13_combout\,
	cout => \sweden_is_great|Add0~14\);

-- Location: LCCOMB_X39_Y34_N28
\sweden_is_great|sum_rtl~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~14_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & (\sweden_is_great|sum_rtl[9]~0_combout\ & (\rf|QA[3]~24_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (((\sweden_is_great|Add0~13_combout\)) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~1_combout\,
	datab => \sweden_is_great|sum_rtl[9]~0_combout\,
	datac => \rf|QA[3]~24_combout\,
	datad => \sweden_is_great|Add0~13_combout\,
	combout => \sweden_is_great|sum_rtl~14_combout\);

-- Location: LCCOMB_X39_Y34_N6
\sweden_is_great|sum_rtl~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~15_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~14_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[3]~24_combout\ $ (((\rf|QB[3]~24_combout\) # 
-- (!\sweden_is_great|sum_rtl~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QB[3]~24_combout\,
	datac => \rf|QA[3]~24_combout\,
	datad => \sweden_is_great|sum_rtl~14_combout\,
	combout => \sweden_is_great|sum_rtl~15_combout\);

-- Location: LCCOMB_X39_Y34_N16
\sweden_is_great|sum_rtl~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~16_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl~15_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- (\sweden_is_great|sum_rtl\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(3),
	datad => \sweden_is_great|sum_rtl~15_combout\,
	combout => \sweden_is_great|sum_rtl~16_combout\);

-- Location: LCCOMB_X39_Y34_N26
\sweden_is_great|sum_rtl~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~17_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[3]~24_combout\ & ((\rf|QA[3]~24_combout\) # (\sweden_is_great|sum_rtl~16_combout\))) # (!\rf|QB[3]~24_combout\ & (\rf|QA[3]~24_combout\ & 
-- \sweden_is_great|sum_rtl~16_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \rf|QB[3]~24_combout\,
	datac => \rf|QA[3]~24_combout\,
	datad => \sweden_is_great|sum_rtl~16_combout\,
	combout => \sweden_is_great|sum_rtl~17_combout\);

-- Location: FF_X39_Y34_N27
\sweden_is_great|sum_rtl[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~17_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(3));

-- Location: IOIBUF_X46_Y41_N1
\INPUT[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(4),
	o => \INPUT[4]~input_o\);

-- Location: LCCOMB_X39_Y34_N24
\rf|register_arr~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~15_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[4]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \sweden_is_great|sum_rtl\(4),
	datac => \IE~input_o\,
	datad => \INPUT[4]~input_o\,
	combout => \rf|register_arr~15_combout\);

-- Location: LCCOMB_X36_Y33_N0
\rf|register_arr[2][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][4]~feeder_combout\ = \rf|register_arr~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~15_combout\,
	combout => \rf|register_arr[2][4]~feeder_combout\);

-- Location: FF_X36_Y33_N1
\rf|register_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][4]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][4]~q\);

-- Location: FF_X36_Y32_N27
\rf|register_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][4]~q\);

-- Location: FF_X36_Y32_N1
\rf|register_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][4]~q\);

-- Location: LCCOMB_X36_Y32_N26
\rf|QB[4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~27_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][4]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & ((\rf|register_arr[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[1][4]~q\,
	datad => \rf|register_arr[0][4]~q\,
	combout => \rf|QB[4]~27_combout\);

-- Location: LCCOMB_X36_Y33_N4
\rf|QB[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~28_combout\ = (\RB[1]~input_o\ & ((\rf|QB[4]~27_combout\ & (\rf|register_arr[3][4]~q\)) # (!\rf|QB[4]~27_combout\ & ((\rf|register_arr[2][4]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][4]~q\,
	datab => \rf|register_arr[2][4]~q\,
	datac => \RB[1]~input_o\,
	datad => \rf|QB[4]~27_combout\,
	combout => \rf|QB[4]~28_combout\);

-- Location: FF_X37_Y35_N11
\rf|register_arr[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][4]~q\);

-- Location: FF_X37_Y35_N17
\rf|register_arr[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~15_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][4]~q\);

-- Location: LCCOMB_X36_Y35_N22
\rf|register_arr[6][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[6][4]~feeder_combout\ = \rf|register_arr~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~15_combout\,
	combout => \rf|register_arr[6][4]~feeder_combout\);

-- Location: FF_X36_Y35_N23
\rf|register_arr[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[6][4]~feeder_combout\,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][4]~q\);

-- Location: LCCOMB_X37_Y35_N16
\rf|QB[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~25_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[6][4]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & (\rf|register_arr[4][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[4][4]~q\,
	datad => \rf|register_arr[6][4]~q\,
	combout => \rf|QB[4]~25_combout\);

-- Location: LCCOMB_X37_Y35_N10
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

-- Location: LCCOMB_X36_Y33_N10
\rf|QB[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[4]~29_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & ((\rf|QB[4]~26_combout\))) # (!\RB[2]~input_o\ & (\rf|QB[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[4]~28_combout\,
	datad => \rf|QB[4]~26_combout\,
	combout => \rf|QB[4]~29_combout\);

-- Location: LCCOMB_X39_Y33_N14
\sweden_is_great|sum_rtl~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~42_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QA[4]~29_combout\ & ((\rf|QB[4]~29_combout\) # (\sweden_is_great|sum_rtl[9]~6_combout\))) # (!\rf|QA[4]~29_combout\ & (\rf|QB[4]~29_combout\ & 
-- \sweden_is_great|sum_rtl[9]~6_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((!\sweden_is_great|sum_rtl[9]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[4]~29_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QB[4]~29_combout\,
	datad => \sweden_is_great|sum_rtl[9]~6_combout\,
	combout => \sweden_is_great|sum_rtl~42_combout\);

-- Location: LCCOMB_X36_Y33_N22
\rf|register_arr[3][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][4]~feeder_combout\ = \rf|register_arr~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~15_combout\,
	combout => \rf|register_arr[3][4]~feeder_combout\);

-- Location: FF_X36_Y33_N23
\rf|register_arr[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][4]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][4]~q\);

-- Location: LCCOMB_X36_Y32_N0
\rf|QA[4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~27_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][4]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][4]~q\,
	datad => \rf|register_arr[1][4]~q\,
	combout => \rf|QA[4]~27_combout\);

-- Location: LCCOMB_X36_Y33_N16
\rf|QA[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~28_combout\ = (\RA[1]~input_o\ & ((\rf|QA[4]~27_combout\ & ((\rf|register_arr[3][4]~q\))) # (!\rf|QA[4]~27_combout\ & (\rf|register_arr[2][4]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[4]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[2][4]~q\,
	datac => \rf|register_arr[3][4]~q\,
	datad => \rf|QA[4]~27_combout\,
	combout => \rf|QA[4]~28_combout\);

-- Location: LCCOMB_X36_Y35_N0
\rf|QA[4]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~25_combout\ = (\RA[1]~input_o\ & ((\RA[0]~input_o\) # ((\rf|register_arr[6][4]~q\)))) # (!\RA[1]~input_o\ & (!\RA[0]~input_o\ & ((\rf|register_arr[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[6][4]~q\,
	datad => \rf|register_arr[4][4]~q\,
	combout => \rf|QA[4]~25_combout\);

-- Location: LCCOMB_X36_Y35_N26
\rf|QA[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~26_combout\ = (\RA[0]~input_o\ & ((\rf|QA[4]~25_combout\ & ((\rf|register_arr[7][4]~q\))) # (!\rf|QA[4]~25_combout\ & (\rf|register_arr[5][4]~q\)))) # (!\RA[0]~input_o\ & (((\rf|QA[4]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[5][4]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[7][4]~q\,
	datad => \rf|QA[4]~25_combout\,
	combout => \rf|QA[4]~26_combout\);

-- Location: LCCOMB_X36_Y33_N26
\rf|QA[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[4]~29_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[4]~26_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[4]~28_combout\,
	datad => \rf|QA[4]~26_combout\,
	combout => \rf|QA[4]~29_combout\);

-- Location: LCCOMB_X38_Y33_N16
\sweden_is_great|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~16_combout\ = (\sweden_is_great|Add0~15_combout\ & ((\rf|QA[4]~29_combout\ & (\sweden_is_great|Add0~14\ & VCC)) # (!\rf|QA[4]~29_combout\ & (!\sweden_is_great|Add0~14\)))) # (!\sweden_is_great|Add0~15_combout\ & 
-- ((\rf|QA[4]~29_combout\ & (!\sweden_is_great|Add0~14\)) # (!\rf|QA[4]~29_combout\ & ((\sweden_is_great|Add0~14\) # (GND)))))
-- \sweden_is_great|Add0~17\ = CARRY((\sweden_is_great|Add0~15_combout\ & (!\rf|QA[4]~29_combout\ & !\sweden_is_great|Add0~14\)) # (!\sweden_is_great|Add0~15_combout\ & ((!\sweden_is_great|Add0~14\) # (!\rf|QA[4]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~15_combout\,
	datab => \rf|QA[4]~29_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~14\,
	combout => \sweden_is_great|Add0~16_combout\,
	cout => \sweden_is_great|Add0~17\);

-- Location: LCCOMB_X39_Y33_N18
\sweden_is_great|sum_rtl~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~18_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[4]~29_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~16_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (((!\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \rf|QA[4]~29_combout\,
	datac => \sweden_is_great|Add0~16_combout\,
	datad => \sweden_is_great|sum_rtl[9]~1_combout\,
	combout => \sweden_is_great|sum_rtl~18_combout\);

-- Location: LCCOMB_X39_Y33_N0
\sweden_is_great|sum_rtl~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~19_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~18_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[4]~29_combout\ $ (((\rf|QB[4]~29_combout\) # 
-- (!\sweden_is_great|sum_rtl~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QA[4]~29_combout\,
	datac => \rf|QB[4]~29_combout\,
	datad => \sweden_is_great|sum_rtl~18_combout\,
	combout => \sweden_is_great|sum_rtl~19_combout\);

-- Location: LCCOMB_X39_Y33_N4
\sweden_is_great|sum_rtl~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~43_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (\sweden_is_great|sum_rtl~42_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl~42_combout\ & (\sweden_is_great|sum_rtl\(4))) # 
-- (!\sweden_is_great|sum_rtl~42_combout\ & ((\sweden_is_great|sum_rtl~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \sweden_is_great|sum_rtl~42_combout\,
	datac => \sweden_is_great|sum_rtl\(4),
	datad => \sweden_is_great|sum_rtl~19_combout\,
	combout => \sweden_is_great|sum_rtl~43_combout\);

-- Location: FF_X39_Y33_N5
\sweden_is_great|sum_rtl[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~43_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(4));

-- Location: IOIBUF_X31_Y41_N15
\INPUT[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(5),
	o => \INPUT[5]~input_o\);

-- Location: LCCOMB_X37_Y33_N2
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

-- Location: FF_X37_Y33_N3
\rf|register_arr[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr~16_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][5]~q\);

-- Location: FF_X36_Y35_N17
\rf|register_arr[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][5]~q\);

-- Location: FF_X37_Y35_N25
\rf|register_arr[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][5]~q\);

-- Location: FF_X36_Y35_N31
\rf|register_arr[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][5]~q\);

-- Location: LCCOMB_X37_Y35_N24
\rf|QB[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~30_combout\ = (\RB[1]~input_o\ & ((\RB[0]~input_o\) # ((\rf|register_arr[6][5]~q\)))) # (!\RB[1]~input_o\ & (!\RB[0]~input_o\ & (\rf|register_arr[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[4][5]~q\,
	datad => \rf|register_arr[6][5]~q\,
	combout => \rf|QB[5]~30_combout\);

-- Location: LCCOMB_X36_Y35_N16
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

-- Location: LCCOMB_X37_Y32_N20
\rf|register_arr[3][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][5]~feeder_combout\ = \rf|register_arr~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~16_combout\,
	combout => \rf|register_arr[3][5]~feeder_combout\);

-- Location: FF_X37_Y32_N21
\rf|register_arr[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][5]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][5]~q\);

-- Location: FF_X37_Y32_N3
\rf|register_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][5]~q\);

-- Location: FF_X36_Y32_N11
\rf|register_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][5]~q\);

-- Location: FF_X36_Y32_N21
\rf|register_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~16_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][5]~q\);

-- Location: LCCOMB_X36_Y32_N10
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

-- Location: LCCOMB_X37_Y32_N2
\rf|QB[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~33_combout\ = (\RB[1]~input_o\ & ((\rf|QB[5]~32_combout\ & (\rf|register_arr[3][5]~q\)) # (!\rf|QB[5]~32_combout\ & ((\rf|register_arr[2][5]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|register_arr[3][5]~q\,
	datac => \rf|register_arr[2][5]~q\,
	datad => \rf|QB[5]~32_combout\,
	combout => \rf|QB[5]~33_combout\);

-- Location: LCCOMB_X37_Y33_N28
\rf|QB[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[5]~34_combout\ = (\ReadB~input_o\ & ((\RB[2]~input_o\ & (\rf|QB[5]~31_combout\)) # (!\RB[2]~input_o\ & ((\rf|QB[5]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadB~input_o\,
	datab => \RB[2]~input_o\,
	datac => \rf|QB[5]~31_combout\,
	datad => \rf|QB[5]~33_combout\,
	combout => \rf|QB[5]~34_combout\);

-- Location: LCCOMB_X36_Y35_N30
\rf|QA[5]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~30_combout\ = (\RA[1]~input_o\ & ((\RA[0]~input_o\) # ((\rf|register_arr[6][5]~q\)))) # (!\RA[1]~input_o\ & (!\RA[0]~input_o\ & ((\rf|register_arr[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[6][5]~q\,
	datad => \rf|register_arr[4][5]~q\,
	combout => \rf|QA[5]~30_combout\);

-- Location: LCCOMB_X37_Y33_N8
\rf|QA[5]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~31_combout\ = (\RA[0]~input_o\ & ((\rf|QA[5]~30_combout\ & (\rf|register_arr[7][5]~q\)) # (!\rf|QA[5]~30_combout\ & ((\rf|register_arr[5][5]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][5]~q\,
	datac => \rf|register_arr[5][5]~q\,
	datad => \rf|QA[5]~30_combout\,
	combout => \rf|QA[5]~31_combout\);

-- Location: LCCOMB_X36_Y32_N20
\rf|QA[5]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~32_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][5]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][5]~q\,
	datad => \rf|register_arr[1][5]~q\,
	combout => \rf|QA[5]~32_combout\);

-- Location: LCCOMB_X36_Y32_N6
\rf|QA[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~33_combout\ = (\RA[1]~input_o\ & ((\rf|QA[5]~32_combout\ & (\rf|register_arr[3][5]~q\)) # (!\rf|QA[5]~32_combout\ & ((\rf|register_arr[2][5]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][5]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|QA[5]~32_combout\,
	datad => \rf|register_arr[2][5]~q\,
	combout => \rf|QA[5]~33_combout\);

-- Location: LCCOMB_X37_Y33_N22
\rf|QA[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[5]~34_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[5]~31_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[5]~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[5]~31_combout\,
	datad => \rf|QA[5]~33_combout\,
	combout => \rf|QA[5]~34_combout\);

-- Location: LCCOMB_X38_Y33_N18
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

-- Location: LCCOMB_X38_Y33_N2
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

-- Location: LCCOMB_X37_Y33_N24
\sweden_is_great|sum_rtl~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~21_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~20_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[5]~34_combout\ $ (((\rf|QB[5]~34_combout\) # 
-- (!\sweden_is_great|sum_rtl~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QA[5]~34_combout\,
	datab => \rf|QB[5]~34_combout\,
	datac => \sweden_is_great|sum_rtl[9]~3_combout\,
	datad => \sweden_is_great|sum_rtl~20_combout\,
	combout => \sweden_is_great|sum_rtl~21_combout\);

-- Location: LCCOMB_X37_Y33_N10
\sweden_is_great|sum_rtl~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~22_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (((\sweden_is_great|sum_rtl[9]~7_combout\) # (\sweden_is_great|sum_rtl~21_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(5) & 
-- (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~6_combout\,
	datab => \sweden_is_great|sum_rtl\(5),
	datac => \sweden_is_great|sum_rtl[9]~7_combout\,
	datad => \sweden_is_great|sum_rtl~21_combout\,
	combout => \sweden_is_great|sum_rtl~22_combout\);

-- Location: LCCOMB_X37_Y33_N0
\sweden_is_great|sum_rtl~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~23_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & ((\rf|QB[5]~34_combout\ & ((\rf|QA[5]~34_combout\) # (\sweden_is_great|sum_rtl~22_combout\))) # (!\rf|QB[5]~34_combout\ & (\rf|QA[5]~34_combout\ & 
-- \sweden_is_great|sum_rtl~22_combout\)))) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & (((\sweden_is_great|sum_rtl~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \rf|QB[5]~34_combout\,
	datac => \rf|QA[5]~34_combout\,
	datad => \sweden_is_great|sum_rtl~22_combout\,
	combout => \sweden_is_great|sum_rtl~23_combout\);

-- Location: FF_X37_Y33_N1
\sweden_is_great|sum_rtl[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~23_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(5));

-- Location: LCCOMB_X37_Y35_N18
\rf|register_arr~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~17_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[6]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[6]~input_o\,
	datab => \IE~input_o\,
	datac => \RESET~input_o\,
	datad => \sweden_is_great|sum_rtl\(6),
	combout => \rf|register_arr~17_combout\);

-- Location: LCCOMB_X37_Y32_N24
\rf|register_arr[3][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][6]~feeder_combout\ = \rf|register_arr~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~17_combout\,
	combout => \rf|register_arr[3][6]~feeder_combout\);

-- Location: FF_X37_Y32_N25
\rf|register_arr[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][6]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][6]~q\);

-- Location: FF_X37_Y32_N15
\rf|register_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][6]~q\);

-- Location: FF_X36_Y32_N15
\rf|register_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][6]~q\);

-- Location: FF_X36_Y32_N13
\rf|register_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][6]~q\);

-- Location: LCCOMB_X36_Y32_N14
\rf|QA[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~37_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][6]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][6]~q\,
	datad => \rf|register_arr[1][6]~q\,
	combout => \rf|QA[6]~37_combout\);

-- Location: LCCOMB_X37_Y32_N26
\rf|QA[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~38_combout\ = (\RA[1]~input_o\ & ((\rf|QA[6]~37_combout\ & (\rf|register_arr[3][6]~q\)) # (!\rf|QA[6]~37_combout\ & ((\rf|register_arr[2][6]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[3][6]~q\,
	datac => \rf|register_arr[2][6]~q\,
	datad => \rf|QA[6]~37_combout\,
	combout => \rf|QA[6]~38_combout\);

-- Location: FF_X36_Y35_N5
\rf|register_arr[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][6]~q\);

-- Location: FF_X36_Y35_N3
\rf|register_arr[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~17_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][6]~q\);

-- Location: FF_X37_Y35_N19
\rf|register_arr[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr~17_combout\,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][6]~q\);

-- Location: LCCOMB_X36_Y35_N2
\rf|QA[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~35_combout\ = (\RA[1]~input_o\ & ((\RA[0]~input_o\) # ((\rf|register_arr[6][6]~q\)))) # (!\RA[1]~input_o\ & (!\RA[0]~input_o\ & ((\rf|register_arr[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[6][6]~q\,
	datad => \rf|register_arr[4][6]~q\,
	combout => \rf|QA[6]~35_combout\);

-- Location: LCCOMB_X36_Y35_N4
\rf|QA[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~36_combout\ = (\RA[0]~input_o\ & ((\rf|QA[6]~35_combout\ & (\rf|register_arr[7][6]~q\)) # (!\rf|QA[6]~35_combout\ & ((\rf|register_arr[5][6]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[6]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][6]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[5][6]~q\,
	datad => \rf|QA[6]~35_combout\,
	combout => \rf|QA[6]~36_combout\);

-- Location: LCCOMB_X37_Y33_N18
\rf|QA[6]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[6]~39_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & ((\rf|QA[6]~36_combout\))) # (!\RA[2]~input_o\ & (\rf|QA[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[6]~38_combout\,
	datad => \rf|QA[6]~36_combout\,
	combout => \rf|QA[6]~39_combout\);

-- Location: LCCOMB_X38_Y33_N20
\sweden_is_great|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~22_combout\ = (\sweden_is_great|Add0~21_combout\ & ((\rf|QA[6]~39_combout\ & (\sweden_is_great|Add0~20\ & VCC)) # (!\rf|QA[6]~39_combout\ & (!\sweden_is_great|Add0~20\)))) # (!\sweden_is_great|Add0~21_combout\ & 
-- ((\rf|QA[6]~39_combout\ & (!\sweden_is_great|Add0~20\)) # (!\rf|QA[6]~39_combout\ & ((\sweden_is_great|Add0~20\) # (GND)))))
-- \sweden_is_great|Add0~23\ = CARRY((\sweden_is_great|Add0~21_combout\ & (!\rf|QA[6]~39_combout\ & !\sweden_is_great|Add0~20\)) # (!\sweden_is_great|Add0~21_combout\ & ((!\sweden_is_great|Add0~20\) # (!\rf|QA[6]~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~21_combout\,
	datab => \rf|QA[6]~39_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~20\,
	combout => \sweden_is_great|Add0~22_combout\,
	cout => \sweden_is_great|Add0~23\);

-- Location: LCCOMB_X37_Y33_N6
\sweden_is_great|sum_rtl~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~24_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\rf|QA[6]~39_combout\)))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (((\sweden_is_great|Add0~22_combout\)) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~1_combout\,
	datab => \sweden_is_great|sum_rtl[9]~0_combout\,
	datac => \sweden_is_great|Add0~22_combout\,
	datad => \rf|QA[6]~39_combout\,
	combout => \sweden_is_great|sum_rtl~24_combout\);

-- Location: LCCOMB_X37_Y33_N20
\sweden_is_great|sum_rtl~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~25_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~24_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[6]~39_combout\ $ (((\rf|QB[6]~39_combout\) # 
-- (!\sweden_is_great|sum_rtl~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[6]~39_combout\,
	datab => \rf|QA[6]~39_combout\,
	datac => \sweden_is_great|sum_rtl[9]~3_combout\,
	datad => \sweden_is_great|sum_rtl~24_combout\,
	combout => \sweden_is_great|sum_rtl~25_combout\);

-- Location: LCCOMB_X37_Y33_N30
\sweden_is_great|sum_rtl~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~41_combout\ = (\sweden_is_great|sum_rtl~40_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(6))))) # (!\sweden_is_great|sum_rtl~40_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~40_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(6),
	datad => \sweden_is_great|sum_rtl~25_combout\,
	combout => \sweden_is_great|sum_rtl~41_combout\);

-- Location: FF_X37_Y33_N31
\sweden_is_great|sum_rtl[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~41_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(6));

-- Location: IOIBUF_X52_Y32_N1
\INPUT[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(7),
	o => \INPUT[7]~input_o\);

-- Location: LCCOMB_X38_Y32_N16
\rf|register_arr~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~18_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[7]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(7),
	datab => \IE~input_o\,
	datac => \INPUT[7]~input_o\,
	datad => \RESET~input_o\,
	combout => \rf|register_arr~18_combout\);

-- Location: FF_X37_Y35_N15
\rf|register_arr[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][7]~q\);

-- Location: LCCOMB_X36_Y35_N6
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

-- Location: FF_X36_Y35_N7
\rf|register_arr[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[6][7]~feeder_combout\,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][7]~q\);

-- Location: FF_X37_Y35_N13
\rf|register_arr[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~18_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][7]~q\);

-- Location: LCCOMB_X37_Y35_N12
\rf|QA[7]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~40_combout\ = (\RA[0]~input_o\ & (((\RA[1]~input_o\)))) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][7]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[6][7]~q\,
	datac => \rf|register_arr[4][7]~q\,
	datad => \RA[1]~input_o\,
	combout => \rf|QA[7]~40_combout\);

-- Location: LCCOMB_X36_Y35_N24
\rf|register_arr[5][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[5][7]~feeder_combout\);

-- Location: FF_X36_Y35_N25
\rf|register_arr[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][7]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][7]~q\);

-- Location: LCCOMB_X37_Y35_N8
\rf|QA[7]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~41_combout\ = (\RA[0]~input_o\ & ((\rf|QA[7]~40_combout\ & (\rf|register_arr[7][7]~q\)) # (!\rf|QA[7]~40_combout\ & ((\rf|register_arr[5][7]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[7]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \rf|register_arr[7][7]~q\,
	datac => \rf|QA[7]~40_combout\,
	datad => \rf|register_arr[5][7]~q\,
	combout => \rf|QA[7]~41_combout\);

-- Location: LCCOMB_X37_Y34_N8
\rf|register_arr[2][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[2][7]~feeder_combout\);

-- Location: FF_X37_Y34_N9
\rf|register_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][7]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][7]~q\);

-- Location: LCCOMB_X37_Y34_N30
\rf|register_arr[1][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[1][7]~feeder_combout\);

-- Location: FF_X37_Y34_N31
\rf|register_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][7]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][7]~q\);

-- Location: LCCOMB_X36_Y34_N28
\rf|register_arr[0][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][7]~feeder_combout\ = \rf|register_arr~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~18_combout\,
	combout => \rf|register_arr[0][7]~feeder_combout\);

-- Location: FF_X36_Y34_N29
\rf|register_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[0][7]~feeder_combout\,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][7]~q\);

-- Location: LCCOMB_X37_Y34_N0
\rf|QA[7]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~42_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][7]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & ((\rf|register_arr[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[1][7]~q\,
	datad => \rf|register_arr[0][7]~q\,
	combout => \rf|QA[7]~42_combout\);

-- Location: LCCOMB_X37_Y34_N26
\rf|QA[7]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~43_combout\ = (\RA[1]~input_o\ & ((\rf|QA[7]~42_combout\ & (\rf|register_arr[3][7]~q\)) # (!\rf|QA[7]~42_combout\ & ((\rf|register_arr[2][7]~q\))))) # (!\RA[1]~input_o\ & (((\rf|QA[7]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][7]~q\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[2][7]~q\,
	datad => \rf|QA[7]~42_combout\,
	combout => \rf|QA[7]~43_combout\);

-- Location: LCCOMB_X37_Y35_N26
\rf|QA[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[7]~44_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[7]~41_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[7]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \ReadA~input_o\,
	datac => \rf|QA[7]~41_combout\,
	datad => \rf|QA[7]~43_combout\,
	combout => \rf|QA[7]~44_combout\);

-- Location: LCCOMB_X38_Y33_N22
\sweden_is_great|Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~25_combout\ = ((\sweden_is_great|Add0~24_combout\ $ (\rf|QA[7]~44_combout\ $ (!\sweden_is_great|Add0~23\)))) # (GND)
-- \sweden_is_great|Add0~26\ = CARRY((\sweden_is_great|Add0~24_combout\ & ((\rf|QA[7]~44_combout\) # (!\sweden_is_great|Add0~23\))) # (!\sweden_is_great|Add0~24_combout\ & (\rf|QA[7]~44_combout\ & !\sweden_is_great|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~24_combout\,
	datab => \rf|QA[7]~44_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~23\,
	combout => \sweden_is_great|Add0~25_combout\,
	cout => \sweden_is_great|Add0~26\);

-- Location: LCCOMB_X38_Y33_N28
\sweden_is_great|sum_rtl~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~26_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & ((\rf|QA[7]~44_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (\sweden_is_great|Add0~25_combout\)))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (!\sweden_is_great|sum_rtl[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \sweden_is_great|Add0~25_combout\,
	datad => \rf|QA[7]~44_combout\,
	combout => \sweden_is_great|sum_rtl~26_combout\);

-- Location: LCCOMB_X38_Y33_N0
\sweden_is_great|sum_rtl~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~27_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~26_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[7]~44_combout\ $ (((\rf|QB[7]~44_combout\) # 
-- (!\sweden_is_great|sum_rtl~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[7]~44_combout\,
	datab => \rf|QA[7]~44_combout\,
	datac => \sweden_is_great|sum_rtl[9]~3_combout\,
	datad => \sweden_is_great|sum_rtl~26_combout\,
	combout => \sweden_is_great|sum_rtl~27_combout\);

-- Location: LCCOMB_X38_Y33_N30
\sweden_is_great|sum_rtl~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~28_combout\ = (\sweden_is_great|sum_rtl[9]~6_combout\ & (((\sweden_is_great|sum_rtl[9]~7_combout\) # (\sweden_is_great|sum_rtl~27_combout\)))) # (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(7) & 
-- (!\sweden_is_great|sum_rtl[9]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(7),
	datab => \sweden_is_great|sum_rtl[9]~6_combout\,
	datac => \sweden_is_great|sum_rtl[9]~7_combout\,
	datad => \sweden_is_great|sum_rtl~27_combout\,
	combout => \sweden_is_great|sum_rtl~28_combout\);

-- Location: LCCOMB_X38_Y33_N4
\sweden_is_great|sum_rtl~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~29_combout\ = (\rf|QB[7]~44_combout\ & ((\sweden_is_great|sum_rtl~28_combout\) # ((\rf|QA[7]~44_combout\ & \sweden_is_great|sum_rtl[9]~7_combout\)))) # (!\rf|QB[7]~44_combout\ & (\sweden_is_great|sum_rtl~28_combout\ & 
-- ((\rf|QA[7]~44_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[7]~44_combout\,
	datab => \rf|QA[7]~44_combout\,
	datac => \sweden_is_great|sum_rtl~28_combout\,
	datad => \sweden_is_great|sum_rtl[9]~7_combout\,
	combout => \sweden_is_great|sum_rtl~29_combout\);

-- Location: FF_X38_Y33_N5
\sweden_is_great|sum_rtl[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~29_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(7));

-- Location: IOIBUF_X48_Y41_N8
\INPUT[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(8),
	o => \INPUT[8]~input_o\);

-- Location: LCCOMB_X37_Y35_N6
\rf|register_arr~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~19_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & ((\INPUT[8]~input_o\))) # (!\IE~input_o\ & (\sweden_is_great|sum_rtl\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \IE~input_o\,
	datac => \sweden_is_great|sum_rtl\(8),
	datad => \INPUT[8]~input_o\,
	combout => \rf|register_arr~19_combout\);

-- Location: FF_X36_Y35_N29
\rf|register_arr[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][8]~q\);

-- Location: FF_X36_Y35_N11
\rf|register_arr[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][8]~q\);

-- Location: FF_X37_Y35_N7
\rf|register_arr[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr~19_combout\,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][8]~q\);

-- Location: LCCOMB_X36_Y35_N10
\rf|QA[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~45_combout\ = (\RA[1]~input_o\ & ((\RA[0]~input_o\) # ((\rf|register_arr[6][8]~q\)))) # (!\RA[1]~input_o\ & (!\RA[0]~input_o\ & ((\rf|register_arr[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[6][8]~q\,
	datad => \rf|register_arr[4][8]~q\,
	combout => \rf|QA[8]~45_combout\);

-- Location: LCCOMB_X36_Y35_N28
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

-- Location: LCCOMB_X36_Y33_N14
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

-- Location: FF_X36_Y33_N15
\rf|register_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][8]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][8]~q\);

-- Location: LCCOMB_X36_Y34_N4
\rf|register_arr[0][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[0][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[0][8]~feeder_combout\);

-- Location: FF_X36_Y34_N5
\rf|register_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[0][8]~feeder_combout\,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][8]~q\);

-- Location: LCCOMB_X37_Y34_N24
\rf|register_arr[1][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[1][8]~feeder_combout\ = \rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~19_combout\,
	combout => \rf|register_arr[1][8]~feeder_combout\);

-- Location: FF_X37_Y34_N25
\rf|register_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[1][8]~feeder_combout\,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][8]~q\);

-- Location: LCCOMB_X37_Y34_N14
\rf|QA[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~47_combout\ = (\RA[0]~input_o\ & ((\RA[1]~input_o\) # ((\rf|register_arr[1][8]~q\)))) # (!\RA[0]~input_o\ & (!\RA[1]~input_o\ & (\rf|register_arr[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[0][8]~q\,
	datad => \rf|register_arr[1][8]~q\,
	combout => \rf|QA[8]~47_combout\);

-- Location: LCCOMB_X36_Y33_N12
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

-- Location: FF_X36_Y33_N13
\rf|register_arr[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][8]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][8]~q\);

-- Location: LCCOMB_X36_Y33_N20
\rf|QA[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~48_combout\ = (\RA[1]~input_o\ & ((\rf|QA[8]~47_combout\ & ((\rf|register_arr[3][8]~q\))) # (!\rf|QA[8]~47_combout\ & (\rf|register_arr[2][8]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[8]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[2][8]~q\,
	datac => \rf|QA[8]~47_combout\,
	datad => \rf|register_arr[3][8]~q\,
	combout => \rf|QA[8]~48_combout\);

-- Location: LCCOMB_X36_Y33_N2
\rf|QA[8]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[8]~49_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[8]~46_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[8]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[8]~46_combout\,
	datad => \rf|QA[8]~48_combout\,
	combout => \rf|QA[8]~49_combout\);

-- Location: FF_X37_Y35_N3
\rf|register_arr[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~19_combout\,
	sload => VCC,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][8]~q\);

-- Location: LCCOMB_X37_Y35_N28
\rf|QB[8]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~45_combout\ = (\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & ((\rf|register_arr[6][8]~q\))) # (!\RB[1]~input_o\ & (\rf|register_arr[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[4][8]~q\,
	datab => \RB[0]~input_o\,
	datac => \RB[1]~input_o\,
	datad => \rf|register_arr[6][8]~q\,
	combout => \rf|QB[8]~45_combout\);

-- Location: LCCOMB_X37_Y35_N2
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

-- Location: LCCOMB_X36_Y34_N18
\rf|QB[8]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~47_combout\ = (\RB[1]~input_o\ & (\RB[0]~input_o\)) # (!\RB[1]~input_o\ & ((\RB[0]~input_o\ & ((\rf|register_arr[1][8]~q\))) # (!\RB[0]~input_o\ & (\rf|register_arr[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \RB[0]~input_o\,
	datac => \rf|register_arr[0][8]~q\,
	datad => \rf|register_arr[1][8]~q\,
	combout => \rf|QB[8]~47_combout\);

-- Location: LCCOMB_X36_Y33_N30
\rf|QB[8]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[8]~48_combout\ = (\RB[1]~input_o\ & ((\rf|QB[8]~47_combout\ & (\rf|register_arr[3][8]~q\)) # (!\rf|QB[8]~47_combout\ & ((\rf|register_arr[2][8]~q\))))) # (!\RB[1]~input_o\ & (((\rf|QB[8]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[3][8]~q\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[2][8]~q\,
	datad => \rf|QB[8]~47_combout\,
	combout => \rf|QB[8]~48_combout\);

-- Location: LCCOMB_X37_Y32_N0
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

-- Location: LCCOMB_X38_Y33_N24
\sweden_is_great|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~28_combout\ = (\sweden_is_great|Add0~27_combout\ & ((\rf|QA[8]~49_combout\ & (\sweden_is_great|Add0~26\ & VCC)) # (!\rf|QA[8]~49_combout\ & (!\sweden_is_great|Add0~26\)))) # (!\sweden_is_great|Add0~27_combout\ & 
-- ((\rf|QA[8]~49_combout\ & (!\sweden_is_great|Add0~26\)) # (!\rf|QA[8]~49_combout\ & ((\sweden_is_great|Add0~26\) # (GND)))))
-- \sweden_is_great|Add0~29\ = CARRY((\sweden_is_great|Add0~27_combout\ & (!\rf|QA[8]~49_combout\ & !\sweden_is_great|Add0~26\)) # (!\sweden_is_great|Add0~27_combout\ & ((!\sweden_is_great|Add0~26\) # (!\rf|QA[8]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|Add0~27_combout\,
	datab => \rf|QA[8]~49_combout\,
	datad => VCC,
	cin => \sweden_is_great|Add0~26\,
	combout => \sweden_is_great|Add0~28_combout\,
	cout => \sweden_is_great|Add0~29\);

-- Location: LCCOMB_X39_Y33_N2
\sweden_is_great|sum_rtl~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~30_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|sum_rtl[9]~1_combout\ & (\rf|QA[8]~49_combout\)) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|Add0~28_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (!\sweden_is_great|sum_rtl[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \rf|QA[8]~49_combout\,
	datad => \sweden_is_great|Add0~28_combout\,
	combout => \sweden_is_great|sum_rtl~30_combout\);

-- Location: LCCOMB_X39_Y33_N16
\sweden_is_great|sum_rtl~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~31_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~30_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & (\rf|QA[8]~49_combout\ $ (((\rf|QB[8]~49_combout\) # 
-- (!\sweden_is_great|sum_rtl~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QA[8]~49_combout\,
	datac => \rf|QB[8]~49_combout\,
	datad => \sweden_is_great|sum_rtl~30_combout\,
	combout => \sweden_is_great|sum_rtl~31_combout\);

-- Location: LCCOMB_X39_Y33_N26
\sweden_is_great|sum_rtl~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~39_combout\ = (\sweden_is_great|sum_rtl~38_combout\ & ((\sweden_is_great|sum_rtl[9]~7_combout\) # ((\sweden_is_great|sum_rtl\(8))))) # (!\sweden_is_great|sum_rtl~38_combout\ & (!\sweden_is_great|sum_rtl[9]~7_combout\ & 
-- ((\sweden_is_great|sum_rtl~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl~38_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \sweden_is_great|sum_rtl\(8),
	datad => \sweden_is_great|sum_rtl~31_combout\,
	combout => \sweden_is_great|sum_rtl~39_combout\);

-- Location: FF_X39_Y33_N27
\sweden_is_great|sum_rtl[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~39_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(8));

-- Location: IOIBUF_X31_Y41_N22
\INPUT[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(9),
	o => \INPUT[9]~input_o\);

-- Location: LCCOMB_X39_Y34_N14
\rf|register_arr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr~0_combout\ = (!\RESET~input_o\ & ((\IE~input_o\ & (\INPUT[9]~input_o\)) # (!\IE~input_o\ & ((\sweden_is_great|sum_rtl\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \INPUT[9]~input_o\,
	datac => \IE~input_o\,
	datad => \sweden_is_great|sum_rtl\(9),
	combout => \rf|register_arr~0_combout\);

-- Location: LCCOMB_X35_Y34_N24
\rf|register_arr[5][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[5][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[5][9]~feeder_combout\);

-- Location: FF_X35_Y34_N25
\rf|register_arr[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[5][9]~feeder_combout\,
	ena => \rf|register_arr[5][6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[5][9]~q\);

-- Location: FF_X38_Y34_N5
\rf|register_arr[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[6][1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[6][9]~q\);

-- Location: FF_X38_Y34_N27
\rf|register_arr[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[4][6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[4][9]~q\);

-- Location: LCCOMB_X38_Y34_N4
\rf|QA[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~0_combout\ = (\RA[0]~input_o\ & (\RA[1]~input_o\)) # (!\RA[0]~input_o\ & ((\RA[1]~input_o\ & (\rf|register_arr[6][9]~q\)) # (!\RA[1]~input_o\ & ((\rf|register_arr[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[1]~input_o\,
	datac => \rf|register_arr[6][9]~q\,
	datad => \rf|register_arr[4][9]~q\,
	combout => \rf|QA[9]~0_combout\);

-- Location: LCCOMB_X37_Y34_N12
\rf|QA[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~1_combout\ = (\RA[0]~input_o\ & ((\rf|QA[9]~0_combout\ & (\rf|register_arr[7][9]~q\)) # (!\rf|QA[9]~0_combout\ & ((\rf|register_arr[5][9]~q\))))) # (!\RA[0]~input_o\ & (((\rf|QA[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[7][9]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[5][9]~q\,
	datad => \rf|QA[9]~0_combout\,
	combout => \rf|QA[9]~1_combout\);

-- Location: LCCOMB_X36_Y33_N8
\rf|register_arr[2][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[2][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[2][9]~feeder_combout\);

-- Location: FF_X36_Y33_N9
\rf|register_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[2][9]~feeder_combout\,
	ena => \rf|register_arr[2][3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[2][9]~q\);

-- Location: FF_X36_Y32_N9
\rf|register_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[1][9]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[1][9]~q\);

-- Location: LCCOMB_X36_Y32_N8
\rf|QA[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~2_combout\ = (\RA[0]~input_o\ & (((\rf|register_arr[1][9]~q\) # (\RA[1]~input_o\)))) # (!\RA[0]~input_o\ & (\rf|register_arr[0][9]~q\ & ((!\RA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|register_arr[0][9]~q\,
	datab => \RA[0]~input_o\,
	datac => \rf|register_arr[1][9]~q\,
	datad => \RA[1]~input_o\,
	combout => \rf|QA[9]~2_combout\);

-- Location: LCCOMB_X36_Y33_N6
\rf|register_arr[3][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[3][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[3][9]~feeder_combout\);

-- Location: FF_X36_Y33_N7
\rf|register_arr[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[3][9]~feeder_combout\,
	ena => \rf|register_arr[3][6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[3][9]~q\);

-- Location: LCCOMB_X36_Y33_N28
\rf|QA[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~3_combout\ = (\RA[1]~input_o\ & ((\rf|QA[9]~2_combout\ & ((\rf|register_arr[3][9]~q\))) # (!\rf|QA[9]~2_combout\ & (\rf|register_arr[2][9]~q\)))) # (!\RA[1]~input_o\ & (((\rf|QA[9]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[1]~input_o\,
	datab => \rf|register_arr[2][9]~q\,
	datac => \rf|QA[9]~2_combout\,
	datad => \rf|register_arr[3][9]~q\,
	combout => \rf|QA[9]~3_combout\);

-- Location: LCCOMB_X36_Y33_N18
\rf|QA[9]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QA[9]~4_combout\ = (\ReadA~input_o\ & ((\RA[2]~input_o\ & (\rf|QA[9]~1_combout\)) # (!\RA[2]~input_o\ & ((\rf|QA[9]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ReadA~input_o\,
	datab => \RA[2]~input_o\,
	datac => \rf|QA[9]~1_combout\,
	datad => \rf|QA[9]~3_combout\,
	combout => \rf|QA[9]~4_combout\);

-- Location: LCCOMB_X39_Y33_N22
\sweden_is_great|sum_rtl~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~32_combout\ = (\rf|QA[9]~4_combout\ & (((\sweden_is_great|sum_rtl[9]~0_combout\) # (!\sweden_is_great|sum_rtl[9]~1_combout\)))) # (!\rf|QA[9]~4_combout\ & (\sweden_is_great|sum_rtl[9]~3_combout\ $ 
-- ((\sweden_is_great|sum_rtl[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \sweden_is_great|sum_rtl[9]~0_combout\,
	datad => \rf|QA[9]~4_combout\,
	combout => \sweden_is_great|sum_rtl~32_combout\);

-- Location: FF_X36_Y32_N31
\rf|register_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \rf|register_arr~0_combout\,
	sload => VCC,
	ena => \rf|register_arr[0][1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[0][9]~q\);

-- Location: LCCOMB_X36_Y32_N30
\rf|QB[9]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~2_combout\ = (\RB[0]~input_o\ & ((\RB[1]~input_o\) # ((\rf|register_arr[1][9]~q\)))) # (!\RB[0]~input_o\ & (!\RB[1]~input_o\ & (\rf|register_arr[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \RB[1]~input_o\,
	datac => \rf|register_arr[0][9]~q\,
	datad => \rf|register_arr[1][9]~q\,
	combout => \rf|QB[9]~2_combout\);

-- Location: LCCOMB_X37_Y32_N4
\rf|QB[9]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~3_combout\ = (\RB[1]~input_o\ & ((\rf|QB[9]~2_combout\ & (\rf|register_arr[3][9]~q\)) # (!\rf|QB[9]~2_combout\ & ((\rf|register_arr[2][9]~q\))))) # (!\RB[1]~input_o\ & (\rf|QB[9]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[1]~input_o\,
	datab => \rf|QB[9]~2_combout\,
	datac => \rf|register_arr[3][9]~q\,
	datad => \rf|register_arr[2][9]~q\,
	combout => \rf|QB[9]~3_combout\);

-- Location: LCCOMB_X38_Y34_N26
\rf|QB[9]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~0_combout\ = (\RB[0]~input_o\ & (((\RB[1]~input_o\)))) # (!\RB[0]~input_o\ & ((\RB[1]~input_o\ & (\rf|register_arr[6][9]~q\)) # (!\RB[1]~input_o\ & ((\rf|register_arr[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[6][9]~q\,
	datac => \rf|register_arr[4][9]~q\,
	datad => \RB[1]~input_o\,
	combout => \rf|QB[9]~0_combout\);

-- Location: LCCOMB_X36_Y34_N8
\rf|register_arr[7][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|register_arr[7][9]~feeder_combout\ = \rf|register_arr~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|register_arr~0_combout\,
	combout => \rf|register_arr[7][9]~feeder_combout\);

-- Location: FF_X36_Y34_N9
\rf|register_arr[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \rf|register_arr[7][9]~feeder_combout\,
	ena => \rf|register_arr[7][4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|register_arr[7][9]~q\);

-- Location: LCCOMB_X38_Y34_N8
\rf|QB[9]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \rf|QB[9]~1_combout\ = (\RB[0]~input_o\ & ((\rf|QB[9]~0_combout\ & ((\rf|register_arr[7][9]~q\))) # (!\rf|QB[9]~0_combout\ & (\rf|register_arr[5][9]~q\)))) # (!\RB[0]~input_o\ & (((\rf|QB[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RB[0]~input_o\,
	datab => \rf|register_arr[5][9]~q\,
	datac => \rf|QB[9]~0_combout\,
	datad => \rf|register_arr[7][9]~q\,
	combout => \rf|QB[9]~1_combout\);

-- Location: LCCOMB_X38_Y32_N8
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

-- Location: LCCOMB_X39_Y33_N28
\sweden_is_great|sum_rtl~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~33_combout\ = (\sweden_is_great|sum_rtl[9]~3_combout\ & (((\sweden_is_great|sum_rtl~32_combout\)))) # (!\sweden_is_great|sum_rtl[9]~3_combout\ & ((\rf|QB[9]~4_combout\ & (!\rf|QA[9]~4_combout\)) # (!\rf|QB[9]~4_combout\ & 
-- ((\sweden_is_great|sum_rtl~32_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~3_combout\,
	datab => \rf|QA[9]~4_combout\,
	datac => \sweden_is_great|sum_rtl~32_combout\,
	datad => \rf|QB[9]~4_combout\,
	combout => \sweden_is_great|sum_rtl~33_combout\);

-- Location: LCCOMB_X38_Y32_N12
\sweden_is_great|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~30_combout\ = \OP[0]~input_o\ $ (\rf|QB[9]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP[0]~input_o\,
	datad => \rf|QB[9]~4_combout\,
	combout => \sweden_is_great|Add0~30_combout\);

-- Location: LCCOMB_X38_Y33_N26
\sweden_is_great|Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Add0~31_combout\ = \rf|QA[9]~4_combout\ $ (\sweden_is_great|Add0~29\ $ (!\sweden_is_great|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rf|QA[9]~4_combout\,
	datad => \sweden_is_great|Add0~30_combout\,
	cin => \sweden_is_great|Add0~29\,
	combout => \sweden_is_great|Add0~31_combout\);

-- Location: LCCOMB_X39_Y33_N10
\sweden_is_great|sum_rtl~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~34_combout\ = (\sweden_is_great|sum_rtl[9]~1_combout\ & ((\sweden_is_great|sum_rtl~33_combout\))) # (!\sweden_is_great|sum_rtl[9]~1_combout\ & (!\sweden_is_great|sum_rtl~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sweden_is_great|sum_rtl[9]~1_combout\,
	datac => \sweden_is_great|sum_rtl~32_combout\,
	datad => \sweden_is_great|sum_rtl~33_combout\,
	combout => \sweden_is_great|sum_rtl~34_combout\);

-- Location: LCCOMB_X39_Y33_N24
\sweden_is_great|sum_rtl~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~35_combout\ = (\sweden_is_great|sum_rtl[9]~0_combout\ & ((\sweden_is_great|Add0~31_combout\ & (\sweden_is_great|sum_rtl~33_combout\)) # (!\sweden_is_great|Add0~31_combout\ & ((\sweden_is_great|sum_rtl~34_combout\))))) # 
-- (!\sweden_is_great|sum_rtl[9]~0_combout\ & (\sweden_is_great|sum_rtl~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~0_combout\,
	datab => \sweden_is_great|sum_rtl~33_combout\,
	datac => \sweden_is_great|Add0~31_combout\,
	datad => \sweden_is_great|sum_rtl~34_combout\,
	combout => \sweden_is_great|sum_rtl~35_combout\);

-- Location: LCCOMB_X39_Y33_N6
\sweden_is_great|sum_rtl~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~36_combout\ = (\sweden_is_great|sum_rtl[9]~7_combout\ & (\sweden_is_great|sum_rtl[9]~6_combout\)) # (!\sweden_is_great|sum_rtl[9]~7_combout\ & ((\sweden_is_great|sum_rtl[9]~6_combout\ & ((\sweden_is_great|sum_rtl~35_combout\))) # 
-- (!\sweden_is_great|sum_rtl[9]~6_combout\ & (\sweden_is_great|sum_rtl\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl[9]~7_combout\,
	datab => \sweden_is_great|sum_rtl[9]~6_combout\,
	datac => \sweden_is_great|sum_rtl\(9),
	datad => \sweden_is_great|sum_rtl~35_combout\,
	combout => \sweden_is_great|sum_rtl~36_combout\);

-- Location: LCCOMB_X39_Y33_N20
\sweden_is_great|sum_rtl~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|sum_rtl~37_combout\ = (\rf|QB[9]~4_combout\ & ((\sweden_is_great|sum_rtl~36_combout\) # ((\sweden_is_great|sum_rtl[9]~7_combout\ & \rf|QA[9]~4_combout\)))) # (!\rf|QB[9]~4_combout\ & (\sweden_is_great|sum_rtl~36_combout\ & 
-- ((\rf|QA[9]~4_combout\) # (!\sweden_is_great|sum_rtl[9]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|QB[9]~4_combout\,
	datab => \sweden_is_great|sum_rtl[9]~7_combout\,
	datac => \rf|QA[9]~4_combout\,
	datad => \sweden_is_great|sum_rtl~36_combout\,
	combout => \sweden_is_great|sum_rtl~37_combout\);

-- Location: FF_X39_Y33_N21
\sweden_is_great|sum_rtl[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \sweden_is_great|sum_rtl~37_combout\,
	sclr => \RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sweden_is_great|sum_rtl\(9));

-- Location: LCCOMB_X37_Y33_N4
\sweden_is_great|Z_Flag~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~1_combout\ = (\sweden_is_great|sum_rtl\(6)) # ((\sweden_is_great|sum_rtl\(5)) # ((\sweden_is_great|sum_rtl\(4)) # (\sweden_is_great|sum_rtl\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(6),
	datab => \sweden_is_great|sum_rtl\(5),
	datac => \sweden_is_great|sum_rtl\(4),
	datad => \sweden_is_great|sum_rtl\(7),
	combout => \sweden_is_great|Z_Flag~1_combout\);

-- Location: LCCOMB_X39_Y34_N8
\sweden_is_great|Z_Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~0_combout\ = (\sweden_is_great|sum_rtl\(1)) # ((\sweden_is_great|sum_rtl\(2)) # ((\sweden_is_great|sum_rtl\(3)) # (\sweden_is_great|sum_rtl\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(1),
	datab => \sweden_is_great|sum_rtl\(2),
	datac => \sweden_is_great|sum_rtl\(3),
	datad => \sweden_is_great|sum_rtl\(0),
	combout => \sweden_is_great|Z_Flag~0_combout\);

-- Location: LCCOMB_X39_Y33_N30
\sweden_is_great|Z_Flag~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|Z_Flag~2_combout\ = (\sweden_is_great|sum_rtl\(8)) # ((\sweden_is_great|Z_Flag~1_combout\) # ((\sweden_is_great|sum_rtl\(9)) # (\sweden_is_great|Z_Flag~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sweden_is_great|sum_rtl\(8),
	datab => \sweden_is_great|Z_Flag~1_combout\,
	datac => \sweden_is_great|sum_rtl\(9),
	datad => \sweden_is_great|Z_Flag~0_combout\,
	combout => \sweden_is_great|Z_Flag~2_combout\);

-- Location: LCCOMB_X39_Y33_N8
\sweden_is_great|O_Flag~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \sweden_is_great|O_Flag~0_combout\ = (\rf|QA[9]~4_combout\ & ((\sweden_is_great|sum_rtl\(9)) # (!\rf|QB[9]~4_combout\))) # (!\rf|QA[9]~4_combout\ & ((\rf|QB[9]~4_combout\) # (!\sweden_is_great|sum_rtl\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|QA[9]~4_combout\,
	datac => \sweden_is_great|sum_rtl\(9),
	datad => \rf|QB[9]~4_combout\,
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


