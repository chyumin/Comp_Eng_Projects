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

-- DATE "07/13/2016 01:16:53"

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

ENTITY 	module_8bits IS
    PORT (
	i_clk : IN std_logic;
	i_clrn : IN std_logic;
	i_startn : IN std_logic;
	i_A : IN std_logic_vector(7 DOWNTO 0);
	i_B : IN std_logic_vector(7 DOWNTO 0);
	o_rdy : OUT std_logic;
	o_S : OUT std_logic_vector(7 DOWNTO 0)
	);
END module_8bits;

-- Design Ports Information
-- o_rdy	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[2]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[4]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[5]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[6]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_S[7]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_startn	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clrn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF module_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_clrn : std_logic;
SIGNAL ww_i_startn : std_logic;
SIGNAL ww_i_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_rdy : std_logic;
SIGNAL ww_o_S : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clrn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_datapath|u_contK|q[6]~19\ : std_logic;
SIGNAL \u_datapath|u_contK|q[7]~20_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[1]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[3]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[5]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[6]~feeder_combout\ : std_logic;
SIGNAL \i_clk~combout\ : std_logic;
SIGNAL \i_clk~clkctrl_outclk\ : std_logic;
SIGNAL \i_startn~combout\ : std_logic;
SIGNAL \i_clrn~combout\ : std_logic;
SIGNAL \i_clrn~clkctrl_outclk\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[7]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_i_B|o_Q[5]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[1]~8_combout\ : std_logic;
SIGNAL \u_control|next_state.s0~0_combout\ : std_logic;
SIGNAL \u_control|state.s0~regout\ : std_logic;
SIGNAL \u_datapath|w_clrnK~combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[1]~9\ : std_logic;
SIGNAL \u_datapath|u_contK|q[2]~10_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[2]~11\ : std_logic;
SIGNAL \u_datapath|u_contK|q[3]~13\ : std_logic;
SIGNAL \u_datapath|u_contK|q[4]~15\ : std_logic;
SIGNAL \u_datapath|u_contK|q[5]~17\ : std_logic;
SIGNAL \u_datapath|u_contK|q[6]~18_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[5]~16_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[3]~12_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[0]~7_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[4]~14_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[2]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[0]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~1\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~3\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~5\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~7\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~9\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~11\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~13\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~14_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~12_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~10_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~6_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~2_combout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~1_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~3_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~5_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~7_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~9_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~11_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~13_cout\ : std_logic;
SIGNAL \u_datapath|u_less_than|LessThan0~14_combout\ : std_logic;
SIGNAL \u_control|next_state.s2~0_combout\ : std_logic;
SIGNAL \u_control|state.s2~regout\ : std_logic;
SIGNAL \u_control|next_state.s1~combout\ : std_logic;
SIGNAL \u_control|state.s1~regout\ : std_logic;
SIGNAL \u_control|next_state.s3~0_combout\ : std_logic;
SIGNAL \u_control|state.s3~regout\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_control|state.idle~regout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~0_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~4_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~8_combout\ : std_logic;
SIGNAL \u_datapath|u_i_B|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_regOut|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_i_A|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_contK|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add6inB\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add5inB\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add4inB\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add3inB\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add2inB\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add1inB\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add1inA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \i_B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_i_clrn~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_startn~combout\ : std_logic;
SIGNAL \u_control|ALT_INV_state.idle~regout\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_clrn <= i_clrn;
ww_i_startn <= i_startn;
ww_i_A <= i_A;
ww_i_B <= i_B;
o_rdy <= ww_o_rdy;
o_S <= ww_o_S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_clk~combout\);

\i_clrn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_clrn~combout\);
\ALT_INV_i_clrn~clkctrl_outclk\ <= NOT \i_clrn~clkctrl_outclk\;
\ALT_INV_i_startn~combout\ <= NOT \i_startn~combout\;
\u_control|ALT_INV_state.idle~regout\ <= NOT \u_control|state.idle~regout\;

-- Location: LCFF_X45_Y19_N17
\u_datapath|u_contK|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[7]~20_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(7));

-- Location: LCCOMB_X45_Y19_N14
\u_datapath|u_contK|q[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[6]~18_combout\ = (\u_datapath|u_contK|q\(6) & (!\u_datapath|u_contK|q[5]~17\)) # (!\u_datapath|u_contK|q\(6) & ((\u_datapath|u_contK|q[5]~17\) # (GND)))
-- \u_datapath|u_contK|q[6]~19\ = CARRY((!\u_datapath|u_contK|q[5]~17\) # (!\u_datapath|u_contK|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(6),
	datad => VCC,
	cin => \u_datapath|u_contK|q[5]~17\,
	combout => \u_datapath|u_contK|q[6]~18_combout\,
	cout => \u_datapath|u_contK|q[6]~19\);

-- Location: LCCOMB_X45_Y19_N16
\u_datapath|u_contK|q[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[7]~20_combout\ = \u_datapath|u_contK|q[6]~19\ $ (!\u_datapath|u_contK|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_datapath|u_contK|q\(7),
	cin => \u_datapath|u_contK|q[6]~19\,
	combout => \u_datapath|u_contK|q[7]~20_combout\);

-- Location: LCCOMB_X44_Y20_N20
\u_datapath|u_KmultB|w_add1inA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(0) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(0));

-- Location: LCFF_X47_Y20_N27
\u_datapath|u_i_A|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[1]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(1));

-- Location: LCCOMB_X44_Y19_N24
\u_datapath|u_KmultB|w_add2inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(3) = (\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|w_add2inB\(3));

