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

-- DATE "10/11/2021 16:45:47"

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

ENTITY 	Computer IS
    PORT (
	CLK : IN std_logic;
	RESET : IN std_logic;
	PIO : OUT std_logic_vector(15 DOWNTO 0)
	);
END Computer;

-- Design Ports Information
-- PIO[0]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[1]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[2]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[5]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[7]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[8]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[10]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[13]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[14]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PIO[15]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Computer IS
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
SIGNAL ww_PIO : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~8_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~6_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~12_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~14_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~16_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~6_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~8_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~14_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~16_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~24_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~29\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~30_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~24_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~27\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~28_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~29\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~30_combout\ : std_logic;
SIGNAL \mcu|Mux0~0_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \mcu|O_reg~q\ : std_logic;
SIGNAL \mcu|Mux3~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~1_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~2_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~3_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux5~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux6~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~9_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~17_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][8]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][8]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][8]~q\ : std_logic;
SIGNAL \mcu|dp|Selector23~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~55_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~56_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~57_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~58_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~59_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][1]~q\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux4~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~68_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~71_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[2]~74_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~75_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux31~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux6~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector18~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][12]~q\ : std_logic;
SIGNAL \mcu|dp|Selector19~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~96_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~97_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~98_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux0~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux1~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux1~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux2~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux8~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|O_Flag~combout\ : std_logic;
SIGNAL \mcu|ucode|Mux0~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~22_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~24_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~28_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~34_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Equal0~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|sub_overflow~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Equal1~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|add_overflow~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|sub_overflow~combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|add_overflow~combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][11]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][8]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][8]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][4]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][12]~feeder_combout\ : std_logic;
SIGNAL \PIO[0]~output_o\ : std_logic;
SIGNAL \PIO[1]~output_o\ : std_logic;
SIGNAL \PIO[2]~output_o\ : std_logic;
SIGNAL \PIO[3]~output_o\ : std_logic;
SIGNAL \PIO[4]~output_o\ : std_logic;
SIGNAL \PIO[5]~output_o\ : std_logic;
SIGNAL \PIO[6]~output_o\ : std_logic;
SIGNAL \PIO[7]~output_o\ : std_logic;
SIGNAL \PIO[8]~output_o\ : std_logic;
SIGNAL \PIO[9]~output_o\ : std_logic;
SIGNAL \PIO[10]~output_o\ : std_logic;
SIGNAL \PIO[11]~output_o\ : std_logic;
SIGNAL \PIO[12]~output_o\ : std_logic;
SIGNAL \PIO[13]~output_o\ : std_logic;
SIGNAL \PIO[14]~output_o\ : std_logic;
SIGNAL \PIO[15]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mcu|uPC[0]~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \mcu|ucode|Mux8~1_combout\ : std_logic;
SIGNAL \mcu|Address_out[0]~feeder_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux14~2_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux14~3_combout\ : std_logic;
SIGNAL \mcu|Mux0~1_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux0~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~18_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux8~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~17_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~29_combout\ : std_logic;
SIGNAL \mcu|Mux0~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~25_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][8]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][12]~10_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][12]~11_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][8]~q\ : std_logic;
SIGNAL \mcu|dp|Selector34~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][8]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][12]~12_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~23_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][15]~15_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][9]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][9]~q\ : std_logic;
SIGNAL \mcu|ucode|Mux22~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux4~2_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux4~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][8]~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][12]~13_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][9]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~46_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~47_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][12]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][12]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][12]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~93_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~94_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][12]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][7]~6_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][3]~9_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][12]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][7]~7_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][12]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~91_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~92_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~95_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][12]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~44_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~45_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][13]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][8]~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~86_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~87_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][13]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][13]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~88_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~89_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[13]~90_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[12]~99_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~10_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~11_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~65_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~20_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~21_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~15_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~16_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~66_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][9]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][9]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~20_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~21_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~67_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][7]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][7]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][7]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][7]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~32_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~33_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~69_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~11\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~13\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~15\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~17\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~19\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~21\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~23\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~25\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~26_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux2~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][13]~q\ : std_logic;
SIGNAL \mcu|instruction_reg[15]~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector18~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][13]~q\ : std_logic;
SIGNAL \mcu|dp|Selector18~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector18~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector18~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector18~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][11]~q\ : std_logic;
SIGNAL \mcu|dp|Selector20~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector20~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][11]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][11]~q\ : std_logic;
SIGNAL \mcu|dp|Selector20~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector20~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector20~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector20~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][10]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~18_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[10]~19_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][9]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][9]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][9]~q\ : std_logic;
SIGNAL \mcu|dp|Selector22~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector22~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][9]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][9]~q\ : std_logic;
SIGNAL \mcu|dp|Selector22~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector22~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector22~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector22~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~37_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~38_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~39_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~30_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~31_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][5]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~40_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~41_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][5]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][5]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][5]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~42_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~43_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[5]~44_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][4]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][4]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][4]~q\ : std_logic;
SIGNAL \mcu|dp|Selector27~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector27~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][4]~q\ : std_logic;
SIGNAL \mcu|dp|Selector27~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector27~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector27~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector27~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~42_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~43_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][14]~q\ : std_logic;
SIGNAL \mcu|dp|Selector17~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector17~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][14]~q\ : std_logic;
SIGNAL \mcu|dp|Selector17~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector17~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector17~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector17~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux1~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][14]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~83_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~84_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][14]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~81_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~82_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[14]~85_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~27\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~28_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][8]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][8]~q\ : std_logic;
SIGNAL \mcu|dp|Selector23~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector23~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector23~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector23~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector23~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][6]~q\ : std_logic;
SIGNAL \mcu|dp|Selector25~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector25~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][6]~q\ : std_logic;
SIGNAL \mcu|dp|Selector25~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector25~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector25~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector25~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~35_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][3]~q\ : std_logic;
SIGNAL \mcu|dp|Selector28~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector28~1_combout\ : std_logic;
SIGNAL \mcu|Mux0~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector28~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][3]~q\ : std_logic;
SIGNAL \mcu|dp|Selector28~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector28~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector28~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][0]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~2_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][0]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][0]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~6_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~7_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[0]~8_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~1\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~3\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~5\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~7\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~9\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~11\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~13\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~15\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~17\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~19\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~21\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~23\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~25\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~27\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~28_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux1~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\ : std_logic;
SIGNAL \mcu|instruction_reg[1]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~38_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~39_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][1]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~62_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~63_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][1]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][1]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~60_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~61_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[1]~64_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][0]~q\ : std_logic;
SIGNAL \mcu|dp|Selector31~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][0]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][0]~q\ : std_logic;
SIGNAL \mcu|dp|Selector31~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~7_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~1\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~3\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~5\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~7\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~9\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~11\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~13\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~15\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~17\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~19\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~21\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~23\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~25\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~26_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~26_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux2~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux2~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\ : std_logic;
SIGNAL \mcu|Data_out[13]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|Selector19~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][12]~q\ : std_logic;
SIGNAL \mcu|dp|Selector19~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][12]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][12]~q\ : std_logic;
SIGNAL \mcu|dp|Selector19~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector19~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector19~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~24_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~16_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~19_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][11]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~12_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~13_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[11]~14_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~22_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux4~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~22_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~22_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux4~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux4~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\ : std_logic;
SIGNAL \mcu|Data_out[11]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][10]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][10]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][10]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][10]~q\ : std_logic;
SIGNAL \mcu|dp|Selector21~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector21~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][10]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][10]~q\ : std_logic;
SIGNAL \mcu|dp|Selector21~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector21~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector21~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector21~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~20_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~20_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~20_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\ : std_logic;
SIGNAL \mcu|dp|Selector35~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~22_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~23_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[9]~24_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~18_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux6~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~18_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~18_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux6~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux6~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][7]~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][14]~14_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][8]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~27_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~28_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][8]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~25_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~26_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[8]~29_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~16_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~26_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~27_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][7]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][7]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~30_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~31_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[7]~34_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector24~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux8~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~14_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux8~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux8~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][8]~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][11]~8_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][6]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~35_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~36_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[6]~70_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~12_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~12_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\ : std_logic;
SIGNAL \mcu|dp|Selector33~0_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~47_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~48_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~72_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][3]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][3]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~50_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~51_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][3]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~52_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~53_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~73_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~1\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~3\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~5\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~7\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~9\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~10_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector26~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux10~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux10~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~10_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~10_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux10~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux10~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~32_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~33_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][4]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][4]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~45_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~46_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[4]~49_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~8_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\ : std_logic;
SIGNAL \mcu|instruction_reg[12]~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector32~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector32~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector32~3_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[3]~54_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux12~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux12~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~6_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux12~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux12~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux21~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector31~6_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~36_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~37_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][2]~q\ : std_logic;
SIGNAL \mcu|dp|Selector29~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector29~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][2]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][2]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][2]~q\ : std_logic;
SIGNAL \mcu|dp|Selector29~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector29~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector29~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector29~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add0~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~4_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\ : std_logic;
SIGNAL \mcu|instruction_reg[13]~2_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux23~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux5~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~40_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr~41_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[4][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[6][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~76_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[7][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[5][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~77_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[2][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[3][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[1][15]~q\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~78_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~79_combout\ : std_logic;
SIGNAL \mcu|dp|rf|QA[15]~80_combout\ : std_logic;
SIGNAL \mcu|dp|Selector16~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector16~1_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][15]~q\ : std_logic;
SIGNAL \mcu|dp|Selector16~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector16~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector16~4_combout\ : std_logic;
SIGNAL \mcu|dp|Selector16~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux0~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~29\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~30_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux0~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux0~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux29~0_combout\ : std_logic;
SIGNAL \mcu|Z_reg~2_combout\ : std_logic;
SIGNAL \mcu|Neg_reg~q\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|z_tmp~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|z_tmp~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|z_tmp~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|z_tmp~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|z_tmp~4_combout\ : std_logic;
SIGNAL \mcu|Z_reg~q\ : std_logic;
SIGNAL \mcu|ucode|Mux10~0_combout\ : std_logic;
SIGNAL \mcu|Mux3~1_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux11~0_combout\ : std_logic;
SIGNAL \mcu|Mux3~2_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~4_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux7~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux14~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux14~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector30~3_combout\ : std_logic;
SIGNAL \mcu|dp|Selector30~4_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][1]~feeder_combout\ : std_logic;
SIGNAL \mcu|dp|rf|register_arr[0][1]~q\ : std_logic;
SIGNAL \mcu|dp|Selector30~0_combout\ : std_logic;
SIGNAL \mcu|dp|Selector30~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector30~2_combout\ : std_logic;
SIGNAL \mcu|dp|Selector30~5_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux14~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux14~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\ : std_logic;
SIGNAL \mcu|instruction_reg[14]~1_combout\ : std_logic;
SIGNAL \mcu|dp|Selector32~0_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux6~1_combout\ : std_logic;
SIGNAL \mcu|ucode|Mux6~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add2~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux15~2_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux15~3_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Add1~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux15~0_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux15~1_combout\ : std_logic;
SIGNAL \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\ : std_logic;
SIGNAL \gpio_per|Dout[0]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \mcu|Address_out[9]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \gpio_per|Dout[2]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[4]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[7]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[9]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[10]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[12]~feeder_combout\ : std_logic;
SIGNAL \gpio_per|Dout[13]~feeder_combout\ : std_logic;
SIGNAL \mcu|uPC\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \mcu|instruction_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mcu|Data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mcu|Address_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \gpio_per|Dout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESET <= RESET;
PIO <= ww_PIO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \mcu|Data_out\(15) & \mcu|Data_out\(14) & \mcu|Data_out\(13) & \mcu|Data_out\(12) & \mcu|Data_out\(11) & \mcu|Data_out\(10) & \mcu|Data_out\(9) & 
\mcu|Data_out\(8) & \mcu|Data_out\(7) & \mcu|Data_out\(6) & \mcu|Data_out\(5) & \mcu|Data_out\(4) & \mcu|Data_out\(3) & \mcu|Data_out\(2) & \mcu|Data_out\(1) & \mcu|Data_out\(0));

\memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\mcu|Address_out\(7) & \mcu|Address_out\(6) & \mcu|Address_out\(5) & \mcu|Address_out\(4) & \mcu|Address_out\(3) & \mcu|Address_out\(2) & \mcu|Address_out\(1) & 
\mcu|Address_out\(0));

\memory|altsyncram_component|auto_generated|q_a\(0) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\memory|altsyncram_component|auto_generated|q_a\(1) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\memory|altsyncram_component|auto_generated|q_a\(2) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\memory|altsyncram_component|auto_generated|q_a\(3) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\memory|altsyncram_component|auto_generated|q_a\(4) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\memory|altsyncram_component|auto_generated|q_a\(5) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\memory|altsyncram_component|auto_generated|q_a\(6) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\memory|altsyncram_component|auto_generated|q_a\(7) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\memory|altsyncram_component|auto_generated|q_a\(8) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\memory|altsyncram_component|auto_generated|q_a\(9) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\memory|altsyncram_component|auto_generated|q_a\(10) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\memory|altsyncram_component|auto_generated|q_a\(11) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\memory|altsyncram_component|auto_generated|q_a\(12) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\memory|altsyncram_component|auto_generated|q_a\(13) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\memory|altsyncram_component|auto_generated|q_a\(14) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\memory|altsyncram_component|auto_generated|q_a\(15) <= \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;

-- Location: LCCOMB_X13_Y24_N0
\mcu|dp|the_best_alu_in_kista|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~0_combout\ = (\mcu|dp|Selector31~7_combout\ & (\mcu|dp|rf|QA[0]~8_combout\ $ (VCC))) # (!\mcu|dp|Selector31~7_combout\ & (\mcu|dp|rf|QA[0]~8_combout\ & VCC))
-- \mcu|dp|the_best_alu_in_kista|Add0~1\ = CARRY((\mcu|dp|Selector31~7_combout\ & \mcu|dp|rf|QA[0]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~7_combout\,
	datab => \mcu|dp|rf|QA[0]~8_combout\,
	datad => VCC,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~0_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~1\);

-- Location: LCCOMB_X13_Y23_N8
\mcu|dp|the_best_alu_in_kista|Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~8_combout\ = ((\mcu|dp|rf|QA[4]~49_combout\ $ (\mcu|dp|Selector27~5_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~7\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~9\ = CARRY((\mcu|dp|rf|QA[4]~49_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~7\) # (!\mcu|dp|Selector27~5_combout\))) # (!\mcu|dp|rf|QA[4]~49_combout\ & (!\mcu|dp|Selector27~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[4]~49_combout\,
	datab => \mcu|dp|Selector27~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~7\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~8_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~9\);

-- Location: LCCOMB_X13_Y24_N2
\mcu|dp|the_best_alu_in_kista|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~2_combout\ = (\mcu|dp|Selector30~5_combout\ & ((\mcu|dp|rf|QA[1]~64_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~1\ & VCC)) # (!\mcu|dp|rf|QA[1]~64_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~1\)))) # 
-- (!\mcu|dp|Selector30~5_combout\ & ((\mcu|dp|rf|QA[1]~64_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~1\)) # (!\mcu|dp|rf|QA[1]~64_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~1\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~3\ = CARRY((\mcu|dp|Selector30~5_combout\ & (!\mcu|dp|rf|QA[1]~64_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~1\)) # (!\mcu|dp|Selector30~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~1\) # 
-- (!\mcu|dp|rf|QA[1]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector30~5_combout\,
	datab => \mcu|dp|rf|QA[1]~64_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~1\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~2_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~3\);

-- Location: LCCOMB_X13_Y24_N6
\mcu|dp|the_best_alu_in_kista|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~6_combout\ = (\mcu|dp|rf|QA[3]~54_combout\ & ((\mcu|dp|Selector28~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~5\ & VCC)) # (!\mcu|dp|Selector28~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~5\)))) # 
-- (!\mcu|dp|rf|QA[3]~54_combout\ & ((\mcu|dp|Selector28~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~5\)) # (!\mcu|dp|Selector28~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~5\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~7\ = CARRY((\mcu|dp|rf|QA[3]~54_combout\ & (!\mcu|dp|Selector28~5_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~5\)) # (!\mcu|dp|rf|QA[3]~54_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~5\) # 
-- (!\mcu|dp|Selector28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[3]~54_combout\,
	datab => \mcu|dp|Selector28~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~5\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~6_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~7\);

-- Location: LCCOMB_X13_Y24_N12
\mcu|dp|the_best_alu_in_kista|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~12_combout\ = ((\mcu|dp|rf|QA[6]~39_combout\ $ (\mcu|dp|Selector25~5_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~11\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~13\ = CARRY((\mcu|dp|rf|QA[6]~39_combout\ & ((\mcu|dp|Selector25~5_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~11\))) # (!\mcu|dp|rf|QA[6]~39_combout\ & (\mcu|dp|Selector25~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[6]~39_combout\,
	datab => \mcu|dp|Selector25~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~11\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~12_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~13\);

-- Location: LCCOMB_X13_Y24_N14
\mcu|dp|the_best_alu_in_kista|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~14_combout\ = (\mcu|dp|Selector24~5_combout\ & ((\mcu|dp|rf|QA[7]~34_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~13\ & VCC)) # (!\mcu|dp|rf|QA[7]~34_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~13\)))) # 
-- (!\mcu|dp|Selector24~5_combout\ & ((\mcu|dp|rf|QA[7]~34_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~13\)) # (!\mcu|dp|rf|QA[7]~34_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~13\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~15\ = CARRY((\mcu|dp|Selector24~5_combout\ & (!\mcu|dp|rf|QA[7]~34_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~13\)) # (!\mcu|dp|Selector24~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~13\) # 
-- (!\mcu|dp|rf|QA[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector24~5_combout\,
	datab => \mcu|dp|rf|QA[7]~34_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~13\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~14_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~15\);

-- Location: LCCOMB_X13_Y24_N16
\mcu|dp|the_best_alu_in_kista|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~16_combout\ = ((\mcu|dp|rf|QA[8]~29_combout\ $ (\mcu|dp|Selector23~5_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~15\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~17\ = CARRY((\mcu|dp|rf|QA[8]~29_combout\ & ((\mcu|dp|Selector23~5_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~15\))) # (!\mcu|dp|rf|QA[8]~29_combout\ & (\mcu|dp|Selector23~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[8]~29_combout\,
	datab => \mcu|dp|Selector23~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~15\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~16_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~17\);

-- Location: LCCOMB_X11_Y23_N2
\mcu|dp|the_best_alu_in_kista|Add2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~2_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~1\ & (((!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[1]~75_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~1\ & (((\mcu|dp|rf|QA[1]~75_combout\ & 
-- \mcu|dp|Selector32~3_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~3\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~1\) # (!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[1]~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[1]~75_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~1\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~2_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~3\);

-- Location: LCCOMB_X11_Y23_N6
\mcu|dp|the_best_alu_in_kista|Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~6_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~5\ & (((!\mcu|dp|rf|QA[3]~73_combout\)) # (!\mcu|dp|Selector32~3_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~5\ & (((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[3]~73_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~7\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~5\) # (!\mcu|dp|rf|QA[3]~73_combout\)) # (!\mcu|dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[3]~73_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~5\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~6_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~7\);

-- Location: LCCOMB_X11_Y23_N8
\mcu|dp|the_best_alu_in_kista|Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~8_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~7\ & (\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[4]~72_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~7\ & ((((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[4]~72_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~9\ = CARRY((\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[4]~72_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[4]~72_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~7\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~8_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~9\);

-- Location: LCCOMB_X11_Y23_N14
\mcu|dp|the_best_alu_in_kista|Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~14_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~13\ & (((!\mcu|dp|rf|QA[7]~69_combout\)) # (!\mcu|dp|Selector32~3_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~13\ & (((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[7]~69_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~15\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~13\) # (!\mcu|dp|rf|QA[7]~69_combout\)) # (!\mcu|dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[7]~69_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~13\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~14_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~15\);

-- Location: LCCOMB_X11_Y23_N16
\mcu|dp|the_best_alu_in_kista|Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~16_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~15\ & (\mcu|dp|rf|QA[8]~68_combout\ & (\mcu|dp|Selector32~3_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~15\ & ((((\mcu|dp|rf|QA[8]~68_combout\ & 
-- \mcu|dp|Selector32~3_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~17\ = CARRY((\mcu|dp|rf|QA[8]~68_combout\ & (\mcu|dp|Selector32~3_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[8]~68_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~15\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~16_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~17\);

-- Location: LCCOMB_X13_Y24_N24
\mcu|dp|the_best_alu_in_kista|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~24_combout\ = ((\mcu|dp|rf|QA[12]~95_combout\ $ (\mcu|dp|Selector19~5_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~23\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~25\ = CARRY((\mcu|dp|rf|QA[12]~95_combout\ & ((\mcu|dp|Selector19~5_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~23\))) # (!\mcu|dp|rf|QA[12]~95_combout\ & (\mcu|dp|Selector19~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[12]~95_combout\,
	datab => \mcu|dp|Selector19~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~23\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~24_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~25\);

-- Location: LCCOMB_X13_Y24_N28
\mcu|dp|the_best_alu_in_kista|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~28_combout\ = ((\mcu|dp|Selector17~5_combout\ $ (\mcu|dp|rf|QA[14]~85_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~27\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~29\ = CARRY((\mcu|dp|Selector17~5_combout\ & ((\mcu|dp|rf|QA[14]~85_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~27\))) # (!\mcu|dp|Selector17~5_combout\ & (\mcu|dp|rf|QA[14]~85_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector17~5_combout\,
	datab => \mcu|dp|rf|QA[14]~85_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~27\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~28_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~29\);

-- Location: LCCOMB_X13_Y24_N30
\mcu|dp|the_best_alu_in_kista|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~30_combout\ = \mcu|dp|rf|QA[15]~80_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add0~29\ $ (\mcu|dp|Selector16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|rf|QA[15]~80_combout\,
	datad => \mcu|dp|Selector16~5_combout\,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~29\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~30_combout\);

-- Location: LCCOMB_X11_Y23_N24
\mcu|dp|the_best_alu_in_kista|Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~24_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~23\ & (\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[12]~99_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~23\ & ((((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[12]~99_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~25\ = CARRY((\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[12]~99_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[12]~99_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~23\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~24_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~25\);

-- Location: LCCOMB_X11_Y23_N26
\mcu|dp|the_best_alu_in_kista|Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~26_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~25\ & (((!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[13]~98_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~25\ & (((\mcu|dp|rf|QA[13]~98_combout\ & 
-- \mcu|dp|Selector32~3_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~27\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~25\) # (!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[13]~98_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[13]~98_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~25\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~26_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~27\);

-- Location: LCCOMB_X11_Y23_N28
\mcu|dp|the_best_alu_in_kista|Add2~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~28_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~27\ & (\mcu|dp|rf|QA[14]~97_combout\ & (\mcu|dp|Selector32~3_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~27\ & ((((\mcu|dp|rf|QA[14]~97_combout\ & 
-- \mcu|dp|Selector32~3_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~29\ = CARRY((\mcu|dp|rf|QA[14]~97_combout\ & (\mcu|dp|Selector32~3_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[14]~97_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~27\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~28_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~29\);

-- Location: LCCOMB_X11_Y23_N30
\mcu|dp|the_best_alu_in_kista|Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~30_combout\ = \mcu|dp|the_best_alu_in_kista|Add2~29\ $ (((\mcu|dp|Selector32~3_combout\ & \mcu|dp|rf|QA[15]~96_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datad => \mcu|dp|rf|QA[15]~96_combout\,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~29\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~30_combout\);

-- Location: FF_X12_Y23_N17
\mcu|Address_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(11));

-- Location: LCCOMB_X11_Y24_N2
\mcu|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux0~0_combout\ = (\mcu|instruction_reg\(14) & (\mcu|instruction_reg\(13) & (!\mcu|instruction_reg\(12) & \mcu|instruction_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(14),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(12),
	datad => \mcu|instruction_reg\(15),
	combout => \mcu|Mux0~0_combout\);

-- Location: FF_X12_Y22_N7
\mcu|Address_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(12));

-- Location: LCCOMB_X10_Y21_N12
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\mcu|Address_out\(1) & (!\mcu|Address_out\(0) & (!\mcu|Address_out\(2) & !\mcu|Address_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Address_out\(1),
	datab => \mcu|Address_out\(0),
	datac => \mcu|Address_out\(2),
	datad => \mcu|Address_out\(3),
	combout => \Equal0~4_combout\);

-- Location: FF_X12_Y24_N25
\mcu|O_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|dp|the_best_alu_in_kista|O_Flag~combout\,
	ena => \mcu|Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|O_reg~q\);

-- Location: LCCOMB_X11_Y21_N6
\mcu|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux3~0_combout\ = (\mcu|instruction_reg\(12) & (\mcu|ucode|Mux10~0_combout\ & (!\mcu|instruction_reg\(13) & \mcu|O_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|ucode|Mux10~0_combout\,
	datac => \mcu|instruction_reg\(13),
	datad => \mcu|O_reg~q\,
	combout => \mcu|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y21_N10
\mcu|ucode|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~0_combout\ = (\mcu|ucode|Mux11~0_combout\ & (((\mcu|Neg_reg~q\)))) # (!\mcu|ucode|Mux11~0_combout\ & ((\mcu|Mux3~0_combout\) # ((\mcu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux3~0_combout\,
	datab => \mcu|Neg_reg~q\,
	datac => \mcu|Mux3~1_combout\,
	datad => \mcu|ucode|Mux11~0_combout\,
	combout => \mcu|ucode|Mux7~0_combout\);

-- Location: LCCOMB_X11_Y21_N24
\mcu|ucode|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~1_combout\ = (\mcu|instruction_reg\(14) & (((\mcu|instruction_reg\(13) & !\mcu|uPC\(0))))) # (!\mcu|instruction_reg\(14) & (!\mcu|ucode|Mux7~0_combout\ & ((\mcu|uPC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~0_combout\,
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(13),
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux7~1_combout\);

-- Location: LCCOMB_X12_Y24_N10
\mcu|ucode|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~2_combout\ = (\mcu|instruction_reg\(12) & (\mcu|ucode|Mux7~1_combout\ & \mcu|instruction_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(12),
	datac => \mcu|ucode|Mux7~1_combout\,
	datad => \mcu|instruction_reg\(15),
	combout => \mcu|ucode|Mux7~2_combout\);

-- Location: LCCOMB_X14_Y20_N26
\mcu|ucode|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~3_combout\ = (!\mcu|instruction_reg\(12) & ((\mcu|instruction_reg\(14) & (!\mcu|instruction_reg\(15))) # (!\mcu|instruction_reg\(14) & ((\mcu|instruction_reg\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(15),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(14),
	datad => \mcu|instruction_reg\(12),
	combout => \mcu|ucode|Mux7~3_combout\);

-- Location: LCCOMB_X11_Y21_N22
\mcu|ucode|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux5~0_combout\ = (\mcu|instruction_reg\(14) & ((\mcu|uPC\(1)) # ((!\mcu|uPC\(0))))) # (!\mcu|instruction_reg\(14) & ((\mcu|uPC\(1) $ (!\mcu|uPC\(0))) # (!\mcu|instruction_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(1),
	datab => \mcu|uPC\(0),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|instruction_reg\(14),
	combout => \mcu|ucode|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y20_N30
\mcu|ucode|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux6~0_combout\ = (\mcu|instruction_reg\(13)) # ((\mcu|instruction_reg\(12) & \mcu|instruction_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(12),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|ucode|Mux6~0_combout\);

-- Location: LCCOMB_X16_Y23_N14
\mcu|dp|rf|QA[0]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~9_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[0]~3_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[0]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[0]~3_combout\,
	datad => \mcu|dp|rf|QA[0]~7_combout\,
	combout => \mcu|dp|rf|QA[0]~9_combout\);

-- Location: FF_X17_Y23_N13
\mcu|dp|rf|register_arr[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][11]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][11]~q\);

-- Location: FF_X16_Y24_N19
\mcu|dp|rf|register_arr[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][10]~q\);

-- Location: LCCOMB_X13_Y21_N10
\mcu|dp|rf|QA[10]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~17_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][10]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][10]~q\,
	datab => \mcu|dp|rf|register_arr[0][10]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[10]~17_combout\);

-- Location: FF_X16_Y20_N7
\mcu|dp|rf|register_arr[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][8]~q\);

-- Location: FF_X17_Y20_N13
\mcu|dp|rf|register_arr[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][8]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][8]~q\);

-- Location: FF_X16_Y21_N31
\mcu|dp|rf|register_arr[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][8]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][8]~q\);

-- Location: LCCOMB_X16_Y20_N6
\mcu|dp|Selector23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][8]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][8]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][8]~q\,
	datac => \mcu|dp|rf|register_arr[4][8]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector23~0_combout\);

-- Location: FF_X16_Y20_N13
\mcu|dp|rf|register_arr[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][7]~q\);

-- Location: FF_X16_Y24_N7
\mcu|dp|rf|register_arr[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][4]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][4]~q\);

-- Location: FF_X11_Y21_N17
\mcu|dp|rf|register_arr[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~35_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][3]~q\);

-- Location: LCCOMB_X16_Y20_N0
\mcu|dp|rf|QA[2]~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~55_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][2]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][2]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][2]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[2]~55_combout\);

-- Location: LCCOMB_X14_Y23_N20
\mcu|dp|rf|QA[2]~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~56_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[2]~55_combout\ & ((\mcu|dp|rf|register_arr[7][2]~q\))) # (!\mcu|dp|rf|QA[2]~55_combout\ & (\mcu|dp|rf|register_arr[5][2]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[2]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[5][2]~q\,
	datac => \mcu|dp|rf|register_arr[7][2]~q\,
	datad => \mcu|dp|rf|QA[2]~55_combout\,
	combout => \mcu|dp|rf|QA[2]~56_combout\);

-- Location: FF_X14_Y23_N3
\mcu|dp|rf|register_arr[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][2]~q\);

-- Location: LCCOMB_X14_Y23_N24
\mcu|dp|rf|QA[2]~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~57_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][2]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][2]~q\,
	datab => \mcu|dp|rf|register_arr[1][2]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[2]~57_combout\);

-- Location: LCCOMB_X14_Y23_N22
\mcu|dp|rf|QA[2]~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~58_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[2]~57_combout\ & (\mcu|dp|rf|register_arr[3][2]~q\)) # (!\mcu|dp|rf|QA[2]~57_combout\ & ((\mcu|dp|rf|register_arr[2][2]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[2]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[3][2]~q\,
	datac => \mcu|dp|rf|register_arr[2][2]~q\,
	datad => \mcu|dp|rf|QA[2]~57_combout\,
	combout => \mcu|dp|rf|QA[2]~58_combout\);

-- Location: LCCOMB_X14_Y23_N30
\mcu|dp|rf|QA[2]~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~59_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[2]~56_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[2]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[2]~58_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|Selector33~0_combout\,
	datad => \mcu|dp|rf|QA[2]~56_combout\,
	combout => \mcu|dp|rf|QA[2]~59_combout\);

-- Location: FF_X11_Y22_N23
\mcu|dp|rf|register_arr[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][1]~q\);

-- Location: LCCOMB_X12_Y23_N8
\mcu|dp|the_best_alu_in_kista|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux4~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[11]~14_combout\ $ (((\mcu|ucode|Mux7~5_combout\) # (\mcu|dp|Selector20~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|Selector20~5_combout\,
	datac => \mcu|dp|rf|QA[11]~14_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux4~2_combout\);

-- Location: LCCOMB_X16_Y23_N6
\mcu|dp|rf|QA[8]~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~68_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[8]~26_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[8]~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|rf|QA[8]~26_combout\,
	datac => \mcu|dp|Selector33~0_combout\,
	datad => \mcu|dp|rf|QA[8]~28_combout\,
	combout => \mcu|dp|rf|QA[8]~68_combout\);

-- Location: LCCOMB_X14_Y22_N14
\mcu|dp|rf|QA[5]~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~71_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[5]~41_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[5]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[5]~41_combout\,
	datad => \mcu|dp|rf|QA[5]~43_combout\,
	combout => \mcu|dp|rf|QA[5]~71_combout\);

-- Location: LCCOMB_X14_Y23_N12
\mcu|dp|rf|QA[2]~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[2]~74_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[2]~56_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[2]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[2]~58_combout\,
	datad => \mcu|dp|rf|QA[2]~56_combout\,
	combout => \mcu|dp|rf|QA[2]~74_combout\);

-- Location: LCCOMB_X14_Y23_N26
\mcu|dp|rf|QA[1]~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~75_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[1]~61_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[1]~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[1]~63_combout\,
	datad => \mcu|dp|rf|QA[1]~61_combout\,
	combout => \mcu|dp|rf|QA[1]~75_combout\);

-- Location: LCCOMB_X14_Y24_N12
\mcu|ucode|Mux31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux31~0_combout\ = (\mcu|instruction_reg\(15) & (((\mcu|instruction_reg\(12) & \mcu|instruction_reg\(13))) # (!\mcu|instruction_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(14),
	datad => \mcu|instruction_reg\(15),
	combout => \mcu|ucode|Mux31~0_combout\);

-- Location: LCCOMB_X11_Y24_N10
\mcu|dp|the_best_alu_in_kista|Mux5~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux5~2_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux5~1_combout\) # (!\mcu|dp|rf|QA[10]~19_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|dp|rf|QA[10]~19_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux5~2_combout\)) # (!\mcu|dp|rf|QA[10]~19_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[10]~19_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux5~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux5~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~3_combout\);

-- Location: LCCOMB_X12_Y22_N10
\mcu|dp|the_best_alu_in_kista|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux6~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[9]~24_combout\ $ (((\mcu|dp|Selector22~5_combout\) # (\mcu|ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector22~5_combout\,
	datab => \mcu|dp|rf|QA[9]~24_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux6~2_combout\);

-- Location: LCCOMB_X12_Y23_N6
\mcu|dp|the_best_alu_in_kista|Mux7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add2~16_combout\)) # (!\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add2~16_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~16_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~0_combout\);

-- Location: LCCOMB_X15_Y24_N10
\mcu|dp|Selector18~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~2_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][13]~q\) # ((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[0][13]~q\ & !\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][13]~q\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[0][13]~q\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector18~2_combout\);

-- Location: FF_X10_Y20_N23
\mcu|dp|rf|register_arr[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][12]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][12]~q\);

-- Location: LCCOMB_X10_Y20_N6
\mcu|dp|Selector19~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][12]~q\))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|rf|register_arr[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][12]~q\,
	datab => \mcu|dp|rf|register_arr[1][12]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector19~2_combout\);

-- Location: LCCOMB_X13_Y22_N6
\mcu|dp|rf|QA[15]~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~96_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[15]~77_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[15]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|rf|QA[15]~77_combout\,
	datad => \mcu|dp|rf|QA[15]~79_combout\,
	combout => \mcu|dp|rf|QA[15]~96_combout\);

-- Location: LCCOMB_X15_Y24_N26
\mcu|dp|rf|QA[14]~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~97_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[14]~82_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[14]~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[14]~82_combout\,
	datac => \mcu|dp|rf|QA[14]~84_combout\,
	datad => \mcu|dp|Selector33~0_combout\,
	combout => \mcu|dp|rf|QA[14]~97_combout\);

-- Location: LCCOMB_X12_Y23_N30
\mcu|dp|rf|QA[13]~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~98_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[13]~87_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[13]~89_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[13]~89_combout\,
	datad => \mcu|dp|rf|QA[13]~87_combout\,
	combout => \mcu|dp|rf|QA[13]~98_combout\);

-- Location: LCCOMB_X12_Y24_N6
\mcu|dp|the_best_alu_in_kista|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux0~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~30_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[15]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[15]~80_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add2~30_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux0~3_combout\);

-- Location: LCCOMB_X11_Y20_N12
\mcu|dp|the_best_alu_in_kista|Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux1~0_combout\ = (\mcu|dp|Selector17~5_combout\ & ((\mcu|ucode|Mux7~5_combout\) # ((\mcu|dp|rf|QA[14]~85_combout\ & \mcu|ucode|Mux6~2_combout\)))) # (!\mcu|dp|Selector17~5_combout\ & (\mcu|ucode|Mux7~5_combout\ & 
-- ((\mcu|dp|rf|QA[14]~85_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector17~5_combout\,
	datab => \mcu|dp|rf|QA[14]~85_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y20_N6
\mcu|dp|the_best_alu_in_kista|Mux1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux1~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~28_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[14]~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[14]~85_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add2~28_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux1~3_combout\);

-- Location: LCCOMB_X12_Y20_N30
\mcu|dp|the_best_alu_in_kista|Mux2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux2~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[13]~90_combout\ $ (((\mcu|ucode|Mux7~5_combout\) # (\mcu|dp|Selector18~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|rf|QA[13]~90_combout\,
	datad => \mcu|dp|Selector18~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux2~2_combout\);

-- Location: LCCOMB_X12_Y22_N6
\mcu|dp|the_best_alu_in_kista|Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add2~24_combout\)) # (!\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add2~24_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~24_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y21_N22
\mcu|dp|the_best_alu_in_kista|Mux8~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux8~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~14_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[7]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|rf|QA[7]~34_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add2~14_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux8~3_combout\);

-- Location: LCCOMB_X11_Y24_N6
\mcu|dp|the_best_alu_in_kista|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|the_best_alu_in_kista|Add2~8_combout\)) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~8_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add1~8_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~0_combout\);

-- Location: LCCOMB_X12_Y21_N10
\mcu|dp|the_best_alu_in_kista|Mux13~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~4_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux13~1_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux13~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~4_combout\);

-- Location: LCCOMB_X12_Y24_N24
\mcu|dp|the_best_alu_in_kista|O_Flag\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|O_Flag~combout\ = (\mcu|dp|the_best_alu_in_kista|add_overflow~combout\) # (\mcu|dp|the_best_alu_in_kista|sub_overflow~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|add_overflow~combout\,
	datad => \mcu|dp|the_best_alu_in_kista|sub_overflow~combout\,
	combout => \mcu|dp|the_best_alu_in_kista|O_Flag~combout\);

-- Location: LCCOMB_X12_Y22_N2
\mcu|ucode|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux0~1_combout\ = (\mcu|ucode|Mux0~0_combout\ & (\mcu|instruction_reg\(12) & \mcu|instruction_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux0~0_combout\,
	datab => \mcu|instruction_reg\(12),
	datad => \mcu|instruction_reg\(14),
	combout => \mcu|ucode|Mux0~1_combout\);

-- Location: FF_X11_Y22_N31
\mcu|instruction_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(11),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(11));

-- Location: LCCOMB_X13_Y22_N26
\mcu|dp|rf|register_arr~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~22_combout\ = (\mcu|instruction_reg\(13) & (\memory|altsyncram_component|auto_generated|q_a\(9))) # (!\mcu|instruction_reg\(13) & ((\mcu|instruction_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|altsyncram_component|auto_generated|q_a\(9),
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|dp|rf|register_arr~22_combout\);

-- Location: LCCOMB_X16_Y20_N12
\mcu|dp|rf|register_arr~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~24_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(8)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(8),
	combout => \mcu|dp|rf|register_arr~24_combout\);

-- Location: LCCOMB_X15_Y24_N14
\mcu|dp|rf|register_arr~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~28_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(6)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(6),
	datad => \memory|altsyncram_component|auto_generated|q_a\(6),
	combout => \mcu|dp|rf|register_arr~28_combout\);

-- Location: LCCOMB_X12_Y21_N28
\mcu|dp|rf|register_arr~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~34_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(3)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(3),
	datad => \memory|altsyncram_component|auto_generated|q_a\(3),
	combout => \mcu|dp|rf|register_arr~34_combout\);

-- Location: LCCOMB_X11_Y20_N10
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\mcu|Address_out\(12) & (!\mcu|Address_out\(14) & (!\mcu|Address_out\(13) & !\mcu|Address_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Address_out\(12),
	datab => \mcu|Address_out\(14),
	datac => \mcu|Address_out\(13),
	datad => \mcu|Address_out\(15),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X10_Y21_N8
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\Equal0~1_combout\) # (!\Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal1~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X11_Y24_N18
\mcu|dp|the_best_alu_in_kista|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Equal0~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & (!\mcu|ucode|Mux5~1_combout\ & !\mcu|ucode|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Equal0~0_combout\);

-- Location: LCCOMB_X12_Y24_N28
\mcu|dp|the_best_alu_in_kista|sub_overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|sub_overflow~0_combout\ = (\mcu|dp|the_best_alu_in_kista|Equal0~0_combout\ & ((\mcu|dp|Selector16~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\ & !\mcu|dp|rf|QA[15]~80_combout\)) # 
-- (!\mcu|dp|Selector16~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\ & \mcu|dp|rf|QA[15]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector16~5_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Equal0~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	datad => \mcu|dp|rf|QA[15]~80_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|sub_overflow~0_combout\);

-- Location: LCCOMB_X12_Y23_N0
\mcu|dp|the_best_alu_in_kista|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Equal1~0_combout\ = (!\mcu|ucode|Mux5~1_combout\ & (!\mcu|ucode|Mux7~5_combout\ & !\mcu|ucode|Mux6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Equal1~0_combout\);

-- Location: LCCOMB_X12_Y24_N20
\mcu|dp|the_best_alu_in_kista|add_overflow~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|add_overflow~0_combout\ = ((\mcu|dp|Selector16~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\) # (!\mcu|dp|rf|QA[15]~80_combout\))) # (!\mcu|dp|Selector16~5_combout\ & ((\mcu|dp|rf|QA[15]~80_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector16~5_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Equal1~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	datad => \mcu|dp|rf|QA[15]~80_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|add_overflow~0_combout\);

-- Location: LCCOMB_X12_Y24_N8
\mcu|dp|the_best_alu_in_kista|sub_overflow\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|sub_overflow~combout\ = (\mcu|dp|the_best_alu_in_kista|Equal1~0_combout\ & ((\mcu|dp|the_best_alu_in_kista|sub_overflow~combout\))) # (!\mcu|dp|the_best_alu_in_kista|Equal1~0_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|sub_overflow~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|the_best_alu_in_kista|sub_overflow~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|sub_overflow~combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Equal1~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|sub_overflow~combout\);

-- Location: LCCOMB_X12_Y24_N18
\mcu|dp|the_best_alu_in_kista|add_overflow\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|add_overflow~combout\ = (\mcu|dp|the_best_alu_in_kista|Equal0~0_combout\ & (\mcu|dp|the_best_alu_in_kista|add_overflow~combout\)) # (!\mcu|dp|the_best_alu_in_kista|Equal0~0_combout\ & 
-- ((!\mcu|dp|the_best_alu_in_kista|add_overflow~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|the_best_alu_in_kista|Equal0~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|add_overflow~combout\,
	datad => \mcu|dp|the_best_alu_in_kista|add_overflow~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|add_overflow~combout\);

-- Location: LCCOMB_X17_Y23_N12
\mcu|dp|rf|register_arr[1][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][11]~feeder_combout\ = \mcu|dp|rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~19_combout\,
	combout => \mcu|dp|rf|register_arr[1][11]~feeder_combout\);

-- Location: LCCOMB_X17_Y20_N12
\mcu|dp|rf|register_arr[1][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][8]~feeder_combout\ = \mcu|dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~25_combout\,
	combout => \mcu|dp|rf|register_arr[1][8]~feeder_combout\);

-- Location: LCCOMB_X16_Y21_N30
\mcu|dp|rf|register_arr[3][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][8]~feeder_combout\ = \mcu|dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~25_combout\,
	combout => \mcu|dp|rf|register_arr[3][8]~feeder_combout\);

-- Location: LCCOMB_X16_Y24_N6
\mcu|dp|rf|register_arr[0][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][4]~feeder_combout\ = \mcu|dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~33_combout\,
	combout => \mcu|dp|rf|register_arr[0][4]~feeder_combout\);

-- Location: LCCOMB_X10_Y20_N22
\mcu|dp|rf|register_arr[0][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][12]~feeder_combout\ = \mcu|dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~47_combout\,
	combout => \mcu|dp|rf|register_arr[0][12]~feeder_combout\);

-- Location: IOOBUF_X14_Y31_N9
\PIO[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(0),
	devoe => ww_devoe,
	o => \PIO[0]~output_o\);

-- Location: IOOBUF_X8_Y0_N9
\PIO[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(1),
	devoe => ww_devoe,
	o => \PIO[1]~output_o\);

-- Location: IOOBUF_X33_Y22_N9
\PIO[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(2),
	devoe => ww_devoe,
	o => \PIO[2]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\PIO[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(3),
	devoe => ww_devoe,
	o => \PIO[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\PIO[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(4),
	devoe => ww_devoe,
	o => \PIO[4]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\PIO[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(5),
	devoe => ww_devoe,
	o => \PIO[5]~output_o\);

-- Location: IOOBUF_X12_Y31_N2
\PIO[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(6),
	devoe => ww_devoe,
	o => \PIO[6]~output_o\);

-- Location: IOOBUF_X33_Y22_N2
\PIO[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(7),
	devoe => ww_devoe,
	o => \PIO[7]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\PIO[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(8),
	devoe => ww_devoe,
	o => \PIO[8]~output_o\);

-- Location: IOOBUF_X33_Y24_N9
\PIO[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(9),
	devoe => ww_devoe,
	o => \PIO[9]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\PIO[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(10),
	devoe => ww_devoe,
	o => \PIO[10]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\PIO[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(11),
	devoe => ww_devoe,
	o => \PIO[11]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\PIO[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(12),
	devoe => ww_devoe,
	o => \PIO[12]~output_o\);

-- Location: IOOBUF_X10_Y31_N2
\PIO[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(13),
	devoe => ww_devoe,
	o => \PIO[13]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\PIO[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(14),
	devoe => ww_devoe,
	o => \PIO[14]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\PIO[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gpio_per|Dout\(15),
	devoe => ww_devoe,
	o => \PIO[15]~output_o\);

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

-- Location: LCCOMB_X14_Y20_N10
\mcu|uPC[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|uPC[0]~0_combout\ = !\mcu|uPC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|uPC\(0),
	combout => \mcu|uPC[0]~0_combout\);

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

-- Location: FF_X14_Y20_N11
\mcu|uPC[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|uPC[0]~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|uPC\(0));

-- Location: LCCOMB_X14_Y20_N4
\mcu|ucode|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux8~1_combout\ = \mcu|uPC\(0) $ (\mcu|uPC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|uPC\(0),
	datac => \mcu|uPC\(1),
	combout => \mcu|ucode|Mux8~1_combout\);

-- Location: FF_X14_Y20_N5
\mcu|uPC[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|ucode|Mux8~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|uPC\(1));

-- Location: LCCOMB_X10_Y21_N26
\mcu|Address_out[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Address_out[0]~feeder_combout\ = \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\,
	combout => \mcu|Address_out[0]~feeder_combout\);

-- Location: LCCOMB_X14_Y24_N8
\mcu|ucode|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux14~2_combout\ = (\mcu|uPC\(1) & ((\mcu|dp|Selector32~0_combout\) # ((\mcu|Mux0~0_combout\ & \mcu|uPC\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux0~0_combout\,
	datab => \mcu|uPC\(1),
	datac => \mcu|dp|Selector32~0_combout\,
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux14~2_combout\);

-- Location: LCCOMB_X14_Y24_N18
\mcu|ucode|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux14~3_combout\ = (\mcu|ucode|Mux14~2_combout\) # ((\mcu|ucode|Mux31~0_combout\ & (!\mcu|uPC\(1) & \mcu|uPC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux31~0_combout\,
	datab => \mcu|uPC\(1),
	datac => \mcu|ucode|Mux14~2_combout\,
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux14~3_combout\);

-- Location: FF_X10_Y21_N27
\mcu|Address_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|Address_out[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(0));

-- Location: LCCOMB_X14_Y20_N2
\mcu|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux0~1_combout\ = (\mcu|instruction_reg\(15) & (\mcu|instruction_reg\(14) & \mcu|instruction_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(15),
	datac => \mcu|instruction_reg\(14),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|Mux0~1_combout\);

-- Location: LCCOMB_X14_Y20_N22
\mcu|ucode|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux0~0_combout\ = (\mcu|instruction_reg\(15) & (\mcu|uPC\(0) & (\mcu|instruction_reg\(13) $ (!\mcu|uPC\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|uPC\(1),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y24_N20
\mcu|dp|rf|register_arr~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~18_combout\ = (!\RESET~input_o\ & (((!\mcu|ucode|Mux0~0_combout\) # (!\mcu|instruction_reg\(12))) # (!\mcu|instruction_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(12),
	datad => \mcu|ucode|Mux0~0_combout\,
	combout => \mcu|dp|rf|register_arr~18_combout\);

-- Location: LCCOMB_X14_Y20_N6
\mcu|ucode|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux8~0_combout\ = (\mcu|uPC\(1) & (!\mcu|uPC\(0) & ((\mcu|instruction_reg\(14)) # (!\mcu|instruction_reg\(15))))) # (!\mcu|uPC\(1) & (\mcu|instruction_reg\(15) & (!\mcu|instruction_reg\(14) & \mcu|uPC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(15),
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|uPC\(1),
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux8~0_combout\);

-- Location: LCCOMB_X11_Y24_N28
\mcu|dp|rf|register_arr~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~17_combout\ = (!\RESET~input_o\ & (\mcu|instruction_reg\(14) & (\mcu|instruction_reg\(12) & \mcu|ucode|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(12),
	datad => \mcu|ucode|Mux0~0_combout\,
	combout => \mcu|dp|rf|register_arr~17_combout\);

-- Location: LCCOMB_X16_Y24_N24
\mcu|dp|rf|register_arr~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~29_combout\ = (\mcu|dp|rf|register_arr~28_combout\ & ((\mcu|dp|rf|register_arr~17_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\)))) # (!\mcu|dp|rf|register_arr~28_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux9~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~28_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\,
	datad => \mcu|dp|rf|register_arr~17_combout\,
	combout => \mcu|dp|rf|register_arr~29_combout\);

-- Location: LCCOMB_X14_Y20_N12
\mcu|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux0~2_combout\ = (\mcu|uPC\(0) & (!\mcu|instruction_reg\(12) & (!\mcu|uPC\(1) & \mcu|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|instruction_reg\(12),
	datac => \mcu|uPC\(1),
	datad => \mcu|Mux0~1_combout\,
	combout => \mcu|Mux0~2_combout\);

-- Location: FF_X12_Y21_N3
\mcu|Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(1));

-- Location: FF_X12_Y21_N17
\mcu|Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(2));

-- Location: FF_X12_Y21_N23
\mcu|Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(3));

-- Location: FF_X11_Y24_N9
\mcu|Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(4));

-- Location: FF_X14_Y21_N3
\mcu|Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(5));

-- Location: FF_X11_Y24_N19
\mcu|Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(6));

-- Location: FF_X14_Y21_N27
\mcu|Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(7));

-- Location: LCCOMB_X16_Y20_N4
\mcu|dp|rf|register_arr~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~25_combout\ = (\mcu|dp|rf|register_arr~24_combout\ & ((\mcu|dp|rf|register_arr~17_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\)))) # (!\mcu|dp|rf|register_arr~24_combout\ & 
-- (((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~24_combout\,
	datab => \mcu|dp|rf|register_arr~17_combout\,
	datac => \mcu|dp|rf|register_arr~18_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\,
	combout => \mcu|dp|rf|register_arr~25_combout\);

-- Location: LCCOMB_X16_Y21_N28
\mcu|dp|rf|register_arr[2][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][8]~feeder_combout\ = \mcu|dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~25_combout\,
	combout => \mcu|dp|rf|register_arr[2][8]~feeder_combout\);

-- Location: LCCOMB_X11_Y22_N24
\mcu|dp|rf|register_arr[2][12]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][12]~10_combout\ = (!\mcu|instruction_reg\(11) & (\mcu|instruction_reg\(10) & !\mcu|ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(11),
	datab => \mcu|instruction_reg\(10),
	datac => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|rf|register_arr[2][12]~10_combout\);

-- Location: LCCOMB_X11_Y22_N18
\mcu|dp|rf|register_arr[2][12]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][12]~11_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[6][7]~5_combout\ & \mcu|dp|rf|register_arr[2][12]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][7]~5_combout\,
	datab => \RESET~input_o\,
	datad => \mcu|dp|rf|register_arr[2][12]~10_combout\,
	combout => \mcu|dp|rf|register_arr[2][12]~11_combout\);

-- Location: FF_X16_Y21_N29
\mcu|dp|rf|register_arr[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[2][8]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][8]~q\);

-- Location: LCCOMB_X15_Y20_N20
\mcu|dp|Selector34~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector34~0_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~2_combout\ & (\mcu|instruction_reg\(4))) # (!\mcu|Mux0~2_combout\ & ((\mcu|instruction_reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|instruction_reg\(7),
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|Mux0~2_combout\,
	combout => \mcu|dp|Selector34~0_combout\);

-- Location: LCCOMB_X17_Y20_N18
\mcu|dp|rf|register_arr[0][8]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][8]~feeder_combout\ = \mcu|dp|rf|register_arr~25_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~25_combout\,
	combout => \mcu|dp|rf|register_arr[0][8]~feeder_combout\);

-- Location: LCCOMB_X11_Y22_N28
\mcu|dp|rf|register_arr[1][12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][12]~12_combout\ = (!\mcu|instruction_reg\(11) & (!\mcu|instruction_reg\(10) & !\mcu|ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(11),
	datab => \mcu|instruction_reg\(10),
	datac => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|rf|register_arr[1][12]~12_combout\);

-- Location: LCCOMB_X13_Y22_N24
\mcu|dp|rf|register_arr~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~23_combout\ = (\mcu|dp|rf|register_arr~22_combout\ & ((\mcu|dp|rf|register_arr~17_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\)))) # (!\mcu|dp|rf|register_arr~22_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~22_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|rf|register_arr~17_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\,
	combout => \mcu|dp|rf|register_arr~23_combout\);

-- Location: LCCOMB_X11_Y22_N16
\mcu|dp|rf|register_arr[3][15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][15]~15_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[5][8]~2_combout\ & \mcu|dp|rf|register_arr[2][12]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][8]~2_combout\,
	datab => \mcu|dp|rf|register_arr[2][12]~10_combout\,
	datad => \RESET~input_o\,
	combout => \mcu|dp|rf|register_arr[3][15]~15_combout\);

-- Location: FF_X13_Y22_N25
\mcu|dp|rf|register_arr[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~23_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][9]~q\);

-- Location: FF_X16_Y22_N9
\mcu|dp|rf|register_arr[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][9]~q\);

-- Location: LCCOMB_X11_Y21_N4
\mcu|ucode|Mux22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux22~0_combout\ = (\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(15) & ((\mcu|instruction_reg\(14))))) # (!\mcu|instruction_reg\(13) & (!\mcu|instruction_reg\(12) & (\mcu|instruction_reg\(15) $ (!\mcu|instruction_reg\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(15),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(12),
	datad => \mcu|instruction_reg\(14),
	combout => \mcu|ucode|Mux22~0_combout\);

-- Location: LCCOMB_X11_Y21_N14
\mcu|ucode|Mux4~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux4~2_combout\ = (\mcu|dp|Selector32~0_combout\) # ((\mcu|instruction_reg\(12) & (\mcu|Mux0~1_combout\ & \mcu|uPC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|Mux0~1_combout\,
	datac => \mcu|dp|Selector32~0_combout\,
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux4~2_combout\);

-- Location: LCCOMB_X11_Y21_N2
\mcu|ucode|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux4~3_combout\ = (\mcu|uPC\(1) & (((\mcu|ucode|Mux4~2_combout\)))) # (!\mcu|uPC\(1) & (\mcu|uPC\(0) & (!\mcu|ucode|Mux22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|ucode|Mux22~0_combout\,
	datac => \mcu|ucode|Mux4~2_combout\,
	datad => \mcu|uPC\(1),
	combout => \mcu|ucode|Mux4~3_combout\);

-- Location: LCCOMB_X11_Y22_N22
\mcu|dp|rf|register_arr[5][8]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][8]~2_combout\ = (\mcu|ucode|Mux4~3_combout\ & ((\mcu|ucode|Mux8~0_combout\) # (\mcu|instruction_reg\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|ucode|Mux4~3_combout\,
	datad => \mcu|instruction_reg\(9),
	combout => \mcu|dp|rf|register_arr[5][8]~2_combout\);

-- Location: LCCOMB_X11_Y22_N14
\mcu|dp|rf|register_arr[1][12]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][12]~13_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[5][8]~2_combout\ & \mcu|dp|rf|register_arr[1][12]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RESET~input_o\,
	datac => \mcu|dp|rf|register_arr[5][8]~2_combout\,
	datad => \mcu|dp|rf|register_arr[1][12]~12_combout\,
	combout => \mcu|dp|rf|register_arr[1][12]~13_combout\);

-- Location: FF_X16_Y22_N3
\mcu|dp|rf|register_arr[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][9]~q\);

-- Location: LCCOMB_X11_Y20_N18
\mcu|dp|rf|register_arr~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~46_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(12)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(8),
	datad => \memory|altsyncram_component|auto_generated|q_a\(12),
	combout => \mcu|dp|rf|register_arr~46_combout\);

-- Location: LCCOMB_X11_Y20_N22
\mcu|dp|rf|register_arr~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~47_combout\ = (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux3~5_combout\) # ((\mcu|dp|rf|register_arr~46_combout\ & \mcu|dp|rf|register_arr~17_combout\)))) # (!\mcu|dp|rf|register_arr~18_combout\ & 
-- (\mcu|dp|rf|register_arr~46_combout\ & (\mcu|dp|rf|register_arr~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~18_combout\,
	datab => \mcu|dp|rf|register_arr~46_combout\,
	datac => \mcu|dp|rf|register_arr~17_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\,
	combout => \mcu|dp|rf|register_arr~47_combout\);

-- Location: FF_X12_Y20_N21
\mcu|dp|rf|register_arr[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][12]~q\);

-- Location: LCCOMB_X10_Y20_N0
\mcu|dp|rf|register_arr[1][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][12]~feeder_combout\ = \mcu|dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~47_combout\,
	combout => \mcu|dp|rf|register_arr[1][12]~feeder_combout\);

-- Location: FF_X10_Y20_N1
\mcu|dp|rf|register_arr[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][12]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][12]~q\);

-- Location: LCCOMB_X10_Y20_N8
\mcu|dp|rf|QA[12]~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~93_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|rf|register_arr[1][12]~q\) # (\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[0][12]~q\ & ((!\mcu|dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][12]~q\,
	datab => \mcu|dp|rf|register_arr[1][12]~q\,
	datac => \mcu|dp|Selector35~0_combout\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[12]~93_combout\);

-- Location: LCCOMB_X12_Y20_N20
\mcu|dp|rf|QA[12]~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~94_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[12]~93_combout\ & (\mcu|dp|rf|register_arr[3][12]~q\)) # (!\mcu|dp|rf|QA[12]~93_combout\ & ((\mcu|dp|rf|register_arr[2][12]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[12]~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][12]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[2][12]~q\,
	datad => \mcu|dp|rf|QA[12]~93_combout\,
	combout => \mcu|dp|rf|QA[12]~94_combout\);

