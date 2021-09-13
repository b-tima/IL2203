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

-- DATE "09/13/2021 11:21:12"

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

ENTITY 	ALU IS
    PORT (
	OP : IN std_logic_vector(2 DOWNTO 0);
	A : IN std_logic_vector(6 DOWNTO 0);
	B : IN std_logic_vector(6 DOWNTO 0);
	SUM : OUT std_logic_vector(6 DOWNTO 0);
	Z_Flag : OUT std_logic;
	N_Flag : OUT std_logic;
	O_Flag : OUT std_logic
	);
END ALU;

-- Design Ports Information
-- SUM[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SUM[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Z_Flag	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- N_Flag	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- O_Flag	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_OP : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SUM : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_Z_Flag : std_logic;
SIGNAL ww_N_Flag : std_logic;
SIGNAL ww_O_Flag : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2_cout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Z_Flag~0_combout\ : std_logic;
SIGNAL \Z_Flag~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \sub_overflow~0_combout\ : std_logic;
SIGNAL \sub_overflow~combout\ : std_logic;
SIGNAL \O_Flag~0_combout\ : std_logic;
SIGNAL \OP~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_Z_Flag~1_combout\ : std_logic;

BEGIN

ww_OP <= OP;
ww_A <= A;
ww_B <= B;
SUM <= ww_SUM;
Z_Flag <= ww_Z_Flag;
N_Flag <= ww_N_Flag;
O_Flag <= ww_O_Flag;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Z_Flag~1_combout\ <= NOT \Z_Flag~1_combout\;

-- Location: LCCOMB_X2_Y12_N10
\Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\A~combout\(0) & ((\Add0~0_combout\ & (\Add0~2_cout\ & VCC)) # (!\Add0~0_combout\ & (!\Add0~2_cout\)))) # (!\A~combout\(0) & ((\Add0~0_combout\ & (!\Add0~2_cout\)) # (!\Add0~0_combout\ & ((\Add0~2_cout\) # (GND)))))
-- \Add0~4\ = CARRY((\A~combout\(0) & (!\Add0~0_combout\ & !\Add0~2_cout\)) # (!\A~combout\(0) & ((!\Add0~2_cout\) # (!\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add0~2_cout\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X2_Y12_N12
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = ((\Add0~5_combout\ $ (\A~combout\(1) $ (!\Add0~4\)))) # (GND)
-- \Add0~7\ = CARRY((\Add0~5_combout\ & ((\A~combout\(1)) # (!\Add0~4\))) # (!\Add0~5_combout\ & (\A~combout\(1) & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \A~combout\(1),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X2_Y12_N20
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = ((\A~combout\(5) $ (\Add0~17_combout\ $ (!\Add0~16\)))) # (GND)
-- \Add0~19\ = CARRY((\A~combout\(5) & ((\Add0~17_combout\) # (!\Add0~16\))) # (!\A~combout\(5) & (\Add0~17_combout\ & !\Add0~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(5),
	datab => \Add0~17_combout\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X1_Y12_N14
\Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \B~combout\(1) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(1),
	datad => \OP~combout\(0),
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X1_Y12_N2
\Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = \B~combout\(3) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(3),
	datad => \OP~combout\(0),
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X3_Y12_N20
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\Mux6~0_combout\ & ((\Mux6~1_combout\ & ((\A~combout\(5)))) # (!\Mux6~1_combout\ & (\Add0~18_combout\)))) # (!\Mux6~0_combout\ & (((!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \A~combout\(5),
	datac => \Mux6~0_combout\,
	datad => \Mux6~1_combout\,
	combout => \Mux1~0_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X2_Y12_N24
\Mux6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\OP~combout\(0) & ((\B~combout\(0)) # (\A~combout\(0)))) # (!\OP~combout\(0) & (\B~combout\(0) & \A~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(0),
	datac => \B~combout\(0),
	datad => \A~combout\(0),
	combout => \Mux6~5_combout\);

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

-- Location: LCCOMB_X4_Y12_N28
\Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\OP~combout\(1)) # (!\OP~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \OP~combout\(1),
	datad => \OP~combout\(2),
	combout => \Mux6~3_combout\);

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

-- Location: LCCOMB_X1_Y12_N22
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ((!\OP~combout\(0) & \OP~combout\(1))) # (!\OP~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(2),
	datac => \OP~combout\(0),
	datad => \OP~combout\(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y12_N0
\Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\OP~combout\(2) & ((\OP~combout\(0)) # (\OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(2),
	datac => \OP~combout\(0),
	datad => \OP~combout\(1),
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X2_Y12_N4
\Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~0_combout\ & ((\Mux6~1_combout\ & ((\A~combout\(0)))) # (!\Mux6~1_combout\ & (\Add0~3_combout\)))) # (!\Mux6~0_combout\ & (((!\Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Mux6~0_combout\,
	datac => \Mux6~1_combout\,
	datad => \A~combout\(0),
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X2_Y12_N26
\Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux6~3_combout\ & (((\Mux6~2_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(0) $ (((\B~combout\(0)) # (!\Mux6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(0),
	datab => \Mux6~3_combout\,
	datac => \Mux6~2_combout\,
	datad => \A~combout\(0),
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X3_Y12_N28
\Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\OP~combout\(2) & (((\Mux6~4_combout\)))) # (!\OP~combout\(2) & ((\OP~combout\(1) & (\Mux6~5_combout\)) # (!\OP~combout\(1) & ((\Mux6~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \Mux6~4_combout\,
	combout => \Mux6~6_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X1_Y12_N6
\Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\B~combout\(1) & ((\A~combout\(1)) # (\OP~combout\(0)))) # (!\B~combout\(1) & (\A~combout\(1) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \OP~combout\(0),
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X1_Y12_N12
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\Mux6~1_combout\ & (((\A~combout\(1) & \Mux6~0_combout\)))) # (!\Mux6~1_combout\ & ((\Add0~6_combout\) # ((!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Mux6~1_combout\,
	datac => \A~combout\(1),
	datad => \Mux6~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y12_N20
\Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux6~3_combout\ & (((\Mux5~0_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(1) $ (((\B~combout\(1)) # (!\Mux5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \Mux6~3_combout\,
	datac => \A~combout\(1),
	datad => \Mux5~0_combout\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X3_Y12_N14
\Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\OP~combout\(2) & (((\Mux5~1_combout\)))) # (!\OP~combout\(2) & ((\OP~combout\(1) & (\Mux5~2_combout\)) # (!\OP~combout\(1) & ((\Mux5~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~2_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \Mux5~1_combout\,
	combout => \Mux5~3_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X1_Y12_N18
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = \B~combout\(2) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datad => \OP~combout\(0),
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X1_Y12_N16
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \B~combout\(0) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(0),
	datad => \OP~combout\(0),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X2_Y12_N8
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_cout\ = CARRY(\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(0),
	datad => VCC,
	cout => \Add0~2_cout\);

-- Location: LCCOMB_X2_Y12_N14
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\A~combout\(2) & ((\Add0~8_combout\ & (\Add0~7\ & VCC)) # (!\Add0~8_combout\ & (!\Add0~7\)))) # (!\A~combout\(2) & ((\Add0~8_combout\ & (!\Add0~7\)) # (!\Add0~8_combout\ & ((\Add0~7\) # (GND)))))
-- \Add0~10\ = CARRY((\A~combout\(2) & (!\Add0~8_combout\ & !\Add0~7\)) # (!\A~combout\(2) & ((!\Add0~7\) # (!\Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Add0~8_combout\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X1_Y12_N24
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\Mux6~0_combout\ & ((\Mux6~1_combout\ & ((\A~combout\(2)))) # (!\Mux6~1_combout\ & (\Add0~9_combout\)))) # (!\Mux6~0_combout\ & (!\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux6~1_combout\,
	datac => \Add0~9_combout\,
	datad => \A~combout\(2),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y12_N10
\Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux6~3_combout\ & (((\Mux4~0_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(2) $ (((\B~combout\(2)) # (!\Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \B~combout\(2),
	datac => \Mux4~0_combout\,
	datad => \A~combout\(2),
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X1_Y12_N26
\Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\B~combout\(2) & ((\OP~combout\(0)) # (\A~combout\(2)))) # (!\B~combout\(2) & (\OP~combout\(0) & \A~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(2),
	datac => \OP~combout\(0),
	datad => \A~combout\(2),
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X3_Y12_N12
\Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\OP~combout\(2) & (\Mux4~1_combout\)) # (!\OP~combout\(2) & ((\OP~combout\(1) & ((\Mux4~2_combout\))) # (!\OP~combout\(1) & (\Mux4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~1_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X2_Y12_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\Add0~11_combout\ $ (\A~combout\(3) $ (!\Add0~10\)))) # (GND)
-- \Add0~13\ = CARRY((\Add0~11_combout\ & ((\A~combout\(3)) # (!\Add0~10\))) # (!\Add0~11_combout\ & (\A~combout\(3) & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \A~combout\(3),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X3_Y12_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\Mux6~0_combout\ & ((\Mux6~1_combout\ & (\A~combout\(3))) # (!\Mux6~1_combout\ & ((\Add0~12_combout\))))) # (!\Mux6~0_combout\ & (!\Mux6~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \Mux6~1_combout\,
	datac => \A~combout\(3),
	datad => \Add0~12_combout\,
	combout => \Mux3~0_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X3_Y12_N24
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux6~3_combout\ & (((\Mux3~0_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(3) $ (((\B~combout\(3)) # (!\Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \Mux3~0_combout\,
	datac => \B~combout\(3),
	datad => \Mux6~3_combout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X3_Y12_N2
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\A~combout\(3) & ((\B~combout\(3)) # (\OP~combout\(0)))) # (!\A~combout\(3) & (\B~combout\(3) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => \OP~combout\(0),
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X3_Y12_N0
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\OP~combout\(2) & (\Mux3~1_combout\)) # (!\OP~combout\(2) & ((\OP~combout\(1) & ((\Mux3~2_combout\))) # (!\OP~combout\(1) & (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~1_combout\,
	datab => \OP~combout\(2),
	datac => \OP~combout\(1),
	datad => \Mux3~2_combout\,
	combout => \Mux3~3_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X1_Y12_N4
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \B~combout\(4) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(4),
	datad => \OP~combout\(0),
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X2_Y12_N18
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\A~combout\(4) & ((\Add0~14_combout\ & (\Add0~13\ & VCC)) # (!\Add0~14_combout\ & (!\Add0~13\)))) # (!\A~combout\(4) & ((\Add0~14_combout\ & (!\Add0~13\)) # (!\Add0~14_combout\ & ((\Add0~13\) # (GND)))))
-- \Add0~16\ = CARRY((\A~combout\(4) & (!\Add0~14_combout\ & !\Add0~13\)) # (!\A~combout\(4) & ((!\Add0~13\) # (!\Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X4_Y12_N14
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\Mux6~1_combout\ & (((\Mux6~0_combout\ & \A~combout\(4))))) # (!\Mux6~1_combout\ & ((\Add0~15_combout\) # ((!\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Add0~15_combout\,
	datac => \Mux6~0_combout\,
	datad => \A~combout\(4),
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X4_Y12_N24
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux6~3_combout\ & (((\Mux2~0_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(4) $ (((\B~combout\(4)) # (!\Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datac => \Mux2~0_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X4_Y12_N30
\Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\B~combout\(4) & ((\OP~combout\(0)) # (\A~combout\(4)))) # (!\B~combout\(4) & (\OP~combout\(0) & \A~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(4),
	datac => \OP~combout\(0),
	datad => \A~combout\(4),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X3_Y12_N22
\Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\OP~combout\(1) & ((\OP~combout\(2) & (\Mux2~1_combout\)) # (!\OP~combout\(2) & ((\Mux2~2_combout\))))) # (!\OP~combout\(1) & (\Mux2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~2_combout\,
	datac => \OP~combout\(1),
	datad => \OP~combout\(2),
	combout => \Mux2~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X3_Y12_N8
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\B~combout\(5) & ((\A~combout\(5)) # (\OP~combout\(0)))) # (!\B~combout\(5) & (\A~combout\(5) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \OP~combout\(0),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X3_Y12_N6
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux6~3_combout\ & (\Mux1~0_combout\)) # (!\Mux6~3_combout\ & (\A~combout\(5) $ (((\B~combout\(5)) # (!\Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \B~combout\(5),
	datac => \A~combout\(5),
	datad => \Mux6~3_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X3_Y12_N10
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\OP~combout\(1) & ((\OP~combout\(2) & ((\Mux1~1_combout\))) # (!\OP~combout\(2) & (\Mux1~2_combout\)))) # (!\OP~combout\(1) & (((\Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datab => \OP~combout\(2),
	datac => \Mux1~2_combout\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X3_Y12_N16
\Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\B~combout\(6) & ((\A~combout\(6)) # (\OP~combout\(0)))) # (!\B~combout\(6) & (\A~combout\(6) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \OP~combout\(0),
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X1_Y12_N8
\Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \B~combout\(6) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(6),
	datad => \OP~combout\(0),
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X1_Y12_N28
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \B~combout\(5) $ (\OP~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B~combout\(5),
	datad => \OP~combout\(0),
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X2_Y12_N22
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = \A~combout\(6) $ (\Add0~19\ $ (\Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(6),
	datad => \Add0~20_combout\,
	cin => \Add0~19\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X2_Y12_N2
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\Mux6~1_combout\ & (\Mux6~0_combout\ & (\A~combout\(6)))) # (!\Mux6~1_combout\ & (((\Add0~21_combout\)) # (!\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datab => \Mux6~0_combout\,
	datac => \A~combout\(6),
	datad => \Add0~21_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X2_Y12_N0
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux6~3_combout\ & (((\Mux0~0_combout\)))) # (!\Mux6~3_combout\ & (\A~combout\(6) $ (((\B~combout\(6)) # (!\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~3_combout\,
	datab => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X2_Y12_N6
\Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\OP~combout\(1) & ((\OP~combout\(2) & ((\Mux0~1_combout\))) # (!\OP~combout\(2) & (\Mux0~2_combout\)))) # (!\OP~combout\(1) & (((\Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(1),
	datab => \OP~combout\(2),
	datac => \Mux0~2_combout\,
	datad => \Mux0~1_combout\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X3_Y12_N18
\Z_Flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z_Flag~0_combout\ = (\Mux4~3_combout\) # ((\Mux6~6_combout\) # ((\Mux5~3_combout\) # (\Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~3_combout\,
	datab => \Mux6~6_combout\,
	datac => \Mux5~3_combout\,
	datad => \Mux3~3_combout\,
	combout => \Z_Flag~0_combout\);

-- Location: LCCOMB_X3_Y12_N4
\Z_Flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Z_Flag~1_combout\ = (\Mux1~3_combout\) # ((\Z_Flag~0_combout\) # ((\Mux0~3_combout\) # (\Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Z_Flag~0_combout\,
	datac => \Mux0~3_combout\,
	datad => \Mux2~3_combout\,
	combout => \Z_Flag~1_combout\);

-- Location: LCCOMB_X1_Y12_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\OP~combout\(1) & (!\OP~combout\(2) & \OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(1),
	datac => \OP~combout\(2),
	datad => \OP~combout\(0),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y12_N28
\sub_overflow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \sub_overflow~0_combout\ = (\B~combout\(6) & (!\A~combout\(6) & \Mux0~3_combout\)) # (!\B~combout\(6) & (\A~combout\(6) & !\Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \Mux0~3_combout\,
	combout => \sub_overflow~0_combout\);

-- Location: LCCOMB_X2_Y12_N30
sub_overflow : cycloneii_lcell_comb
-- Equation(s):
-- \sub_overflow~combout\ = (\Equal0~0_combout\ & ((\sub_overflow~0_combout\))) # (!\Equal0~0_combout\ & (\sub_overflow~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sub_overflow~combout\,
	datac => \Equal0~0_combout\,
	datad => \sub_overflow~0_combout\,
	combout => \sub_overflow~combout\);

-- Location: LCCOMB_X3_Y12_N26
\O_Flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \O_Flag~0_combout\ = (\sub_overflow~combout\) # ((\B~combout\(6) & (\A~combout\(6) & !\Mux0~3_combout\)) # (!\B~combout\(6) & (!\A~combout\(6) & \Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sub_overflow~combout\,
	datab => \B~combout\(6),
	datac => \A~combout\(6),
	datad => \Mux0~3_combout\,
	combout => \O_Flag~0_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[0]~I\ : cycloneii_io
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
	datain => \Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[1]~I\ : cycloneii_io
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
	datain => \Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[2]~I\ : cycloneii_io
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
	datain => \Mux4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[3]~I\ : cycloneii_io
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
	datain => \Mux3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[4]~I\ : cycloneii_io
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
	datain => \Mux2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[5]~I\ : cycloneii_io
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
	datain => \Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SUM[6]~I\ : cycloneii_io
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
	datain => \Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SUM(6));

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
	datain => \ALT_INV_Z_Flag~1_combout\,
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
	datain => \Mux0~3_combout\,
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
	datain => \O_Flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_O_Flag);
END structure;


