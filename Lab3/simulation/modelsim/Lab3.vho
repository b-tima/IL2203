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

-- DATE "10/06/2021 13:18:29"

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
	Data_in : IN std_logic_vector(15 DOWNTO 0);
	Read_NWrite : OUT std_logic;
	Data_out : OUT std_logic_vector(15 DOWNTO 0);
	Address_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END MCU_FSM;

-- Design Ports Information
-- Read_NWrite	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[0]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[3]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[6]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[7]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[8]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[9]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[10]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[12]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[13]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[14]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_out[15]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[1]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[3]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[4]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[5]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[7]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[10]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[11]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[12]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[13]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[14]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address_out[15]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[12]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[15]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[13]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[4]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[7]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[6]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[9]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[10]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_in[11]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_Data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Read_NWrite : std_logic;
SIGNAL ww_Data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Address_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dp|the_best_alu_in_kista|Add0~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~8_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~8_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~12_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~12_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~20_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~22_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~24_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~24_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~26_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~28_combout\ : std_logic;
SIGNAL \Z_reg~q\ : std_logic;
SIGNAL \dp|Selector32~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][0]~q\ : std_logic;
SIGNAL \dp|rf|QA[0]~2_combout\ : std_logic;
SIGNAL \dp|rf|QA[0]~3_combout\ : std_logic;
SIGNAL \dp|rf|QA[0]~4_combout\ : std_logic;
SIGNAL \ucode|Mux23~0_combout\ : std_logic;
SIGNAL \ucode|Mux6~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux15~2_combout\ : std_logic;
SIGNAL \dp|rf|QA[0]~7_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux15~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][1]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[2][3]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][4]~q\ : std_logic;
SIGNAL \dp|Selector27~2_combout\ : std_logic;
SIGNAL \dp|rf|QA[4]~31_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][5]~q\ : std_logic;
SIGNAL \dp|Selector26~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][6]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[3][6]~q\ : std_logic;
SIGNAL \dp|rf|QA[6]~43_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][7]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][7]~q\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux8~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][8]~q\ : std_logic;
SIGNAL \dp|rf|QA[8]~54_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][9]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[5][10]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][10]~q\ : std_logic;
SIGNAL \dp|rf|QA[10]~62_combout\ : std_logic;
SIGNAL \dp|rf|QA[10]~63_combout\ : std_logic;
SIGNAL \dp|rf|QA[10]~64_combout\ : std_logic;
SIGNAL \dp|rf|QA[10]~65_combout\ : std_logic;
SIGNAL \dp|rf|QA[10]~66_combout\ : std_logic;
SIGNAL \dp|rf|QA[10]~67_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~4_combout\ : std_logic;
SIGNAL \dp|rf|QA[11]~73_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][12]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][13]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[7][13]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[3][13]~q\ : std_logic;
SIGNAL \dp|Selector18~0_combout\ : std_logic;
SIGNAL \dp|Selector18~1_combout\ : std_logic;
SIGNAL \dp|rf|QA[13]~85_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux2~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][14]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[3][14]~q\ : std_logic;
SIGNAL \dp|Selector17~0_combout\ : std_logic;
SIGNAL \dp|Selector17~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux1~0_combout\ : std_logic;
SIGNAL \dp|rf|QA[14]~91_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux1~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux0~2_combout\ : std_logic;
SIGNAL \ucode|Mux29~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|z_tmp~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|z_tmp~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|z_tmp~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|z_tmp~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|z_tmp~4_combout\ : std_logic;
SIGNAL \ucode|Mux0~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~24_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~26_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~28_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~36_combout\ : std_logic;
SIGNAL \Data_in[12]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr[3][6]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][10]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][10]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][13]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][13]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][13]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][14]~feeder_combout\ : std_logic;
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
SIGNAL \uPC[0]~1_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \uPC[1]~0_combout\ : std_logic;
SIGNAL \Data_in[13]~input_o\ : std_logic;
SIGNAL \instruction_reg[13]~3_combout\ : std_logic;
SIGNAL \instruction_reg[15]~0_combout\ : std_logic;
SIGNAL \Data_in[14]~input_o\ : std_logic;
SIGNAL \instruction_reg[14]~2_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \instruction_reg[12]~1_combout\ : std_logic;
SIGNAL \ucode|Mux9~0_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Data_in[15]~input_o\ : std_logic;
SIGNAL \ucode|Mux10~0_combout\ : std_logic;
SIGNAL \ucode|Mux11~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \ucode|Mux7~3_combout\ : std_logic;
SIGNAL \ucode|Mux7~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~19_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~46_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~47_combout\ : std_logic;
SIGNAL \Data_in[11]~input_o\ : std_logic;
SIGNAL \ucode|Mux8~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][12]~12_combout\ : std_logic;
SIGNAL \Data_in[9]~input_o\ : std_logic;
SIGNAL \ucode|Mux22~0_combout\ : std_logic;
SIGNAL \dp|Selector32~0_combout\ : std_logic;
SIGNAL \ucode|Mux4~2_combout\ : std_logic;
SIGNAL \ucode|Mux4~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][7]~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[0][14]~14_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[0][15]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[5][8]~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][12]~13_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][15]~q\ : std_logic;
SIGNAL \Data_in[6]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \dp|Selector35~0_combout\ : std_logic;
SIGNAL \dp|rf|QA[15]~94_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][12]~10_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][12]~11_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][15]~q\ : std_logic;
SIGNAL \Data_in[7]~input_o\ : std_logic;
SIGNAL \dp|Selector34~0_combout\ : std_logic;
SIGNAL \dp|rf|QA[15]~95_combout\ : std_logic;
SIGNAL \Data_in[8]~input_o\ : std_logic;
SIGNAL \dp|Selector33~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][15]~feeder_combout\ : std_logic;
SIGNAL \Data_in[10]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr[6][7]~7_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][3]~8_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][15]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][15]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][8]~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][11]~6_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][15]~q\ : std_logic;
SIGNAL \dp|rf|QA[15]~92_combout\ : std_logic;
SIGNAL \dp|rf|QA[15]~93_combout\ : std_logic;
SIGNAL \dp|rf|QA[15]~96_combout\ : std_logic;
SIGNAL \dp|Selector32~2_combout\ : std_logic;
SIGNAL \dp|Selector32~3_combout\ : std_logic;
SIGNAL \dp|rf|QA[15]~97_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~40_combout\ : std_logic;
SIGNAL \Data_in[5]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr[2][12]~q\ : std_logic;
SIGNAL \Data_in[4]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr[0][12]~q\ : std_logic;
SIGNAL \Data_in[3]~input_o\ : std_logic;
SIGNAL \dp|Selector19~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][12]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][15]~15_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][12]~q\ : std_logic;
SIGNAL \dp|Selector19~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][12]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][12]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][12]~q\ : std_logic;
SIGNAL \dp|Selector19~0_combout\ : std_logic;
SIGNAL \dp|Selector19~1_combout\ : std_logic;
SIGNAL \dp|Selector19~4_combout\ : std_logic;
SIGNAL \dp|Selector19~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~38_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~20_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux4~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~34_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][9]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][9]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][9]~q\ : std_logic;
SIGNAL \dp|rf|QA[9]~58_combout\ : std_logic;
SIGNAL \dp|rf|QA[9]~59_combout\ : std_logic;
SIGNAL \dp|rf|QA[9]~60_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux6~2_combout\ : std_logic;
SIGNAL \ucode|Mux21~0_combout\ : std_logic;
SIGNAL \dp|Selector31~6_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][9]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][9]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][9]~q\ : std_logic;
SIGNAL \dp|Selector22~2_combout\ : std_logic;
SIGNAL \dp|Selector22~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][8]~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][9]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][9]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][9]~q\ : std_logic;
SIGNAL \dp|Selector22~0_combout\ : std_logic;
SIGNAL \dp|Selector22~1_combout\ : std_logic;
SIGNAL \dp|Selector22~4_combout\ : std_logic;
SIGNAL \dp|Selector22~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~32_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~30_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][7]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][7]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][7]~q\ : std_logic;
SIGNAL \dp|rf|QA[7]~46_combout\ : std_logic;
SIGNAL \dp|rf|QA[7]~47_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][7]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][7]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][7]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][7]~q\ : std_logic;
SIGNAL \dp|rf|QA[7]~44_combout\ : std_logic;
SIGNAL \dp|rf|QA[7]~45_combout\ : std_logic;
SIGNAL \dp|rf|QA[7]~48_combout\ : std_logic;
SIGNAL \dp|rf|QA[7]~49_combout\ : std_logic;
SIGNAL \ucode|Mux5~0_combout\ : std_logic;
SIGNAL \ucode|Mux5~1_combout\ : std_logic;
SIGNAL \dp|Selector31~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][5]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][5]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][5]~q\ : std_logic;
SIGNAL \dp|Selector26~0_combout\ : std_logic;
SIGNAL \dp|Selector26~1_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][5]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][5]~q\ : std_logic;
SIGNAL \dp|Selector26~3_combout\ : std_logic;
SIGNAL \dp|Selector26~4_combout\ : std_logic;
SIGNAL \dp|Selector26~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][5]~q\ : std_logic;
SIGNAL \dp|rf|QA[5]~34_combout\ : std_logic;
SIGNAL \dp|rf|QA[5]~35_combout\ : std_logic;
SIGNAL \dp|rf|QA[5]~36_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~22_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][3]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][3]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][3]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][3]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][7]~9_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][3]~q\ : std_logic;
SIGNAL \dp|Selector28~3_combout\ : std_logic;
SIGNAL \dp|Selector28~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][3]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][3]~q\ : std_logic;
SIGNAL \dp|Selector28~0_combout\ : std_logic;
SIGNAL \dp|Selector28~1_combout\ : std_logic;
SIGNAL \dp|Selector28~2_combout\ : std_logic;
SIGNAL \dp|Selector28~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux12~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][3]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][3]~q\ : std_logic;
SIGNAL \dp|rf|QA[3]~20_combout\ : std_logic;
SIGNAL \dp|rf|QA[3]~21_combout\ : std_logic;
SIGNAL \dp|rf|QA[3]~25_combout\ : std_logic;
SIGNAL \Data_in[2]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr~18_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][2]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[5][2]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][2]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][2]~q\ : std_logic;
SIGNAL \dp|rf|QA[2]~14_combout\ : std_logic;
SIGNAL \dp|rf|QA[2]~15_combout\ : std_logic;
SIGNAL \dp|rf|QA[2]~18_combout\ : std_logic;
SIGNAL \ucode|Mux0~1_combout\ : std_logic;
SIGNAL \Data_in[1]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr~16_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][1]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][1]~q\ : std_logic;
SIGNAL \dp|rf|QA[1]~8_combout\ : std_logic;
SIGNAL \dp|rf|QA[1]~9_combout\ : std_logic;
SIGNAL \dp|rf|QA[1]~13_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~1\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux14~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux14~1_combout\ : std_logic;
SIGNAL \dp|Selector30~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][1]~q\ : std_logic;
SIGNAL \dp|Selector30~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][1]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][1]~q\ : std_logic;
SIGNAL \dp|Selector30~0_combout\ : std_logic;
SIGNAL \dp|Selector30~1_combout\ : std_logic;
SIGNAL \dp|Selector30~2_combout\ : std_logic;
SIGNAL \dp|Selector30~5_combout\ : std_logic;
SIGNAL \Data_in[0]~input_o\ : std_logic;
SIGNAL \dp|rf|register_arr~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][0]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[3][0]~q\ : std_logic;
SIGNAL \dp|rf|QA[0]~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][0]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[7][0]~q\ : std_logic;
SIGNAL \dp|rf|QA[0]~0_combout\ : std_logic;
SIGNAL \dp|rf|QA[0]~1_combout\ : std_logic;
SIGNAL \dp|rf|QA[0]~6_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~1\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux14~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux14~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux14~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~17_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][1]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][1]~q\ : std_logic;
SIGNAL \dp|rf|QA[1]~10_combout\ : std_logic;
SIGNAL \dp|rf|QA[1]~11_combout\ : std_logic;
SIGNAL \dp|rf|QA[1]~12_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][0]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][0]~q\ : std_logic;
SIGNAL \dp|Selector31~4_combout\ : std_logic;
SIGNAL \dp|Selector31~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[0][0]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][0]~q\ : std_logic;
SIGNAL \dp|Selector31~0_combout\ : std_logic;
SIGNAL \dp|Selector31~1_combout\ : std_logic;
SIGNAL \dp|Selector31~3_combout\ : std_logic;
SIGNAL \dp|Selector31~7_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~1\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~3\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux13~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux13~3_combout\ : std_logic;
SIGNAL \dp|Selector29~3_combout\ : std_logic;
SIGNAL \dp|Selector29~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][2]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][2]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][2]~q\ : std_logic;
SIGNAL \dp|Selector29~0_combout\ : std_logic;
SIGNAL \dp|Selector29~1_combout\ : std_logic;
SIGNAL \dp|Selector29~2_combout\ : std_logic;
SIGNAL \dp|Selector29~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux13~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~3\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux13~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux13~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~21_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][2]~q\ : std_logic;
SIGNAL \dp|rf|QA[2]~16_combout\ : std_logic;
SIGNAL \dp|rf|QA[2]~17_combout\ : std_logic;
SIGNAL \dp|rf|QA[2]~19_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~5\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~6_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux12~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~5\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~6_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~3\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~5\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~6_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux12~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux12~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux12~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~23_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][3]~q\ : std_logic;
SIGNAL \dp|rf|QA[3]~22_combout\ : std_logic;
SIGNAL \dp|rf|QA[3]~23_combout\ : std_logic;
SIGNAL \dp|rf|QA[3]~24_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~7\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~8_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux11~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~25_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][4]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][4]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][4]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][4]~q\ : std_logic;
SIGNAL \dp|Selector27~0_combout\ : std_logic;
SIGNAL \dp|Selector27~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][4]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[3][4]~q\ : std_logic;
SIGNAL \dp|Selector27~3_combout\ : std_logic;
SIGNAL \dp|Selector27~4_combout\ : std_logic;
SIGNAL \dp|Selector27~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~9\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~10_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][4]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][4]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][4]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][4]~q\ : std_logic;
SIGNAL \dp|rf|QA[4]~26_combout\ : std_logic;
SIGNAL \dp|rf|QA[4]~27_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][4]~q\ : std_logic;
SIGNAL \dp|rf|QA[4]~28_combout\ : std_logic;
SIGNAL \dp|rf|QA[4]~29_combout\ : std_logic;
SIGNAL \dp|rf|QA[4]~30_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~7\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~9\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~10_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux10~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux10~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux10~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~7\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~9\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~10_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux10~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux10~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~27_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][5]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][5]~q\ : std_logic;
SIGNAL \dp|rf|QA[5]~32_combout\ : std_logic;
SIGNAL \dp|rf|QA[5]~33_combout\ : std_logic;
SIGNAL \dp|rf|QA[5]~37_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~11\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~13\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~14_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux8~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][6]~q\ : std_logic;
SIGNAL \dp|Selector25~2_combout\ : std_logic;
SIGNAL \dp|Selector25~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][6]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][6]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][6]~q\ : std_logic;
SIGNAL \dp|Selector25~0_combout\ : std_logic;
SIGNAL \dp|Selector25~1_combout\ : std_logic;
SIGNAL \dp|Selector25~4_combout\ : std_logic;
SIGNAL \dp|Selector25~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~11\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~12_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux9~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~29_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][6]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][6]~q\ : std_logic;
SIGNAL \dp|rf|QA[6]~40_combout\ : std_logic;
SIGNAL \dp|rf|QA[6]~41_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][6]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][6]~q\ : std_logic;
SIGNAL \dp|rf|QA[6]~38_combout\ : std_logic;
SIGNAL \dp|rf|QA[6]~39_combout\ : std_logic;
SIGNAL \dp|rf|QA[6]~42_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~11\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~13\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~14_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~13\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~14_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux8~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux8~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux8~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~31_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][7]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][7]~q\ : std_logic;
SIGNAL \dp|Selector24~2_combout\ : std_logic;
SIGNAL \dp|Selector24~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][7]~q\ : std_logic;
SIGNAL \dp|Selector24~0_combout\ : std_logic;
SIGNAL \dp|Selector24~1_combout\ : std_logic;
SIGNAL \dp|Selector24~4_combout\ : std_logic;
SIGNAL \dp|Selector24~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~15\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~16_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~15\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~16_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][8]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][8]~q\ : std_logic;
SIGNAL \dp|rf|QA[8]~50_combout\ : std_logic;
SIGNAL \dp|rf|QA[8]~51_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][8]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][8]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][8]~q\ : std_logic;
SIGNAL \dp|rf|QA[8]~52_combout\ : std_logic;
SIGNAL \dp|rf|QA[8]~53_combout\ : std_logic;
SIGNAL \dp|rf|QA[8]~55_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~15\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~16_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux7~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~33_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][8]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][8]~q\ : std_logic;
SIGNAL \dp|Selector23~2_combout\ : std_logic;
SIGNAL \dp|Selector23~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][8]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][8]~q\ : std_logic;
SIGNAL \dp|Selector23~0_combout\ : std_logic;
SIGNAL \dp|Selector23~1_combout\ : std_logic;
SIGNAL \dp|Selector23~4_combout\ : std_logic;
SIGNAL \dp|Selector23~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~17\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~18_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~17\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~18_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux6~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux6~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~17\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~18_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux6~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux6~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~35_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][9]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][9]~q\ : std_logic;
SIGNAL \dp|rf|QA[9]~56_combout\ : std_logic;
SIGNAL \dp|rf|QA[9]~57_combout\ : std_logic;
SIGNAL \dp|rf|QA[9]~61_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~19\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~21\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~22_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux4~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][11]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][11]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][11]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][11]~q\ : std_logic;
SIGNAL \dp|Selector20~0_combout\ : std_logic;
SIGNAL \dp|Selector20~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][11]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][11]~q\ : std_logic;
SIGNAL \dp|Selector20~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][11]~q\ : std_logic;
SIGNAL \dp|Selector20~3_combout\ : std_logic;
SIGNAL \dp|Selector20~4_combout\ : std_logic;
SIGNAL \dp|Selector20~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~19\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~20_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~20_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux5~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~37_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][10]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][10]~q\ : std_logic;
SIGNAL \dp|Selector21~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][10]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[7][10]~q\ : std_logic;
SIGNAL \dp|Selector21~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][10]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][10]~q\ : std_logic;
SIGNAL \dp|Selector21~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][10]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[2][10]~q\ : std_logic;
SIGNAL \dp|Selector21~3_combout\ : std_logic;
SIGNAL \dp|Selector21~4_combout\ : std_logic;
SIGNAL \dp|Selector21~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~21\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~22_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux4~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux4~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux4~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~39_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][11]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][11]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][11]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][11]~q\ : std_logic;
SIGNAL \dp|rf|QA[11]~68_combout\ : std_logic;
SIGNAL \dp|rf|QA[11]~69_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][11]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][11]~q\ : std_logic;
SIGNAL \dp|rf|QA[11]~70_combout\ : std_logic;
SIGNAL \dp|rf|QA[11]~71_combout\ : std_logic;
SIGNAL \dp|rf|QA[11]~72_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~19\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~21\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~23\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~24_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][12]~q\ : std_logic;
SIGNAL \dp|rf|QA[12]~76_combout\ : std_logic;
SIGNAL \dp|rf|QA[12]~77_combout\ : std_logic;
SIGNAL \dp|rf|QA[12]~78_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~4_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~3_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux3~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~41_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][12]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][12]~q\ : std_logic;
SIGNAL \dp|rf|QA[12]~74_combout\ : std_logic;
SIGNAL \dp|rf|QA[12]~75_combout\ : std_logic;
SIGNAL \dp|rf|QA[12]~79_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~23\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~25\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~27\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~29\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add2~30_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux0~3_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][15]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[6][15]~q\ : std_logic;
SIGNAL \dp|Selector16~0_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][15]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][15]~q\ : std_logic;
SIGNAL \dp|Selector16~1_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][15]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[3][15]~q\ : std_logic;
SIGNAL \dp|Selector16~2_combout\ : std_logic;
SIGNAL \dp|Selector16~3_combout\ : std_logic;
SIGNAL \dp|Selector16~4_combout\ : std_logic;
SIGNAL \dp|Selector16~5_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~44_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[1][14]~q\ : std_logic;
SIGNAL \dp|Selector17~2_combout\ : std_logic;
SIGNAL \dp|Selector17~3_combout\ : std_logic;
SIGNAL \dp|Selector17~4_combout\ : std_logic;
SIGNAL \dp|Selector17~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux1~2_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~42_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][13]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][13]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][13]~q\ : std_logic;
SIGNAL \dp|rf|QA[13]~80_combout\ : std_logic;
SIGNAL \dp|rf|QA[13]~81_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[0][13]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[1][13]~q\ : std_logic;
SIGNAL \dp|rf|QA[13]~82_combout\ : std_logic;
SIGNAL \dp|rf|QA[13]~83_combout\ : std_logic;
SIGNAL \dp|rf|QA[13]~84_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux2~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~25\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~26_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~23\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~25\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~26_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux2~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux2~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux2~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~43_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][13]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][13]~q\ : std_logic;
SIGNAL \dp|Selector18~2_combout\ : std_logic;
SIGNAL \dp|Selector18~3_combout\ : std_logic;
SIGNAL \dp|Selector18~4_combout\ : std_logic;
SIGNAL \dp|Selector18~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~27\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~28_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~27\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~28_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux1~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux1~4_combout\ : std_logic;
SIGNAL \dp|rf|register_arr~45_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[2][14]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[0][14]~q\ : std_logic;
SIGNAL \dp|rf|QA[14]~88_combout\ : std_logic;
SIGNAL \dp|rf|QA[14]~89_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][14]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[5][14]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[4][14]~feeder_combout\ : std_logic;
SIGNAL \dp|rf|register_arr[4][14]~q\ : std_logic;
SIGNAL \dp|rf|register_arr[6][14]~q\ : std_logic;
SIGNAL \dp|rf|QA[14]~86_combout\ : std_logic;
SIGNAL \dp|rf|QA[14]~87_combout\ : std_logic;
SIGNAL \dp|rf|QA[14]~90_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~29\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add0~30_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux0~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~29\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~30_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux0~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux0~4_combout\ : std_logic;
SIGNAL \Z_reg~2_combout\ : std_logic;
SIGNAL \Neg_reg~q\ : std_logic;
SIGNAL \ucode|Mux7~0_combout\ : std_logic;
SIGNAL \ucode|Mux7~1_combout\ : std_logic;
SIGNAL \ucode|Mux7~2_combout\ : std_logic;
SIGNAL \ucode|Mux7~5_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Equal0~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Equal1~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|add_overflow~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|add_overflow~combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|sub_overflow~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|sub_overflow~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|sub_overflow~combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|O_Flag~combout\ : std_logic;
SIGNAL \O_reg~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \ucode|Mux6~1_combout\ : std_logic;
SIGNAL \ucode|Mux6~2_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Add1~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux15~0_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux15~1_combout\ : std_logic;
SIGNAL \dp|the_best_alu_in_kista|Mux15~4_combout\ : std_logic;
SIGNAL \Data_out[0]~reg0_q\ : std_logic;
SIGNAL \Data_out[1]~reg0_q\ : std_logic;
SIGNAL \Data_out[2]~reg0_q\ : std_logic;
SIGNAL \Data_out[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[3]~reg0_q\ : std_logic;
SIGNAL \Data_out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[4]~reg0_q\ : std_logic;
SIGNAL \Data_out[5]~reg0_q\ : std_logic;
SIGNAL \Data_out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[6]~reg0_q\ : std_logic;
SIGNAL \Data_out[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[7]~reg0_q\ : std_logic;
SIGNAL \Data_out[8]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[8]~reg0_q\ : std_logic;
SIGNAL \Data_out[9]~reg0_q\ : std_logic;
SIGNAL \Data_out[10]~reg0_q\ : std_logic;
SIGNAL \Data_out[11]~reg0_q\ : std_logic;
SIGNAL \Data_out[12]~reg0_q\ : std_logic;
SIGNAL \Data_out[13]~reg0_q\ : std_logic;
SIGNAL \Data_out[14]~reg0feeder_combout\ : std_logic;
SIGNAL \Data_out[14]~reg0_q\ : std_logic;
SIGNAL \Data_out[15]~reg0_q\ : std_logic;
SIGNAL \Address_out[0]~reg0feeder_combout\ : std_logic;
SIGNAL \ucode|Mux31~0_combout\ : std_logic;
SIGNAL \ucode|Mux14~2_combout\ : std_logic;
SIGNAL \ucode|Mux14~3_combout\ : std_logic;
SIGNAL \Address_out[0]~reg0_q\ : std_logic;
SIGNAL \Address_out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Address_out[1]~reg0_q\ : std_logic;
SIGNAL \Address_out[2]~reg0_q\ : std_logic;
SIGNAL \Address_out[3]~reg0_q\ : std_logic;
SIGNAL \Address_out[4]~reg0_q\ : std_logic;
SIGNAL \Address_out[5]~reg0_q\ : std_logic;
SIGNAL \Address_out[6]~reg0_q\ : std_logic;
SIGNAL \Address_out[7]~reg0_q\ : std_logic;
SIGNAL \Address_out[8]~reg0_q\ : std_logic;
SIGNAL \Address_out[9]~reg0_q\ : std_logic;
SIGNAL \Address_out[10]~reg0_q\ : std_logic;
SIGNAL \Address_out[11]~reg0_q\ : std_logic;
SIGNAL \Address_out[12]~reg0feeder_combout\ : std_logic;
SIGNAL \Address_out[12]~reg0_q\ : std_logic;
SIGNAL \Address_out[13]~reg0feeder_combout\ : std_logic;
SIGNAL \Address_out[13]~reg0_q\ : std_logic;
SIGNAL \Address_out[14]~reg0_q\ : std_logic;
SIGNAL \Address_out[15]~reg0_q\ : std_logic;
SIGNAL uPC : std_logic_vector(1 DOWNTO 0);
SIGNAL instruction_reg : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
ww_Data_in <= Data_in;
Read_NWrite <= ww_Read_NWrite;
Data_out <= ww_Data_out;
Address_out <= ww_Address_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;

-- Location: LCCOMB_X23_Y34_N0
\dp|the_best_alu_in_kista|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~0_combout\ = (\dp|Selector31~7_combout\ & (\dp|rf|QA[0]~6_combout\ $ (VCC))) # (!\dp|Selector31~7_combout\ & (\dp|rf|QA[0]~6_combout\ & VCC))
-- \dp|the_best_alu_in_kista|Add0~1\ = CARRY((\dp|Selector31~7_combout\ & \dp|rf|QA[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~7_combout\,
	datab => \dp|rf|QA[0]~6_combout\,
	datad => VCC,
	combout => \dp|the_best_alu_in_kista|Add0~0_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~1\);

-- Location: LCCOMB_X21_Y34_N0
\dp|the_best_alu_in_kista|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~0_combout\ = (((\dp|rf|QA[0]~7_combout\ & \dp|Selector32~3_combout\)))
-- \dp|the_best_alu_in_kista|Add2~1\ = CARRY((\dp|rf|QA[0]~7_combout\ & \dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~7_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	combout => \dp|the_best_alu_in_kista|Add2~0_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~1\);

-- Location: LCCOMB_X23_Y33_N2
\dp|the_best_alu_in_kista|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~2_combout\ = (\dp|Selector30~5_combout\ & ((\dp|rf|QA[1]~12_combout\ & (!\dp|the_best_alu_in_kista|Add1~1\)) # (!\dp|rf|QA[1]~12_combout\ & ((\dp|the_best_alu_in_kista|Add1~1\) # (GND))))) # (!\dp|Selector30~5_combout\ & 
-- ((\dp|rf|QA[1]~12_combout\ & (\dp|the_best_alu_in_kista|Add1~1\ & VCC)) # (!\dp|rf|QA[1]~12_combout\ & (!\dp|the_best_alu_in_kista|Add1~1\))))
-- \dp|the_best_alu_in_kista|Add1~3\ = CARRY((\dp|Selector30~5_combout\ & ((!\dp|the_best_alu_in_kista|Add1~1\) # (!\dp|rf|QA[1]~12_combout\))) # (!\dp|Selector30~5_combout\ & (!\dp|rf|QA[1]~12_combout\ & !\dp|the_best_alu_in_kista|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector30~5_combout\,
	datab => \dp|rf|QA[1]~12_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~1\,
	combout => \dp|the_best_alu_in_kista|Add1~2_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~3\);

-- Location: LCCOMB_X23_Y34_N4
\dp|the_best_alu_in_kista|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~4_combout\ = ((\dp|Selector29~5_combout\ $ (\dp|rf|QA[2]~18_combout\ $ (!\dp|the_best_alu_in_kista|Add0~3\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~5\ = CARRY((\dp|Selector29~5_combout\ & ((\dp|rf|QA[2]~18_combout\) # (!\dp|the_best_alu_in_kista|Add0~3\))) # (!\dp|Selector29~5_combout\ & (\dp|rf|QA[2]~18_combout\ & !\dp|the_best_alu_in_kista|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector29~5_combout\,
	datab => \dp|rf|QA[2]~18_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~3\,
	combout => \dp|the_best_alu_in_kista|Add0~4_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~5\);

-- Location: LCCOMB_X21_Y34_N8
\dp|the_best_alu_in_kista|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~8_combout\ = (\dp|the_best_alu_in_kista|Add2~7\ & (\dp|rf|QA[4]~31_combout\ & (\dp|Selector32~3_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~7\ & ((((\dp|rf|QA[4]~31_combout\ & \dp|Selector32~3_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~9\ = CARRY((\dp|rf|QA[4]~31_combout\ & (\dp|Selector32~3_combout\ & !\dp|the_best_alu_in_kista|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[4]~31_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~7\,
	combout => \dp|the_best_alu_in_kista|Add2~8_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~9\);

-- Location: LCCOMB_X23_Y33_N8
\dp|the_best_alu_in_kista|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~8_combout\ = ((\dp|Selector27~5_combout\ $ (\dp|rf|QA[4]~30_combout\ $ (\dp|the_best_alu_in_kista|Add1~7\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~9\ = CARRY((\dp|Selector27~5_combout\ & (\dp|rf|QA[4]~30_combout\ & !\dp|the_best_alu_in_kista|Add1~7\)) # (!\dp|Selector27~5_combout\ & ((\dp|rf|QA[4]~30_combout\) # (!\dp|the_best_alu_in_kista|Add1~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector27~5_combout\,
	datab => \dp|rf|QA[4]~30_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~7\,
	combout => \dp|the_best_alu_in_kista|Add1~8_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~9\);

-- Location: LCCOMB_X23_Y34_N12
\dp|the_best_alu_in_kista|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~12_combout\ = ((\dp|Selector25~5_combout\ $ (\dp|rf|QA[6]~42_combout\ $ (!\dp|the_best_alu_in_kista|Add0~11\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~13\ = CARRY((\dp|Selector25~5_combout\ & ((\dp|rf|QA[6]~42_combout\) # (!\dp|the_best_alu_in_kista|Add0~11\))) # (!\dp|Selector25~5_combout\ & (\dp|rf|QA[6]~42_combout\ & !\dp|the_best_alu_in_kista|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector25~5_combout\,
	datab => \dp|rf|QA[6]~42_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~11\,
	combout => \dp|the_best_alu_in_kista|Add0~12_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~13\);

-- Location: LCCOMB_X21_Y34_N12
\dp|the_best_alu_in_kista|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~12_combout\ = (\dp|the_best_alu_in_kista|Add2~11\ & (\dp|rf|QA[6]~43_combout\ & (\dp|Selector32~3_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~11\ & ((((\dp|rf|QA[6]~43_combout\ & \dp|Selector32~3_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~13\ = CARRY((\dp|rf|QA[6]~43_combout\ & (\dp|Selector32~3_combout\ & !\dp|the_best_alu_in_kista|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[6]~43_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~11\,
	combout => \dp|the_best_alu_in_kista|Add2~12_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~13\);

-- Location: LCCOMB_X23_Y34_N20
\dp|the_best_alu_in_kista|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~20_combout\ = ((\dp|rf|QA[10]~66_combout\ $ (\dp|Selector21~5_combout\ $ (!\dp|the_best_alu_in_kista|Add0~19\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~21\ = CARRY((\dp|rf|QA[10]~66_combout\ & ((\dp|Selector21~5_combout\) # (!\dp|the_best_alu_in_kista|Add0~19\))) # (!\dp|rf|QA[10]~66_combout\ & (\dp|Selector21~5_combout\ & !\dp|the_best_alu_in_kista|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[10]~66_combout\,
	datab => \dp|Selector21~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~19\,
	combout => \dp|the_best_alu_in_kista|Add0~20_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~21\);

-- Location: LCCOMB_X23_Y34_N22
\dp|the_best_alu_in_kista|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~22_combout\ = (\dp|Selector20~5_combout\ & ((\dp|rf|QA[11]~72_combout\ & (\dp|the_best_alu_in_kista|Add0~21\ & VCC)) # (!\dp|rf|QA[11]~72_combout\ & (!\dp|the_best_alu_in_kista|Add0~21\)))) # (!\dp|Selector20~5_combout\ & 
-- ((\dp|rf|QA[11]~72_combout\ & (!\dp|the_best_alu_in_kista|Add0~21\)) # (!\dp|rf|QA[11]~72_combout\ & ((\dp|the_best_alu_in_kista|Add0~21\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~23\ = CARRY((\dp|Selector20~5_combout\ & (!\dp|rf|QA[11]~72_combout\ & !\dp|the_best_alu_in_kista|Add0~21\)) # (!\dp|Selector20~5_combout\ & ((!\dp|the_best_alu_in_kista|Add0~21\) # (!\dp|rf|QA[11]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector20~5_combout\,
	datab => \dp|rf|QA[11]~72_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~21\,
	combout => \dp|the_best_alu_in_kista|Add0~22_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~23\);

-- Location: LCCOMB_X23_Y33_N24
\dp|the_best_alu_in_kista|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~24_combout\ = ((\dp|rf|QA[12]~78_combout\ $ (\dp|Selector19~5_combout\ $ (\dp|the_best_alu_in_kista|Add1~23\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~25\ = CARRY((\dp|rf|QA[12]~78_combout\ & ((!\dp|the_best_alu_in_kista|Add1~23\) # (!\dp|Selector19~5_combout\))) # (!\dp|rf|QA[12]~78_combout\ & (!\dp|Selector19~5_combout\ & !\dp|the_best_alu_in_kista|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[12]~78_combout\,
	datab => \dp|Selector19~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~23\,
	combout => \dp|the_best_alu_in_kista|Add1~24_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~25\);

-- Location: LCCOMB_X21_Y34_N24
\dp|the_best_alu_in_kista|Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~24_combout\ = (\dp|the_best_alu_in_kista|Add2~23\ & (\dp|Selector32~3_combout\ & (\dp|rf|QA[12]~79_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~23\ & ((((\dp|Selector32~3_combout\ & \dp|rf|QA[12]~79_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~25\ = CARRY((\dp|Selector32~3_combout\ & (\dp|rf|QA[12]~79_combout\ & !\dp|the_best_alu_in_kista|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[12]~79_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~23\,
	combout => \dp|the_best_alu_in_kista|Add2~24_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~25\);

-- Location: LCCOMB_X21_Y34_N26
\dp|the_best_alu_in_kista|Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~26_combout\ = (\dp|the_best_alu_in_kista|Add2~25\ & (((!\dp|Selector32~3_combout\)) # (!\dp|rf|QA[13]~85_combout\))) # (!\dp|the_best_alu_in_kista|Add2~25\ & (((\dp|rf|QA[13]~85_combout\ & \dp|Selector32~3_combout\)) # 
-- (GND)))
-- \dp|the_best_alu_in_kista|Add2~27\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~25\) # (!\dp|Selector32~3_combout\)) # (!\dp|rf|QA[13]~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[13]~85_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~25\,
	combout => \dp|the_best_alu_in_kista|Add2~26_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~27\);

-- Location: LCCOMB_X21_Y34_N28
\dp|the_best_alu_in_kista|Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~28_combout\ = (\dp|the_best_alu_in_kista|Add2~27\ & (\dp|rf|QA[14]~91_combout\ & (\dp|Selector32~3_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~27\ & ((((\dp|rf|QA[14]~91_combout\ & \dp|Selector32~3_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~29\ = CARRY((\dp|rf|QA[14]~91_combout\ & (\dp|Selector32~3_combout\ & !\dp|the_best_alu_in_kista|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[14]~91_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~27\,
	combout => \dp|the_best_alu_in_kista|Add2~28_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~29\);

-- Location: FF_X22_Y34_N31
Z_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \dp|the_best_alu_in_kista|z_tmp~4_combout\,
	ena => \Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Z_reg~q\);

-- Location: LCCOMB_X25_Y35_N26
\dp|Selector32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector32~1_combout\ = (instruction_reg(13)) # ((instruction_reg(12) & !instruction_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datac => instruction_reg(12),
	datad => instruction_reg(15),
	combout => \dp|Selector32~1_combout\);

-- Location: FF_X24_Y36_N1
\dp|rf|register_arr[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][0]~q\);

-- Location: LCCOMB_X25_Y35_N8
\dp|rf|QA[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~2_combout\ = (instruction_reg(7) & (((instruction_reg(6))))) # (!instruction_reg(7) & ((instruction_reg(6) & ((\dp|rf|register_arr[1][0]~q\))) # (!instruction_reg(6) & (\dp|rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][0]~q\,
	datab => instruction_reg(7),
	datac => instruction_reg(6),
	datad => \dp|rf|register_arr[1][0]~q\,
	combout => \dp|rf|QA[0]~2_combout\);

-- Location: LCCOMB_X25_Y35_N6
\dp|rf|QA[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~3_combout\ = (instruction_reg(3) & (((instruction_reg(4)) # (\dp|rf|register_arr[1][0]~q\)))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][0]~q\ & (!instruction_reg(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][0]~q\,
	datab => instruction_reg(3),
	datac => instruction_reg(4),
	datad => \dp|rf|register_arr[1][0]~q\,
	combout => \dp|rf|QA[0]~3_combout\);

-- Location: LCCOMB_X24_Y34_N26
\dp|rf|QA[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~4_combout\ = (\ucode|Mux8~0_combout\) # ((\Mux0~1_combout\ & (\dp|rf|QA[0]~3_combout\)) # (!\Mux0~1_combout\ & ((\dp|rf|QA[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~3_combout\,
	datab => \ucode|Mux8~0_combout\,
	datac => \Mux0~1_combout\,
	datad => \dp|rf|QA[0]~2_combout\,
	combout => \dp|rf|QA[0]~4_combout\);

-- Location: LCCOMB_X26_Y34_N6
\ucode|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux23~0_combout\ = (!instruction_reg(14) & ((\Mux3~2_combout\) # ((!instruction_reg(12) & !instruction_reg(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datab => \Mux3~2_combout\,
	datac => instruction_reg(13),
	datad => instruction_reg(14),
	combout => \ucode|Mux23~0_combout\);

-- Location: LCCOMB_X24_Y35_N0
\ucode|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux6~0_combout\ = (instruction_reg(13)) # ((instruction_reg(12) & instruction_reg(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(12),
	datac => instruction_reg(15),
	datad => instruction_reg(13),
	combout => \ucode|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y34_N22
\dp|the_best_alu_in_kista|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux15~2_combout\ = (\dp|rf|QA[0]~6_combout\ & ((\ucode|Mux7~5_combout\) # ((\dp|Selector31~7_combout\ & !\ucode|Mux5~1_combout\)))) # (!\dp|rf|QA[0]~6_combout\ & (\ucode|Mux7~5_combout\ & ((\dp|Selector31~7_combout\) # 
-- (\ucode|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~6_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|Selector31~7_combout\,
	datad => \ucode|Mux5~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux15~2_combout\);

-- Location: LCCOMB_X24_Y34_N16
\dp|rf|QA[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~7_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[0]~1_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[0]~5_combout\,
	datad => \dp|rf|QA[0]~1_combout\,
	combout => \dp|rf|QA[0]~7_combout\);

-- Location: LCCOMB_X24_Y34_N28
\dp|the_best_alu_in_kista|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux15~3_combout\ = (\dp|the_best_alu_in_kista|Mux15~2_combout\ & (((\dp|the_best_alu_in_kista|Add2~0_combout\) # (!\ucode|Mux5~1_combout\)))) # (!\dp|the_best_alu_in_kista|Mux15~2_combout\ & (\dp|rf|QA[0]~6_combout\ & 
-- ((\ucode|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux15~2_combout\,
	datab => \dp|rf|QA[0]~6_combout\,
	datac => \dp|the_best_alu_in_kista|Add2~0_combout\,
	datad => \ucode|Mux5~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux15~3_combout\);

-- Location: FF_X24_Y36_N21
\dp|rf|register_arr[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][1]~q\);

-- Location: FF_X23_Y35_N1
\dp|rf|register_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][3]~q\);

-- Location: FF_X26_Y35_N19
\dp|rf|register_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][4]~q\);

-- Location: LCCOMB_X26_Y35_N18
\dp|Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][4]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][4]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[0][4]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector27~2_combout\);

-- Location: LCCOMB_X22_Y35_N24
\dp|rf|QA[4]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~31_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[4]~27_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[4]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[4]~27_combout\,
	datad => \dp|rf|QA[4]~29_combout\,
	combout => \dp|rf|QA[4]~31_combout\);

-- Location: LCCOMB_X22_Y33_N12
\dp|the_best_alu_in_kista|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~0_combout\ = (\ucode|Mux6~2_combout\ & ((\dp|the_best_alu_in_kista|Add2~8_combout\))) # (!\ucode|Mux6~2_combout\ & (\dp|the_best_alu_in_kista|Add1~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add1~8_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~8_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~0_combout\);

-- Location: FF_X22_Y33_N25
\dp|rf|register_arr[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][5]~q\);

-- Location: LCCOMB_X25_Y36_N30
\dp|Selector26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~2_combout\ = (instruction_reg(3) & (instruction_reg(4))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][5]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[6][5]~q\,
	datad => \dp|rf|register_arr[4][5]~q\,
	combout => \dp|Selector26~2_combout\);

-- Location: FF_X24_Y36_N13
\dp|rf|register_arr[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][6]~q\);

-- Location: FF_X22_Y32_N9
\dp|rf|register_arr[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][6]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][6]~q\);

-- Location: LCCOMB_X22_Y32_N10
\dp|rf|QA[6]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~43_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[6]~39_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[6]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[6]~41_combout\,
	datad => \dp|rf|QA[6]~39_combout\,
	combout => \dp|rf|QA[6]~43_combout\);

-- Location: LCCOMB_X22_Y35_N22
\dp|the_best_alu_in_kista|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~0_combout\ = (\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~12_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~12_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~12_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~0_combout\);

-- Location: FF_X26_Y32_N27
\dp|rf|register_arr[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][7]~q\);

-- Location: FF_X24_Y32_N7
\dp|rf|register_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][7]~q\);

-- Location: LCCOMB_X23_Y36_N22
\dp|the_best_alu_in_kista|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux8~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[7]~48_combout\ $ (((\ucode|Mux7~5_combout\) # (\dp|Selector24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \dp|Selector24~5_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \dp|rf|QA[7]~48_combout\,
	combout => \dp|the_best_alu_in_kista|Mux8~2_combout\);

-- Location: FF_X26_Y32_N15
\dp|rf|register_arr[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr~33_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][8]~q\);

-- Location: LCCOMB_X25_Y33_N26
\dp|rf|QA[8]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~54_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[8]~51_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[8]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[8]~51_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[8]~53_combout\,
	combout => \dp|rf|QA[8]~54_combout\);

-- Location: LCCOMB_X25_Y33_N12
\dp|the_best_alu_in_kista|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~3_combout\ = (\ucode|Mux6~2_combout\ & (!\dp|the_best_alu_in_kista|Mux7~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux7~1_combout\) # (!\dp|rf|QA[8]~54_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\dp|rf|QA[8]~54_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux7~2_combout\)) # (!\dp|rf|QA[8]~54_combout\ & ((\dp|the_best_alu_in_kista|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[8]~54_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux7~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux7~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~3_combout\);

-- Location: FF_X26_Y32_N11
\dp|rf|register_arr[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][9]~q\);

-- Location: FF_X27_Y35_N9
\dp|rf|register_arr[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][10]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][10]~q\);

-- Location: FF_X28_Y35_N23
\dp|rf|register_arr[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][10]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][10]~q\);

-- Location: LCCOMB_X28_Y35_N4
\dp|rf|QA[10]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~62_combout\ = (\dp|Selector35~0_combout\ & (((\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & ((\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][10]~q\))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][10]~q\,
	datab => \dp|rf|register_arr[6][10]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[10]~62_combout\);

-- Location: LCCOMB_X27_Y35_N24
\dp|rf|QA[10]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~63_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[10]~62_combout\ & ((\dp|rf|register_arr[7][10]~q\))) # (!\dp|rf|QA[10]~62_combout\ & (\dp|rf|register_arr[5][10]~q\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[10]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][10]~q\,
	datab => \dp|rf|register_arr[7][10]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[10]~62_combout\,
	combout => \dp|rf|QA[10]~63_combout\);

-- Location: LCCOMB_X26_Y36_N16
\dp|rf|QA[10]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~64_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][10]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][10]~q\,
	datac => \dp|rf|register_arr[1][10]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[10]~64_combout\);

-- Location: LCCOMB_X23_Y35_N16
\dp|rf|QA[10]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~65_combout\ = (\dp|rf|QA[10]~64_combout\ & ((\dp|rf|register_arr[3][10]~q\) # ((!\dp|Selector34~0_combout\)))) # (!\dp|rf|QA[10]~64_combout\ & (((\dp|rf|register_arr[2][10]~q\ & \dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][10]~q\,
	datab => \dp|rf|register_arr[2][10]~q\,
	datac => \dp|rf|QA[10]~64_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[10]~65_combout\);

-- Location: LCCOMB_X23_Y35_N30
\dp|rf|QA[10]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~66_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[10]~63_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[10]~65_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[10]~63_combout\,
	datad => \dp|rf|QA[10]~65_combout\,
	combout => \dp|rf|QA[10]~66_combout\);

-- Location: LCCOMB_X23_Y35_N4
\dp|rf|QA[10]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[10]~67_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[10]~63_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[10]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[10]~63_combout\,
	datad => \dp|rf|QA[10]~65_combout\,
	combout => \dp|rf|QA[10]~67_combout\);

-- Location: LCCOMB_X23_Y35_N20
\dp|the_best_alu_in_kista|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~4_combout\ = (\dp|rf|QA[10]~66_combout\ & (\dp|the_best_alu_in_kista|Mux5~1_combout\ $ (((\dp|the_best_alu_in_kista|Mux5~2_combout\ & \ucode|Mux6~2_combout\))))) # (!\dp|rf|QA[10]~66_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux5~2_combout\ & ((!\ucode|Mux6~2_combout\) # (!\dp|the_best_alu_in_kista|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[10]~66_combout\,
	datab => \dp|the_best_alu_in_kista|Mux5~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux5~1_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y32_N26
\dp|rf|QA[11]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~73_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[11]~69_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[11]~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[11]~69_combout\,
	datad => \dp|rf|QA[11]~71_combout\,
	combout => \dp|rf|QA[11]~73_combout\);

-- Location: FF_X26_Y34_N15
\dp|rf|register_arr[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][12]~q\);

-- Location: FF_X28_Y35_N13
\dp|rf|register_arr[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][13]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][13]~q\);

-- Location: FF_X28_Y34_N3
\dp|rf|register_arr[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][13]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][13]~q\);

-- Location: FF_X27_Y36_N27
\dp|rf|register_arr[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][13]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][13]~q\);

-- Location: LCCOMB_X28_Y35_N14
\dp|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][13]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][13]~q\,
	datab => \dp|rf|register_arr[4][13]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector18~0_combout\);

-- Location: LCCOMB_X27_Y34_N22
\dp|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~1_combout\ = (instruction_reg(3) & ((\dp|Selector18~0_combout\ & (\dp|rf|register_arr[7][13]~q\)) # (!\dp|Selector18~0_combout\ & ((\dp|rf|register_arr[5][13]~q\))))) # (!instruction_reg(3) & (((\dp|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][13]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[5][13]~q\,
	datad => \dp|Selector18~0_combout\,
	combout => \dp|Selector18~1_combout\);

-- Location: LCCOMB_X27_Y34_N14
\dp|rf|QA[13]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~85_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[13]~81_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[13]~83_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[13]~81_combout\,
	datad => \dp|rf|QA[13]~83_combout\,
	combout => \dp|rf|QA[13]~85_combout\);

-- Location: LCCOMB_X27_Y34_N6
\dp|the_best_alu_in_kista|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux2~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~26_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[13]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[13]~84_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~26_combout\,
	combout => \dp|the_best_alu_in_kista|Mux2~3_combout\);

-- Location: FF_X25_Y36_N1
\dp|rf|register_arr[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][14]~q\);

-- Location: FF_X27_Y33_N11
\dp|rf|register_arr[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][14]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][14]~q\);

-- Location: LCCOMB_X25_Y36_N14
\dp|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~0_combout\ = (instruction_reg(4) & ((\dp|rf|register_arr[6][14]~q\) # ((instruction_reg(3))))) # (!instruction_reg(4) & (((\dp|rf|register_arr[4][14]~q\ & !instruction_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][14]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[4][14]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector17~0_combout\);

-- Location: LCCOMB_X25_Y36_N0
\dp|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~1_combout\ = (\dp|Selector17~0_combout\ & (((\dp|rf|register_arr[7][14]~q\) # (!instruction_reg(3))))) # (!\dp|Selector17~0_combout\ & (\dp|rf|register_arr[5][14]~q\ & ((instruction_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][14]~q\,
	datab => \dp|Selector17~0_combout\,
	datac => \dp|rf|register_arr[7][14]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector17~1_combout\);

-- Location: LCCOMB_X22_Y36_N12
\dp|the_best_alu_in_kista|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux1~0_combout\ = (\dp|Selector17~5_combout\ & ((\ucode|Mux7~5_combout\) # ((\ucode|Mux6~2_combout\ & \dp|rf|QA[14]~90_combout\)))) # (!\dp|Selector17~5_combout\ & (\ucode|Mux7~5_combout\ & ((\dp|rf|QA[14]~90_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector17~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|rf|QA[14]~90_combout\,
	combout => \dp|the_best_alu_in_kista|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y35_N30
\dp|rf|QA[14]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~91_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[14]~87_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[14]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[14]~89_combout\,
	datad => \dp|rf|QA[14]~87_combout\,
	combout => \dp|rf|QA[14]~91_combout\);

-- Location: LCCOMB_X22_Y36_N10
\dp|the_best_alu_in_kista|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux1~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~28_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[14]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[14]~90_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~28_combout\,
	combout => \dp|the_best_alu_in_kista|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y34_N22
\dp|the_best_alu_in_kista|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux0~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[15]~96_combout\ $ (((\ucode|Mux7~5_combout\) # (\dp|Selector16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|Selector16~5_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux0~2_combout\);

-- Location: LCCOMB_X26_Y34_N22
\ucode|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux29~0_combout\ = (instruction_reg(15)) # ((!instruction_reg(14) & (!instruction_reg(13) & !instruction_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(14),
	datab => instruction_reg(15),
	datac => instruction_reg(13),
	datad => instruction_reg(12),
	combout => \ucode|Mux29~0_combout\);

-- Location: LCCOMB_X22_Y34_N28
\dp|the_best_alu_in_kista|z_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|z_tmp~0_combout\ = (\dp|the_best_alu_in_kista|Mux11~5_combout\) # ((\dp|the_best_alu_in_kista|Mux12~4_combout\) # ((\dp|the_best_alu_in_kista|Mux13~4_combout\) # (\dp|the_best_alu_in_kista|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux11~5_combout\,
	datab => \dp|the_best_alu_in_kista|Mux12~4_combout\,
	datac => \dp|the_best_alu_in_kista|Mux13~4_combout\,
	datad => \dp|the_best_alu_in_kista|Mux14~4_combout\,
	combout => \dp|the_best_alu_in_kista|z_tmp~0_combout\);

-- Location: LCCOMB_X22_Y34_N16
\dp|the_best_alu_in_kista|z_tmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|z_tmp~1_combout\ = (\dp|the_best_alu_in_kista|Mux5~5_combout\) # ((\dp|the_best_alu_in_kista|Mux6~4_combout\) # ((\dp|the_best_alu_in_kista|Mux4~4_combout\) # (\dp|the_best_alu_in_kista|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux5~5_combout\,
	datab => \dp|the_best_alu_in_kista|Mux6~4_combout\,
	datac => \dp|the_best_alu_in_kista|Mux4~4_combout\,
	datad => \dp|the_best_alu_in_kista|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|z_tmp~1_combout\);

-- Location: LCCOMB_X22_Y34_N8
\dp|the_best_alu_in_kista|z_tmp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|z_tmp~2_combout\ = (\dp|the_best_alu_in_kista|Mux10~4_combout\) # ((\dp|the_best_alu_in_kista|Mux8~4_combout\) # ((\dp|the_best_alu_in_kista|Mux15~4_combout\) # (\dp|the_best_alu_in_kista|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux10~4_combout\,
	datab => \dp|the_best_alu_in_kista|Mux8~4_combout\,
	datac => \dp|the_best_alu_in_kista|Mux15~4_combout\,
	datad => \dp|the_best_alu_in_kista|Mux9~5_combout\,
	combout => \dp|the_best_alu_in_kista|z_tmp~2_combout\);

-- Location: LCCOMB_X22_Y34_N4
\dp|the_best_alu_in_kista|z_tmp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|z_tmp~3_combout\ = (\dp|the_best_alu_in_kista|Mux3~5_combout\) # ((\dp|the_best_alu_in_kista|Mux1~4_combout\) # ((\dp|the_best_alu_in_kista|z_tmp~2_combout\) # (\dp|the_best_alu_in_kista|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux3~5_combout\,
	datab => \dp|the_best_alu_in_kista|Mux1~4_combout\,
	datac => \dp|the_best_alu_in_kista|z_tmp~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux2~4_combout\,
	combout => \dp|the_best_alu_in_kista|z_tmp~3_combout\);

-- Location: LCCOMB_X22_Y34_N30
\dp|the_best_alu_in_kista|z_tmp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|z_tmp~4_combout\ = (!\dp|the_best_alu_in_kista|Mux0~4_combout\ & (!\dp|the_best_alu_in_kista|z_tmp~0_combout\ & (!\dp|the_best_alu_in_kista|z_tmp~3_combout\ & !\dp|the_best_alu_in_kista|z_tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	datab => \dp|the_best_alu_in_kista|z_tmp~0_combout\,
	datac => \dp|the_best_alu_in_kista|z_tmp~3_combout\,
	datad => \dp|the_best_alu_in_kista|z_tmp~1_combout\,
	combout => \dp|the_best_alu_in_kista|z_tmp~4_combout\);

-- Location: LCCOMB_X24_Y36_N26
\ucode|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux0~0_combout\ = (instruction_reg(15) & (uPC(0) & (uPC(1) $ (!instruction_reg(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(15),
	datab => uPC(1),
	datac => instruction_reg(13),
	datad => uPC(0),
	combout => \ucode|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y35_N16
\dp|rf|register_arr~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~24_combout\ = (instruction_reg(13) & ((\Data_in[4]~input_o\))) # (!instruction_reg(13) & (instruction_reg(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datac => instruction_reg(4),
	datad => \Data_in[4]~input_o\,
	combout => \dp|rf|register_arr~24_combout\);

-- Location: LCCOMB_X26_Y33_N16
\dp|rf|register_arr~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~26_combout\ = (instruction_reg(13) & (\Data_in[5]~input_o\)) # (!instruction_reg(13) & ((instruction_reg(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_in[5]~input_o\,
	datac => instruction_reg(13),
	datad => instruction_reg(5),
	combout => \dp|rf|register_arr~26_combout\);

-- Location: LCCOMB_X22_Y35_N10
\dp|rf|register_arr~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~28_combout\ = (instruction_reg(13) & ((\Data_in[6]~input_o\))) # (!instruction_reg(13) & (instruction_reg(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(6),
	datac => instruction_reg(13),
	datad => \Data_in[6]~input_o\,
	combout => \dp|rf|register_arr~28_combout\);

-- Location: LCCOMB_X24_Y35_N2
\dp|rf|register_arr~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~36_combout\ = (instruction_reg(13) & ((\Data_in[10]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(8),
	datac => \Data_in[10]~input_o\,
	datad => instruction_reg(13),
	combout => \dp|rf|register_arr~36_combout\);

-- Location: IOIBUF_X25_Y0_N1
\Data_in[12]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(12),
	o => \Data_in[12]~input_o\);

-- Location: LCCOMB_X22_Y32_N8
\dp|rf|register_arr[3][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][6]~feeder_combout\ = \dp|rf|register_arr~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~29_combout\,
	combout => \dp|rf|register_arr[3][6]~feeder_combout\);

-- Location: LCCOMB_X27_Y35_N8
\dp|rf|register_arr[5][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][10]~feeder_combout\ = \dp|rf|register_arr~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~37_combout\,
	combout => \dp|rf|register_arr[5][10]~feeder_combout\);

-- Location: LCCOMB_X28_Y35_N22
\dp|rf|register_arr[4][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][10]~feeder_combout\ = \dp|rf|register_arr~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~37_combout\,
	combout => \dp|rf|register_arr[4][10]~feeder_combout\);

-- Location: LCCOMB_X28_Y34_N2
\dp|rf|register_arr[7][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][13]~feeder_combout\ = \dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~43_combout\,
	combout => \dp|rf|register_arr[7][13]~feeder_combout\);

-- Location: LCCOMB_X28_Y35_N12
\dp|rf|register_arr[6][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][13]~feeder_combout\ = \dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~43_combout\,
	combout => \dp|rf|register_arr[6][13]~feeder_combout\);

-- Location: LCCOMB_X27_Y36_N26
\dp|rf|register_arr[3][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][13]~feeder_combout\ = \dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~43_combout\,
	combout => \dp|rf|register_arr[3][13]~feeder_combout\);

-- Location: LCCOMB_X27_Y33_N10
\dp|rf|register_arr[3][14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][14]~feeder_combout\ = \dp|rf|register_arr~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~45_combout\,
	combout => \dp|rf|register_arr[3][14]~feeder_combout\);

-- Location: IOOBUF_X50_Y41_N2
\Read_NWrite~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ucode|Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Read_NWrite~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\Data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[0]~output_o\);

-- Location: IOOBUF_X36_Y41_N2
\Data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\Data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\Data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[3]~output_o\);

-- Location: IOOBUF_X41_Y41_N16
\Data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\Data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[5]~output_o\);

-- Location: IOOBUF_X16_Y41_N2
\Data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[6]~output_o\);

-- Location: IOOBUF_X29_Y41_N9
\Data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[7]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\Data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[8]~output_o\);

-- Location: IOOBUF_X18_Y41_N2
\Data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\Data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[10]~output_o\);

-- Location: IOOBUF_X12_Y41_N9
\Data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[11]~output_o\);

-- Location: IOOBUF_X14_Y41_N9
\Data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[12]~output_o\);

-- Location: IOOBUF_X31_Y41_N23
\Data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[13]~output_o\);

-- Location: IOOBUF_X18_Y41_N9
\Data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[14]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\Data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Data_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Data_out[15]~output_o\);

-- Location: IOOBUF_X52_Y31_N2
\Address_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[0]~output_o\);

-- Location: IOOBUF_X43_Y41_N9
\Address_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[1]~output_o\);

-- Location: IOOBUF_X7_Y41_N9
\Address_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[2]~output_o\);

-- Location: IOOBUF_X12_Y41_N2
\Address_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[3]~output_o\);

-- Location: IOOBUF_X43_Y41_N2
\Address_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[4]~output_o\);

-- Location: IOOBUF_X14_Y41_N2
\Address_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[5]~output_o\);

-- Location: IOOBUF_X16_Y41_N9
\Address_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[6]~output_o\);

-- Location: IOOBUF_X41_Y41_N2
\Address_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[7]~output_o\);

-- Location: IOOBUF_X23_Y41_N9
\Address_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[8]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[8]~output_o\);

-- Location: IOOBUF_X41_Y41_N9
\Address_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[9]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[9]~output_o\);

-- Location: IOOBUF_X21_Y41_N9
\Address_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[10]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[10]~output_o\);

-- Location: IOOBUF_X21_Y41_N2
\Address_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[11]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[11]~output_o\);

-- Location: IOOBUF_X23_Y41_N2
\Address_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[12]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[12]~output_o\);

-- Location: IOOBUF_X38_Y41_N9
\Address_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[13]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[13]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\Address_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[14]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[14]~output_o\);

-- Location: IOOBUF_X41_Y41_N23
\Address_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Address_out[15]~reg0_q\,
	devoe => ww_devoe,
	o => \Address_out[15]~output_o\);

-- Location: LCCOMB_X24_Y36_N20
\uPC[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \uPC[0]~1_combout\ = !uPC(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => uPC(0),
	combout => \uPC[0]~1_combout\);

-- Location: IOIBUF_X27_Y0_N22
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

-- Location: FF_X24_Y35_N7
\uPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \uPC[0]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uPC(0));

-- Location: LCCOMB_X24_Y35_N14
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

-- Location: FF_X24_Y35_N15
\uPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \uPC[1]~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => uPC(1));

-- Location: IOIBUF_X34_Y41_N8
\Data_in[13]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(13),
	o => \Data_in[13]~input_o\);

-- Location: LCCOMB_X27_Y34_N10
\instruction_reg[13]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[13]~3_combout\ = !\Data_in[13]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Data_in[13]~input_o\,
	combout => \instruction_reg[13]~3_combout\);

-- Location: LCCOMB_X24_Y32_N4
\instruction_reg[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[15]~0_combout\ = (!uPC(1) & (!uPC(0) & !\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => uPC(0),
	datad => \RESET~input_o\,
	combout => \instruction_reg[15]~0_combout\);

-- Location: FF_X25_Y35_N23
\instruction_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \instruction_reg[13]~3_combout\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(13));

-- Location: IOIBUF_X52_Y32_N8
\Data_in[14]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(14),
	o => \Data_in[14]~input_o\);

-- Location: LCCOMB_X25_Y32_N18
\instruction_reg[14]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[14]~2_combout\ = !\Data_in[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Data_in[14]~input_o\,
	combout => \instruction_reg[14]~2_combout\);

-- Location: FF_X25_Y35_N1
\instruction_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \instruction_reg[14]~2_combout\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(14));

-- Location: LCCOMB_X25_Y35_N28
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (instruction_reg(15) & (instruction_reg(13) & instruction_reg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(15),
	datac => instruction_reg(13),
	datad => instruction_reg(14),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X26_Y34_N24
\instruction_reg[12]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \instruction_reg[12]~1_combout\ = !\Data_in[12]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_in[12]~input_o\,
	combout => \instruction_reg[12]~1_combout\);

-- Location: FF_X25_Y35_N27
\instruction_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \instruction_reg[12]~1_combout\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(12));

-- Location: LCCOMB_X24_Y35_N6
\ucode|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux9~0_combout\ = (uPC(1)) # (((uPC(0)) # (instruction_reg(12))) # (!\Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => \Mux0~0_combout\,
	datac => uPC(0),
	datad => instruction_reg(12),
	combout => \ucode|Mux9~0_combout\);

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

-- Location: IOIBUF_X25_Y41_N1
\Data_in[15]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(15),
	o => \Data_in[15]~input_o\);

-- Location: FF_X25_Y35_N11
\instruction_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \Data_in[15]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(15));

-- Location: LCCOMB_X24_Y35_N28
\ucode|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux10~0_combout\ = (!uPC(1) & (!instruction_reg(14) & (instruction_reg(15) & uPC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => instruction_reg(14),
	datac => instruction_reg(15),
	datad => uPC(0),
	combout => \ucode|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y34_N6
\ucode|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux11~0_combout\ = (!instruction_reg(12) & (instruction_reg(13) & \ucode|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datac => instruction_reg(13),
	datad => \ucode|Mux10~0_combout\,
	combout => \ucode|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y34_N16
\Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Z_reg~q\ & (((instruction_reg(13)) # (!\ucode|Mux10~0_combout\)) # (!instruction_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z_reg~q\,
	datab => instruction_reg(12),
	datac => instruction_reg(13),
	datad => \ucode|Mux10~0_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X26_Y34_N0
\ucode|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~3_combout\ = (!instruction_reg(12) & ((instruction_reg(14) & (!instruction_reg(15))) # (!instruction_reg(14) & ((instruction_reg(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datab => instruction_reg(15),
	datac => instruction_reg(13),
	datad => instruction_reg(14),
	combout => \ucode|Mux7~3_combout\);

-- Location: LCCOMB_X26_Y34_N18
\ucode|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~4_combout\ = (uPC(0) & (\ucode|Mux7~3_combout\ & ((!instruction_reg(15)) # (!\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~2_combout\,
	datab => instruction_reg(15),
	datac => uPC(0),
	datad => \ucode|Mux7~3_combout\,
	combout => \ucode|Mux7~4_combout\);

-- Location: LCCOMB_X24_Y36_N10
\dp|rf|register_arr~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~19_combout\ = (\ucode|Mux0~0_combout\ & (instruction_reg(12) & (instruction_reg(14) & !\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux0~0_combout\,
	datab => instruction_reg(12),
	datac => instruction_reg(14),
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr~19_combout\);

-- Location: LCCOMB_X26_Y34_N14
\dp|rf|register_arr~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~46_combout\ = (instruction_reg(13) & ((\Data_in[15]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(8),
	datab => instruction_reg(13),
	datad => \Data_in[15]~input_o\,
	combout => \dp|rf|register_arr~46_combout\);

-- Location: LCCOMB_X26_Y34_N16
\dp|rf|register_arr~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~47_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux0~4_combout\) # ((\dp|rf|register_arr~19_combout\ & \dp|rf|register_arr~46_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~19_combout\ & (\dp|rf|register_arr~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~46_combout\,
	datad => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	combout => \dp|rf|register_arr~47_combout\);

-- Location: IOIBUF_X31_Y41_N1
\Data_in[11]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(11),
	o => \Data_in[11]~input_o\);

-- Location: FF_X24_Y35_N27
\instruction_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[11]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(11));

-- Location: LCCOMB_X25_Y35_N18
\ucode|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux8~0_combout\ = (uPC(0) & (instruction_reg(15) & (!instruction_reg(14) & !uPC(1)))) # (!uPC(0) & (uPC(1) & ((instruction_reg(14)) # (!instruction_reg(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(15),
	datab => instruction_reg(14),
	datac => uPC(0),
	datad => uPC(1),
	combout => \ucode|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y32_N24
\dp|rf|register_arr[1][12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[1][12]~12_combout\ = (!instruction_reg(10) & (!instruction_reg(11) & !\ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(10),
	datab => instruction_reg(11),
	datad => \ucode|Mux8~0_combout\,
	combout => \dp|rf|register_arr[1][12]~12_combout\);

-- Location: IOIBUF_X34_Y41_N1
\Data_in[9]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(9),
	o => \Data_in[9]~input_o\);

-- Location: FF_X24_Y35_N13
\instruction_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[9]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(9));

-- Location: LCCOMB_X24_Y35_N4
\ucode|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux22~0_combout\ = (instruction_reg(13) & (instruction_reg(14) & (instruction_reg(15)))) # (!instruction_reg(13) & (!instruction_reg(12) & (instruction_reg(14) $ (!instruction_reg(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(14),
	datab => instruction_reg(13),
	datac => instruction_reg(15),
	datad => instruction_reg(12),
	combout => \ucode|Mux22~0_combout\);

-- Location: LCCOMB_X25_Y35_N0
\dp|Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector32~0_combout\ = (!uPC(0) & ((instruction_reg(14)) # (!instruction_reg(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => uPC(0),
	datac => instruction_reg(14),
	datad => instruction_reg(15),
	combout => \dp|Selector32~0_combout\);

-- Location: LCCOMB_X24_Y35_N20
\ucode|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux4~2_combout\ = (\dp|Selector32~0_combout\) # ((uPC(0) & (\Mux0~0_combout\ & instruction_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(0),
	datab => \Mux0~0_combout\,
	datac => \dp|Selector32~0_combout\,
	datad => instruction_reg(12),
	combout => \ucode|Mux4~2_combout\);

-- Location: LCCOMB_X24_Y35_N18
\ucode|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux4~3_combout\ = (uPC(1) & (((\ucode|Mux4~2_combout\)))) # (!uPC(1) & (uPC(0) & (!\ucode|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(0),
	datab => \ucode|Mux22~0_combout\,
	datac => uPC(1),
	datad => \ucode|Mux4~2_combout\,
	combout => \ucode|Mux4~3_combout\);

-- Location: LCCOMB_X24_Y35_N12
\dp|rf|register_arr[6][7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][7]~5_combout\ = (!\ucode|Mux8~0_combout\ & (!instruction_reg(9) & \ucode|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(9),
	datad => \ucode|Mux4~3_combout\,
	combout => \dp|rf|register_arr[6][7]~5_combout\);

-- Location: LCCOMB_X24_Y32_N16
\dp|rf|register_arr[0][14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[0][14]~14_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[1][12]~12_combout\ & \dp|rf|register_arr[6][7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|register_arr[1][12]~12_combout\,
	datac => \dp|rf|register_arr[6][7]~5_combout\,
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr[0][14]~14_combout\);

-- Location: FF_X26_Y36_N27
\dp|rf|register_arr[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][15]~q\);

-- Location: LCCOMB_X24_Y35_N8
\dp|rf|register_arr[5][8]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][8]~2_combout\ = (\ucode|Mux4~3_combout\ & ((instruction_reg(9)) # (\ucode|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(9),
	datab => \ucode|Mux8~0_combout\,
	datad => \ucode|Mux4~3_combout\,
	combout => \dp|rf|register_arr[5][8]~2_combout\);

-- Location: LCCOMB_X24_Y32_N30
\dp|rf|register_arr[1][12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[1][12]~13_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[1][12]~12_combout\ & \dp|rf|register_arr[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|register_arr[1][12]~12_combout\,
	datac => \dp|rf|register_arr[5][8]~2_combout\,
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr[1][12]~13_combout\);

-- Location: FF_X26_Y36_N1
\dp|rf|register_arr[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][15]~q\);

-- Location: IOIBUF_X25_Y41_N8
\Data_in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(6),
	o => \Data_in[6]~input_o\);

-- Location: FF_X25_Y35_N9
\instruction_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[6]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(6));

-- Location: LCCOMB_X25_Y35_N24
\Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (!uPC(1) & (!instruction_reg(12) & (uPC(0) & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => instruction_reg(12),
	datac => uPC(0),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X25_Y35_N14
\dp|Selector35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector35~0_combout\ = (\ucode|Mux8~0_combout\) # ((\Mux0~1_combout\ & (instruction_reg(3))) # (!\Mux0~1_combout\ & ((instruction_reg(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(6),
	datad => \Mux0~1_combout\,
	combout => \dp|Selector35~0_combout\);

-- Location: LCCOMB_X26_Y36_N0
\dp|rf|QA[15]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~94_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][15]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][15]~q\,
	datac => \dp|rf|register_arr[1][15]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[15]~94_combout\);

-- Location: LCCOMB_X24_Y32_N18
\dp|rf|register_arr[2][12]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][12]~10_combout\ = (instruction_reg(10) & (!instruction_reg(11) & !\ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(10),
	datab => instruction_reg(11),
	datad => \ucode|Mux8~0_combout\,
	combout => \dp|rf|register_arr[2][12]~10_combout\);

-- Location: LCCOMB_X24_Y32_N0
\dp|rf|register_arr[2][12]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][12]~11_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[2][12]~10_combout\ & \dp|rf|register_arr[6][7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \dp|rf|register_arr[2][12]~10_combout\,
	datad => \dp|rf|register_arr[6][7]~5_combout\,
	combout => \dp|rf|register_arr[2][12]~11_combout\);

-- Location: FF_X26_Y34_N25
\dp|rf|register_arr[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][15]~q\);

-- Location: IOIBUF_X31_Y41_N15
\Data_in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(7),
	o => \Data_in[7]~input_o\);

-- Location: FF_X25_Y35_N5
\instruction_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[7]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(7));

-- Location: LCCOMB_X25_Y35_N4
\dp|Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector34~0_combout\ = (\ucode|Mux8~0_combout\) # ((\Mux0~1_combout\ & (instruction_reg(4))) # (!\Mux0~1_combout\ & ((instruction_reg(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(7),
	datad => \Mux0~1_combout\,
	combout => \dp|Selector34~0_combout\);

-- Location: LCCOMB_X26_Y35_N20
\dp|rf|QA[15]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~95_combout\ = (\dp|rf|QA[15]~94_combout\ & ((\dp|rf|register_arr[3][15]~q\) # ((!\dp|Selector34~0_combout\)))) # (!\dp|rf|QA[15]~94_combout\ & (((\dp|rf|register_arr[2][15]~q\ & \dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][15]~q\,
	datab => \dp|rf|QA[15]~94_combout\,
	datac => \dp|rf|register_arr[2][15]~q\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[15]~95_combout\);

-- Location: IOIBUF_X36_Y41_N8
\Data_in[8]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(8),
	o => \Data_in[8]~input_o\);

-- Location: FF_X25_Y35_N21
\instruction_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[8]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(8));

-- Location: LCCOMB_X25_Y35_N20
\dp|Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector33~0_combout\ = (\ucode|Mux8~0_combout\) # ((\Mux0~1_combout\ & (instruction_reg(5))) # (!\Mux0~1_combout\ & ((instruction_reg(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(5),
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(8),
	datad => \Mux0~1_combout\,
	combout => \dp|Selector33~0_combout\);

-- Location: LCCOMB_X27_Y35_N16
\dp|rf|register_arr[7][15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][15]~feeder_combout\ = \dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~47_combout\,
	combout => \dp|rf|register_arr[7][15]~feeder_combout\);

-- Location: IOIBUF_X25_Y0_N8
\Data_in[10]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(10),
	o => \Data_in[10]~input_o\);

-- Location: FF_X24_Y35_N11
\instruction_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[10]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(10));

-- Location: LCCOMB_X24_Y35_N26
\dp|rf|register_arr[6][7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][7]~7_combout\ = (\ucode|Mux8~0_combout\) # ((instruction_reg(11) & instruction_reg(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(11),
	datad => instruction_reg(10),
	combout => \dp|rf|register_arr[6][7]~7_combout\);

-- Location: LCCOMB_X24_Y35_N24
\dp|rf|register_arr[7][3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][3]~8_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[6][7]~7_combout\ & \dp|rf|register_arr[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|register_arr[6][7]~7_combout\,
	datac => \dp|rf|register_arr[5][8]~2_combout\,
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr[7][3]~8_combout\);

-- Location: FF_X27_Y35_N17
\dp|rf|register_arr[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][15]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][15]~q\);