-- Location: LCCOMB_X13_Y20_N30
\mcu|dp|rf|register_arr[7][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][12]~feeder_combout\ = \mcu|dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~47_combout\,
	combout => \mcu|dp|rf|register_arr[7][12]~feeder_combout\);

-- Location: LCCOMB_X11_Y22_N12
\mcu|dp|rf|register_arr[6][7]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[6][7]~6_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|instruction_reg\(11) & \mcu|instruction_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(11),
	datab => \mcu|instruction_reg\(10),
	datac => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|rf|register_arr[6][7]~6_combout\);

-- Location: LCCOMB_X11_Y22_N30
\mcu|dp|rf|register_arr[7][3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][3]~9_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[5][8]~2_combout\ & \mcu|dp|rf|register_arr[6][7]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][8]~2_combout\,
	datab => \RESET~input_o\,
	datad => \mcu|dp|rf|register_arr[6][7]~6_combout\,
	combout => \mcu|dp|rf|register_arr[7][3]~9_combout\);

-- Location: FF_X13_Y20_N31
\mcu|dp|rf|register_arr[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][12]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][12]~q\);

-- Location: LCCOMB_X11_Y22_N8
\mcu|dp|rf|register_arr[6][7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[6][7]~7_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[6][7]~6_combout\ & \mcu|dp|rf|register_arr[6][7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][7]~6_combout\,
	datab => \RESET~input_o\,
	datad => \mcu|dp|rf|register_arr[6][7]~5_combout\,
	combout => \mcu|dp|rf|register_arr[6][7]~7_combout\);

