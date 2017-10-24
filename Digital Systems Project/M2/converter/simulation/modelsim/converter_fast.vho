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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "06/16/2016 02:58:44"

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

ENTITY 	converter IS
    PORT (
	i_DIN : IN std_logic_vector(15 DOWNTO 0);
	o_DOUT : OUT std_logic_vector(15 DOWNTO 0);
	o_COUT : OUT std_logic
	);
END converter;

-- Design Ports Information
-- o_DOUT[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_DOUT[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_COUT	=>  Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_DIN[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DIN[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF converter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_DIN : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_o_COUT : std_logic;
SIGNAL \u_add1|f_0:4:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:5:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:15:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:9:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:18:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:10:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:14:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:10:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:7:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:8:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:11:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:13:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:14:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:15:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:13:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:14:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:16:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:16:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:17:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:19:u_1|o_COUT~combout\ : std_logic;
SIGNAL \u_add1|f_0:15:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:16:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:17:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:16:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:19:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:13:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \w_TopOverflow~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:8:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~1_combout\ : std_logic;
SIGNAL \u_add2|f_0:9:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_add3|f_0:2:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~2_combout\ : std_logic;
SIGNAL \u_add3|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~3_combout\ : std_logic;
SIGNAL \u_add3|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:11:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~4_combout\ : std_logic;
SIGNAL \u_add1|f_0:12:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:12:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~5_combout\ : std_logic;
SIGNAL \u_add1|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add1|f_0:13:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add2|f_0:13:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~6_combout\ : std_logic;
SIGNAL \u_add2|f_0:14:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~7_combout\ : std_logic;
SIGNAL \u_add2|f_0:15:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_add3|f_0:8:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~8_combout\ : std_logic;
SIGNAL \u_add3|f_0:9:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~9_combout\ : std_logic;
SIGNAL \u_add3|f_0:10:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~10_combout\ : std_logic;
SIGNAL \u_add3|f_0:11:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \o_DOUT~11_combout\ : std_logic;
SIGNAL \o_DOUT~12_combout\ : std_logic;
SIGNAL \o_DOUT~13_combout\ : std_logic;
SIGNAL \o_DOUT~14_combout\ : std_logic;
SIGNAL \o_DOUT~15_combout\ : std_logic;
SIGNAL \i_DIN~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_i_DIN <= i_DIN;
o_DOUT <= ww_o_DOUT;
o_COUT <= ww_o_COUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X36_Y3_N0
\u_add1|f_0:4:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:4:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(3) $ (((\i_DIN~combout\(0) & \i_DIN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(0),
	datac => \i_DIN~combout\(3),
	datad => \i_DIN~combout\(2),
	combout => \u_add1|f_0:4:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N2
\u_add1|f_0:5:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:5:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(4) $ (\u_add1|f_0:4:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datac => \u_add1|f_0:4:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(2),
	combout => \u_add1|f_0:5:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N12
\u_add2|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:5:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(0) & ((\u_add1|f_0:4:u_1|o_DOUT~0_combout\ & ((\u_add1|f_0:5:u_1|o_DOUT~0_combout\))) # (!\u_add1|f_0:4:u_1|o_DOUT~0_combout\ & (\i_DIN~combout\(1))))) # (!\i_DIN~combout\(0) & (\i_DIN~combout\(1) & 
-- ((\u_add1|f_0:5:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(1),
	datab => \u_add1|f_0:4:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(0),
	datad => \u_add1|f_0:5:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N2
\u_add1|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:12:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(9) & ((\i_DIN~combout\(11)) # (\u_add1|f_0:11:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(9) & (\i_DIN~combout\(11) & \u_add1|f_0:11:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(9),
	datac => \i_DIN~combout\(11),
	datad => \u_add1|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N6
\u_add1|f_0:15:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:15:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(14) $ (((\i_DIN~combout\(13) & ((\u_add1|f_0:13:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(11)))) # (!\i_DIN~combout\(13) & (\u_add1|f_0:13:u_1|o_COUT~0_combout\ & \i_DIN~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(14),
	datab => \i_DIN~combout\(13),
	datac => \u_add1|f_0:13:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(11),
	combout => \u_add1|f_0:15:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N10
\u_add1|f_0:9:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:9:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(8) $ (((\i_DIN~combout\(7) & ((\u_add1|f_0:7:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(5)))) # (!\i_DIN~combout\(7) & (\u_add1|f_0:7:u_1|o_COUT~0_combout\ & \i_DIN~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add1|f_0:7:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(5),
	datad => \i_DIN~combout\(8),
	combout => \u_add1|f_0:9:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N10
\u_add2|f_0:18:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:18:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(15) $ (\u_add2|f_0:17:u_1|o_COUT~0_combout\ $ (((\u_add1|f_0:16:u_1|o_COUT~0_combout\ & \i_DIN~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add2|f_0:17:u_1|o_COUT~0_combout\,
	datac => \u_add1|f_0:16:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(14),
	combout => \u_add2|f_0:18:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N20
\u_add2|f_0:10:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:10:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(7) $ (\u_add1|f_0:10:u_1|o_DOUT~0_combout\ $ (\u_add2|f_0:9:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add1|f_0:10:u_1|o_DOUT~0_combout\,
	datad => \u_add2|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:10:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N16
\u_add3|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:5:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(4) & ((\u_add3|f_0:4:u_1|o_COUT~0_combout\) # (\u_add2|f_0:12:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(8))))) # (!\i_DIN~combout\(4) & (\u_add3|f_0:4:u_1|o_COUT~0_combout\ & 
-- (\u_add2|f_0:12:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add2|f_0:12:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(8),
	datad => \u_add3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N4
\u_add3|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:8:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(7) & ((\u_add3|f_0:7:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(11) $ (\u_add2|f_0:15:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(7) & (\u_add3|f_0:7:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(11) $ 
-- (\u_add2|f_0:15:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(11),
	datab => \u_add2|f_0:15:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(7),
	datad => \u_add3|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:8:u_1|o_COUT~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[4]~I\ : cycloneii_io
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
	padio => ww_i_DIN(4),
	combout => \i_DIN~combout\(4));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[14]~I\ : cycloneii_io
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
	padio => ww_i_DIN(14),
	combout => \i_DIN~combout\(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[13]~I\ : cycloneii_io
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
	padio => ww_i_DIN(13),
	combout => \i_DIN~combout\(13));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[12]~I\ : cycloneii_io
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
	padio => ww_i_DIN(12),
	combout => \i_DIN~combout\(12));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[11]~I\ : cycloneii_io
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
	padio => ww_i_DIN(11),
	combout => \i_DIN~combout\(11));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[10]~I\ : cycloneii_io
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
	padio => ww_i_DIN(10),
	combout => \i_DIN~combout\(10));

-- Location: LCCOMB_X32_Y3_N0
\u_add1|f_0:14:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:14:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(13) $ (((\u_add1|f_0:12:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(10)) # (\i_DIN~combout\(12)))) # (!\u_add1|f_0:12:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(10) & \i_DIN~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:12:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(10),
	datac => \i_DIN~combout\(13),
	datad => \i_DIN~combout\(12),
	combout => \u_add1|f_0:14:u_1|o_DOUT~0_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[9]~I\ : cycloneii_io
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
	padio => ww_i_DIN(9),
	combout => \i_DIN~combout\(9));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[8]~I\ : cycloneii_io
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
	padio => ww_i_DIN(8),
	combout => \i_DIN~combout\(8));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[6]~I\ : cycloneii_io
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
	padio => ww_i_DIN(6),
	combout => \i_DIN~combout\(6));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[5]~I\ : cycloneii_io
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
	padio => ww_i_DIN(5),
	combout => \i_DIN~combout\(5));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[3]~I\ : cycloneii_io
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
	padio => ww_i_DIN(3),
	combout => \i_DIN~combout\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[2]~I\ : cycloneii_io
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
	padio => ww_i_DIN(2),
	combout => \i_DIN~combout\(2));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[1]~I\ : cycloneii_io
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
	padio => ww_i_DIN(1),
	combout => \i_DIN~combout\(1));

-- Location: LCCOMB_X36_Y3_N8
\u_add1|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:4:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(3) & ((\i_DIN~combout\(1)) # ((\i_DIN~combout\(0) & \i_DIN~combout\(2))))) # (!\i_DIN~combout\(3) & (\i_DIN~combout\(0) & (\i_DIN~combout\(2) & \i_DIN~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(0),
	datab => \i_DIN~combout\(2),
	datac => \i_DIN~combout\(3),
	datad => \i_DIN~combout\(1),
	combout => \u_add1|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N10
\u_add1|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:5:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(4) & ((\u_add1|f_0:4:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(2)))) # (!\i_DIN~combout\(4) & (\u_add1|f_0:4:u_1|o_COUT~0_combout\ & \i_DIN~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datac => \u_add1|f_0:4:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(2),
	combout => \u_add1|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N18
\u_add1|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:6:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(5) & ((\i_DIN~combout\(3)) # (\u_add1|f_0:5:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(5) & (\i_DIN~combout\(3) & \u_add1|f_0:5:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(5),
	datac => \i_DIN~combout\(3),
	datad => \u_add1|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N20
\u_add1|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:7:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(4) & ((\u_add1|f_0:6:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(6)))) # (!\i_DIN~combout\(4) & (\u_add1|f_0:6:u_1|o_COUT~0_combout\ & \i_DIN~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add1|f_0:6:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(6),
	combout => \u_add1|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N16
\u_add1|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:8:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(7) & ((\i_DIN~combout\(5)) # (\u_add1|f_0:7:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(7) & (\i_DIN~combout\(5) & \u_add1|f_0:7:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datac => \i_DIN~combout\(5),
	datad => \u_add1|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N0
\u_add1|f_0:10:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:10:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(9) $ (((\i_DIN~combout\(8) & ((\i_DIN~combout\(6)) # (\u_add1|f_0:8:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(8) & (\i_DIN~combout\(6) & \u_add1|f_0:8:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(8),
	datab => \i_DIN~combout\(6),
	datac => \u_add1|f_0:8:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(9),
	combout => \u_add1|f_0:10:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N22
\u_add1|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:6:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(5) $ (((\i_DIN~combout\(4) & ((\u_add1|f_0:4:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(2)))) # (!\i_DIN~combout\(4) & (\u_add1|f_0:4:u_1|o_COUT~0_combout\ & \i_DIN~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \i_DIN~combout\(5),
	datac => \u_add1|f_0:4:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(2),
	combout => \u_add1|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N14
\u_add2|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:6:u_1|o_COUT~0_combout\ = (\u_add2|f_0:5:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(2)) # (\u_add1|f_0:6:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(3))))) # (!\u_add2|f_0:5:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(2) & 
-- (\u_add1|f_0:6:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:5:u_1|o_COUT~0_combout\,
	datab => \u_add1|f_0:6:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(3),
	datad => \i_DIN~combout\(2),
	combout => \u_add2|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N28
\u_add1|f_0:7:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:7:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(6) $ (((\i_DIN~combout\(5) & ((\i_DIN~combout\(3)) # (\u_add1|f_0:5:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(5) & (\i_DIN~combout\(3) & \u_add1|f_0:5:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(6),
	datab => \i_DIN~combout\(5),
	datac => \i_DIN~combout\(3),
	datad => \u_add1|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:7:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N24
\u_add2|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:7:u_1|o_COUT~0_combout\ = (\u_add2|f_0:6:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(3)) # (\i_DIN~combout\(4) $ (\u_add1|f_0:7:u_1|o_DOUT~0_combout\)))) # (!\u_add2|f_0:6:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(3) & (\i_DIN~combout\(4) $ 
-- (\u_add1|f_0:7:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add2|f_0:6:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(3),
	datad => \u_add1|f_0:7:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:7:u_1|o_COUT~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[7]~I\ : cycloneii_io
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
	padio => ww_i_DIN(7),
	combout => \i_DIN~combout\(7));

-- Location: LCCOMB_X36_Y3_N30
\u_add1|f_0:8:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:8:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(7) $ (((\i_DIN~combout\(4) & ((\u_add1|f_0:6:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(6)))) # (!\i_DIN~combout\(4) & (\u_add1|f_0:6:u_1|o_COUT~0_combout\ & \i_DIN~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add1|f_0:6:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(7),
	datad => \i_DIN~combout\(6),
	combout => \u_add1|f_0:8:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N26
\u_add2|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:8:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(4) & ((\u_add2|f_0:7:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(5) $ (\u_add1|f_0:8:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(4) & (\u_add2|f_0:7:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(5) $ 
-- (\u_add1|f_0:8:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \i_DIN~combout\(5),
	datac => \u_add2|f_0:7:u_1|o_COUT~0_combout\,
	datad => \u_add1|f_0:8:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N28
\u_add2|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:9:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(5) & ((\u_add2|f_0:8:u_1|o_COUT~0_combout\) # (\u_add1|f_0:9:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(6))))) # (!\i_DIN~combout\(5) & (\u_add2|f_0:8:u_1|o_COUT~0_combout\ & 
-- (\u_add1|f_0:9:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:9:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(6),
	datac => \i_DIN~combout\(5),
	datad => \u_add2|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N22
\u_add2|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:10:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(6) & ((\u_add2|f_0:9:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(7) $ (\u_add1|f_0:10:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(6) & (\u_add2|f_0:9:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(7) $ 
-- (\u_add1|f_0:10:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add1|f_0:10:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(6),
	datad => \u_add2|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N18
\u_add1|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:9:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(8) & ((\i_DIN~combout\(6)) # (\u_add1|f_0:8:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(8) & (\i_DIN~combout\(6) & \u_add1|f_0:8:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(8),
	datab => \i_DIN~combout\(6),
	datac => \u_add1|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N30
\u_add1|f_0:11:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:11:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(10) $ (((\i_DIN~combout\(7) & ((\i_DIN~combout\(9)) # (\u_add1|f_0:9:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(7) & (\i_DIN~combout\(9) & \u_add1|f_0:9:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \i_DIN~combout\(9),
	datac => \i_DIN~combout\(10),
	datad => \u_add1|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:11:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N24
\u_add2|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:11:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(7) & ((\u_add2|f_0:10:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(8) $ (\u_add1|f_0:11:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(7) & (\u_add2|f_0:10:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(8) $ 
-- (\u_add1|f_0:11:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add2|f_0:10:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(8),
	datad => \u_add1|f_0:11:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N8
\u_add2|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:12:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(8) & ((\u_add2|f_0:11:u_1|o_COUT~0_combout\) # (\u_add1|f_0:12:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(9))))) # (!\i_DIN~combout\(8) & (\u_add2|f_0:11:u_1|o_COUT~0_combout\ & 
-- (\u_add1|f_0:12:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:12:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(9),
	datac => \i_DIN~combout\(8),
	datad => \u_add2|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N18
\u_add2|f_0:13:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:13:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(9) & ((\u_add2|f_0:12:u_1|o_COUT~0_combout\) # (\u_add1|f_0:13:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(10))))) # (!\i_DIN~combout\(9) & (\u_add2|f_0:12:u_1|o_COUT~0_combout\ & 
-- (\u_add1|f_0:13:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:13:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(9),
	datac => \u_add2|f_0:12:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(10),
	combout => \u_add2|f_0:13:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N26
\u_add2|f_0:14:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:14:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(10) & ((\u_add2|f_0:13:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(11) $ (\u_add1|f_0:14:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(10) & (\u_add2|f_0:13:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(11) 
-- $ (\u_add1|f_0:14:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(11),
	datab => \u_add1|f_0:14:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(10),
	datad => \u_add2|f_0:13:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:14:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N28
\u_add2|f_0:15:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:15:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(11) & ((\u_add2|f_0:14:u_1|o_COUT~0_combout\) # (\u_add1|f_0:15:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(12))))) # (!\i_DIN~combout\(11) & (\u_add2|f_0:14:u_1|o_COUT~0_combout\ & 
-- (\u_add1|f_0:15:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:15:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(12),
	datac => \i_DIN~combout\(11),
	datad => \u_add2|f_0:14:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:15:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N16
\u_add1|f_0:13:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:13:u_1|o_COUT~0_combout\ = (\u_add1|f_0:12:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(10)) # (\i_DIN~combout\(12)))) # (!\u_add1|f_0:12:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(10) & \i_DIN~combout\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:12:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(10),
	datad => \i_DIN~combout\(12),
	combout => \u_add1|f_0:13:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N2
\u_add1|f_0:14:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:14:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(13) & ((\u_add1|f_0:13:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(11)))) # (!\i_DIN~combout\(13) & (\u_add1|f_0:13:u_1|o_COUT~0_combout\ & \i_DIN~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(13),
	datac => \u_add1|f_0:13:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(11),
	combout => \u_add1|f_0:14:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N18
\u_add1|f_0:16:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:16:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(15) $ (((\i_DIN~combout\(14) & ((\i_DIN~combout\(12)) # (\u_add1|f_0:14:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(14) & (\i_DIN~combout\(12) & \u_add1|f_0:14:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(12),
	datad => \u_add1|f_0:14:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:16:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y2_N24
\u_add2|f_0:16:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:16:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(12) & ((\u_add2|f_0:15:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(13) $ (\u_add1|f_0:16:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(12) & (\u_add2|f_0:15:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(13) 
-- $ (\u_add1|f_0:16:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(13),
	datab => \i_DIN~combout\(12),
	datac => \u_add2|f_0:15:u_1|o_COUT~0_combout\,
	datad => \u_add1|f_0:16:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:16:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N4
\u_add2|f_0:17:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:17:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(13) & ((\u_add2|f_0:16:u_1|o_COUT~0_combout\) # (\u_add1|f_0:16:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(14))))) # (!\i_DIN~combout\(13) & (\u_add2|f_0:16:u_1|o_COUT~0_combout\ & 
-- (\u_add1|f_0:16:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:16:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(13),
	datad => \u_add2|f_0:16:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:17:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N30
\u_add2|f_0:19:u_1|o_COUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:19:u_1|o_COUT~combout\ = (\i_DIN~combout\(15) & ((\i_DIN~combout\(14)) # (\u_add2|f_0:17:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(15) & (\i_DIN~combout\(14) & \u_add2|f_0:17:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \i_DIN~combout\(14),
	datac => \u_add2|f_0:17:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:19:u_1|o_COUT~combout\);

-- Location: LCCOMB_X32_Y3_N20
\u_add1|f_0:15:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:15:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(12) & ((\i_DIN~combout\(14)) # (\u_add1|f_0:14:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(12) & (\i_DIN~combout\(14) & \u_add1|f_0:14:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(12),
	datac => \i_DIN~combout\(14),
	datad => \u_add1|f_0:14:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:15:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N16
\u_add1|f_0:16:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:16:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(15) & ((\u_add1|f_0:15:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(13)))) # (!\i_DIN~combout\(15) & (\u_add1|f_0:15:u_1|o_COUT~0_combout\ & \i_DIN~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add1|f_0:15:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(13),
	combout => \u_add1|f_0:16:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N20
\u_add2|f_0:17:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:17:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(14) $ (\u_add1|f_0:16:u_1|o_COUT~0_combout\ $ (\u_add2|f_0:16:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(14),
	datac => \u_add1|f_0:16:u_1|o_COUT~0_combout\,
	datad => \u_add2|f_0:16:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:17:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y2_N2
\u_add2|f_0:16:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:16:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(13) $ (\u_add1|f_0:16:u_1|o_DOUT~0_combout\ $ (\u_add2|f_0:15:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(13),
	datab => \u_add1|f_0:16:u_1|o_DOUT~0_combout\,
	datac => \u_add2|f_0:15:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:16:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y2_N28
\u_add3|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:9:u_1|o_COUT~0_combout\ = (\u_add3|f_0:8:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(8)) # (\i_DIN~combout\(12) $ (\u_add2|f_0:16:u_1|o_DOUT~0_combout\)))) # (!\u_add3|f_0:8:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(8) & (\i_DIN~combout\(12) $ 
-- (\u_add2|f_0:16:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add3|f_0:8:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(12),
	datac => \i_DIN~combout\(8),
	datad => \u_add2|f_0:16:u_1|o_DOUT~0_combout\,
	combout => \u_add3|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y2_N30
\u_add3|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:10:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(9) & ((\u_add3|f_0:9:u_1|o_COUT~0_combout\) # (\i_DIN~combout\(13) $ (\u_add2|f_0:17:u_1|o_DOUT~0_combout\)))) # (!\i_DIN~combout\(9) & (\u_add3|f_0:9:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(13) $ 
-- (\u_add2|f_0:17:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(13),
	datab => \i_DIN~combout\(9),
	datac => \u_add2|f_0:17:u_1|o_DOUT~0_combout\,
	datad => \u_add3|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N14
\u_add3|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:11:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(10) & ((\u_add3|f_0:10:u_1|o_COUT~0_combout\) # (\u_add2|f_0:18:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(14))))) # (!\i_DIN~combout\(10) & (\u_add3|f_0:10:u_1|o_COUT~0_combout\ & 
-- (\u_add2|f_0:18:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:18:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(10),
	datad => \u_add3|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N24
\u_add2|f_0:19:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:19:u_1|o_DOUT~0_combout\ = (\i_DIN~combout\(15) & ((\u_add2|f_0:17:u_1|o_COUT~0_combout\ & ((!\i_DIN~combout\(14)) # (!\u_add1|f_0:16:u_1|o_COUT~0_combout\))) # (!\u_add2|f_0:17:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(14)))))) # 
-- (!\i_DIN~combout\(15) & (\i_DIN~combout\(14) & ((\u_add2|f_0:17:u_1|o_COUT~0_combout\) # (\u_add1|f_0:16:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add2|f_0:17:u_1|o_COUT~0_combout\,
	datac => \u_add1|f_0:16:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(14),
	combout => \u_add2|f_0:19:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N8
\u_add3|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:12:u_1|o_COUT~0_combout\ = (\u_add3|f_0:11:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(11)) # (\i_DIN~combout\(15) $ (\u_add2|f_0:19:u_1|o_DOUT~0_combout\)))) # (!\u_add3|f_0:11:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(11) & (\i_DIN~combout\(15) 
-- $ (\u_add2|f_0:19:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add3|f_0:11:u_1|o_COUT~0_combout\,
	datac => \u_add2|f_0:19:u_1|o_DOUT~0_combout\,
	datad => \i_DIN~combout\(11),
	combout => \u_add3|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N26
\u_add3|f_0:13:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:13:u_1|o_COUT~0_combout\ = (\u_add3|f_0:12:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(12)) # ((\i_DIN~combout\(15) & \u_add2|f_0:19:u_1|o_COUT~combout\)))) # (!\u_add3|f_0:12:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(15) & 
-- (\u_add2|f_0:19:u_1|o_COUT~combout\ & \i_DIN~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add2|f_0:19:u_1|o_COUT~combout\,
	datac => \u_add3|f_0:12:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(12),
	combout => \u_add3|f_0:13:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y2_N28
\w_TopOverflow~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \w_TopOverflow~0_combout\ = (\i_DIN~combout\(15)) # ((\i_DIN~combout\(14) & (\i_DIN~combout\(13) & \u_add3|f_0:13:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(13),
	datad => \u_add3|f_0:13:u_1|o_COUT~0_combout\,
	combout => \w_TopOverflow~0_combout\);

-- Location: LCCOMB_X36_Y3_N16
\u_add2|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:7:u_1|o_DOUT~combout\ = \i_DIN~combout\(4) $ (\u_add2|f_0:6:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(3) $ (\u_add1|f_0:7:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add2|f_0:6:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(3),
	datad => \u_add1|f_0:7:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X36_Y3_N6
\o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~0_combout\ = (!\w_TopOverflow~0_combout\ & \u_add2|f_0:7:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datac => \u_add2|f_0:7:u_1|o_DOUT~combout\,
	combout => \o_DOUT~0_combout\);

-- Location: LCCOMB_X36_Y3_N4
\u_add2|f_0:8:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:8:u_1|o_DOUT~combout\ = \i_DIN~combout\(4) $ (\i_DIN~combout\(5) $ (\u_add2|f_0:7:u_1|o_COUT~0_combout\ $ (\u_add1|f_0:8:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \i_DIN~combout\(5),
	datac => \u_add2|f_0:7:u_1|o_COUT~0_combout\,
	datad => \u_add1|f_0:8:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:8:u_1|o_DOUT~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[0]~I\ : cycloneii_io
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
	padio => ww_i_DIN(0),
	combout => \i_DIN~combout\(0));

-- Location: LCCOMB_X35_Y3_N18
\o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~1_combout\ = (!\w_TopOverflow~0_combout\ & (\u_add2|f_0:8:u_1|o_DOUT~combout\ $ (\i_DIN~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:8:u_1|o_DOUT~combout\,
	datab => \i_DIN~combout\(0),
	datac => \w_TopOverflow~0_combout\,
	combout => \o_DOUT~1_combout\);

-- Location: LCCOMB_X34_Y3_N6
\u_add2|f_0:9:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:9:u_1|o_DOUT~combout\ = \u_add1|f_0:9:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(6) $ (\i_DIN~combout\(5) $ (\u_add2|f_0:8:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:9:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(6),
	datac => \i_DIN~combout\(5),
	datad => \u_add2|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:9:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X35_Y3_N12
\u_add3|f_0:2:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:2:u_1|o_DOUT~combout\ = \u_add2|f_0:9:u_1|o_DOUT~combout\ $ (\i_DIN~combout\(1) $ (((\u_add2|f_0:8:u_1|o_DOUT~combout\ & \i_DIN~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:8:u_1|o_DOUT~combout\,
	datab => \i_DIN~combout\(0),
	datac => \u_add2|f_0:9:u_1|o_DOUT~combout\,
	datad => \i_DIN~combout\(1),
	combout => \u_add3|f_0:2:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X35_Y3_N6
\o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~2_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:2:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:2:u_1|o_DOUT~combout\,
	combout => \o_DOUT~2_combout\);

-- Location: LCCOMB_X35_Y3_N0
\u_add3|f_0:2:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:2:u_1|o_COUT~0_combout\ = (\u_add2|f_0:9:u_1|o_DOUT~combout\ & ((\i_DIN~combout\(1)) # ((\u_add2|f_0:8:u_1|o_DOUT~combout\ & \i_DIN~combout\(0))))) # (!\u_add2|f_0:9:u_1|o_DOUT~combout\ & (\u_add2|f_0:8:u_1|o_DOUT~combout\ & 
-- (\i_DIN~combout\(0) & \i_DIN~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:8:u_1|o_DOUT~combout\,
	datab => \i_DIN~combout\(0),
	datac => \u_add2|f_0:9:u_1|o_DOUT~combout\,
	datad => \i_DIN~combout\(1),
	combout => \u_add3|f_0:2:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N12
\u_add3|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:3:u_1|o_DOUT~combout\ = \u_add2|f_0:10:u_1|o_DOUT~0_combout\ $ (\u_add3|f_0:2:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(6) $ (\i_DIN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:10:u_1|o_DOUT~0_combout\,
	datab => \u_add3|f_0:2:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(6),
	datad => \i_DIN~combout\(2),
	combout => \u_add3|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X35_Y3_N24
\o_DOUT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~3_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:3:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:3:u_1|o_DOUT~combout\,
	combout => \o_DOUT~3_combout\);

-- Location: LCCOMB_X34_Y3_N8
\u_add3|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:3:u_1|o_COUT~0_combout\ = (\u_add3|f_0:2:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(2)) # (\u_add2|f_0:10:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(6))))) # (!\u_add3|f_0:2:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(2) & 
-- (\u_add2|f_0:10:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:10:u_1|o_DOUT~0_combout\,
	datab => \u_add3|f_0:2:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(6),
	datad => \i_DIN~combout\(2),
	combout => \u_add3|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N26
\u_add2|f_0:11:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:11:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(8) $ (\u_add2|f_0:10:u_1|o_COUT~0_combout\ $ (\u_add1|f_0:11:u_1|o_DOUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(8),
	datab => \u_add2|f_0:10:u_1|o_COUT~0_combout\,
	datad => \u_add1|f_0:11:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:11:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N14
\u_add3|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:4:u_1|o_DOUT~combout\ = \i_DIN~combout\(7) $ (\u_add3|f_0:3:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(3) $ (\u_add2|f_0:11:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add3|f_0:3:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(3),
	datad => \u_add2|f_0:11:u_1|o_DOUT~0_combout\,
	combout => \u_add3|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X35_Y3_N26
\o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~4_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:4:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:4:u_1|o_DOUT~combout\,
	combout => \o_DOUT~4_combout\);

-- Location: LCCOMB_X33_Y3_N30
\u_add1|f_0:12:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:12:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(11) $ (((\u_add1|f_0:10:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(8)) # (\i_DIN~combout\(10)))) # (!\u_add1|f_0:10:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(8) & \i_DIN~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:10:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(11),
	datac => \i_DIN~combout\(8),
	datad => \i_DIN~combout\(10),
	combout => \u_add1|f_0:12:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N14
\u_add2|f_0:12:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:12:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(9) $ (\u_add1|f_0:12:u_1|o_DOUT~0_combout\ $ (\u_add2|f_0:11:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(9),
	datac => \u_add1|f_0:12:u_1|o_DOUT~0_combout\,
	datad => \u_add2|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:12:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N2
\u_add3|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:4:u_1|o_COUT~0_combout\ = (\u_add3|f_0:3:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(3)) # (\i_DIN~combout\(7) $ (\u_add2|f_0:11:u_1|o_DOUT~0_combout\)))) # (!\u_add3|f_0:3:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(3) & (\i_DIN~combout\(7) $ 
-- (\u_add2|f_0:11:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datab => \u_add3|f_0:3:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(3),
	datad => \u_add2|f_0:11:u_1|o_DOUT~0_combout\,
	combout => \u_add3|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N12
\u_add3|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:5:u_1|o_DOUT~combout\ = \i_DIN~combout\(4) $ (\u_add2|f_0:12:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(8) $ (\u_add3|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(4),
	datab => \u_add2|f_0:12:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(8),
	datad => \u_add3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y3_N22
\o_DOUT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~5_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:5:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:5:u_1|o_DOUT~combout\,
	combout => \o_DOUT~5_combout\);

-- Location: LCCOMB_X34_Y3_N4
\u_add1|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:10:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(7) & ((\i_DIN~combout\(9)) # (\u_add1|f_0:9:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(7) & (\i_DIN~combout\(9) & \u_add1|f_0:9:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(7),
	datac => \i_DIN~combout\(9),
	datad => \u_add1|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N0
\u_add1|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:11:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(10) & ((\i_DIN~combout\(8)) # (\u_add1|f_0:10:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(10) & (\i_DIN~combout\(8) & \u_add1|f_0:10:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(10),
	datac => \i_DIN~combout\(8),
	datad => \u_add1|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N28
\u_add1|f_0:13:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add1|f_0:13:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(12) $ (((\i_DIN~combout\(9) & ((\i_DIN~combout\(11)) # (\u_add1|f_0:11:u_1|o_COUT~0_combout\))) # (!\i_DIN~combout\(9) & (\i_DIN~combout\(11) & \u_add1|f_0:11:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(12),
	datab => \i_DIN~combout\(9),
	datac => \i_DIN~combout\(11),
	datad => \u_add1|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_add1|f_0:13:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N20
\u_add2|f_0:13:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:13:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(10) $ (\u_add2|f_0:12:u_1|o_COUT~0_combout\ $ (\u_add1|f_0:13:u_1|o_DOUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DIN~combout\(10),
	datac => \u_add2|f_0:12:u_1|o_COUT~0_combout\,
	datad => \u_add1|f_0:13:u_1|o_DOUT~0_combout\,
	combout => \u_add2|f_0:13:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N24
\u_add3|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:6:u_1|o_DOUT~combout\ = \u_add3|f_0:5:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(5) $ (\u_add2|f_0:13:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add3|f_0:5:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(5),
	datac => \u_add2|f_0:13:u_1|o_DOUT~0_combout\,
	datad => \i_DIN~combout\(9),
	combout => \u_add3|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y3_N26
\o_DOUT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~6_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:6:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datac => \u_add3|f_0:6:u_1|o_DOUT~combout\,
	combout => \o_DOUT~6_combout\);

-- Location: LCCOMB_X32_Y3_N8
\u_add2|f_0:14:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:14:u_1|o_DOUT~0_combout\ = \i_DIN~combout\(11) $ (\u_add1|f_0:14:u_1|o_DOUT~0_combout\ $ (\u_add2|f_0:13:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(11),
	datab => \u_add1|f_0:14:u_1|o_DOUT~0_combout\,
	datad => \u_add2|f_0:13:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:14:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N10
\u_add3|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:6:u_1|o_COUT~0_combout\ = (\u_add3|f_0:5:u_1|o_COUT~0_combout\ & ((\i_DIN~combout\(5)) # (\u_add2|f_0:13:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(9))))) # (!\u_add3|f_0:5:u_1|o_COUT~0_combout\ & (\i_DIN~combout\(5) & 
-- (\u_add2|f_0:13:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add3|f_0:5:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(5),
	datac => \u_add2|f_0:13:u_1|o_DOUT~0_combout\,
	datad => \i_DIN~combout\(9),
	combout => \u_add3|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N22
\u_add3|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:7:u_1|o_DOUT~combout\ = \i_DIN~combout\(6) $ (\u_add2|f_0:14:u_1|o_DOUT~0_combout\ $ (\u_add3|f_0:6:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(6),
	datab => \u_add2|f_0:14:u_1|o_DOUT~0_combout\,
	datac => \u_add3|f_0:6:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(10),
	combout => \u_add3|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X32_Y3_N24
\o_DOUT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~7_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:7:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:7:u_1|o_DOUT~combout\,
	combout => \o_DOUT~7_combout\);

-- Location: LCCOMB_X32_Y3_N14
\u_add2|f_0:15:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add2|f_0:15:u_1|o_DOUT~0_combout\ = \u_add1|f_0:15:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(12) $ (\u_add2|f_0:14:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add1|f_0:15:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(12),
	datad => \u_add2|f_0:14:u_1|o_COUT~0_combout\,
	combout => \u_add2|f_0:15:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N18
\u_add3|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:7:u_1|o_COUT~0_combout\ = (\i_DIN~combout\(6) & ((\u_add3|f_0:6:u_1|o_COUT~0_combout\) # (\u_add2|f_0:14:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(10))))) # (!\i_DIN~combout\(6) & (\u_add3|f_0:6:u_1|o_COUT~0_combout\ & 
-- (\u_add2|f_0:14:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(6),
	datab => \u_add2|f_0:14:u_1|o_DOUT~0_combout\,
	datac => \u_add3|f_0:6:u_1|o_COUT~0_combout\,
	datad => \i_DIN~combout\(10),
	combout => \u_add3|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N10
\u_add3|f_0:8:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:8:u_1|o_DOUT~combout\ = \i_DIN~combout\(11) $ (\u_add2|f_0:15:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(7) $ (\u_add3|f_0:7:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(11),
	datab => \u_add2|f_0:15:u_1|o_DOUT~0_combout\,
	datac => \i_DIN~combout\(7),
	datad => \u_add3|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:8:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X32_Y3_N12
\o_DOUT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~8_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:8:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:8:u_1|o_DOUT~combout\,
	combout => \o_DOUT~8_combout\);

-- Location: LCCOMB_X33_Y2_N0
\u_add3|f_0:9:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:9:u_1|o_DOUT~combout\ = \u_add3|f_0:8:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(12) $ (\i_DIN~combout\(8) $ (\u_add2|f_0:16:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add3|f_0:8:u_1|o_COUT~0_combout\,
	datab => \i_DIN~combout\(12),
	datac => \i_DIN~combout\(8),
	datad => \u_add2|f_0:16:u_1|o_DOUT~0_combout\,
	combout => \u_add3|f_0:9:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y2_N26
\o_DOUT~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~9_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:9:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:9:u_1|o_DOUT~combout\,
	combout => \o_DOUT~9_combout\);

-- Location: LCCOMB_X33_Y2_N12
\u_add3|f_0:10:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:10:u_1|o_DOUT~combout\ = \i_DIN~combout\(13) $ (\i_DIN~combout\(9) $ (\u_add2|f_0:17:u_1|o_DOUT~0_combout\ $ (\u_add3|f_0:9:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(13),
	datab => \i_DIN~combout\(9),
	datac => \u_add2|f_0:17:u_1|o_DOUT~0_combout\,
	datad => \u_add3|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:10:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y2_N22
\o_DOUT~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~10_combout\ = (!\w_TopOverflow~0_combout\ & \u_add3|f_0:10:u_1|o_DOUT~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \w_TopOverflow~0_combout\,
	datad => \u_add3|f_0:10:u_1|o_DOUT~combout\,
	combout => \o_DOUT~10_combout\);

-- Location: LCCOMB_X32_Y2_N6
\u_add3|f_0:11:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_add3|f_0:11:u_1|o_DOUT~combout\ = \u_add2|f_0:18:u_1|o_DOUT~0_combout\ $ (\i_DIN~combout\(14) $ (\i_DIN~combout\(10) $ (\u_add3|f_0:10:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:18:u_1|o_DOUT~0_combout\,
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(10),
	datad => \u_add3|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_add3|f_0:11:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X35_Y3_N4
\o_DOUT~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~11_combout\ = (\u_add3|f_0:11:u_1|o_DOUT~combout\ & !\w_TopOverflow~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_add3|f_0:11:u_1|o_DOUT~combout\,
	datac => \w_TopOverflow~0_combout\,
	combout => \o_DOUT~11_combout\);

-- Location: LCCOMB_X32_Y2_N0
\o_DOUT~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~12_combout\ = (!\w_TopOverflow~0_combout\ & (\u_add2|f_0:19:u_1|o_DOUT~0_combout\ $ (\u_add3|f_0:11:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_add2|f_0:19:u_1|o_DOUT~0_combout\,
	datab => \u_add3|f_0:11:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(11),
	datad => \w_TopOverflow~0_combout\,
	combout => \o_DOUT~12_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DIN[15]~I\ : cycloneii_io
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
	padio => ww_i_DIN(15),
	combout => \i_DIN~combout\(15));

-- Location: LCCOMB_X32_Y2_N2
\o_DOUT~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~13_combout\ = (!\i_DIN~combout\(15) & (\u_add3|f_0:12:u_1|o_COUT~0_combout\ $ (\i_DIN~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \u_add3|f_0:12:u_1|o_COUT~0_combout\,
	datac => \i_DIN~combout\(12),
	combout => \o_DOUT~13_combout\);

-- Location: LCCOMB_X32_Y2_N12
\o_DOUT~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~14_combout\ = (!\i_DIN~combout\(15) & (\i_DIN~combout\(13) $ (\u_add3|f_0:13:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datac => \i_DIN~combout\(13),
	datad => \u_add3|f_0:13:u_1|o_COUT~0_combout\,
	combout => \o_DOUT~14_combout\);

-- Location: LCCOMB_X32_Y2_N22
\o_DOUT~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \o_DOUT~15_combout\ = (!\i_DIN~combout\(15) & (\i_DIN~combout\(14) $ (((\i_DIN~combout\(13) & \u_add3|f_0:13:u_1|o_COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DIN~combout\(15),
	datab => \i_DIN~combout\(14),
	datac => \i_DIN~combout\(13),
	datad => \u_add3|f_0:13:u_1|o_COUT~0_combout\,
	combout => \o_DOUT~15_combout\);

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[0]~I\ : cycloneii_io
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
	datain => \o_DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[1]~I\ : cycloneii_io
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
	datain => \o_DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[2]~I\ : cycloneii_io
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
	datain => \o_DOUT~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[3]~I\ : cycloneii_io
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
	datain => \o_DOUT~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[4]~I\ : cycloneii_io
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
	datain => \o_DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[5]~I\ : cycloneii_io
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
	datain => \o_DOUT~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[6]~I\ : cycloneii_io
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
	datain => \o_DOUT~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[7]~I\ : cycloneii_io
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
	datain => \o_DOUT~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[8]~I\ : cycloneii_io
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
	datain => \o_DOUT~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[9]~I\ : cycloneii_io
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
	datain => \o_DOUT~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[10]~I\ : cycloneii_io
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
	datain => \o_DOUT~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[11]~I\ : cycloneii_io
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
	datain => \o_DOUT~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[12]~I\ : cycloneii_io
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
	datain => \o_DOUT~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[13]~I\ : cycloneii_io
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
	datain => \o_DOUT~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[14]~I\ : cycloneii_io
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
	datain => \o_DOUT~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_DOUT[15]~I\ : cycloneii_io
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
	datain => \o_DOUT~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(15));

-- Location: PIN_Y12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_COUT~I\ : cycloneii_io
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
	datain => \w_TopOverflow~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_COUT);
END structure;


