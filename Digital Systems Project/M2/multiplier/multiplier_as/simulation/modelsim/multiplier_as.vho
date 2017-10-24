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

-- DATE "06/14/2016 17:31:59"

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

ENTITY 	multiplier_as IS
    PORT (
	i_DINa : IN std_logic_vector(7 DOWNTO 0);
	i_DINb : IN std_logic_vector(7 DOWNTO 0);
	o_DOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplier_as;

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
-- i_DINa[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[3]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[4]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[5]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[6]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[7]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier_as IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_DINa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_DINb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_0|f_0:2:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:5:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:8:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_4|f_0:10:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \u_5|f_0:10:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_0|f_0:1:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_0|f_0:2:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_2|f_0:2:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_0|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:2:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_0|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_2|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_3|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_2|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:4:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_2|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_3|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_4|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_4|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_5|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_4|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_2|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_3|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:6:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_2|f_0:6:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_3|f_0:6:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_4|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_5|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_6|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_4|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:7:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:7:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_2|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_3|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_4|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_5|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_6|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_7|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_5|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:8:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_4|f_0:8:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_5|f_0:8:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_6|f_0:8:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_7|f_0:8:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_4|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_4|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_0|f_0:7:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:9:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:9:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_4|f_0:9:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_5|f_0:9:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_6|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:9:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_7|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:9:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_6|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:10:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_7|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:10:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_2|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_2|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:8:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_4|f_0:11:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:11:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \u_6|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:11:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_7|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:11:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_6|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:12:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \u_7|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:12:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_3|f_0:10:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_4|f_0:9:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_4|f_0:10:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_4|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:11:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:12:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_5|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_6|f_0:13:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:12:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:13:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_6|f_0:13:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:13:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:14:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_7|f_0:14:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL w_add7inB : std_logic_vector(14 DOWNTO 0);
SIGNAL w_add6inB : std_logic_vector(13 DOWNTO 0);
SIGNAL w_add5inB : std_logic_vector(12 DOWNTO 0);
SIGNAL w_add4inB : std_logic_vector(11 DOWNTO 0);
SIGNAL w_add3inB : std_logic_vector(10 DOWNTO 0);
SIGNAL w_add2inB : std_logic_vector(9 DOWNTO 0);
SIGNAL w_add1inB : std_logic_vector(8 DOWNTO 0);
SIGNAL w_add1inA : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_DINb~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_DINa~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_DINa <= i_DINa;
ww_i_DINb <= i_DINb;
o_DOUT <= ww_o_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X34_Y4_N20
\w_add2inB[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(2) = (\i_DINb~combout\(2) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(0),
	combout => w_add2inB(2));

-- Location: LCCOMB_X34_Y4_N6
\u_0|f_0:2:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:2:u_1|o_DOUT~0_combout\ = (\i_DINb~combout\(1) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(1),
	combout => \u_0|f_0:2:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X31_Y4_N10
\w_add3inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(4) = (\i_DINb~combout\(3) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datac => \i_DINa~combout\(1),
	combout => w_add3inB(4));

-- Location: LCCOMB_X31_Y4_N12
\w_add1inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inB(4) = (\i_DINa~combout\(3) & \i_DINb~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(3),
	datac => \i_DINb~combout\(1),
	combout => w_add1inB(4));

-- Location: LCCOMB_X32_Y4_N10
\w_add1inA[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(5) = (\i_DINb~combout\(0) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(5),
	combout => w_add1inA(5));

-- Location: LCCOMB_X31_Y4_N6
\u_2|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:4:u_1|o_COUT~0_combout\ = (w_add2inB(4) & ((\u_2|f_0:3:u_1|o_COUT~0_combout\) # (w_add1inB(4) $ (\u_0|f_0:4:u_1|o_DOUT~2_combout\)))) # (!w_add2inB(4) & (\u_2|f_0:3:u_1|o_COUT~0_combout\ & (w_add1inB(4) $ (\u_0|f_0:4:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inB(4),
	datab => w_add2inB(4),
	datac => \u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_2|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y4_N8
\u_3|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:4:u_1|o_COUT~0_combout\ = (w_add3inB(4) & ((\u_2|f_0:4:u_1|o_DOUT~combout\) # ((w_add3inB(3) & \u_2|f_0:3:u_1|o_DOUT~combout\)))) # (!w_add3inB(4) & (w_add3inB(3) & (\u_2|f_0:4:u_1|o_DOUT~combout\ & \u_2|f_0:3:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add3inB(4),
	datab => w_add3inB(3),
	datac => \u_2|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_2|f_0:3:u_1|o_DOUT~combout\,
	combout => \u_3|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y4_N22
\u_3|f_0:5:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:5:u_1|o_DOUT~0_combout\ = \u_3|f_0:4:u_1|o_COUT~0_combout\ $ (w_add2inB(5) $ (\u_2|f_0:5:u_1|o_DOUT~2_combout\ $ (w_add3inB(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:4:u_1|o_COUT~0_combout\,
	datab => w_add2inB(5),
	datac => \u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => w_add3inB(5),
	combout => \u_3|f_0:5:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X34_Y3_N10
\w_add6inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(6) = (\i_DINb~combout\(6) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(0),
	combout => w_add6inB(6));

-- Location: LCCOMB_X32_Y3_N2
\w_add5inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(6) = (\i_DINb~combout\(5) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(1),
	combout => w_add5inB(6));

-- Location: LCCOMB_X32_Y5_N0
\w_add1inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inB(7) = (\i_DINb~combout\(1) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(6),
	combout => w_add1inB(7));

-- Location: LCCOMB_X33_Y4_N2
\u_5|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:6:u_1|o_COUT~0_combout\ = (w_add5inB(6) & ((\u_4|f_0:6:u_1|o_DOUT~combout\) # ((\u_4|f_0:5:u_1|o_DOUT~combout\ & w_add5inB(5))))) # (!w_add5inB(6) & (\u_4|f_0:6:u_1|o_DOUT~combout\ & (\u_4|f_0:5:u_1|o_DOUT~combout\ & w_add5inB(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add5inB(6),
	datab => \u_4|f_0:6:u_1|o_DOUT~combout\,
	datac => \u_4|f_0:5:u_1|o_DOUT~combout\,
	datad => w_add5inB(5),
	combout => \u_5|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y5_N6
\w_add4inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(8) = (\i_DINb~combout\(4) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(4),
	combout => w_add4inB(8));

-- Location: LCCOMB_X34_Y3_N20
\u_6|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:7:u_1|o_COUT~0_combout\ = (w_add6inB(7) & ((\u_5|f_0:7:u_1|o_DOUT~combout\) # ((w_add6inB(6) & \u_5|f_0:6:u_1|o_DOUT~combout\)))) # (!w_add6inB(7) & (w_add6inB(6) & (\u_5|f_0:6:u_1|o_DOUT~combout\ & \u_5|f_0:7:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add6inB(6),
	datab => \u_5|f_0:6:u_1|o_DOUT~combout\,
	datac => w_add6inB(7),
	datad => \u_5|f_0:7:u_1|o_DOUT~combout\,
	combout => \u_6|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N6
\w_add2inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(9) = (\i_DINa~combout\(7) & \i_DINb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(7),
	datac => \i_DINb~combout\(2),
	combout => w_add2inB(9));

-- Location: LCCOMB_X33_Y5_N24
\u_5|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:8:u_1|o_COUT~0_combout\ = (\u_5|f_0:7:u_1|o_COUT~0_combout\ & ((w_add5inB(8)) # (w_add4inB(8) $ (\u_4|f_0:8:u_1|o_DOUT~2_combout\)))) # (!\u_5|f_0:7:u_1|o_COUT~0_combout\ & (w_add5inB(8) & (w_add4inB(8) $ (\u_4|f_0:8:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add4inB(8),
	datab => \u_4|f_0:8:u_1|o_DOUT~2_combout\,
	datac => \u_5|f_0:7:u_1|o_COUT~0_combout\,
	datad => w_add5inB(8),
	combout => \u_5|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N12
\w_add5inB[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(11) = (\i_DINb~combout\(5) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(6),
	combout => w_add5inB(11));

-- Location: LCCOMB_X31_Y3_N8
\w_add5inB[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(12) = (\i_DINb~combout\(5) & \i_DINa~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(7),
	combout => w_add5inB(12));

-- Location: LCCOMB_X32_Y5_N10
\u_2|f_0:8:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:8:u_1|o_DOUT~2_combout\ = \u_0|f_0:7:u_1|o_COUT~0_combout\ $ (\u_2|f_0:7:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(1) & \i_DINa~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(1),
	datab => \i_DINa~combout\(7),
	datac => \u_0|f_0:7:u_1|o_COUT~0_combout\,
	datad => \u_2|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_2|f_0:8:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X31_Y5_N6
\u_4|f_0:10:u_1|o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:10:u_1|o_DOUT~4_combout\ = \u_3|f_0:10:u_1|o_DOUT~0_combout\ $ (\u_4|f_0:9:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(3) & \i_DINa~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datab => \u_3|f_0:10:u_1|o_DOUT~0_combout\,
	datac => \i_DINa~combout\(7),
	datad => \u_4|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_4|f_0:10:u_1|o_DOUT~4_combout\);

-- Location: LCCOMB_X32_Y3_N20
\u_5|f_0:10:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:10:u_1|o_DOUT~2_combout\ = \u_4|f_0:10:u_1|o_DOUT~4_combout\ $ (\u_5|f_0:9:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(6) & \i_DINb~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|f_0:10:u_1|o_DOUT~4_combout\,
	datab => \i_DINa~combout\(6),
	datac => \i_DINb~combout\(4),
	datad => \u_5|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_5|f_0:10:u_1|o_DOUT~2_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[0]~I\ : cycloneii_io
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
	padio => ww_i_DINb(0),
	combout => \i_DINb~combout\(0));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[0]~I\ : cycloneii_io
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
	padio => ww_i_DINa(0),
	combout => \i_DINa~combout\(0));

-- Location: LCCOMB_X34_Y4_N16
\w_add1inA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(0) = (\i_DINb~combout\(0) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(0),
	combout => w_add1inA(0));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[1]~I\ : cycloneii_io
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
	padio => ww_i_DINb(1),
	combout => \i_DINb~combout\(1));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[1]~I\ : cycloneii_io
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
	padio => ww_i_DINa(1),
	combout => \i_DINa~combout\(1));

-- Location: LCCOMB_X34_Y4_N18
\u_0|f_0:1:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:1:u_1|o_DOUT~combout\ = (\i_DINb~combout\(1) & (\i_DINa~combout\(0) $ (((\i_DINb~combout\(0) & \i_DINa~combout\(1)))))) # (!\i_DINb~combout\(1) & (((\i_DINb~combout\(0) & \i_DINa~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(1),
	datab => \i_DINa~combout\(0),
	datac => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(1),
	combout => \u_0|f_0:1:u_1|o_DOUT~combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[2]~I\ : cycloneii_io
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
	padio => ww_i_DINa(2),
	combout => \i_DINa~combout\(2));

-- Location: LCCOMB_X34_Y4_N0
\u_0|f_0:2:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:2:u_1|o_DOUT~1_combout\ = (\i_DINb~combout\(0) & (\i_DINa~combout\(2) $ (((\u_0|f_0:2:u_1|o_DOUT~0_combout\ & !\i_DINa~combout\(0)))))) # (!\i_DINb~combout\(0) & (\u_0|f_0:2:u_1|o_DOUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|f_0:2:u_1|o_DOUT~0_combout\,
	datab => \i_DINb~combout\(0),
	datac => \i_DINa~combout\(2),
	datad => \i_DINa~combout\(0),
	combout => \u_0|f_0:2:u_1|o_DOUT~1_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[2]~I\ : cycloneii_io
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
	padio => ww_i_DINb(2),
	combout => \i_DINb~combout\(2));

-- Location: LCCOMB_X34_Y4_N4
\u_2|f_0:2:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:2:u_1|o_DOUT~combout\ = \u_0|f_0:2:u_1|o_DOUT~1_combout\ $ (((\i_DINb~combout\(2) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_0|f_0:2:u_1|o_DOUT~1_combout\,
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(0),
	combout => \u_2|f_0:2:u_1|o_DOUT~combout\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[3]~I\ : cycloneii_io
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
	padio => ww_i_DINb(3),
	combout => \i_DINb~combout\(3));

-- Location: LCCOMB_X34_Y4_N26
\w_add2inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(3) = (\i_DINb~combout\(2) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(1),
	combout => w_add2inB(3));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[3]~I\ : cycloneii_io
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
	padio => ww_i_DINa(3),
	combout => \i_DINa~combout\(3));

-- Location: LCCOMB_X34_Y4_N22
\w_add1inA[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(3) = (\i_DINa~combout\(3) & \i_DINb~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(3),
	datac => \i_DINb~combout\(0),
	combout => w_add1inA(3));

-- Location: LCCOMB_X34_Y4_N10
\u_0|f_0:2:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:2:u_1|o_COUT~0_combout\ = (\i_DINb~combout\(0) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(1),
	combout => \u_0|f_0:2:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X34_Y4_N12
\u_0|f_0:2:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:2:u_1|o_COUT~1_combout\ = (\i_DINb~combout\(1) & (\u_0|f_0:2:u_1|o_COUT~0_combout\ & ((\i_DINa~combout\(0)) # (\i_DINa~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(1),
	datab => \i_DINa~combout\(0),
	datac => \i_DINa~combout\(2),
	datad => \u_0|f_0:2:u_1|o_COUT~0_combout\,
	combout => \u_0|f_0:2:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X34_Y4_N8
\u_0|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:3:u_1|o_DOUT~combout\ = w_add1inA(3) $ (\u_0|f_0:2:u_1|o_COUT~1_combout\ $ (((\i_DINb~combout\(1) & \i_DINa~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(1),
	datab => w_add1inA(3),
	datac => \i_DINa~combout\(2),
	datad => \u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_0|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y4_N28
\u_2|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:3:u_1|o_DOUT~combout\ = w_add2inB(3) $ (\u_0|f_0:3:u_1|o_DOUT~combout\ $ (((w_add2inB(2) & \u_0|f_0:2:u_1|o_DOUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add2inB(2),
	datab => w_add2inB(3),
	datac => \u_0|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_0|f_0:2:u_1|o_DOUT~1_combout\,
	combout => \u_2|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X31_Y4_N20
\u_3|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:3:u_1|o_DOUT~combout\ = \u_2|f_0:3:u_1|o_DOUT~combout\ $ (((\i_DINb~combout\(3) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datab => \u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \i_DINa~combout\(0),
	combout => \u_3|f_0:3:u_1|o_DOUT~combout\);

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[4]~I\ : cycloneii_io
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
	padio => ww_i_DINb(4),
	combout => \i_DINb~combout\(4));

-- Location: LCCOMB_X31_Y4_N0
\w_add3inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(3) = (\i_DINb~combout\(3) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datad => \i_DINa~combout\(0),
	combout => w_add3inB(3));

-- Location: LCCOMB_X31_Y4_N30
\w_add2inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(4) = (\i_DINa~combout\(2) & \i_DINb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(2),
	datac => \i_DINb~combout\(2),
	combout => w_add2inB(4));

-- Location: LCCOMB_X34_Y4_N2
\u_2|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:3:u_1|o_COUT~0_combout\ = (w_add2inB(3) & ((\u_0|f_0:3:u_1|o_DOUT~combout\) # ((w_add2inB(2) & \u_0|f_0:2:u_1|o_DOUT~1_combout\)))) # (!w_add2inB(3) & (w_add2inB(2) & (\u_0|f_0:3:u_1|o_DOUT~combout\ & \u_0|f_0:2:u_1|o_DOUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add2inB(2),
	datab => w_add2inB(3),
	datac => \u_0|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_0|f_0:2:u_1|o_DOUT~1_combout\,
	combout => \u_2|f_0:3:u_1|o_COUT~0_combout\);

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[4]~I\ : cycloneii_io
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
	padio => ww_i_DINa(4),
	combout => \i_DINa~combout\(4));

-- Location: LCCOMB_X34_Y4_N24
\u_0|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:3:u_1|o_COUT~0_combout\ = (w_add1inA(3) & ((\u_0|f_0:2:u_1|o_COUT~1_combout\) # ((\i_DINb~combout\(1) & \i_DINa~combout\(2))))) # (!w_add1inA(3) & (\i_DINb~combout\(1) & (\i_DINa~combout\(2) & \u_0|f_0:2:u_1|o_COUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(1),
	datab => w_add1inA(3),
	datac => \i_DINa~combout\(2),
	datad => \u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_0|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y4_N24
\u_0|f_0:4:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:4:u_1|o_DOUT~2_combout\ = \u_0|f_0:3:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(0) & \i_DINa~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datab => \i_DINa~combout\(4),
	datad => \u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_0|f_0:4:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X31_Y4_N24
\u_2|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:4:u_1|o_DOUT~combout\ = w_add1inB(4) $ (w_add2inB(4) $ (\u_2|f_0:3:u_1|o_COUT~0_combout\ $ (\u_0|f_0:4:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inB(4),
	datab => w_add2inB(4),
	datac => \u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_2|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X31_Y4_N18
\u_3|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:4:u_1|o_DOUT~combout\ = w_add3inB(4) $ (\u_2|f_0:4:u_1|o_DOUT~combout\ $ (((w_add3inB(3) & \u_2|f_0:3:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add3inB(4),
	datab => w_add3inB(3),
	datac => \u_2|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_2|f_0:3:u_1|o_DOUT~combout\,
	combout => \u_3|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X31_Y5_N28
\u_4|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:4:u_1|o_DOUT~combout\ = \u_3|f_0:4:u_1|o_DOUT~combout\ $ (((\i_DINb~combout\(4) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(4),
	datac => \u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \i_DINa~combout\(0),
	combout => \u_4|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X32_Y3_N0
\w_add4inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(5) = (\i_DINb~combout\(4) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(1),
	combout => w_add4inB(5));

-- Location: LCCOMB_X34_Y4_N30
\w_add4inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(4) = (\i_DINb~combout\(4) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(0),
	combout => w_add4inB(4));

-- Location: LCCOMB_X33_Y4_N16
\u_4|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:5:u_1|o_DOUT~combout\ = \u_3|f_0:5:u_1|o_DOUT~0_combout\ $ (w_add4inB(5) $ (((\u_3|f_0:4:u_1|o_DOUT~combout\ & w_add4inB(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:5:u_1|o_DOUT~0_combout\,
	datab => \u_3|f_0:4:u_1|o_DOUT~combout\,
	datac => w_add4inB(5),
	datad => w_add4inB(4),
	combout => \u_4|f_0:5:u_1|o_DOUT~combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[5]~I\ : cycloneii_io
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
	padio => ww_i_DINb(5),
	combout => \i_DINb~combout\(5));

-- Location: LCCOMB_X34_Y3_N26
\u_5|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:5:u_1|o_DOUT~combout\ = \u_4|f_0:5:u_1|o_DOUT~combout\ $ (((\i_DINb~combout\(5) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_4|f_0:5:u_1|o_DOUT~combout\,
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(0),
	combout => \u_5|f_0:5:u_1|o_DOUT~combout\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[6]~I\ : cycloneii_io
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
	padio => ww_i_DINb(6),
	combout => \i_DINb~combout\(6));

-- Location: LCCOMB_X33_Y4_N18
\u_4|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:5:u_1|o_COUT~0_combout\ = (\u_3|f_0:5:u_1|o_DOUT~0_combout\ & ((w_add4inB(5)) # ((\u_3|f_0:4:u_1|o_DOUT~combout\ & w_add4inB(4))))) # (!\u_3|f_0:5:u_1|o_DOUT~0_combout\ & (\u_3|f_0:4:u_1|o_DOUT~combout\ & (w_add4inB(5) & w_add4inB(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:5:u_1|o_DOUT~0_combout\,
	datab => \u_3|f_0:4:u_1|o_DOUT~combout\,
	datac => w_add4inB(5),
	datad => w_add4inB(4),
	combout => \u_4|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y4_N14
\w_add4inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(6) = (\i_DINb~combout\(4) & \i_DINa~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(2),
	combout => w_add4inB(6));

-- Location: LCCOMB_X31_Y4_N26
\w_add2inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(5) = (\i_DINa~combout\(3) & \i_DINb~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(3),
	datac => \i_DINb~combout\(2),
	combout => w_add2inB(5));

-- Location: LCCOMB_X32_Y4_N16
\w_add1inA[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(4) = (\i_DINb~combout\(0) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(4),
	combout => w_add1inA(4));

-- Location: LCCOMB_X32_Y4_N20
\u_0|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:4:u_1|o_COUT~0_combout\ = (w_add1inA(4) & ((\u_0|f_0:3:u_1|o_COUT~0_combout\) # ((\i_DINa~combout\(3) & \i_DINb~combout\(1))))) # (!w_add1inA(4) & (\i_DINa~combout\(3) & (\i_DINb~combout\(1) & \u_0|f_0:3:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(3),
	datab => \i_DINb~combout\(1),
	datac => w_add1inA(4),
	datad => \u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_0|f_0:4:u_1|o_COUT~0_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[5]~I\ : cycloneii_io
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
	padio => ww_i_DINa(5),
	combout => \i_DINa~combout\(5));

-- Location: LCCOMB_X32_Y4_N18
\u_0|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:5:u_1|o_DOUT~2_combout\ = \u_0|f_0:4:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(0) & \i_DINa~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datac => \u_0|f_0:4:u_1|o_COUT~0_combout\,
	datad => \i_DINa~combout\(5),
	combout => \u_0|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X31_Y4_N14
\u_2|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:5:u_1|o_DOUT~2_combout\ = \u_2|f_0:4:u_1|o_COUT~0_combout\ $ (\u_0|f_0:5:u_1|o_DOUT~2_combout\ $ (((\i_DINb~combout\(1) & \i_DINa~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:4:u_1|o_COUT~0_combout\,
	datab => \u_0|f_0:5:u_1|o_DOUT~2_combout\,
	datac => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(4),
	combout => \u_2|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X31_Y4_N28
\w_add3inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(5) = (\i_DINb~combout\(3) & \i_DINa~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datac => \i_DINa~combout\(2),
	combout => w_add3inB(5));

-- Location: LCCOMB_X31_Y4_N2
\u_3|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:5:u_1|o_COUT~0_combout\ = (\u_3|f_0:4:u_1|o_COUT~0_combout\ & ((w_add3inB(5)) # (w_add2inB(5) $ (\u_2|f_0:5:u_1|o_DOUT~2_combout\)))) # (!\u_3|f_0:4:u_1|o_COUT~0_combout\ & (w_add3inB(5) & (w_add2inB(5) $ (\u_2|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:4:u_1|o_COUT~0_combout\,
	datab => w_add2inB(5),
	datac => \u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => w_add3inB(5),
	combout => \u_3|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y4_N4
\w_add1inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inB(5) = (\i_DINb~combout\(1) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(4),
	combout => w_add1inB(5));

-- Location: LCCOMB_X31_Y4_N16
\u_2|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:5:u_1|o_COUT~0_combout\ = (\u_2|f_0:4:u_1|o_COUT~0_combout\ & ((w_add2inB(5)) # (w_add1inB(5) $ (\u_0|f_0:5:u_1|o_DOUT~2_combout\)))) # (!\u_2|f_0:4:u_1|o_COUT~0_combout\ & (w_add2inB(5) & (w_add1inB(5) $ (\u_0|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:4:u_1|o_COUT~0_combout\,
	datab => w_add2inB(5),
	datac => w_add1inB(5),
	datad => \u_0|f_0:5:u_1|o_DOUT~2_combout\,
	combout => \u_2|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y4_N2
\u_0|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:5:u_1|o_COUT~0_combout\ = (w_add1inA(5) & ((\u_0|f_0:4:u_1|o_COUT~0_combout\) # ((\i_DINb~combout\(1) & \i_DINa~combout\(4))))) # (!w_add1inA(5) & (\i_DINb~combout\(1) & (\u_0|f_0:4:u_1|o_COUT~0_combout\ & \i_DINa~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inA(5),
	datab => \i_DINb~combout\(1),
	datac => \u_0|f_0:4:u_1|o_COUT~0_combout\,
	datad => \i_DINa~combout\(4),
	combout => \u_0|f_0:5:u_1|o_COUT~0_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[6]~I\ : cycloneii_io
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
	padio => ww_i_DINa(6),
	combout => \i_DINa~combout\(6));

-- Location: LCCOMB_X32_Y4_N4
\u_0|f_0:6:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:6:u_1|o_DOUT~2_combout\ = \u_0|f_0:5:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(0) & \i_DINa~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datab => \u_0|f_0:5:u_1|o_COUT~0_combout\,
	datad => \i_DINa~combout\(6),
	combout => \u_0|f_0:6:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X32_Y4_N14
\u_2|f_0:6:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:6:u_1|o_DOUT~2_combout\ = \u_2|f_0:5:u_1|o_COUT~0_combout\ $ (\u_0|f_0:6:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(5) & \i_DINb~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(5),
	datab => \u_2|f_0:5:u_1|o_COUT~0_combout\,
	datac => \u_0|f_0:6:u_1|o_DOUT~2_combout\,
	datad => \i_DINb~combout\(1),
	combout => \u_2|f_0:6:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y4_N10
\u_3|f_0:6:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:6:u_1|o_DOUT~2_combout\ = \u_3|f_0:5:u_1|o_COUT~0_combout\ $ (\u_2|f_0:6:u_1|o_DOUT~2_combout\ $ (((\i_DINb~combout\(2) & \i_DINa~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(2),
	datab => \u_3|f_0:5:u_1|o_COUT~0_combout\,
	datac => \i_DINa~combout\(4),
	datad => \u_2|f_0:6:u_1|o_DOUT~2_combout\,
	combout => \u_3|f_0:6:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y4_N0
\u_4|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:6:u_1|o_DOUT~combout\ = w_add3inB(6) $ (\u_4|f_0:5:u_1|o_COUT~0_combout\ $ (w_add4inB(6) $ (\u_3|f_0:6:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add3inB(6),
	datab => \u_4|f_0:5:u_1|o_COUT~0_combout\,
	datac => w_add4inB(6),
	datad => \u_3|f_0:6:u_1|o_DOUT~2_combout\,
	combout => \u_4|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y3_N0
\w_add5inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(5) = (\i_DINb~combout\(5) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(0),
	combout => w_add5inB(5));

-- Location: LCCOMB_X33_Y4_N26
\u_5|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:6:u_1|o_DOUT~combout\ = w_add5inB(6) $ (\u_4|f_0:6:u_1|o_DOUT~combout\ $ (((\u_4|f_0:5:u_1|o_DOUT~combout\ & w_add5inB(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add5inB(6),
	datab => \u_4|f_0:6:u_1|o_DOUT~combout\,
	datac => \u_4|f_0:5:u_1|o_DOUT~combout\,
	datad => w_add5inB(5),
	combout => \u_5|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y3_N12
\u_6|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:6:u_1|o_DOUT~combout\ = \u_5|f_0:6:u_1|o_DOUT~combout\ $ (((\i_DINb~combout\(6) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(6),
	datac => \u_5|f_0:6:u_1|o_DOUT~combout\,
	datad => \i_DINa~combout\(0),
	combout => \u_6|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y3_N14
\w_add6inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(7) = (\i_DINb~combout\(6) & \i_DINa~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(6),
	datac => \i_DINa~combout\(1),
	combout => w_add6inB(7));

-- Location: LCCOMB_X33_Y4_N24
\u_4|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:6:u_1|o_COUT~0_combout\ = (\u_4|f_0:5:u_1|o_COUT~0_combout\ & ((w_add4inB(6)) # (w_add3inB(6) $ (\u_3|f_0:6:u_1|o_DOUT~2_combout\)))) # (!\u_4|f_0:5:u_1|o_COUT~0_combout\ & (w_add4inB(6) & (w_add3inB(6) $ (\u_3|f_0:6:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add3inB(6),
	datab => \u_4|f_0:5:u_1|o_COUT~0_combout\,
	datac => w_add4inB(6),
	datad => \u_3|f_0:6:u_1|o_DOUT~2_combout\,
	combout => \u_4|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y4_N20
\w_add3inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(6) = (\i_DINb~combout\(3) & \i_DINa~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(3),
	datad => \i_DINa~combout\(3),
	combout => w_add3inB(6));

-- Location: LCCOMB_X32_Y4_N12
\w_add2inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(6) = (\i_DINb~combout\(2) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(4),
	combout => w_add2inB(6));

-- Location: LCCOMB_X33_Y4_N4
\u_3|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:6:u_1|o_COUT~0_combout\ = (\u_3|f_0:5:u_1|o_COUT~0_combout\ & ((w_add3inB(6)) # (\u_2|f_0:6:u_1|o_DOUT~2_combout\ $ (w_add2inB(6))))) # (!\u_3|f_0:5:u_1|o_COUT~0_combout\ & (w_add3inB(6) & (\u_2|f_0:6:u_1|o_DOUT~2_combout\ $ (w_add2inB(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:6:u_1|o_DOUT~2_combout\,
	datab => \u_3|f_0:5:u_1|o_COUT~0_combout\,
	datac => w_add3inB(6),
	datad => w_add2inB(6),
	combout => \u_3|f_0:6:u_1|o_COUT~0_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINa[7]~I\ : cycloneii_io
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
	padio => ww_i_DINa(7),
	combout => \i_DINa~combout\(7));

-- Location: LCCOMB_X32_Y4_N8
\w_add1inA[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(6) = (\i_DINb~combout\(0) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datad => \i_DINa~combout\(6),
	combout => w_add1inA(6));

-- Location: LCCOMB_X32_Y4_N6
\u_0|f_0:7:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:7:u_1|o_DOUT~0_combout\ = (w_add1inA(6) & ((\u_0|f_0:5:u_1|o_COUT~0_combout\) # ((\i_DINa~combout\(5) & \i_DINb~combout\(1))))) # (!w_add1inA(6) & (\i_DINa~combout\(5) & (\i_DINb~combout\(1) & \u_0|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(5),
	datab => \i_DINb~combout\(1),
	datac => w_add1inA(6),
	datad => \u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_0|f_0:7:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N2
\u_0|f_0:7:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:7:u_1|o_DOUT~1_combout\ = \u_0|f_0:7:u_1|o_DOUT~0_combout\ $ (((\i_DINb~combout\(0) & \i_DINa~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(0),
	datab => \i_DINa~combout\(7),
	datac => \u_0|f_0:7:u_1|o_DOUT~0_combout\,
	combout => \u_0|f_0:7:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X32_Y4_N30
\w_add1inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inB(6) = (\i_DINb~combout\(1) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(5),
	combout => w_add1inB(6));

-- Location: LCCOMB_X32_Y4_N0
\u_2|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:6:u_1|o_COUT~0_combout\ = (w_add2inB(6) & ((\u_2|f_0:5:u_1|o_COUT~0_combout\) # (w_add1inB(6) $ (\u_0|f_0:6:u_1|o_DOUT~2_combout\)))) # (!w_add2inB(6) & (\u_2|f_0:5:u_1|o_COUT~0_combout\ & (w_add1inB(6) $ (\u_0|f_0:6:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add2inB(6),
	datab => w_add1inB(6),
	datac => \u_0|f_0:6:u_1|o_DOUT~2_combout\,
	datad => \u_2|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_2|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N16
\u_2|f_0:7:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:7:u_1|o_DOUT~2_combout\ = \u_0|f_0:7:u_1|o_DOUT~1_combout\ $ (\u_2|f_0:6:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(6) & \i_DINb~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(6),
	datab => \u_0|f_0:7:u_1|o_DOUT~1_combout\,
	datac => \i_DINb~combout\(1),
	datad => \u_2|f_0:6:u_1|o_COUT~0_combout\,
	combout => \u_2|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y4_N28
\u_3|f_0:7:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:7:u_1|o_DOUT~2_combout\ = \u_3|f_0:6:u_1|o_COUT~0_combout\ $ (\u_2|f_0:7:u_1|o_DOUT~2_combout\ $ (((\i_DINb~combout\(2) & \i_DINa~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(2),
	datab => \u_3|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_2|f_0:7:u_1|o_DOUT~2_combout\,
	datad => \i_DINa~combout\(5),
	combout => \u_3|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y4_N22
\u_4|f_0:7:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:7:u_1|o_DOUT~2_combout\ = \u_4|f_0:6:u_1|o_COUT~0_combout\ $ (\u_3|f_0:7:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(4) & \i_DINb~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(4),
	datab => \i_DINb~combout\(3),
	datac => \u_4|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_3|f_0:7:u_1|o_DOUT~2_combout\,
	combout => \u_4|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y4_N12
\w_add4inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(7) = (\i_DINb~combout\(4) & \i_DINa~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(3),
	combout => w_add4inB(7));

-- Location: LCCOMB_X33_Y5_N0
\w_add5inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(7) = (\i_DINb~combout\(5) & \i_DINa~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(2),
	combout => w_add5inB(7));

-- Location: LCCOMB_X33_Y5_N10
\u_5|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:7:u_1|o_DOUT~combout\ = \u_5|f_0:6:u_1|o_COUT~0_combout\ $ (\u_4|f_0:7:u_1|o_DOUT~2_combout\ $ (w_add4inB(7) $ (w_add5inB(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:6:u_1|o_COUT~0_combout\,
	datab => \u_4|f_0:7:u_1|o_DOUT~2_combout\,
	datac => w_add4inB(7),
	datad => w_add5inB(7),
	combout => \u_5|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y3_N16
\u_6|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:7:u_1|o_DOUT~combout\ = w_add6inB(7) $ (\u_5|f_0:7:u_1|o_DOUT~combout\ $ (((w_add6inB(6) & \u_5|f_0:6:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add6inB(6),
	datab => \u_5|f_0:6:u_1|o_DOUT~combout\,
	datac => w_add6inB(7),
	datad => \u_5|f_0:7:u_1|o_DOUT~combout\,
	combout => \u_6|f_0:7:u_1|o_DOUT~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_DINb[7]~I\ : cycloneii_io
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
	padio => ww_i_DINb(7),
	combout => \i_DINb~combout\(7));

-- Location: LCCOMB_X34_Y3_N22
\u_7|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:7:u_1|o_DOUT~combout\ = \u_6|f_0:7:u_1|o_DOUT~combout\ $ (((\i_DINb~combout\(7) & \i_DINa~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:7:u_1|o_DOUT~combout\,
	datac => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(0),
	combout => \u_7|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y5_N8
\u_5|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:7:u_1|o_COUT~0_combout\ = (\u_5|f_0:6:u_1|o_COUT~0_combout\ & ((w_add5inB(7)) # (\u_4|f_0:7:u_1|o_DOUT~2_combout\ $ (w_add4inB(7))))) # (!\u_5|f_0:6:u_1|o_COUT~0_combout\ & (w_add5inB(7) & (\u_4|f_0:7:u_1|o_DOUT~2_combout\ $ (w_add4inB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:6:u_1|o_COUT~0_combout\,
	datab => \u_4|f_0:7:u_1|o_DOUT~2_combout\,
	datac => w_add4inB(7),
	datad => w_add5inB(7),
	combout => \u_5|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y4_N26
\w_add2inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(7) = (\i_DINb~combout\(2) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(5),
	combout => w_add2inB(7));

-- Location: LCCOMB_X33_Y4_N30
\w_add3inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(7) = (\i_DINa~combout\(4) & \i_DINb~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(4),
	datac => \i_DINb~combout\(3),
	combout => w_add3inB(7));

-- Location: LCCOMB_X33_Y4_N6
\u_3|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:7:u_1|o_COUT~0_combout\ = (\u_3|f_0:6:u_1|o_COUT~0_combout\ & ((w_add3inB(7)) # (\u_2|f_0:7:u_1|o_DOUT~2_combout\ $ (w_add2inB(7))))) # (!\u_3|f_0:6:u_1|o_COUT~0_combout\ & (w_add3inB(7) & (\u_2|f_0:7:u_1|o_DOUT~2_combout\ $ (w_add2inB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:7:u_1|o_DOUT~2_combout\,
	datab => w_add2inB(7),
	datac => \u_3|f_0:6:u_1|o_COUT~0_combout\,
	datad => w_add3inB(7),
	combout => \u_3|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N28
\u_3|f_0:8:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:8:u_1|o_DOUT~2_combout\ = \u_2|f_0:8:u_1|o_DOUT~2_combout\ $ (\u_3|f_0:7:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(6) & \i_DINb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:8:u_1|o_DOUT~2_combout\,
	datab => \i_DINa~combout\(6),
	datac => \i_DINb~combout\(2),
	datad => \u_3|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_3|f_0:8:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y5_N30
\u_4|f_0:8:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:8:u_1|o_DOUT~2_combout\ = \u_4|f_0:7:u_1|o_COUT~0_combout\ $ (\u_3|f_0:8:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(5) & \i_DINb~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|f_0:7:u_1|o_COUT~0_combout\,
	datab => \u_3|f_0:8:u_1|o_DOUT~2_combout\,
	datac => \i_DINa~combout\(5),
	datad => \i_DINb~combout\(3),
	combout => \u_4|f_0:8:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y5_N16
\u_5|f_0:8:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:8:u_1|o_DOUT~2_combout\ = \u_5|f_0:7:u_1|o_COUT~0_combout\ $ (\u_4|f_0:8:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(4) & \i_DINb~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(4),
	datab => \u_5|f_0:7:u_1|o_COUT~0_combout\,
	datac => \i_DINb~combout\(4),
	datad => \u_4|f_0:8:u_1|o_DOUT~2_combout\,
	combout => \u_5|f_0:8:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X34_Y3_N8
\w_add6inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(8) = (\i_DINb~combout\(6) & \i_DINa~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(6),
	datac => \i_DINa~combout\(2),
	combout => w_add6inB(8));

-- Location: LCCOMB_X34_Y3_N6
\w_add5inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(8) = (\i_DINa~combout\(3) & \i_DINb~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(3),
	datac => \i_DINb~combout\(5),
	combout => w_add5inB(8));

-- Location: LCCOMB_X34_Y3_N2
\u_6|f_0:8:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:8:u_1|o_DOUT~combout\ = \u_6|f_0:7:u_1|o_COUT~0_combout\ $ (\u_5|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add6inB(8) $ (w_add5inB(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:7:u_1|o_COUT~0_combout\,
	datab => \u_5|f_0:8:u_1|o_DOUT~2_combout\,
	datac => w_add6inB(8),
	datad => w_add5inB(8),
	combout => \u_6|f_0:8:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X34_Y3_N18
\w_add7inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(8) = (\i_DINa~combout\(1) & \i_DINb~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(1),
	datac => \i_DINb~combout\(7),
	combout => w_add7inB(8));

-- Location: LCCOMB_X34_Y3_N28
\w_add7inB[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(7) = (\i_DINb~combout\(7) & \i_DINa~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(0),
	combout => w_add7inB(7));

-- Location: LCCOMB_X34_Y3_N4
\u_7|f_0:8:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:8:u_1|o_DOUT~combout\ = \u_6|f_0:8:u_1|o_DOUT~combout\ $ (w_add7inB(8) $ (((\u_6|f_0:7:u_1|o_DOUT~combout\ & w_add7inB(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:8:u_1|o_DOUT~combout\,
	datab => w_add7inB(8),
	datac => \u_6|f_0:7:u_1|o_DOUT~combout\,
	datad => w_add7inB(7),
	combout => \u_7|f_0:8:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y5_N4
\w_add3inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(8) = (\i_DINb~combout\(3) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(3),
	datac => \i_DINa~combout\(5),
	combout => w_add3inB(8));

-- Location: LCCOMB_X33_Y4_N8
\u_4|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:7:u_1|o_COUT~0_combout\ = (w_add4inB(7) & ((\u_4|f_0:6:u_1|o_COUT~0_combout\) # (w_add3inB(7) $ (\u_3|f_0:7:u_1|o_DOUT~2_combout\)))) # (!w_add4inB(7) & (\u_4|f_0:6:u_1|o_COUT~0_combout\ & (w_add3inB(7) $ (\u_3|f_0:7:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add4inB(7),
	datab => w_add3inB(7),
	datac => \u_4|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_3|f_0:7:u_1|o_DOUT~2_combout\,
	combout => \u_4|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y5_N20
\u_4|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:8:u_1|o_COUT~0_combout\ = (w_add4inB(8) & ((\u_4|f_0:7:u_1|o_COUT~0_combout\) # (\u_3|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add3inB(8))))) # (!w_add4inB(8) & (\u_4|f_0:7:u_1|o_COUT~0_combout\ & (\u_3|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add3inB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add4inB(8),
	datab => \u_3|f_0:8:u_1|o_DOUT~2_combout\,
	datac => w_add3inB(8),
	datad => \u_4|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_4|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N22
\u_2|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:7:u_1|o_COUT~0_combout\ = (\u_2|f_0:6:u_1|o_COUT~0_combout\ & ((w_add2inB(7)) # (w_add1inB(7) $ (\u_0|f_0:7:u_1|o_DOUT~1_combout\)))) # (!\u_2|f_0:6:u_1|o_COUT~0_combout\ & (w_add2inB(7) & (w_add1inB(7) $ (\u_0|f_0:7:u_1|o_DOUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inB(7),
	datab => \u_2|f_0:6:u_1|o_COUT~0_combout\,
	datac => w_add2inB(7),
	datad => \u_0|f_0:7:u_1|o_DOUT~1_combout\,
	combout => \u_2|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y4_N28
\w_add1inA[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inA(7) = (\i_DINa~combout\(7) & \i_DINb~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINa~combout\(7),
	datad => \i_DINb~combout\(0),
	combout => w_add1inA(7));

-- Location: LCCOMB_X32_Y5_N8
\u_0|f_0:7:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_0|f_0:7:u_1|o_COUT~0_combout\ = (\u_0|f_0:7:u_1|o_DOUT~0_combout\ & ((w_add1inA(7)) # ((\i_DINb~combout\(1) & \i_DINa~combout\(6))))) # (!\u_0|f_0:7:u_1|o_DOUT~0_combout\ & (w_add1inA(7) & (\i_DINb~combout\(1) & \i_DINa~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_0|f_0:7:u_1|o_DOUT~0_combout\,
	datab => w_add1inA(7),
	datac => \i_DINb~combout\(1),
	datad => \i_DINa~combout\(6),
	combout => \u_0|f_0:7:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N26
\w_add2inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add2inB(8) = (\i_DINb~combout\(2) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(2),
	datad => \i_DINa~combout\(6),
	combout => w_add2inB(8));

-- Location: LCCOMB_X32_Y5_N12
\u_2|f_0:9:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:9:u_1|o_DOUT~0_combout\ = (w_add1inB(8) & ((\u_2|f_0:7:u_1|o_COUT~0_combout\ & ((!w_add2inB(8)) # (!\u_0|f_0:7:u_1|o_COUT~0_combout\))) # (!\u_2|f_0:7:u_1|o_COUT~0_combout\ & ((\u_0|f_0:7:u_1|o_COUT~0_combout\) # (w_add2inB(8)))))) # 
-- (!w_add1inB(8) & ((\u_2|f_0:7:u_1|o_COUT~0_combout\ & ((\u_0|f_0:7:u_1|o_COUT~0_combout\) # (w_add2inB(8)))) # (!\u_2|f_0:7:u_1|o_COUT~0_combout\ & (\u_0|f_0:7:u_1|o_COUT~0_combout\ & w_add2inB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inB(8),
	datab => \u_2|f_0:7:u_1|o_COUT~0_combout\,
	datac => \u_0|f_0:7:u_1|o_COUT~0_combout\,
	datad => w_add2inB(8),
	combout => \u_2|f_0:9:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N14
\u_3|f_0:9:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:9:u_1|o_DOUT~2_combout\ = \u_3|f_0:8:u_1|o_COUT~0_combout\ $ (\u_2|f_0:9:u_1|o_DOUT~0_combout\ $ (((\i_DINa~combout\(7) & \i_DINb~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:8:u_1|o_COUT~0_combout\,
	datab => \i_DINa~combout\(7),
	datac => \i_DINb~combout\(2),
	datad => \u_2|f_0:9:u_1|o_DOUT~0_combout\,
	combout => \u_3|f_0:9:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y5_N26
\u_4|f_0:9:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:9:u_1|o_DOUT~2_combout\ = \u_4|f_0:8:u_1|o_COUT~0_combout\ $ (\u_3|f_0:9:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(6) & \i_DINb~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(6),
	datab => \i_DINb~combout\(3),
	datac => \u_4|f_0:8:u_1|o_COUT~0_combout\,
	datad => \u_3|f_0:9:u_1|o_DOUT~2_combout\,
	combout => \u_4|f_0:9:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y5_N12
\u_5|f_0:9:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:9:u_1|o_DOUT~2_combout\ = \u_5|f_0:8:u_1|o_COUT~0_combout\ $ (\u_4|f_0:9:u_1|o_DOUT~2_combout\ $ (((\i_DINa~combout\(5) & \i_DINb~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:8:u_1|o_COUT~0_combout\,
	datab => \i_DINa~combout\(5),
	datac => \i_DINb~combout\(4),
	datad => \u_4|f_0:9:u_1|o_DOUT~2_combout\,
	combout => \u_5|f_0:9:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X34_Y3_N30
\u_6|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:8:u_1|o_COUT~0_combout\ = (\u_6|f_0:7:u_1|o_COUT~0_combout\ & ((w_add6inB(8)) # (\u_5|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add5inB(8))))) # (!\u_6|f_0:7:u_1|o_COUT~0_combout\ & (w_add6inB(8) & (\u_5|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add5inB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:7:u_1|o_COUT~0_combout\,
	datab => \u_5|f_0:8:u_1|o_DOUT~2_combout\,
	datac => w_add6inB(8),
	datad => w_add5inB(8),
	combout => \u_6|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N20
\u_6|f_0:9:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:9:u_1|o_DOUT~2_combout\ = \u_5|f_0:9:u_1|o_DOUT~2_combout\ $ (\u_6|f_0:8:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(4) & \i_DINb~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(4),
	datab => \u_5|f_0:9:u_1|o_DOUT~2_combout\,
	datac => \i_DINb~combout\(5),
	datad => \u_6|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:9:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y3_N26
\w_add6inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(9) = (\i_DINb~combout\(6) & \i_DINa~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(3),
	combout => w_add6inB(9));

-- Location: LCCOMB_X33_Y3_N4
\w_add7inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(9) = (\i_DINa~combout\(2) & \i_DINb~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINa~combout\(2),
	datad => \i_DINb~combout\(7),
	combout => w_add7inB(9));

-- Location: LCCOMB_X34_Y3_N24
\u_7|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:8:u_1|o_COUT~0_combout\ = (\u_6|f_0:8:u_1|o_DOUT~combout\ & ((w_add7inB(8)) # ((\u_6|f_0:7:u_1|o_DOUT~combout\ & w_add7inB(7))))) # (!\u_6|f_0:8:u_1|o_DOUT~combout\ & (w_add7inB(8) & (\u_6|f_0:7:u_1|o_DOUT~combout\ & w_add7inB(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:8:u_1|o_DOUT~combout\,
	datab => w_add7inB(8),
	datac => \u_6|f_0:7:u_1|o_DOUT~combout\,
	datad => w_add7inB(7),
	combout => \u_7|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N6
\u_7|f_0:9:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:9:u_1|o_DOUT~combout\ = \u_6|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add6inB(9) $ (w_add7inB(9) $ (\u_7|f_0:8:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:9:u_1|o_DOUT~2_combout\,
	datab => w_add6inB(9),
	datac => w_add7inB(9),
	datad => \u_7|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_7|f_0:9:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y3_N0
\w_add5inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(9) = (\i_DINb~combout\(5) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(4),
	combout => w_add5inB(9));

-- Location: LCCOMB_X33_Y3_N24
\u_6|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:9:u_1|o_COUT~0_combout\ = (w_add6inB(9) & ((\u_6|f_0:8:u_1|o_COUT~0_combout\) # (\u_5|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add5inB(9))))) # (!w_add6inB(9) & (\u_6|f_0:8:u_1|o_COUT~0_combout\ & (\u_5|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add5inB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add6inB(9),
	datab => \u_5|f_0:9:u_1|o_DOUT~2_combout\,
	datac => w_add5inB(9),
	datad => \u_6|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N14
\u_6|f_0:10:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:10:u_1|o_DOUT~2_combout\ = \u_5|f_0:10:u_1|o_DOUT~2_combout\ $ (\u_6|f_0:9:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(5) & \i_DINb~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:10:u_1|o_DOUT~2_combout\,
	datab => \i_DINa~combout\(5),
	datac => \i_DINb~combout\(5),
	datad => \u_6|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:10:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y3_N2
\u_7|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:9:u_1|o_COUT~0_combout\ = (w_add7inB(9) & ((\u_7|f_0:8:u_1|o_COUT~0_combout\) # (\u_6|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add6inB(9))))) # (!w_add7inB(9) & (\u_7|f_0:8:u_1|o_COUT~0_combout\ & (\u_6|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add6inB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:9:u_1|o_DOUT~2_combout\,
	datab => w_add6inB(9),
	datac => w_add7inB(9),
	datad => \u_7|f_0:8:u_1|o_COUT~0_combout\,
	combout => \u_7|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y4_N22
\w_add7inB[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(10) = (\i_DINb~combout\(7) & \i_DINa~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(3),
	combout => w_add7inB(10));

-- Location: LCCOMB_X33_Y3_N12
\w_add6inB[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(10) = (\i_DINb~combout\(6) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(4),
	combout => w_add6inB(10));

-- Location: LCCOMB_X33_Y3_N22
\u_7|f_0:10:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:10:u_1|o_DOUT~combout\ = \u_6|f_0:10:u_1|o_DOUT~2_combout\ $ (\u_7|f_0:9:u_1|o_COUT~0_combout\ $ (w_add7inB(10) $ (w_add6inB(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:10:u_1|o_DOUT~2_combout\,
	datab => \u_7|f_0:9:u_1|o_COUT~0_combout\,
	datac => w_add7inB(10),
	datad => w_add6inB(10),
	combout => \u_7|f_0:10:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X32_Y5_N4
\u_2|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:8:u_1|o_COUT~0_combout\ = (\u_2|f_0:7:u_1|o_COUT~0_combout\ & ((w_add2inB(8)) # (w_add1inB(8) $ (\u_0|f_0:7:u_1|o_COUT~0_combout\)))) # (!\u_2|f_0:7:u_1|o_COUT~0_combout\ & (w_add2inB(8) & (w_add1inB(8) $ (\u_0|f_0:7:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add1inB(8),
	datab => \u_2|f_0:7:u_1|o_COUT~0_combout\,
	datac => \u_0|f_0:7:u_1|o_COUT~0_combout\,
	datad => w_add2inB(8),
	combout => \u_2|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N20
\w_add1inB[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add1inB(8) = (\i_DINa~combout\(7) & \i_DINb~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(7),
	datac => \i_DINb~combout\(1),
	combout => w_add1inB(8));

-- Location: LCCOMB_X32_Y5_N30
\u_2|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_2|f_0:9:u_1|o_COUT~0_combout\ = (w_add2inB(9) & ((\u_2|f_0:8:u_1|o_COUT~0_combout\) # ((w_add1inB(8) & \u_0|f_0:7:u_1|o_COUT~0_combout\)))) # (!w_add2inB(9) & (\u_2|f_0:8:u_1|o_COUT~0_combout\ & (w_add1inB(8) & \u_0|f_0:7:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add2inB(9),
	datab => \u_2|f_0:8:u_1|o_COUT~0_combout\,
	datac => w_add1inB(8),
	datad => \u_0|f_0:7:u_1|o_COUT~0_combout\,
	combout => \u_2|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y5_N18
\w_add3inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(9) = (\i_DINb~combout\(3) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINb~combout\(3),
	datac => \i_DINa~combout\(6),
	combout => w_add3inB(9));

-- Location: LCCOMB_X32_Y5_N24
\u_3|f_0:8:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:8:u_1|o_COUT~0_combout\ = (\u_3|f_0:7:u_1|o_COUT~0_combout\ & ((w_add3inB(8)) # (\u_2|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add2inB(8))))) # (!\u_3|f_0:7:u_1|o_COUT~0_combout\ & (w_add3inB(8) & (\u_2|f_0:8:u_1|o_DOUT~2_combout\ $ (w_add2inB(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_2|f_0:8:u_1|o_DOUT~2_combout\,
	datab => \u_3|f_0:7:u_1|o_COUT~0_combout\,
	datac => w_add2inB(8),
	datad => w_add3inB(8),
	combout => \u_3|f_0:8:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y5_N18
\u_3|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:9:u_1|o_COUT~0_combout\ = (w_add3inB(9) & ((\u_3|f_0:8:u_1|o_COUT~0_combout\) # (w_add2inB(9) $ (\u_2|f_0:9:u_1|o_DOUT~0_combout\)))) # (!w_add3inB(9) & (\u_3|f_0:8:u_1|o_COUT~0_combout\ & (w_add2inB(9) $ (\u_2|f_0:9:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add2inB(9),
	datab => w_add3inB(9),
	datac => \u_3|f_0:8:u_1|o_COUT~0_combout\,
	datad => \u_2|f_0:9:u_1|o_DOUT~0_combout\,
	combout => \u_3|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y5_N22
\u_3|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:10:u_1|o_COUT~0_combout\ = (\u_2|f_0:9:u_1|o_COUT~0_combout\ & ((\u_3|f_0:9:u_1|o_COUT~0_combout\) # ((\i_DINb~combout\(3) & \i_DINa~combout\(7))))) # (!\u_2|f_0:9:u_1|o_COUT~0_combout\ & (\i_DINb~combout\(3) & (\i_DINa~combout\(7) & 
-- \u_3|f_0:9:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datab => \u_2|f_0:9:u_1|o_COUT~0_combout\,
	datac => \i_DINa~combout\(7),
	datad => \u_3|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_3|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y5_N16
\u_4|f_0:11:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:11:u_1|o_DOUT~0_combout\ = \u_4|f_0:10:u_1|o_COUT~0_combout\ $ (\u_3|f_0:10:u_1|o_COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|f_0:10:u_1|o_COUT~0_combout\,
	datad => \u_3|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_4|f_0:11:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N22
\w_add5inB[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add5inB(10) = (\i_DINa~combout\(5) & \i_DINb~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(5),
	datac => \i_DINb~combout\(5),
	combout => w_add5inB(10));

-- Location: LCCOMB_X32_Y3_N4
\w_add4inB[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(10) = (\i_DINb~combout\(4) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(4),
	datad => \i_DINa~combout\(6),
	combout => w_add4inB(10));

-- Location: LCCOMB_X33_Y5_N22
\w_add4inB[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(9) = (\i_DINa~combout\(5) & \i_DINb~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_DINa~combout\(5),
	datac => \i_DINb~combout\(4),
	combout => w_add4inB(9));

-- Location: LCCOMB_X33_Y5_N28
\u_5|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:9:u_1|o_COUT~0_combout\ = (\u_5|f_0:8:u_1|o_COUT~0_combout\ & ((w_add5inB(9)) # (\u_4|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add4inB(9))))) # (!\u_5|f_0:8:u_1|o_COUT~0_combout\ & (w_add5inB(9) & (\u_4|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add4inB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:8:u_1|o_COUT~0_combout\,
	datab => \u_4|f_0:9:u_1|o_DOUT~2_combout\,
	datac => w_add5inB(9),
	datad => w_add4inB(9),
	combout => \u_5|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N8
\u_5|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:10:u_1|o_COUT~0_combout\ = (w_add5inB(10) & ((\u_5|f_0:9:u_1|o_COUT~0_combout\) # (\u_4|f_0:10:u_1|o_DOUT~4_combout\ $ (w_add4inB(10))))) # (!w_add5inB(10) & (\u_5|f_0:9:u_1|o_COUT~0_combout\ & (\u_4|f_0:10:u_1|o_DOUT~4_combout\ $ 
-- (w_add4inB(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_4|f_0:10:u_1|o_DOUT~4_combout\,
	datab => w_add5inB(10),
	datac => w_add4inB(10),
	datad => \u_5|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_5|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N16
\u_5|f_0:11:u_1|o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:11:u_1|o_DOUT~4_combout\ = \u_4|f_0:11:u_1|o_DOUT~0_combout\ $ (\u_5|f_0:10:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(7) & \i_DINb~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(7),
	datab => \u_4|f_0:11:u_1|o_DOUT~0_combout\,
	datac => \u_5|f_0:10:u_1|o_COUT~0_combout\,
	datad => \i_DINb~combout\(4),
	combout => \u_5|f_0:11:u_1|o_DOUT~4_combout\);

-- Location: LCCOMB_X32_Y3_N6
\u_6|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:10:u_1|o_COUT~0_combout\ = (w_add6inB(10) & ((\u_6|f_0:9:u_1|o_COUT~0_combout\) # (\u_5|f_0:10:u_1|o_DOUT~2_combout\ $ (w_add5inB(10))))) # (!w_add6inB(10) & (\u_6|f_0:9:u_1|o_COUT~0_combout\ & (\u_5|f_0:10:u_1|o_DOUT~2_combout\ $ 
-- (w_add5inB(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:10:u_1|o_DOUT~2_combout\,
	datab => w_add5inB(10),
	datac => w_add6inB(10),
	datad => \u_6|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N10
\u_6|f_0:11:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:11:u_1|o_DOUT~2_combout\ = \u_5|f_0:11:u_1|o_DOUT~4_combout\ $ (\u_6|f_0:10:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(5) & \i_DINa~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(5),
	datab => \i_DINa~combout\(6),
	datac => \u_5|f_0:11:u_1|o_DOUT~4_combout\,
	datad => \u_6|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:11:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X33_Y3_N28
\w_add7inB[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(11) = (\i_DINb~combout\(7) & \i_DINa~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(4),
	combout => w_add7inB(11));

-- Location: LCCOMB_X33_Y3_N16
\u_7|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:10:u_1|o_COUT~0_combout\ = (\u_7|f_0:9:u_1|o_COUT~0_combout\ & ((w_add7inB(10)) # (\u_6|f_0:10:u_1|o_DOUT~2_combout\ $ (w_add6inB(10))))) # (!\u_7|f_0:9:u_1|o_COUT~0_combout\ & (w_add7inB(10) & (\u_6|f_0:10:u_1|o_DOUT~2_combout\ $ 
-- (w_add6inB(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:10:u_1|o_DOUT~2_combout\,
	datab => \u_7|f_0:9:u_1|o_COUT~0_combout\,
	datac => w_add7inB(10),
	datad => w_add6inB(10),
	combout => \u_7|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X33_Y3_N18
\w_add6inB[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(11) = (\i_DINb~combout\(6) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(5),
	combout => w_add6inB(11));

-- Location: LCCOMB_X33_Y3_N14
\u_7|f_0:11:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:11:u_1|o_DOUT~combout\ = \u_6|f_0:11:u_1|o_DOUT~2_combout\ $ (w_add7inB(11) $ (\u_7|f_0:10:u_1|o_COUT~0_combout\ $ (w_add6inB(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:11:u_1|o_DOUT~2_combout\,
	datab => w_add7inB(11),
	datac => \u_7|f_0:10:u_1|o_COUT~0_combout\,
	datad => w_add6inB(11),
	combout => \u_7|f_0:11:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X33_Y3_N10
\w_add7inB[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(12) = (\i_DINb~combout\(7) & \i_DINa~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(5),
	combout => w_add7inB(12));

-- Location: LCCOMB_X32_Y3_N24
\u_6|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:11:u_1|o_COUT~0_combout\ = (w_add6inB(11) & ((\u_6|f_0:10:u_1|o_COUT~0_combout\) # (w_add5inB(11) $ (\u_5|f_0:11:u_1|o_DOUT~4_combout\)))) # (!w_add6inB(11) & (\u_6|f_0:10:u_1|o_COUT~0_combout\ & (w_add5inB(11) $ 
-- (\u_5|f_0:11:u_1|o_DOUT~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add5inB(11),
	datab => w_add6inB(11),
	datac => \u_5|f_0:11:u_1|o_DOUT~4_combout\,
	datad => \u_6|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N14
\u_6|f_0:12:u_1|o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:12:u_1|o_DOUT~4_combout\ = \u_5|f_0:12:u_1|o_DOUT~0_combout\ $ (\u_6|f_0:11:u_1|o_COUT~0_combout\ $ (((\i_DINa~combout\(7) & \i_DINb~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:12:u_1|o_DOUT~0_combout\,
	datab => \i_DINa~combout\(7),
	datac => \i_DINb~combout\(5),
	datad => \u_6|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:12:u_1|o_DOUT~4_combout\);

-- Location: LCCOMB_X31_Y3_N20
\w_add6inB[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(12) = (\i_DINb~combout\(6) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(6),
	combout => w_add6inB(12));

-- Location: LCCOMB_X33_Y3_N8
\u_7|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:11:u_1|o_COUT~0_combout\ = (w_add7inB(11) & ((\u_7|f_0:10:u_1|o_COUT~0_combout\) # (\u_6|f_0:11:u_1|o_DOUT~2_combout\ $ (w_add6inB(11))))) # (!w_add7inB(11) & (\u_7|f_0:10:u_1|o_COUT~0_combout\ & (\u_6|f_0:11:u_1|o_DOUT~2_combout\ $ 
-- (w_add6inB(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:11:u_1|o_DOUT~2_combout\,
	datab => w_add7inB(11),
	datac => \u_7|f_0:10:u_1|o_COUT~0_combout\,
	datad => w_add6inB(11),
	combout => \u_7|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N6
\u_7|f_0:12:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:12:u_1|o_DOUT~0_combout\ = w_add7inB(12) $ (\u_6|f_0:12:u_1|o_DOUT~4_combout\ $ (w_add6inB(12) $ (\u_7|f_0:11:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add7inB(12),
	datab => \u_6|f_0:12:u_1|o_DOUT~4_combout\,
	datac => w_add6inB(12),
	datad => \u_7|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_7|f_0:12:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X31_Y5_N0
\w_add3inB[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add3inB(10) = (\i_DINb~combout\(3) & \i_DINa~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(3),
	datac => \i_DINa~combout\(7),
	combout => w_add3inB(10));

-- Location: LCCOMB_X31_Y5_N2
\u_3|f_0:10:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_3|f_0:10:u_1|o_DOUT~0_combout\ = \u_2|f_0:9:u_1|o_COUT~0_combout\ $ (\u_3|f_0:9:u_1|o_COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_2|f_0:9:u_1|o_COUT~0_combout\,
	datad => \u_3|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_3|f_0:10:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X33_Y5_N2
\u_4|f_0:9:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:9:u_1|o_COUT~0_combout\ = (w_add4inB(9) & ((\u_4|f_0:8:u_1|o_COUT~0_combout\) # (\u_3|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add3inB(9))))) # (!w_add4inB(9) & (\u_4|f_0:8:u_1|o_COUT~0_combout\ & (\u_3|f_0:9:u_1|o_DOUT~2_combout\ $ (w_add3inB(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_3|f_0:9:u_1|o_DOUT~2_combout\,
	datab => w_add4inB(9),
	datac => \u_4|f_0:8:u_1|o_COUT~0_combout\,
	datad => w_add3inB(9),
	combout => \u_4|f_0:9:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y5_N12
\u_4|f_0:10:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:10:u_1|o_COUT~0_combout\ = (w_add4inB(10) & ((\u_4|f_0:9:u_1|o_COUT~0_combout\) # (w_add3inB(10) $ (\u_3|f_0:10:u_1|o_DOUT~0_combout\)))) # (!w_add4inB(10) & (\u_4|f_0:9:u_1|o_COUT~0_combout\ & (w_add3inB(10) $ 
-- (\u_3|f_0:10:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add4inB(10),
	datab => w_add3inB(10),
	datac => \u_3|f_0:10:u_1|o_DOUT~0_combout\,
	datad => \u_4|f_0:9:u_1|o_COUT~0_combout\,
	combout => \u_4|f_0:10:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y5_N26
\u_4|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_4|f_0:11:u_1|o_COUT~0_combout\ = (\u_3|f_0:10:u_1|o_COUT~0_combout\ & ((\u_4|f_0:10:u_1|o_COUT~0_combout\) # ((\i_DINb~combout\(4) & \i_DINa~combout\(7))))) # (!\u_3|f_0:10:u_1|o_COUT~0_combout\ & (\i_DINb~combout\(4) & (\i_DINa~combout\(7) & 
-- \u_4|f_0:10:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINb~combout\(4),
	datab => \u_3|f_0:10:u_1|o_COUT~0_combout\,
	datac => \i_DINa~combout\(7),
	datad => \u_4|f_0:10:u_1|o_COUT~0_combout\,
	combout => \u_4|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X32_Y3_N18
\w_add4inB[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add4inB(11) = (\i_DINa~combout\(7) & \i_DINb~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(7),
	datac => \i_DINb~combout\(4),
	combout => w_add4inB(11));

-- Location: LCCOMB_X32_Y3_N26
\u_5|f_0:11:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:11:u_1|o_COUT~0_combout\ = (w_add5inB(11) & ((\u_5|f_0:10:u_1|o_COUT~0_combout\) # (\u_4|f_0:11:u_1|o_DOUT~0_combout\ $ (w_add4inB(11))))) # (!w_add5inB(11) & (\u_5|f_0:10:u_1|o_COUT~0_combout\ & (\u_4|f_0:11:u_1|o_DOUT~0_combout\ $ 
-- (w_add4inB(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add5inB(11),
	datab => \u_4|f_0:11:u_1|o_DOUT~0_combout\,
	datac => \u_5|f_0:10:u_1|o_COUT~0_combout\,
	datad => w_add4inB(11),
	combout => \u_5|f_0:11:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N26
\u_5|f_0:12:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:12:u_1|o_DOUT~0_combout\ = \u_4|f_0:11:u_1|o_COUT~0_combout\ $ (\u_5|f_0:11:u_1|o_COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_4|f_0:11:u_1|o_COUT~0_combout\,
	datac => \u_5|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_5|f_0:12:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N28
\u_6|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:12:u_1|o_COUT~0_combout\ = (w_add6inB(12) & ((\u_6|f_0:11:u_1|o_COUT~0_combout\) # (w_add5inB(12) $ (\u_5|f_0:12:u_1|o_DOUT~0_combout\)))) # (!w_add6inB(12) & (\u_6|f_0:11:u_1|o_COUT~0_combout\ & (w_add5inB(12) $ 
-- (\u_5|f_0:12:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add5inB(12),
	datab => \u_5|f_0:12:u_1|o_DOUT~0_combout\,
	datac => w_add6inB(12),
	datad => \u_6|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N30
\u_5|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_5|f_0:12:u_1|o_COUT~0_combout\ = (\u_5|f_0:11:u_1|o_COUT~0_combout\ & ((\u_4|f_0:11:u_1|o_COUT~0_combout\) # ((\i_DINb~combout\(5) & \i_DINa~combout\(7))))) # (!\u_5|f_0:11:u_1|o_COUT~0_combout\ & (\u_4|f_0:11:u_1|o_COUT~0_combout\ & 
-- (\i_DINb~combout\(5) & \i_DINa~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_5|f_0:11:u_1|o_COUT~0_combout\,
	datab => \u_4|f_0:11:u_1|o_COUT~0_combout\,
	datac => \i_DINb~combout\(5),
	datad => \i_DINa~combout\(7),
	combout => \u_5|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N16
\u_6|f_0:13:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:13:u_1|o_DOUT~0_combout\ = \u_6|f_0:12:u_1|o_COUT~0_combout\ $ (\u_5|f_0:12:u_1|o_COUT~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_6|f_0:12:u_1|o_COUT~0_combout\,
	datad => \u_5|f_0:12:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:13:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N2
\u_7|f_0:12:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:12:u_1|o_COUT~0_combout\ = (w_add7inB(12) & ((\u_7|f_0:11:u_1|o_COUT~0_combout\) # (\u_6|f_0:12:u_1|o_DOUT~4_combout\ $ (w_add6inB(12))))) # (!w_add7inB(12) & (\u_7|f_0:11:u_1|o_COUT~0_combout\ & (\u_6|f_0:12:u_1|o_DOUT~4_combout\ $ 
-- (w_add6inB(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_add7inB(12),
	datab => \u_6|f_0:12:u_1|o_DOUT~4_combout\,
	datac => w_add6inB(12),
	datad => \u_7|f_0:11:u_1|o_COUT~0_combout\,
	combout => \u_7|f_0:12:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N24
\w_add6inB[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add6inB(13) = (\i_DINb~combout\(6) & \i_DINa~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(6),
	datad => \i_DINa~combout\(7),
	combout => w_add6inB(13));

-- Location: LCCOMB_X31_Y3_N18
\w_add7inB[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- w_add7inB(13) = (\i_DINb~combout\(7) & \i_DINa~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(6),
	combout => w_add7inB(13));

-- Location: LCCOMB_X31_Y3_N4
\u_7|f_0:13:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:13:u_1|o_DOUT~combout\ = \u_6|f_0:13:u_1|o_DOUT~0_combout\ $ (\u_7|f_0:12:u_1|o_COUT~0_combout\ $ (w_add6inB(13) $ (w_add7inB(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:13:u_1|o_DOUT~0_combout\,
	datab => \u_7|f_0:12:u_1|o_COUT~0_combout\,
	datac => w_add6inB(13),
	datad => w_add7inB(13),
	combout => \u_7|f_0:13:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X31_Y3_N0
\u_6|f_0:13:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_6|f_0:13:u_1|o_COUT~0_combout\ = (\u_5|f_0:12:u_1|o_COUT~0_combout\ & ((\u_6|f_0:12:u_1|o_COUT~0_combout\) # ((\i_DINa~combout\(7) & \i_DINb~combout\(6))))) # (!\u_5|f_0:12:u_1|o_COUT~0_combout\ & (\i_DINa~combout\(7) & (\i_DINb~combout\(6) & 
-- \u_6|f_0:12:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_DINa~combout\(7),
	datab => \u_5|f_0:12:u_1|o_COUT~0_combout\,
	datac => \i_DINb~combout\(6),
	datad => \u_6|f_0:12:u_1|o_COUT~0_combout\,
	combout => \u_6|f_0:13:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N22
\u_7|f_0:13:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:13:u_1|o_COUT~0_combout\ = (\u_7|f_0:12:u_1|o_COUT~0_combout\ & ((w_add7inB(13)) # (\u_6|f_0:13:u_1|o_DOUT~0_combout\ $ (w_add6inB(13))))) # (!\u_7|f_0:12:u_1|o_COUT~0_combout\ & (w_add7inB(13) & (\u_6|f_0:13:u_1|o_DOUT~0_combout\ $ 
-- (w_add6inB(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:13:u_1|o_DOUT~0_combout\,
	datab => \u_7|f_0:12:u_1|o_COUT~0_combout\,
	datac => w_add6inB(13),
	datad => w_add7inB(13),
	combout => \u_7|f_0:13:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N10
\u_7|f_0:14:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:14:u_1|o_DOUT~0_combout\ = \u_6|f_0:13:u_1|o_COUT~0_combout\ $ (\u_7|f_0:13:u_1|o_COUT~0_combout\ $ (((\i_DINb~combout\(7) & \i_DINa~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:13:u_1|o_COUT~0_combout\,
	datab => \u_7|f_0:13:u_1|o_COUT~0_combout\,
	datac => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(7),
	combout => \u_7|f_0:14:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X31_Y3_N12
\u_7|f_0:14:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_7|f_0:14:u_1|o_COUT~0_combout\ = (\u_6|f_0:13:u_1|o_COUT~0_combout\ & ((\u_7|f_0:13:u_1|o_COUT~0_combout\) # ((\i_DINb~combout\(7) & \i_DINa~combout\(7))))) # (!\u_6|f_0:13:u_1|o_COUT~0_combout\ & (\u_7|f_0:13:u_1|o_COUT~0_combout\ & 
-- (\i_DINb~combout\(7) & \i_DINa~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_6|f_0:13:u_1|o_COUT~0_combout\,
	datab => \u_7|f_0:13:u_1|o_COUT~0_combout\,
	datac => \i_DINb~combout\(7),
	datad => \i_DINa~combout\(7),
	combout => \u_7|f_0:14:u_1|o_COUT~0_combout\);

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
	datain => w_add1inA(0),
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
	datain => \u_0|f_0:1:u_1|o_DOUT~combout\,
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
	datain => \u_2|f_0:2:u_1|o_DOUT~combout\,
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
	datain => \u_3|f_0:3:u_1|o_DOUT~combout\,
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
	datain => \u_4|f_0:4:u_1|o_DOUT~combout\,
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
	datain => \u_5|f_0:5:u_1|o_DOUT~combout\,
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
	datain => \u_6|f_0:6:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:7:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:8:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:9:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:10:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:11:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:12:u_1|o_DOUT~0_combout\,
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
	datain => \u_7|f_0:13:u_1|o_DOUT~combout\,
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
	datain => \u_7|f_0:14:u_1|o_DOUT~0_combout\,
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
	datain => \u_7|f_0:14:u_1|o_COUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(15));
END structure;