-- Location: FF_X16_Y20_N21
\mcu|dp|rf|register_arr[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][12]~q\);

-- Location: LCCOMB_X16_Y20_N20
\mcu|dp|rf|QA[12]~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~91_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][12]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][12]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][12]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[12]~91_combout\);

-- Location: LCCOMB_X13_Y20_N4
\mcu|dp|rf|QA[12]~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~92_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[12]~91_combout\ & ((\mcu|dp|rf|register_arr[7][12]~q\))) # (!\mcu|dp|rf|QA[12]~91_combout\ & (\mcu|dp|rf|register_arr[5][12]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[12]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][12]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[7][12]~q\,
	datad => \mcu|dp|rf|QA[12]~91_combout\,
	combout => \mcu|dp|rf|QA[12]~92_combout\);

-- Location: LCCOMB_X12_Y20_N24
\mcu|dp|rf|QA[12]~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~95_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[12]~92_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[12]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[12]~94_combout\,
	datad => \mcu|dp|rf|QA[12]~92_combout\,
	combout => \mcu|dp|rf|QA[12]~95_combout\);

-- Location: FF_X16_Y20_N15
\mcu|dp|rf|register_arr[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][12]~q\);

-- Location: LCCOMB_X11_Y20_N30
\mcu|dp|rf|register_arr~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~44_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(13)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(8),
	datad => \memory|altsyncram_component|auto_generated|q_a\(13),
	combout => \mcu|dp|rf|register_arr~44_combout\);

-- Location: LCCOMB_X11_Y20_N4
\mcu|dp|rf|register_arr~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~45_combout\ = (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux2~4_combout\) # ((\mcu|dp|rf|register_arr~17_combout\ & \mcu|dp|rf|register_arr~44_combout\)))) # (!\mcu|dp|rf|register_arr~18_combout\ & 
-- (\mcu|dp|rf|register_arr~17_combout\ & (\mcu|dp|rf|register_arr~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~18_combout\,
	datab => \mcu|dp|rf|register_arr~17_combout\,
	datac => \mcu|dp|rf|register_arr~44_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\,
	combout => \mcu|dp|rf|register_arr~45_combout\);

-- Location: LCCOMB_X11_Y20_N0
\mcu|dp|rf|register_arr[5][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][13]~feeder_combout\ = \mcu|dp|rf|register_arr~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~45_combout\,
	combout => \mcu|dp|rf|register_arr[5][13]~feeder_combout\);

-- Location: LCCOMB_X11_Y22_N0
\mcu|dp|rf|register_arr[5][8]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][8]~4_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[5][8]~3_combout\ & \mcu|dp|rf|register_arr[5][8]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|rf|register_arr[5][8]~3_combout\,
	datac => \mcu|dp|rf|register_arr[5][8]~2_combout\,
	datad => \RESET~input_o\,
	combout => \mcu|dp|rf|register_arr[5][8]~4_combout\);

-- Location: FF_X11_Y20_N1
\mcu|dp|rf|register_arr[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[5][13]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][13]~q\);

-- Location: FF_X16_Y20_N29
\mcu|dp|rf|register_arr[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][13]~q\);

-- Location: LCCOMB_X16_Y20_N28
\mcu|dp|rf|QA[13]~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~86_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][13]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][13]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][13]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[13]~86_combout\);

-- Location: FF_X15_Y22_N25
\mcu|dp|rf|register_arr[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][13]~q\);

-- Location: LCCOMB_X15_Y22_N18
\mcu|dp|rf|QA[13]~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~87_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[13]~86_combout\ & ((\mcu|dp|rf|register_arr[7][13]~q\))) # (!\mcu|dp|rf|QA[13]~86_combout\ & (\mcu|dp|rf|register_arr[5][13]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[13]~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[5][13]~q\,
	datac => \mcu|dp|rf|QA[13]~86_combout\,
	datad => \mcu|dp|rf|register_arr[7][13]~q\,
	combout => \mcu|dp|rf|QA[13]~87_combout\);

-- Location: LCCOMB_X12_Y20_N18
\mcu|dp|rf|register_arr[3][13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][13]~feeder_combout\ = \mcu|dp|rf|register_arr~45_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~45_combout\,
	combout => \mcu|dp|rf|register_arr[3][13]~feeder_combout\);

-- Location: FF_X12_Y20_N19
\mcu|dp|rf|register_arr[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][13]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][13]~q\);

-- Location: FF_X15_Y24_N11
\mcu|dp|rf|register_arr[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][13]~q\);

-- Location: FF_X16_Y24_N3
\mcu|dp|rf|register_arr[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][13]~q\);

-- Location: LCCOMB_X16_Y24_N2
\mcu|dp|rf|QA[13]~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~88_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][13]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[0][13]~q\,
	datac => \mcu|dp|rf|register_arr[1][13]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[13]~88_combout\);

-- Location: LCCOMB_X12_Y20_N0
\mcu|dp|rf|QA[13]~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~89_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[13]~88_combout\ & ((\mcu|dp|rf|register_arr[3][13]~q\))) # (!\mcu|dp|rf|QA[13]~88_combout\ & (\mcu|dp|rf|register_arr[2][13]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[13]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][13]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[3][13]~q\,
	datad => \mcu|dp|rf|QA[13]~88_combout\,
	combout => \mcu|dp|rf|QA[13]~89_combout\);

-- Location: LCCOMB_X12_Y20_N22
\mcu|dp|rf|QA[13]~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[13]~90_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[13]~87_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[13]~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[13]~87_combout\,
	datad => \mcu|dp|rf|QA[13]~89_combout\,
	combout => \mcu|dp|rf|QA[13]~90_combout\);

-- Location: LCCOMB_X12_Y20_N12
\mcu|dp|rf|QA[12]~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[12]~99_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[12]~92_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[12]~94_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[12]~94_combout\,
	datad => \mcu|dp|rf|QA[12]~92_combout\,
	combout => \mcu|dp|rf|QA[12]~99_combout\);

-- Location: FF_X16_Y23_N11
\mcu|dp|rf|register_arr[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~19_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][11]~q\);

-- Location: FF_X16_Y20_N19
\mcu|dp|rf|register_arr[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~19_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][11]~q\);

-- Location: FF_X16_Y20_N17
\mcu|dp|rf|register_arr[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~19_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][11]~q\);

-- Location: LCCOMB_X16_Y20_N16
\mcu|dp|rf|QA[11]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~10_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|rf|register_arr[6][11]~q\) # (\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & (\mcu|dp|rf|register_arr[4][11]~q\ & ((!\mcu|dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][11]~q\,
	datac => \mcu|dp|rf|register_arr[6][11]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[11]~10_combout\);

-- Location: LCCOMB_X16_Y23_N10
\mcu|dp|rf|QA[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~11_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[11]~10_combout\ & ((\mcu|dp|rf|register_arr[7][11]~q\))) # (!\mcu|dp|rf|QA[11]~10_combout\ & (\mcu|dp|rf|register_arr[5][11]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[11]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][11]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[7][11]~q\,
	datad => \mcu|dp|rf|QA[11]~10_combout\,
	combout => \mcu|dp|rf|QA[11]~11_combout\);

-- Location: LCCOMB_X16_Y23_N28
\mcu|dp|rf|QA[11]~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~65_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[11]~11_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[11]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[11]~13_combout\,
	datad => \mcu|dp|rf|QA[11]~11_combout\,
	combout => \mcu|dp|rf|QA[11]~65_combout\);

-- Location: LCCOMB_X16_Y24_N18
\mcu|dp|rf|register_arr~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~20_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(10)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(10),
	combout => \mcu|dp|rf|register_arr~20_combout\);

-- Location: LCCOMB_X16_Y24_N12
\mcu|dp|rf|register_arr~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~21_combout\ = (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~20_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\)))) # (!\mcu|dp|rf|register_arr~17_combout\ & 
-- (((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~17_combout\,
	datab => \mcu|dp|rf|register_arr~20_combout\,
	datac => \mcu|dp|rf|register_arr~18_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\,
	combout => \mcu|dp|rf|register_arr~21_combout\);

-- Location: FF_X16_Y23_N19
\mcu|dp|rf|register_arr[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][10]~q\);

-- Location: FF_X15_Y21_N23
\mcu|dp|rf|register_arr[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][10]~q\);

-- Location: LCCOMB_X15_Y21_N22
\mcu|dp|rf|QA[10]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~15_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][10]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][10]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][10]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[10]~15_combout\);

-- Location: LCCOMB_X15_Y21_N18
\mcu|dp|rf|QA[10]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~16_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[10]~15_combout\ & ((\mcu|dp|rf|register_arr[7][10]~q\))) # (!\mcu|dp|rf|QA[10]~15_combout\ & (\mcu|dp|rf|register_arr[5][10]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[10]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][10]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[7][10]~q\,
	datad => \mcu|dp|rf|QA[10]~15_combout\,
	combout => \mcu|dp|rf|QA[10]~16_combout\);

-- Location: LCCOMB_X12_Y21_N22
\mcu|dp|rf|QA[10]~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~66_combout\ = (\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[10]~16_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[10]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[10]~18_combout\,
	datab => \mcu|dp|rf|QA[10]~16_combout\,
	datad => \mcu|dp|Selector33~0_combout\,
	combout => \mcu|dp|rf|QA[10]~66_combout\);

-- Location: FF_X16_Y23_N17
\mcu|dp|rf|register_arr[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][9]~q\);

-- Location: FF_X15_Y21_N15
\mcu|dp|rf|register_arr[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][9]~q\);

-- Location: LCCOMB_X15_Y21_N14
\mcu|dp|rf|QA[9]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~20_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][9]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][9]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][9]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[9]~20_combout\);

-- Location: LCCOMB_X15_Y21_N26
\mcu|dp|rf|QA[9]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~21_combout\ = (\mcu|dp|rf|QA[9]~20_combout\ & ((\mcu|dp|rf|register_arr[7][9]~q\) # ((!\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|rf|QA[9]~20_combout\ & (((\mcu|dp|rf|register_arr[5][9]~q\ & \mcu|dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][9]~q\,
	datab => \mcu|dp|rf|register_arr[5][9]~q\,
	datac => \mcu|dp|rf|QA[9]~20_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[9]~21_combout\);

-- Location: LCCOMB_X12_Y23_N26
\mcu|dp|rf|QA[9]~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~67_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[9]~21_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[9]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[9]~21_combout\,
	datad => \mcu|dp|rf|QA[9]~23_combout\,
	combout => \mcu|dp|rf|QA[9]~67_combout\);

-- Location: LCCOMB_X16_Y21_N8
\mcu|dp|rf|register_arr[3][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][7]~feeder_combout\ = \mcu|dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~27_combout\,
	combout => \mcu|dp|rf|register_arr[3][7]~feeder_combout\);

-- Location: FF_X16_Y21_N9
\mcu|dp|rf|register_arr[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][7]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][7]~q\);

-- Location: LCCOMB_X16_Y21_N2
\mcu|dp|rf|register_arr[2][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][7]~feeder_combout\ = \mcu|dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~27_combout\,
	combout => \mcu|dp|rf|register_arr[2][7]~feeder_combout\);

-- Location: FF_X16_Y21_N3
\mcu|dp|rf|register_arr[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[2][7]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][7]~q\);

-- Location: LCCOMB_X16_Y22_N20
\mcu|dp|rf|register_arr[1][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][7]~feeder_combout\ = \mcu|dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~27_combout\,
	combout => \mcu|dp|rf|register_arr[1][7]~feeder_combout\);

-- Location: FF_X16_Y22_N21
\mcu|dp|rf|register_arr[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][7]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][7]~q\);

-- Location: LCCOMB_X16_Y22_N22
\mcu|dp|rf|register_arr[0][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][7]~feeder_combout\ = \mcu|dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~27_combout\,
	combout => \mcu|dp|rf|register_arr[0][7]~feeder_combout\);

-- Location: FF_X16_Y22_N23
\mcu|dp|rf|register_arr[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][7]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][7]~q\);

-- Location: LCCOMB_X16_Y22_N12
\mcu|dp|rf|QA[7]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~32_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][7]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[1][7]~q\,
	datac => \mcu|dp|rf|register_arr[0][7]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[7]~32_combout\);

-- Location: LCCOMB_X16_Y22_N10
\mcu|dp|rf|QA[7]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~33_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[7]~32_combout\ & (\mcu|dp|rf|register_arr[3][7]~q\)) # (!\mcu|dp|rf|QA[7]~32_combout\ & ((\mcu|dp|rf|register_arr[2][7]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[7]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[3][7]~q\,
	datac => \mcu|dp|rf|register_arr[2][7]~q\,
	datad => \mcu|dp|rf|QA[7]~32_combout\,
	combout => \mcu|dp|rf|QA[7]~33_combout\);

-- Location: LCCOMB_X12_Y22_N0
\mcu|dp|rf|QA[7]~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~69_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[7]~31_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[7]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[7]~31_combout\,
	datad => \mcu|dp|rf|QA[7]~33_combout\,
	combout => \mcu|dp|rf|QA[7]~69_combout\);

-- Location: LCCOMB_X11_Y23_N10
\mcu|dp|the_best_alu_in_kista|Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~10_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~9\ & (((!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[5]~71_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~9\ & (((\mcu|dp|rf|QA[5]~71_combout\ & 
-- \mcu|dp|Selector32~3_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~11\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~9\) # (!\mcu|dp|Selector32~3_combout\)) # (!\mcu|dp|rf|QA[5]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[5]~71_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~9\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~10_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~11\);

-- Location: LCCOMB_X11_Y23_N12
\mcu|dp|the_best_alu_in_kista|Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~12_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~11\ & (\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[6]~70_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~11\ & ((((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[6]~70_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~13\ = CARRY((\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[6]~70_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[6]~70_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~11\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~12_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~13\);

-- Location: LCCOMB_X11_Y23_N18
\mcu|dp|the_best_alu_in_kista|Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~18_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~17\ & (((!\mcu|dp|rf|QA[9]~67_combout\)) # (!\mcu|dp|Selector32~3_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~17\ & (((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[9]~67_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~19\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~17\) # (!\mcu|dp|rf|QA[9]~67_combout\)) # (!\mcu|dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[9]~67_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~17\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~18_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~19\);

-- Location: LCCOMB_X11_Y23_N20
\mcu|dp|the_best_alu_in_kista|Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~20_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~19\ & (\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[10]~66_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~19\ & ((((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[10]~66_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~21\ = CARRY((\mcu|dp|Selector32~3_combout\ & (\mcu|dp|rf|QA[10]~66_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[10]~66_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~19\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~20_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~21\);

-- Location: LCCOMB_X11_Y23_N22
\mcu|dp|the_best_alu_in_kista|Add2~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~22_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~21\ & (((!\mcu|dp|rf|QA[11]~65_combout\)) # (!\mcu|dp|Selector32~3_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Add2~21\ & (((\mcu|dp|Selector32~3_combout\ & 
-- \mcu|dp|rf|QA[11]~65_combout\)) # (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add2~23\ = CARRY(((!\mcu|dp|the_best_alu_in_kista|Add2~21\) # (!\mcu|dp|rf|QA[11]~65_combout\)) # (!\mcu|dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[11]~65_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~21\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~22_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~23\);

-- Location: LCCOMB_X11_Y20_N20
\mcu|dp|the_best_alu_in_kista|Mux2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux2~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~26_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[13]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[13]~90_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~26_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux2~3_combout\);

-- Location: FF_X15_Y24_N1
\mcu|dp|rf|register_arr[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][13]~q\);

-- Location: LCCOMB_X11_Y22_N20
\mcu|instruction_reg[15]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|instruction_reg[15]~0_combout\ = (!\mcu|uPC\(1) & (!\mcu|uPC\(0) & !\RESET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(1),
	datab => \mcu|uPC\(0),
	datad => \RESET~input_o\,
	combout => \mcu|instruction_reg[15]~0_combout\);

-- Location: FF_X15_Y20_N1
\mcu|instruction_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(4));

-- Location: LCCOMB_X15_Y24_N0
\mcu|dp|Selector18~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~3_combout\ = (\mcu|dp|Selector18~2_combout\ & ((\mcu|dp|rf|register_arr[3][13]~q\) # ((!\mcu|instruction_reg\(4))))) # (!\mcu|dp|Selector18~2_combout\ & (((\mcu|dp|rf|register_arr[2][13]~q\ & \mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector18~2_combout\,
	datab => \mcu|dp|rf|register_arr[3][13]~q\,
	datac => \mcu|dp|rf|register_arr[2][13]~q\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector18~3_combout\);

-- Location: FF_X16_Y20_N23
\mcu|dp|rf|register_arr[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~45_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][13]~q\);

-- Location: LCCOMB_X16_Y20_N22
\mcu|dp|Selector18~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][13]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][13]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][13]~q\,
	datac => \mcu|dp|rf|register_arr[4][13]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector18~0_combout\);

-- Location: LCCOMB_X15_Y22_N24
\mcu|dp|Selector18~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector18~0_combout\ & ((\mcu|dp|rf|register_arr[7][13]~q\))) # (!\mcu|dp|Selector18~0_combout\ & (\mcu|dp|rf|register_arr[5][13]~q\)))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[5][13]~q\,
	datac => \mcu|dp|rf|register_arr[7][13]~q\,
	datad => \mcu|dp|Selector18~0_combout\,
	combout => \mcu|dp|Selector18~1_combout\);

-- Location: LCCOMB_X15_Y24_N24
\mcu|dp|Selector18~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & ((\mcu|dp|Selector18~1_combout\))) # (!\mcu|instruction_reg\(5) & (\mcu|dp|Selector18~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|dp|Selector18~3_combout\,
	datac => \mcu|instruction_reg\(5),
	datad => \mcu|dp|Selector18~1_combout\,
	combout => \mcu|dp|Selector18~4_combout\);

-- Location: LCCOMB_X15_Y24_N18
\mcu|dp|Selector18~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector18~5_combout\ = (\mcu|dp|Selector18~4_combout\) # ((\mcu|ucode|Mux8~0_combout\ & \mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|dp|Selector18~4_combout\,
	combout => \mcu|dp|Selector18~5_combout\);

-- Location: FF_X16_Y23_N9
\mcu|dp|rf|register_arr[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~19_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][11]~q\);

-- Location: LCCOMB_X16_Y20_N18
\mcu|dp|Selector20~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][11]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][11]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][11]~q\,
	datac => \mcu|dp|rf|register_arr[4][11]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector20~0_combout\);

-- Location: LCCOMB_X16_Y23_N8
\mcu|dp|Selector20~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector20~0_combout\ & (\mcu|dp|rf|register_arr[7][11]~q\)) # (!\mcu|dp|Selector20~0_combout\ & ((\mcu|dp|rf|register_arr[5][11]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[7][11]~q\,
	datac => \mcu|dp|rf|register_arr[5][11]~q\,
	datad => \mcu|dp|Selector20~0_combout\,
	combout => \mcu|dp|Selector20~1_combout\);

-- Location: FF_X15_Y23_N25
\mcu|dp|rf|register_arr[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~19_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][11]~q\);

-- Location: LCCOMB_X17_Y23_N2
\mcu|dp|rf|register_arr[0][11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][11]~feeder_combout\ = \mcu|dp|rf|register_arr~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~19_combout\,
	combout => \mcu|dp|rf|register_arr[0][11]~feeder_combout\);

-- Location: FF_X17_Y23_N3
\mcu|dp|rf|register_arr[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][11]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][11]~q\);

-- Location: LCCOMB_X17_Y23_N10
\mcu|dp|Selector20~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][11]~q\)) # (!\mcu|instruction_reg\(3) & 
-- ((\mcu|dp|rf|register_arr[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][11]~q\,
	datab => \mcu|dp|rf|register_arr[0][11]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector20~2_combout\);

-- Location: LCCOMB_X15_Y23_N24
\mcu|dp|Selector20~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector20~2_combout\ & (\mcu|dp|rf|register_arr[3][11]~q\)) # (!\mcu|dp|Selector20~2_combout\ & ((\mcu|dp|rf|register_arr[2][11]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][11]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][11]~q\,
	datad => \mcu|dp|Selector20~2_combout\,
	combout => \mcu|dp|Selector20~3_combout\);

-- Location: LCCOMB_X15_Y23_N28
\mcu|dp|Selector20~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector20~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector20~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector20~1_combout\,
	datad => \mcu|dp|Selector20~3_combout\,
	combout => \mcu|dp|Selector20~4_combout\);

-- Location: LCCOMB_X14_Y23_N2
\mcu|dp|Selector20~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector20~5_combout\ = (\mcu|dp|Selector20~4_combout\) # ((\mcu|instruction_reg\(8) & \mcu|ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|dp|Selector20~4_combout\,
	combout => \mcu|dp|Selector20~5_combout\);

-- Location: FF_X13_Y21_N21
\mcu|dp|rf|register_arr[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~21_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][10]~q\);

-- Location: LCCOMB_X13_Y21_N8
\mcu|dp|rf|register_arr[3][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][10]~feeder_combout\ = \mcu|dp|rf|register_arr~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~21_combout\,
	combout => \mcu|dp|rf|register_arr[3][10]~feeder_combout\);

-- Location: FF_X13_Y21_N9
\mcu|dp|rf|register_arr[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][10]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][10]~q\);

-- Location: LCCOMB_X13_Y21_N20
\mcu|dp|rf|QA[10]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~18_combout\ = (\mcu|dp|rf|QA[10]~17_combout\ & (((\mcu|dp|rf|register_arr[3][10]~q\)) # (!\mcu|dp|Selector34~0_combout\))) # (!\mcu|dp|rf|QA[10]~17_combout\ & (\mcu|dp|Selector34~0_combout\ & (\mcu|dp|rf|register_arr[2][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[10]~17_combout\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[2][10]~q\,
	datad => \mcu|dp|rf|register_arr[3][10]~q\,
	combout => \mcu|dp|rf|QA[10]~18_combout\);

-- Location: LCCOMB_X13_Y21_N30
\mcu|dp|rf|QA[10]~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[10]~19_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[10]~16_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[10]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[10]~16_combout\,
	datad => \mcu|dp|rf|QA[10]~18_combout\,
	combout => \mcu|dp|rf|QA[10]~19_combout\);

-- Location: LCCOMB_X16_Y23_N26
\mcu|dp|rf|register_arr[7][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][9]~feeder_combout\ = \mcu|dp|rf|register_arr~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~23_combout\,
	combout => \mcu|dp|rf|register_arr[7][9]~feeder_combout\);

-- Location: FF_X16_Y23_N27
\mcu|dp|rf|register_arr[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][9]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][9]~q\);

-- Location: FF_X15_Y21_N17
\mcu|dp|rf|register_arr[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~23_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][9]~q\);

-- Location: LCCOMB_X15_Y21_N16
\mcu|dp|Selector22~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~0_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & (\mcu|dp|rf|register_arr[6][9]~q\)) # (!\mcu|instruction_reg\(4) & 
-- ((\mcu|dp|rf|register_arr[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][9]~q\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[4][9]~q\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector22~0_combout\);

-- Location: LCCOMB_X16_Y23_N16
\mcu|dp|Selector22~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector22~0_combout\ & (\mcu|dp|rf|register_arr[7][9]~q\)) # (!\mcu|dp|Selector22~0_combout\ & ((\mcu|dp|rf|register_arr[5][9]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[7][9]~q\,
	datac => \mcu|dp|rf|register_arr[5][9]~q\,
	datad => \mcu|dp|Selector22~0_combout\,
	combout => \mcu|dp|Selector22~1_combout\);

-- Location: LCCOMB_X15_Y23_N30
\mcu|dp|rf|register_arr[2][9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][9]~feeder_combout\ = \mcu|dp|rf|register_arr~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~23_combout\,
	combout => \mcu|dp|rf|register_arr[2][9]~feeder_combout\);

-- Location: FF_X15_Y23_N31
\mcu|dp|rf|register_arr[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[2][9]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][9]~q\);

-- Location: LCCOMB_X16_Y22_N30
\mcu|dp|Selector22~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][9]~q\))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|rf|register_arr[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][9]~q\,
	datab => \mcu|dp|rf|register_arr[1][9]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector22~2_combout\);

-- Location: LCCOMB_X15_Y23_N20
\mcu|dp|Selector22~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector22~2_combout\ & (\mcu|dp|rf|register_arr[3][9]~q\)) # (!\mcu|dp|Selector22~2_combout\ & ((\mcu|dp|rf|register_arr[2][9]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[3][9]~q\,
	datac => \mcu|dp|rf|register_arr[2][9]~q\,
	datad => \mcu|dp|Selector22~2_combout\,
	combout => \mcu|dp|Selector22~3_combout\);

-- Location: LCCOMB_X15_Y23_N10
\mcu|dp|Selector22~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~4_combout\ = (\mcu|instruction_reg\(5) & (\mcu|dp|Selector22~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|Selector22~1_combout\,
	datac => \mcu|instruction_reg\(5),
	datad => \mcu|dp|Selector22~3_combout\,
	combout => \mcu|dp|Selector22~4_combout\);

-- Location: LCCOMB_X15_Y23_N12
\mcu|dp|Selector22~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector22~5_combout\ = (\mcu|instruction_reg\(8) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector22~4_combout\)))) # (!\mcu|instruction_reg\(8) & (((\mcu|dp|Selector31~6_combout\ & 
-- \mcu|dp|Selector22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|Selector31~6_combout\,
	datad => \mcu|dp|Selector22~4_combout\,
	combout => \mcu|dp|Selector22~5_combout\);

-- Location: FF_X13_Y22_N29
\mcu|dp|rf|register_arr[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][6]~q\);

-- Location: FF_X16_Y24_N25
\mcu|dp|rf|register_arr[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~29_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][6]~q\);

-- Location: LCCOMB_X16_Y24_N22
\mcu|dp|rf|QA[6]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~37_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][6]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][6]~q\,
	datab => \mcu|dp|rf|register_arr[0][6]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[6]~37_combout\);

-- Location: LCCOMB_X13_Y22_N28
\mcu|dp|rf|QA[6]~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~38_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[6]~37_combout\ & ((\mcu|dp|rf|register_arr[3][6]~q\))) # (!\mcu|dp|rf|QA[6]~37_combout\ & (\mcu|dp|rf|register_arr[2][6]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[6]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][6]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[3][6]~q\,
	datad => \mcu|dp|rf|QA[6]~37_combout\,
	combout => \mcu|dp|rf|QA[6]~38_combout\);

-- Location: LCCOMB_X13_Y22_N18
\mcu|dp|rf|QA[6]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~39_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[6]~36_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[6]~38_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|rf|QA[6]~36_combout\,
	datac => \mcu|dp|Selector33~0_combout\,
	datad => \mcu|dp|rf|QA[6]~38_combout\,
	combout => \mcu|dp|rf|QA[6]~39_combout\);

-- Location: LCCOMB_X13_Y22_N14
\mcu|dp|rf|register_arr~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~30_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(5)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(5),
	combout => \mcu|dp|rf|register_arr~30_combout\);

-- Location: LCCOMB_X13_Y22_N4
\mcu|dp|rf|register_arr~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~31_combout\ = (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~30_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\)))) # (!\mcu|dp|rf|register_arr~17_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~17_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|rf|register_arr~30_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\,
	combout => \mcu|dp|rf|register_arr~31_combout\);

-- Location: LCCOMB_X15_Y22_N8
\mcu|dp|rf|register_arr[7][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][5]~feeder_combout\ = \mcu|dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~31_combout\,
	combout => \mcu|dp|rf|register_arr[7][5]~feeder_combout\);

-- Location: FF_X15_Y22_N9
\mcu|dp|rf|register_arr[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][5]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][5]~q\);

-- Location: FF_X14_Y22_N27
\mcu|dp|rf|register_arr[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][5]~q\);

-- Location: FF_X13_Y22_N15
\mcu|dp|rf|register_arr[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][5]~q\);

-- Location: FF_X14_Y22_N29
\mcu|dp|rf|register_arr[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][5]~q\);

-- Location: LCCOMB_X14_Y22_N28
\mcu|dp|rf|QA[5]~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~40_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][5]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][5]~q\,
	datac => \mcu|dp|rf|register_arr[6][5]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[5]~40_combout\);

-- Location: LCCOMB_X14_Y22_N26
\mcu|dp|rf|QA[5]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~41_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[5]~40_combout\ & (\mcu|dp|rf|register_arr[7][5]~q\)) # (!\mcu|dp|rf|QA[5]~40_combout\ & ((\mcu|dp|rf|register_arr[5][5]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[5]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[7][5]~q\,
	datac => \mcu|dp|rf|register_arr[5][5]~q\,
	datad => \mcu|dp|rf|QA[5]~40_combout\,
	combout => \mcu|dp|rf|QA[5]~41_combout\);

-- Location: FF_X13_Y22_N9
\mcu|dp|rf|register_arr[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][5]~q\);