-- Location: LCCOMB_X26_Y33_N4
\dp|rf|register_arr[4][15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][15]~feeder_combout\ = \dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~47_combout\,
	combout => \dp|rf|register_arr[4][15]~feeder_combout\);

-- Location: LCCOMB_X24_Y32_N6
\dp|rf|register_arr[5][8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][8]~3_combout\ = (!instruction_reg(10) & (instruction_reg(11) & !\ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(10),
	datab => instruction_reg(11),
	datad => \ucode|Mux8~0_combout\,
	combout => \dp|rf|register_arr[5][8]~3_combout\);

-- Location: LCCOMB_X24_Y32_N8
\dp|rf|register_arr[4][11]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][11]~6_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[5][8]~3_combout\ & \dp|rf|register_arr[6][7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \dp|rf|register_arr[5][8]~3_combout\,
	datad => \dp|rf|register_arr[6][7]~5_combout\,
	combout => \dp|rf|register_arr[4][11]~6_combout\);

-- Location: FF_X26_Y33_N5
\dp|rf|register_arr[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][15]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][15]~q\);

-- Location: LCCOMB_X27_Y35_N10
\dp|rf|QA[15]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~92_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][15]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((!\dp|Selector35~0_combout\ & \dp|rf|register_arr[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][15]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|register_arr[4][15]~q\,
	combout => \dp|rf|QA[15]~92_combout\);

-- Location: LCCOMB_X27_Y35_N22
\dp|rf|QA[15]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~93_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[15]~92_combout\ & ((\dp|rf|register_arr[7][15]~q\))) # (!\dp|rf|QA[15]~92_combout\ & (\dp|rf|register_arr[5][15]~q\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[15]~92_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][15]~q\,
	datab => \dp|rf|register_arr[7][15]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[15]~92_combout\,
	combout => \dp|rf|QA[15]~93_combout\);