-- Location: LCFF_X47_Y20_N31
\u_datapath|u_i_A|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[3]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(3));

-- Location: LCCOMB_X44_Y19_N12
\u_datapath|u_KmultB|w_add1inA[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(4) = (\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(4));

-- Location: LCCOMB_X44_Y19_N16
\u_datapath|u_KmultB|w_add1inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inB\(4) = (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(3),
	combout => \u_datapath|u_KmultB|w_add1inB\(4));

-- Location: LCFF_X47_Y20_N13
\u_datapath|u_i_A|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_A~combout\(4),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(4));

-- Location: LCCOMB_X46_Y19_N22
\u_datapath|u_KmultB|w_add4inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add4inB\(5) = (\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_KmultB|w_add4inB\(5));

-- Location: LCCOMB_X46_Y19_N24
\u_datapath|u_KmultB|w_add3inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(5) = (\u_datapath|u_i_B|o_Q\(3) & \u_datapath|u_contK|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(3),
	datac => \u_datapath|u_contK|q\(2),
	combout => \u_datapath|u_KmultB|w_add3inB\(5));

-- Location: LCFF_X47_Y20_N5
\u_datapath|u_i_A|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[5]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(5));

-- Location: LCFF_X46_Y19_N23
\u_datapath|u_i_B|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(6),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(6));

-- Location: LCCOMB_X46_Y19_N2
\u_datapath|u_KmultB|w_add6inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add6inB\(6) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(6),
	combout => \u_datapath|u_KmultB|w_add6inB\(6));

-- Location: LCFF_X47_Y20_N7
\u_datapath|u_i_A|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[6]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(6));

-- Location: LCCOMB_X46_Y19_N18
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(6) $ (((\u_datapath|u_contK|q\(7) & \u_datapath|u_i_B|o_Q\(0)))))) # (!\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(7) & 
-- (\u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(7),
	datac => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_contK|q\(6),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X46_Y19_N12
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ = (\u_datapath|u_contK|q\(5) & (\u_datapath|u_i_B|o_Q\(2) $ (((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(3)))))) # (!\u_datapath|u_contK|q\(5) & (\u_datapath|u_contK|q\(4) & 
-- (\u_datapath|u_i_B|o_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_i_B|o_Q\(3),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X46_Y19_N14
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ = (\u_datapath|u_contK|q\(3) & (\u_datapath|u_i_B|o_Q\(4) $ (((\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(5)))))) # (!\u_datapath|u_contK|q\(3) & (((\u_datapath|u_contK|q\(2) & 
-- \u_datapath|u_i_B|o_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(3),
	datab => \u_datapath|u_i_B|o_Q\(4),
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X46_Y19_N20
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ = (\u_datapath|u_contK|q\(0) & (\u_datapath|u_i_B|o_Q\(7) $ (((\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(6)))))) # (!\u_datapath|u_contK|q\(0) & (\u_datapath|u_contK|q\(1) & 
-- ((\u_datapath|u_i_B|o_Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_contK|q\(1),
	datac => \u_datapath|u_i_B|o_Q\(7),
	datad => \u_datapath|u_i_B|o_Q\(6),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\);

-- Location: LCCOMB_X46_Y19_N26
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ = \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ $ (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ $ 
-- (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\,
	datab => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\);

-- Location: LCCOMB_X44_Y20_N16
\u_datapath|u_KmultB|w_add1inA[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(6) = (\u_datapath|u_contK|q\(6) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(6),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(6));

-- Location: LCCOMB_X44_Y20_N6
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ = \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_contK|q\(5),
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N12
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ = (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ & ((\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(2))))) # 
-- (!\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_contK|q\(4) & (\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_i_B|o_Q\(2),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X44_Y20_N30
\u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ $ (((\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(2),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\);

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[1]~I\ : cycloneii_io
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
	padio => ww_i_A(1),
	combout => \i_A~combout\(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[3]~I\ : cycloneii_io
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
	padio => ww_i_A(3),
	combout => \i_A~combout\(3));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[4]~I\ : cycloneii_io
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
	padio => ww_i_A(4),
	combout => \i_A~combout\(4));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[5]~I\ : cycloneii_io
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
	padio => ww_i_A(5),
	combout => \i_A~combout\(5));

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[6]~I\ : cycloneii_io
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
	padio => ww_i_B(6),
	combout => \i_B~combout\(6));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[6]~I\ : cycloneii_io
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
	padio => ww_i_A(6),
	combout => \i_A~combout\(6));

-- Location: LCCOMB_X47_Y20_N26
\u_datapath|u_i_A|o_Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[1]~feeder_combout\ = \i_A~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(1),
	combout => \u_datapath|u_i_A|o_Q[1]~feeder_combout\);

-- Location: LCCOMB_X47_Y20_N30
\u_datapath|u_i_A|o_Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[3]~feeder_combout\ = \i_A~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(3),
	combout => \u_datapath|u_i_A|o_Q[3]~feeder_combout\);

-- Location: LCCOMB_X47_Y20_N4
\u_datapath|u_i_A|o_Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[5]~feeder_combout\ = \i_A~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(5),
	combout => \u_datapath|u_i_A|o_Q[5]~feeder_combout\);

-- Location: LCCOMB_X47_Y20_N6
\u_datapath|u_i_A|o_Q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[6]~feeder_combout\ = \i_A~combout\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(6),
	combout => \u_datapath|u_i_A|o_Q[6]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_clk~I\ : cycloneii_io
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
	padio => ww_i_clk,
	combout => \i_clk~combout\);