-- Location: FF_X14_Y24_N21
\mcu|dp|rf|register_arr[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~31_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][5]~q\);

-- Location: LCCOMB_X16_Y22_N26
\mcu|dp|rf|register_arr[1][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][5]~feeder_combout\ = \mcu|dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~31_combout\,
	combout => \mcu|dp|rf|register_arr[1][5]~feeder_combout\);

-- Location: FF_X16_Y22_N27
\mcu|dp|rf|register_arr[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][5]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][5]~q\);

-- Location: LCCOMB_X16_Y22_N24
\mcu|dp|rf|register_arr[0][5]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][5]~feeder_combout\ = \mcu|dp|rf|register_arr~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~31_combout\,
	combout => \mcu|dp|rf|register_arr[0][5]~feeder_combout\);

-- Location: FF_X16_Y22_N25
\mcu|dp|rf|register_arr[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][5]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][5]~q\);

-- Location: LCCOMB_X16_Y22_N14
\mcu|dp|rf|QA[5]~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~42_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][5]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[1][5]~q\,
	datac => \mcu|dp|rf|register_arr[0][5]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[5]~42_combout\);

-- Location: LCCOMB_X14_Y22_N6
\mcu|dp|rf|QA[5]~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~43_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[5]~42_combout\ & (\mcu|dp|rf|register_arr[3][5]~q\)) # (!\mcu|dp|rf|QA[5]~42_combout\ & ((\mcu|dp|rf|register_arr[2][5]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[5]~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[3][5]~q\,
	datac => \mcu|dp|rf|register_arr[2][5]~q\,
	datad => \mcu|dp|rf|QA[5]~42_combout\,
	combout => \mcu|dp|rf|QA[5]~43_combout\);

-- Location: LCCOMB_X14_Y22_N8
\mcu|dp|rf|QA[5]~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[5]~44_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[5]~41_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[5]~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[5]~41_combout\,
	datad => \mcu|dp|rf|QA[5]~43_combout\,
	combout => \mcu|dp|rf|QA[5]~44_combout\);

-- Location: FF_X15_Y23_N17
\mcu|dp|rf|register_arr[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][4]~q\);

-- Location: LCCOMB_X15_Y23_N26
\mcu|dp|rf|register_arr[2][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][4]~feeder_combout\ = \mcu|dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~33_combout\,
	combout => \mcu|dp|rf|register_arr[2][4]~feeder_combout\);

-- Location: FF_X15_Y23_N27
\mcu|dp|rf|register_arr[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[2][4]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][4]~q\);

-- Location: LCCOMB_X16_Y24_N8
\mcu|dp|rf|register_arr[1][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][4]~feeder_combout\ = \mcu|dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~33_combout\,
	combout => \mcu|dp|rf|register_arr[1][4]~feeder_combout\);

-- Location: FF_X16_Y24_N9
\mcu|dp|rf|register_arr[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][4]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][4]~q\);

-- Location: LCCOMB_X16_Y24_N30
\mcu|dp|Selector27~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~2_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[1][4]~q\) # (\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[0][4]~q\ & ((!\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][4]~q\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[1][4]~q\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector27~2_combout\);

-- Location: LCCOMB_X15_Y23_N8
\mcu|dp|Selector27~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector27~2_combout\ & (\mcu|dp|rf|register_arr[3][4]~q\)) # (!\mcu|dp|Selector27~2_combout\ & ((\mcu|dp|rf|register_arr[2][4]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[3][4]~q\,
	datac => \mcu|dp|rf|register_arr[2][4]~q\,
	datad => \mcu|dp|Selector27~2_combout\,
	combout => \mcu|dp|Selector27~3_combout\);

-- Location: FF_X14_Y22_N17
\mcu|dp|rf|register_arr[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][4]~q\);

-- Location: FF_X14_Y22_N19
\mcu|dp|rf|register_arr[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][4]~q\);

-- Location: LCCOMB_X15_Y21_N2
\mcu|dp|Selector27~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~0_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][4]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][4]~q\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|dp|rf|register_arr[6][4]~q\,
	combout => \mcu|dp|Selector27~0_combout\);

-- Location: LCCOMB_X15_Y22_N10
\mcu|dp|Selector27~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector27~0_combout\ & (\mcu|dp|rf|register_arr[7][4]~q\)) # (!\mcu|dp|Selector27~0_combout\ & ((\mcu|dp|rf|register_arr[5][4]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[7][4]~q\,
	datac => \mcu|dp|rf|register_arr[5][4]~q\,
	datad => \mcu|dp|Selector27~0_combout\,
	combout => \mcu|dp|Selector27~1_combout\);

-- Location: LCCOMB_X15_Y23_N6
\mcu|dp|Selector27~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~4_combout\ = (\mcu|instruction_reg\(5) & ((\mcu|dp|Selector27~1_combout\))) # (!\mcu|instruction_reg\(5) & (\mcu|dp|Selector27~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector27~3_combout\,
	datad => \mcu|dp|Selector27~1_combout\,
	combout => \mcu|dp|Selector27~4_combout\);

-- Location: LCCOMB_X15_Y23_N4
\mcu|dp|Selector27~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector27~5_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector27~4_combout\)))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|Selector31~6_combout\ & 
-- \mcu|dp|Selector27~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|Selector31~6_combout\,
	datad => \mcu|dp|Selector27~4_combout\,
	combout => \mcu|dp|Selector27~5_combout\);

-- Location: LCCOMB_X11_Y20_N14
\mcu|dp|rf|register_arr~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~42_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(14)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(8),
	datad => \memory|altsyncram_component|auto_generated|q_a\(14),
	combout => \mcu|dp|rf|register_arr~42_combout\);

-- Location: LCCOMB_X11_Y20_N28
\mcu|dp|rf|register_arr~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~43_combout\ = (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux1~4_combout\) # ((\mcu|dp|rf|register_arr~17_combout\ & \mcu|dp|rf|register_arr~42_combout\)))) # (!\mcu|dp|rf|register_arr~18_combout\ & 
-- (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~18_combout\,
	datab => \mcu|dp|rf|register_arr~17_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\,
	datad => \mcu|dp|rf|register_arr~42_combout\,
	combout => \mcu|dp|rf|register_arr~43_combout\);

-- Location: FF_X11_Y20_N19
\mcu|dp|rf|register_arr[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][14]~q\);

-- Location: FF_X16_Y20_N9
\mcu|dp|rf|register_arr[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][14]~q\);

-- Location: FF_X16_Y20_N31
\mcu|dp|rf|register_arr[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][14]~q\);

-- Location: LCCOMB_X16_Y20_N30
\mcu|dp|Selector17~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][14]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][14]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][14]~q\,
	datac => \mcu|dp|rf|register_arr[4][14]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector17~0_combout\);

-- Location: LCCOMB_X13_Y20_N20
\mcu|dp|Selector17~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector17~0_combout\ & (\mcu|dp|rf|register_arr[7][14]~q\)) # (!\mcu|dp|Selector17~0_combout\ & ((\mcu|dp|rf|register_arr[5][14]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][14]~q\,
	datab => \mcu|dp|rf|register_arr[5][14]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|dp|Selector17~0_combout\,
	combout => \mcu|dp|Selector17~1_combout\);

-- Location: FF_X15_Y24_N19
\mcu|dp|rf|register_arr[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][14]~q\);

-- Location: FF_X16_Y24_N29
\mcu|dp|rf|register_arr[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][14]~q\);

-- Location: LCCOMB_X16_Y24_N20
\mcu|dp|Selector17~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~2_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[1][14]~q\) # (\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[0][14]~q\ & ((!\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][14]~q\,
	datab => \mcu|dp|rf|register_arr[1][14]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector17~2_combout\);

-- Location: LCCOMB_X12_Y20_N8
\mcu|dp|Selector17~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector17~2_combout\ & (\mcu|dp|rf|register_arr[3][14]~q\)) # (!\mcu|dp|Selector17~2_combout\ & ((\mcu|dp|rf|register_arr[2][14]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][14]~q\,
	datab => \mcu|dp|rf|register_arr[2][14]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|dp|Selector17~2_combout\,
	combout => \mcu|dp|Selector17~3_combout\);

-- Location: LCCOMB_X13_Y20_N2
\mcu|dp|Selector17~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector17~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector17~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector17~1_combout\,
	datad => \mcu|dp|Selector17~3_combout\,
	combout => \mcu|dp|Selector17~4_combout\);

-- Location: LCCOMB_X13_Y20_N12
\mcu|dp|Selector17~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector17~5_combout\ = (\mcu|dp|Selector17~4_combout\) # ((\mcu|ucode|Mux8~0_combout\ & \mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|dp|Selector17~4_combout\,
	combout => \mcu|dp|Selector17~5_combout\);

-- Location: LCCOMB_X11_Y20_N16
\mcu|dp|the_best_alu_in_kista|Mux1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux1~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[14]~85_combout\ $ (((\mcu|ucode|Mux7~5_combout\) # (\mcu|dp|Selector17~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[14]~85_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|Selector17~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux1~2_combout\);

-- Location: LCCOMB_X12_Y20_N10
\mcu|dp|rf|register_arr[3][14]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][14]~feeder_combout\ = \mcu|dp|rf|register_arr~43_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~43_combout\,
	combout => \mcu|dp|rf|register_arr[3][14]~feeder_combout\);

-- Location: FF_X12_Y20_N11
\mcu|dp|rf|register_arr[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][14]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][14]~q\);

-- Location: FF_X16_Y24_N11
\mcu|dp|rf|register_arr[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][14]~q\);

-- Location: LCCOMB_X16_Y24_N28
\mcu|dp|rf|QA[14]~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~83_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][14]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[0][14]~q\,
	datac => \mcu|dp|rf|register_arr[1][14]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[14]~83_combout\);

-- Location: LCCOMB_X15_Y24_N4
\mcu|dp|rf|QA[14]~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~84_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[14]~83_combout\ & ((\mcu|dp|rf|register_arr[3][14]~q\))) # (!\mcu|dp|rf|QA[14]~83_combout\ & (\mcu|dp|rf|register_arr[2][14]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[14]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[2][14]~q\,
	datac => \mcu|dp|rf|register_arr[3][14]~q\,
	datad => \mcu|dp|rf|QA[14]~83_combout\,
	combout => \mcu|dp|rf|QA[14]~84_combout\);

-- Location: FF_X13_Y20_N7
\mcu|dp|rf|register_arr[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~43_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][14]~q\);

-- Location: LCCOMB_X16_Y20_N8
\mcu|dp|rf|QA[14]~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~81_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][14]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][14]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][14]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[14]~81_combout\);

-- Location: LCCOMB_X15_Y24_N12
\mcu|dp|rf|QA[14]~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~82_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[14]~81_combout\ & ((\mcu|dp|rf|register_arr[7][14]~q\))) # (!\mcu|dp|rf|QA[14]~81_combout\ & (\mcu|dp|rf|register_arr[5][14]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[14]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[5][14]~q\,
	datac => \mcu|dp|rf|register_arr[7][14]~q\,
	datad => \mcu|dp|rf|QA[14]~81_combout\,
	combout => \mcu|dp|rf|QA[14]~82_combout\);

-- Location: LCCOMB_X15_Y24_N30
\mcu|dp|rf|QA[14]~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[14]~85_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[14]~82_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[14]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[14]~84_combout\,
	datad => \mcu|dp|rf|QA[14]~82_combout\,
	combout => \mcu|dp|rf|QA[14]~85_combout\);

-- Location: LCCOMB_X13_Y23_N26
\mcu|dp|the_best_alu_in_kista|Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~26_combout\ = (\mcu|dp|Selector18~5_combout\ & ((\mcu|dp|rf|QA[13]~90_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~25\)) # (!\mcu|dp|rf|QA[13]~90_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~25\) # (GND))))) # 
-- (!\mcu|dp|Selector18~5_combout\ & ((\mcu|dp|rf|QA[13]~90_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~25\ & VCC)) # (!\mcu|dp|rf|QA[13]~90_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~25\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~27\ = CARRY((\mcu|dp|Selector18~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~25\) # (!\mcu|dp|rf|QA[13]~90_combout\))) # (!\mcu|dp|Selector18~5_combout\ & (!\mcu|dp|rf|QA[13]~90_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector18~5_combout\,
	datab => \mcu|dp|rf|QA[13]~90_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~25\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~26_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~27\);

-- Location: LCCOMB_X13_Y23_N28
\mcu|dp|the_best_alu_in_kista|Add1~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~28_combout\ = ((\mcu|dp|Selector17~5_combout\ $ (\mcu|dp|rf|QA[14]~85_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~27\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~29\ = CARRY((\mcu|dp|Selector17~5_combout\ & (\mcu|dp|rf|QA[14]~85_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~27\)) # (!\mcu|dp|Selector17~5_combout\ & ((\mcu|dp|rf|QA[14]~85_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~27\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector17~5_combout\,
	datab => \mcu|dp|rf|QA[14]~85_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~27\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~28_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~29\);

-- Location: FF_X16_Y23_N31
\mcu|dp|rf|register_arr[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][8]~q\);

-- Location: FF_X16_Y23_N21
\mcu|dp|rf|register_arr[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~25_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][8]~q\);

-- Location: LCCOMB_X16_Y23_N30
\mcu|dp|Selector23~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~1_combout\ = (\mcu|dp|Selector23~0_combout\ & (((\mcu|dp|rf|register_arr[7][8]~q\)) # (!\mcu|instruction_reg\(3)))) # (!\mcu|dp|Selector23~0_combout\ & (\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[5][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector23~0_combout\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[7][8]~q\,
	datad => \mcu|dp|rf|register_arr[5][8]~q\,
	combout => \mcu|dp|Selector23~1_combout\);

-- Location: LCCOMB_X17_Y20_N10
\mcu|dp|Selector23~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][8]~q\)) # (!\mcu|instruction_reg\(3) & 
-- ((\mcu|dp|rf|register_arr[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][8]~q\,
	datab => \mcu|dp|rf|register_arr[0][8]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector23~2_combout\);

-- Location: LCCOMB_X16_Y21_N12
\mcu|dp|Selector23~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector23~2_combout\ & (\mcu|dp|rf|register_arr[3][8]~q\)) # (!\mcu|dp|Selector23~2_combout\ & ((\mcu|dp|rf|register_arr[2][8]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][8]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|Selector23~2_combout\,
	datad => \mcu|dp|rf|register_arr[2][8]~q\,
	combout => \mcu|dp|Selector23~3_combout\);

-- Location: LCCOMB_X15_Y23_N2
\mcu|dp|Selector23~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~4_combout\ = (\mcu|instruction_reg\(5) & (\mcu|dp|Selector23~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector23~1_combout\,
	datad => \mcu|dp|Selector23~3_combout\,
	combout => \mcu|dp|Selector23~4_combout\);

-- Location: LCCOMB_X15_Y23_N0
\mcu|dp|Selector23~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector23~5_combout\ = (\mcu|instruction_reg\(8) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector23~4_combout\)))) # (!\mcu|instruction_reg\(8) & (((\mcu|dp|Selector31~6_combout\ & 
-- \mcu|dp|Selector23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|Selector31~6_combout\,
	datad => \mcu|dp|Selector23~4_combout\,
	combout => \mcu|dp|Selector23~5_combout\);

-- Location: FF_X14_Y24_N27
\mcu|dp|rf|register_arr[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][6]~q\);

-- Location: FF_X16_Y24_N27
\mcu|dp|rf|register_arr[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][6]~q\);

-- Location: LCCOMB_X16_Y24_N26
\mcu|dp|Selector25~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~2_combout\ = (\mcu|instruction_reg\(4) & (\mcu|instruction_reg\(3))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][6]~q\)) # (!\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[1][6]~q\,
	datad => \mcu|dp|rf|register_arr[0][6]~q\,
	combout => \mcu|dp|Selector25~2_combout\);

-- Location: LCCOMB_X14_Y24_N26
\mcu|dp|Selector25~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector25~2_combout\ & (\mcu|dp|rf|register_arr[3][6]~q\)) # (!\mcu|dp|Selector25~2_combout\ & ((\mcu|dp|rf|register_arr[2][6]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][6]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][6]~q\,
	datad => \mcu|dp|Selector25~2_combout\,
	combout => \mcu|dp|Selector25~3_combout\);

-- Location: FF_X14_Y22_N23
\mcu|dp|rf|register_arr[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][6]~q\);

-- Location: FF_X15_Y22_N7
\mcu|dp|rf|register_arr[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][6]~q\);

-- Location: FF_X14_Y22_N5
\mcu|dp|rf|register_arr[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][6]~q\);

-- Location: LCCOMB_X13_Y22_N16
\mcu|dp|Selector25~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~0_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][6]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][6]~q\,
	datab => \mcu|dp|rf|register_arr[6][6]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector25~0_combout\);

-- Location: LCCOMB_X15_Y22_N6
\mcu|dp|Selector25~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector25~0_combout\ & ((\mcu|dp|rf|register_arr[7][6]~q\))) # (!\mcu|dp|Selector25~0_combout\ & (\mcu|dp|rf|register_arr[5][6]~q\)))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[5][6]~q\,
	datac => \mcu|dp|rf|register_arr[7][6]~q\,
	datad => \mcu|dp|Selector25~0_combout\,
	combout => \mcu|dp|Selector25~1_combout\);

-- Location: LCCOMB_X14_Y24_N6
\mcu|dp|Selector25~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~4_combout\ = (\mcu|instruction_reg\(5) & ((\mcu|dp|Selector25~1_combout\))) # (!\mcu|instruction_reg\(5) & (\mcu|dp|Selector25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector25~3_combout\,
	datad => \mcu|dp|Selector25~1_combout\,
	combout => \mcu|dp|Selector25~4_combout\);

-- Location: LCCOMB_X14_Y24_N22
\mcu|dp|Selector25~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector25~5_combout\ = (\mcu|instruction_reg\(6) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector25~4_combout\)))) # (!\mcu|instruction_reg\(6) & (\mcu|dp|Selector31~6_combout\ & 
-- ((\mcu|dp|Selector25~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(6),
	datab => \mcu|dp|Selector31~6_combout\,
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|dp|Selector25~4_combout\,
	combout => \mcu|dp|Selector25~5_combout\);

-- Location: LCCOMB_X11_Y21_N16
\mcu|dp|rf|register_arr~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~35_combout\ = (\mcu|dp|rf|register_arr~34_combout\ & ((\mcu|dp|rf|register_arr~17_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\)))) # (!\mcu|dp|rf|register_arr~34_combout\ & 
-- (((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~34_combout\,
	datab => \mcu|dp|rf|register_arr~17_combout\,
	datac => \mcu|dp|rf|register_arr~18_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\,
	combout => \mcu|dp|rf|register_arr~35_combout\);

-- Location: FF_X13_Y21_N23
\mcu|dp|rf|register_arr[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][3]~q\);

-- Location: FF_X13_Y23_N1
\mcu|dp|rf|register_arr[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][3]~q\);

-- Location: LCCOMB_X13_Y21_N18
\mcu|dp|Selector28~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~0_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][3]~q\)) # (!\mcu|instruction_reg\(3) & 
-- ((\mcu|dp|rf|register_arr[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][3]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[0][3]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector28~0_combout\);

-- Location: LCCOMB_X13_Y21_N22
\mcu|dp|Selector28~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~1_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector28~0_combout\ & (\mcu|dp|rf|register_arr[3][3]~q\)) # (!\mcu|dp|Selector28~0_combout\ & ((\mcu|dp|rf|register_arr[2][3]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][3]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][3]~q\,
	datad => \mcu|dp|Selector28~0_combout\,
	combout => \mcu|dp|Selector28~1_combout\);

-- Location: LCCOMB_X14_Y20_N0
\mcu|Mux0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux0~3_combout\ = (!\mcu|uPC\(1) & \mcu|uPC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|uPC\(1),
	datad => \mcu|uPC\(0),
	combout => \mcu|Mux0~3_combout\);

-- Location: LCCOMB_X15_Y20_N2
\mcu|dp|Selector31~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~2_combout\ = (!\mcu|ucode|Mux8~0_combout\ & (\mcu|Mux0~3_combout\ & (!\mcu|instruction_reg\(5) & !\mcu|ucode|Mux21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|Mux0~3_combout\,
	datac => \mcu|instruction_reg\(5),
	datad => \mcu|ucode|Mux21~0_combout\,
	combout => \mcu|dp|Selector31~2_combout\);

-- Location: LCCOMB_X13_Y21_N28
\mcu|dp|Selector28~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~2_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector28~1_combout\ & \mcu|dp|Selector31~2_combout\)))) # (!\mcu|instruction_reg\(3) & (((\mcu|dp|Selector28~1_combout\ & 
-- \mcu|dp|Selector31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|Selector28~1_combout\,
	datad => \mcu|dp|Selector31~2_combout\,
	combout => \mcu|dp|Selector28~2_combout\);

-- Location: FF_X14_Y22_N31
\mcu|dp|rf|register_arr[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][3]~q\);

-- Location: FF_X14_Y22_N25
\mcu|dp|rf|register_arr[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][3]~q\);

-- Location: LCCOMB_X15_Y21_N10
\mcu|dp|Selector28~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~3_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][3]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][3]~q\,
	datab => \mcu|dp|rf|register_arr[6][3]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector28~3_combout\);

-- Location: LCCOMB_X15_Y22_N30
\mcu|dp|Selector28~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~4_combout\ = (\mcu|dp|Selector28~3_combout\ & ((\mcu|dp|rf|register_arr[7][3]~q\) # ((!\mcu|instruction_reg\(3))))) # (!\mcu|dp|Selector28~3_combout\ & (((\mcu|dp|rf|register_arr[5][3]~q\ & \mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][3]~q\,
	datab => \mcu|dp|rf|register_arr[5][3]~q\,
	datac => \mcu|dp|Selector28~3_combout\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector28~4_combout\);

-- Location: LCCOMB_X13_Y21_N26
\mcu|dp|Selector28~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector28~5_combout\ = (\mcu|dp|Selector28~2_combout\) # ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector28~4_combout\ & \mcu|dp|Selector31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|dp|Selector28~2_combout\,
	datac => \mcu|dp|Selector28~4_combout\,
	datad => \mcu|dp|Selector31~6_combout\,
	combout => \mcu|dp|Selector28~5_combout\);

-- Location: FF_X12_Y24_N15
\mcu|Data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(15));

-- Location: M9K_X7_Y21_N0
\memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiv_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"1C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C",
	mem_init1 => X"00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001",
	mem_init0 => X"C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070001C00070003C0009A8027200F0FC1C000C00304020048819000A00E288049CC02980CAC2002DA00B6802DA0AB00",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram:memory|altsyncram:altsyncram_component|altsyncram_7di1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \Equal1~1_combout\,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X15_Y21_N8
\mcu|dp|rf|register_arr~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~0_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(0)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(0),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(0),
	combout => \mcu|dp|rf|register_arr~0_combout\);

-- Location: LCCOMB_X15_Y21_N30
\mcu|dp|rf|register_arr~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~1_combout\ = (!\RESET~input_o\ & ((\mcu|ucode|Mux0~1_combout\ & (\mcu|dp|rf|register_arr~0_combout\)) # (!\mcu|ucode|Mux0~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux0~1_combout\,
	datab => \RESET~input_o\,
	datac => \mcu|dp|rf|register_arr~0_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\,
	combout => \mcu|dp|rf|register_arr~1_combout\);

-- Location: FF_X16_Y23_N13
\mcu|dp|rf|register_arr[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][0]~q\);

-- Location: FF_X15_Y21_N9
\mcu|dp|rf|register_arr[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][0]~q\);

-- Location: LCCOMB_X15_Y20_N30
\mcu|dp|rf|QA[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~0_combout\ = (\mcu|instruction_reg\(6) & (((\mcu|instruction_reg\(7))))) # (!\mcu|instruction_reg\(6) & ((\mcu|instruction_reg\(7) & ((\mcu|dp|rf|register_arr[6][0]~q\))) # (!\mcu|instruction_reg\(7) & 
-- (\mcu|dp|rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][0]~q\,
	datab => \mcu|instruction_reg\(6),
	datac => \mcu|instruction_reg\(7),
	datad => \mcu|dp|rf|register_arr[6][0]~q\,
	combout => \mcu|dp|rf|QA[0]~0_combout\);

-- Location: LCCOMB_X15_Y21_N6
\mcu|dp|rf|register_arr[4][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[4][0]~feeder_combout\ = \mcu|dp|rf|register_arr~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~1_combout\,
	combout => \mcu|dp|rf|register_arr[4][0]~feeder_combout\);

-- Location: FF_X15_Y21_N7
\mcu|dp|rf|register_arr[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[4][0]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][0]~q\);

-- Location: LCCOMB_X15_Y20_N0
\mcu|dp|rf|QA[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~1_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][0]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[4][0]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|dp|rf|register_arr[6][0]~q\,
	combout => \mcu|dp|rf|QA[0]~1_combout\);

-- Location: LCCOMB_X15_Y20_N10
\mcu|dp|rf|QA[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~2_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~2_combout\ & ((\mcu|dp|rf|QA[0]~1_combout\))) # (!\mcu|Mux0~2_combout\ & (\mcu|dp|rf|QA[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux0~2_combout\,
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|rf|QA[0]~0_combout\,
	datad => \mcu|dp|rf|QA[0]~1_combout\,
	combout => \mcu|dp|rf|QA[0]~2_combout\);

-- Location: LCCOMB_X16_Y23_N12
\mcu|dp|rf|QA[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~3_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[0]~2_combout\ & (\mcu|dp|rf|register_arr[7][0]~q\)) # (!\mcu|dp|rf|QA[0]~2_combout\ & ((\mcu|dp|rf|register_arr[5][0]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][0]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[5][0]~q\,
	datad => \mcu|dp|rf|QA[0]~2_combout\,
	combout => \mcu|dp|rf|QA[0]~3_combout\);

-- Location: FF_X15_Y20_N29
\mcu|dp|rf|register_arr[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][0]~q\);

-- Location: FF_X15_Y24_N15
\mcu|dp|rf|register_arr[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][0]~q\);

-- Location: LCCOMB_X16_Y22_N4
\mcu|dp|rf|register_arr[1][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][0]~feeder_combout\ = \mcu|dp|rf|register_arr~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~1_combout\,
	combout => \mcu|dp|rf|register_arr[1][0]~feeder_combout\);

-- Location: FF_X16_Y22_N5
\mcu|dp|rf|register_arr[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][0]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][0]~q\);

-- Location: LCCOMB_X15_Y20_N8
\mcu|dp|rf|QA[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~5_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][0]~q\))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[0][0]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|dp|rf|register_arr[1][0]~q\,
	combout => \mcu|dp|rf|QA[0]~5_combout\);

-- Location: LCCOMB_X15_Y20_N14
\mcu|dp|rf|QA[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~4_combout\ = (\mcu|instruction_reg\(7) & (((\mcu|instruction_reg\(6))))) # (!\mcu|instruction_reg\(7) & ((\mcu|instruction_reg\(6) & ((\mcu|dp|rf|register_arr[1][0]~q\))) # (!\mcu|instruction_reg\(6) & 
-- (\mcu|dp|rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(7),
	datab => \mcu|dp|rf|register_arr[0][0]~q\,
	datac => \mcu|instruction_reg\(6),
	datad => \mcu|dp|rf|register_arr[1][0]~q\,
	combout => \mcu|dp|rf|QA[0]~4_combout\);

-- Location: LCCOMB_X15_Y20_N6
\mcu|dp|rf|QA[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~6_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~2_combout\ & (\mcu|dp|rf|QA[0]~5_combout\)) # (!\mcu|Mux0~2_combout\ & ((\mcu|dp|rf|QA[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux0~2_combout\,
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|dp|rf|QA[0]~5_combout\,
	datad => \mcu|dp|rf|QA[0]~4_combout\,
	combout => \mcu|dp|rf|QA[0]~6_combout\);

-- Location: LCCOMB_X15_Y20_N28
\mcu|dp|rf|QA[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~7_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[0]~6_combout\ & ((\mcu|dp|rf|register_arr[3][0]~q\))) # (!\mcu|dp|rf|QA[0]~6_combout\ & (\mcu|dp|rf|register_arr[2][0]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][0]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[3][0]~q\,
	datad => \mcu|dp|rf|QA[0]~6_combout\,
	combout => \mcu|dp|rf|QA[0]~7_combout\);

-- Location: LCCOMB_X14_Y23_N8
\mcu|dp|rf|QA[0]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[0]~8_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[0]~3_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[0]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[0]~3_combout\,
	datad => \mcu|dp|rf|QA[0]~7_combout\,
	combout => \mcu|dp|rf|QA[0]~8_combout\);