-- Location: LCCOMB_X26_Y35_N2
\dp|rf|QA[15]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~96_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[15]~93_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[15]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[15]~95_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[15]~93_combout\,
	combout => \dp|rf|QA[15]~96_combout\);

-- Location: LCCOMB_X25_Y35_N10
\dp|Selector32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector32~2_combout\ = (uPC(0) & ((\dp|Selector32~1_combout\) # (instruction_reg(15) $ (instruction_reg(14))))) # (!uPC(0) & (((instruction_reg(15) & !instruction_reg(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~1_combout\,
	datab => uPC(0),
	datac => instruction_reg(15),
	datad => instruction_reg(14),
	combout => \dp|Selector32~2_combout\);

-- Location: LCCOMB_X25_Y35_N16
\dp|Selector32~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector32~3_combout\ = (uPC(1) & ((uPC(0) & ((\Mux0~0_combout\))) # (!uPC(0) & (!\dp|Selector32~2_combout\)))) # (!uPC(1) & (uPC(0) & (\dp|Selector32~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => uPC(0),
	datac => \dp|Selector32~2_combout\,
	datad => \Mux0~0_combout\,
	combout => \dp|Selector32~3_combout\);

-- Location: LCCOMB_X27_Y35_N6
\dp|rf|QA[15]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[15]~97_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[15]~93_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[15]~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[15]~93_combout\,
	datad => \dp|rf|QA[15]~95_combout\,
	combout => \dp|rf|QA[15]~97_combout\);

-- Location: LCCOMB_X26_Y34_N2
\dp|rf|register_arr~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~40_combout\ = (instruction_reg(13) & (\Data_in[12]~input_o\)) # (!instruction_reg(13) & ((instruction_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_in[12]~input_o\,
	datab => instruction_reg(13),
	datad => instruction_reg(8),
	combout => \dp|rf|register_arr~40_combout\);

-- Location: IOIBUF_X52_Y32_N1
\Data_in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(5),
	o => \Data_in[5]~input_o\);

-- Location: FF_X24_Y33_N15
\instruction_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[5]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(5));

-- Location: FF_X26_Y34_N3
\dp|rf|register_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][12]~q\);

-- Location: IOIBUF_X46_Y41_N1
\Data_in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(4),
	o => \Data_in[4]~input_o\);

-- Location: FF_X25_Y35_N7
\instruction_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[4]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(4));

-- Location: FF_X26_Y35_N15
\dp|rf|register_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][12]~q\);

-- Location: IOIBUF_X31_Y41_N8
\Data_in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(3),
	o => \Data_in[3]~input_o\);

-- Location: FF_X25_Y35_N13
\instruction_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[3]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(3));

-- Location: LCCOMB_X26_Y35_N14
\dp|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][12]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][12]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[0][12]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector19~2_combout\);

-- Location: LCCOMB_X27_Y32_N0
\dp|rf|register_arr[3][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][12]~feeder_combout\ = \dp|rf|register_arr~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~41_combout\,
	combout => \dp|rf|register_arr[3][12]~feeder_combout\);

-- Location: LCCOMB_X24_Y32_N14
\dp|rf|register_arr[3][15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][15]~15_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[2][12]~10_combout\ & \dp|rf|register_arr[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|register_arr[2][12]~10_combout\,
	datac => \dp|rf|register_arr[5][8]~2_combout\,
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr[3][15]~15_combout\);

-- Location: FF_X27_Y32_N1
\dp|rf|register_arr[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][12]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][12]~q\);

-- Location: LCCOMB_X27_Y32_N14
\dp|Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~3_combout\ = (instruction_reg(4) & ((\dp|Selector19~2_combout\ & ((\dp|rf|register_arr[3][12]~q\))) # (!\dp|Selector19~2_combout\ & (\dp|rf|register_arr[2][12]~q\)))) # (!instruction_reg(4) & (((\dp|Selector19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[2][12]~q\,
	datac => \dp|Selector19~2_combout\,
	datad => \dp|rf|register_arr[3][12]~q\,
	combout => \dp|Selector19~3_combout\);

-- Location: FF_X25_Y36_N19
\dp|rf|register_arr[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][12]~q\);

-- Location: LCCOMB_X26_Y33_N18
\dp|rf|register_arr[4][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][12]~feeder_combout\ = \dp|rf|register_arr~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~41_combout\,
	combout => \dp|rf|register_arr[4][12]~feeder_combout\);

-- Location: FF_X26_Y33_N19
\dp|rf|register_arr[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][12]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][12]~q\);

-- Location: LCCOMB_X26_Y33_N12
\dp|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][12]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][12]~q\,
	datab => \dp|rf|register_arr[4][12]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector19~0_combout\);

-- Location: LCCOMB_X26_Y34_N4
\dp|Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~1_combout\ = (instruction_reg(3) & ((\dp|Selector19~0_combout\ & ((\dp|rf|register_arr[7][12]~q\))) # (!\dp|Selector19~0_combout\ & (\dp|rf|register_arr[5][12]~q\)))) # (!instruction_reg(3) & (((\dp|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][12]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[7][12]~q\,
	datad => \dp|Selector19~0_combout\,
	combout => \dp|Selector19~1_combout\);

-- Location: LCCOMB_X23_Y32_N6
\dp|Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & ((\dp|Selector19~1_combout\))) # (!instruction_reg(5) & (\dp|Selector19~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector19~3_combout\,
	datad => \dp|Selector19~1_combout\,
	combout => \dp|Selector19~4_combout\);

-- Location: LCCOMB_X23_Y32_N0
\dp|Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector19~5_combout\ = (\dp|Selector19~4_combout\) # ((instruction_reg(8) & \ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(8),
	datac => \ucode|Mux8~0_combout\,
	datad => \dp|Selector19~4_combout\,
	combout => \dp|Selector19~5_combout\);

-- Location: LCCOMB_X26_Y34_N20
\dp|rf|register_arr~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~38_combout\ = (instruction_reg(13) & ((\Data_in[11]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(8),
	datab => instruction_reg(13),
	datad => \Data_in[11]~input_o\,
	combout => \dp|rf|register_arr~38_combout\);

-- Location: LCCOMB_X24_Y36_N8
\dp|rf|register_arr~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~20_combout\ = (!\RESET~input_o\ & (((!instruction_reg(14)) # (!instruction_reg(12))) # (!\ucode|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux0~0_combout\,
	datab => instruction_reg(12),
	datac => instruction_reg(14),
	datad => \RESET~input_o\,
	combout => \dp|rf|register_arr~20_combout\);

-- Location: LCCOMB_X22_Y32_N24
\dp|the_best_alu_in_kista|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux4~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[11]~72_combout\ $ (((\dp|Selector20~5_combout\) # (\ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector20~5_combout\,
	datab => \dp|rf|QA[11]~72_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux4~2_combout\);

-- Location: LCCOMB_X26_Y32_N10
\dp|rf|register_arr~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~34_combout\ = (instruction_reg(13) & (\Data_in[9]~input_o\)) # (!instruction_reg(13) & ((instruction_reg(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => \Data_in[9]~input_o\,
	datad => instruction_reg(8),
	combout => \dp|rf|register_arr~34_combout\);

-- Location: LCCOMB_X27_Y32_N26
\dp|rf|register_arr[3][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][9]~feeder_combout\ = \dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~35_combout\,
	combout => \dp|rf|register_arr[3][9]~feeder_combout\);

-- Location: FF_X27_Y32_N27
\dp|rf|register_arr[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][9]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][9]~q\);

-- Location: FF_X26_Y35_N13
\dp|rf|register_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][9]~q\);

-- Location: LCCOMB_X26_Y35_N12
\dp|rf|QA[9]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~58_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][9]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][9]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][9]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[9]~58_combout\);

-- Location: LCCOMB_X27_Y32_N28
\dp|rf|QA[9]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~59_combout\ = (\dp|rf|QA[9]~58_combout\ & (((\dp|rf|register_arr[3][9]~q\) # (!\dp|Selector34~0_combout\)))) # (!\dp|rf|QA[9]~58_combout\ & (\dp|rf|register_arr[2][9]~q\ & ((\dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][9]~q\,
	datab => \dp|rf|register_arr[3][9]~q\,
	datac => \dp|rf|QA[9]~58_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[9]~59_combout\);

-- Location: LCCOMB_X26_Y32_N0
\dp|rf|QA[9]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~60_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[9]~57_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[9]~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[9]~57_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[9]~59_combout\,
	combout => \dp|rf|QA[9]~60_combout\);

-- Location: LCCOMB_X23_Y32_N2
\dp|the_best_alu_in_kista|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux6~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[9]~60_combout\ $ (((\dp|Selector22~5_combout\) # (\ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector22~5_combout\,
	datab => \dp|rf|QA[9]~60_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y35_N22
\ucode|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux21~0_combout\ = (instruction_reg(15)) # ((!instruction_reg(14) & ((!instruction_reg(12)) # (!instruction_reg(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(15),
	datab => instruction_reg(14),
	datac => instruction_reg(13),
	datad => instruction_reg(12),
	combout => \ucode|Mux21~0_combout\);

-- Location: LCCOMB_X24_Y33_N30
\dp|Selector31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~6_combout\ = (uPC(0) & (!\ucode|Mux21~0_combout\ & (!uPC(1) & !\ucode|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(0),
	datab => \ucode|Mux21~0_combout\,
	datac => uPC(1),
	datad => \ucode|Mux8~0_combout\,
	combout => \dp|Selector31~6_combout\);

-- Location: LCCOMB_X25_Y32_N8
\dp|rf|register_arr[2][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][9]~feeder_combout\ = \dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~35_combout\,
	combout => \dp|rf|register_arr[2][9]~feeder_combout\);

-- Location: FF_X25_Y32_N9
\dp|rf|register_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[2][9]~feeder_combout\,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][9]~q\);

-- Location: FF_X26_Y35_N7
\dp|rf|register_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][9]~q\);

-- Location: LCCOMB_X26_Y35_N6
\dp|Selector22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][9]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][9]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[0][9]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector22~2_combout\);

-- Location: LCCOMB_X25_Y32_N26
\dp|Selector22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~3_combout\ = (instruction_reg(4) & ((\dp|Selector22~2_combout\ & (\dp|rf|register_arr[3][9]~q\)) # (!\dp|Selector22~2_combout\ & ((\dp|rf|register_arr[2][9]~q\))))) # (!instruction_reg(4) & (((\dp|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][9]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][9]~q\,
	datad => \dp|Selector22~2_combout\,
	combout => \dp|Selector22~3_combout\);

-- Location: LCCOMB_X24_Y32_N10
\dp|rf|register_arr[5][8]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][8]~4_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[5][8]~3_combout\ & \dp|rf|register_arr[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \dp|rf|register_arr[5][8]~3_combout\,
	datad => \dp|rf|register_arr[5][8]~2_combout\,
	combout => \dp|rf|register_arr[5][8]~4_combout\);

-- Location: FF_X26_Y32_N13
\dp|rf|register_arr[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr~35_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][9]~q\);

-- Location: LCCOMB_X27_Y32_N20
\dp|rf|register_arr[4][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][9]~feeder_combout\ = \dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~35_combout\,
	combout => \dp|rf|register_arr[4][9]~feeder_combout\);

-- Location: FF_X27_Y32_N21
\dp|rf|register_arr[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][9]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][9]~q\);

-- Location: LCCOMB_X27_Y32_N30
\dp|Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][9]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][9]~q\,
	datab => \dp|rf|register_arr[4][9]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector22~0_combout\);

-- Location: LCCOMB_X28_Y32_N26
\dp|Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~1_combout\ = (instruction_reg(3) & ((\dp|Selector22~0_combout\ & (\dp|rf|register_arr[7][9]~q\)) # (!\dp|Selector22~0_combout\ & ((\dp|rf|register_arr[5][9]~q\))))) # (!instruction_reg(3) & (((\dp|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \dp|rf|register_arr[7][9]~q\,
	datac => \dp|rf|register_arr[5][9]~q\,
	datad => \dp|Selector22~0_combout\,
	combout => \dp|Selector22~1_combout\);

-- Location: LCCOMB_X25_Y32_N16
\dp|Selector22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~4_combout\ = (instruction_reg(5) & ((\dp|Selector22~1_combout\))) # (!instruction_reg(5) & (\dp|Selector22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(5),
	datac => \dp|Selector22~3_combout\,
	datad => \dp|Selector22~1_combout\,
	combout => \dp|Selector22~4_combout\);

-- Location: LCCOMB_X25_Y32_N22
\dp|Selector22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector22~5_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(8)) # ((\dp|Selector31~6_combout\ & \dp|Selector22~4_combout\)))) # (!\ucode|Mux8~0_combout\ & (((\dp|Selector31~6_combout\ & \dp|Selector22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => instruction_reg(8),
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector22~4_combout\,
	combout => \dp|Selector22~5_combout\);

-- Location: LCCOMB_X26_Y32_N26
\dp|rf|register_arr~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~32_combout\ = (instruction_reg(13) & ((\Data_in[8]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(8),
	datad => \Data_in[8]~input_o\,
	combout => \dp|rf|register_arr~32_combout\);

-- Location: LCCOMB_X24_Y36_N0
\dp|rf|register_arr~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~30_combout\ = (instruction_reg(13) & ((\Data_in[7]~input_o\))) # (!instruction_reg(13) & (instruction_reg(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(7),
	datad => \Data_in[7]~input_o\,
	combout => \dp|rf|register_arr~30_combout\);

-- Location: LCCOMB_X23_Y32_N26
\dp|rf|register_arr[2][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][7]~feeder_combout\ = \dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~31_combout\,
	combout => \dp|rf|register_arr[2][7]~feeder_combout\);

-- Location: FF_X23_Y32_N27
\dp|rf|register_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[2][7]~feeder_combout\,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][7]~q\);

-- Location: FF_X24_Y32_N9
\dp|rf|register_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][7]~q\);

-- Location: LCCOMB_X24_Y32_N20
\dp|rf|QA[7]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~46_combout\ = (\dp|Selector35~0_combout\ & (((\dp|rf|register_arr[1][7]~q\) # (\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][7]~q\ & ((!\dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][7]~q\,
	datab => \dp|rf|register_arr[1][7]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[7]~46_combout\);

-- Location: LCCOMB_X23_Y36_N0
\dp|rf|QA[7]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~47_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[7]~46_combout\ & (\dp|rf|register_arr[3][7]~q\)) # (!\dp|rf|QA[7]~46_combout\ & ((\dp|rf|register_arr[2][7]~q\))))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[7]~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][7]~q\,
	datab => \dp|rf|register_arr[2][7]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|rf|QA[7]~46_combout\,
	combout => \dp|rf|QA[7]~47_combout\);

-- Location: LCCOMB_X25_Y32_N28
\dp|rf|register_arr[7][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][7]~feeder_combout\ = \dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~31_combout\,
	combout => \dp|rf|register_arr[7][7]~feeder_combout\);

-- Location: FF_X25_Y32_N29
\dp|rf|register_arr[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][7]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][7]~q\);

-- Location: LCCOMB_X27_Y32_N16
\dp|rf|register_arr[4][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][7]~feeder_combout\ = \dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~31_combout\,
	combout => \dp|rf|register_arr[4][7]~feeder_combout\);

-- Location: FF_X27_Y32_N17
\dp|rf|register_arr[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][7]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][7]~q\);

-- Location: LCCOMB_X26_Y32_N28
\dp|rf|QA[7]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~44_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][7]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[4][7]~q\ & !\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][7]~q\,
	datab => \dp|rf|register_arr[4][7]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[7]~44_combout\);

-- Location: LCCOMB_X25_Y32_N30
\dp|rf|QA[7]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~45_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[7]~44_combout\ & ((\dp|rf|register_arr[7][7]~q\))) # (!\dp|rf|QA[7]~44_combout\ & (\dp|rf|register_arr[5][7]~q\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[7]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][7]~q\,
	datab => \dp|rf|register_arr[7][7]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[7]~44_combout\,
	combout => \dp|rf|QA[7]~45_combout\);

-- Location: LCCOMB_X23_Y36_N20
\dp|rf|QA[7]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~48_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[7]~45_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[7]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|rf|QA[7]~47_combout\,
	datac => \dp|Selector32~3_combout\,
	datad => \dp|rf|QA[7]~45_combout\,
	combout => \dp|rf|QA[7]~48_combout\);

-- Location: LCCOMB_X22_Y36_N16
\dp|rf|QA[7]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[7]~49_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[7]~45_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[7]~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|rf|QA[7]~47_combout\,
	datad => \dp|rf|QA[7]~45_combout\,
	combout => \dp|rf|QA[7]~49_combout\);

-- Location: LCCOMB_X24_Y35_N30
\ucode|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux5~0_combout\ = (instruction_reg(14) & ((uPC(1)) # ((!uPC(0))))) # (!instruction_reg(14) & ((uPC(1) $ (!uPC(0))) # (!instruction_reg(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => instruction_reg(14),
	datac => instruction_reg(15),
	datad => uPC(0),
	combout => \ucode|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y34_N8
\ucode|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux5~1_combout\ = (\ucode|Mux5~0_combout\) # ((!\ucode|Mux23~0_combout\ & (instruction_reg(15) & uPC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux23~0_combout\,
	datab => instruction_reg(15),
	datac => uPC(0),
	datad => \ucode|Mux5~0_combout\,
	combout => \ucode|Mux5~1_combout\);

-- Location: LCCOMB_X24_Y33_N14
\dp|Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~2_combout\ = (\Mux0~2_combout\ & (!\ucode|Mux21~0_combout\ & (!instruction_reg(5) & !\ucode|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~2_combout\,
	datab => \ucode|Mux21~0_combout\,
	datac => instruction_reg(5),
	datad => \ucode|Mux8~0_combout\,
	combout => \dp|Selector31~2_combout\);

-- Location: FF_X24_Y33_N27
\dp|rf|register_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][5]~q\);

-- Location: FF_X26_Y35_N25
\dp|rf|register_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][5]~q\);

-- Location: FF_X26_Y35_N11
\dp|rf|register_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][5]~q\);

-- Location: LCCOMB_X26_Y35_N10
\dp|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~0_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][5]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[1][5]~q\,
	datac => \dp|rf|register_arr[0][5]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector26~0_combout\);