-- Location: CLKCTRL_G3
\i_clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_startn~I\ : cycloneii_io
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
	padio => ww_i_startn,
	combout => \i_startn~combout\);

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[7]~I\ : cycloneii_io
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
	padio => ww_i_B(7),
	combout => \i_B~combout\(7));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_clrn~I\ : cycloneii_io
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
	padio => ww_i_clrn,
	combout => \i_clrn~combout\);

-- Location: CLKCTRL_G1
\i_clrn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clrn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clrn~clkctrl_outclk\);

-- Location: LCFF_X46_Y19_N21
\u_datapath|u_i_B|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(7),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(7));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[7]~I\ : cycloneii_io
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
	padio => ww_i_A(7),
	combout => \i_A~combout\(7));

-- Location: LCCOMB_X47_Y20_N28
\u_datapath|u_i_A|o_Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[7]~feeder_combout\ = \i_A~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(7),
	combout => \u_datapath|u_i_A|o_Q[7]~feeder_combout\);

-- Location: LCFF_X47_Y20_N29
\u_datapath|u_i_A|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[7]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(7));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[5]~I\ : cycloneii_io
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
	padio => ww_i_B(5),
	combout => \i_B~combout\(5));

-- Location: LCCOMB_X47_Y20_N18
\u_datapath|u_i_B|o_Q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_B|o_Q[5]~feeder_combout\ = \i_B~combout\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_B~combout\(5),
	combout => \u_datapath|u_i_B|o_Q[5]~feeder_combout\);

-- Location: LCFF_X47_Y20_N19
\u_datapath|u_i_B|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_B|o_Q[5]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(5));

-- Location: LCCOMB_X46_Y19_N30
\u_datapath|u_KmultB|w_add5inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add5inB\(6) = (\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|w_add5inB\(6));

-- Location: LCCOMB_X45_Y19_N4
\u_datapath|u_contK|q[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[1]~8_combout\ = (\u_datapath|u_contK|q\(0) & (\u_datapath|u_contK|q\(1) $ (VCC))) # (!\u_datapath|u_contK|q\(0) & (\u_datapath|u_contK|q\(1) & VCC))
-- \u_datapath|u_contK|q[1]~9\ = CARRY((\u_datapath|u_contK|q\(0) & \u_datapath|u_contK|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_contK|q\(1),
	datad => VCC,
	combout => \u_datapath|u_contK|q[1]~8_combout\,
	cout => \u_datapath|u_contK|q[1]~9\);

-- Location: LCCOMB_X46_Y19_N8
\u_control|next_state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s0~0_combout\ = (!\i_startn~combout\ & !\u_control|state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_startn~combout\,
	datad => \u_control|state.idle~regout\,
	combout => \u_control|next_state.s0~0_combout\);

-- Location: LCFF_X45_Y19_N1
\u_control|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_control|next_state.s0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s0~regout\);

-- Location: LCCOMB_X45_Y19_N26
\u_datapath|w_clrnK\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|w_clrnK~combout\ = (\u_control|state.s0~regout\) # (!\i_clrn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_clrn~combout\,
	datad => \u_control|state.s0~regout\,
	combout => \u_datapath|w_clrnK~combout\);

-- Location: LCFF_X45_Y19_N5
\u_datapath|u_contK|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[1]~8_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(1));

-- Location: LCCOMB_X45_Y19_N6
\u_datapath|u_contK|q[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[2]~10_combout\ = (\u_datapath|u_contK|q\(2) & (!\u_datapath|u_contK|q[1]~9\)) # (!\u_datapath|u_contK|q\(2) & ((\u_datapath|u_contK|q[1]~9\) # (GND)))
-- \u_datapath|u_contK|q[2]~11\ = CARRY((!\u_datapath|u_contK|q[1]~9\) # (!\u_datapath|u_contK|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(2),
	datad => VCC,
	cin => \u_datapath|u_contK|q[1]~9\,
	combout => \u_datapath|u_contK|q[2]~10_combout\,
	cout => \u_datapath|u_contK|q[2]~11\);

-- Location: LCFF_X45_Y19_N7
\u_datapath|u_contK|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[2]~10_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(2));

-- Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[4]~I\ : cycloneii_io
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
	padio => ww_i_B(4),
	combout => \i_B~combout\(4));

-- Location: LCFF_X46_Y19_N31
\u_datapath|u_i_B|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(4),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(4));

-- Location: LCCOMB_X46_Y19_N4
\u_datapath|u_KmultB|w_add4inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add4inB\(6) = (\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_KmultB|w_add4inB\(6));

-- Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[2]~I\ : cycloneii_io
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
	padio => ww_i_B(2),
	combout => \i_B~combout\(2));

-- Location: LCFF_X44_Y19_N17
\u_datapath|u_i_B|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(2),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[1]~I\ : cycloneii_io
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
	padio => ww_i_B(1),
	combout => \i_B~combout\(1));

-- Location: LCFF_X44_Y19_N31
\u_datapath|u_i_B|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(1),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(1));