-- Location: LCCOMB_X13_Y24_N4
\mcu|dp|the_best_alu_in_kista|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~4_combout\ = ((\mcu|dp|rf|QA[2]~59_combout\ $ (\mcu|dp|Selector29~5_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~3\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~5\ = CARRY((\mcu|dp|rf|QA[2]~59_combout\ & ((\mcu|dp|Selector29~5_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~3\))) # (!\mcu|dp|rf|QA[2]~59_combout\ & (\mcu|dp|Selector29~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[2]~59_combout\,
	datab => \mcu|dp|Selector29~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~3\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~4_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~5\);

-- Location: LCCOMB_X13_Y24_N8
\mcu|dp|the_best_alu_in_kista|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~8_combout\ = ((\mcu|dp|Selector27~5_combout\ $ (\mcu|dp|rf|QA[4]~49_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~7\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~9\ = CARRY((\mcu|dp|Selector27~5_combout\ & ((\mcu|dp|rf|QA[4]~49_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~7\))) # (!\mcu|dp|Selector27~5_combout\ & (\mcu|dp|rf|QA[4]~49_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector27~5_combout\,
	datab => \mcu|dp|rf|QA[4]~49_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~7\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~8_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~9\);

-- Location: LCCOMB_X13_Y24_N10
\mcu|dp|the_best_alu_in_kista|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~10_combout\ = (\mcu|dp|Selector26~5_combout\ & ((\mcu|dp|rf|QA[5]~44_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~9\ & VCC)) # (!\mcu|dp|rf|QA[5]~44_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~9\)))) # 
-- (!\mcu|dp|Selector26~5_combout\ & ((\mcu|dp|rf|QA[5]~44_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~9\)) # (!\mcu|dp|rf|QA[5]~44_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~9\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~11\ = CARRY((\mcu|dp|Selector26~5_combout\ & (!\mcu|dp|rf|QA[5]~44_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~9\)) # (!\mcu|dp|Selector26~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~9\) # 
-- (!\mcu|dp|rf|QA[5]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector26~5_combout\,
	datab => \mcu|dp|rf|QA[5]~44_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~9\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~10_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~11\);

-- Location: LCCOMB_X13_Y24_N18
\mcu|dp|the_best_alu_in_kista|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~18_combout\ = (\mcu|dp|Selector22~5_combout\ & ((\mcu|dp|rf|QA[9]~24_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~17\ & VCC)) # (!\mcu|dp|rf|QA[9]~24_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~17\)))) # 
-- (!\mcu|dp|Selector22~5_combout\ & ((\mcu|dp|rf|QA[9]~24_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~17\)) # (!\mcu|dp|rf|QA[9]~24_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~17\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~19\ = CARRY((\mcu|dp|Selector22~5_combout\ & (!\mcu|dp|rf|QA[9]~24_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~17\)) # (!\mcu|dp|Selector22~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~17\) # 
-- (!\mcu|dp|rf|QA[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector22~5_combout\,
	datab => \mcu|dp|rf|QA[9]~24_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~17\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~18_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~19\);

-- Location: LCCOMB_X13_Y24_N20
\mcu|dp|the_best_alu_in_kista|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~20_combout\ = ((\mcu|dp|rf|QA[10]~19_combout\ $ (\mcu|dp|Selector21~5_combout\ $ (!\mcu|dp|the_best_alu_in_kista|Add0~19\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add0~21\ = CARRY((\mcu|dp|rf|QA[10]~19_combout\ & ((\mcu|dp|Selector21~5_combout\) # (!\mcu|dp|the_best_alu_in_kista|Add0~19\))) # (!\mcu|dp|rf|QA[10]~19_combout\ & (\mcu|dp|Selector21~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[10]~19_combout\,
	datab => \mcu|dp|Selector21~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~19\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~20_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~21\);

-- Location: LCCOMB_X13_Y24_N22
\mcu|dp|the_best_alu_in_kista|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~22_combout\ = (\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~21\ & VCC)) # (!\mcu|dp|Selector20~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~21\)))) # 
-- (!\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~21\)) # (!\mcu|dp|Selector20~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~21\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~23\ = CARRY((\mcu|dp|rf|QA[11]~14_combout\ & (!\mcu|dp|Selector20~5_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~21\)) # (!\mcu|dp|rf|QA[11]~14_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~21\) # 
-- (!\mcu|dp|Selector20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[11]~14_combout\,
	datab => \mcu|dp|Selector20~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~21\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~22_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~23\);

-- Location: LCCOMB_X13_Y24_N26
\mcu|dp|the_best_alu_in_kista|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add0~26_combout\ = (\mcu|dp|rf|QA[13]~90_combout\ & ((\mcu|dp|Selector18~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~25\ & VCC)) # (!\mcu|dp|Selector18~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~25\)))) # 
-- (!\mcu|dp|rf|QA[13]~90_combout\ & ((\mcu|dp|Selector18~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add0~25\)) # (!\mcu|dp|Selector18~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~25\) # (GND)))))
-- \mcu|dp|the_best_alu_in_kista|Add0~27\ = CARRY((\mcu|dp|rf|QA[13]~90_combout\ & (!\mcu|dp|Selector18~5_combout\ & !\mcu|dp|the_best_alu_in_kista|Add0~25\)) # (!\mcu|dp|rf|QA[13]~90_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add0~25\) # 
-- (!\mcu|dp|Selector18~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[13]~90_combout\,
	datab => \mcu|dp|Selector18~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add0~25\,
	combout => \mcu|dp|the_best_alu_in_kista|Add0~26_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add0~27\);

-- Location: LCCOMB_X11_Y20_N26
\mcu|dp|the_best_alu_in_kista|Mux1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux1~1_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux1~0_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Add1~28_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux1~0_combout\ & 
-- (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux1~0_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add1~28_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~28_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux1~1_combout\);

-- Location: LCCOMB_X11_Y20_N8
\mcu|dp|the_best_alu_in_kista|Mux1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux1~3_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux1~2_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux1~3_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux1~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux1~1_combout\,
	datad => \mcu|ucode|Mux5~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\);

-- Location: FF_X11_Y23_N21
\mcu|Data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(14));

-- Location: LCCOMB_X13_Y20_N14
\mcu|instruction_reg[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|instruction_reg[1]~feeder_combout\ = \memory|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \mcu|instruction_reg[1]~feeder_combout\);

-- Location: FF_X13_Y20_N15
\mcu|instruction_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|instruction_reg[1]~feeder_combout\,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(1));

-- Location: LCCOMB_X12_Y22_N12
\mcu|dp|rf|register_arr~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~38_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(1)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(1),
	datac => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \mcu|dp|rf|register_arr~38_combout\);

-- Location: LCCOMB_X11_Y22_N6
\mcu|dp|rf|register_arr~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~39_combout\ = (!\RESET~input_o\ & ((\mcu|ucode|Mux0~1_combout\ & (\mcu|dp|rf|register_arr~38_combout\)) # (!\mcu|ucode|Mux0~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux0~1_combout\,
	datab => \RESET~input_o\,
	datac => \mcu|dp|rf|register_arr~38_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\,
	combout => \mcu|dp|rf|register_arr~39_combout\);

-- Location: FF_X14_Y24_N25
\mcu|dp|rf|register_arr[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][1]~q\);

-- Location: LCCOMB_X14_Y23_N16
\mcu|dp|rf|register_arr[1][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][1]~feeder_combout\ = \mcu|dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~39_combout\,
	combout => \mcu|dp|rf|register_arr[1][1]~feeder_combout\);

-- Location: FF_X14_Y23_N17
\mcu|dp|rf|register_arr[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][1]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][1]~q\);

-- Location: LCCOMB_X14_Y23_N6
\mcu|dp|rf|QA[1]~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~62_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][1]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][1]~q\,
	datab => \mcu|dp|rf|register_arr[1][1]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[1]~62_combout\);

-- Location: LCCOMB_X14_Y23_N4
\mcu|dp|rf|QA[1]~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~63_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[1]~62_combout\ & (\mcu|dp|rf|register_arr[3][1]~q\)) # (!\mcu|dp|rf|QA[1]~62_combout\ & ((\mcu|dp|rf|register_arr[2][1]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[1]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][1]~q\,
	datab => \mcu|dp|rf|register_arr[2][1]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|rf|QA[1]~62_combout\,
	combout => \mcu|dp|rf|QA[1]~63_combout\);

-- Location: LCCOMB_X13_Y20_N16
\mcu|dp|rf|register_arr[7][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][1]~feeder_combout\ = \mcu|dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~39_combout\,
	combout => \mcu|dp|rf|register_arr[7][1]~feeder_combout\);

-- Location: FF_X13_Y20_N17
\mcu|dp|rf|register_arr[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][1]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][1]~q\);

-- Location: FF_X14_Y22_N3
\mcu|dp|rf|register_arr[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][1]~q\);

-- Location: FF_X13_Y22_N23
\mcu|dp|rf|register_arr[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][1]~q\);

-- Location: FF_X14_Y22_N21
\mcu|dp|rf|register_arr[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~39_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][1]~q\);

-- Location: LCCOMB_X14_Y22_N20
\mcu|dp|rf|QA[1]~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~60_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][1]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][1]~q\,
	datac => \mcu|dp|rf|register_arr[6][1]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[1]~60_combout\);

-- Location: LCCOMB_X14_Y22_N2
\mcu|dp|rf|QA[1]~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~61_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[1]~60_combout\ & (\mcu|dp|rf|register_arr[7][1]~q\)) # (!\mcu|dp|rf|QA[1]~60_combout\ & ((\mcu|dp|rf|register_arr[5][1]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[1]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[7][1]~q\,
	datac => \mcu|dp|rf|register_arr[5][1]~q\,
	datad => \mcu|dp|rf|QA[1]~60_combout\,
	combout => \mcu|dp|rf|QA[1]~61_combout\);

-- Location: LCCOMB_X14_Y23_N14
\mcu|dp|rf|QA[1]~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[1]~64_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[1]~61_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[1]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[1]~63_combout\,
	datad => \mcu|dp|rf|QA[1]~61_combout\,
	combout => \mcu|dp|rf|QA[1]~64_combout\);

-- Location: LCCOMB_X15_Y21_N24
\mcu|dp|Selector31~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~4_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][0]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][0]~q\,
	datab => \mcu|dp|rf|register_arr[6][0]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector31~4_combout\);

-- Location: FF_X16_Y23_N3
\mcu|dp|rf|register_arr[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~1_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][0]~q\);

-- Location: LCCOMB_X16_Y23_N2
\mcu|dp|Selector31~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~5_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector31~4_combout\ & (\mcu|dp|rf|register_arr[7][0]~q\)) # (!\mcu|dp|Selector31~4_combout\ & ((\mcu|dp|rf|register_arr[5][0]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|Selector31~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|Selector31~4_combout\,
	datac => \mcu|dp|rf|register_arr[7][0]~q\,
	datad => \mcu|dp|rf|register_arr[5][0]~q\,
	combout => \mcu|dp|Selector31~5_combout\);

-- Location: FF_X15_Y20_N19
\mcu|instruction_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(0));

-- Location: LCCOMB_X15_Y24_N28
\mcu|dp|rf|register_arr[2][0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[2][0]~feeder_combout\ = \mcu|dp|rf|register_arr~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~1_combout\,
	combout => \mcu|dp|rf|register_arr[2][0]~feeder_combout\);

-- Location: FF_X15_Y24_N29
\mcu|dp|rf|register_arr[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[2][0]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][0]~q\);

-- Location: LCCOMB_X15_Y24_N8
\mcu|dp|Selector31~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~0_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][0]~q\))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|rf|register_arr[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[0][0]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|dp|rf|register_arr[1][0]~q\,
	combout => \mcu|dp|Selector31~0_combout\);

-- Location: LCCOMB_X15_Y24_N6
\mcu|dp|Selector31~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~1_combout\ = (\mcu|dp|Selector31~0_combout\ & ((\mcu|dp|rf|register_arr[3][0]~q\) # ((!\mcu|instruction_reg\(4))))) # (!\mcu|dp|Selector31~0_combout\ & (((\mcu|dp|rf|register_arr[2][0]~q\ & \mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][0]~q\,
	datab => \mcu|dp|rf|register_arr[2][0]~q\,
	datac => \mcu|dp|Selector31~0_combout\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector31~1_combout\);

-- Location: LCCOMB_X15_Y20_N18
\mcu|dp|Selector31~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~3_combout\ = (\mcu|ucode|Mux8~0_combout\ & ((\mcu|instruction_reg\(0)) # ((\mcu|dp|Selector31~2_combout\ & \mcu|dp|Selector31~1_combout\)))) # (!\mcu|ucode|Mux8~0_combout\ & (\mcu|dp|Selector31~2_combout\ & 
-- ((\mcu|dp|Selector31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|dp|Selector31~2_combout\,
	datac => \mcu|instruction_reg\(0),
	datad => \mcu|dp|Selector31~1_combout\,
	combout => \mcu|dp|Selector31~3_combout\);

-- Location: LCCOMB_X16_Y23_N0
\mcu|dp|Selector31~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~7_combout\ = (\mcu|dp|Selector31~3_combout\) # ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector31~5_combout\ & \mcu|dp|Selector31~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|dp|Selector31~5_combout\,
	datac => \mcu|dp|Selector31~6_combout\,
	datad => \mcu|dp|Selector31~3_combout\,
	combout => \mcu|dp|Selector31~7_combout\);

-- Location: LCCOMB_X13_Y23_N0
\mcu|dp|the_best_alu_in_kista|Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~0_combout\ = (\mcu|dp|rf|QA[0]~8_combout\ & ((GND) # (!\mcu|dp|Selector31~7_combout\))) # (!\mcu|dp|rf|QA[0]~8_combout\ & (\mcu|dp|Selector31~7_combout\ $ (GND)))
-- \mcu|dp|the_best_alu_in_kista|Add1~1\ = CARRY((\mcu|dp|rf|QA[0]~8_combout\) # (!\mcu|dp|Selector31~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[0]~8_combout\,
	datab => \mcu|dp|Selector31~7_combout\,
	datad => VCC,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~0_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~1\);

-- Location: LCCOMB_X13_Y23_N2
\mcu|dp|the_best_alu_in_kista|Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~2_combout\ = (\mcu|dp|Selector30~5_combout\ & ((\mcu|dp|rf|QA[1]~64_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~1\)) # (!\mcu|dp|rf|QA[1]~64_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~1\) # (GND))))) # 
-- (!\mcu|dp|Selector30~5_combout\ & ((\mcu|dp|rf|QA[1]~64_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~1\ & VCC)) # (!\mcu|dp|rf|QA[1]~64_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~1\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~3\ = CARRY((\mcu|dp|Selector30~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~1\) # (!\mcu|dp|rf|QA[1]~64_combout\))) # (!\mcu|dp|Selector30~5_combout\ & (!\mcu|dp|rf|QA[1]~64_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector30~5_combout\,
	datab => \mcu|dp|rf|QA[1]~64_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~1\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~2_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~3\);

-- Location: LCCOMB_X13_Y23_N4
\mcu|dp|the_best_alu_in_kista|Add1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~4_combout\ = ((\mcu|dp|rf|QA[2]~59_combout\ $ (\mcu|dp|Selector29~5_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~3\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~5\ = CARRY((\mcu|dp|rf|QA[2]~59_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~3\) # (!\mcu|dp|Selector29~5_combout\))) # (!\mcu|dp|rf|QA[2]~59_combout\ & (!\mcu|dp|Selector29~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[2]~59_combout\,
	datab => \mcu|dp|Selector29~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~3\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~4_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~5\);

-- Location: LCCOMB_X13_Y23_N6
\mcu|dp|the_best_alu_in_kista|Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~6_combout\ = (\mcu|dp|Selector28~5_combout\ & ((\mcu|dp|rf|QA[3]~54_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~5\)) # (!\mcu|dp|rf|QA[3]~54_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~5\) # (GND))))) # 
-- (!\mcu|dp|Selector28~5_combout\ & ((\mcu|dp|rf|QA[3]~54_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~5\ & VCC)) # (!\mcu|dp|rf|QA[3]~54_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~5\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~7\ = CARRY((\mcu|dp|Selector28~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~5\) # (!\mcu|dp|rf|QA[3]~54_combout\))) # (!\mcu|dp|Selector28~5_combout\ & (!\mcu|dp|rf|QA[3]~54_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector28~5_combout\,
	datab => \mcu|dp|rf|QA[3]~54_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~5\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~6_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~7\);

-- Location: LCCOMB_X13_Y23_N10
\mcu|dp|the_best_alu_in_kista|Add1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~10_combout\ = (\mcu|dp|Selector26~5_combout\ & ((\mcu|dp|rf|QA[5]~44_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~9\)) # (!\mcu|dp|rf|QA[5]~44_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~9\) # (GND))))) # 
-- (!\mcu|dp|Selector26~5_combout\ & ((\mcu|dp|rf|QA[5]~44_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~9\ & VCC)) # (!\mcu|dp|rf|QA[5]~44_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~9\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~11\ = CARRY((\mcu|dp|Selector26~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~9\) # (!\mcu|dp|rf|QA[5]~44_combout\))) # (!\mcu|dp|Selector26~5_combout\ & (!\mcu|dp|rf|QA[5]~44_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector26~5_combout\,
	datab => \mcu|dp|rf|QA[5]~44_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~9\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~10_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~11\);

-- Location: LCCOMB_X13_Y23_N12
\mcu|dp|the_best_alu_in_kista|Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~12_combout\ = ((\mcu|dp|Selector25~5_combout\ $ (\mcu|dp|rf|QA[6]~39_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~11\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~13\ = CARRY((\mcu|dp|Selector25~5_combout\ & (\mcu|dp|rf|QA[6]~39_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~11\)) # (!\mcu|dp|Selector25~5_combout\ & ((\mcu|dp|rf|QA[6]~39_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector25~5_combout\,
	datab => \mcu|dp|rf|QA[6]~39_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~11\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~12_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~13\);

-- Location: LCCOMB_X13_Y23_N14
\mcu|dp|the_best_alu_in_kista|Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~14_combout\ = (\mcu|dp|Selector24~5_combout\ & ((\mcu|dp|rf|QA[7]~34_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~13\)) # (!\mcu|dp|rf|QA[7]~34_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~13\) # (GND))))) # 
-- (!\mcu|dp|Selector24~5_combout\ & ((\mcu|dp|rf|QA[7]~34_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~13\ & VCC)) # (!\mcu|dp|rf|QA[7]~34_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~13\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~15\ = CARRY((\mcu|dp|Selector24~5_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~13\) # (!\mcu|dp|rf|QA[7]~34_combout\))) # (!\mcu|dp|Selector24~5_combout\ & (!\mcu|dp|rf|QA[7]~34_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector24~5_combout\,
	datab => \mcu|dp|rf|QA[7]~34_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~13\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~14_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~15\);

-- Location: LCCOMB_X13_Y23_N16
\mcu|dp|the_best_alu_in_kista|Add1~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~16_combout\ = ((\mcu|dp|Selector23~5_combout\ $ (\mcu|dp|rf|QA[8]~29_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~15\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~17\ = CARRY((\mcu|dp|Selector23~5_combout\ & (\mcu|dp|rf|QA[8]~29_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~15\)) # (!\mcu|dp|Selector23~5_combout\ & ((\mcu|dp|rf|QA[8]~29_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector23~5_combout\,
	datab => \mcu|dp|rf|QA[8]~29_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~15\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~16_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~17\);

-- Location: LCCOMB_X13_Y23_N18
\mcu|dp|the_best_alu_in_kista|Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~18_combout\ = (\mcu|dp|rf|QA[9]~24_combout\ & ((\mcu|dp|Selector22~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~17\)) # (!\mcu|dp|Selector22~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~17\ & VCC)))) # 
-- (!\mcu|dp|rf|QA[9]~24_combout\ & ((\mcu|dp|Selector22~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~17\) # (GND))) # (!\mcu|dp|Selector22~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~17\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~19\ = CARRY((\mcu|dp|rf|QA[9]~24_combout\ & (\mcu|dp|Selector22~5_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~17\)) # (!\mcu|dp|rf|QA[9]~24_combout\ & ((\mcu|dp|Selector22~5_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~17\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[9]~24_combout\,
	datab => \mcu|dp|Selector22~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~17\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~18_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~19\);

-- Location: LCCOMB_X13_Y23_N20
\mcu|dp|the_best_alu_in_kista|Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~20_combout\ = ((\mcu|dp|Selector21~5_combout\ $ (\mcu|dp|rf|QA[10]~19_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~19\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~21\ = CARRY((\mcu|dp|Selector21~5_combout\ & (\mcu|dp|rf|QA[10]~19_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~19\)) # (!\mcu|dp|Selector21~5_combout\ & ((\mcu|dp|rf|QA[10]~19_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector21~5_combout\,
	datab => \mcu|dp|rf|QA[10]~19_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~19\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~20_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~21\);

-- Location: LCCOMB_X13_Y23_N22
\mcu|dp|the_best_alu_in_kista|Add1~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~22_combout\ = (\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~21\)) # (!\mcu|dp|Selector20~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~21\ & VCC)))) # 
-- (!\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~21\) # (GND))) # (!\mcu|dp|Selector20~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Add1~21\))))
-- \mcu|dp|the_best_alu_in_kista|Add1~23\ = CARRY((\mcu|dp|rf|QA[11]~14_combout\ & (\mcu|dp|Selector20~5_combout\ & !\mcu|dp|the_best_alu_in_kista|Add1~21\)) # (!\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\) # 
-- (!\mcu|dp|the_best_alu_in_kista|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[11]~14_combout\,
	datab => \mcu|dp|Selector20~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~21\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~22_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~23\);

-- Location: LCCOMB_X13_Y23_N24
\mcu|dp|the_best_alu_in_kista|Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~24_combout\ = ((\mcu|dp|rf|QA[12]~95_combout\ $ (\mcu|dp|Selector19~5_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~23\)))) # (GND)
-- \mcu|dp|the_best_alu_in_kista|Add1~25\ = CARRY((\mcu|dp|rf|QA[12]~95_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Add1~23\) # (!\mcu|dp|Selector19~5_combout\))) # (!\mcu|dp|rf|QA[12]~95_combout\ & (!\mcu|dp|Selector19~5_combout\ & 
-- !\mcu|dp|the_best_alu_in_kista|Add1~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[12]~95_combout\,
	datab => \mcu|dp|Selector19~5_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~23\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~24_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add1~25\);

-- Location: LCCOMB_X12_Y20_N2
\mcu|dp|the_best_alu_in_kista|Mux2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux2~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Add1~26_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (!\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|dp|the_best_alu_in_kista|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add1~26_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~26_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y20_N4
\mcu|dp|the_best_alu_in_kista|Mux2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux2~1_combout\ = (\mcu|dp|rf|QA[13]~90_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux2~0_combout\) # ((\mcu|dp|Selector18~5_combout\ & \mcu|ucode|Mux6~2_combout\)))) # (!\mcu|dp|rf|QA[13]~90_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux2~0_combout\ & ((\mcu|dp|Selector18~5_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[13]~90_combout\,
	datab => \mcu|dp|Selector18~5_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux2~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux2~1_combout\);

-- Location: LCCOMB_X11_Y20_N2
\mcu|dp|the_best_alu_in_kista|Mux2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux2~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux2~3_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux2~2_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux2~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux2~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\);

-- Location: LCCOMB_X12_Y21_N24
\mcu|Data_out[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Data_out[13]~feeder_combout\ = \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\,
	combout => \mcu|Data_out[13]~feeder_combout\);

-- Location: FF_X12_Y21_N25
\mcu|Data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|Data_out[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(13));

-- Location: FF_X15_Y20_N9
\mcu|instruction_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(3));

-- Location: LCCOMB_X16_Y20_N14
\mcu|dp|Selector19~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][12]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][12]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][12]~q\,
	datac => \mcu|dp|rf|register_arr[4][12]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector19~0_combout\);

-- Location: FF_X11_Y20_N15
\mcu|dp|rf|register_arr[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~47_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][12]~q\);

-- Location: LCCOMB_X13_Y20_N26
\mcu|dp|Selector19~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~1_combout\ = (\mcu|dp|Selector19~0_combout\ & ((\mcu|dp|rf|register_arr[7][12]~q\) # ((!\mcu|instruction_reg\(3))))) # (!\mcu|dp|Selector19~0_combout\ & (((\mcu|instruction_reg\(3) & \mcu|dp|rf|register_arr[5][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][12]~q\,
	datab => \mcu|dp|Selector19~0_combout\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|dp|rf|register_arr[5][12]~q\,
	combout => \mcu|dp|Selector19~1_combout\);

-- Location: LCCOMB_X12_Y20_N26
\mcu|dp|rf|register_arr[3][12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[3][12]~feeder_combout\ = \mcu|dp|rf|register_arr~47_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~47_combout\,
	combout => \mcu|dp|rf|register_arr[3][12]~feeder_combout\);

-- Location: FF_X12_Y20_N27
\mcu|dp|rf|register_arr[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[3][12]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][12]~q\);

-- Location: LCCOMB_X12_Y20_N14
\mcu|dp|Selector19~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~3_combout\ = (\mcu|dp|Selector19~2_combout\ & (((\mcu|dp|rf|register_arr[3][12]~q\)) # (!\mcu|instruction_reg\(4)))) # (!\mcu|dp|Selector19~2_combout\ & (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[2][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector19~2_combout\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[3][12]~q\,
	datad => \mcu|dp|rf|register_arr[2][12]~q\,
	combout => \mcu|dp|Selector19~3_combout\);

-- Location: LCCOMB_X13_Y20_N8
\mcu|dp|Selector19~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector19~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector19~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector19~1_combout\,
	datad => \mcu|dp|Selector19~3_combout\,
	combout => \mcu|dp|Selector19~4_combout\);

-- Location: LCCOMB_X13_Y20_N10
\mcu|dp|Selector19~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector19~5_combout\ = (\mcu|dp|Selector19~4_combout\) # ((\mcu|instruction_reg\(8) & \mcu|ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(8),
	datac => \mcu|dp|Selector19~4_combout\,
	datad => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|Selector19~5_combout\);

-- Location: LCCOMB_X12_Y22_N22
\mcu|dp|the_best_alu_in_kista|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~1_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((!\mcu|ucode|Mux7~5_combout\ & !\mcu|dp|Selector19~5_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux7~5_combout\ $ 
-- (((\mcu|dp|Selector19~5_combout\ & \mcu|ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|Selector19~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y22_N28
\mcu|dp|the_best_alu_in_kista|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|ucode|Mux5~1_combout\) # ((\mcu|dp|Selector19~5_combout\) # (!\mcu|ucode|Mux6~2_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|ucode|Mux5~1_combout\ & 
-- (\mcu|dp|Selector19~5_combout\ & !\mcu|ucode|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|Selector19~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y22_N16
\mcu|dp|the_best_alu_in_kista|Mux3~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~4_combout\ = (\mcu|dp|rf|QA[12]~95_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux3~1_combout\ $ (((\mcu|ucode|Mux6~2_combout\ & \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\))))) # (!\mcu|dp|rf|QA[12]~95_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux3~2_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux3~1_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[12]~95_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux3~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~4_combout\);

-- Location: LCCOMB_X12_Y22_N26
\mcu|dp|the_best_alu_in_kista|Mux3~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux3~2_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux3~1_combout\) # (!\mcu|dp|rf|QA[12]~95_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|dp|rf|QA[12]~95_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux3~2_combout\))) # (!\mcu|dp|rf|QA[12]~95_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[12]~95_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux3~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux3~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~3_combout\);

-- Location: LCCOMB_X12_Y22_N30
\mcu|dp|the_best_alu_in_kista|Mux3~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux3~4_combout\ & (((\mcu|dp|the_best_alu_in_kista|Add1~24_combout\) # (!\mcu|dp|the_best_alu_in_kista|Mux3~3_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux3~4_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux3~0_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux3~0_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux3~4_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux3~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add1~24_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\);

-- Location: FF_X12_Y22_N31
\mcu|Data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(12));

-- Location: LCCOMB_X15_Y23_N16
\mcu|dp|rf|register_arr~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~16_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(11)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(8),
	datab => \memory|altsyncram_component|auto_generated|q_a\(11),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|dp|rf|register_arr~16_combout\);

-- Location: LCCOMB_X15_Y23_N14
\mcu|dp|rf|register_arr~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~19_combout\ = (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux4~4_combout\) # ((\mcu|dp|rf|register_arr~17_combout\ & \mcu|dp|rf|register_arr~16_combout\)))) # (!\mcu|dp|rf|register_arr~18_combout\ & 
-- (\mcu|dp|rf|register_arr~17_combout\ & (\mcu|dp|rf|register_arr~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~18_combout\,
	datab => \mcu|dp|rf|register_arr~17_combout\,
	datac => \mcu|dp|rf|register_arr~16_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\,
	combout => \mcu|dp|rf|register_arr~19_combout\);

-- Location: FF_X15_Y23_N15
\mcu|dp|rf|register_arr[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~19_combout\,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][11]~q\);

-- Location: LCCOMB_X17_Y23_N24
\mcu|dp|rf|QA[11]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~12_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][11]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][11]~q\,
	datab => \mcu|dp|rf|register_arr[0][11]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[11]~12_combout\);

-- Location: LCCOMB_X16_Y23_N4
\mcu|dp|rf|QA[11]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~13_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[11]~12_combout\ & ((\mcu|dp|rf|register_arr[3][11]~q\))) # (!\mcu|dp|rf|QA[11]~12_combout\ & (\mcu|dp|rf|register_arr[2][11]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[11]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][11]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[3][11]~q\,
	datad => \mcu|dp|rf|QA[11]~12_combout\,
	combout => \mcu|dp|rf|QA[11]~13_combout\);

-- Location: LCCOMB_X16_Y23_N22
\mcu|dp|rf|QA[11]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[11]~14_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[11]~11_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[11]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[11]~13_combout\,
	datad => \mcu|dp|rf|QA[11]~11_combout\,
	combout => \mcu|dp|rf|QA[11]~14_combout\);

-- Location: LCCOMB_X12_Y23_N10
\mcu|dp|the_best_alu_in_kista|Mux4~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux4~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~22_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[11]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|rf|QA[11]~14_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add2~22_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux4~3_combout\);

-- Location: LCCOMB_X12_Y23_N20
\mcu|dp|the_best_alu_in_kista|Mux4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux4~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Add1~22_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (!\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|dp|the_best_alu_in_kista|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add1~22_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~22_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y23_N28
\mcu|dp|the_best_alu_in_kista|Mux4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux4~1_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|rf|QA[11]~14_combout\ & ((\mcu|dp|Selector20~5_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux4~0_combout\))) # (!\mcu|dp|rf|QA[11]~14_combout\ & 
-- (\mcu|dp|Selector20~5_combout\ & \mcu|dp|the_best_alu_in_kista|Mux4~0_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[11]~14_combout\,
	datac => \mcu|dp|Selector20~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux4~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux4~1_combout\);

-- Location: LCCOMB_X12_Y23_N16
\mcu|dp|the_best_alu_in_kista|Mux4~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux4~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux4~3_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux4~2_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux4~3_combout\,
	datac => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux4~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\);

-- Location: LCCOMB_X12_Y23_N12
\mcu|Data_out[11]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Data_out[11]~feeder_combout\ = \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\,
	combout => \mcu|Data_out[11]~feeder_combout\);

-- Location: FF_X12_Y23_N13
\mcu|Data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|Data_out[11]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(11));

-- Location: FF_X15_Y20_N3
\mcu|instruction_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(5));

-- Location: LCCOMB_X16_Y23_N24
\mcu|dp|rf|register_arr[5][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][10]~feeder_combout\ = \mcu|dp|rf|register_arr~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~21_combout\,
	combout => \mcu|dp|rf|register_arr[5][10]~feeder_combout\);

-- Location: FF_X16_Y23_N25
\mcu|dp|rf|register_arr[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[5][10]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][10]~q\);

-- Location: LCCOMB_X15_Y21_N28
\mcu|dp|rf|register_arr[4][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[4][10]~feeder_combout\ = \mcu|dp|rf|register_arr~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~21_combout\,
	combout => \mcu|dp|rf|register_arr[4][10]~feeder_combout\);

-- Location: FF_X15_Y21_N29
\mcu|dp|rf|register_arr[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[4][10]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][10]~q\);

-- Location: LCCOMB_X15_Y21_N4
\mcu|dp|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~0_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & (\mcu|dp|rf|register_arr[6][10]~q\)) # (!\mcu|instruction_reg\(4) & 
-- ((\mcu|dp|rf|register_arr[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][10]~q\,
	datab => \mcu|dp|rf|register_arr[4][10]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector21~0_combout\);

-- Location: LCCOMB_X16_Y23_N18
\mcu|dp|Selector21~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector21~0_combout\ & ((\mcu|dp|rf|register_arr[7][10]~q\))) # (!\mcu|dp|Selector21~0_combout\ & (\mcu|dp|rf|register_arr[5][10]~q\)))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[5][10]~q\,
	datac => \mcu|dp|rf|register_arr[7][10]~q\,
	datad => \mcu|dp|Selector21~0_combout\,
	combout => \mcu|dp|Selector21~1_combout\);

-- Location: LCCOMB_X16_Y24_N4
\mcu|dp|rf|register_arr[1][10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[1][10]~feeder_combout\ = \mcu|dp|rf|register_arr~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~21_combout\,
	combout => \mcu|dp|rf|register_arr[1][10]~feeder_combout\);

-- Location: FF_X16_Y24_N5
\mcu|dp|rf|register_arr[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[1][10]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][10]~q\);