-- Location: LCCOMB_X24_Y33_N26
\dp|Selector26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~1_combout\ = (instruction_reg(4) & ((\dp|Selector26~0_combout\ & (\dp|rf|register_arr[3][5]~q\)) # (!\dp|Selector26~0_combout\ & ((\dp|rf|register_arr[2][5]~q\))))) # (!instruction_reg(4) & (((\dp|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][5]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][5]~q\,
	datad => \dp|Selector26~0_combout\,
	combout => \dp|Selector26~1_combout\);

-- Location: LCCOMB_X24_Y35_N22
\Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (!uPC(1) & uPC(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => uPC(1),
	datad => uPC(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X25_Y34_N28
\dp|rf|register_arr[5][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][5]~feeder_combout\ = \dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~27_combout\,
	combout => \dp|rf|register_arr[5][5]~feeder_combout\);

-- Location: FF_X25_Y34_N29
\dp|rf|register_arr[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][5]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][5]~q\);

-- Location: LCCOMB_X25_Y36_N16
\dp|Selector26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~3_combout\ = (\dp|Selector26~2_combout\ & (((\dp|rf|register_arr[7][5]~q\) # (!instruction_reg(3))))) # (!\dp|Selector26~2_combout\ & (\dp|rf|register_arr[5][5]~q\ & ((instruction_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector26~2_combout\,
	datab => \dp|rf|register_arr[5][5]~q\,
	datac => \dp|rf|register_arr[7][5]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector26~3_combout\);

-- Location: LCCOMB_X24_Y33_N20
\dp|Selector26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~4_combout\ = (\ucode|Mux8~0_combout\) # ((!\ucode|Mux21~0_combout\ & (\Mux0~2_combout\ & \dp|Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => \ucode|Mux21~0_combout\,
	datac => \Mux0~2_combout\,
	datad => \dp|Selector26~3_combout\,
	combout => \dp|Selector26~4_combout\);

-- Location: LCCOMB_X24_Y33_N22
\dp|Selector26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector26~5_combout\ = (instruction_reg(5) & ((\dp|Selector26~4_combout\) # ((\dp|Selector31~2_combout\ & \dp|Selector26~1_combout\)))) # (!instruction_reg(5) & (\dp|Selector31~2_combout\ & (\dp|Selector26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(5),
	datab => \dp|Selector31~2_combout\,
	datac => \dp|Selector26~1_combout\,
	datad => \dp|Selector26~4_combout\,
	combout => \dp|Selector26~5_combout\);

-- Location: FF_X25_Y34_N11
\dp|rf|register_arr[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][5]~q\);

-- Location: LCCOMB_X26_Y35_N24
\dp|rf|QA[5]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~34_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][5]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][5]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][5]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[5]~34_combout\);

-- Location: LCCOMB_X25_Y34_N10
\dp|rf|QA[5]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~35_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[5]~34_combout\ & ((\dp|rf|register_arr[3][5]~q\))) # (!\dp|rf|QA[5]~34_combout\ & (\dp|rf|register_arr[2][5]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[5]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][5]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[3][5]~q\,
	datad => \dp|rf|QA[5]~34_combout\,
	combout => \dp|rf|QA[5]~35_combout\);

-- Location: LCCOMB_X25_Y34_N20
\dp|rf|QA[5]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~36_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[5]~33_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[5]~35_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|Selector32~3_combout\,
	datac => \dp|rf|QA[5]~33_combout\,
	datad => \dp|rf|QA[5]~35_combout\,
	combout => \dp|rf|QA[5]~36_combout\);

-- Location: LCCOMB_X22_Y33_N28
\dp|the_best_alu_in_kista|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~2_combout\ = (\ucode|Mux6~2_combout\ & (!\ucode|Mux5~1_combout\ & ((\ucode|Mux7~5_combout\) # (!\dp|Selector27~5_combout\)))) # (!\ucode|Mux6~2_combout\ & (\ucode|Mux5~1_combout\ & (\dp|Selector27~5_combout\ & 
-- !\ucode|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux5~1_combout\,
	datac => \dp|Selector27~5_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~2_combout\);

-- Location: LCCOMB_X22_Y33_N24
\dp|the_best_alu_in_kista|Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~4_combout\ = (\dp|the_best_alu_in_kista|Mux11~1_combout\) # (\dp|the_best_alu_in_kista|Mux11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux11~1_combout\,
	datab => \dp|the_best_alu_in_kista|Mux11~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~4_combout\);

-- Location: LCCOMB_X22_Y33_N22
\dp|the_best_alu_in_kista|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~1_combout\ = (\dp|Selector27~5_combout\ & (\ucode|Mux6~2_combout\ $ (((\ucode|Mux5~1_combout\ & \ucode|Mux7~5_combout\))))) # (!\dp|Selector27~5_combout\ & ((\ucode|Mux6~2_combout\ & ((!\ucode|Mux7~5_combout\))) # 
-- (!\ucode|Mux6~2_combout\ & (\ucode|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector27~5_combout\,
	datab => \ucode|Mux5~1_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~1_combout\);

-- Location: LCCOMB_X22_Y33_N14
\dp|the_best_alu_in_kista|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~3_combout\ = \ucode|Mux7~5_combout\ $ (((\dp|rf|QA[4]~30_combout\ & (!\dp|the_best_alu_in_kista|Mux11~2_combout\ & \dp|the_best_alu_in_kista|Mux11~1_combout\)) # (!\dp|rf|QA[4]~30_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux11~2_combout\ & !\dp|the_best_alu_in_kista|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[4]~30_combout\,
	datab => \dp|the_best_alu_in_kista|Mux11~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux11~1_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~3_combout\);

-- Location: LCCOMB_X23_Y35_N0
\dp|rf|register_arr~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~22_combout\ = (instruction_reg(13) & ((\Data_in[3]~input_o\))) # (!instruction_reg(13) & (instruction_reg(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(3),
	datad => \Data_in[3]~input_o\,
	combout => \dp|rf|register_arr~22_combout\);

-- Location: LCCOMB_X26_Y32_N8
\dp|rf|register_arr[5][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][3]~feeder_combout\ = \dp|rf|register_arr~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~23_combout\,
	combout => \dp|rf|register_arr[5][3]~feeder_combout\);

-- Location: FF_X26_Y32_N9
\dp|rf|register_arr[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][3]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][3]~q\);

-- Location: LCCOMB_X28_Y35_N20
\dp|rf|register_arr[4][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][3]~feeder_combout\ = \dp|rf|register_arr~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~23_combout\,
	combout => \dp|rf|register_arr[4][3]~feeder_combout\);

-- Location: FF_X28_Y35_N21
\dp|rf|register_arr[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][3]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][3]~q\);

-- Location: LCCOMB_X24_Y35_N10
\dp|rf|register_arr[6][7]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][7]~9_combout\ = (\RESET~input_o\) # ((\dp|rf|register_arr[6][7]~5_combout\ & \dp|rf|register_arr[6][7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][7]~5_combout\,
	datab => \RESET~input_o\,
	datad => \dp|rf|register_arr[6][7]~7_combout\,
	combout => \dp|rf|register_arr[6][7]~9_combout\);

-- Location: FF_X26_Y32_N23
\dp|rf|register_arr[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][3]~q\);

-- Location: LCCOMB_X28_Y35_N18
\dp|Selector28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~3_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][3]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \dp|rf|register_arr[4][3]~q\,
	datac => \dp|rf|register_arr[6][3]~q\,
	datad => instruction_reg(4),
	combout => \dp|Selector28~3_combout\);

-- Location: LCCOMB_X27_Y35_N26
\dp|Selector28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~4_combout\ = (instruction_reg(3) & ((\dp|Selector28~3_combout\ & (\dp|rf|register_arr[7][3]~q\)) # (!\dp|Selector28~3_combout\ & ((\dp|rf|register_arr[5][3]~q\))))) # (!instruction_reg(3) & (((\dp|Selector28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][3]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[5][3]~q\,
	datad => \dp|Selector28~3_combout\,
	combout => \dp|Selector28~4_combout\);

-- Location: FF_X23_Y35_N7
\dp|rf|register_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][3]~q\);

-- Location: FF_X26_Y35_N23
\dp|rf|register_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][3]~q\);

-- Location: LCCOMB_X26_Y35_N22
\dp|Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~0_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][3]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][3]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[0][3]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector28~0_combout\);

-- Location: LCCOMB_X23_Y35_N6
\dp|Selector28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~1_combout\ = (instruction_reg(4) & ((\dp|Selector28~0_combout\ & ((\dp|rf|register_arr[3][3]~q\))) # (!\dp|Selector28~0_combout\ & (\dp|rf|register_arr[2][3]~q\)))) # (!instruction_reg(4) & (((\dp|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][3]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[3][3]~q\,
	datad => \dp|Selector28~0_combout\,
	combout => \dp|Selector28~1_combout\);

-- Location: LCCOMB_X24_Y33_N2
\dp|Selector28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~2_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(3)) # ((\dp|Selector31~2_combout\ & \dp|Selector28~1_combout\)))) # (!\ucode|Mux8~0_combout\ & (((\dp|Selector31~2_combout\ & \dp|Selector28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => instruction_reg(3),
	datac => \dp|Selector31~2_combout\,
	datad => \dp|Selector28~1_combout\,
	combout => \dp|Selector28~2_combout\);

-- Location: LCCOMB_X24_Y33_N4
\dp|Selector28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector28~5_combout\ = (\dp|Selector28~2_combout\) # ((\dp|Selector31~6_combout\ & (instruction_reg(5) & \dp|Selector28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector28~4_combout\,
	datad => \dp|Selector28~2_combout\,
	combout => \dp|Selector28~5_combout\);

-- Location: LCCOMB_X22_Y36_N4
\dp|the_best_alu_in_kista|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux12~0_combout\ = (\ucode|Mux6~2_combout\ & (\dp|rf|QA[3]~24_combout\ & (!\ucode|Mux7~5_combout\))) # (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[3]~24_combout\ $ (((\ucode|Mux7~5_combout\) # (\dp|Selector28~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[3]~24_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|Selector28~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux12~0_combout\);

-- Location: LCCOMB_X27_Y35_N20
\dp|rf|register_arr[7][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][3]~feeder_combout\ = \dp|rf|register_arr~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~23_combout\,
	combout => \dp|rf|register_arr[7][3]~feeder_combout\);

-- Location: FF_X27_Y35_N21
\dp|rf|register_arr[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][3]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][3]~q\);

-- Location: LCCOMB_X26_Y32_N24
\dp|rf|QA[3]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~20_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][3]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[4][3]~q\ & !\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][3]~q\,
	datab => \dp|rf|register_arr[4][3]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[3]~20_combout\);

-- Location: LCCOMB_X26_Y32_N6
\dp|rf|QA[3]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~21_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[3]~20_combout\ & (\dp|rf|register_arr[7][3]~q\)) # (!\dp|rf|QA[3]~20_combout\ & ((\dp|rf|register_arr[5][3]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector35~0_combout\,
	datab => \dp|rf|register_arr[7][3]~q\,
	datac => \dp|rf|register_arr[5][3]~q\,
	datad => \dp|rf|QA[3]~20_combout\,
	combout => \dp|rf|QA[3]~21_combout\);

-- Location: LCCOMB_X26_Y35_N30
\dp|rf|QA[3]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~25_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[3]~21_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[3]~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|QA[3]~23_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[3]~21_combout\,
	combout => \dp|rf|QA[3]~25_combout\);

-- Location: IOIBUF_X29_Y41_N1
\Data_in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(2),
	o => \Data_in[2]~input_o\);

-- Location: FF_X24_Y33_N11
\instruction_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[2]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(2));

-- Location: LCCOMB_X26_Y36_N8
\dp|rf|register_arr~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~18_combout\ = (instruction_reg(13) & (\Data_in[2]~input_o\)) # (!instruction_reg(13) & ((instruction_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_in[2]~input_o\,
	datab => instruction_reg(2),
	datad => instruction_reg(13),
	combout => \dp|rf|register_arr~18_combout\);

-- Location: FF_X25_Y36_N13
\dp|rf|register_arr[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][2]~q\);

-- Location: FF_X25_Y34_N13
\dp|rf|register_arr[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][2]~q\);

-- Location: FF_X24_Y36_N25
\dp|rf|register_arr[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][2]~q\);

-- Location: FF_X25_Y36_N7
\dp|rf|register_arr[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][2]~q\);

-- Location: LCCOMB_X25_Y36_N6
\dp|rf|QA[2]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~14_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[6][2]~q\) # (\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][2]~q\ & ((!\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[4][2]~q\,
	datac => \dp|rf|register_arr[6][2]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[2]~14_combout\);

-- Location: LCCOMB_X25_Y34_N12
\dp|rf|QA[2]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~15_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[2]~14_combout\ & (\dp|rf|register_arr[7][2]~q\)) # (!\dp|rf|QA[2]~14_combout\ & ((\dp|rf|register_arr[5][2]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[2]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector35~0_combout\,
	datab => \dp|rf|register_arr[7][2]~q\,
	datac => \dp|rf|register_arr[5][2]~q\,
	datad => \dp|rf|QA[2]~14_combout\,
	combout => \dp|rf|QA[2]~15_combout\);

-- Location: LCCOMB_X24_Y34_N14
\dp|rf|QA[2]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~18_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[2]~15_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[2]~17_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[2]~15_combout\,
	datad => \dp|rf|QA[2]~17_combout\,
	combout => \dp|rf|QA[2]~18_combout\);

-- Location: LCCOMB_X24_Y36_N24
\ucode|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux0~1_combout\ = (\ucode|Mux0~0_combout\ & (instruction_reg(12) & instruction_reg(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux0~0_combout\,
	datab => instruction_reg(12),
	datad => instruction_reg(14),
	combout => \ucode|Mux0~1_combout\);

-- Location: IOIBUF_X38_Y41_N1
\Data_in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(1),
	o => \Data_in[1]~input_o\);

-- Location: FF_X24_Y33_N13
\instruction_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[1]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(1));

-- Location: LCCOMB_X24_Y36_N12
\dp|rf|register_arr~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~16_combout\ = (instruction_reg(13) & ((\Data_in[1]~input_o\))) # (!instruction_reg(13) & (instruction_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(1),
	datad => \Data_in[1]~input_o\,
	combout => \dp|rf|register_arr~16_combout\);

-- Location: FF_X25_Y34_N1
\dp|rf|register_arr[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][1]~q\);

-- Location: FF_X25_Y36_N3
\dp|rf|register_arr[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][1]~q\);

-- Location: LCCOMB_X24_Y36_N18
\dp|rf|QA[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~8_combout\ = (\dp|Selector35~0_combout\ & (((\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & ((\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][1]~q\))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][1]~q\,
	datab => \dp|rf|register_arr[6][1]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[1]~8_combout\);

-- Location: LCCOMB_X25_Y34_N0
\dp|rf|QA[1]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~9_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[1]~8_combout\ & (\dp|rf|register_arr[7][1]~q\)) # (!\dp|rf|QA[1]~8_combout\ & ((\dp|rf|register_arr[5][1]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][1]~q\,
	datab => \dp|Selector35~0_combout\,
	datac => \dp|rf|register_arr[5][1]~q\,
	datad => \dp|rf|QA[1]~8_combout\,
	combout => \dp|rf|QA[1]~9_combout\);

-- Location: LCCOMB_X25_Y34_N8
\dp|rf|QA[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~13_combout\ = (\dp|Selector33~0_combout\ & ((\dp|rf|QA[1]~9_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[1]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|QA[1]~11_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[1]~9_combout\,
	combout => \dp|rf|QA[1]~13_combout\);

-- Location: LCCOMB_X21_Y34_N2
\dp|the_best_alu_in_kista|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~2_combout\ = (\dp|the_best_alu_in_kista|Add2~1\ & (((!\dp|rf|QA[1]~13_combout\)) # (!\dp|Selector32~3_combout\))) # (!\dp|the_best_alu_in_kista|Add2~1\ & (((\dp|Selector32~3_combout\ & \dp|rf|QA[1]~13_combout\)) # (GND)))
-- \dp|the_best_alu_in_kista|Add2~3\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~1\) # (!\dp|rf|QA[1]~13_combout\)) # (!\dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[1]~13_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~1\,
	combout => \dp|the_best_alu_in_kista|Add2~2_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~3\);

-- Location: LCCOMB_X25_Y33_N2
\dp|the_best_alu_in_kista|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux14~0_combout\ = (\ucode|Mux6~2_combout\ & (((\dp|rf|QA[1]~12_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[1]~12_combout\ $ (((\dp|Selector30~5_combout\) # (\ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector30~5_combout\,
	datab => \dp|rf|QA[1]~12_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux14~0_combout\);

-- Location: LCCOMB_X25_Y33_N16
\dp|the_best_alu_in_kista|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux14~1_combout\ = (\dp|the_best_alu_in_kista|Mux14~0_combout\) # ((\ucode|Mux7~5_combout\ & (\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Add2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add2~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux14~0_combout\,
	combout => \dp|the_best_alu_in_kista|Mux14~1_combout\);

-- Location: LCCOMB_X25_Y36_N2
\dp|Selector30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~3_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][1]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][1]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[6][1]~q\,
	datad => instruction_reg(4),
	combout => \dp|Selector30~3_combout\);

-- Location: FF_X25_Y36_N29
\dp|rf|register_arr[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][1]~q\);

-- Location: LCCOMB_X25_Y36_N28
\dp|Selector30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~4_combout\ = (\dp|Selector30~3_combout\ & (((\dp|rf|register_arr[7][1]~q\) # (!instruction_reg(3))))) # (!\dp|Selector30~3_combout\ & (\dp|rf|register_arr[5][1]~q\ & ((instruction_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][1]~q\,
	datab => \dp|Selector30~3_combout\,
	datac => \dp|rf|register_arr[7][1]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector30~4_combout\);

-- Location: FF_X24_Y33_N19
\dp|rf|register_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][1]~q\);

-- Location: FF_X26_Y35_N27
\dp|rf|register_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][1]~q\);

-- Location: LCCOMB_X26_Y35_N26
\dp|Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~0_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][1]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][1]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[0][1]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector30~0_combout\);

-- Location: LCCOMB_X24_Y33_N18
\dp|Selector30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~1_combout\ = (instruction_reg(4) & ((\dp|Selector30~0_combout\ & (\dp|rf|register_arr[3][1]~q\)) # (!\dp|Selector30~0_combout\ & ((\dp|rf|register_arr[2][1]~q\))))) # (!instruction_reg(4) & (((\dp|Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][1]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][1]~q\,
	datad => \dp|Selector30~0_combout\,
	combout => \dp|Selector30~1_combout\);

-- Location: LCCOMB_X24_Y33_N12
\dp|Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~2_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(1)) # ((\dp|Selector31~2_combout\ & \dp|Selector30~1_combout\)))) # (!\ucode|Mux8~0_combout\ & (\dp|Selector31~2_combout\ & ((\dp|Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => \dp|Selector31~2_combout\,
	datac => instruction_reg(1),
	datad => \dp|Selector30~1_combout\,
	combout => \dp|Selector30~2_combout\);

-- Location: LCCOMB_X24_Y33_N6
\dp|Selector30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector30~5_combout\ = (\dp|Selector30~2_combout\) # ((instruction_reg(5) & (\dp|Selector30~4_combout\ & \dp|Selector31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(5),
	datab => \dp|Selector30~4_combout\,
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector30~2_combout\,
	combout => \dp|Selector30~5_combout\);

-- Location: IOIBUF_X52_Y32_N22
\Data_in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_in(0),
	o => \Data_in[0]~input_o\);

-- Location: FF_X24_Y33_N1
\instruction_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Data_in[0]~input_o\,
	sload => VCC,
	ena => \instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => instruction_reg(0));

-- Location: LCCOMB_X24_Y32_N28
\dp|rf|register_arr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~0_combout\ = (instruction_reg(13) & (\Data_in[0]~input_o\)) # (!instruction_reg(13) & ((instruction_reg(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Data_in[0]~input_o\,
	datac => instruction_reg(0),
	datad => instruction_reg(13),
	combout => \dp|rf|register_arr~0_combout\);

-- Location: LCCOMB_X24_Y32_N26
\dp|rf|register_arr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~1_combout\ = (!\RESET~input_o\ & ((\ucode|Mux0~1_combout\ & (\dp|rf|register_arr~0_combout\)) # (!\ucode|Mux0~1_combout\ & ((\dp|the_best_alu_in_kista|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \dp|rf|register_arr~0_combout\,
	datac => \ucode|Mux0~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux15~4_combout\,
	combout => \dp|rf|register_arr~1_combout\);

-- Location: FF_X24_Y33_N17
\dp|rf|register_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][0]~q\);

-- Location: FF_X24_Y34_N5
\dp|rf|register_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][0]~q\);

-- Location: LCCOMB_X24_Y34_N4
\dp|rf|QA[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~5_combout\ = (\dp|rf|QA[0]~4_combout\ & (((\dp|rf|register_arr[3][0]~q\) # (!\dp|Selector34~0_combout\)))) # (!\dp|rf|QA[0]~4_combout\ & (\dp|rf|register_arr[2][0]~q\ & ((\dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~4_combout\,
	datab => \dp|rf|register_arr[2][0]~q\,
	datac => \dp|rf|register_arr[3][0]~q\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[0]~5_combout\);

-- Location: FF_X24_Y34_N11
\dp|rf|register_arr[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][0]~q\);

-- Location: FF_X25_Y36_N9
\dp|rf|register_arr[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][0]~q\);

-- Location: LCCOMB_X25_Y36_N4
\dp|rf|QA[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~0_combout\ = (\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[7][0]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[6][0]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][0]~q\,
	datab => \dp|rf|register_arr[7][0]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[0]~0_combout\);

-- Location: LCCOMB_X24_Y34_N10
\dp|rf|QA[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~1_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|QA[0]~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|rf|QA[0]~0_combout\ & ((\dp|rf|register_arr[5][0]~q\))) # (!\dp|rf|QA[0]~0_combout\ & (\dp|rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][0]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[5][0]~q\,
	datad => \dp|rf|QA[0]~0_combout\,
	combout => \dp|rf|QA[0]~1_combout\);

-- Location: LCCOMB_X24_Y34_N2
\dp|rf|QA[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[0]~6_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[0]~1_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[0]~5_combout\,
	datad => \dp|rf|QA[0]~1_combout\,
	combout => \dp|rf|QA[0]~6_combout\);

-- Location: LCCOMB_X23_Y34_N2
\dp|the_best_alu_in_kista|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~2_combout\ = (\dp|rf|QA[1]~12_combout\ & ((\dp|Selector30~5_combout\ & (\dp|the_best_alu_in_kista|Add0~1\ & VCC)) # (!\dp|Selector30~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~1\)))) # (!\dp|rf|QA[1]~12_combout\ & 
-- ((\dp|Selector30~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~1\)) # (!\dp|Selector30~5_combout\ & ((\dp|the_best_alu_in_kista|Add0~1\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~3\ = CARRY((\dp|rf|QA[1]~12_combout\ & (!\dp|Selector30~5_combout\ & !\dp|the_best_alu_in_kista|Add0~1\)) # (!\dp|rf|QA[1]~12_combout\ & ((!\dp|the_best_alu_in_kista|Add0~1\) # (!\dp|Selector30~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[1]~12_combout\,
	datab => \dp|Selector30~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~1\,
	combout => \dp|the_best_alu_in_kista|Add0~2_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~3\);

-- Location: LCCOMB_X25_Y33_N6
\dp|the_best_alu_in_kista|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux14~2_combout\ = (\ucode|Mux6~2_combout\ & (((\ucode|Mux7~5_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add1~2_combout\)) # (!\ucode|Mux7~5_combout\ & 
-- ((\dp|the_best_alu_in_kista|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add1~2_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~2_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux14~2_combout\);

-- Location: LCCOMB_X25_Y33_N24
\dp|the_best_alu_in_kista|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux14~3_combout\ = (\dp|Selector30~5_combout\ & ((\dp|the_best_alu_in_kista|Mux14~2_combout\) # ((\dp|rf|QA[1]~12_combout\ & \ucode|Mux6~2_combout\)))) # (!\dp|Selector30~5_combout\ & (\dp|the_best_alu_in_kista|Mux14~2_combout\ & 
-- ((\dp|rf|QA[1]~12_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector30~5_combout\,
	datab => \dp|rf|QA[1]~12_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux14~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux14~3_combout\);

-- Location: LCCOMB_X25_Y33_N18
\dp|the_best_alu_in_kista|Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux14~4_combout\ = (\ucode|Mux5~1_combout\ & (\dp|the_best_alu_in_kista|Mux14~1_combout\)) # (!\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \dp|the_best_alu_in_kista|Mux14~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux14~3_combout\,
	combout => \dp|the_best_alu_in_kista|Mux14~4_combout\);

-- Location: LCCOMB_X24_Y36_N28
\dp|rf|register_arr~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~17_combout\ = (!\RESET~input_o\ & ((\ucode|Mux0~1_combout\ & (\dp|rf|register_arr~16_combout\)) # (!\ucode|Mux0~1_combout\ & ((\dp|the_best_alu_in_kista|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \ucode|Mux0~1_combout\,
	datac => \dp|rf|register_arr~16_combout\,
	datad => \dp|the_best_alu_in_kista|Mux14~4_combout\,
	combout => \dp|rf|register_arr~17_combout\);

-- Location: FF_X25_Y34_N25
\dp|rf|register_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][1]~q\);

-- Location: FF_X26_Y35_N9
\dp|rf|register_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~17_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][1]~q\);

-- Location: LCCOMB_X26_Y35_N8
\dp|rf|QA[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~10_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][1]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][1]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][1]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[1]~10_combout\);

-- Location: LCCOMB_X25_Y34_N24
\dp|rf|QA[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~11_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[1]~10_combout\ & ((\dp|rf|register_arr[3][1]~q\))) # (!\dp|rf|QA[1]~10_combout\ & (\dp|rf|register_arr[2][1]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[1]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][1]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[3][1]~q\,
	datad => \dp|rf|QA[1]~10_combout\,
	combout => \dp|rf|QA[1]~11_combout\);

-- Location: LCCOMB_X25_Y34_N2
\dp|rf|QA[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[1]~12_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[1]~9_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[1]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|rf|QA[1]~11_combout\,
	datac => \dp|Selector32~3_combout\,
	datad => \dp|rf|QA[1]~9_combout\,
	combout => \dp|rf|QA[1]~12_combout\);

-- Location: LCCOMB_X25_Y36_N26
\dp|rf|register_arr[6][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][0]~feeder_combout\ = \dp|rf|register_arr~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~1_combout\,
	combout => \dp|rf|register_arr[6][0]~feeder_combout\);

-- Location: FF_X25_Y36_N27
\dp|rf|register_arr[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][0]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][0]~q\);

-- Location: LCCOMB_X24_Y36_N22
\dp|Selector31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~4_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][0]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][0]~q\,
	datab => \dp|rf|register_arr[6][0]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector31~4_combout\);

-- Location: LCCOMB_X25_Y36_N8
\dp|Selector31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~5_combout\ = (instruction_reg(3) & ((\dp|Selector31~4_combout\ & ((\dp|rf|register_arr[7][0]~q\))) # (!\dp|Selector31~4_combout\ & (\dp|rf|register_arr[5][0]~q\)))) # (!instruction_reg(3) & (((\dp|Selector31~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][0]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[7][0]~q\,
	datad => \dp|Selector31~4_combout\,
	combout => \dp|Selector31~5_combout\);

-- Location: FF_X24_Y32_N11
\dp|rf|register_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][0]~q\);

-- Location: FF_X24_Y32_N5
\dp|rf|register_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][0]~q\);

-- Location: LCCOMB_X25_Y35_N12
\dp|Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~0_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & ((\dp|rf|register_arr[1][0]~q\))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[0][0]~q\,
	datac => instruction_reg(3),
	datad => \dp|rf|register_arr[1][0]~q\,
	combout => \dp|Selector31~0_combout\);

-- Location: LCCOMB_X24_Y33_N16
\dp|Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~1_combout\ = (instruction_reg(4) & ((\dp|Selector31~0_combout\ & (\dp|rf|register_arr[3][0]~q\)) # (!\dp|Selector31~0_combout\ & ((\dp|rf|register_arr[2][0]~q\))))) # (!instruction_reg(4) & (((\dp|Selector31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][0]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][0]~q\,
	datad => \dp|Selector31~0_combout\,
	combout => \dp|Selector31~1_combout\);

-- Location: LCCOMB_X24_Y33_N0
\dp|Selector31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~3_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(0)) # ((\dp|Selector31~2_combout\ & \dp|Selector31~1_combout\)))) # (!\ucode|Mux8~0_combout\ & (\dp|Selector31~2_combout\ & ((\dp|Selector31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => \dp|Selector31~2_combout\,
	datac => instruction_reg(0),
	datad => \dp|Selector31~1_combout\,
	combout => \dp|Selector31~3_combout\);

-- Location: LCCOMB_X24_Y33_N28
\dp|Selector31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector31~7_combout\ = (\dp|Selector31~3_combout\) # ((\dp|Selector31~6_combout\ & (instruction_reg(5) & \dp|Selector31~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector31~5_combout\,
	datad => \dp|Selector31~3_combout\,
	combout => \dp|Selector31~7_combout\);

-- Location: LCCOMB_X23_Y33_N0
\dp|the_best_alu_in_kista|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~0_combout\ = (\dp|rf|QA[0]~6_combout\ & ((GND) # (!\dp|Selector31~7_combout\))) # (!\dp|rf|QA[0]~6_combout\ & (\dp|Selector31~7_combout\ $ (GND)))
-- \dp|the_best_alu_in_kista|Add1~1\ = CARRY((\dp|rf|QA[0]~6_combout\) # (!\dp|Selector31~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~6_combout\,
	datab => \dp|Selector31~7_combout\,
	datad => VCC,
	combout => \dp|the_best_alu_in_kista|Add1~0_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~1\);

-- Location: LCCOMB_X23_Y33_N4
\dp|the_best_alu_in_kista|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~4_combout\ = ((\dp|Selector29~5_combout\ $ (\dp|rf|QA[2]~18_combout\ $ (\dp|the_best_alu_in_kista|Add1~3\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~5\ = CARRY((\dp|Selector29~5_combout\ & (\dp|rf|QA[2]~18_combout\ & !\dp|the_best_alu_in_kista|Add1~3\)) # (!\dp|Selector29~5_combout\ & ((\dp|rf|QA[2]~18_combout\) # (!\dp|the_best_alu_in_kista|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector29~5_combout\,
	datab => \dp|rf|QA[2]~18_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~3\,
	combout => \dp|the_best_alu_in_kista|Add1~4_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~5\);

-- Location: LCCOMB_X22_Y36_N8
\dp|the_best_alu_in_kista|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux13~2_combout\ = (\ucode|Mux6~2_combout\ & (((\ucode|Mux7~5_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~4_combout\))) # (!\ucode|Mux7~5_combout\ & 
-- (\dp|the_best_alu_in_kista|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add0~4_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~4_combout\,
	combout => \dp|the_best_alu_in_kista|Mux13~2_combout\);

-- Location: LCCOMB_X22_Y36_N14
\dp|the_best_alu_in_kista|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux13~3_combout\ = (\dp|Selector29~5_combout\ & ((\dp|the_best_alu_in_kista|Mux13~2_combout\) # ((\ucode|Mux6~2_combout\ & \dp|rf|QA[2]~18_combout\)))) # (!\dp|Selector29~5_combout\ & (\dp|the_best_alu_in_kista|Mux13~2_combout\ & 
-- ((\dp|rf|QA[2]~18_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector29~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux13~2_combout\,
	datad => \dp|rf|QA[2]~18_combout\,
	combout => \dp|the_best_alu_in_kista|Mux13~3_combout\);

-- Location: LCCOMB_X24_Y36_N2
\dp|Selector29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~3_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][2]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][2]~q\,
	datab => \dp|rf|register_arr[4][2]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector29~3_combout\);

-- Location: LCCOMB_X25_Y36_N12
\dp|Selector29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~4_combout\ = (instruction_reg(3) & ((\dp|Selector29~3_combout\ & ((\dp|rf|register_arr[7][2]~q\))) # (!\dp|Selector29~3_combout\ & (\dp|rf|register_arr[5][2]~q\)))) # (!instruction_reg(3) & (((\dp|Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \dp|rf|register_arr[5][2]~q\,
	datac => \dp|rf|register_arr[7][2]~q\,
	datad => \dp|Selector29~3_combout\,
	combout => \dp|Selector29~4_combout\);

-- Location: FF_X24_Y33_N25
\dp|rf|register_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][2]~q\);

-- Location: FF_X26_Y36_N19
\dp|rf|register_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr~21_combout\,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][2]~q\);

-- Location: FF_X26_Y36_N5
\dp|rf|register_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][2]~q\);

-- Location: LCCOMB_X26_Y36_N4
\dp|Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~0_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & ((\dp|rf|register_arr[1][2]~q\))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[0][2]~q\,
	datac => \dp|rf|register_arr[1][2]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector29~0_combout\);

-- Location: LCCOMB_X24_Y33_N24
\dp|Selector29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~1_combout\ = (instruction_reg(4) & ((\dp|Selector29~0_combout\ & (\dp|rf|register_arr[3][2]~q\)) # (!\dp|Selector29~0_combout\ & ((\dp|rf|register_arr[2][2]~q\))))) # (!instruction_reg(4) & (((\dp|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][2]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][2]~q\,
	datad => \dp|Selector29~0_combout\,
	combout => \dp|Selector29~1_combout\);

-- Location: LCCOMB_X24_Y33_N10
\dp|Selector29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~2_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(2)) # ((\dp|Selector31~2_combout\ & \dp|Selector29~1_combout\)))) # (!\ucode|Mux8~0_combout\ & (\dp|Selector31~2_combout\ & ((\dp|Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => \dp|Selector31~2_combout\,
	datac => instruction_reg(2),
	datad => \dp|Selector29~1_combout\,
	combout => \dp|Selector29~2_combout\);