-- Location: LCCOMB_X45_Y19_N8
\u_datapath|u_contK|q[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[3]~12_combout\ = (\u_datapath|u_contK|q\(3) & (\u_datapath|u_contK|q[2]~11\ $ (GND))) # (!\u_datapath|u_contK|q\(3) & (!\u_datapath|u_contK|q[2]~11\ & VCC))
-- \u_datapath|u_contK|q[3]~13\ = CARRY((\u_datapath|u_contK|q\(3) & !\u_datapath|u_contK|q[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(3),
	datad => VCC,
	cin => \u_datapath|u_contK|q[2]~11\,
	combout => \u_datapath|u_contK|q[3]~12_combout\,
	cout => \u_datapath|u_contK|q[3]~13\);

-- Location: LCCOMB_X45_Y19_N10
\u_datapath|u_contK|q[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[4]~14_combout\ = (\u_datapath|u_contK|q\(4) & (!\u_datapath|u_contK|q[3]~13\)) # (!\u_datapath|u_contK|q\(4) & ((\u_datapath|u_contK|q[3]~13\) # (GND)))
-- \u_datapath|u_contK|q[4]~15\ = CARRY((!\u_datapath|u_contK|q[3]~13\) # (!\u_datapath|u_contK|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datad => VCC,
	cin => \u_datapath|u_contK|q[3]~13\,
	combout => \u_datapath|u_contK|q[4]~14_combout\,
	cout => \u_datapath|u_contK|q[4]~15\);

-- Location: LCCOMB_X45_Y19_N12
\u_datapath|u_contK|q[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[5]~16_combout\ = (\u_datapath|u_contK|q\(5) & (\u_datapath|u_contK|q[4]~15\ $ (GND))) # (!\u_datapath|u_contK|q\(5) & (!\u_datapath|u_contK|q[4]~15\ & VCC))
-- \u_datapath|u_contK|q[5]~17\ = CARRY((\u_datapath|u_contK|q\(5) & !\u_datapath|u_contK|q[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datad => VCC,
	cin => \u_datapath|u_contK|q[4]~15\,
	combout => \u_datapath|u_contK|q[5]~16_combout\,
	cout => \u_datapath|u_contK|q[5]~17\);

-- Location: LCFF_X45_Y19_N15
\u_datapath|u_contK|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[6]~18_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(6));

-- Location: LCFF_X45_Y19_N13
\u_datapath|u_contK|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[5]~16_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(5));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[0]~I\ : cycloneii_io
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
	padio => ww_i_B(0),
	combout => \i_B~combout\(0));

-- Location: LCFF_X44_Y19_N9
\u_datapath|u_i_B|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(0),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(0));

-- Location: LCCOMB_X44_Y20_N14
\u_datapath|u_KmultB|w_add1inA[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(5) = (\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(5),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(5));

-- Location: LCFF_X45_Y19_N9
\u_datapath|u_contK|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[3]~12_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(3));

-- Location: LCCOMB_X45_Y19_N24
\u_datapath|u_KmultB|w_add1inA[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(3) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(3));

-- Location: LCCOMB_X46_Y19_N10
\u_datapath|u_contK|q[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[0]~7_combout\ = \u_datapath|u_contK|q\(0) $ (\u_control|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_control|state.s2~regout\,
	combout => \u_datapath|u_contK|q[0]~7_combout\);

-- Location: LCFF_X45_Y19_N25
\u_datapath|u_contK|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_contK|q[0]~7_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(0));

-- Location: LCCOMB_X45_Y19_N18
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ = (\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y19_N30
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ = (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ & ((\u_datapath|u_contK|q\(2)) # (\u_datapath|u_contK|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(2),
	datab => \u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X45_Y19_N28
\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(3) & ((\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\) # ((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(2))))) # (!\u_datapath|u_KmultB|w_add1inA\(3) & 
-- (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(2) & \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(2),
	datac => \u_datapath|u_KmultB|w_add1inA\(3),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y19_N2
\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(4) & ((\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_KmultB|w_add1inA\(4) & 
-- (\u_datapath|u_contK|q\(3) & (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inA\(4),
	datab => \u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N18
\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(5) & ((\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_KmultB|w_add1inA\(5) & 
-- (\u_datapath|u_contK|q\(4) & (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|w_add1inA\(5),
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N8
\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_contK|q\(6),
	datad => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCFF_X45_Y19_N11
\u_datapath|u_contK|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contK|q[4]~14_combout\,
	aclr => \u_datapath|w_clrnK~combout\,
	ena => \u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contK|q\(4));

-- Location: LCCOMB_X44_Y20_N28
\u_datapath|u_KmultB|w_add1inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inB\(5) = (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(4),
	combout => \u_datapath|u_KmultB|w_add1inB\(5));

-- Location: LCCOMB_X45_Y19_N22
\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datac => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X44_Y19_N22
\u_datapath|u_KmultB|w_add2inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(4) = (\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(4));

-- Location: LCCOMB_X44_Y19_N26
\u_datapath|u_KmultB|w_add2inB[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(2) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(2));

-- Location: LCCOMB_X44_Y19_N20
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X44_Y19_N14
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ = (\u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_contK|q\(2) $ (((!\u_datapath|u_contK|q\(0) & \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\))))) # (!\u_datapath|u_i_B|o_Q\(0) & 
-- (((\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datab => \u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_contK|q\(2),
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X44_Y19_N10
\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add1inA\(3) $ (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(2),
	datac => \u_datapath|u_KmultB|w_add1inA\(3),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X44_Y19_N4
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add2inB\(3) & ((\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\) # ((\u_datapath|u_KmultB|w_add2inB\(2) & \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add2inB\(3) & (\u_datapath|u_KmultB|w_add2inB\(2) & (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ & \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(3),
	datab => \u_datapath|u_KmultB|w_add2inB\(2),
	datac => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y19_N20
\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X44_Y19_N0
\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add2inB\(4) & ((\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add2inB\(4) & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inB\(4),
	datab => \u_datapath|u_KmultB|w_add2inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N26
\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add2inB\(5) & ((\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add1inB\(5) $ (\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add2inB\(5) & (\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add1inB\(5) $ (\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(5),
	datab => \u_datapath|u_KmultB|w_add1inB\(5),
	datac => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N0
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N24
\u_datapath|u_KmultB|w_add2inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(5) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(5));

-- Location: LCCOMB_X45_Y20_N14
\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ $ (\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X44_Y19_N30
\u_datapath|u_KmultB|w_add3inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(4) = (\u_datapath|u_i_B|o_Q\(3) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(3),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|w_add3inB\(4));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_B[3]~I\ : cycloneii_io
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
	padio => ww_i_B(3),
	combout => \i_B~combout\(3));

-- Location: LCFF_X44_Y19_N13
\u_datapath|u_i_B|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_B~combout\(3),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_B|o_Q\(3));

-- Location: LCCOMB_X44_Y19_N8
\u_datapath|u_KmultB|w_add3inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(3) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_KmultB|w_add3inB\(3));

-- Location: LCCOMB_X44_Y19_N28
\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|w_add2inB\(4) $ (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inB\(4),
	datab => \u_datapath|u_KmultB|w_add2inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X44_Y19_N2
\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add3inB\(4) & ((\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\) # ((\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|w_add3inB\(3))))) # 
-- (!\u_datapath|u_KmultB|w_add3inB\(4) & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ & (\u_datapath|u_KmultB|w_add3inB\(3) & \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_KmultB|w_add3inB\(4),
	datac => \u_datapath|u_KmultB|w_add3inB\(3),
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N22
\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add3inB\(5) & ((\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add3inB\(5) & (\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(5),
	datab => \u_datapath|u_KmultB|w_add2inB\(5),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N20
\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_i_B|o_Q\(2),
	datac => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X46_Y19_N16
\u_datapath|u_KmultB|w_add4inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add4inB\(4) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_KmultB|w_add4inB\(4));

-- Location: LCCOMB_X44_Y19_N18
\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add3inB\(4) $ (\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ $ (((\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|w_add3inB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_KmultB|w_add3inB\(4),
	datac => \u_datapath|u_KmultB|w_add3inB\(3),
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y20_N0
\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|w_add3inB\(5) $ (\u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(5),
	datab => \u_datapath|u_KmultB|w_add2inB\(5),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N28
\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add4inB\(5) & ((\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\) # ((\u_datapath|u_KmultB|w_add4inB\(4) & \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add4inB\(5) & (\u_datapath|u_KmultB|w_add4inB\(4) & (\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add4inB\(5),
	datab => \u_datapath|u_KmultB|w_add4inB\(4),
	datac => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N30
\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|w_add4inB\(6) $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(6),
	datab => \u_datapath|u_KmultB|w_add4inB\(6),
	datac => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y20_N6
\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add4inB\(5) $ (\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_KmultB|w_add4inB\(4) & \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add4inB\(5),
	datab => \u_datapath|u_KmultB|w_add4inB\(4),
	datac => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y20_N2
\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ = (\u_datapath|u_i_B|o_Q\(5) & (\u_datapath|u_contK|q\(0) & \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(5),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\);

-- Location: LCCOMB_X45_Y20_N18
\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add6inB\(6) & (\u_datapath|u_KmultB|w_add5inB\(6) $ (\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ $ (\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add6inB\(6),
	datab => \u_datapath|u_KmultB|w_add5inB\(6),
	datac => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N2
\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(6) & ((\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_KmultB|w_add1inA\(6) & 
-- (\u_datapath|u_contK|q\(5) & (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inA\(6),
	datab => \u_datapath|u_contK|q\(5),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N26
\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add4inB\(6) & ((\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add4inB\(6) & (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(6),
	datab => \u_datapath|u_KmultB|w_add4inB\(6),
	datac => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N10
\u_datapath|u_KmultB|w_add3inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(6) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_KmultB|w_add3inB\(6));

-- Location: LCCOMB_X44_Y20_N4
\u_datapath|u_KmultB|w_add2inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(6) = (\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(6));

-- Location: LCCOMB_X45_Y20_N4
\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add3inB\(6) & ((\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|w_add2inB\(6))))) # 
-- (!\u_datapath|u_KmultB|w_add3inB\(6) & (\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|w_add2inB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datab => \u_datapath|u_KmultB|w_add3inB\(6),
	datac => \u_datapath|u_KmultB|w_add2inB\(6),
	datad => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y20_N22
\u_datapath|u_KmultB|w_add5inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add5inB\(5) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|w_add5inB\(5));

-- Location: LCCOMB_X45_Y20_N12
\u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add5inB\(6) & ((\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\) # ((\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|w_add5inB\(5))))) # 
-- (!\u_datapath|u_KmultB|w_add5inB\(6) & (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ & (\u_datapath|u_KmultB|w_add5inB\(5) & \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_KmultB|w_add5inB\(5),
	datac => \u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y20_N10
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ = \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ $ (\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\,
	datab => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\);

-- Location: LCCOMB_X45_Y20_N8
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ $ (\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\,
	datab => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y20_N16
\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add6inB\(6) $ (\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ $ (\u_datapath|u_KmultB|w_add5inB\(6) $ (\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add6inB\(6),
	datab => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\,
	datac => \u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y20_N24
\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ $ (((\u_datapath|u_i_B|o_Q\(5) & \u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(5),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y19_N0
\u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ $ (((\u_datapath|u_i_B|o_Q\(4) & \u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(4),
	datab => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X44_Y19_N6
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add2inB\(3) $ (\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ $ (((\u_datapath|u_KmultB|w_add2inB\(2) & \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(3),
	datab => \u_datapath|u_KmultB|w_add2inB\(2),
	datac => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X46_Y19_N6
\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ $ (((\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_i_B|o_Q\(3),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\);

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[2]~I\ : cycloneii_io
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
	padio => ww_i_A(2),
	combout => \i_A~combout\(2));

-- Location: LCCOMB_X47_Y20_N24
\u_datapath|u_i_A|o_Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[2]~feeder_combout\ = \i_A~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(2),
	combout => \u_datapath|u_i_A|o_Q[2]~feeder_combout\);

-- Location: LCFF_X47_Y20_N25
\u_datapath|u_i_A|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[2]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(2));

-- Location: LCCOMB_X46_Y19_N0
\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ = (\u_datapath|u_contK|q\(0) & (\u_datapath|u_i_B|o_Q\(1) $ (((\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(0)))))) # (!\u_datapath|u_contK|q\(0) & (\u_datapath|u_contK|q\(1) & 
-- (\u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_contK|q\(1),
	datac => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_i_B|o_Q\(1),
	combout => \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_A[0]~I\ : cycloneii_io
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
	padio => ww_i_A(0),
	combout => \i_A~combout\(0));

-- Location: LCCOMB_X47_Y20_N0
\u_datapath|u_i_A|o_Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[0]~feeder_combout\ = \i_A~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A~combout\(0),
	combout => \u_datapath|u_i_A|o_Q[0]~feeder_combout\);

-- Location: LCFF_X47_Y20_N1
\u_datapath|u_i_A|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_i_A|o_Q[0]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_i_A|o_Q\(0));

-- Location: LCCOMB_X46_Y20_N16
\u_datapath|u_AsubMultRes|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(0) & (\u_datapath|u_i_A|o_Q\(0) $ (VCC))) # (!\u_datapath|u_KmultB|w_add1inA\(0) & ((\u_datapath|u_i_A|o_Q\(0)) # (GND)))
-- \u_datapath|u_AsubMultRes|Add0~1\ = CARRY((\u_datapath|u_i_A|o_Q\(0)) # (!\u_datapath|u_KmultB|w_add1inA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inA\(0),
	datab => \u_datapath|u_i_A|o_Q\(0),
	datad => VCC,
	combout => \u_datapath|u_AsubMultRes|Add0~0_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~1\);

-- Location: LCCOMB_X46_Y20_N18
\u_datapath|u_AsubMultRes|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~2_combout\ = (\u_datapath|u_i_A|o_Q\(1) & ((\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & (!\u_datapath|u_AsubMultRes|Add0~1\)) # (!\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & 
-- (\u_datapath|u_AsubMultRes|Add0~1\ & VCC)))) # (!\u_datapath|u_i_A|o_Q\(1) & ((\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & ((\u_datapath|u_AsubMultRes|Add0~1\) # (GND))) # (!\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_AsubMultRes|Add0~1\))))
-- \u_datapath|u_AsubMultRes|Add0~3\ = CARRY((\u_datapath|u_i_A|o_Q\(1) & (\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & !\u_datapath|u_AsubMultRes|Add0~1\)) # (!\u_datapath|u_i_A|o_Q\(1) & ((\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\) # 
-- (!\u_datapath|u_AsubMultRes|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_A|o_Q\(1),
	datab => \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~1\,
	combout => \u_datapath|u_AsubMultRes|Add0~2_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~3\);

-- Location: LCCOMB_X46_Y20_N20
\u_datapath|u_AsubMultRes|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~4_combout\ = ((\u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ $ (\u_datapath|u_i_A|o_Q\(2) $ (\u_datapath|u_AsubMultRes|Add0~3\)))) # (GND)
-- \u_datapath|u_AsubMultRes|Add0~5\ = CARRY((\u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ & (\u_datapath|u_i_A|o_Q\(2) & !\u_datapath|u_AsubMultRes|Add0~3\)) # (!\u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ & ((\u_datapath|u_i_A|o_Q\(2)) # 
-- (!\u_datapath|u_AsubMultRes|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_i_A|o_Q\(2),
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~3\,
	combout => \u_datapath|u_AsubMultRes|Add0~4_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~5\);

-- Location: LCCOMB_X46_Y20_N22
\u_datapath|u_AsubMultRes|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~6_combout\ = (\u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & (!\u_datapath|u_AsubMultRes|Add0~5\)) # (!\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & 
-- (\u_datapath|u_AsubMultRes|Add0~5\ & VCC)))) # (!\u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & ((\u_datapath|u_AsubMultRes|Add0~5\) # (GND))) # (!\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_AsubMultRes|Add0~5\))))
-- \u_datapath|u_AsubMultRes|Add0~7\ = CARRY((\u_datapath|u_i_A|o_Q\(3) & (\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & !\u_datapath|u_AsubMultRes|Add0~5\)) # (!\u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\) # 
-- (!\u_datapath|u_AsubMultRes|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_A|o_Q\(3),
	datab => \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~5\,
	combout => \u_datapath|u_AsubMultRes|Add0~6_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~7\);

-- Location: LCCOMB_X46_Y20_N24
\u_datapath|u_AsubMultRes|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~8_combout\ = ((\u_datapath|u_i_A|o_Q\(4) $ (\u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ $ (\u_datapath|u_AsubMultRes|Add0~7\)))) # (GND)
-- \u_datapath|u_AsubMultRes|Add0~9\ = CARRY((\u_datapath|u_i_A|o_Q\(4) & ((!\u_datapath|u_AsubMultRes|Add0~7\) # (!\u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\))) # (!\u_datapath|u_i_A|o_Q\(4) & (!\u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ & 
-- !\u_datapath|u_AsubMultRes|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_A|o_Q\(4),
	datab => \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~7\,
	combout => \u_datapath|u_AsubMultRes|Add0~8_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~9\);

-- Location: LCCOMB_X46_Y20_N26
\u_datapath|u_AsubMultRes|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~10_combout\ = (\u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & (!\u_datapath|u_AsubMultRes|Add0~9\)) # (!\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & 
-- (\u_datapath|u_AsubMultRes|Add0~9\ & VCC)))) # (!\u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & ((\u_datapath|u_AsubMultRes|Add0~9\) # (GND))) # (!\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_AsubMultRes|Add0~9\))))
-- \u_datapath|u_AsubMultRes|Add0~11\ = CARRY((\u_datapath|u_i_A|o_Q\(5) & (\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & !\u_datapath|u_AsubMultRes|Add0~9\)) # (!\u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\) # 
-- (!\u_datapath|u_AsubMultRes|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_A|o_Q\(5),
	datab => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~9\,
	combout => \u_datapath|u_AsubMultRes|Add0~10_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~11\);

-- Location: LCCOMB_X46_Y20_N28
\u_datapath|u_AsubMultRes|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~12_combout\ = ((\u_datapath|u_i_A|o_Q\(6) $ (\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ $ (\u_datapath|u_AsubMultRes|Add0~11\)))) # (GND)
-- \u_datapath|u_AsubMultRes|Add0~13\ = CARRY((\u_datapath|u_i_A|o_Q\(6) & ((!\u_datapath|u_AsubMultRes|Add0~11\) # (!\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\))) # (!\u_datapath|u_i_A|o_Q\(6) & (!\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ & 
-- !\u_datapath|u_AsubMultRes|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_A|o_Q\(6),
	datab => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~11\,
	combout => \u_datapath|u_AsubMultRes|Add0~12_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~13\);

-- Location: LCCOMB_X46_Y20_N30
\u_datapath|u_AsubMultRes|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~14_combout\ = \u_datapath|u_i_A|o_Q\(7) $ (\u_datapath|u_AsubMultRes|Add0~13\ $ (!\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_A|o_Q\(7),
	datad => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\,
	cin => \u_datapath|u_AsubMultRes|Add0~13\,
	combout => \u_datapath|u_AsubMultRes|Add0~14_combout\);

-- Location: LCCOMB_X46_Y20_N0
\u_datapath|u_less_than|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~1_cout\ = CARRY((!\u_datapath|u_AsubMultRes|Add0~0_combout\ & \u_datapath|u_i_B|o_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_AsubMultRes|Add0~0_combout\,
	datab => \u_datapath|u_i_B|o_Q\(0),
	datad => VCC,
	cout => \u_datapath|u_less_than|LessThan0~1_cout\);

-- Location: LCCOMB_X46_Y20_N2
\u_datapath|u_less_than|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~3_cout\ = CARRY((\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_AsubMultRes|Add0~2_combout\ & !\u_datapath|u_less_than|LessThan0~1_cout\)) # (!\u_datapath|u_i_B|o_Q\(1) & ((\u_datapath|u_AsubMultRes|Add0~2_combout\) # 
-- (!\u_datapath|u_less_than|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_AsubMultRes|Add0~2_combout\,
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~1_cout\,
	cout => \u_datapath|u_less_than|LessThan0~3_cout\);

-- Location: LCCOMB_X46_Y20_N4
\u_datapath|u_less_than|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~5_cout\ = CARRY((\u_datapath|u_AsubMultRes|Add0~4_combout\ & (\u_datapath|u_i_B|o_Q\(2) & !\u_datapath|u_less_than|LessThan0~3_cout\)) # (!\u_datapath|u_AsubMultRes|Add0~4_combout\ & ((\u_datapath|u_i_B|o_Q\(2)) # 
-- (!\u_datapath|u_less_than|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_AsubMultRes|Add0~4_combout\,
	datab => \u_datapath|u_i_B|o_Q\(2),
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~3_cout\,
	cout => \u_datapath|u_less_than|LessThan0~5_cout\);

-- Location: LCCOMB_X46_Y20_N6
\u_datapath|u_less_than|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~7_cout\ = CARRY((\u_datapath|u_i_B|o_Q\(3) & (\u_datapath|u_AsubMultRes|Add0~6_combout\ & !\u_datapath|u_less_than|LessThan0~5_cout\)) # (!\u_datapath|u_i_B|o_Q\(3) & ((\u_datapath|u_AsubMultRes|Add0~6_combout\) # 
-- (!\u_datapath|u_less_than|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(3),
	datab => \u_datapath|u_AsubMultRes|Add0~6_combout\,
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~5_cout\,
	cout => \u_datapath|u_less_than|LessThan0~7_cout\);

-- Location: LCCOMB_X46_Y20_N8
\u_datapath|u_less_than|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~9_cout\ = CARRY((\u_datapath|u_AsubMultRes|Add0~8_combout\ & (\u_datapath|u_i_B|o_Q\(4) & !\u_datapath|u_less_than|LessThan0~7_cout\)) # (!\u_datapath|u_AsubMultRes|Add0~8_combout\ & ((\u_datapath|u_i_B|o_Q\(4)) # 
-- (!\u_datapath|u_less_than|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_AsubMultRes|Add0~8_combout\,
	datab => \u_datapath|u_i_B|o_Q\(4),
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~7_cout\,
	cout => \u_datapath|u_less_than|LessThan0~9_cout\);

-- Location: LCCOMB_X46_Y20_N10
\u_datapath|u_less_than|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~11_cout\ = CARRY((\u_datapath|u_i_B|o_Q\(5) & (\u_datapath|u_AsubMultRes|Add0~10_combout\ & !\u_datapath|u_less_than|LessThan0~9_cout\)) # (!\u_datapath|u_i_B|o_Q\(5) & ((\u_datapath|u_AsubMultRes|Add0~10_combout\) # 
-- (!\u_datapath|u_less_than|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(5),
	datab => \u_datapath|u_AsubMultRes|Add0~10_combout\,
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~9_cout\,
	cout => \u_datapath|u_less_than|LessThan0~11_cout\);

-- Location: LCCOMB_X46_Y20_N12
\u_datapath|u_less_than|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~13_cout\ = CARRY((\u_datapath|u_i_B|o_Q\(6) & ((!\u_datapath|u_less_than|LessThan0~11_cout\) # (!\u_datapath|u_AsubMultRes|Add0~12_combout\))) # (!\u_datapath|u_i_B|o_Q\(6) & (!\u_datapath|u_AsubMultRes|Add0~12_combout\ & 
-- !\u_datapath|u_less_than|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(6),
	datab => \u_datapath|u_AsubMultRes|Add0~12_combout\,
	datad => VCC,
	cin => \u_datapath|u_less_than|LessThan0~11_cout\,
	cout => \u_datapath|u_less_than|LessThan0~13_cout\);

-- Location: LCCOMB_X46_Y20_N14
\u_datapath|u_less_than|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~14_combout\ = (\u_datapath|u_i_B|o_Q\(7) & ((\u_datapath|u_less_than|LessThan0~13_cout\) # (!\u_datapath|u_AsubMultRes|Add0~14_combout\))) # (!\u_datapath|u_i_B|o_Q\(7) & (\u_datapath|u_less_than|LessThan0~13_cout\ & 
-- !\u_datapath|u_AsubMultRes|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(7),
	datad => \u_datapath|u_AsubMultRes|Add0~14_combout\,
	cin => \u_datapath|u_less_than|LessThan0~13_cout\,
	combout => \u_datapath|u_less_than|LessThan0~14_combout\);

-- Location: LCCOMB_X47_Y20_N22
\u_control|next_state.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s2~0_combout\ = (\u_control|state.s1~regout\ & !\u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state.s1~regout\,
	datad => \u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_control|next_state.s2~0_combout\);

-- Location: LCFF_X47_Y20_N23
\u_control|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s2~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s2~regout\);

-- Location: LCCOMB_X46_Y19_N28
\u_control|next_state.s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s1~combout\ = (\u_control|state.s0~regout\) # (\u_control|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s0~regout\,
	datad => \u_control|state.s2~regout\,
	combout => \u_control|next_state.s1~combout\);

-- Location: LCFF_X46_Y19_N29
\u_control|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s1~combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s1~regout\);

-- Location: LCCOMB_X47_Y20_N2
\u_control|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s3~0_combout\ = (\u_control|state.s1~regout\ & \u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state.s1~regout\,
	datad => \u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_control|next_state.s3~0_combout\);

-- Location: LCFF_X47_Y20_N3
\u_control|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s3~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s3~regout\);

-- Location: LCCOMB_X47_Y20_N16
\u_control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state.s3~regout\ & ((\u_control|state.idle~regout\) # (!\i_startn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_startn~combout\,
	datac => \u_control|state.idle~regout\,
	datad => \u_control|state.s3~regout\,
	combout => \u_control|Selector0~0_combout\);

-- Location: LCFF_X47_Y20_N17
\u_control|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|Selector0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.idle~regout\);

-- Location: LCFF_X46_Y20_N17
\u_datapath|u_regOut|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(0));

-- Location: LCFF_X46_Y20_N19
\u_datapath|u_regOut|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~2_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(1));

-- Location: LCFF_X46_Y20_N21
\u_datapath|u_regOut|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~4_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(2));

-- Location: LCFF_X46_Y20_N23
\u_datapath|u_regOut|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~6_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(3));

-- Location: LCFF_X46_Y20_N25
\u_datapath|u_regOut|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~8_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(4));

-- Location: LCFF_X46_Y20_N27
\u_datapath|u_regOut|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~10_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(5));

-- Location: LCFF_X46_Y20_N29
\u_datapath|u_regOut|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~12_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(6));

-- Location: LCFF_X46_Y20_N31
\u_datapath|u_regOut|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_AsubMultRes|Add0~14_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(7));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_rdy~I\ : cycloneii_io
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
	datain => \u_control|ALT_INV_state.idle~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_rdy);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[0]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[1]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(1));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[2]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(2));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[3]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(3));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[4]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(4));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[5]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(5));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[6]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(6));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_S[7]~I\ : cycloneii_io
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
	datain => \u_datapath|u_regOut|o_Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_S(7));
END structure;