-- Location: LCCOMB_X16_Y24_N0
\mcu|dp|Selector21~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~2_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[1][10]~q\) # (\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[0][10]~q\ & ((!\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][10]~q\,
	datab => \mcu|dp|rf|register_arr[1][10]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector21~2_combout\);

-- Location: LCCOMB_X13_Y21_N12
\mcu|dp|Selector21~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector21~2_combout\ & ((\mcu|dp|rf|register_arr[3][10]~q\))) # (!\mcu|dp|Selector21~2_combout\ & (\mcu|dp|rf|register_arr[2][10]~q\)))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[2][10]~q\,
	datac => \mcu|dp|rf|register_arr[3][10]~q\,
	datad => \mcu|dp|Selector21~2_combout\,
	combout => \mcu|dp|Selector21~3_combout\);

-- Location: LCCOMB_X11_Y24_N0
\mcu|dp|Selector21~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector21~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector21~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector21~1_combout\,
	datad => \mcu|dp|Selector21~3_combout\,
	combout => \mcu|dp|Selector21~4_combout\);

-- Location: LCCOMB_X11_Y24_N30
\mcu|dp|Selector21~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector21~5_combout\ = (\mcu|dp|Selector21~4_combout\) # ((\mcu|ucode|Mux8~0_combout\ & \mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|dp|Selector21~4_combout\,
	combout => \mcu|dp|Selector21~5_combout\);

-- Location: LCCOMB_X11_Y24_N24
\mcu|dp|the_best_alu_in_kista|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~1_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((!\mcu|dp|Selector21~5_combout\ & !\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux7~5_combout\ $ 
-- (((\mcu|dp|Selector21~5_combout\ & \mcu|ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datab => \mcu|dp|Selector21~5_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~1_combout\);

-- Location: LCCOMB_X11_Y24_N22
\mcu|dp|the_best_alu_in_kista|Mux5~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~2_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|ucode|Mux7~5_combout\) # ((\mcu|dp|Selector21~5_combout\ & !\mcu|ucode|Mux6~2_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux7~5_combout\ & 
-- ((\mcu|dp|Selector21~5_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datab => \mcu|dp|Selector21~5_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~2_combout\);

-- Location: LCCOMB_X11_Y24_N16
\mcu|dp|the_best_alu_in_kista|Mux5~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~4_combout\ = (\mcu|dp|rf|QA[10]~19_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux5~1_combout\ $ (((\mcu|dp|the_best_alu_in_kista|Mux5~2_combout\ & \mcu|ucode|Mux6~2_combout\))))) # (!\mcu|dp|rf|QA[10]~19_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux5~2_combout\ & ((!\mcu|ucode|Mux6~2_combout\) # (!\mcu|dp|the_best_alu_in_kista|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[10]~19_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux5~2_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~4_combout\);

-- Location: LCCOMB_X11_Y24_N4
\mcu|dp|the_best_alu_in_kista|Mux5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~20_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add0~20_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add2~20_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~0_combout\);

-- Location: LCCOMB_X11_Y24_N26
\mcu|dp|the_best_alu_in_kista|Mux5~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux5~3_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux5~4_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~20_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux5~3_combout\ & 
-- ((\mcu|dp|the_best_alu_in_kista|Mux5~4_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux5~3_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux5~4_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux5~0_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add1~20_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\);

-- Location: FF_X11_Y24_N27
\mcu|Data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(10));

-- Location: FF_X15_Y20_N15
\mcu|instruction_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(6));

-- Location: LCCOMB_X15_Y20_N24
\mcu|dp|Selector35~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector35~0_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~2_combout\ & (\mcu|instruction_reg\(3))) # (!\mcu|Mux0~2_combout\ & ((\mcu|instruction_reg\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|instruction_reg\(6),
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|Mux0~2_combout\,
	combout => \mcu|dp|Selector35~0_combout\);

-- Location: LCCOMB_X16_Y22_N2
\mcu|dp|rf|QA[9]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~22_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][9]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[0][9]~q\,
	datac => \mcu|dp|rf|register_arr[1][9]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[9]~22_combout\);

-- Location: LCCOMB_X13_Y22_N10
\mcu|dp|rf|QA[9]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~23_combout\ = (\mcu|dp|rf|QA[9]~22_combout\ & (((\mcu|dp|rf|register_arr[3][9]~q\) # (!\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|rf|QA[9]~22_combout\ & (\mcu|dp|rf|register_arr[2][9]~q\ & ((\mcu|dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][9]~q\,
	datab => \mcu|dp|rf|register_arr[3][9]~q\,
	datac => \mcu|dp|rf|QA[9]~22_combout\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[9]~23_combout\);

-- Location: LCCOMB_X13_Y22_N12
\mcu|dp|rf|QA[9]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[9]~24_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[9]~21_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[9]~23_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[9]~21_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|Selector32~3_combout\,
	datad => \mcu|dp|rf|QA[9]~23_combout\,
	combout => \mcu|dp|rf|QA[9]~24_combout\);

-- Location: LCCOMB_X12_Y22_N20
\mcu|dp|the_best_alu_in_kista|Mux6~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux6~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~18_combout\))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|rf|QA[9]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[9]~24_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~18_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux6~3_combout\);

-- Location: LCCOMB_X12_Y22_N14
\mcu|dp|the_best_alu_in_kista|Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux6~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~18_combout\) # ((\mcu|ucode|Mux6~2_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (((!\mcu|ucode|Mux6~2_combout\ & 
-- \mcu|dp|the_best_alu_in_kista|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~18_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add0~18_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y22_N4
\mcu|dp|the_best_alu_in_kista|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux6~1_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|rf|QA[9]~24_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux6~0_combout\) # (\mcu|dp|Selector22~5_combout\))) # (!\mcu|dp|rf|QA[9]~24_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux6~0_combout\ & \mcu|dp|Selector22~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[9]~24_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux6~0_combout\,
	datad => \mcu|dp|Selector22~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux6~1_combout\);

-- Location: LCCOMB_X12_Y22_N8
\mcu|dp|the_best_alu_in_kista|Mux6~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux6~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux6~3_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux6~2_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux6~3_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux6~1_combout\,
	datad => \mcu|ucode|Mux5~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\);

-- Location: FF_X12_Y22_N9
\mcu|Data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(9));

-- Location: FF_X11_Y22_N21
\mcu|instruction_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(9),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(9));

-- Location: LCCOMB_X11_Y22_N10
\mcu|dp|rf|register_arr[6][7]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[6][7]~5_combout\ = (!\mcu|instruction_reg\(9) & (!\mcu|ucode|Mux8~0_combout\ & \mcu|ucode|Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(9),
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|ucode|Mux4~3_combout\,
	combout => \mcu|dp|rf|register_arr[6][7]~5_combout\);

-- Location: LCCOMB_X16_Y22_N8
\mcu|dp|rf|register_arr[0][14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][14]~14_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[1][12]~12_combout\ & \mcu|dp|rf|register_arr[6][7]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RESET~input_o\,
	datab => \mcu|dp|rf|register_arr[1][12]~12_combout\,
	datad => \mcu|dp|rf|register_arr[6][7]~5_combout\,
	combout => \mcu|dp|rf|register_arr[0][14]~14_combout\);

-- Location: FF_X17_Y20_N19
\mcu|dp|rf|register_arr[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][8]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][8]~q\);

-- Location: LCCOMB_X17_Y20_N0
\mcu|dp|rf|QA[8]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~27_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][8]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][8]~q\,
	datab => \mcu|dp|rf|register_arr[0][8]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[8]~27_combout\);

-- Location: LCCOMB_X16_Y21_N4
\mcu|dp|rf|QA[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~28_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[8]~27_combout\ & (\mcu|dp|rf|register_arr[3][8]~q\)) # (!\mcu|dp|rf|QA[8]~27_combout\ & ((\mcu|dp|rf|register_arr[2][8]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][8]~q\,
	datab => \mcu|dp|rf|register_arr[2][8]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|rf|QA[8]~27_combout\,
	combout => \mcu|dp|rf|QA[8]~28_combout\);

-- Location: FF_X16_Y20_N5
\mcu|dp|rf|register_arr[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~25_combout\,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][8]~q\);

-- Location: LCCOMB_X16_Y20_N24
\mcu|dp|rf|QA[8]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~25_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][8]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][8]~q\,
	datab => \mcu|dp|rf|register_arr[6][8]~q\,
	datac => \mcu|dp|Selector35~0_combout\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[8]~25_combout\);

-- Location: LCCOMB_X16_Y23_N20
\mcu|dp|rf|QA[8]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~26_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[8]~25_combout\ & (\mcu|dp|rf|register_arr[7][8]~q\)) # (!\mcu|dp|rf|QA[8]~25_combout\ & ((\mcu|dp|rf|register_arr[5][8]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][8]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[5][8]~q\,
	datad => \mcu|dp|rf|QA[8]~25_combout\,
	combout => \mcu|dp|rf|QA[8]~26_combout\);

-- Location: LCCOMB_X16_Y21_N14
\mcu|dp|rf|QA[8]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[8]~29_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[8]~26_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[8]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[8]~28_combout\,
	datad => \mcu|dp|rf|QA[8]~26_combout\,
	combout => \mcu|dp|rf|QA[8]~29_combout\);

-- Location: LCCOMB_X12_Y23_N22
\mcu|dp|the_best_alu_in_kista|Mux7~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|ucode|Mux5~1_combout\) # ((\mcu|dp|Selector23~5_combout\) # (!\mcu|ucode|Mux6~2_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|ucode|Mux5~1_combout\ & 
-- (\mcu|dp|Selector23~5_combout\ & !\mcu|ucode|Mux6~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|Selector23~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\);

-- Location: LCCOMB_X12_Y23_N18
\mcu|dp|the_best_alu_in_kista|Mux7~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~1_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|ucode|Mux6~2_combout\) # ((!\mcu|ucode|Mux7~5_combout\ & !\mcu|dp|Selector23~5_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux7~5_combout\ $ 
-- (((\mcu|dp|Selector23~5_combout\ & \mcu|ucode|Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|Selector23~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~1_combout\);

-- Location: LCCOMB_X12_Y23_N4
\mcu|dp|the_best_alu_in_kista|Mux7~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux7~2_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux7~1_combout\) # (!\mcu|dp|rf|QA[8]~29_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|dp|rf|QA[8]~29_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux7~2_combout\)) # (!\mcu|dp|rf|QA[8]~29_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux7~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[8]~29_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux7~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~3_combout\);

-- Location: LCCOMB_X12_Y23_N24
\mcu|dp|the_best_alu_in_kista|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~4_combout\ = (\mcu|dp|rf|QA[8]~29_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux7~1_combout\ $ (((\mcu|ucode|Mux6~2_combout\ & \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\))))) # (!\mcu|dp|rf|QA[8]~29_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux7~2_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux7~1_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[8]~29_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux7~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux7~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~4_combout\);

-- Location: LCCOMB_X12_Y23_N14
\mcu|dp|the_best_alu_in_kista|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux7~3_combout\ & (((\mcu|dp|the_best_alu_in_kista|Add1~16_combout\ & \mcu|dp|the_best_alu_in_kista|Mux7~4_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux7~3_combout\ & 
-- ((\mcu|dp|the_best_alu_in_kista|Mux7~0_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux7~0_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~16_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux7~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux7~4_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\);

-- Location: FF_X12_Y23_N7
\mcu|Data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(8));

-- Location: FF_X15_Y20_N31
\mcu|instruction_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(7));

-- Location: LCCOMB_X16_Y21_N24
\mcu|dp|rf|register_arr~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~26_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(7)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(7),
	datad => \memory|altsyncram_component|auto_generated|q_a\(7),
	combout => \mcu|dp|rf|register_arr~26_combout\);

-- Location: LCCOMB_X16_Y21_N22
\mcu|dp|rf|register_arr~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~27_combout\ = (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~26_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\)))) # (!\mcu|dp|rf|register_arr~17_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~17_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|rf|register_arr~26_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\,
	combout => \mcu|dp|rf|register_arr~27_combout\);

-- Location: LCCOMB_X15_Y22_N20
\mcu|dp|rf|register_arr[5][7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][7]~feeder_combout\ = \mcu|dp|rf|register_arr~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~27_combout\,
	combout => \mcu|dp|rf|register_arr[5][7]~feeder_combout\);

-- Location: FF_X15_Y22_N21
\mcu|dp|rf|register_arr[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[5][7]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][7]~q\);

-- Location: FF_X15_Y22_N27
\mcu|dp|rf|register_arr[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][7]~q\);

-- Location: FF_X16_Y20_N3
\mcu|dp|rf|register_arr[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~27_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][7]~q\);

-- Location: LCCOMB_X16_Y20_N2
\mcu|dp|rf|QA[7]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~30_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][7]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][7]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[6][7]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[7]~30_combout\);

-- Location: LCCOMB_X15_Y22_N26
\mcu|dp|rf|QA[7]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~31_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[7]~30_combout\ & ((\mcu|dp|rf|register_arr[7][7]~q\))) # (!\mcu|dp|rf|QA[7]~30_combout\ & (\mcu|dp|rf|register_arr[5][7]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[7]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[5][7]~q\,
	datac => \mcu|dp|rf|register_arr[7][7]~q\,
	datad => \mcu|dp|rf|QA[7]~30_combout\,
	combout => \mcu|dp|rf|QA[7]~31_combout\);

-- Location: LCCOMB_X14_Y22_N12
\mcu|dp|rf|QA[7]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[7]~34_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[7]~31_combout\))) # (!\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[7]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[7]~33_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|Selector32~3_combout\,
	datad => \mcu|dp|rf|QA[7]~31_combout\,
	combout => \mcu|dp|rf|QA[7]~34_combout\);

-- Location: LCCOMB_X16_Y20_N10
\mcu|dp|Selector24~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~0_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[6][7]~q\) # (\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (\mcu|dp|rf|register_arr[4][7]~q\ & ((!\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][7]~q\,
	datab => \mcu|dp|rf|register_arr[6][7]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector24~0_combout\);

-- Location: LCCOMB_X15_Y22_N12
\mcu|dp|Selector24~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~1_combout\ = (\mcu|dp|Selector24~0_combout\ & ((\mcu|dp|rf|register_arr[7][7]~q\) # ((!\mcu|instruction_reg\(3))))) # (!\mcu|dp|Selector24~0_combout\ & (((\mcu|dp|rf|register_arr[5][7]~q\ & \mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[7][7]~q\,
	datab => \mcu|dp|rf|register_arr[5][7]~q\,
	datac => \mcu|dp|Selector24~0_combout\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector24~1_combout\);

-- Location: LCCOMB_X16_Y22_N16
\mcu|dp|Selector24~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][7]~q\))) # (!\mcu|instruction_reg\(3) & 
-- (\mcu|dp|rf|register_arr[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][7]~q\,
	datab => \mcu|dp|rf|register_arr[1][7]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector24~2_combout\);

-- Location: LCCOMB_X16_Y21_N18
\mcu|dp|Selector24~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector24~2_combout\ & ((\mcu|dp|rf|register_arr[3][7]~q\))) # (!\mcu|dp|Selector24~2_combout\ & (\mcu|dp|rf|register_arr[2][7]~q\)))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][7]~q\,
	datab => \mcu|dp|rf|register_arr[3][7]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|dp|Selector24~2_combout\,
	combout => \mcu|dp|Selector24~3_combout\);

-- Location: LCCOMB_X16_Y21_N20
\mcu|dp|Selector24~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~4_combout\ = (\mcu|instruction_reg\(5) & (\mcu|dp|Selector24~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector24~1_combout\,
	datad => \mcu|dp|Selector24~3_combout\,
	combout => \mcu|dp|Selector24~4_combout\);

-- Location: LCCOMB_X16_Y21_N6
\mcu|dp|Selector24~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector24~5_combout\ = (\mcu|instruction_reg\(7) & ((\mcu|ucode|Mux8~0_combout\) # ((\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector24~4_combout\)))) # (!\mcu|instruction_reg\(7) & (\mcu|dp|Selector31~6_combout\ & 
-- ((\mcu|dp|Selector24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(7),
	datab => \mcu|dp|Selector31~6_combout\,
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|dp|Selector24~4_combout\,
	combout => \mcu|dp|Selector24~5_combout\);

-- Location: LCCOMB_X14_Y21_N16
\mcu|dp|the_best_alu_in_kista|Mux8~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux8~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[7]~34_combout\ $ (((\mcu|ucode|Mux7~5_combout\) # (\mcu|dp|Selector24~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[7]~34_combout\,
	datac => \mcu|dp|Selector24~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux8~2_combout\);

-- Location: LCCOMB_X14_Y21_N6
\mcu|dp|the_best_alu_in_kista|Mux8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux8~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~14_combout\))) # 
-- (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~14_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add1~14_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux8~0_combout\);

-- Location: LCCOMB_X14_Y21_N20
\mcu|dp|the_best_alu_in_kista|Mux8~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux8~1_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|rf|QA[7]~34_combout\ & ((\mcu|dp|Selector24~5_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux8~0_combout\))) # (!\mcu|dp|rf|QA[7]~34_combout\ & 
-- (\mcu|dp|Selector24~5_combout\ & \mcu|dp|the_best_alu_in_kista|Mux8~0_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|rf|QA[7]~34_combout\,
	datac => \mcu|dp|Selector24~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux8~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux8~1_combout\);

-- Location: LCCOMB_X14_Y21_N26
\mcu|dp|the_best_alu_in_kista|Mux8~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux8~3_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux8~2_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux8~3_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux8~2_combout\,
	datac => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux8~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\);

-- Location: FF_X12_Y21_N29
\mcu|Address_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(7));

-- Location: FF_X11_Y22_N9
\mcu|instruction_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(10),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(10));

-- Location: LCCOMB_X11_Y22_N2
\mcu|dp|rf|register_arr[5][8]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[5][8]~3_combout\ = (\mcu|instruction_reg\(11) & (!\mcu|instruction_reg\(10) & !\mcu|ucode|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(11),
	datab => \mcu|instruction_reg\(10),
	datac => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|rf|register_arr[5][8]~3_combout\);

-- Location: LCCOMB_X11_Y22_N26
\mcu|dp|rf|register_arr[4][11]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[4][11]~8_combout\ = (\RESET~input_o\) # ((\mcu|dp|rf|register_arr[6][7]~5_combout\ & \mcu|dp|rf|register_arr[5][8]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][7]~5_combout\,
	datab => \RESET~input_o\,
	datad => \mcu|dp|rf|register_arr[5][8]~3_combout\,
	combout => \mcu|dp|rf|register_arr[4][11]~8_combout\);

-- Location: FF_X13_Y22_N7
\mcu|dp|rf|register_arr[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~29_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][6]~q\);

-- Location: LCCOMB_X14_Y22_N4
\mcu|dp|rf|QA[6]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~35_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][6]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][6]~q\,
	datac => \mcu|dp|rf|register_arr[6][6]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[6]~35_combout\);

-- Location: LCCOMB_X14_Y22_N22
\mcu|dp|rf|QA[6]~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~36_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[6]~35_combout\ & ((\mcu|dp|rf|register_arr[7][6]~q\))) # (!\mcu|dp|rf|QA[6]~35_combout\ & (\mcu|dp|rf|register_arr[5][6]~q\)))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|QA[6]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|QA[6]~35_combout\,
	datac => \mcu|dp|rf|register_arr[5][6]~q\,
	datad => \mcu|dp|rf|register_arr[7][6]~q\,
	combout => \mcu|dp|rf|QA[6]~36_combout\);

-- Location: LCCOMB_X13_Y22_N0
\mcu|dp|rf|QA[6]~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[6]~70_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[6]~36_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[6]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|rf|QA[6]~36_combout\,
	datac => \mcu|dp|Selector33~0_combout\,
	datad => \mcu|dp|rf|QA[6]~38_combout\,
	combout => \mcu|dp|rf|QA[6]~70_combout\);

-- Location: LCCOMB_X14_Y24_N4
\mcu|dp|the_best_alu_in_kista|Mux9~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|the_best_alu_in_kista|Add2~12_combout\)) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~12_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add1~12_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~0_combout\);

-- Location: LCCOMB_X14_Y24_N14
\mcu|dp|the_best_alu_in_kista|Mux9~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~1_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|Selector25~5_combout\ & !\mcu|ucode|Mux5~1_combout\)) # (!\mcu|ucode|Mux7~5_combout\))) # (!\mcu|ucode|Mux6~2_combout\ & (\mcu|ucode|Mux5~1_combout\ & 
-- ((\mcu|ucode|Mux7~5_combout\) # (!\mcu|dp|Selector25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|Selector25~5_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux5~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~1_combout\);

-- Location: LCCOMB_X14_Y24_N28
\mcu|dp|the_best_alu_in_kista|Mux9~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\ = (\mcu|ucode|Mux5~1_combout\ & (\mcu|dp|Selector25~5_combout\ & (!\mcu|ucode|Mux7~5_combout\ & !\mcu|ucode|Mux6~2_combout\))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|ucode|Mux7~5_combout\) # (!\mcu|dp|Selector25~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector25~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\);

-- Location: LCCOMB_X14_Y24_N30
\mcu|dp|the_best_alu_in_kista|Mux9~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~3_combout\ = \mcu|ucode|Mux7~5_combout\ $ (((\mcu|dp|rf|QA[6]~39_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux9~1_combout\ & !\mcu|dp|the_best_alu_in_kista|Mux9~2_combout\)) # (!\mcu|dp|rf|QA[6]~39_combout\ & 
-- (!\mcu|dp|the_best_alu_in_kista|Mux9~1_combout\ & \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[6]~39_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux9~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~3_combout\);

-- Location: LCCOMB_X14_Y24_N0
\mcu|dp|the_best_alu_in_kista|Mux9~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~4_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux9~1_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|the_best_alu_in_kista|Mux9~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux9~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~4_combout\);

-- Location: LCCOMB_X14_Y24_N16
\mcu|dp|the_best_alu_in_kista|Mux9~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux9~3_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux9~0_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux9~4_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux9~3_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Add0~12_combout\ & ((!\mcu|dp|the_best_alu_in_kista|Mux9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~12_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux9~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux9~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux9~4_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\);

-- Location: FF_X14_Y24_N17
\mcu|Address_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(6));

-- Location: FF_X15_Y20_N17
\mcu|instruction_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(8),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(8));

-- Location: LCCOMB_X15_Y20_N16
\mcu|dp|Selector33~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector33~0_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~2_combout\ & (\mcu|instruction_reg\(5))) # (!\mcu|Mux0~2_combout\ & ((\mcu|instruction_reg\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|ucode|Mux8~0_combout\,
	datac => \mcu|instruction_reg\(8),
	datad => \mcu|Mux0~2_combout\,
	combout => \mcu|dp|Selector33~0_combout\);

-- Location: LCCOMB_X16_Y24_N16
\mcu|dp|rf|QA[4]~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~47_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|register_arr[1][4]~q\))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|register_arr[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][4]~q\,
	datab => \mcu|dp|rf|register_arr[1][4]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[4]~47_combout\);

-- Location: LCCOMB_X15_Y23_N18
\mcu|dp|rf|QA[4]~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~48_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[4]~47_combout\ & (\mcu|dp|rf|register_arr[3][4]~q\)) # (!\mcu|dp|rf|QA[4]~47_combout\ & ((\mcu|dp|rf|register_arr[2][4]~q\))))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[4]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[3][4]~q\,
	datac => \mcu|dp|rf|register_arr[2][4]~q\,
	datad => \mcu|dp|rf|QA[4]~47_combout\,
	combout => \mcu|dp|rf|QA[4]~48_combout\);

-- Location: LCCOMB_X15_Y23_N22
\mcu|dp|rf|QA[4]~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~72_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[4]~46_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[4]~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[4]~46_combout\,
	datad => \mcu|dp|rf|QA[4]~48_combout\,
	combout => \mcu|dp|rf|QA[4]~72_combout\);

-- Location: LCCOMB_X15_Y22_N16
\mcu|dp|rf|register_arr[7][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][3]~feeder_combout\ = \mcu|dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~35_combout\,
	combout => \mcu|dp|rf|register_arr[7][3]~feeder_combout\);

-- Location: FF_X15_Y22_N17
\mcu|dp|rf|register_arr[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][3]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][3]~q\);

-- Location: LCCOMB_X15_Y21_N20
\mcu|dp|rf|register_arr[4][3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[4][3]~feeder_combout\ = \mcu|dp|rf|register_arr~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~35_combout\,
	combout => \mcu|dp|rf|register_arr[4][3]~feeder_combout\);

-- Location: FF_X15_Y21_N21
\mcu|dp|rf|register_arr[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[4][3]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][3]~q\);

-- Location: LCCOMB_X14_Y22_N24
\mcu|dp|rf|QA[3]~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~50_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][3]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][3]~q\,
	datac => \mcu|dp|rf|register_arr[6][3]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[3]~50_combout\);

-- Location: LCCOMB_X14_Y22_N30
\mcu|dp|rf|QA[3]~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~51_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[3]~50_combout\ & (\mcu|dp|rf|register_arr[7][3]~q\)) # (!\mcu|dp|rf|QA[3]~50_combout\ & ((\mcu|dp|rf|register_arr[5][3]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[3]~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[7][3]~q\,
	datac => \mcu|dp|rf|register_arr[5][3]~q\,
	datad => \mcu|dp|rf|QA[3]~50_combout\,
	combout => \mcu|dp|rf|QA[3]~51_combout\);

-- Location: FF_X13_Y21_N7
\mcu|dp|rf|register_arr[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~35_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][3]~q\);

-- Location: LCCOMB_X13_Y21_N16
\mcu|dp|rf|QA[3]~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~52_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[1][3]~q\)) # (!\mcu|dp|Selector35~0_combout\ & 
-- ((\mcu|dp|rf|register_arr[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][3]~q\,
	datab => \mcu|dp|rf|register_arr[0][3]~q\,
	datac => \mcu|dp|Selector34~0_combout\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[3]~52_combout\);

-- Location: LCCOMB_X13_Y21_N6
\mcu|dp|rf|QA[3]~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~53_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[3]~52_combout\ & ((\mcu|dp|rf|register_arr[3][3]~q\))) # (!\mcu|dp|rf|QA[3]~52_combout\ & (\mcu|dp|rf|register_arr[2][3]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[3]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[2][3]~q\,
	datab => \mcu|dp|Selector34~0_combout\,
	datac => \mcu|dp|rf|register_arr[3][3]~q\,
	datad => \mcu|dp|rf|QA[3]~52_combout\,
	combout => \mcu|dp|rf|QA[3]~53_combout\);

-- Location: LCCOMB_X12_Y21_N6
\mcu|dp|rf|QA[3]~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~73_combout\ = (\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[3]~51_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[3]~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|rf|QA[3]~51_combout\,
	datad => \mcu|dp|rf|QA[3]~53_combout\,
	combout => \mcu|dp|rf|QA[3]~73_combout\);