-- Location: LCCOMB_X24_Y33_N8
\dp|Selector29~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector29~5_combout\ = (\dp|Selector29~2_combout\) # ((\dp|Selector31~6_combout\ & (instruction_reg(5) & \dp|Selector29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector29~4_combout\,
	datad => \dp|Selector29~2_combout\,
	combout => \dp|Selector29~5_combout\);

-- Location: LCCOMB_X23_Y36_N14
\dp|the_best_alu_in_kista|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux13~0_combout\ = (\ucode|Mux6~2_combout\ & (((\dp|rf|QA[2]~18_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[2]~18_combout\ $ (((\dp|Selector29~5_combout\) # (\ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|Selector29~5_combout\,
	datac => \dp|rf|QA[2]~18_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux13~0_combout\);

-- Location: LCCOMB_X21_Y34_N4
\dp|the_best_alu_in_kista|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~4_combout\ = (\dp|the_best_alu_in_kista|Add2~3\ & (\dp|Selector32~3_combout\ & (\dp|rf|QA[2]~19_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~3\ & ((((\dp|Selector32~3_combout\ & \dp|rf|QA[2]~19_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~5\ = CARRY((\dp|Selector32~3_combout\ & (\dp|rf|QA[2]~19_combout\ & !\dp|the_best_alu_in_kista|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[2]~19_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~3\,
	combout => \dp|the_best_alu_in_kista|Add2~4_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~5\);

-- Location: LCCOMB_X22_Y36_N30
\dp|the_best_alu_in_kista|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux13~1_combout\ = (\dp|the_best_alu_in_kista|Mux13~0_combout\) # ((\ucode|Mux7~5_combout\ & (\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux13~0_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~4_combout\,
	combout => \dp|the_best_alu_in_kista|Mux13~1_combout\);

-- Location: LCCOMB_X22_Y36_N24
\dp|the_best_alu_in_kista|Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux13~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux13~1_combout\))) # (!\ucode|Mux5~1_combout\ & (\dp|the_best_alu_in_kista|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux5~1_combout\,
	datac => \dp|the_best_alu_in_kista|Mux13~3_combout\,
	datad => \dp|the_best_alu_in_kista|Mux13~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux13~4_combout\);

-- Location: LCCOMB_X26_Y36_N18
\dp|rf|register_arr~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~21_combout\ = (\dp|rf|register_arr~19_combout\ & ((\dp|rf|register_arr~18_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux13~4_combout\)))) # (!\dp|rf|register_arr~19_combout\ & 
-- (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~19_combout\,
	datab => \dp|rf|register_arr~20_combout\,
	datac => \dp|rf|register_arr~18_combout\,
	datad => \dp|the_best_alu_in_kista|Mux13~4_combout\,
	combout => \dp|rf|register_arr~21_combout\);

-- Location: FF_X25_Y34_N19
\dp|rf|register_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][2]~q\);

-- Location: LCCOMB_X26_Y36_N28
\dp|rf|QA[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~16_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & (\dp|rf|register_arr[1][2]~q\)) # (!\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][2]~q\,
	datab => \dp|rf|register_arr[0][2]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[2]~16_combout\);

-- Location: LCCOMB_X25_Y34_N18
\dp|rf|QA[2]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~17_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[2]~16_combout\ & ((\dp|rf|register_arr[3][2]~q\))) # (!\dp|rf|QA[2]~16_combout\ & (\dp|rf|register_arr[2][2]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[2]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][2]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[3][2]~q\,
	datad => \dp|rf|QA[2]~16_combout\,
	combout => \dp|rf|QA[2]~17_combout\);

-- Location: LCCOMB_X25_Y34_N4
\dp|rf|QA[2]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[2]~19_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[2]~15_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[2]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[2]~15_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[2]~17_combout\,
	combout => \dp|rf|QA[2]~19_combout\);

-- Location: LCCOMB_X21_Y34_N6
\dp|the_best_alu_in_kista|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~6_combout\ = (\dp|the_best_alu_in_kista|Add2~5\ & (((!\dp|rf|QA[3]~25_combout\)) # (!\dp|Selector32~3_combout\))) # (!\dp|the_best_alu_in_kista|Add2~5\ & (((\dp|Selector32~3_combout\ & \dp|rf|QA[3]~25_combout\)) # (GND)))
-- \dp|the_best_alu_in_kista|Add2~7\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~5\) # (!\dp|rf|QA[3]~25_combout\)) # (!\dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[3]~25_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~5\,
	combout => \dp|the_best_alu_in_kista|Add2~6_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~7\);

-- Location: LCCOMB_X22_Y36_N26
\dp|the_best_alu_in_kista|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux12~1_combout\ = (\dp|the_best_alu_in_kista|Mux12~0_combout\) # ((\ucode|Mux7~5_combout\ & (\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Add2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux12~0_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~6_combout\,
	combout => \dp|the_best_alu_in_kista|Mux12~1_combout\);

-- Location: LCCOMB_X23_Y33_N6
\dp|the_best_alu_in_kista|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~6_combout\ = (\dp|Selector28~5_combout\ & ((\dp|rf|QA[3]~24_combout\ & (!\dp|the_best_alu_in_kista|Add1~5\)) # (!\dp|rf|QA[3]~24_combout\ & ((\dp|the_best_alu_in_kista|Add1~5\) # (GND))))) # (!\dp|Selector28~5_combout\ & 
-- ((\dp|rf|QA[3]~24_combout\ & (\dp|the_best_alu_in_kista|Add1~5\ & VCC)) # (!\dp|rf|QA[3]~24_combout\ & (!\dp|the_best_alu_in_kista|Add1~5\))))
-- \dp|the_best_alu_in_kista|Add1~7\ = CARRY((\dp|Selector28~5_combout\ & ((!\dp|the_best_alu_in_kista|Add1~5\) # (!\dp|rf|QA[3]~24_combout\))) # (!\dp|Selector28~5_combout\ & (!\dp|rf|QA[3]~24_combout\ & !\dp|the_best_alu_in_kista|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector28~5_combout\,
	datab => \dp|rf|QA[3]~24_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~5\,
	combout => \dp|the_best_alu_in_kista|Add1~6_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~7\);

-- Location: LCCOMB_X23_Y34_N6
\dp|the_best_alu_in_kista|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~6_combout\ = (\dp|Selector28~5_combout\ & ((\dp|rf|QA[3]~24_combout\ & (\dp|the_best_alu_in_kista|Add0~5\ & VCC)) # (!\dp|rf|QA[3]~24_combout\ & (!\dp|the_best_alu_in_kista|Add0~5\)))) # (!\dp|Selector28~5_combout\ & 
-- ((\dp|rf|QA[3]~24_combout\ & (!\dp|the_best_alu_in_kista|Add0~5\)) # (!\dp|rf|QA[3]~24_combout\ & ((\dp|the_best_alu_in_kista|Add0~5\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~7\ = CARRY((\dp|Selector28~5_combout\ & (!\dp|rf|QA[3]~24_combout\ & !\dp|the_best_alu_in_kista|Add0~5\)) # (!\dp|Selector28~5_combout\ & ((!\dp|the_best_alu_in_kista|Add0~5\) # (!\dp|rf|QA[3]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector28~5_combout\,
	datab => \dp|rf|QA[3]~24_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~5\,
	combout => \dp|the_best_alu_in_kista|Add0~6_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~7\);

-- Location: LCCOMB_X22_Y36_N20
\dp|the_best_alu_in_kista|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux12~2_combout\ = (\ucode|Mux7~5_combout\ & ((\ucode|Mux6~2_combout\) # ((\dp|the_best_alu_in_kista|Add1~6_combout\)))) # (!\ucode|Mux7~5_combout\ & (!\ucode|Mux6~2_combout\ & ((\dp|the_best_alu_in_kista|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add1~6_combout\,
	datad => \dp|the_best_alu_in_kista|Add0~6_combout\,
	combout => \dp|the_best_alu_in_kista|Mux12~2_combout\);

-- Location: LCCOMB_X22_Y36_N22
\dp|the_best_alu_in_kista|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux12~3_combout\ = (\dp|Selector28~5_combout\ & ((\dp|the_best_alu_in_kista|Mux12~2_combout\) # ((\ucode|Mux6~2_combout\ & \dp|rf|QA[3]~24_combout\)))) # (!\dp|Selector28~5_combout\ & (\dp|the_best_alu_in_kista|Mux12~2_combout\ & 
-- ((\dp|rf|QA[3]~24_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector28~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|rf|QA[3]~24_combout\,
	datad => \dp|the_best_alu_in_kista|Mux12~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux12~3_combout\);

-- Location: LCCOMB_X22_Y36_N6
\dp|the_best_alu_in_kista|Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux12~4_combout\ = (\ucode|Mux5~1_combout\ & (\dp|the_best_alu_in_kista|Mux12~1_combout\)) # (!\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux5~1_combout\,
	datac => \dp|the_best_alu_in_kista|Mux12~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux12~3_combout\,
	combout => \dp|the_best_alu_in_kista|Mux12~4_combout\);

-- Location: LCCOMB_X23_Y35_N18
\dp|rf|register_arr~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~23_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux12~4_combout\) # ((\dp|rf|register_arr~22_combout\ & \dp|rf|register_arr~19_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~22_combout\ & (\dp|rf|register_arr~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~22_combout\,
	datac => \dp|rf|register_arr~19_combout\,
	datad => \dp|the_best_alu_in_kista|Mux12~4_combout\,
	combout => \dp|rf|register_arr~23_combout\);

-- Location: FF_X26_Y35_N5
\dp|rf|register_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][3]~q\);

-- Location: LCCOMB_X26_Y35_N4
\dp|rf|QA[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~22_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][3]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][3]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][3]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[3]~22_combout\);

-- Location: LCCOMB_X26_Y35_N0
\dp|rf|QA[3]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~23_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[3]~22_combout\ & ((\dp|rf|register_arr[3][3]~q\))) # (!\dp|rf|QA[3]~22_combout\ & (\dp|rf|register_arr[2][3]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[3]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][3]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|QA[3]~22_combout\,
	datad => \dp|rf|register_arr[3][3]~q\,
	combout => \dp|rf|QA[3]~23_combout\);

-- Location: LCCOMB_X25_Y35_N30
\dp|rf|QA[3]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[3]~24_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[3]~21_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[3]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[3]~23_combout\,
	datad => \dp|rf|QA[3]~21_combout\,
	combout => \dp|rf|QA[3]~24_combout\);

-- Location: LCCOMB_X23_Y34_N8
\dp|the_best_alu_in_kista|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~8_combout\ = ((\dp|rf|QA[4]~30_combout\ $ (\dp|Selector27~5_combout\ $ (!\dp|the_best_alu_in_kista|Add0~7\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~9\ = CARRY((\dp|rf|QA[4]~30_combout\ & ((\dp|Selector27~5_combout\) # (!\dp|the_best_alu_in_kista|Add0~7\))) # (!\dp|rf|QA[4]~30_combout\ & (\dp|Selector27~5_combout\ & !\dp|the_best_alu_in_kista|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[4]~30_combout\,
	datab => \dp|Selector27~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~7\,
	combout => \dp|the_best_alu_in_kista|Add0~8_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~9\);

-- Location: LCCOMB_X22_Y33_N16
\dp|the_best_alu_in_kista|Mux11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux11~5_combout\ = (\dp|the_best_alu_in_kista|Mux11~4_combout\ & (((\dp|the_best_alu_in_kista|Mux11~3_combout\)))) # (!\dp|the_best_alu_in_kista|Mux11~4_combout\ & ((\dp|the_best_alu_in_kista|Mux11~3_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux11~0_combout\)) # (!\dp|the_best_alu_in_kista|Mux11~3_combout\ & ((\dp|the_best_alu_in_kista|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux11~0_combout\,
	datab => \dp|the_best_alu_in_kista|Mux11~4_combout\,
	datac => \dp|the_best_alu_in_kista|Mux11~3_combout\,
	datad => \dp|the_best_alu_in_kista|Add0~8_combout\,
	combout => \dp|the_best_alu_in_kista|Mux11~5_combout\);

-- Location: LCCOMB_X21_Y35_N16
\dp|rf|register_arr~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~25_combout\ = (\dp|rf|register_arr~24_combout\ & ((\dp|rf|register_arr~19_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux11~5_combout\)))) # (!\dp|rf|register_arr~24_combout\ & 
-- (((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~24_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~20_combout\,
	datad => \dp|the_best_alu_in_kista|Mux11~5_combout\,
	combout => \dp|rf|register_arr~25_combout\);

-- Location: LCCOMB_X21_Y33_N16
\dp|rf|register_arr[5][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][4]~feeder_combout\ = \dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~25_combout\,
	combout => \dp|rf|register_arr[5][4]~feeder_combout\);

-- Location: FF_X21_Y33_N17
\dp|rf|register_arr[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][4]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][4]~q\);

-- Location: LCCOMB_X21_Y35_N20
\dp|rf|register_arr[6][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][4]~feeder_combout\ = \dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~25_combout\,
	combout => \dp|rf|register_arr[6][4]~feeder_combout\);

-- Location: FF_X21_Y35_N21
\dp|rf|register_arr[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][4]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][4]~q\);

-- Location: LCCOMB_X21_Y33_N28
\dp|Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][4]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][4]~q\,
	datab => \dp|rf|register_arr[6][4]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector27~0_combout\);

-- Location: LCCOMB_X21_Y33_N6
\dp|Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~1_combout\ = (instruction_reg(3) & ((\dp|Selector27~0_combout\ & (\dp|rf|register_arr[7][4]~q\)) # (!\dp|Selector27~0_combout\ & ((\dp|rf|register_arr[5][4]~q\))))) # (!instruction_reg(3) & (((\dp|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][4]~q\,
	datab => \dp|rf|register_arr[5][4]~q\,
	datac => instruction_reg(3),
	datad => \dp|Selector27~0_combout\,
	combout => \dp|Selector27~1_combout\);

-- Location: FF_X23_Y35_N9
\dp|rf|register_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][4]~q\);

-- Location: FF_X23_Y35_N3
\dp|rf|register_arr[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][4]~q\);

-- Location: LCCOMB_X23_Y35_N8
\dp|Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~3_combout\ = (\dp|Selector27~2_combout\ & (((\dp|rf|register_arr[3][4]~q\)) # (!instruction_reg(4)))) # (!\dp|Selector27~2_combout\ & (instruction_reg(4) & (\dp|rf|register_arr[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector27~2_combout\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][4]~q\,
	datad => \dp|rf|register_arr[3][4]~q\,
	combout => \dp|Selector27~3_combout\);

-- Location: LCCOMB_X22_Y33_N20
\dp|Selector27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~4_combout\ = (instruction_reg(5) & (\dp|Selector27~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(5),
	datac => \dp|Selector27~1_combout\,
	datad => \dp|Selector27~3_combout\,
	combout => \dp|Selector27~4_combout\);

-- Location: LCCOMB_X22_Y33_N10
\dp|Selector27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector27~5_combout\ = (instruction_reg(4) & ((\ucode|Mux8~0_combout\) # ((\dp|Selector31~6_combout\ & \dp|Selector27~4_combout\)))) # (!instruction_reg(4) & (((\dp|Selector31~6_combout\ & \dp|Selector27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \ucode|Mux8~0_combout\,
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector27~4_combout\,
	combout => \dp|Selector27~5_combout\);

-- Location: LCCOMB_X23_Y34_N10
\dp|the_best_alu_in_kista|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~10_combout\ = (\dp|rf|QA[5]~36_combout\ & ((\dp|Selector26~5_combout\ & (\dp|the_best_alu_in_kista|Add0~9\ & VCC)) # (!\dp|Selector26~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~9\)))) # (!\dp|rf|QA[5]~36_combout\ & 
-- ((\dp|Selector26~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~9\)) # (!\dp|Selector26~5_combout\ & ((\dp|the_best_alu_in_kista|Add0~9\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~11\ = CARRY((\dp|rf|QA[5]~36_combout\ & (!\dp|Selector26~5_combout\ & !\dp|the_best_alu_in_kista|Add0~9\)) # (!\dp|rf|QA[5]~36_combout\ & ((!\dp|the_best_alu_in_kista|Add0~9\) # (!\dp|Selector26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[5]~36_combout\,
	datab => \dp|Selector26~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~9\,
	combout => \dp|the_best_alu_in_kista|Add0~10_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~11\);

-- Location: LCCOMB_X21_Y35_N28
\dp|rf|register_arr[7][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][4]~feeder_combout\ = \dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~25_combout\,
	combout => \dp|rf|register_arr[7][4]~feeder_combout\);

-- Location: FF_X21_Y35_N29
\dp|rf|register_arr[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][4]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][4]~q\);

-- Location: LCCOMB_X21_Y33_N10
\dp|rf|register_arr[4][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][4]~feeder_combout\ = \dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~25_combout\,
	combout => \dp|rf|register_arr[4][4]~feeder_combout\);

-- Location: FF_X21_Y33_N11
\dp|rf|register_arr[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][4]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][4]~q\);

-- Location: LCCOMB_X21_Y35_N18
\dp|rf|QA[4]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~26_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][4]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[4][4]~q\ & !\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[6][4]~q\,
	datac => \dp|rf|register_arr[4][4]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[4]~26_combout\);

-- Location: LCCOMB_X21_Y35_N6
\dp|rf|QA[4]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~27_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[4]~26_combout\ & ((\dp|rf|register_arr[7][4]~q\))) # (!\dp|rf|QA[4]~26_combout\ & (\dp|rf|register_arr[5][4]~q\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[4]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][4]~q\,
	datab => \dp|Selector35~0_combout\,
	datac => \dp|rf|register_arr[7][4]~q\,
	datad => \dp|rf|QA[4]~26_combout\,
	combout => \dp|rf|QA[4]~27_combout\);

-- Location: FF_X26_Y35_N17
\dp|rf|register_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][4]~q\);

-- Location: LCCOMB_X26_Y35_N16
\dp|rf|QA[4]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~28_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][4]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][4]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][4]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[4]~28_combout\);

-- Location: LCCOMB_X23_Y35_N2
\dp|rf|QA[4]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~29_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[4]~28_combout\ & ((\dp|rf|register_arr[3][4]~q\))) # (!\dp|rf|QA[4]~28_combout\ & (\dp|rf|register_arr[2][4]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[4]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][4]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[3][4]~q\,
	datad => \dp|rf|QA[4]~28_combout\,
	combout => \dp|rf|QA[4]~29_combout\);

-- Location: LCCOMB_X22_Y35_N2
\dp|rf|QA[4]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[4]~30_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[4]~27_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[4]~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|Selector32~3_combout\,
	datac => \dp|rf|QA[4]~27_combout\,
	datad => \dp|rf|QA[4]~29_combout\,
	combout => \dp|rf|QA[4]~30_combout\);

-- Location: LCCOMB_X23_Y33_N10
\dp|the_best_alu_in_kista|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~10_combout\ = (\dp|rf|QA[5]~36_combout\ & ((\dp|Selector26~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~9\)) # (!\dp|Selector26~5_combout\ & (\dp|the_best_alu_in_kista|Add1~9\ & VCC)))) # (!\dp|rf|QA[5]~36_combout\ & 
-- ((\dp|Selector26~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~9\) # (GND))) # (!\dp|Selector26~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~9\))))
-- \dp|the_best_alu_in_kista|Add1~11\ = CARRY((\dp|rf|QA[5]~36_combout\ & (\dp|Selector26~5_combout\ & !\dp|the_best_alu_in_kista|Add1~9\)) # (!\dp|rf|QA[5]~36_combout\ & ((\dp|Selector26~5_combout\) # (!\dp|the_best_alu_in_kista|Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[5]~36_combout\,
	datab => \dp|Selector26~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~9\,
	combout => \dp|the_best_alu_in_kista|Add1~10_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~11\);

-- Location: LCCOMB_X22_Y33_N6
\dp|the_best_alu_in_kista|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux10~2_combout\ = (\ucode|Mux6~2_combout\ & (\ucode|Mux7~5_combout\)) # (!\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~10_combout\))) # (!\ucode|Mux7~5_combout\ & 
-- (\dp|the_best_alu_in_kista|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~10_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~10_combout\,
	combout => \dp|the_best_alu_in_kista|Mux10~2_combout\);

-- Location: LCCOMB_X22_Y33_N4
\dp|the_best_alu_in_kista|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux10~3_combout\ = (\ucode|Mux6~2_combout\ & ((\dp|Selector26~5_combout\ & ((\dp|rf|QA[5]~36_combout\) # (\dp|the_best_alu_in_kista|Mux10~2_combout\))) # (!\dp|Selector26~5_combout\ & (\dp|rf|QA[5]~36_combout\ & 
-- \dp|the_best_alu_in_kista|Mux10~2_combout\)))) # (!\ucode|Mux6~2_combout\ & (((\dp|the_best_alu_in_kista|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|Selector26~5_combout\,
	datac => \dp|rf|QA[5]~36_combout\,
	datad => \dp|the_best_alu_in_kista|Mux10~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux10~3_combout\);

-- Location: LCCOMB_X22_Y33_N30
\dp|the_best_alu_in_kista|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux10~0_combout\ = (\ucode|Mux6~2_combout\ & (\dp|rf|QA[5]~36_combout\ & ((!\ucode|Mux7~5_combout\)))) # (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[5]~36_combout\ $ (((\dp|Selector26~5_combout\) # (\ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[5]~36_combout\,
	datac => \dp|Selector26~5_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux10~0_combout\);

-- Location: LCCOMB_X21_Y34_N10
\dp|the_best_alu_in_kista|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~10_combout\ = (\dp|the_best_alu_in_kista|Add2~9\ & (((!\dp|rf|QA[5]~37_combout\)) # (!\dp|Selector32~3_combout\))) # (!\dp|the_best_alu_in_kista|Add2~9\ & (((\dp|Selector32~3_combout\ & \dp|rf|QA[5]~37_combout\)) # (GND)))
-- \dp|the_best_alu_in_kista|Add2~11\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~9\) # (!\dp|rf|QA[5]~37_combout\)) # (!\dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[5]~37_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~9\,
	combout => \dp|the_best_alu_in_kista|Add2~10_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~11\);

-- Location: LCCOMB_X22_Y33_N8
\dp|the_best_alu_in_kista|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux10~1_combout\ = (\dp|the_best_alu_in_kista|Mux10~0_combout\) # ((\ucode|Mux6~2_combout\ & (\ucode|Mux7~5_combout\ & \dp|the_best_alu_in_kista|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Mux10~0_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~10_combout\,
	combout => \dp|the_best_alu_in_kista|Mux10~1_combout\);

-- Location: LCCOMB_X22_Y33_N26
\dp|the_best_alu_in_kista|Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux10~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux10~1_combout\))) # (!\ucode|Mux5~1_combout\ & (\dp|the_best_alu_in_kista|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux5~1_combout\,
	datac => \dp|the_best_alu_in_kista|Mux10~3_combout\,
	datad => \dp|the_best_alu_in_kista|Mux10~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux10~4_combout\);

-- Location: LCCOMB_X22_Y33_N2
\dp|rf|register_arr~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~27_combout\ = (\dp|rf|register_arr~26_combout\ & ((\dp|rf|register_arr~19_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux10~4_combout\)))) # (!\dp|rf|register_arr~26_combout\ & 
-- (\dp|rf|register_arr~20_combout\ & (\dp|the_best_alu_in_kista|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~26_combout\,
	datab => \dp|rf|register_arr~20_combout\,
	datac => \dp|the_best_alu_in_kista|Mux10~4_combout\,
	datad => \dp|rf|register_arr~19_combout\,
	combout => \dp|rf|register_arr~27_combout\);

-- Location: FF_X25_Y36_N17
\dp|rf|register_arr[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][5]~q\);

-- Location: FF_X25_Y36_N31
\dp|rf|register_arr[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][5]~q\);

-- Location: LCCOMB_X25_Y35_N2
\dp|rf|QA[5]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~32_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[6][5]~q\) # (\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][5]~q\ & ((!\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][5]~q\,
	datab => \dp|rf|register_arr[6][5]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[5]~32_combout\);

-- Location: LCCOMB_X25_Y34_N22
\dp|rf|QA[5]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~33_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[5]~32_combout\ & (\dp|rf|register_arr[7][5]~q\)) # (!\dp|rf|QA[5]~32_combout\ & ((\dp|rf|register_arr[5][5]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[5]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector35~0_combout\,
	datab => \dp|rf|register_arr[7][5]~q\,
	datac => \dp|rf|register_arr[5][5]~q\,
	datad => \dp|rf|QA[5]~32_combout\,
	combout => \dp|rf|QA[5]~33_combout\);

-- Location: LCCOMB_X25_Y34_N14
\dp|rf|QA[5]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[5]~37_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[5]~33_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[5]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[5]~33_combout\,
	datad => \dp|rf|QA[5]~35_combout\,
	combout => \dp|rf|QA[5]~37_combout\);

-- Location: LCCOMB_X21_Y34_N14
\dp|the_best_alu_in_kista|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~14_combout\ = (\dp|the_best_alu_in_kista|Add2~13\ & (((!\dp|rf|QA[7]~49_combout\)) # (!\dp|Selector32~3_combout\))) # (!\dp|the_best_alu_in_kista|Add2~13\ & (((\dp|Selector32~3_combout\ & \dp|rf|QA[7]~49_combout\)) # (GND)))
-- \dp|the_best_alu_in_kista|Add2~15\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~13\) # (!\dp|rf|QA[7]~49_combout\)) # (!\dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[7]~49_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~13\,
	combout => \dp|the_best_alu_in_kista|Add2~14_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~15\);

-- Location: LCCOMB_X23_Y36_N4
\dp|the_best_alu_in_kista|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux8~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~14_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[7]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[7]~48_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~14_combout\,
	combout => \dp|the_best_alu_in_kista|Mux8~3_combout\);

-- Location: LCCOMB_X24_Y34_N8
\dp|the_best_alu_in_kista|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~1_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux6~2_combout\) # ((!\dp|Selector25~5_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ $ (((\dp|Selector25~5_combout\ & 
-- \ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector25~5_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~1_combout\);

-- Location: LCCOMB_X24_Y34_N6
\dp|the_best_alu_in_kista|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~2_combout\ = (\dp|Selector25~5_combout\ & ((\ucode|Mux7~5_combout\) # ((\ucode|Mux5~1_combout\ & !\ucode|Mux6~2_combout\)))) # (!\dp|Selector25~5_combout\ & (\ucode|Mux7~5_combout\ & ((\ucode|Mux5~1_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector25~5_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y34_N24
\dp|the_best_alu_in_kista|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~3_combout\ = (\ucode|Mux6~2_combout\ & (!\dp|the_best_alu_in_kista|Mux9~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux9~1_combout\) # (!\dp|rf|QA[6]~42_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\dp|rf|QA[6]~42_combout\ & 
-- ((\dp|the_best_alu_in_kista|Mux9~2_combout\))) # (!\dp|rf|QA[6]~42_combout\ & (\dp|the_best_alu_in_kista|Mux9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[6]~42_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux9~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux9~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~3_combout\);

-- Location: FF_X24_Y32_N1
\dp|rf|register_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][6]~q\);

-- Location: LCCOMB_X24_Y32_N22
\dp|Selector25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~2_combout\ = (instruction_reg(3) & (((\dp|rf|register_arr[1][6]~q\) # (instruction_reg(4))))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][6]~q\ & ((!instruction_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][6]~q\,
	datab => \dp|rf|register_arr[1][6]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector25~2_combout\);

-- Location: LCCOMB_X25_Y32_N14
\dp|Selector25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~3_combout\ = (\dp|Selector25~2_combout\ & ((\dp|rf|register_arr[3][6]~q\) # ((!instruction_reg(4))))) # (!\dp|Selector25~2_combout\ & (((\dp|rf|register_arr[2][6]~q\ & instruction_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][6]~q\,
	datab => \dp|Selector25~2_combout\,
	datac => \dp|rf|register_arr[2][6]~q\,
	datad => instruction_reg(4),
	combout => \dp|Selector25~3_combout\);

-- Location: FF_X25_Y32_N13
\dp|rf|register_arr[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][6]~q\);

-- Location: LCCOMB_X21_Y35_N0
\dp|rf|register_arr[6][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][6]~feeder_combout\ = \dp|rf|register_arr~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~29_combout\,
	combout => \dp|rf|register_arr[6][6]~feeder_combout\);

-- Location: FF_X21_Y35_N1
\dp|rf|register_arr[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][6]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][6]~q\);

-- Location: LCCOMB_X24_Y36_N4
\dp|Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][6]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][6]~q\,
	datab => instruction_reg(3),
	datac => instruction_reg(4),
	datad => \dp|rf|register_arr[6][6]~q\,
	combout => \dp|Selector25~0_combout\);

-- Location: LCCOMB_X25_Y32_N12
\dp|Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~1_combout\ = (instruction_reg(3) & ((\dp|Selector25~0_combout\ & ((\dp|rf|register_arr[7][6]~q\))) # (!\dp|Selector25~0_combout\ & (\dp|rf|register_arr[5][6]~q\)))) # (!instruction_reg(3) & (((\dp|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][6]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[7][6]~q\,
	datad => \dp|Selector25~0_combout\,
	combout => \dp|Selector25~1_combout\);

-- Location: LCCOMB_X25_Y32_N20
\dp|Selector25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~4_combout\ = (instruction_reg(5) & ((\dp|Selector25~1_combout\))) # (!instruction_reg(5) & (\dp|Selector25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(5),
	datac => \dp|Selector25~3_combout\,
	datad => \dp|Selector25~1_combout\,
	combout => \dp|Selector25~4_combout\);

-- Location: LCCOMB_X25_Y32_N2
\dp|Selector25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector25~5_combout\ = (instruction_reg(6) & ((\ucode|Mux8~0_combout\) # ((\dp|Selector31~6_combout\ & \dp|Selector25~4_combout\)))) # (!instruction_reg(6) & (((\dp|Selector31~6_combout\ & \dp|Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(6),
	datab => \ucode|Mux8~0_combout\,
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector25~4_combout\,
	combout => \dp|Selector25~5_combout\);

-- Location: LCCOMB_X23_Y33_N12
\dp|the_best_alu_in_kista|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~12_combout\ = ((\dp|rf|QA[6]~42_combout\ $ (\dp|Selector25~5_combout\ $ (\dp|the_best_alu_in_kista|Add1~11\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~13\ = CARRY((\dp|rf|QA[6]~42_combout\ & ((!\dp|the_best_alu_in_kista|Add1~11\) # (!\dp|Selector25~5_combout\))) # (!\dp|rf|QA[6]~42_combout\ & (!\dp|Selector25~5_combout\ & !\dp|the_best_alu_in_kista|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[6]~42_combout\,
	datab => \dp|Selector25~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~11\,
	combout => \dp|the_best_alu_in_kista|Add1~12_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~13\);

-- Location: LCCOMB_X24_Y34_N30
\dp|the_best_alu_in_kista|Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~4_combout\ = (\dp|rf|QA[6]~42_combout\ & (\dp|the_best_alu_in_kista|Mux9~1_combout\ $ (((\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Mux9~2_combout\))))) # (!\dp|rf|QA[6]~42_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux9~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux9~1_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[6]~42_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux9~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux9~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~4_combout\);

-- Location: LCCOMB_X22_Y35_N18
\dp|the_best_alu_in_kista|Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux9~5_combout\ = (\dp|the_best_alu_in_kista|Mux9~3_combout\ & (((\dp|the_best_alu_in_kista|Add1~12_combout\ & \dp|the_best_alu_in_kista|Mux9~4_combout\)))) # (!\dp|the_best_alu_in_kista|Mux9~3_combout\ & 
-- ((\dp|the_best_alu_in_kista|Mux9~0_combout\) # ((\dp|the_best_alu_in_kista|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux9~0_combout\,
	datab => \dp|the_best_alu_in_kista|Mux9~3_combout\,
	datac => \dp|the_best_alu_in_kista|Add1~12_combout\,
	datad => \dp|the_best_alu_in_kista|Mux9~4_combout\,
	combout => \dp|the_best_alu_in_kista|Mux9~5_combout\);

-- Location: LCCOMB_X21_Y35_N2
\dp|rf|register_arr~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~29_combout\ = (\dp|rf|register_arr~28_combout\ & ((\dp|rf|register_arr~19_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux9~5_combout\)))) # (!\dp|rf|register_arr~28_combout\ & 
-- (((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~28_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~20_combout\,
	datad => \dp|the_best_alu_in_kista|Mux9~5_combout\,
	combout => \dp|rf|register_arr~29_combout\);

-- Location: FF_X25_Y32_N15
\dp|rf|register_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][6]~q\);

-- Location: FF_X24_Y32_N19
\dp|rf|register_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][6]~q\);

-- Location: LCCOMB_X24_Y32_N12
\dp|rf|QA[6]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~40_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][6]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][6]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|register_arr[1][6]~q\,
	combout => \dp|rf|QA[6]~40_combout\);

-- Location: LCCOMB_X22_Y32_N22
\dp|rf|QA[6]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~41_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[6]~40_combout\ & (\dp|rf|register_arr[3][6]~q\)) # (!\dp|rf|QA[6]~40_combout\ & ((\dp|rf|register_arr[2][6]~q\))))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[6]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][6]~q\,
	datab => \dp|rf|register_arr[2][6]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|rf|QA[6]~40_combout\,
	combout => \dp|rf|QA[6]~41_combout\);

-- Location: LCCOMB_X22_Y32_N4
\dp|rf|register_arr[5][6]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][6]~feeder_combout\ = \dp|rf|register_arr~29_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~29_combout\,
	combout => \dp|rf|register_arr[5][6]~feeder_combout\);

-- Location: FF_X22_Y32_N5
\dp|rf|register_arr[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][6]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][6]~q\);

-- Location: LCCOMB_X24_Y36_N30
\dp|rf|QA[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~38_combout\ = (\dp|Selector35~0_combout\ & (((\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & ((\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][6]~q\))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][6]~q\,
	datab => \dp|rf|register_arr[6][6]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[6]~38_combout\);

-- Location: LCCOMB_X22_Y32_N2
\dp|rf|QA[6]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~39_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[6]~38_combout\ & (\dp|rf|register_arr[7][6]~q\)) # (!\dp|rf|QA[6]~38_combout\ & ((\dp|rf|register_arr[5][6]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[6]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][6]~q\,
	datab => \dp|rf|register_arr[5][6]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[6]~38_combout\,
	combout => \dp|rf|QA[6]~39_combout\);

-- Location: LCCOMB_X22_Y32_N0
\dp|rf|QA[6]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[6]~42_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[6]~39_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[6]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|Selector32~3_combout\,
	datac => \dp|rf|QA[6]~41_combout\,
	datad => \dp|rf|QA[6]~39_combout\,
	combout => \dp|rf|QA[6]~42_combout\);

-- Location: LCCOMB_X23_Y34_N14
\dp|the_best_alu_in_kista|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~14_combout\ = (\dp|Selector24~5_combout\ & ((\dp|rf|QA[7]~48_combout\ & (\dp|the_best_alu_in_kista|Add0~13\ & VCC)) # (!\dp|rf|QA[7]~48_combout\ & (!\dp|the_best_alu_in_kista|Add0~13\)))) # (!\dp|Selector24~5_combout\ & 
-- ((\dp|rf|QA[7]~48_combout\ & (!\dp|the_best_alu_in_kista|Add0~13\)) # (!\dp|rf|QA[7]~48_combout\ & ((\dp|the_best_alu_in_kista|Add0~13\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~15\ = CARRY((\dp|Selector24~5_combout\ & (!\dp|rf|QA[7]~48_combout\ & !\dp|the_best_alu_in_kista|Add0~13\)) # (!\dp|Selector24~5_combout\ & ((!\dp|the_best_alu_in_kista|Add0~13\) # (!\dp|rf|QA[7]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector24~5_combout\,
	datab => \dp|rf|QA[7]~48_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~13\,
	combout => \dp|the_best_alu_in_kista|Add0~14_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~15\);

-- Location: LCCOMB_X23_Y33_N14
\dp|the_best_alu_in_kista|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~14_combout\ = (\dp|rf|QA[7]~48_combout\ & ((\dp|Selector24~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~13\)) # (!\dp|Selector24~5_combout\ & (\dp|the_best_alu_in_kista|Add1~13\ & VCC)))) # (!\dp|rf|QA[7]~48_combout\ & 
-- ((\dp|Selector24~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~13\) # (GND))) # (!\dp|Selector24~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~13\))))
-- \dp|the_best_alu_in_kista|Add1~15\ = CARRY((\dp|rf|QA[7]~48_combout\ & (\dp|Selector24~5_combout\ & !\dp|the_best_alu_in_kista|Add1~13\)) # (!\dp|rf|QA[7]~48_combout\ & ((\dp|Selector24~5_combout\) # (!\dp|the_best_alu_in_kista|Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[7]~48_combout\,
	datab => \dp|Selector24~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~13\,
	combout => \dp|the_best_alu_in_kista|Add1~14_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~15\);

-- Location: LCCOMB_X23_Y36_N26
\dp|the_best_alu_in_kista|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux8~0_combout\ = (\ucode|Mux6~2_combout\ & (\ucode|Mux7~5_combout\)) # (!\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~14_combout\))) # (!\ucode|Mux7~5_combout\ & 
-- (\dp|the_best_alu_in_kista|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~14_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~14_combout\,
	combout => \dp|the_best_alu_in_kista|Mux8~0_combout\);

-- Location: LCCOMB_X23_Y36_N6
\dp|the_best_alu_in_kista|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux8~1_combout\ = (\ucode|Mux6~2_combout\ & ((\dp|Selector24~5_combout\ & ((\dp|the_best_alu_in_kista|Mux8~0_combout\) # (\dp|rf|QA[7]~48_combout\))) # (!\dp|Selector24~5_combout\ & (\dp|the_best_alu_in_kista|Mux8~0_combout\ & 
-- \dp|rf|QA[7]~48_combout\)))) # (!\ucode|Mux6~2_combout\ & (((\dp|the_best_alu_in_kista|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|Selector24~5_combout\,
	datac => \dp|the_best_alu_in_kista|Mux8~0_combout\,
	datad => \dp|rf|QA[7]~48_combout\,
	combout => \dp|the_best_alu_in_kista|Mux8~1_combout\);

-- Location: LCCOMB_X23_Y36_N28
\dp|the_best_alu_in_kista|Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux8~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux8~2_combout\) # ((\dp|the_best_alu_in_kista|Mux8~3_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux8~2_combout\,
	datab => \dp|the_best_alu_in_kista|Mux8~3_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux8~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux8~4_combout\);

-- Location: LCCOMB_X23_Y36_N8
\dp|rf|register_arr~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~31_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux8~4_combout\) # ((\dp|rf|register_arr~19_combout\ & \dp|rf|register_arr~30_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~19_combout\ & (\dp|rf|register_arr~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~30_combout\,
	datad => \dp|the_best_alu_in_kista|Mux8~4_combout\,
	combout => \dp|rf|register_arr~31_combout\);

-- Location: LCCOMB_X23_Y36_N10
\dp|rf|register_arr[3][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][7]~feeder_combout\ = \dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~31_combout\,
	combout => \dp|rf|register_arr[3][7]~feeder_combout\);

-- Location: FF_X23_Y36_N11
\dp|rf|register_arr[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][7]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][7]~q\);

-- Location: LCCOMB_X24_Y32_N2
\dp|Selector24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~2_combout\ = (instruction_reg(3) & (((\dp|rf|register_arr[1][7]~q\) # (instruction_reg(4))))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][7]~q\ & ((!instruction_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][7]~q\,
	datab => \dp|rf|register_arr[1][7]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector24~2_combout\);

-- Location: LCCOMB_X23_Y32_N20
\dp|Selector24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~3_combout\ = (instruction_reg(4) & ((\dp|Selector24~2_combout\ & ((\dp|rf|register_arr[3][7]~q\))) # (!\dp|Selector24~2_combout\ & (\dp|rf|register_arr[2][7]~q\)))) # (!instruction_reg(4) & (((\dp|Selector24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][7]~q\,
	datab => \dp|rf|register_arr[3][7]~q\,
	datac => instruction_reg(4),
	datad => \dp|Selector24~2_combout\,
	combout => \dp|Selector24~3_combout\);

-- Location: FF_X26_Y32_N21
\dp|rf|register_arr[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][7]~q\);

-- Location: LCCOMB_X27_Y32_N6
\dp|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][7]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][7]~q\,
	datab => \dp|rf|register_arr[4][7]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector24~0_combout\);

-- Location: LCCOMB_X26_Y32_N20
\dp|Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~1_combout\ = (instruction_reg(3) & ((\dp|Selector24~0_combout\ & (\dp|rf|register_arr[7][7]~q\)) # (!\dp|Selector24~0_combout\ & ((\dp|rf|register_arr[5][7]~q\))))) # (!instruction_reg(3) & (((\dp|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][7]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[5][7]~q\,
	datad => \dp|Selector24~0_combout\,
	combout => \dp|Selector24~1_combout\);

-- Location: LCCOMB_X23_Y36_N12
\dp|Selector24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~4_combout\ = (instruction_reg(5) & ((\dp|Selector24~1_combout\))) # (!instruction_reg(5) & (\dp|Selector24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(5),
	datab => \dp|Selector24~3_combout\,
	datad => \dp|Selector24~1_combout\,
	combout => \dp|Selector24~4_combout\);

-- Location: LCCOMB_X23_Y36_N18
\dp|Selector24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector24~5_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(7)) # ((\dp|Selector31~6_combout\ & \dp|Selector24~4_combout\)))) # (!\ucode|Mux8~0_combout\ & (((\dp|Selector31~6_combout\ & \dp|Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => instruction_reg(7),
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector24~4_combout\,
	combout => \dp|Selector24~5_combout\);

-- Location: LCCOMB_X23_Y33_N16
\dp|the_best_alu_in_kista|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~16_combout\ = ((\dp|rf|QA[8]~54_combout\ $ (\dp|Selector23~5_combout\ $ (\dp|the_best_alu_in_kista|Add1~15\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~17\ = CARRY((\dp|rf|QA[8]~54_combout\ & ((!\dp|the_best_alu_in_kista|Add1~15\) # (!\dp|Selector23~5_combout\))) # (!\dp|rf|QA[8]~54_combout\ & (!\dp|Selector23~5_combout\ & !\dp|the_best_alu_in_kista|Add1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[8]~54_combout\,
	datab => \dp|Selector23~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~15\,
	combout => \dp|the_best_alu_in_kista|Add1~16_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~17\);

-- Location: LCCOMB_X23_Y34_N16
\dp|the_best_alu_in_kista|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~16_combout\ = ((\dp|rf|QA[8]~54_combout\ $ (\dp|Selector23~5_combout\ $ (!\dp|the_best_alu_in_kista|Add0~15\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~17\ = CARRY((\dp|rf|QA[8]~54_combout\ & ((\dp|Selector23~5_combout\) # (!\dp|the_best_alu_in_kista|Add0~15\))) # (!\dp|rf|QA[8]~54_combout\ & (\dp|Selector23~5_combout\ & !\dp|the_best_alu_in_kista|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[8]~54_combout\,
	datab => \dp|Selector23~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~15\,
	combout => \dp|the_best_alu_in_kista|Add0~16_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~17\);

-- Location: FF_X25_Y32_N25
\dp|rf|register_arr[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][8]~q\);

-- Location: FF_X26_Y32_N17
\dp|rf|register_arr[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][8]~q\);

-- Location: LCCOMB_X26_Y32_N16
\dp|rf|QA[8]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~50_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[6][8]~q\) # (\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][8]~q\ & ((!\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][8]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[6][8]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[8]~50_combout\);

-- Location: LCCOMB_X26_Y32_N30
\dp|rf|QA[8]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~51_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[8]~50_combout\ & ((\dp|rf|register_arr[7][8]~q\))) # (!\dp|rf|QA[8]~50_combout\ & (\dp|rf|register_arr[5][8]~q\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[8]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][8]~q\,
	datab => \dp|rf|register_arr[7][8]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[8]~50_combout\,
	combout => \dp|rf|QA[8]~51_combout\);

-- Location: FF_X25_Y32_N19
\dp|rf|register_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][8]~q\);

-- Location: FF_X26_Y36_N9
\dp|rf|register_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][8]~q\);

-- Location: FF_X26_Y36_N7
\dp|rf|register_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][8]~q\);

-- Location: LCCOMB_X26_Y36_N6
\dp|rf|QA[8]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~52_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][8]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][8]~q\,
	datac => \dp|rf|register_arr[1][8]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[8]~52_combout\);

-- Location: LCCOMB_X25_Y32_N0
\dp|rf|QA[8]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~53_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[8]~52_combout\ & (\dp|rf|register_arr[3][8]~q\)) # (!\dp|rf|QA[8]~52_combout\ & ((\dp|rf|register_arr[2][8]~q\))))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[8]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][8]~q\,
	datab => \dp|rf|register_arr[2][8]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|rf|QA[8]~52_combout\,
	combout => \dp|rf|QA[8]~53_combout\);

-- Location: LCCOMB_X25_Y32_N10
\dp|rf|QA[8]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[8]~55_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[8]~51_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[8]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[8]~51_combout\,
	datad => \dp|rf|QA[8]~53_combout\,
	combout => \dp|rf|QA[8]~55_combout\);

-- Location: LCCOMB_X21_Y34_N16
\dp|the_best_alu_in_kista|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~16_combout\ = (\dp|the_best_alu_in_kista|Add2~15\ & (\dp|Selector32~3_combout\ & (\dp|rf|QA[8]~55_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~15\ & ((((\dp|Selector32~3_combout\ & \dp|rf|QA[8]~55_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~17\ = CARRY((\dp|Selector32~3_combout\ & (\dp|rf|QA[8]~55_combout\ & !\dp|the_best_alu_in_kista|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[8]~55_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~15\,
	combout => \dp|the_best_alu_in_kista|Add2~16_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~17\);

-- Location: LCCOMB_X25_Y33_N8
\dp|the_best_alu_in_kista|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~0_combout\ = (\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~16_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~16_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~16_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~0_combout\);

-- Location: LCCOMB_X25_Y33_N14
\dp|the_best_alu_in_kista|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~2_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux7~5_combout\) # ((\dp|Selector23~5_combout\ & !\ucode|Mux6~2_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ & ((\dp|Selector23~5_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \dp|Selector23~5_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~2_combout\);

-- Location: LCCOMB_X26_Y33_N24
\dp|the_best_alu_in_kista|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~1_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux6~2_combout\) # ((!\dp|Selector23~5_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ $ (((\dp|Selector23~5_combout\ & 
-- \ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \dp|Selector23~5_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~1_combout\);

-- Location: LCCOMB_X25_Y33_N10
\dp|the_best_alu_in_kista|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~4_combout\ = (\dp|rf|QA[8]~54_combout\ & (\dp|the_best_alu_in_kista|Mux7~1_combout\ $ (((\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Mux7~2_combout\))))) # (!\dp|rf|QA[8]~54_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux7~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux7~1_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[8]~54_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux7~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux7~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~4_combout\);

-- Location: LCCOMB_X25_Y33_N30
\dp|the_best_alu_in_kista|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux7~5_combout\ = (\dp|the_best_alu_in_kista|Mux7~3_combout\ & (\dp|the_best_alu_in_kista|Add1~16_combout\ & ((\dp|the_best_alu_in_kista|Mux7~4_combout\)))) # (!\dp|the_best_alu_in_kista|Mux7~3_combout\ & 
-- (((\dp|the_best_alu_in_kista|Mux7~0_combout\) # (\dp|the_best_alu_in_kista|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux7~3_combout\,
	datab => \dp|the_best_alu_in_kista|Add1~16_combout\,
	datac => \dp|the_best_alu_in_kista|Mux7~0_combout\,
	datad => \dp|the_best_alu_in_kista|Mux7~4_combout\,
	combout => \dp|the_best_alu_in_kista|Mux7~5_combout\);

-- Location: LCCOMB_X26_Y32_N14
\dp|rf|register_arr~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~33_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux7~5_combout\) # ((\dp|rf|register_arr~19_combout\ & \dp|rf|register_arr~32_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~19_combout\ & (\dp|rf|register_arr~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~32_combout\,
	datad => \dp|the_best_alu_in_kista|Mux7~5_combout\,
	combout => \dp|rf|register_arr~33_combout\);

-- Location: LCCOMB_X27_Y32_N22
\dp|rf|register_arr[3][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][8]~feeder_combout\ = \dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~33_combout\,
	combout => \dp|rf|register_arr[3][8]~feeder_combout\);

-- Location: FF_X27_Y32_N23
\dp|rf|register_arr[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][8]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][8]~q\);

-- Location: LCCOMB_X26_Y36_N14
\dp|Selector23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][8]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][8]~q\,
	datab => \dp|rf|register_arr[0][8]~q\,
	datac => instruction_reg(4),
	datad => instruction_reg(3),
	combout => \dp|Selector23~2_combout\);

-- Location: LCCOMB_X27_Y32_N2
\dp|Selector23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~3_combout\ = (instruction_reg(4) & ((\dp|Selector23~2_combout\ & (\dp|rf|register_arr[3][8]~q\)) # (!\dp|Selector23~2_combout\ & ((\dp|rf|register_arr[2][8]~q\))))) # (!instruction_reg(4) & (((\dp|Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[3][8]~q\,
	datac => \dp|rf|register_arr[2][8]~q\,
	datad => \dp|Selector23~2_combout\,
	combout => \dp|Selector23~3_combout\);

-- Location: LCCOMB_X27_Y32_N4
\dp|rf|register_arr[4][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][8]~feeder_combout\ = \dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~33_combout\,
	combout => \dp|rf|register_arr[4][8]~feeder_combout\);

-- Location: FF_X27_Y32_N5
\dp|rf|register_arr[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][8]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][8]~q\);

-- Location: LCCOMB_X27_Y32_N24
\dp|Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & (\dp|rf|register_arr[6][8]~q\)) # (!instruction_reg(4) & ((\dp|rf|register_arr[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][8]~q\,
	datab => \dp|rf|register_arr[4][8]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector23~0_combout\);

-- Location: LCCOMB_X25_Y32_N24
\dp|Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~1_combout\ = (instruction_reg(3) & ((\dp|Selector23~0_combout\ & ((\dp|rf|register_arr[7][8]~q\))) # (!\dp|Selector23~0_combout\ & (\dp|rf|register_arr[5][8]~q\)))) # (!instruction_reg(3) & (((\dp|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][8]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[7][8]~q\,
	datad => \dp|Selector23~0_combout\,
	combout => \dp|Selector23~1_combout\);

-- Location: LCCOMB_X25_Y32_N6
\dp|Selector23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~4_combout\ = (instruction_reg(5) & ((\dp|Selector23~1_combout\))) # (!instruction_reg(5) & (\dp|Selector23~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(5),
	datac => \dp|Selector23~3_combout\,
	datad => \dp|Selector23~1_combout\,
	combout => \dp|Selector23~4_combout\);

-- Location: LCCOMB_X25_Y32_N4
\dp|Selector23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector23~5_combout\ = (\ucode|Mux8~0_combout\ & ((instruction_reg(8)) # ((\dp|Selector31~6_combout\ & \dp|Selector23~4_combout\)))) # (!\ucode|Mux8~0_combout\ & (((\dp|Selector31~6_combout\ & \dp|Selector23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux8~0_combout\,
	datab => instruction_reg(8),
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector23~4_combout\,
	combout => \dp|Selector23~5_combout\);

-- Location: LCCOMB_X23_Y34_N18
\dp|the_best_alu_in_kista|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~18_combout\ = (\dp|rf|QA[9]~60_combout\ & ((\dp|Selector22~5_combout\ & (\dp|the_best_alu_in_kista|Add0~17\ & VCC)) # (!\dp|Selector22~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~17\)))) # (!\dp|rf|QA[9]~60_combout\ & 
-- ((\dp|Selector22~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~17\)) # (!\dp|Selector22~5_combout\ & ((\dp|the_best_alu_in_kista|Add0~17\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~19\ = CARRY((\dp|rf|QA[9]~60_combout\ & (!\dp|Selector22~5_combout\ & !\dp|the_best_alu_in_kista|Add0~17\)) # (!\dp|rf|QA[9]~60_combout\ & ((!\dp|the_best_alu_in_kista|Add0~17\) # (!\dp|Selector22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[9]~60_combout\,
	datab => \dp|Selector22~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~17\,
	combout => \dp|the_best_alu_in_kista|Add0~18_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~19\);

-- Location: LCCOMB_X23_Y33_N18
\dp|the_best_alu_in_kista|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~18_combout\ = (\dp|rf|QA[9]~60_combout\ & ((\dp|Selector22~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~17\)) # (!\dp|Selector22~5_combout\ & (\dp|the_best_alu_in_kista|Add1~17\ & VCC)))) # (!\dp|rf|QA[9]~60_combout\ & 
-- ((\dp|Selector22~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~17\) # (GND))) # (!\dp|Selector22~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~17\))))
-- \dp|the_best_alu_in_kista|Add1~19\ = CARRY((\dp|rf|QA[9]~60_combout\ & (\dp|Selector22~5_combout\ & !\dp|the_best_alu_in_kista|Add1~17\)) # (!\dp|rf|QA[9]~60_combout\ & ((\dp|Selector22~5_combout\) # (!\dp|the_best_alu_in_kista|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[9]~60_combout\,
	datab => \dp|Selector22~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~17\,
	combout => \dp|the_best_alu_in_kista|Add1~18_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~19\);

-- Location: LCCOMB_X23_Y32_N30
\dp|the_best_alu_in_kista|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux6~0_combout\ = (\ucode|Mux7~5_combout\ & ((\ucode|Mux6~2_combout\) # ((\dp|the_best_alu_in_kista|Add1~18_combout\)))) # (!\ucode|Mux7~5_combout\ & (!\ucode|Mux6~2_combout\ & (\dp|the_best_alu_in_kista|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~18_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~18_combout\,
	combout => \dp|the_best_alu_in_kista|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y32_N8
\dp|the_best_alu_in_kista|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux6~1_combout\ = (\dp|Selector22~5_combout\ & ((\dp|the_best_alu_in_kista|Mux6~0_combout\) # ((\dp|rf|QA[9]~60_combout\ & \ucode|Mux6~2_combout\)))) # (!\dp|Selector22~5_combout\ & (\dp|the_best_alu_in_kista|Mux6~0_combout\ & 
-- ((\dp|rf|QA[9]~60_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector22~5_combout\,
	datab => \dp|rf|QA[9]~60_combout\,
	datac => \dp|the_best_alu_in_kista|Mux6~0_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y34_N18
\dp|the_best_alu_in_kista|Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~18_combout\ = (\dp|the_best_alu_in_kista|Add2~17\ & (((!\dp|rf|QA[9]~61_combout\)) # (!\dp|Selector32~3_combout\))) # (!\dp|the_best_alu_in_kista|Add2~17\ & (((\dp|Selector32~3_combout\ & \dp|rf|QA[9]~61_combout\)) # (GND)))
-- \dp|the_best_alu_in_kista|Add2~19\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~17\) # (!\dp|rf|QA[9]~61_combout\)) # (!\dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[9]~61_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~17\,
	combout => \dp|the_best_alu_in_kista|Add2~18_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~19\);

-- Location: LCCOMB_X23_Y32_N28
\dp|the_best_alu_in_kista|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux6~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~18_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[9]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux7~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|rf|QA[9]~60_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~18_combout\,
	combout => \dp|the_best_alu_in_kista|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y32_N24
\dp|the_best_alu_in_kista|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux6~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux6~2_combout\) # ((\dp|the_best_alu_in_kista|Mux6~3_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \dp|the_best_alu_in_kista|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux6~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux6~3_combout\,
	combout => \dp|the_best_alu_in_kista|Mux6~4_combout\);

-- Location: LCCOMB_X26_Y32_N12
\dp|rf|register_arr~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~35_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux6~4_combout\) # ((\dp|rf|register_arr~19_combout\ & \dp|rf|register_arr~34_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~19_combout\ & (\dp|rf|register_arr~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~34_combout\,
	datad => \dp|the_best_alu_in_kista|Mux6~4_combout\,
	combout => \dp|rf|register_arr~35_combout\);

-- Location: LCCOMB_X28_Y32_N28
\dp|rf|register_arr[7][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][9]~feeder_combout\ = \dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~35_combout\,
	combout => \dp|rf|register_arr[7][9]~feeder_combout\);

-- Location: FF_X28_Y32_N29
\dp|rf|register_arr[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][9]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][9]~q\);

-- Location: LCCOMB_X26_Y32_N4
\dp|rf|QA[9]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~56_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][9]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[4][9]~q\ & !\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][9]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[4][9]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[9]~56_combout\);

-- Location: LCCOMB_X26_Y32_N18
\dp|rf|QA[9]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~57_combout\ = (\dp|rf|QA[9]~56_combout\ & (((\dp|rf|register_arr[7][9]~q\) # (!\dp|Selector35~0_combout\)))) # (!\dp|rf|QA[9]~56_combout\ & (\dp|rf|register_arr[5][9]~q\ & ((\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][9]~q\,
	datab => \dp|rf|register_arr[7][9]~q\,
	datac => \dp|rf|QA[9]~56_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[9]~57_combout\);

-- Location: LCCOMB_X26_Y32_N2
\dp|rf|QA[9]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[9]~61_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[9]~57_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[9]~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|rf|QA[9]~57_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[9]~59_combout\,
	combout => \dp|rf|QA[9]~61_combout\);

-- Location: LCCOMB_X21_Y34_N20
\dp|the_best_alu_in_kista|Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~20_combout\ = (\dp|the_best_alu_in_kista|Add2~19\ & (\dp|rf|QA[10]~67_combout\ & (\dp|Selector32~3_combout\ & VCC))) # (!\dp|the_best_alu_in_kista|Add2~19\ & ((((\dp|rf|QA[10]~67_combout\ & \dp|Selector32~3_combout\)))))
-- \dp|the_best_alu_in_kista|Add2~21\ = CARRY((\dp|rf|QA[10]~67_combout\ & (\dp|Selector32~3_combout\ & !\dp|the_best_alu_in_kista|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[10]~67_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~19\,
	combout => \dp|the_best_alu_in_kista|Add2~20_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~21\);

-- Location: LCCOMB_X21_Y34_N22
\dp|the_best_alu_in_kista|Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~22_combout\ = (\dp|the_best_alu_in_kista|Add2~21\ & (((!\dp|Selector32~3_combout\)) # (!\dp|rf|QA[11]~73_combout\))) # (!\dp|the_best_alu_in_kista|Add2~21\ & (((\dp|rf|QA[11]~73_combout\ & \dp|Selector32~3_combout\)) # 
-- (GND)))
-- \dp|the_best_alu_in_kista|Add2~23\ = CARRY(((!\dp|the_best_alu_in_kista|Add2~21\) # (!\dp|Selector32~3_combout\)) # (!\dp|rf|QA[11]~73_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[11]~73_combout\,
	datab => \dp|Selector32~3_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add2~21\,
	combout => \dp|the_best_alu_in_kista|Add2~22_combout\,
	cout => \dp|the_best_alu_in_kista|Add2~23\);

-- Location: LCCOMB_X21_Y32_N8
\dp|the_best_alu_in_kista|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux4~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~22_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[11]~72_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[11]~72_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~22_combout\,
	combout => \dp|the_best_alu_in_kista|Mux4~3_combout\);

-- Location: LCCOMB_X21_Y35_N26
\dp|rf|register_arr[7][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][11]~feeder_combout\ = \dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~39_combout\,
	combout => \dp|rf|register_arr[7][11]~feeder_combout\);

-- Location: FF_X21_Y35_N27
\dp|rf|register_arr[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][11]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][11]~q\);

-- Location: LCCOMB_X21_Y35_N14
\dp|rf|register_arr[6][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][11]~feeder_combout\ = \dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~39_combout\,
	combout => \dp|rf|register_arr[6][11]~feeder_combout\);

-- Location: FF_X21_Y35_N15
\dp|rf|register_arr[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][11]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][11]~q\);

-- Location: LCCOMB_X21_Y35_N30
\dp|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][11]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][11]~q\,
	datab => \dp|rf|register_arr[6][11]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector20~0_combout\);

-- Location: LCCOMB_X22_Y32_N30
\dp|Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~1_combout\ = (instruction_reg(3) & ((\dp|Selector20~0_combout\ & ((\dp|rf|register_arr[7][11]~q\))) # (!\dp|Selector20~0_combout\ & (\dp|rf|register_arr[5][11]~q\)))) # (!instruction_reg(3) & (((\dp|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \dp|rf|register_arr[5][11]~q\,
	datac => \dp|rf|register_arr[7][11]~q\,
	datad => \dp|Selector20~0_combout\,
	combout => \dp|Selector20~1_combout\);

-- Location: FF_X26_Y36_N25
\dp|rf|register_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][11]~q\);

-- Location: FF_X26_Y36_N3
\dp|rf|register_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][11]~q\);

-- Location: LCCOMB_X26_Y36_N2
\dp|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][11]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[1][11]~q\,
	datac => \dp|rf|register_arr[0][11]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector20~2_combout\);

-- Location: FF_X22_Y32_N19
\dp|rf|register_arr[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][11]~q\);

-- Location: LCCOMB_X23_Y32_N4
\dp|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~3_combout\ = (instruction_reg(4) & ((\dp|Selector20~2_combout\ & ((\dp|rf|register_arr[3][11]~q\))) # (!\dp|Selector20~2_combout\ & (\dp|rf|register_arr[2][11]~q\)))) # (!instruction_reg(4) & (((\dp|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[2][11]~q\,
	datab => instruction_reg(4),
	datac => \dp|Selector20~2_combout\,
	datad => \dp|rf|register_arr[3][11]~q\,
	combout => \dp|Selector20~3_combout\);

-- Location: LCCOMB_X22_Y32_N16
\dp|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & (\dp|Selector20~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector20~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector20~1_combout\,
	datad => \dp|Selector20~3_combout\,
	combout => \dp|Selector20~4_combout\);

-- Location: LCCOMB_X22_Y32_N14
\dp|Selector20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector20~5_combout\ = (\dp|Selector20~4_combout\) # ((instruction_reg(8) & \ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(8),
	datac => \ucode|Mux8~0_combout\,
	datad => \dp|Selector20~4_combout\,
	combout => \dp|Selector20~5_combout\);