-- Location: LCCOMB_X11_Y23_N0
\mcu|dp|the_best_alu_in_kista|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~0_combout\ = (((\mcu|dp|rf|QA[0]~9_combout\ & \mcu|dp|Selector32~3_combout\)))
-- \mcu|dp|the_best_alu_in_kista|Add2~1\ = CARRY((\mcu|dp|rf|QA[0]~9_combout\ & \mcu|dp|Selector32~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[0]~9_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~0_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~1\);

-- Location: LCCOMB_X11_Y23_N4
\mcu|dp|the_best_alu_in_kista|Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add2~4_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~3\ & (\mcu|dp|rf|QA[2]~74_combout\ & (\mcu|dp|Selector32~3_combout\ & VCC))) # (!\mcu|dp|the_best_alu_in_kista|Add2~3\ & ((((\mcu|dp|rf|QA[2]~74_combout\ & 
-- \mcu|dp|Selector32~3_combout\)))))
-- \mcu|dp|the_best_alu_in_kista|Add2~5\ = CARRY((\mcu|dp|rf|QA[2]~74_combout\ & (\mcu|dp|Selector32~3_combout\ & !\mcu|dp|the_best_alu_in_kista|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[2]~74_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datad => VCC,
	cin => \mcu|dp|the_best_alu_in_kista|Add2~3\,
	combout => \mcu|dp|the_best_alu_in_kista|Add2~4_combout\,
	cout => \mcu|dp|the_best_alu_in_kista|Add2~5\);

-- Location: LCCOMB_X14_Y22_N10
\mcu|dp|Selector26~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~2_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][5]~q\))) # (!\mcu|instruction_reg\(4) & 
-- (\mcu|dp|rf|register_arr[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[4][5]~q\,
	datab => \mcu|dp|rf|register_arr[6][5]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector26~2_combout\);

-- Location: LCCOMB_X15_Y22_N22
\mcu|dp|Selector26~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~3_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector26~2_combout\ & (\mcu|dp|rf|register_arr[7][5]~q\)) # (!\mcu|dp|Selector26~2_combout\ & ((\mcu|dp|rf|register_arr[5][5]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[7][5]~q\,
	datac => \mcu|dp|rf|register_arr[5][5]~q\,
	datad => \mcu|dp|Selector26~2_combout\,
	combout => \mcu|dp|Selector26~3_combout\);

-- Location: LCCOMB_X15_Y20_N4
\mcu|dp|Selector26~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~4_combout\ = (\mcu|ucode|Mux8~0_combout\) # ((\mcu|Mux0~3_combout\ & (!\mcu|ucode|Mux21~0_combout\ & \mcu|dp|Selector26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux0~3_combout\,
	datab => \mcu|ucode|Mux21~0_combout\,
	datac => \mcu|ucode|Mux8~0_combout\,
	datad => \mcu|dp|Selector26~3_combout\,
	combout => \mcu|dp|Selector26~4_combout\);

-- Location: LCCOMB_X16_Y22_N0
\mcu|dp|Selector26~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~0_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][5]~q\)) # (!\mcu|instruction_reg\(3) & 
-- ((\mcu|dp|rf|register_arr[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][5]~q\,
	datab => \mcu|dp|rf|register_arr[0][5]~q\,
	datac => \mcu|instruction_reg\(4),
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector26~0_combout\);

-- Location: LCCOMB_X14_Y24_N20
\mcu|dp|Selector26~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~1_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector26~0_combout\ & (\mcu|dp|rf|register_arr[3][5]~q\)) # (!\mcu|dp|Selector26~0_combout\ & ((\mcu|dp|rf|register_arr[2][5]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][5]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][5]~q\,
	datad => \mcu|dp|Selector26~0_combout\,
	combout => \mcu|dp|Selector26~1_combout\);

-- Location: LCCOMB_X15_Y20_N22
\mcu|dp|Selector26~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector26~5_combout\ = (\mcu|instruction_reg\(5) & ((\mcu|dp|Selector26~4_combout\) # ((\mcu|dp|Selector31~2_combout\ & \mcu|dp|Selector26~1_combout\)))) # (!\mcu|instruction_reg\(5) & (\mcu|dp|Selector31~2_combout\ & 
-- ((\mcu|dp|Selector26~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|dp|Selector31~2_combout\,
	datac => \mcu|dp|Selector26~4_combout\,
	datad => \mcu|dp|Selector26~1_combout\,
	combout => \mcu|dp|Selector26~5_combout\);

-- Location: LCCOMB_X14_Y21_N0
\mcu|dp|the_best_alu_in_kista|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux10~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|rf|QA[5]~44_combout\ & !\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[5]~44_combout\ $ (((\mcu|dp|Selector26~5_combout\) # 
-- (\mcu|ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|Selector26~5_combout\,
	datac => \mcu|dp|rf|QA[5]~44_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux10~0_combout\);

-- Location: LCCOMB_X14_Y21_N30
\mcu|dp|the_best_alu_in_kista|Mux10~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux10~1_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux10~0_combout\) # ((\mcu|ucode|Mux7~5_combout\ & (\mcu|ucode|Mux6~2_combout\ & \mcu|dp|the_best_alu_in_kista|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~10_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux10~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux10~1_combout\);

-- Location: LCCOMB_X14_Y21_N12
\mcu|dp|the_best_alu_in_kista|Mux10~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux10~2_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add1~10_combout\)) # 
-- (!\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~10_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add0~10_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux10~2_combout\);

-- Location: LCCOMB_X14_Y21_N10
\mcu|dp|the_best_alu_in_kista|Mux10~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux10~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|Selector26~5_combout\ & ((\mcu|dp|rf|QA[5]~44_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux10~2_combout\))) # (!\mcu|dp|Selector26~5_combout\ & 
-- (\mcu|dp|rf|QA[5]~44_combout\ & \mcu|dp|the_best_alu_in_kista|Mux10~2_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|Selector26~5_combout\,
	datac => \mcu|dp|rf|QA[5]~44_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux10~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux10~3_combout\);

-- Location: LCCOMB_X14_Y21_N2
\mcu|dp|the_best_alu_in_kista|Mux10~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux10~1_combout\)) # (!\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux10~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux10~3_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\);

-- Location: FF_X12_Y21_N7
\mcu|Address_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(5));

-- Location: LCCOMB_X16_Y24_N10
\mcu|dp|rf|register_arr~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~32_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(4)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(4),
	combout => \mcu|dp|rf|register_arr~32_combout\);

-- Location: LCCOMB_X16_Y24_N14
\mcu|dp|rf|register_arr~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~33_combout\ = (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~32_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\)))) # (!\mcu|dp|rf|register_arr~17_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~17_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|rf|register_arr~32_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\,
	combout => \mcu|dp|rf|register_arr~33_combout\);

-- Location: LCCOMB_X15_Y22_N0
\mcu|dp|rf|register_arr[7][4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[7][4]~feeder_combout\ = \mcu|dp|rf|register_arr~33_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~33_combout\,
	combout => \mcu|dp|rf|register_arr[7][4]~feeder_combout\);

-- Location: FF_X15_Y22_N1
\mcu|dp|rf|register_arr[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[7][4]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][4]~q\);

-- Location: FF_X15_Y21_N13
\mcu|dp|rf|register_arr[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~33_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][4]~q\);

-- Location: LCCOMB_X14_Y22_N18
\mcu|dp|rf|QA[4]~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~45_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|register_arr[6][4]~q\))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (\mcu|dp|rf|register_arr[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][4]~q\,
	datac => \mcu|dp|rf|register_arr[6][4]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[4]~45_combout\);

-- Location: LCCOMB_X14_Y22_N16
\mcu|dp|rf|QA[4]~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~46_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[4]~45_combout\ & (\mcu|dp|rf|register_arr[7][4]~q\)) # (!\mcu|dp|rf|QA[4]~45_combout\ & ((\mcu|dp|rf|register_arr[5][4]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (((\mcu|dp|rf|QA[4]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|register_arr[7][4]~q\,
	datac => \mcu|dp|rf|register_arr[5][4]~q\,
	datad => \mcu|dp|rf|QA[4]~45_combout\,
	combout => \mcu|dp|rf|QA[4]~46_combout\);

-- Location: LCCOMB_X14_Y22_N0
\mcu|dp|rf|QA[4]~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[4]~49_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[4]~46_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[4]~48_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|rf|QA[4]~46_combout\,
	datac => \mcu|dp|Selector32~3_combout\,
	datad => \mcu|dp|rf|QA[4]~48_combout\,
	combout => \mcu|dp|rf|QA[4]~49_combout\);

-- Location: LCCOMB_X12_Y24_N4
\mcu|dp|the_best_alu_in_kista|Mux11~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\ = (\mcu|dp|Selector27~5_combout\ & (\mcu|ucode|Mux6~2_combout\ $ (((\mcu|ucode|Mux7~5_combout\ & \mcu|ucode|Mux5~1_combout\))))) # (!\mcu|dp|Selector27~5_combout\ & ((\mcu|ucode|Mux6~2_combout\ & 
-- (!\mcu|ucode|Mux7~5_combout\)) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|Selector27~5_combout\,
	datac => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\);

-- Location: LCCOMB_X12_Y24_N0
\mcu|dp|the_best_alu_in_kista|Mux11~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~2_combout\ = (\mcu|ucode|Mux5~1_combout\ & (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|Selector27~5_combout\ & !\mcu|ucode|Mux6~2_combout\))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|ucode|Mux7~5_combout\) # (!\mcu|dp|Selector27~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|Selector27~5_combout\,
	datac => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~2_combout\);

-- Location: LCCOMB_X12_Y24_N12
\mcu|dp|the_best_alu_in_kista|Mux11~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~4_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux11~1_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux11~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux11~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~4_combout\);

-- Location: LCCOMB_X11_Y24_N12
\mcu|dp|the_best_alu_in_kista|Mux11~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~3_combout\ = \mcu|ucode|Mux7~5_combout\ $ (((\mcu|dp|rf|QA[4]~49_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux11~2_combout\ & \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\)) # (!\mcu|dp|rf|QA[4]~49_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux11~2_combout\ & !\mcu|dp|the_best_alu_in_kista|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[4]~49_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux11~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux11~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~3_combout\);

-- Location: LCCOMB_X11_Y24_N8
\mcu|dp|the_best_alu_in_kista|Mux11~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux11~4_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux11~3_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux11~4_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux11~3_combout\ 
-- & (\mcu|dp|the_best_alu_in_kista|Mux11~0_combout\)) # (!\mcu|dp|the_best_alu_in_kista|Mux11~3_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux11~0_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add0~8_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux11~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux11~3_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\);

-- Location: FF_X11_Y24_N31
\mcu|Address_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(4));

-- Location: LCCOMB_X13_Y20_N6
\mcu|instruction_reg[12]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|instruction_reg[12]~3_combout\ = !\memory|altsyncram_component|auto_generated|q_a\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|altsyncram_component|auto_generated|q_a\(12),
	combout => \mcu|instruction_reg[12]~3_combout\);

-- Location: FF_X14_Y20_N1
\mcu|instruction_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \mcu|instruction_reg[12]~3_combout\,
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(12));

-- Location: LCCOMB_X14_Y20_N24
\mcu|dp|Selector32~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector32~1_combout\ = (\mcu|instruction_reg\(13)) # ((!\mcu|instruction_reg\(15) & \mcu|instruction_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|instruction_reg\(12),
	combout => \mcu|dp|Selector32~1_combout\);

-- Location: LCCOMB_X14_Y23_N28
\mcu|dp|Selector32~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector32~2_combout\ = (\mcu|uPC\(0) & ((\mcu|dp|Selector32~1_combout\) # (\mcu|instruction_reg\(14) $ (\mcu|instruction_reg\(15))))) # (!\mcu|uPC\(0) & (!\mcu|instruction_reg\(14) & (\mcu|instruction_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|dp|Selector32~1_combout\,
	combout => \mcu|dp|Selector32~2_combout\);

-- Location: LCCOMB_X14_Y23_N18
\mcu|dp|Selector32~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector32~3_combout\ = (\mcu|uPC\(0) & ((\mcu|uPC\(1) & (\mcu|Mux0~1_combout\)) # (!\mcu|uPC\(1) & ((\mcu|dp|Selector32~2_combout\))))) # (!\mcu|uPC\(0) & (((\mcu|uPC\(1) & !\mcu|dp|Selector32~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|Mux0~1_combout\,
	datac => \mcu|uPC\(1),
	datad => \mcu|dp|Selector32~2_combout\,
	combout => \mcu|dp|Selector32~3_combout\);

-- Location: LCCOMB_X13_Y21_N0
\mcu|dp|rf|QA[3]~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[3]~54_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[3]~51_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[3]~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector33~0_combout\,
	datab => \mcu|dp|Selector32~3_combout\,
	datac => \mcu|dp|rf|QA[3]~51_combout\,
	datad => \mcu|dp|rf|QA[3]~53_combout\,
	combout => \mcu|dp|rf|QA[3]~54_combout\);

-- Location: LCCOMB_X13_Y21_N4
\mcu|dp|the_best_alu_in_kista|Mux12~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux12~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|rf|QA[3]~54_combout\ & !\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[3]~54_combout\ $ (((\mcu|dp|Selector28~5_combout\) # 
-- (\mcu|ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector28~5_combout\,
	datab => \mcu|dp|rf|QA[3]~54_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux12~0_combout\);

-- Location: LCCOMB_X12_Y21_N14
\mcu|dp|the_best_alu_in_kista|Mux12~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux12~1_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux12~0_combout\) # ((\mcu|dp|the_best_alu_in_kista|Add2~6_combout\ & (\mcu|ucode|Mux6~2_combout\ & \mcu|ucode|Mux7~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add2~6_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux12~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux12~1_combout\);

-- Location: LCCOMB_X13_Y21_N2
\mcu|dp|the_best_alu_in_kista|Mux12~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux12~2_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~6_combout\))) # 
-- (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~6_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~6_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux12~2_combout\);

-- Location: LCCOMB_X13_Y21_N24
\mcu|dp|the_best_alu_in_kista|Mux12~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux12~3_combout\ = (\mcu|dp|Selector28~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux12~2_combout\) # ((\mcu|dp|rf|QA[3]~54_combout\ & \mcu|ucode|Mux6~2_combout\)))) # (!\mcu|dp|Selector28~5_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux12~2_combout\ & ((\mcu|dp|rf|QA[3]~54_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector28~5_combout\,
	datab => \mcu|dp|rf|QA[3]~54_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux12~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux12~3_combout\);

-- Location: LCCOMB_X12_Y21_N4
\mcu|dp|the_best_alu_in_kista|Mux12~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & (\mcu|dp|the_best_alu_in_kista|Mux12~1_combout\)) # (!\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux12~1_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux12~3_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\);

-- Location: FF_X12_Y21_N5
\mcu|Address_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(3));

-- Location: FF_X14_Y20_N23
\mcu|instruction_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(15),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(15));

-- Location: LCCOMB_X14_Y20_N28
\mcu|ucode|Mux21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux21~0_combout\ = (\mcu|instruction_reg\(15)) # ((!\mcu|instruction_reg\(14) & ((!\mcu|instruction_reg\(12)) # (!\mcu|instruction_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(13),
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|instruction_reg\(12),
	combout => \mcu|ucode|Mux21~0_combout\);

-- Location: LCCOMB_X14_Y20_N20
\mcu|dp|Selector31~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector31~6_combout\ = (\mcu|uPC\(0) & (!\mcu|ucode|Mux21~0_combout\ & (!\mcu|uPC\(1) & !\mcu|ucode|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|ucode|Mux21~0_combout\,
	datac => \mcu|uPC\(1),
	datad => \mcu|ucode|Mux8~0_combout\,
	combout => \mcu|dp|Selector31~6_combout\);

-- Location: LCCOMB_X15_Y21_N12
\mcu|dp|rf|register_arr~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~36_combout\ = (\mcu|instruction_reg\(13) & ((\memory|altsyncram_component|auto_generated|q_a\(2)))) # (!\mcu|instruction_reg\(13) & (\mcu|instruction_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(2),
	datab => \mcu|instruction_reg\(13),
	datad => \memory|altsyncram_component|auto_generated|q_a\(2),
	combout => \mcu|dp|rf|register_arr~36_combout\);

-- Location: LCCOMB_X15_Y22_N4
\mcu|dp|rf|register_arr~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~37_combout\ = (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux13~5_combout\) # ((\mcu|dp|rf|register_arr~36_combout\ & \mcu|dp|rf|register_arr~17_combout\)))) # (!\mcu|dp|rf|register_arr~18_combout\ & 
-- (\mcu|dp|rf|register_arr~36_combout\ & (\mcu|dp|rf|register_arr~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~18_combout\,
	datab => \mcu|dp|rf|register_arr~36_combout\,
	datac => \mcu|dp|rf|register_arr~17_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\,
	combout => \mcu|dp|rf|register_arr~37_combout\);

-- Location: FF_X15_Y22_N5
\mcu|dp|rf|register_arr[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr~37_combout\,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][2]~q\);

-- Location: FF_X15_Y22_N15
\mcu|dp|rf|register_arr[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][2]~q\);

-- Location: FF_X16_Y20_N1
\mcu|dp|rf|register_arr[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][2]~q\);

-- Location: FF_X16_Y20_N27
\mcu|dp|rf|register_arr[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][2]~q\);

-- Location: LCCOMB_X16_Y20_N26
\mcu|dp|Selector29~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|rf|register_arr[6][2]~q\) # ((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & (((\mcu|dp|rf|register_arr[4][2]~q\ & !\mcu|instruction_reg\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[6][2]~q\,
	datac => \mcu|dp|rf|register_arr[4][2]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector29~3_combout\);

-- Location: LCCOMB_X15_Y22_N14
\mcu|dp|Selector29~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~4_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector29~3_combout\ & ((\mcu|dp|rf|register_arr[7][2]~q\))) # (!\mcu|dp|Selector29~3_combout\ & (\mcu|dp|rf|register_arr[5][2]~q\)))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector29~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[5][2]~q\,
	datac => \mcu|dp|rf|register_arr[7][2]~q\,
	datad => \mcu|dp|Selector29~3_combout\,
	combout => \mcu|dp|Selector29~4_combout\);

-- Location: FF_X15_Y20_N27
\mcu|instruction_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \memory|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(2));

-- Location: FF_X14_Y23_N23
\mcu|dp|rf|register_arr[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][2]~q\);

-- Location: FF_X15_Y20_N13
\mcu|dp|rf|register_arr[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~37_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][2]~q\);

-- Location: LCCOMB_X15_Y24_N16
\mcu|dp|rf|register_arr[0][2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][2]~feeder_combout\ = \mcu|dp|rf|register_arr~37_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mcu|dp|rf|register_arr~37_combout\,
	combout => \mcu|dp|rf|register_arr[0][2]~feeder_combout\);

-- Location: FF_X15_Y24_N17
\mcu|dp|rf|register_arr[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][2]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][2]~q\);

-- Location: LCCOMB_X15_Y24_N22
\mcu|dp|Selector29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~0_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][2]~q\) # ((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[0][2]~q\ & !\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][2]~q\,
	datab => \mcu|dp|rf|register_arr[0][2]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector29~0_combout\);

-- Location: LCCOMB_X15_Y20_N12
\mcu|dp|Selector29~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~1_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector29~0_combout\ & ((\mcu|dp|rf|register_arr[3][2]~q\))) # (!\mcu|dp|Selector29~0_combout\ & (\mcu|dp|rf|register_arr[2][2]~q\)))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[2][2]~q\,
	datac => \mcu|dp|rf|register_arr[3][2]~q\,
	datad => \mcu|dp|Selector29~0_combout\,
	combout => \mcu|dp|Selector29~1_combout\);

-- Location: LCCOMB_X15_Y20_N26
\mcu|dp|Selector29~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~2_combout\ = (\mcu|ucode|Mux8~0_combout\ & ((\mcu|instruction_reg\(2)) # ((\mcu|dp|Selector31~2_combout\ & \mcu|dp|Selector29~1_combout\)))) # (!\mcu|ucode|Mux8~0_combout\ & (\mcu|dp|Selector31~2_combout\ & 
-- ((\mcu|dp|Selector29~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|dp|Selector31~2_combout\,
	datac => \mcu|instruction_reg\(2),
	datad => \mcu|dp|Selector29~1_combout\,
	combout => \mcu|dp|Selector29~2_combout\);

-- Location: LCCOMB_X14_Y20_N16
\mcu|dp|Selector29~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector29~5_combout\ = (\mcu|dp|Selector29~2_combout\) # ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector31~6_combout\ & \mcu|dp|Selector29~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(5),
	datab => \mcu|dp|Selector31~6_combout\,
	datac => \mcu|dp|Selector29~4_combout\,
	datad => \mcu|dp|Selector29~2_combout\,
	combout => \mcu|dp|Selector29~5_combout\);

-- Location: LCCOMB_X12_Y21_N30
\mcu|dp|the_best_alu_in_kista|Mux13~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~2_combout\ = (\mcu|ucode|Mux5~1_combout\ & (\mcu|dp|Selector29~5_combout\ & (!\mcu|ucode|Mux6~2_combout\ & !\mcu|ucode|Mux7~5_combout\))) # (!\mcu|ucode|Mux5~1_combout\ & (\mcu|ucode|Mux6~2_combout\ & 
-- ((\mcu|ucode|Mux7~5_combout\) # (!\mcu|dp|Selector29~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector29~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~2_combout\);

-- Location: LCCOMB_X12_Y21_N12
\mcu|dp|the_best_alu_in_kista|Mux13~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\ = (\mcu|dp|Selector29~5_combout\ & (\mcu|ucode|Mux6~2_combout\ $ (((\mcu|ucode|Mux5~1_combout\ & \mcu|ucode|Mux7~5_combout\))))) # (!\mcu|dp|Selector29~5_combout\ & ((\mcu|ucode|Mux6~2_combout\ & 
-- ((!\mcu|ucode|Mux7~5_combout\))) # (!\mcu|ucode|Mux6~2_combout\ & (\mcu|ucode|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector29~5_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\);

-- Location: LCCOMB_X12_Y21_N8
\mcu|dp|the_best_alu_in_kista|Mux13~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~3_combout\ = \mcu|ucode|Mux7~5_combout\ $ (((\mcu|dp|rf|QA[2]~59_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux13~2_combout\ & \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\)) # (!\mcu|dp|rf|QA[2]~59_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux13~2_combout\ & !\mcu|dp|the_best_alu_in_kista|Mux13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[2]~59_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux13~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux13~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~3_combout\);

-- Location: LCCOMB_X12_Y21_N26
\mcu|dp|the_best_alu_in_kista|Mux13~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|the_best_alu_in_kista|Add2~4_combout\)) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~2_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add2~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Add1~4_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~0_combout\);

-- Location: LCCOMB_X12_Y21_N16
\mcu|dp|the_best_alu_in_kista|Mux13~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux13~4_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux13~3_combout\)))) # (!\mcu|dp|the_best_alu_in_kista|Mux13~4_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux13~3_combout\ 
-- & ((\mcu|dp|the_best_alu_in_kista|Mux13~0_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Mux13~3_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux13~4_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add0~4_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux13~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux13~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\);

-- Location: FF_X12_Y21_N27
\mcu|Address_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(2));

-- Location: LCCOMB_X14_Y20_N18
\mcu|instruction_reg[13]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|instruction_reg[13]~2_combout\ = !\memory|altsyncram_component|auto_generated|q_a\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \memory|altsyncram_component|auto_generated|q_a\(13),
	combout => \mcu|instruction_reg[13]~2_combout\);

-- Location: FF_X14_Y20_N19
\mcu|instruction_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|instruction_reg[13]~2_combout\,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(13));

-- Location: LCCOMB_X11_Y21_N18
\mcu|ucode|Mux23~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux23~0_combout\ = (!\mcu|instruction_reg\(14) & ((\mcu|Mux3~2_combout\) # ((!\mcu|instruction_reg\(12) & !\mcu|instruction_reg\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|Mux3~2_combout\,
	datac => \mcu|instruction_reg\(14),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|ucode|Mux23~0_combout\);

-- Location: LCCOMB_X11_Y21_N12
\mcu|ucode|Mux5~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux5~1_combout\ = (\mcu|ucode|Mux5~0_combout\) # ((!\mcu|ucode|Mux23~0_combout\ & (\mcu|instruction_reg\(15) & \mcu|uPC\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~0_combout\,
	datab => \mcu|ucode|Mux23~0_combout\,
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|uPC\(0),
	combout => \mcu|ucode|Mux5~1_combout\);

-- Location: LCCOMB_X13_Y22_N8
\mcu|dp|rf|register_arr~40\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~40_combout\ = (\mcu|instruction_reg\(13) & (\memory|altsyncram_component|auto_generated|q_a\(15))) # (!\mcu|instruction_reg\(13) & ((\mcu|instruction_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \memory|altsyncram_component|auto_generated|q_a\(15),
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|dp|rf|register_arr~40_combout\);