-- Location: LCCOMB_X23_Y33_N20
\dp|the_best_alu_in_kista|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~20_combout\ = ((\dp|rf|QA[10]~66_combout\ $ (\dp|Selector21~5_combout\ $ (\dp|the_best_alu_in_kista|Add1~19\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~21\ = CARRY((\dp|rf|QA[10]~66_combout\ & ((!\dp|the_best_alu_in_kista|Add1~19\) # (!\dp|Selector21~5_combout\))) # (!\dp|rf|QA[10]~66_combout\ & (!\dp|Selector21~5_combout\ & !\dp|the_best_alu_in_kista|Add1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[10]~66_combout\,
	datab => \dp|Selector21~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~19\,
	combout => \dp|the_best_alu_in_kista|Add1~20_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~21\);

-- Location: LCCOMB_X23_Y35_N24
\dp|the_best_alu_in_kista|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~2_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux7~5_combout\) # ((\dp|Selector21~5_combout\ & !\ucode|Mux6~2_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ & ((\dp|Selector21~5_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|Selector21~5_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y35_N22
\dp|the_best_alu_in_kista|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~1_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux6~2_combout\) # ((!\dp|Selector21~5_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ $ (((\ucode|Mux6~2_combout\ & 
-- \dp|Selector21~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|Selector21~5_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y35_N14
\dp|the_best_alu_in_kista|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~3_combout\ = (\dp|the_best_alu_in_kista|Mux5~2_combout\ & (!\ucode|Mux6~2_combout\ & ((\dp|rf|QA[10]~66_combout\) # (\dp|the_best_alu_in_kista|Mux5~1_combout\)))) # (!\dp|the_best_alu_in_kista|Mux5~2_combout\ & 
-- ((\dp|the_best_alu_in_kista|Mux5~1_combout\ & (!\dp|rf|QA[10]~66_combout\)) # (!\dp|the_best_alu_in_kista|Mux5~1_combout\ & ((\ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[10]~66_combout\,
	datab => \dp|the_best_alu_in_kista|Mux5~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux5~1_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y35_N28
\dp|the_best_alu_in_kista|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~0_combout\ = (\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~20_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add0~20_combout\,
	datab => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~20_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y35_N8
\dp|the_best_alu_in_kista|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux5~5_combout\ = (\dp|the_best_alu_in_kista|Mux5~4_combout\ & ((\dp|the_best_alu_in_kista|Add1~20_combout\) # ((!\dp|the_best_alu_in_kista|Mux5~3_combout\)))) # (!\dp|the_best_alu_in_kista|Mux5~4_combout\ & 
-- (((!\dp|the_best_alu_in_kista|Mux5~3_combout\ & \dp|the_best_alu_in_kista|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux5~4_combout\,
	datab => \dp|the_best_alu_in_kista|Add1~20_combout\,
	datac => \dp|the_best_alu_in_kista|Mux5~3_combout\,
	datad => \dp|the_best_alu_in_kista|Mux5~0_combout\,
	combout => \dp|the_best_alu_in_kista|Mux5~5_combout\);

-- Location: LCCOMB_X23_Y35_N28
\dp|rf|register_arr~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~37_combout\ = (\dp|rf|register_arr~36_combout\ & ((\dp|rf|register_arr~19_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux5~5_combout\)))) # (!\dp|rf|register_arr~36_combout\ & 
-- (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~36_combout\,
	datab => \dp|rf|register_arr~20_combout\,
	datac => \dp|rf|register_arr~19_combout\,
	datad => \dp|the_best_alu_in_kista|Mux5~5_combout\,
	combout => \dp|rf|register_arr~37_combout\);

-- Location: LCCOMB_X28_Y35_N28
\dp|rf|register_arr[6][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][10]~feeder_combout\ = \dp|rf|register_arr~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~37_combout\,
	combout => \dp|rf|register_arr[6][10]~feeder_combout\);

-- Location: FF_X28_Y35_N29
\dp|rf|register_arr[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][10]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][10]~q\);

-- Location: LCCOMB_X28_Y35_N10
\dp|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~0_combout\ = (instruction_reg(3) & (((instruction_reg(4))))) # (!instruction_reg(3) & ((instruction_reg(4) & ((\dp|rf|register_arr[6][10]~q\))) # (!instruction_reg(4) & (\dp|rf|register_arr[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][10]~q\,
	datab => \dp|rf|register_arr[6][10]~q\,
	datac => instruction_reg(3),
	datad => instruction_reg(4),
	combout => \dp|Selector21~0_combout\);

-- Location: LCCOMB_X27_Y35_N2
\dp|rf|register_arr[7][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[7][10]~feeder_combout\ = \dp|rf|register_arr~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~37_combout\,
	combout => \dp|rf|register_arr[7][10]~feeder_combout\);

-- Location: FF_X27_Y35_N3
\dp|rf|register_arr[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[7][10]~feeder_combout\,
	ena => \dp|rf|register_arr[7][3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[7][10]~q\);

-- Location: LCCOMB_X27_Y35_N14
\dp|Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~1_combout\ = (instruction_reg(3) & ((\dp|Selector21~0_combout\ & ((\dp|rf|register_arr[7][10]~q\))) # (!\dp|Selector21~0_combout\ & (\dp|rf|register_arr[5][10]~q\)))) # (!instruction_reg(3) & (((\dp|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][10]~q\,
	datab => instruction_reg(3),
	datac => \dp|Selector21~0_combout\,
	datad => \dp|rf|register_arr[7][10]~q\,
	combout => \dp|Selector21~1_combout\);

-- Location: FF_X26_Y36_N17
\dp|rf|register_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][10]~q\);

-- Location: FF_X26_Y36_N31
\dp|rf|register_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][10]~q\);

-- Location: LCCOMB_X26_Y36_N30
\dp|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][10]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[1][10]~q\,
	datac => \dp|rf|register_arr[0][10]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector21~2_combout\);

-- Location: FF_X23_Y35_N11
\dp|rf|register_arr[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][10]~q\);

-- Location: FF_X23_Y35_N29
\dp|rf|register_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr~37_combout\,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][10]~q\);

-- Location: LCCOMB_X23_Y35_N10
\dp|Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~3_combout\ = (instruction_reg(4) & ((\dp|Selector21~2_combout\ & (\dp|rf|register_arr[3][10]~q\)) # (!\dp|Selector21~2_combout\ & ((\dp|rf|register_arr[2][10]~q\))))) # (!instruction_reg(4) & (\dp|Selector21~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|Selector21~2_combout\,
	datac => \dp|rf|register_arr[3][10]~q\,
	datad => \dp|rf|register_arr[2][10]~q\,
	combout => \dp|Selector21~3_combout\);

-- Location: LCCOMB_X23_Y35_N12
\dp|Selector21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & (\dp|Selector21~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector21~1_combout\,
	datad => \dp|Selector21~3_combout\,
	combout => \dp|Selector21~4_combout\);

-- Location: LCCOMB_X23_Y35_N26
\dp|Selector21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector21~5_combout\ = (\dp|Selector21~4_combout\) # ((\ucode|Mux8~0_combout\ & instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(8),
	datad => \dp|Selector21~4_combout\,
	combout => \dp|Selector21~5_combout\);

-- Location: LCCOMB_X23_Y33_N22
\dp|the_best_alu_in_kista|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~22_combout\ = (\dp|Selector20~5_combout\ & ((\dp|rf|QA[11]~72_combout\ & (!\dp|the_best_alu_in_kista|Add1~21\)) # (!\dp|rf|QA[11]~72_combout\ & ((\dp|the_best_alu_in_kista|Add1~21\) # (GND))))) # (!\dp|Selector20~5_combout\ 
-- & ((\dp|rf|QA[11]~72_combout\ & (\dp|the_best_alu_in_kista|Add1~21\ & VCC)) # (!\dp|rf|QA[11]~72_combout\ & (!\dp|the_best_alu_in_kista|Add1~21\))))
-- \dp|the_best_alu_in_kista|Add1~23\ = CARRY((\dp|Selector20~5_combout\ & ((!\dp|the_best_alu_in_kista|Add1~21\) # (!\dp|rf|QA[11]~72_combout\))) # (!\dp|Selector20~5_combout\ & (!\dp|rf|QA[11]~72_combout\ & !\dp|the_best_alu_in_kista|Add1~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector20~5_combout\,
	datab => \dp|rf|QA[11]~72_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~21\,
	combout => \dp|the_best_alu_in_kista|Add1~22_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~23\);

-- Location: LCCOMB_X22_Y32_N12
\dp|the_best_alu_in_kista|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux4~0_combout\ = (\ucode|Mux7~5_combout\ & (((\ucode|Mux6~2_combout\) # (\dp|the_best_alu_in_kista|Add1~22_combout\)))) # (!\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add0~22_combout\ & (!\ucode|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add0~22_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~22_combout\,
	combout => \dp|the_best_alu_in_kista|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y32_N6
\dp|the_best_alu_in_kista|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux4~1_combout\ = (\ucode|Mux6~2_combout\ & ((\dp|rf|QA[11]~72_combout\ & ((\dp|Selector20~5_combout\) # (\dp|the_best_alu_in_kista|Mux4~0_combout\))) # (!\dp|rf|QA[11]~72_combout\ & (\dp|Selector20~5_combout\ & 
-- \dp|the_best_alu_in_kista|Mux4~0_combout\)))) # (!\ucode|Mux6~2_combout\ & (((\dp|the_best_alu_in_kista|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[11]~72_combout\,
	datac => \dp|Selector20~5_combout\,
	datad => \dp|the_best_alu_in_kista|Mux4~0_combout\,
	combout => \dp|the_best_alu_in_kista|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y32_N20
\dp|the_best_alu_in_kista|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux4~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux4~2_combout\) # ((\dp|the_best_alu_in_kista|Mux4~3_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux5~1_combout\,
	datab => \dp|the_best_alu_in_kista|Mux4~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux4~3_combout\,
	datad => \dp|the_best_alu_in_kista|Mux4~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y32_N18
\dp|rf|register_arr~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~39_combout\ = (\dp|rf|register_arr~19_combout\ & ((\dp|rf|register_arr~38_combout\) # ((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux4~4_combout\)))) # (!\dp|rf|register_arr~19_combout\ & 
-- (((\dp|rf|register_arr~20_combout\ & \dp|the_best_alu_in_kista|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~19_combout\,
	datab => \dp|rf|register_arr~38_combout\,
	datac => \dp|rf|register_arr~20_combout\,
	datad => \dp|the_best_alu_in_kista|Mux4~4_combout\,
	combout => \dp|rf|register_arr~39_combout\);

-- Location: LCCOMB_X22_Y32_N20
\dp|rf|register_arr[5][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][11]~feeder_combout\ = \dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~39_combout\,
	combout => \dp|rf|register_arr[5][11]~feeder_combout\);

-- Location: FF_X22_Y32_N21
\dp|rf|register_arr[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][11]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][11]~q\);

-- Location: LCCOMB_X21_Y32_N30
\dp|rf|register_arr[4][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][11]~feeder_combout\ = \dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~39_combout\,
	combout => \dp|rf|register_arr[4][11]~feeder_combout\);

-- Location: FF_X21_Y32_N31
\dp|rf|register_arr[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][11]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][11]~q\);

-- Location: LCCOMB_X21_Y35_N24
\dp|rf|QA[11]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~68_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[6][11]~q\) # ((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[4][11]~q\ & !\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[6][11]~q\,
	datac => \dp|rf|register_arr[4][11]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[11]~68_combout\);

-- Location: LCCOMB_X21_Y35_N12
\dp|rf|QA[11]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~69_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[11]~68_combout\ & (\dp|rf|register_arr[7][11]~q\)) # (!\dp|rf|QA[11]~68_combout\ & ((\dp|rf|register_arr[5][11]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[11]~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][11]~q\,
	datab => \dp|Selector35~0_combout\,
	datac => \dp|rf|register_arr[5][11]~q\,
	datad => \dp|rf|QA[11]~68_combout\,
	combout => \dp|rf|QA[11]~69_combout\);

-- Location: LCCOMB_X23_Y32_N22
\dp|rf|register_arr[2][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][11]~feeder_combout\ = \dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~39_combout\,
	combout => \dp|rf|register_arr[2][11]~feeder_combout\);

-- Location: FF_X23_Y32_N23
\dp|rf|register_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[2][11]~feeder_combout\,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][11]~q\);

-- Location: LCCOMB_X26_Y36_N24
\dp|rf|QA[11]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~70_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][11]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][11]~q\,
	datac => \dp|rf|register_arr[1][11]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[11]~70_combout\);

-- Location: LCCOMB_X22_Y32_N18
\dp|rf|QA[11]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~71_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[11]~70_combout\ & ((\dp|rf|register_arr[3][11]~q\))) # (!\dp|rf|QA[11]~70_combout\ & (\dp|rf|register_arr[2][11]~q\)))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[11]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[2][11]~q\,
	datac => \dp|rf|register_arr[3][11]~q\,
	datad => \dp|rf|QA[11]~70_combout\,
	combout => \dp|rf|QA[11]~71_combout\);

-- Location: LCCOMB_X22_Y32_N28
\dp|rf|QA[11]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[11]~72_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[11]~69_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[11]~71_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|Selector32~3_combout\,
	datac => \dp|rf|QA[11]~69_combout\,
	datad => \dp|rf|QA[11]~71_combout\,
	combout => \dp|rf|QA[11]~72_combout\);

-- Location: LCCOMB_X23_Y34_N24
\dp|the_best_alu_in_kista|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~24_combout\ = ((\dp|rf|QA[12]~78_combout\ $ (\dp|Selector19~5_combout\ $ (!\dp|the_best_alu_in_kista|Add0~23\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~25\ = CARRY((\dp|rf|QA[12]~78_combout\ & ((\dp|Selector19~5_combout\) # (!\dp|the_best_alu_in_kista|Add0~23\))) # (!\dp|rf|QA[12]~78_combout\ & (\dp|Selector19~5_combout\ & !\dp|the_best_alu_in_kista|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[12]~78_combout\,
	datab => \dp|Selector19~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~23\,
	combout => \dp|the_best_alu_in_kista|Add0~24_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~25\);

-- Location: LCCOMB_X22_Y35_N14
\dp|the_best_alu_in_kista|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~0_combout\ = (\ucode|Mux7~5_combout\ & (\dp|the_best_alu_in_kista|Add2~24_combout\)) # (!\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add2~24_combout\,
	datab => \ucode|Mux7~5_combout\,
	datad => \dp|the_best_alu_in_kista|Add0~24_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~0_combout\);

-- Location: FF_X26_Y35_N29
\dp|rf|register_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][12]~q\);

-- Location: LCCOMB_X26_Y35_N28
\dp|rf|QA[12]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~76_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][12]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][12]~q\,
	datab => \dp|Selector34~0_combout\,
	datac => \dp|rf|register_arr[1][12]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[12]~76_combout\);

-- Location: LCCOMB_X22_Y33_N18
\dp|rf|QA[12]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~77_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[12]~76_combout\ & (\dp|rf|register_arr[3][12]~q\)) # (!\dp|rf|QA[12]~76_combout\ & ((\dp|rf|register_arr[2][12]~q\))))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[12]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[3][12]~q\,
	datac => \dp|rf|register_arr[2][12]~q\,
	datad => \dp|rf|QA[12]~76_combout\,
	combout => \dp|rf|QA[12]~77_combout\);

-- Location: LCCOMB_X22_Y33_N0
\dp|rf|QA[12]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~78_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[12]~75_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[12]~77_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|rf|QA[12]~77_combout\,
	datac => \dp|Selector33~0_combout\,
	datad => \dp|rf|QA[12]~75_combout\,
	combout => \dp|rf|QA[12]~78_combout\);

-- Location: LCCOMB_X23_Y36_N30
\dp|the_best_alu_in_kista|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~2_combout\ = (\dp|Selector19~5_combout\ & ((\ucode|Mux7~5_combout\) # ((!\ucode|Mux6~2_combout\ & \ucode|Mux5~1_combout\)))) # (!\dp|Selector19~5_combout\ & (\ucode|Mux7~5_combout\ & ((\ucode|Mux5~1_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector19~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~2_combout\);

-- Location: LCCOMB_X23_Y36_N24
\dp|the_best_alu_in_kista|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~1_combout\ = (\ucode|Mux5~1_combout\ & ((\ucode|Mux6~2_combout\) # ((!\dp|Selector19~5_combout\ & !\ucode|Mux7~5_combout\)))) # (!\ucode|Mux5~1_combout\ & (\ucode|Mux7~5_combout\ $ (((\dp|Selector19~5_combout\ & 
-- \ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector19~5_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y35_N26
\dp|the_best_alu_in_kista|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~4_combout\ = (\dp|rf|QA[12]~78_combout\ & (\dp|the_best_alu_in_kista|Mux3~1_combout\ $ (((\ucode|Mux6~2_combout\ & \dp|the_best_alu_in_kista|Mux3~2_combout\))))) # (!\dp|rf|QA[12]~78_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux3~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux3~1_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[12]~78_combout\,
	datac => \dp|the_best_alu_in_kista|Mux3~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux3~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y35_N20
\dp|the_best_alu_in_kista|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~3_combout\ = (\ucode|Mux6~2_combout\ & (!\dp|the_best_alu_in_kista|Mux3~2_combout\ & ((!\dp|the_best_alu_in_kista|Mux3~1_combout\) # (!\dp|rf|QA[12]~78_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\dp|rf|QA[12]~78_combout\ & 
-- (\dp|the_best_alu_in_kista|Mux3~2_combout\)) # (!\dp|rf|QA[12]~78_combout\ & ((\dp|the_best_alu_in_kista|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[12]~78_combout\,
	datac => \dp|the_best_alu_in_kista|Mux3~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux3~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~3_combout\);

-- Location: LCCOMB_X22_Y35_N30
\dp|the_best_alu_in_kista|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux3~5_combout\ = (\dp|the_best_alu_in_kista|Mux3~4_combout\ & ((\dp|the_best_alu_in_kista|Add1~24_combout\) # ((!\dp|the_best_alu_in_kista|Mux3~3_combout\)))) # (!\dp|the_best_alu_in_kista|Mux3~4_combout\ & 
-- (((\dp|the_best_alu_in_kista|Mux3~0_combout\ & !\dp|the_best_alu_in_kista|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add1~24_combout\,
	datab => \dp|the_best_alu_in_kista|Mux3~0_combout\,
	datac => \dp|the_best_alu_in_kista|Mux3~4_combout\,
	datad => \dp|the_best_alu_in_kista|Mux3~3_combout\,
	combout => \dp|the_best_alu_in_kista|Mux3~5_combout\);

-- Location: LCCOMB_X26_Y34_N26
\dp|rf|register_arr~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~41_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux3~5_combout\) # ((\dp|rf|register_arr~40_combout\ & \dp|rf|register_arr~19_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~40_combout\ & (\dp|rf|register_arr~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~40_combout\,
	datac => \dp|rf|register_arr~19_combout\,
	datad => \dp|the_best_alu_in_kista|Mux3~5_combout\,
	combout => \dp|rf|register_arr~41_combout\);

-- Location: LCCOMB_X25_Y36_N22
\dp|rf|register_arr[6][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][12]~feeder_combout\ = \dp|rf|register_arr~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~41_combout\,
	combout => \dp|rf|register_arr[6][12]~feeder_combout\);

-- Location: FF_X25_Y36_N23
\dp|rf|register_arr[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][12]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][12]~q\);

-- Location: LCCOMB_X25_Y36_N20
\dp|rf|QA[12]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~74_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[6][12]~q\) # (\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][12]~q\ & ((!\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[4][12]~q\,
	datab => \dp|rf|register_arr[6][12]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[12]~74_combout\);

-- Location: LCCOMB_X25_Y36_N18
\dp|rf|QA[12]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~75_combout\ = (\dp|rf|QA[12]~74_combout\ & (((\dp|rf|register_arr[7][12]~q\) # (!\dp|Selector35~0_combout\)))) # (!\dp|rf|QA[12]~74_combout\ & (\dp|rf|register_arr[5][12]~q\ & ((\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[5][12]~q\,
	datab => \dp|rf|QA[12]~74_combout\,
	datac => \dp|rf|register_arr[7][12]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[12]~75_combout\);

-- Location: LCCOMB_X25_Y36_N24
\dp|rf|QA[12]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[12]~79_combout\ = (\dp|Selector33~0_combout\ & (\dp|rf|QA[12]~75_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[12]~77_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector33~0_combout\,
	datab => \dp|rf|QA[12]~75_combout\,
	datad => \dp|rf|QA[12]~77_combout\,
	combout => \dp|rf|QA[12]~79_combout\);

-- Location: LCCOMB_X21_Y34_N30
\dp|the_best_alu_in_kista|Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add2~30_combout\ = \dp|the_best_alu_in_kista|Add2~29\ $ (((\dp|Selector32~3_combout\ & \dp|rf|QA[15]~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dp|Selector32~3_combout\,
	datad => \dp|rf|QA[15]~97_combout\,
	cin => \dp|the_best_alu_in_kista|Add2~29\,
	combout => \dp|the_best_alu_in_kista|Add2~30_combout\);

-- Location: LCCOMB_X22_Y34_N24
\dp|the_best_alu_in_kista|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux0~3_combout\ = (\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add2~30_combout\))) # (!\ucode|Mux7~5_combout\ & (\dp|rf|QA[15]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|rf|QA[15]~96_combout\,
	datad => \dp|the_best_alu_in_kista|Add2~30_combout\,
	combout => \dp|the_best_alu_in_kista|Mux0~3_combout\);

-- Location: LCCOMB_X26_Y33_N22
\dp|rf|register_arr[6][15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[6][15]~feeder_combout\ = \dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~47_combout\,
	combout => \dp|rf|register_arr[6][15]~feeder_combout\);

-- Location: FF_X26_Y33_N23
\dp|rf|register_arr[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[6][15]~feeder_combout\,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][15]~q\);

-- Location: LCCOMB_X26_Y33_N30
\dp|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~0_combout\ = (instruction_reg(4) & ((\dp|rf|register_arr[6][15]~q\) # ((instruction_reg(3))))) # (!instruction_reg(4) & (((!instruction_reg(3) & \dp|rf|register_arr[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[6][15]~q\,
	datac => instruction_reg(3),
	datad => \dp|rf|register_arr[4][15]~q\,
	combout => \dp|Selector16~0_combout\);

-- Location: LCCOMB_X27_Y35_N12
\dp|rf|register_arr[5][15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][15]~feeder_combout\ = \dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~47_combout\,
	combout => \dp|rf|register_arr[5][15]~feeder_combout\);

-- Location: FF_X27_Y35_N13
\dp|rf|register_arr[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][15]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][15]~q\);

-- Location: LCCOMB_X27_Y35_N28
\dp|Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~1_combout\ = (instruction_reg(3) & ((\dp|Selector16~0_combout\ & (\dp|rf|register_arr[7][15]~q\)) # (!\dp|Selector16~0_combout\ & ((\dp|rf|register_arr[5][15]~q\))))) # (!instruction_reg(3) & (((\dp|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(3),
	datab => \dp|rf|register_arr[7][15]~q\,
	datac => \dp|Selector16~0_combout\,
	datad => \dp|rf|register_arr[5][15]~q\,
	combout => \dp|Selector16~1_combout\);

-- Location: LCCOMB_X27_Y32_N8
\dp|rf|register_arr[3][15]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[3][15]~feeder_combout\ = \dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~47_combout\,
	combout => \dp|rf|register_arr[3][15]~feeder_combout\);

-- Location: FF_X27_Y32_N9
\dp|rf|register_arr[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[3][15]~feeder_combout\,
	ena => \dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[3][15]~q\);

-- Location: LCCOMB_X26_Y36_N26
\dp|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][15]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[1][15]~q\,
	datac => \dp|rf|register_arr[0][15]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector16~2_combout\);

-- Location: LCCOMB_X27_Y32_N18
\dp|Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~3_combout\ = (instruction_reg(4) & ((\dp|Selector16~2_combout\ & ((\dp|rf|register_arr[3][15]~q\))) # (!\dp|Selector16~2_combout\ & (\dp|rf|register_arr[2][15]~q\)))) # (!instruction_reg(4) & (((\dp|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[2][15]~q\,
	datac => \dp|rf|register_arr[3][15]~q\,
	datad => \dp|Selector16~2_combout\,
	combout => \dp|Selector16~3_combout\);

-- Location: LCCOMB_X23_Y32_N18
\dp|Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & (\dp|Selector16~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector16~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector31~6_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector16~1_combout\,
	datad => \dp|Selector16~3_combout\,
	combout => \dp|Selector16~4_combout\);

-- Location: LCCOMB_X23_Y32_N16
\dp|Selector16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector16~5_combout\ = (\dp|Selector16~4_combout\) # ((instruction_reg(8) & \ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(8),
	datac => \ucode|Mux8~0_combout\,
	datad => \dp|Selector16~4_combout\,
	combout => \dp|Selector16~5_combout\);

-- Location: LCCOMB_X26_Y32_N22
\dp|rf|register_arr~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~44_combout\ = (instruction_reg(13) & ((\Data_in[14]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(8),
	datad => \Data_in[14]~input_o\,
	combout => \dp|rf|register_arr~44_combout\);

-- Location: FF_X26_Y36_N13
\dp|rf|register_arr[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][14]~q\);

-- Location: LCCOMB_X26_Y36_N12
\dp|Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~2_combout\ = (instruction_reg(3) & (((\dp|rf|register_arr[1][14]~q\) # (instruction_reg(4))))) # (!instruction_reg(3) & (\dp|rf|register_arr[0][14]~q\ & ((!instruction_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[0][14]~q\,
	datab => instruction_reg(3),
	datac => \dp|rf|register_arr[1][14]~q\,
	datad => instruction_reg(4),
	combout => \dp|Selector17~2_combout\);

-- Location: LCCOMB_X27_Y33_N16
\dp|Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~3_combout\ = (instruction_reg(4) & ((\dp|Selector17~2_combout\ & (\dp|rf|register_arr[3][14]~q\)) # (!\dp|Selector17~2_combout\ & ((\dp|rf|register_arr[2][14]~q\))))) # (!instruction_reg(4) & (((\dp|Selector17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][14]~q\,
	datab => instruction_reg(4),
	datac => \dp|rf|register_arr[2][14]~q\,
	datad => \dp|Selector17~2_combout\,
	combout => \dp|Selector17~3_combout\);

-- Location: LCCOMB_X23_Y32_N10
\dp|Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & (\dp|Selector17~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector17~1_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector17~3_combout\,
	combout => \dp|Selector17~4_combout\);

-- Location: LCCOMB_X23_Y32_N12
\dp|Selector17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector17~5_combout\ = (\dp|Selector17~4_combout\) # ((instruction_reg(8) & \ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => instruction_reg(8),
	datac => \ucode|Mux8~0_combout\,
	datad => \dp|Selector17~4_combout\,
	combout => \dp|Selector17~5_combout\);

-- Location: LCCOMB_X22_Y36_N0
\dp|the_best_alu_in_kista|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux1~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[14]~90_combout\ $ (((\ucode|Mux7~5_combout\) # (\dp|Selector17~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[14]~90_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|Selector17~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux1~2_combout\);

-- Location: LCCOMB_X27_Y34_N8
\dp|rf|register_arr~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~42_combout\ = (instruction_reg(13) & ((\Data_in[13]~input_o\))) # (!instruction_reg(13) & (instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(8),
	datad => \Data_in[13]~input_o\,
	combout => \dp|rf|register_arr~42_combout\);

-- Location: FF_X27_Y34_N9
\dp|rf|register_arr[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][13]~q\);

-- Location: LCCOMB_X28_Y35_N6
\dp|rf|register_arr[4][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][13]~feeder_combout\ = \dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~43_combout\,
	combout => \dp|rf|register_arr[4][13]~feeder_combout\);

-- Location: FF_X28_Y35_N7
\dp|rf|register_arr[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][13]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][13]~q\);

-- Location: LCCOMB_X28_Y35_N24
\dp|rf|QA[13]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~80_combout\ = (\dp|Selector35~0_combout\ & (((\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & ((\dp|Selector34~0_combout\ & (\dp|rf|register_arr[6][13]~q\)) # (!\dp|Selector34~0_combout\ & ((\dp|rf|register_arr[4][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[6][13]~q\,
	datab => \dp|rf|register_arr[4][13]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[13]~80_combout\);

-- Location: LCCOMB_X27_Y34_N30
\dp|rf|QA[13]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~81_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[13]~80_combout\ & (\dp|rf|register_arr[7][13]~q\)) # (!\dp|rf|QA[13]~80_combout\ & ((\dp|rf|register_arr[5][13]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[13]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][13]~q\,
	datab => \dp|Selector35~0_combout\,
	datac => \dp|rf|register_arr[5][13]~q\,
	datad => \dp|rf|QA[13]~80_combout\,
	combout => \dp|rf|QA[13]~81_combout\);

-- Location: FF_X26_Y36_N23
\dp|rf|register_arr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][13]~q\);

-- Location: FF_X26_Y36_N21
\dp|rf|register_arr[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[1][13]~q\);

-- Location: LCCOMB_X26_Y36_N20
\dp|rf|QA[13]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~82_combout\ = (\dp|Selector34~0_combout\ & (((\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & ((\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][13]~q\))) # (!\dp|Selector35~0_combout\ & (\dp|rf|register_arr[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[0][13]~q\,
	datac => \dp|rf|register_arr[1][13]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[13]~82_combout\);

-- Location: LCCOMB_X27_Y36_N12
\dp|rf|QA[13]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~83_combout\ = (\dp|Selector34~0_combout\ & ((\dp|rf|QA[13]~82_combout\ & (\dp|rf|register_arr[3][13]~q\)) # (!\dp|rf|QA[13]~82_combout\ & ((\dp|rf|register_arr[2][13]~q\))))) # (!\dp|Selector34~0_combout\ & (((\dp|rf|QA[13]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][13]~q\,
	datab => \dp|rf|register_arr[2][13]~q\,
	datac => \dp|Selector34~0_combout\,
	datad => \dp|rf|QA[13]~82_combout\,
	combout => \dp|rf|QA[13]~83_combout\);

-- Location: LCCOMB_X27_Y34_N16
\dp|rf|QA[13]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[13]~84_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & (\dp|rf|QA[13]~81_combout\)) # (!\dp|Selector33~0_combout\ & ((\dp|rf|QA[13]~83_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[13]~81_combout\,
	datad => \dp|rf|QA[13]~83_combout\,
	combout => \dp|rf|QA[13]~84_combout\);

-- Location: LCCOMB_X27_Y34_N0
\dp|the_best_alu_in_kista|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux2~2_combout\ = (!\ucode|Mux6~2_combout\ & (\dp|rf|QA[13]~84_combout\ $ (((\ucode|Mux7~5_combout\) # (\dp|Selector18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|rf|QA[13]~84_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \dp|Selector18~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux2~2_combout\);

-- Location: LCCOMB_X23_Y34_N26
\dp|the_best_alu_in_kista|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~26_combout\ = (\dp|rf|QA[13]~84_combout\ & ((\dp|Selector18~5_combout\ & (\dp|the_best_alu_in_kista|Add0~25\ & VCC)) # (!\dp|Selector18~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~25\)))) # (!\dp|rf|QA[13]~84_combout\ & 
-- ((\dp|Selector18~5_combout\ & (!\dp|the_best_alu_in_kista|Add0~25\)) # (!\dp|Selector18~5_combout\ & ((\dp|the_best_alu_in_kista|Add0~25\) # (GND)))))
-- \dp|the_best_alu_in_kista|Add0~27\ = CARRY((\dp|rf|QA[13]~84_combout\ & (!\dp|Selector18~5_combout\ & !\dp|the_best_alu_in_kista|Add0~25\)) # (!\dp|rf|QA[13]~84_combout\ & ((!\dp|the_best_alu_in_kista|Add0~25\) # (!\dp|Selector18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[13]~84_combout\,
	datab => \dp|Selector18~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~25\,
	combout => \dp|the_best_alu_in_kista|Add0~26_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~27\);

-- Location: LCCOMB_X23_Y33_N26
\dp|the_best_alu_in_kista|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~26_combout\ = (\dp|rf|QA[13]~84_combout\ & ((\dp|Selector18~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~25\)) # (!\dp|Selector18~5_combout\ & (\dp|the_best_alu_in_kista|Add1~25\ & VCC)))) # (!\dp|rf|QA[13]~84_combout\ & 
-- ((\dp|Selector18~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~25\) # (GND))) # (!\dp|Selector18~5_combout\ & (!\dp|the_best_alu_in_kista|Add1~25\))))
-- \dp|the_best_alu_in_kista|Add1~27\ = CARRY((\dp|rf|QA[13]~84_combout\ & (\dp|Selector18~5_combout\ & !\dp|the_best_alu_in_kista|Add1~25\)) # (!\dp|rf|QA[13]~84_combout\ & ((\dp|Selector18~5_combout\) # (!\dp|the_best_alu_in_kista|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[13]~84_combout\,
	datab => \dp|Selector18~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~25\,
	combout => \dp|the_best_alu_in_kista|Add1~26_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~27\);

-- Location: LCCOMB_X27_Y34_N24
\dp|the_best_alu_in_kista|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux2~0_combout\ = (\ucode|Mux6~2_combout\ & (\ucode|Mux7~5_combout\)) # (!\ucode|Mux6~2_combout\ & ((\ucode|Mux7~5_combout\ & ((\dp|the_best_alu_in_kista|Add1~26_combout\))) # (!\ucode|Mux7~5_combout\ & 
-- (\dp|the_best_alu_in_kista|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~26_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~26_combout\,
	combout => \dp|the_best_alu_in_kista|Mux2~0_combout\);

-- Location: LCCOMB_X27_Y34_N28
\dp|the_best_alu_in_kista|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux2~1_combout\ = (\dp|Selector18~5_combout\ & ((\dp|the_best_alu_in_kista|Mux2~0_combout\) # ((\dp|rf|QA[13]~84_combout\ & \ucode|Mux6~2_combout\)))) # (!\dp|Selector18~5_combout\ & (\dp|the_best_alu_in_kista|Mux2~0_combout\ & 
-- ((\dp|rf|QA[13]~84_combout\) # (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector18~5_combout\,
	datab => \dp|rf|QA[13]~84_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux2~0_combout\,
	combout => \dp|the_best_alu_in_kista|Mux2~1_combout\);

-- Location: LCCOMB_X27_Y34_N12
\dp|the_best_alu_in_kista|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux2~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux2~3_combout\) # ((\dp|the_best_alu_in_kista|Mux2~2_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux2~3_combout\,
	datab => \ucode|Mux5~1_combout\,
	datac => \dp|the_best_alu_in_kista|Mux2~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux2~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux2~4_combout\);

-- Location: LCCOMB_X27_Y34_N26
\dp|rf|register_arr~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~43_combout\ = (\dp|rf|register_arr~20_combout\ & ((\dp|the_best_alu_in_kista|Mux2~4_combout\) # ((\dp|rf|register_arr~19_combout\ & \dp|rf|register_arr~42_combout\)))) # (!\dp|rf|register_arr~20_combout\ & 
-- (\dp|rf|register_arr~19_combout\ & (\dp|rf|register_arr~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~20_combout\,
	datab => \dp|rf|register_arr~19_combout\,
	datac => \dp|rf|register_arr~42_combout\,
	datad => \dp|the_best_alu_in_kista|Mux2~4_combout\,
	combout => \dp|rf|register_arr~43_combout\);

-- Location: LCCOMB_X27_Y36_N0
\dp|rf|register_arr[2][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[2][13]~feeder_combout\ = \dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~43_combout\,
	combout => \dp|rf|register_arr[2][13]~feeder_combout\);

-- Location: FF_X27_Y36_N1
\dp|rf|register_arr[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[2][13]~feeder_combout\,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][13]~q\);

-- Location: LCCOMB_X26_Y36_N22
\dp|Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~2_combout\ = (instruction_reg(4) & (((instruction_reg(3))))) # (!instruction_reg(4) & ((instruction_reg(3) & (\dp|rf|register_arr[1][13]~q\)) # (!instruction_reg(3) & ((\dp|rf|register_arr[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(4),
	datab => \dp|rf|register_arr[1][13]~q\,
	datac => \dp|rf|register_arr[0][13]~q\,
	datad => instruction_reg(3),
	combout => \dp|Selector18~2_combout\);

-- Location: LCCOMB_X27_Y36_N18
\dp|Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~3_combout\ = (instruction_reg(4) & ((\dp|Selector18~2_combout\ & (\dp|rf|register_arr[3][13]~q\)) # (!\dp|Selector18~2_combout\ & ((\dp|rf|register_arr[2][13]~q\))))) # (!instruction_reg(4) & (((\dp|Selector18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][13]~q\,
	datab => \dp|rf|register_arr[2][13]~q\,
	datac => instruction_reg(4),
	datad => \dp|Selector18~2_combout\,
	combout => \dp|Selector18~3_combout\);

-- Location: LCCOMB_X27_Y34_N20
\dp|Selector18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~4_combout\ = (\dp|Selector31~6_combout\ & ((instruction_reg(5) & (\dp|Selector18~1_combout\)) # (!instruction_reg(5) & ((\dp|Selector18~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector18~1_combout\,
	datab => instruction_reg(5),
	datac => \dp|Selector31~6_combout\,
	datad => \dp|Selector18~3_combout\,
	combout => \dp|Selector18~4_combout\);

-- Location: LCCOMB_X27_Y34_N18
\dp|Selector18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|Selector18~5_combout\ = (\dp|Selector18~4_combout\) # ((\ucode|Mux8~0_combout\ & instruction_reg(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ucode|Mux8~0_combout\,
	datac => instruction_reg(8),
	datad => \dp|Selector18~4_combout\,
	combout => \dp|Selector18~5_combout\);

-- Location: LCCOMB_X23_Y34_N28
\dp|the_best_alu_in_kista|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~28_combout\ = ((\dp|Selector17~5_combout\ $ (\dp|rf|QA[14]~90_combout\ $ (!\dp|the_best_alu_in_kista|Add0~27\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add0~29\ = CARRY((\dp|Selector17~5_combout\ & ((\dp|rf|QA[14]~90_combout\) # (!\dp|the_best_alu_in_kista|Add0~27\))) # (!\dp|Selector17~5_combout\ & (\dp|rf|QA[14]~90_combout\ & !\dp|the_best_alu_in_kista|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector17~5_combout\,
	datab => \dp|rf|QA[14]~90_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add0~27\,
	combout => \dp|the_best_alu_in_kista|Add0~28_combout\,
	cout => \dp|the_best_alu_in_kista|Add0~29\);

-- Location: LCCOMB_X23_Y33_N28
\dp|the_best_alu_in_kista|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~28_combout\ = ((\dp|rf|QA[14]~90_combout\ $ (\dp|Selector17~5_combout\ $ (\dp|the_best_alu_in_kista|Add1~27\)))) # (GND)
-- \dp|the_best_alu_in_kista|Add1~29\ = CARRY((\dp|rf|QA[14]~90_combout\ & ((!\dp|the_best_alu_in_kista|Add1~27\) # (!\dp|Selector17~5_combout\))) # (!\dp|rf|QA[14]~90_combout\ & (!\dp|Selector17~5_combout\ & !\dp|the_best_alu_in_kista|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[14]~90_combout\,
	datab => \dp|Selector17~5_combout\,
	datad => VCC,
	cin => \dp|the_best_alu_in_kista|Add1~27\,
	combout => \dp|the_best_alu_in_kista|Add1~28_combout\,
	cout => \dp|the_best_alu_in_kista|Add1~29\);

-- Location: LCCOMB_X22_Y36_N18
\dp|the_best_alu_in_kista|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux1~1_combout\ = (\dp|the_best_alu_in_kista|Mux1~0_combout\ & ((\ucode|Mux6~2_combout\) # ((\dp|the_best_alu_in_kista|Add1~28_combout\)))) # (!\dp|the_best_alu_in_kista|Mux1~0_combout\ & (!\ucode|Mux6~2_combout\ & 
-- (\dp|the_best_alu_in_kista|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux1~0_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Add0~28_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~28_combout\,
	combout => \dp|the_best_alu_in_kista|Mux1~1_combout\);

-- Location: LCCOMB_X22_Y36_N28
\dp|the_best_alu_in_kista|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux1~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux1~3_combout\) # ((\dp|the_best_alu_in_kista|Mux1~2_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux1~3_combout\,
	datab => \dp|the_best_alu_in_kista|Mux1~2_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux1~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux1~4_combout\);

-- Location: LCCOMB_X26_Y36_N10
\dp|rf|register_arr~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr~45_combout\ = (\dp|rf|register_arr~19_combout\ & ((\dp|rf|register_arr~44_combout\) # ((\dp|the_best_alu_in_kista|Mux1~4_combout\ & \dp|rf|register_arr~20_combout\)))) # (!\dp|rf|register_arr~19_combout\ & 
-- (((\dp|the_best_alu_in_kista|Mux1~4_combout\ & \dp|rf|register_arr~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr~19_combout\,
	datab => \dp|rf|register_arr~44_combout\,
	datac => \dp|the_best_alu_in_kista|Mux1~4_combout\,
	datad => \dp|rf|register_arr~20_combout\,
	combout => \dp|rf|register_arr~45_combout\);

-- Location: FF_X26_Y34_N21
\dp|rf|register_arr[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[2][14]~q\);

-- Location: FF_X26_Y36_N11
\dp|rf|register_arr[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr~45_combout\,
	ena => \dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[0][14]~q\);

-- Location: LCCOMB_X26_Y34_N30
\dp|rf|QA[14]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~88_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|register_arr[1][14]~q\) # ((\dp|Selector34~0_combout\)))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|register_arr[0][14]~q\ & !\dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[1][14]~q\,
	datab => \dp|Selector35~0_combout\,
	datac => \dp|rf|register_arr[0][14]~q\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[14]~88_combout\);

-- Location: LCCOMB_X26_Y34_N28
\dp|rf|QA[14]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~89_combout\ = (\dp|rf|QA[14]~88_combout\ & ((\dp|rf|register_arr[3][14]~q\) # ((!\dp|Selector34~0_combout\)))) # (!\dp|rf|QA[14]~88_combout\ & (((\dp|rf|register_arr[2][14]~q\ & \dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[3][14]~q\,
	datab => \dp|rf|register_arr[2][14]~q\,
	datac => \dp|rf|QA[14]~88_combout\,
	datad => \dp|Selector34~0_combout\,
	combout => \dp|rf|QA[14]~89_combout\);

-- Location: LCCOMB_X27_Y35_N0
\dp|rf|register_arr[5][14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[5][14]~feeder_combout\ = \dp|rf|register_arr~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|rf|register_arr~45_combout\,
	combout => \dp|rf|register_arr[5][14]~feeder_combout\);

-- Location: FF_X27_Y35_N1
\dp|rf|register_arr[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[5][14]~feeder_combout\,
	ena => \dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[5][14]~q\);

-- Location: LCCOMB_X24_Y36_N6
\dp|rf|register_arr[4][14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|register_arr[4][14]~feeder_combout\ = \dp|rf|register_arr~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|rf|register_arr~45_combout\,
	combout => \dp|rf|register_arr[4][14]~feeder_combout\);

-- Location: FF_X24_Y36_N7
\dp|rf|register_arr[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|rf|register_arr[4][14]~feeder_combout\,
	ena => \dp|rf|register_arr[4][11]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[4][14]~q\);

-- Location: FF_X25_Y36_N11
\dp|rf|register_arr[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \dp|rf|register_arr[6][7]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dp|rf|register_arr[6][14]~q\);

-- Location: LCCOMB_X25_Y36_N10
\dp|rf|QA[14]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~86_combout\ = (\dp|Selector34~0_combout\ & (((\dp|rf|register_arr[6][14]~q\) # (\dp|Selector35~0_combout\)))) # (!\dp|Selector34~0_combout\ & (\dp|rf|register_arr[4][14]~q\ & ((!\dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector34~0_combout\,
	datab => \dp|rf|register_arr[4][14]~q\,
	datac => \dp|rf|register_arr[6][14]~q\,
	datad => \dp|Selector35~0_combout\,
	combout => \dp|rf|QA[14]~86_combout\);

-- Location: LCCOMB_X27_Y35_N18
\dp|rf|QA[14]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~87_combout\ = (\dp|Selector35~0_combout\ & ((\dp|rf|QA[14]~86_combout\ & (\dp|rf|register_arr[7][14]~q\)) # (!\dp|rf|QA[14]~86_combout\ & ((\dp|rf|register_arr[5][14]~q\))))) # (!\dp|Selector35~0_combout\ & (((\dp|rf|QA[14]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|register_arr[7][14]~q\,
	datab => \dp|rf|register_arr[5][14]~q\,
	datac => \dp|Selector35~0_combout\,
	datad => \dp|rf|QA[14]~86_combout\,
	combout => \dp|rf|QA[14]~87_combout\);

-- Location: LCCOMB_X27_Y35_N4
\dp|rf|QA[14]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|rf|QA[14]~90_combout\ = (\dp|Selector32~3_combout\ & ((\dp|Selector33~0_combout\ & ((\dp|rf|QA[14]~87_combout\))) # (!\dp|Selector33~0_combout\ & (\dp|rf|QA[14]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~3_combout\,
	datab => \dp|Selector33~0_combout\,
	datac => \dp|rf|QA[14]~89_combout\,
	datad => \dp|rf|QA[14]~87_combout\,
	combout => \dp|rf|QA[14]~90_combout\);

-- Location: LCCOMB_X23_Y34_N30
\dp|the_best_alu_in_kista|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add0~30_combout\ = \dp|rf|QA[15]~96_combout\ $ (\dp|the_best_alu_in_kista|Add0~29\ $ (\dp|Selector16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datad => \dp|Selector16~5_combout\,
	cin => \dp|the_best_alu_in_kista|Add0~29\,
	combout => \dp|the_best_alu_in_kista|Add0~30_combout\);

-- Location: LCCOMB_X22_Y34_N14
\dp|the_best_alu_in_kista|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux0~0_combout\ = (\dp|rf|QA[15]~96_combout\ & ((\ucode|Mux7~5_combout\) # ((\dp|Selector16~5_combout\ & \ucode|Mux6~2_combout\)))) # (!\dp|rf|QA[15]~96_combout\ & (\ucode|Mux7~5_combout\ & ((\dp|Selector16~5_combout\) # 
-- (!\ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datab => \dp|Selector16~5_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \ucode|Mux6~2_combout\,
	combout => \dp|the_best_alu_in_kista|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y33_N30
\dp|the_best_alu_in_kista|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Add1~30_combout\ = \dp|rf|QA[15]~96_combout\ $ (\dp|the_best_alu_in_kista|Add1~29\ $ (!\dp|Selector16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datad => \dp|Selector16~5_combout\,
	cin => \dp|the_best_alu_in_kista|Add1~29\,
	combout => \dp|the_best_alu_in_kista|Add1~30_combout\);

-- Location: LCCOMB_X22_Y34_N18
\dp|the_best_alu_in_kista|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux0~1_combout\ = (\ucode|Mux6~2_combout\ & (((\dp|the_best_alu_in_kista|Mux0~0_combout\)))) # (!\ucode|Mux6~2_combout\ & ((\dp|the_best_alu_in_kista|Mux0~0_combout\ & ((\dp|the_best_alu_in_kista|Add1~30_combout\))) # 
-- (!\dp|the_best_alu_in_kista|Mux0~0_combout\ & (\dp|the_best_alu_in_kista|Add0~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datab => \dp|the_best_alu_in_kista|Add0~30_combout\,
	datac => \dp|the_best_alu_in_kista|Mux0~0_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~30_combout\,
	combout => \dp|the_best_alu_in_kista|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y34_N26
\dp|the_best_alu_in_kista|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux0~4_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux0~2_combout\) # ((\dp|the_best_alu_in_kista|Mux0~3_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux0~2_combout\,
	datab => \dp|the_best_alu_in_kista|Mux0~3_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux0~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux0~4_combout\);

-- Location: LCCOMB_X26_Y34_N12
\Z_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Z_reg~2_combout\ = (!\ucode|Mux29~0_combout\ & (!\RESET~input_o\ & (!uPC(1) & uPC(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux29~0_combout\,
	datab => \RESET~input_o\,
	datac => uPC(1),
	datad => uPC(0),
	combout => \Z_reg~2_combout\);

-- Location: FF_X22_Y34_N1
Neg_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	sload => VCC,
	ena => \Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Neg_reg~q\);

-- Location: LCCOMB_X25_Y34_N26
\ucode|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~0_combout\ = (\ucode|Mux11~0_combout\ & (\Neg_reg~q\)) # (!\ucode|Mux11~0_combout\ & (((\Mux3~0_combout\) # (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux11~0_combout\,
	datab => \Neg_reg~q\,
	datac => \Mux3~0_combout\,
	datad => \Mux3~1_combout\,
	combout => \ucode|Mux7~0_combout\);

-- Location: LCCOMB_X24_Y34_N20
\ucode|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~1_combout\ = (instruction_reg(14) & (instruction_reg(13) & ((!uPC(0))))) # (!instruction_reg(14) & (((!\ucode|Mux7~0_combout\ & uPC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => \ucode|Mux7~0_combout\,
	datac => instruction_reg(14),
	datad => uPC(0),
	combout => \ucode|Mux7~1_combout\);

-- Location: LCCOMB_X24_Y34_N18
\ucode|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~2_combout\ = (instruction_reg(15) & (instruction_reg(12) & \ucode|Mux7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(15),
	datac => instruction_reg(12),
	datad => \ucode|Mux7~1_combout\,
	combout => \ucode|Mux7~2_combout\);

-- Location: LCCOMB_X24_Y34_N0
\ucode|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux7~5_combout\ = (uPC(1) & (\dp|Selector32~0_combout\)) # (!uPC(1) & (((\ucode|Mux7~4_combout\) # (\ucode|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~0_combout\,
	datab => \ucode|Mux7~4_combout\,
	datac => uPC(1),
	datad => \ucode|Mux7~2_combout\,
	combout => \ucode|Mux7~5_combout\);

-- Location: LCCOMB_X27_Y34_N4
\dp|the_best_alu_in_kista|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Equal0~0_combout\ = (!\ucode|Mux6~2_combout\ & (\ucode|Mux7~5_combout\ & !\ucode|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \ucode|Mux5~1_combout\,
	combout => \dp|the_best_alu_in_kista|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y34_N2
\dp|the_best_alu_in_kista|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Equal1~0_combout\ = (!\ucode|Mux6~2_combout\ & (!\ucode|Mux7~5_combout\ & !\ucode|Mux5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~2_combout\,
	datac => \ucode|Mux7~5_combout\,
	datad => \ucode|Mux5~1_combout\,
	combout => \dp|the_best_alu_in_kista|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y34_N12
\dp|the_best_alu_in_kista|add_overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|add_overflow~0_combout\ = ((\dp|rf|QA[15]~96_combout\ & ((\dp|the_best_alu_in_kista|Mux0~4_combout\) # (!\dp|Selector16~5_combout\))) # (!\dp|rf|QA[15]~96_combout\ & ((\dp|Selector16~5_combout\) # 
-- (!\dp|the_best_alu_in_kista|Mux0~4_combout\)))) # (!\dp|the_best_alu_in_kista|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datab => \dp|Selector16~5_combout\,
	datac => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	datad => \dp|the_best_alu_in_kista|Equal1~0_combout\,
	combout => \dp|the_best_alu_in_kista|add_overflow~0_combout\);

-- Location: LCCOMB_X22_Y34_N20
\dp|the_best_alu_in_kista|add_overflow\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|add_overflow~combout\ = (\dp|the_best_alu_in_kista|Equal0~0_combout\ & (\dp|the_best_alu_in_kista|add_overflow~combout\)) # (!\dp|the_best_alu_in_kista|Equal0~0_combout\ & ((!\dp|the_best_alu_in_kista|add_overflow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|the_best_alu_in_kista|add_overflow~combout\,
	datac => \dp|the_best_alu_in_kista|Equal0~0_combout\,
	datad => \dp|the_best_alu_in_kista|add_overflow~0_combout\,
	combout => \dp|the_best_alu_in_kista|add_overflow~combout\);

-- Location: LCCOMB_X22_Y34_N6
\dp|the_best_alu_in_kista|sub_overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|sub_overflow~0_combout\ = (\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Mux0~2_combout\) # ((\dp|the_best_alu_in_kista|Mux0~3_combout\)))) # (!\ucode|Mux5~1_combout\ & (((\dp|the_best_alu_in_kista|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux0~2_combout\,
	datab => \dp|the_best_alu_in_kista|Mux0~3_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \dp|the_best_alu_in_kista|Mux0~1_combout\,
	combout => \dp|the_best_alu_in_kista|sub_overflow~0_combout\);

-- Location: LCCOMB_X22_Y34_N2
\dp|the_best_alu_in_kista|sub_overflow~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|sub_overflow~1_combout\ = (\dp|the_best_alu_in_kista|Equal0~0_combout\ & ((\dp|rf|QA[15]~96_combout\ & (!\dp|Selector16~5_combout\ & !\dp|the_best_alu_in_kista|sub_overflow~0_combout\)) # (!\dp|rf|QA[15]~96_combout\ & 
-- (\dp|Selector16~5_combout\ & \dp|the_best_alu_in_kista|sub_overflow~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[15]~96_combout\,
	datab => \dp|Selector16~5_combout\,
	datac => \dp|the_best_alu_in_kista|Equal0~0_combout\,
	datad => \dp|the_best_alu_in_kista|sub_overflow~0_combout\,
	combout => \dp|the_best_alu_in_kista|sub_overflow~1_combout\);

-- Location: LCCOMB_X22_Y34_N0
\dp|the_best_alu_in_kista|sub_overflow\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|sub_overflow~combout\ = (\dp|the_best_alu_in_kista|Equal1~0_combout\ & (\dp|the_best_alu_in_kista|sub_overflow~combout\)) # (!\dp|the_best_alu_in_kista|Equal1~0_combout\ & ((\dp|the_best_alu_in_kista|sub_overflow~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|sub_overflow~combout\,
	datab => \dp|the_best_alu_in_kista|sub_overflow~1_combout\,
	datad => \dp|the_best_alu_in_kista|Equal1~0_combout\,
	combout => \dp|the_best_alu_in_kista|sub_overflow~combout\);

-- Location: LCCOMB_X22_Y34_N10
\dp|the_best_alu_in_kista|O_Flag\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|O_Flag~combout\ = (\dp|the_best_alu_in_kista|add_overflow~combout\) # (\dp|the_best_alu_in_kista|sub_overflow~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|the_best_alu_in_kista|add_overflow~combout\,
	datac => \dp|the_best_alu_in_kista|sub_overflow~combout\,
	combout => \dp|the_best_alu_in_kista|O_Flag~combout\);

-- Location: FF_X22_Y34_N11
O_reg : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \dp|the_best_alu_in_kista|O_Flag~combout\,
	ena => \Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \O_reg~q\);

-- Location: LCCOMB_X25_Y34_N30
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (instruction_reg(12) & (\O_reg~q\ & (!instruction_reg(13) & \ucode|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(12),
	datab => \O_reg~q\,
	datac => instruction_reg(13),
	datad => \ucode|Mux10~0_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X26_Y34_N10
\Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\ucode|Mux11~0_combout\ & (\Neg_reg~q\)) # (!\ucode|Mux11~0_combout\ & (((\Mux3~1_combout\) # (\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Neg_reg~q\,
	datab => \ucode|Mux11~0_combout\,
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X23_Y36_N16
\ucode|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux6~1_combout\ = (instruction_reg(15) & (!instruction_reg(14) & ((\Mux3~2_combout\) # (!\ucode|Mux6~0_combout\)))) # (!instruction_reg(15) & (\ucode|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ucode|Mux6~0_combout\,
	datab => \Mux3~2_combout\,
	datac => instruction_reg(15),
	datad => instruction_reg(14),
	combout => \ucode|Mux6~1_combout\);

-- Location: LCCOMB_X23_Y36_N2
\ucode|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux6~2_combout\ = (\dp|Selector32~0_combout\) # ((uPC(0) & ((uPC(1)) # (!\ucode|Mux6~1_combout\))) # (!uPC(0) & ((!uPC(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|Selector32~0_combout\,
	datab => \ucode|Mux6~1_combout\,
	datac => uPC(0),
	datad => uPC(1),
	combout => \ucode|Mux6~2_combout\);

-- Location: LCCOMB_X24_Y34_N12
\dp|the_best_alu_in_kista|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux15~0_combout\ = (\ucode|Mux7~5_combout\ & ((\ucode|Mux5~1_combout\ & (!\dp|rf|QA[0]~6_combout\)) # (!\ucode|Mux5~1_combout\ & ((\dp|the_best_alu_in_kista|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|rf|QA[0]~6_combout\,
	datab => \ucode|Mux7~5_combout\,
	datac => \ucode|Mux5~1_combout\,
	datad => \dp|the_best_alu_in_kista|Add1~0_combout\,
	combout => \dp|the_best_alu_in_kista|Mux15~0_combout\);

-- Location: LCCOMB_X25_Y33_N4
\dp|the_best_alu_in_kista|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux15~1_combout\ = (!\ucode|Mux6~2_combout\ & ((\dp|the_best_alu_in_kista|Mux15~0_combout\) # ((\dp|the_best_alu_in_kista|Add0~0_combout\ & !\ucode|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Add0~0_combout\,
	datab => \ucode|Mux6~2_combout\,
	datac => \dp|the_best_alu_in_kista|Mux15~0_combout\,
	datad => \ucode|Mux7~5_combout\,
	combout => \dp|the_best_alu_in_kista|Mux15~1_combout\);

-- Location: LCCOMB_X25_Y33_N0
\dp|the_best_alu_in_kista|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \dp|the_best_alu_in_kista|Mux15~4_combout\ = (\dp|the_best_alu_in_kista|Mux15~1_combout\) # ((\dp|the_best_alu_in_kista|Mux15~3_combout\ & \ucode|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux15~3_combout\,
	datac => \ucode|Mux6~2_combout\,
	datad => \dp|the_best_alu_in_kista|Mux15~1_combout\,
	combout => \dp|the_best_alu_in_kista|Mux15~4_combout\);

-- Location: FF_X25_Y33_N1
\Data_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux15~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[0]~reg0_q\);

-- Location: FF_X25_Y33_N19
\Data_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux14~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[1]~reg0_q\);

-- Location: FF_X22_Y36_N17
\Data_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux13~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[2]~reg0_q\);

-- Location: LCCOMB_X22_Y36_N2
\Data_out[3]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[3]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux12~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dp|the_best_alu_in_kista|Mux12~4_combout\,
	combout => \Data_out[3]~reg0feeder_combout\);

-- Location: FF_X22_Y36_N3
\Data_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[3]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[3]~reg0_q\);

-- Location: LCCOMB_X22_Y35_N4
\Data_out[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[4]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux11~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux11~5_combout\,
	combout => \Data_out[4]~reg0feeder_combout\);

-- Location: FF_X22_Y35_N5
\Data_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[4]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[4]~reg0_q\);

-- Location: FF_X23_Y33_N21
\Data_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux10~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[5]~reg0_q\);

-- Location: LCCOMB_X22_Y35_N6
\Data_out[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[6]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux9~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux9~5_combout\,
	combout => \Data_out[6]~reg0feeder_combout\);

-- Location: FF_X22_Y35_N7
\Data_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[6]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[6]~reg0_q\);

-- Location: LCCOMB_X27_Y33_N24
\Data_out[7]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[7]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux8~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux8~4_combout\,
	combout => \Data_out[7]~reg0feeder_combout\);

-- Location: FF_X27_Y33_N25
\Data_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[7]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[7]~reg0_q\);

-- Location: LCCOMB_X25_Y33_N20
\Data_out[8]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[8]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux7~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|the_best_alu_in_kista|Mux7~5_combout\,
	combout => \Data_out[8]~reg0feeder_combout\);

-- Location: FF_X25_Y33_N21
\Data_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[8]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[8]~reg0_q\);

-- Location: FF_X23_Y32_N25
\Data_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux6~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[9]~reg0_q\);

-- Location: FF_X22_Y35_N9
\Data_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux5~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[10]~reg0_q\);

-- Location: FF_X21_Y32_N21
\Data_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux4~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[11]~reg0_q\);

-- Location: FF_X22_Y35_N31
\Data_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux3~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[12]~reg0_q\);

-- Location: FF_X27_Y34_N13
\Data_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux2~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[13]~reg0_q\);

-- Location: LCCOMB_X22_Y35_N0
\Data_out[14]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Data_out[14]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux1~4_combout\,
	combout => \Data_out[14]~reg0feeder_combout\);

-- Location: FF_X22_Y35_N1
\Data_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Data_out[14]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[14]~reg0_q\);

-- Location: FF_X23_Y34_N27
\Data_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Data_out[15]~reg0_q\);

-- Location: LCCOMB_X25_Y33_N22
\Address_out[0]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Address_out[0]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux15~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux15~4_combout\,
	combout => \Address_out[0]~reg0feeder_combout\);

-- Location: LCCOMB_X24_Y36_N16
\ucode|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux31~0_combout\ = (instruction_reg(15) & (((instruction_reg(13) & instruction_reg(12))) # (!instruction_reg(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => instruction_reg(13),
	datab => instruction_reg(12),
	datac => instruction_reg(14),
	datad => instruction_reg(15),
	combout => \ucode|Mux31~0_combout\);

-- Location: LCCOMB_X24_Y35_N16
\ucode|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux14~2_combout\ = (\dp|Selector32~0_combout\) # ((uPC(0) & (\Mux0~0_combout\ & !instruction_reg(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(0),
	datab => \Mux0~0_combout\,
	datac => \dp|Selector32~0_combout\,
	datad => instruction_reg(12),
	combout => \ucode|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y36_N14
\ucode|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ucode|Mux14~3_combout\ = (uPC(1) & (((\ucode|Mux14~2_combout\)))) # (!uPC(1) & (\ucode|Mux31~0_combout\ & ((uPC(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => uPC(1),
	datab => \ucode|Mux31~0_combout\,
	datac => \ucode|Mux14~2_combout\,
	datad => uPC(0),
	combout => \ucode|Mux14~3_combout\);

-- Location: FF_X25_Y33_N23
\Address_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address_out[0]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[0]~reg0_q\);

-- Location: LCCOMB_X25_Y33_N28
\Address_out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Address_out[1]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux14~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dp|the_best_alu_in_kista|Mux14~4_combout\,
	combout => \Address_out[1]~reg0feeder_combout\);

-- Location: FF_X25_Y33_N29
\Address_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address_out[1]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[1]~reg0_q\);

-- Location: FF_X22_Y36_N25
\Address_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux13~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[2]~reg0_q\);

-- Location: FF_X22_Y36_N7
\Address_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux12~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[3]~reg0_q\);

-- Location: FF_X22_Y33_N17
\Address_out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux11~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[4]~reg0_q\);

-- Location: FF_X22_Y33_N27
\Address_out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux10~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[5]~reg0_q\);

-- Location: FF_X22_Y35_N19
\Address_out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux9~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[6]~reg0_q\);

-- Location: FF_X23_Y36_N29
\Address_out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux8~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[7]~reg0_q\);

-- Location: FF_X25_Y33_N31
\Address_out[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux7~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[8]~reg0_q\);

-- Location: FF_X23_Y33_N27
\Address_out[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux6~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[9]~reg0_q\);

-- Location: FF_X22_Y35_N29
\Address_out[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux5~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[10]~reg0_q\);

-- Location: FF_X22_Y35_N15
\Address_out[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux4~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[11]~reg0_q\);

-- Location: LCCOMB_X22_Y35_N12
\Address_out[12]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Address_out[12]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux3~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dp|the_best_alu_in_kista|Mux3~5_combout\,
	combout => \Address_out[12]~reg0feeder_combout\);

-- Location: FF_X22_Y35_N13
\Address_out[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address_out[12]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[12]~reg0_q\);

-- Location: LCCOMB_X28_Y34_N4
\Address_out[13]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Address_out[13]~reg0feeder_combout\ = \dp|the_best_alu_in_kista|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dp|the_best_alu_in_kista|Mux2~4_combout\,
	combout => \Address_out[13]~reg0feeder_combout\);

-- Location: FF_X28_Y34_N5
\Address_out[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Address_out[13]~reg0feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[13]~reg0_q\);

-- Location: FF_X22_Y36_N29
\Address_out[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \dp|the_best_alu_in_kista|Mux1~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[14]~reg0_q\);

-- Location: FF_X23_Y34_N17
\Address_out[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \dp|the_best_alu_in_kista|Mux0~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Address_out[15]~reg0_q\);

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