-- Location: LCCOMB_X13_Y22_N30
\mcu|dp|rf|register_arr~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr~41_combout\ = (\mcu|dp|rf|register_arr~17_combout\ & ((\mcu|dp|rf|register_arr~40_combout\) # ((\mcu|dp|rf|register_arr~18_combout\ & \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\)))) # (!\mcu|dp|rf|register_arr~17_combout\ & 
-- (\mcu|dp|rf|register_arr~18_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr~17_combout\,
	datab => \mcu|dp|rf|register_arr~18_combout\,
	datac => \mcu|dp|rf|register_arr~40_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	combout => \mcu|dp|rf|register_arr~41_combout\);

-- Location: FF_X13_Y22_N27
\mcu|dp|rf|register_arr[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[4][11]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[4][15]~q\);

-- Location: FF_X15_Y21_N1
\mcu|dp|rf|register_arr[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[6][7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[6][15]~q\);

-- Location: LCCOMB_X16_Y22_N18
\mcu|dp|rf|QA[15]~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~76_combout\ = (\mcu|dp|Selector34~0_combout\ & (((\mcu|dp|rf|register_arr[6][15]~q\) # (\mcu|dp|Selector35~0_combout\)))) # (!\mcu|dp|Selector34~0_combout\ & (\mcu|dp|rf|register_arr[4][15]~q\ & ((!\mcu|dp|Selector35~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[4][15]~q\,
	datac => \mcu|dp|rf|register_arr[6][15]~q\,
	datad => \mcu|dp|Selector35~0_combout\,
	combout => \mcu|dp|rf|QA[15]~76_combout\);

-- Location: FF_X15_Y22_N3
\mcu|dp|rf|register_arr[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[7][3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[7][15]~q\);

-- Location: FF_X15_Y22_N29
\mcu|dp|rf|register_arr[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[5][8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[5][15]~q\);

-- Location: LCCOMB_X15_Y22_N2
\mcu|dp|rf|QA[15]~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~77_combout\ = (\mcu|dp|Selector35~0_combout\ & ((\mcu|dp|rf|QA[15]~76_combout\ & (\mcu|dp|rf|register_arr[7][15]~q\)) # (!\mcu|dp|rf|QA[15]~76_combout\ & ((\mcu|dp|rf|register_arr[5][15]~q\))))) # (!\mcu|dp|Selector35~0_combout\ & 
-- (\mcu|dp|rf|QA[15]~76_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector35~0_combout\,
	datab => \mcu|dp|rf|QA[15]~76_combout\,
	datac => \mcu|dp|rf|register_arr[7][15]~q\,
	datad => \mcu|dp|rf|register_arr[5][15]~q\,
	combout => \mcu|dp|rf|QA[15]~77_combout\);

-- Location: FF_X12_Y20_N29
\mcu|dp|rf|register_arr[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[2][12]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[2][15]~q\);

-- Location: FF_X13_Y22_N21
\mcu|dp|rf|register_arr[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[3][15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[3][15]~q\);

-- Location: FF_X16_Y22_N29
\mcu|dp|rf|register_arr[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[1][12]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[1][15]~q\);

-- Location: LCCOMB_X16_Y22_N28
\mcu|dp|rf|QA[15]~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~78_combout\ = (\mcu|dp|Selector35~0_combout\ & (((\mcu|dp|rf|register_arr[1][15]~q\) # (\mcu|dp|Selector34~0_combout\)))) # (!\mcu|dp|Selector35~0_combout\ & (\mcu|dp|rf|register_arr[0][15]~q\ & ((!\mcu|dp|Selector34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[0][15]~q\,
	datab => \mcu|dp|Selector35~0_combout\,
	datac => \mcu|dp|rf|register_arr[1][15]~q\,
	datad => \mcu|dp|Selector34~0_combout\,
	combout => \mcu|dp|rf|QA[15]~78_combout\);

-- Location: LCCOMB_X13_Y22_N20
\mcu|dp|rf|QA[15]~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~79_combout\ = (\mcu|dp|Selector34~0_combout\ & ((\mcu|dp|rf|QA[15]~78_combout\ & ((\mcu|dp|rf|register_arr[3][15]~q\))) # (!\mcu|dp|rf|QA[15]~78_combout\ & (\mcu|dp|rf|register_arr[2][15]~q\)))) # (!\mcu|dp|Selector34~0_combout\ & 
-- (((\mcu|dp|rf|QA[15]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector34~0_combout\,
	datab => \mcu|dp|rf|register_arr[2][15]~q\,
	datac => \mcu|dp|rf|register_arr[3][15]~q\,
	datad => \mcu|dp|rf|QA[15]~78_combout\,
	combout => \mcu|dp|rf|QA[15]~79_combout\);

-- Location: LCCOMB_X13_Y22_N2
\mcu|dp|rf|QA[15]~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|QA[15]~80_combout\ = (\mcu|dp|Selector32~3_combout\ & ((\mcu|dp|Selector33~0_combout\ & (\mcu|dp|rf|QA[15]~77_combout\)) # (!\mcu|dp|Selector33~0_combout\ & ((\mcu|dp|rf|QA[15]~79_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector32~3_combout\,
	datab => \mcu|dp|Selector33~0_combout\,
	datac => \mcu|dp|rf|QA[15]~77_combout\,
	datad => \mcu|dp|rf|QA[15]~79_combout\,
	combout => \mcu|dp|rf|QA[15]~80_combout\);

-- Location: LCCOMB_X15_Y21_N0
\mcu|dp|Selector16~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~0_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3)) # ((\mcu|dp|rf|register_arr[6][15]~q\)))) # (!\mcu|instruction_reg\(4) & (!\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[6][15]~q\,
	datad => \mcu|dp|rf|register_arr[4][15]~q\,
	combout => \mcu|dp|Selector16~0_combout\);

-- Location: LCCOMB_X15_Y22_N28
\mcu|dp|Selector16~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~1_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector16~0_combout\ & (\mcu|dp|rf|register_arr[7][15]~q\)) # (!\mcu|dp|Selector16~0_combout\ & ((\mcu|dp|rf|register_arr[5][15]~q\))))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(3),
	datab => \mcu|dp|rf|register_arr[7][15]~q\,
	datac => \mcu|dp|rf|register_arr[5][15]~q\,
	datad => \mcu|dp|Selector16~0_combout\,
	combout => \mcu|dp|Selector16~1_combout\);

-- Location: FF_X16_Y22_N7
\mcu|dp|rf|register_arr[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|rf|register_arr~41_combout\,
	sload => VCC,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][15]~q\);

-- Location: LCCOMB_X16_Y22_N6
\mcu|dp|Selector16~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~2_combout\ = (\mcu|instruction_reg\(4) & (((\mcu|instruction_reg\(3))))) # (!\mcu|instruction_reg\(4) & ((\mcu|instruction_reg\(3) & (\mcu|dp|rf|register_arr[1][15]~q\)) # (!\mcu|instruction_reg\(3) & 
-- ((\mcu|dp|rf|register_arr[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(4),
	datab => \mcu|dp|rf|register_arr[1][15]~q\,
	datac => \mcu|dp|rf|register_arr[0][15]~q\,
	datad => \mcu|instruction_reg\(3),
	combout => \mcu|dp|Selector16~2_combout\);

-- Location: LCCOMB_X12_Y20_N28
\mcu|dp|Selector16~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~3_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector16~2_combout\ & (\mcu|dp|rf|register_arr[3][15]~q\)) # (!\mcu|dp|Selector16~2_combout\ & ((\mcu|dp|rf|register_arr[2][15]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector16~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][15]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][15]~q\,
	datad => \mcu|dp|Selector16~2_combout\,
	combout => \mcu|dp|Selector16~3_combout\);

-- Location: LCCOMB_X13_Y20_N18
\mcu|dp|Selector16~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~4_combout\ = (\mcu|dp|Selector31~6_combout\ & ((\mcu|instruction_reg\(5) & (\mcu|dp|Selector16~1_combout\)) # (!\mcu|instruction_reg\(5) & ((\mcu|dp|Selector16~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector16~1_combout\,
	datad => \mcu|dp|Selector16~3_combout\,
	combout => \mcu|dp|Selector16~4_combout\);

-- Location: LCCOMB_X13_Y20_N0
\mcu|dp|Selector16~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector16~5_combout\ = (\mcu|dp|Selector16~4_combout\) # ((\mcu|ucode|Mux8~0_combout\ & \mcu|instruction_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|instruction_reg\(8),
	datad => \mcu|dp|Selector16~4_combout\,
	combout => \mcu|dp|Selector16~5_combout\);

-- Location: LCCOMB_X12_Y24_N26
\mcu|dp|the_best_alu_in_kista|Mux0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux0~2_combout\ = (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[15]~80_combout\ $ (((\mcu|ucode|Mux7~5_combout\) # (\mcu|dp|Selector16~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~5_combout\,
	datab => \mcu|dp|rf|QA[15]~80_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|Selector16~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux0~2_combout\);

-- Location: LCCOMB_X13_Y23_N30
\mcu|dp|the_best_alu_in_kista|Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Add1~30_combout\ = \mcu|dp|rf|QA[15]~80_combout\ $ (\mcu|dp|the_best_alu_in_kista|Add1~29\ $ (!\mcu|dp|Selector16~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|rf|QA[15]~80_combout\,
	datad => \mcu|dp|Selector16~5_combout\,
	cin => \mcu|dp|the_best_alu_in_kista|Add1~29\,
	combout => \mcu|dp|the_best_alu_in_kista|Add1~30_combout\);

-- Location: LCCOMB_X12_Y24_N2
\mcu|dp|the_best_alu_in_kista|Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux0~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & (((\mcu|dp|the_best_alu_in_kista|Add1~30_combout\) # (\mcu|ucode|Mux6~2_combout\)))) # (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~30_combout\ & 
-- ((!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~30_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~30_combout\,
	datac => \mcu|ucode|Mux7~5_combout\,
	datad => \mcu|ucode|Mux6~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y24_N16
\mcu|dp|the_best_alu_in_kista|Mux0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux0~1_combout\ = (\mcu|dp|Selector16~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux0~0_combout\) # ((\mcu|ucode|Mux6~2_combout\ & \mcu|dp|rf|QA[15]~80_combout\)))) # (!\mcu|dp|Selector16~5_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux0~0_combout\ & ((\mcu|dp|rf|QA[15]~80_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector16~5_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|rf|QA[15]~80_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux0~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux0~1_combout\);

-- Location: LCCOMB_X12_Y24_N14
\mcu|dp|the_best_alu_in_kista|Mux0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux0~3_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux0~2_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux0~3_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux0~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux0~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\);

-- Location: LCCOMB_X11_Y21_N8
\mcu|ucode|Mux29~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux29~0_combout\ = (\mcu|instruction_reg\(15)) # ((!\mcu|instruction_reg\(13) & (!\mcu|instruction_reg\(12) & !\mcu|instruction_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(15),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|instruction_reg\(12),
	datad => \mcu|instruction_reg\(14),
	combout => \mcu|ucode|Mux29~0_combout\);

-- Location: LCCOMB_X11_Y21_N26
\mcu|Z_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Z_reg~2_combout\ = (\mcu|uPC\(0) & (!\mcu|ucode|Mux29~0_combout\ & (!\mcu|uPC\(1) & !\RESET~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|ucode|Mux29~0_combout\,
	datac => \mcu|uPC\(1),
	datad => \RESET~input_o\,
	combout => \mcu|Z_reg~2_combout\);

-- Location: FF_X11_Y21_N29
\mcu|Neg_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	sload => VCC,
	ena => \mcu|Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Neg_reg~q\);

-- Location: LCCOMB_X14_Y21_N4
\mcu|dp|the_best_alu_in_kista|z_tmp~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|z_tmp~0_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux14~4_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux13~5_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux15~4_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux13~5_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux12~4_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|z_tmp~0_combout\);

-- Location: LCCOMB_X14_Y21_N18
\mcu|dp|the_best_alu_in_kista|z_tmp~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|z_tmp~1_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux8~4_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux10~4_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux9~5_combout\) # (\mcu|dp|the_best_alu_in_kista|Mux11~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux8~4_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux10~4_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux9~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux11~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|z_tmp~1_combout\);

-- Location: LCCOMB_X14_Y21_N24
\mcu|dp|the_best_alu_in_kista|z_tmp~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|z_tmp~2_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux7~5_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux5~5_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux6~4_combout\) # (\mcu|dp|the_best_alu_in_kista|z_tmp~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|z_tmp~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|z_tmp~2_combout\);

-- Location: LCCOMB_X14_Y21_N28
\mcu|dp|the_best_alu_in_kista|z_tmp~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|z_tmp~3_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux4~4_combout\) # ((\mcu|dp|the_best_alu_in_kista|z_tmp~0_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux2~4_combout\) # (\mcu|dp|the_best_alu_in_kista|z_tmp~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux4~4_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|z_tmp~0_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|z_tmp~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|z_tmp~3_combout\);

-- Location: LCCOMB_X14_Y21_N8
\mcu|dp|the_best_alu_in_kista|z_tmp~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|z_tmp~4_combout\ = (!\mcu|dp|the_best_alu_in_kista|Mux3~5_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux1~4_combout\ & (!\mcu|dp|the_best_alu_in_kista|Mux0~4_combout\ & !\mcu|dp|the_best_alu_in_kista|z_tmp~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Mux3~5_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|z_tmp~3_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|z_tmp~4_combout\);

-- Location: FF_X14_Y21_N9
\mcu|Z_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|dp|the_best_alu_in_kista|z_tmp~4_combout\,
	ena => \mcu|Z_reg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Z_reg~q\);

-- Location: LCCOMB_X11_Y21_N0
\mcu|ucode|Mux10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux10~0_combout\ = (!\mcu|uPC\(1) & (\mcu|uPC\(0) & (\mcu|instruction_reg\(15) & !\mcu|instruction_reg\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(1),
	datab => \mcu|uPC\(0),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|instruction_reg\(14),
	combout => \mcu|ucode|Mux10~0_combout\);

-- Location: LCCOMB_X11_Y21_N30
\mcu|Mux3~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux3~1_combout\ = (\mcu|Z_reg~q\ & (((\mcu|instruction_reg\(13)) # (!\mcu|ucode|Mux10~0_combout\)) # (!\mcu|instruction_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|instruction_reg\(13),
	datac => \mcu|Z_reg~q\,
	datad => \mcu|ucode|Mux10~0_combout\,
	combout => \mcu|Mux3~1_combout\);

-- Location: LCCOMB_X11_Y21_N28
\mcu|ucode|Mux11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux11~0_combout\ = (!\mcu|instruction_reg\(12) & (\mcu|ucode|Mux10~0_combout\ & \mcu|instruction_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|instruction_reg\(12),
	datab => \mcu|ucode|Mux10~0_combout\,
	datad => \mcu|instruction_reg\(13),
	combout => \mcu|ucode|Mux11~0_combout\);

-- Location: LCCOMB_X11_Y21_N20
\mcu|Mux3~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Mux3~2_combout\ = (\mcu|ucode|Mux11~0_combout\ & (((\mcu|Neg_reg~q\)))) # (!\mcu|ucode|Mux11~0_combout\ & ((\mcu|Mux3~0_combout\) # ((\mcu|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux3~0_combout\,
	datab => \mcu|Neg_reg~q\,
	datac => \mcu|Mux3~1_combout\,
	datad => \mcu|ucode|Mux11~0_combout\,
	combout => \mcu|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y24_N22
\mcu|ucode|Mux7~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~4_combout\ = (\mcu|ucode|Mux7~3_combout\ & (\mcu|uPC\(0) & ((!\mcu|instruction_reg\(15)) # (!\mcu|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~3_combout\,
	datab => \mcu|Mux3~2_combout\,
	datac => \mcu|uPC\(0),
	datad => \mcu|instruction_reg\(15),
	combout => \mcu|ucode|Mux7~4_combout\);

-- Location: LCCOMB_X12_Y24_N30
\mcu|ucode|Mux7~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux7~5_combout\ = (\mcu|uPC\(1) & (((\mcu|dp|Selector32~0_combout\)))) # (!\mcu|uPC\(1) & ((\mcu|ucode|Mux7~2_combout\) # ((\mcu|ucode|Mux7~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux7~2_combout\,
	datab => \mcu|dp|Selector32~0_combout\,
	datac => \mcu|ucode|Mux7~4_combout\,
	datad => \mcu|uPC\(1),
	combout => \mcu|ucode|Mux7~5_combout\);

-- Location: LCCOMB_X12_Y21_N20
\mcu|dp|the_best_alu_in_kista|Mux14~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux14~2_combout\ = (\mcu|dp|the_best_alu_in_kista|Add2~2_combout\ & (\mcu|ucode|Mux6~2_combout\ & \mcu|ucode|Mux7~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add2~2_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux14~2_combout\);

-- Location: LCCOMB_X13_Y21_N14
\mcu|dp|the_best_alu_in_kista|Mux14~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux14~3_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|dp|rf|QA[1]~64_combout\ & !\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & (\mcu|dp|rf|QA[1]~64_combout\ $ (((\mcu|dp|Selector30~5_combout\) # 
-- (\mcu|ucode|Mux7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector30~5_combout\,
	datab => \mcu|dp|rf|QA[1]~64_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux14~3_combout\);

-- Location: LCCOMB_X13_Y22_N22
\mcu|dp|Selector30~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~3_combout\ = (\mcu|instruction_reg\(3) & (((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & ((\mcu|instruction_reg\(4) & (\mcu|dp|rf|register_arr[6][1]~q\)) # (!\mcu|instruction_reg\(4) & 
-- ((\mcu|dp|rf|register_arr[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[6][1]~q\,
	datab => \mcu|instruction_reg\(3),
	datac => \mcu|dp|rf|register_arr[4][1]~q\,
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector30~3_combout\);

-- Location: LCCOMB_X13_Y20_N22
\mcu|dp|Selector30~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~4_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|Selector30~3_combout\ & ((\mcu|dp|rf|register_arr[7][1]~q\))) # (!\mcu|dp|Selector30~3_combout\ & (\mcu|dp|rf|register_arr[5][1]~q\)))) # (!\mcu|instruction_reg\(3) & 
-- (((\mcu|dp|Selector30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[5][1]~q\,
	datab => \mcu|dp|rf|register_arr[7][1]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|dp|Selector30~3_combout\,
	combout => \mcu|dp|Selector30~4_combout\);

-- Location: LCCOMB_X15_Y24_N20
\mcu|dp|rf|register_arr[0][1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|rf|register_arr[0][1]~feeder_combout\ = \mcu|dp|rf|register_arr~39_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|dp|rf|register_arr~39_combout\,
	combout => \mcu|dp|rf|register_arr[0][1]~feeder_combout\);

-- Location: FF_X15_Y24_N21
\mcu|dp|rf|register_arr[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|rf|register_arr[0][1]~feeder_combout\,
	ena => \mcu|dp|rf|register_arr[0][14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|dp|rf|register_arr[0][1]~q\);

-- Location: LCCOMB_X15_Y24_N2
\mcu|dp|Selector30~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~0_combout\ = (\mcu|instruction_reg\(3) & ((\mcu|dp|rf|register_arr[1][1]~q\) # ((\mcu|instruction_reg\(4))))) # (!\mcu|instruction_reg\(3) & (((\mcu|dp|rf|register_arr[0][1]~q\ & !\mcu|instruction_reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[1][1]~q\,
	datab => \mcu|dp|rf|register_arr[0][1]~q\,
	datac => \mcu|instruction_reg\(3),
	datad => \mcu|instruction_reg\(4),
	combout => \mcu|dp|Selector30~0_combout\);

-- Location: LCCOMB_X14_Y24_N24
\mcu|dp|Selector30~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~1_combout\ = (\mcu|instruction_reg\(4) & ((\mcu|dp|Selector30~0_combout\ & (\mcu|dp|rf|register_arr[3][1]~q\)) # (!\mcu|dp|Selector30~0_combout\ & ((\mcu|dp|rf|register_arr[2][1]~q\))))) # (!\mcu|instruction_reg\(4) & 
-- (((\mcu|dp|Selector30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|register_arr[3][1]~q\,
	datab => \mcu|instruction_reg\(4),
	datac => \mcu|dp|rf|register_arr[2][1]~q\,
	datad => \mcu|dp|Selector30~0_combout\,
	combout => \mcu|dp|Selector30~1_combout\);

-- Location: LCCOMB_X13_Y20_N24
\mcu|dp|Selector30~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~2_combout\ = (\mcu|ucode|Mux8~0_combout\ & ((\mcu|instruction_reg\(1)) # ((\mcu|dp|Selector31~2_combout\ & \mcu|dp|Selector30~1_combout\)))) # (!\mcu|ucode|Mux8~0_combout\ & (((\mcu|dp|Selector31~2_combout\ & 
-- \mcu|dp|Selector30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux8~0_combout\,
	datab => \mcu|instruction_reg\(1),
	datac => \mcu|dp|Selector31~2_combout\,
	datad => \mcu|dp|Selector30~1_combout\,
	combout => \mcu|dp|Selector30~2_combout\);

-- Location: LCCOMB_X13_Y20_N28
\mcu|dp|Selector30~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector30~5_combout\ = (\mcu|dp|Selector30~2_combout\) # ((\mcu|dp|Selector31~6_combout\ & (\mcu|instruction_reg\(5) & \mcu|dp|Selector30~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~6_combout\,
	datab => \mcu|instruction_reg\(5),
	datac => \mcu|dp|Selector30~4_combout\,
	datad => \mcu|dp|Selector30~2_combout\,
	combout => \mcu|dp|Selector30~5_combout\);

-- Location: LCCOMB_X12_Y21_N0
\mcu|dp|the_best_alu_in_kista|Mux14~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux14~0_combout\ = (\mcu|ucode|Mux6~2_combout\ & (((\mcu|ucode|Mux7~5_combout\)))) # (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|ucode|Mux7~5_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~2_combout\))) # 
-- (!\mcu|ucode|Mux7~5_combout\ & (\mcu|dp|the_best_alu_in_kista|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~2_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Add1~2_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux14~0_combout\);

-- Location: LCCOMB_X12_Y21_N18
\mcu|dp|the_best_alu_in_kista|Mux14~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux14~1_combout\ = (\mcu|dp|rf|QA[1]~64_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux14~0_combout\) # ((\mcu|ucode|Mux6~2_combout\ & \mcu|dp|Selector30~5_combout\)))) # (!\mcu|dp|rf|QA[1]~64_combout\ & 
-- (\mcu|dp|the_best_alu_in_kista|Mux14~0_combout\ & ((\mcu|dp|Selector30~5_combout\) # (!\mcu|ucode|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[1]~64_combout\,
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|Selector30~5_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux14~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux14~1_combout\);

-- Location: LCCOMB_X12_Y21_N2
\mcu|dp|the_best_alu_in_kista|Mux14~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux14~2_combout\) # ((\mcu|dp|the_best_alu_in_kista|Mux14~3_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & 
-- (((\mcu|dp|the_best_alu_in_kista|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datab => \mcu|dp|the_best_alu_in_kista|Mux14~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux14~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux14~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\);

-- Location: FF_X12_Y21_N21
\mcu|Address_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux14~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(1));

-- Location: LCCOMB_X14_Y20_N14
\mcu|instruction_reg[14]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|instruction_reg[14]~1_combout\ = !\memory|altsyncram_component|auto_generated|q_a\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \memory|altsyncram_component|auto_generated|q_a\(14),
	combout => \mcu|instruction_reg[14]~1_combout\);

-- Location: FF_X14_Y20_N15
\mcu|instruction_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \mcu|instruction_reg[14]~1_combout\,
	ena => \mcu|instruction_reg[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|instruction_reg\(14));

-- Location: LCCOMB_X14_Y20_N8
\mcu|dp|Selector32~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|Selector32~0_combout\ = (!\mcu|uPC\(0) & ((\mcu|instruction_reg\(14)) # (!\mcu|instruction_reg\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|instruction_reg\(14),
	datac => \mcu|instruction_reg\(15),
	datad => \mcu|uPC\(0),
	combout => \mcu|dp|Selector32~0_combout\);

-- Location: LCCOMB_X14_Y24_N2
\mcu|ucode|Mux6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux6~1_combout\ = (\mcu|instruction_reg\(15) & (!\mcu|instruction_reg\(14) & ((\mcu|Mux3~2_combout\) # (!\mcu|ucode|Mux6~0_combout\)))) # (!\mcu|instruction_reg\(15) & (\mcu|ucode|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux6~0_combout\,
	datab => \mcu|Mux3~2_combout\,
	datac => \mcu|instruction_reg\(14),
	datad => \mcu|instruction_reg\(15),
	combout => \mcu|ucode|Mux6~1_combout\);

-- Location: LCCOMB_X14_Y24_N10
\mcu|ucode|Mux6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|ucode|Mux6~2_combout\ = (\mcu|dp|Selector32~0_combout\) # ((\mcu|uPC\(0) & ((\mcu|uPC\(1)) # (!\mcu|ucode|Mux6~1_combout\))) # (!\mcu|uPC\(0) & (!\mcu|uPC\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|uPC\(0),
	datab => \mcu|uPC\(1),
	datac => \mcu|dp|Selector32~0_combout\,
	datad => \mcu|ucode|Mux6~1_combout\,
	combout => \mcu|ucode|Mux6~2_combout\);

-- Location: LCCOMB_X14_Y23_N10
\mcu|dp|the_best_alu_in_kista|Mux15~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux15~2_combout\ = (\mcu|dp|Selector31~7_combout\ & ((\mcu|ucode|Mux7~5_combout\) # ((\mcu|dp|rf|QA[0]~8_combout\ & !\mcu|ucode|Mux5~1_combout\)))) # (!\mcu|dp|Selector31~7_combout\ & (\mcu|ucode|Mux7~5_combout\ & 
-- ((\mcu|dp|rf|QA[0]~8_combout\) # (\mcu|ucode|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|Selector31~7_combout\,
	datab => \mcu|dp|rf|QA[0]~8_combout\,
	datac => \mcu|ucode|Mux5~1_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux15~2_combout\);

-- Location: LCCOMB_X14_Y23_N0
\mcu|dp|the_best_alu_in_kista|Mux15~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux15~3_combout\ = (\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux15~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add2~0_combout\))) # (!\mcu|dp|the_best_alu_in_kista|Mux15~2_combout\ & 
-- (\mcu|dp|rf|QA[0]~8_combout\)))) # (!\mcu|ucode|Mux5~1_combout\ & (((\mcu|dp|the_best_alu_in_kista|Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|ucode|Mux5~1_combout\,
	datab => \mcu|dp|rf|QA[0]~8_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add2~0_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux15~2_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux15~3_combout\);

-- Location: LCCOMB_X12_Y20_N16
\mcu|dp|the_best_alu_in_kista|Mux15~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux15~0_combout\ = (\mcu|ucode|Mux7~5_combout\ & ((\mcu|ucode|Mux5~1_combout\ & (!\mcu|dp|rf|QA[0]~8_combout\)) # (!\mcu|ucode|Mux5~1_combout\ & ((\mcu|dp|the_best_alu_in_kista|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|rf|QA[0]~8_combout\,
	datab => \mcu|ucode|Mux5~1_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Add1~0_combout\,
	datad => \mcu|ucode|Mux7~5_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux15~0_combout\);

-- Location: LCCOMB_X12_Y20_N6
\mcu|dp|the_best_alu_in_kista|Mux15~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux15~1_combout\ = (!\mcu|ucode|Mux6~2_combout\ & ((\mcu|dp|the_best_alu_in_kista|Mux15~0_combout\) # ((\mcu|dp|the_best_alu_in_kista|Add0~0_combout\ & !\mcu|ucode|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|dp|the_best_alu_in_kista|Add0~0_combout\,
	datab => \mcu|ucode|Mux7~5_combout\,
	datac => \mcu|ucode|Mux6~2_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux15~0_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux15~1_combout\);

-- Location: LCCOMB_X14_Y21_N14
\mcu|dp|the_best_alu_in_kista|Mux15~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\ = (\mcu|dp|the_best_alu_in_kista|Mux15~1_combout\) # ((\mcu|ucode|Mux6~2_combout\ & \mcu|dp|the_best_alu_in_kista|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|ucode|Mux6~2_combout\,
	datac => \mcu|dp|the_best_alu_in_kista|Mux15~3_combout\,
	datad => \mcu|dp|the_best_alu_in_kista|Mux15~1_combout\,
	combout => \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\);

-- Location: FF_X14_Y21_N15
\mcu|Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux15~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Data_out\(0));

-- Location: LCCOMB_X10_Y21_N24
\gpio_per|Dout[0]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[0]~feeder_combout\ = \mcu|Data_out\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(0),
	combout => \gpio_per|Dout[0]~feeder_combout\);

-- Location: LCCOMB_X10_Y21_N0
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\mcu|Address_out\(7) & (!\mcu|Address_out\(4) & (!\mcu|Address_out\(6) & !\mcu|Address_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Address_out\(7),
	datab => \mcu|Address_out\(4),
	datac => \mcu|Address_out\(6),
	datad => \mcu|Address_out\(5),
	combout => \Equal0~3_combout\);

-- Location: FF_X11_Y20_N9
\mcu|Address_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux1~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(14));

-- Location: FF_X11_Y20_N3
\mcu|Address_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux2~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(13));

-- Location: FF_X13_Y24_N1
\mcu|Address_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux0~4_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(15));

-- Location: LCCOMB_X11_Y20_N24
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\mcu|Address_out\(12) & (\mcu|Address_out\(14) & (\mcu|Address_out\(13) & \mcu|Address_out\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Address_out\(12),
	datab => \mcu|Address_out\(14),
	datac => \mcu|Address_out\(13),
	datad => \mcu|Address_out\(15),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X12_Y22_N24
\mcu|Address_out[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mcu|Address_out[9]~feeder_combout\ = \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mcu|dp|the_best_alu_in_kista|Mux6~4_combout\,
	combout => \mcu|Address_out[9]~feeder_combout\);

-- Location: FF_X12_Y22_N25
\mcu|Address_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|Address_out[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(9));

-- Location: FF_X11_Y24_N15
\mcu|Address_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|dp|the_best_alu_in_kista|Mux5~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(10));

-- Location: FF_X12_Y23_N15
\mcu|Address_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \mcu|dp|the_best_alu_in_kista|Mux7~5_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \mcu|ucode|Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mcu|Address_out\(8));

-- Location: LCCOMB_X11_Y24_N14
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\mcu|Address_out\(11) & (!\mcu|Address_out\(9) & (!\mcu|Address_out\(10) & !\mcu|Address_out\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Address_out\(11),
	datab => \mcu|Address_out\(9),
	datac => \mcu|Address_out\(10),
	datad => \mcu|Address_out\(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X11_Y22_N4
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\Equal0~0_combout\ & (((\mcu|uPC\(0)) # (\mcu|uPC\(1))) # (!\mcu|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mcu|Mux0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \mcu|uPC\(0),
	datad => \mcu|uPC\(1),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X10_Y21_N14
\Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (\Equal0~4_combout\ & (\Equal0~3_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~5_combout\);

-- Location: FF_X10_Y21_N25
\gpio_per|Dout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[0]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(0));

-- Location: FF_X9_Y21_N13
\gpio_per|Dout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(1),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(1));

-- Location: LCCOMB_X10_Y21_N2
\gpio_per|Dout[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[2]~feeder_combout\ = \mcu|Data_out\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(2),
	combout => \gpio_per|Dout[2]~feeder_combout\);

-- Location: FF_X10_Y21_N3
\gpio_per|Dout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[2]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(2));

-- Location: FF_X11_Y23_N7
\gpio_per|Dout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(3),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(3));

-- Location: LCCOMB_X9_Y24_N24
\gpio_per|Dout[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[4]~feeder_combout\ = \mcu|Data_out\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(4),
	combout => \gpio_per|Dout[4]~feeder_combout\);

-- Location: FF_X9_Y24_N25
\gpio_per|Dout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[4]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(4));

-- Location: FF_X10_Y21_N5
\gpio_per|Dout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(5),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(5));

-- Location: FF_X10_Y24_N9
\gpio_per|Dout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(6),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(6));

-- Location: LCCOMB_X9_Y21_N6
\gpio_per|Dout[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[7]~feeder_combout\ = \mcu|Data_out\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(7),
	combout => \gpio_per|Dout[7]~feeder_combout\);

-- Location: FF_X9_Y21_N7
\gpio_per|Dout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[7]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(7));

-- Location: FF_X11_Y23_N29
\gpio_per|Dout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(8),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(8));

-- Location: LCCOMB_X10_Y24_N6
\gpio_per|Dout[9]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[9]~feeder_combout\ = \mcu|Data_out\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(9),
	combout => \gpio_per|Dout[9]~feeder_combout\);

-- Location: FF_X10_Y24_N7
\gpio_per|Dout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(9));

-- Location: LCCOMB_X10_Y24_N4
\gpio_per|Dout[10]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[10]~feeder_combout\ = \mcu|Data_out\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(10),
	combout => \gpio_per|Dout[10]~feeder_combout\);

-- Location: FF_X10_Y24_N5
\gpio_per|Dout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[10]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(10));

-- Location: FF_X11_Y23_N31
\gpio_per|Dout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(11),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(11));

-- Location: LCCOMB_X10_Y24_N26
\gpio_per|Dout[12]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[12]~feeder_combout\ = \mcu|Data_out\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(12),
	combout => \gpio_per|Dout[12]~feeder_combout\);

-- Location: FF_X10_Y24_N27
\gpio_per|Dout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[12]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(12));

-- Location: LCCOMB_X10_Y21_N6
\gpio_per|Dout[13]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \gpio_per|Dout[13]~feeder_combout\ = \mcu|Data_out\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mcu|Data_out\(13),
	combout => \gpio_per|Dout[13]~feeder_combout\);

-- Location: FF_X10_Y21_N7
\gpio_per|Dout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \gpio_per|Dout[13]~feeder_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(13));

-- Location: FF_X11_Y23_N3
\gpio_per|Dout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(14),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(14));

-- Location: FF_X11_Y23_N5
\gpio_per|Dout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \mcu|Data_out\(15),
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gpio_per|Dout\(15));

ww_PIO(0) <= \PIO[0]~output_o\;

ww_PIO(1) <= \PIO[1]~output_o\;

ww_PIO(2) <= \PIO[2]~output_o\;

ww_PIO(3) <= \PIO[3]~output_o\;

ww_PIO(4) <= \PIO[4]~output_o\;

ww_PIO(5) <= \PIO[5]~output_o\;

ww_PIO(6) <= \PIO[6]~output_o\;

ww_PIO(7) <= \PIO[7]~output_o\;

ww_PIO(8) <= \PIO[8]~output_o\;

ww_PIO(9) <= \PIO[9]~output_o\;

ww_PIO(10) <= \PIO[10]~output_o\;

ww_PIO(11) <= \PIO[11]~output_o\;

ww_PIO(12) <= \PIO[12]~output_o\;

ww_PIO(13) <= \PIO[13]~output_o\;

ww_PIO(14) <= \PIO[14]~output_o\;

ww_PIO(15) <= \PIO[15]~output_o\;
END structure;


