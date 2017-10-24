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

-- DATE "07/14/2016 21:26:44"

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
-- o_rdy	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[0]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[2]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[5]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- o_S[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_startn	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_clrn	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[0]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[0]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[2]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[4]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[4]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[5]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[5]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[6]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_B[7]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i_A[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \i_clrn~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \i_A[1]~input_o\ : std_logic;
SIGNAL \i_A[4]~input_o\ : std_logic;
SIGNAL \i_A[6]~input_o\ : std_logic;
SIGNAL \o_rdy~output_o\ : std_logic;
SIGNAL \o_S[0]~output_o\ : std_logic;
SIGNAL \o_S[1]~output_o\ : std_logic;
SIGNAL \o_S[2]~output_o\ : std_logic;
SIGNAL \o_S[3]~output_o\ : std_logic;
SIGNAL \o_S[4]~output_o\ : std_logic;
SIGNAL \o_S[5]~output_o\ : std_logic;
SIGNAL \o_S[6]~output_o\ : std_logic;
SIGNAL \o_S[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \i_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i_startn~input_o\ : std_logic;
SIGNAL \u_control|next_state.s0~0_combout\ : std_logic;
SIGNAL \i_clrn~input_o\ : std_logic;
SIGNAL \i_clrn~inputclkctrl_outclk\ : std_logic;
SIGNAL \u_control|state.s0~q\ : std_logic;
SIGNAL \i_A[7]~input_o\ : std_logic;
SIGNAL \u_datapath|u_contK|q[0]~7_combout\ : std_logic;
SIGNAL \u_datapath|w_clrnK~combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[1]~9\ : std_logic;
SIGNAL \u_datapath|u_contK|q[2]~10_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[2]~11\ : std_logic;
SIGNAL \u_datapath|u_contK|q[3]~12_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[3]~13\ : std_logic;
SIGNAL \u_datapath|u_contK|q[4]~15\ : std_logic;
SIGNAL \u_datapath|u_contK|q[5]~16_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[5]~17\ : std_logic;
SIGNAL \u_datapath|u_contK|q[6]~19\ : std_logic;
SIGNAL \u_datapath|u_contK|q[7]~20_combout\ : std_logic;
SIGNAL \i_B[1]~input_o\ : std_logic;
SIGNAL \u_datapath|u_contK|q[6]~18_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \i_B[7]~input_o\ : std_logic;
SIGNAL \i_B[6]~input_o\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ : std_logic;
SIGNAL \i_B[5]~input_o\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \i_B[4]~input_o\ : std_logic;
SIGNAL \u_datapath|u_i_B|o_Q[4]~feeder_combout\ : std_logic;
SIGNAL \i_B[3]~input_o\ : std_logic;
SIGNAL \u_datapath|u_contK|q[1]~8_combout\ : std_logic;
SIGNAL \i_B[0]~input_o\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \i_B[2]~input_o\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_contK|q[4]~14_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \i_A[5]~input_o\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \i_A[3]~input_o\ : std_logic;
SIGNAL \i_A[2]~input_o\ : std_logic;
SIGNAL \u_datapath|u_i_A|o_Q[2]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \i_A[0]~input_o\ : std_logic;
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
SIGNAL \u_control|state.s2~q\ : std_logic;
SIGNAL \u_control|next_state.s1~combout\ : std_logic;
SIGNAL \u_control|state.s1~q\ : std_logic;
SIGNAL \u_control|next_state.s3~0_combout\ : std_logic;
SIGNAL \u_control|state.s3~q\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_control|state.idle~q\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~0_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~4_combout\ : std_logic;
SIGNAL \u_datapath|u_AsubMultRes|Add0~8_combout\ : std_logic;
SIGNAL \u_datapath|u_i_B|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_regOut|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_i_A|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_contK|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add5inB\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add4inB\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add3inB\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add2inB\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add1inB\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_datapath|u_KmultB|w_add1inA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_i_startn~input_o\ : std_logic;
SIGNAL \u_datapath|ALT_INV_w_clrnK~combout\ : std_logic;
SIGNAL \u_control|ALT_INV_state.idle~q\ : std_logic;

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

\i_clrn~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clrn~input_o\);

\i_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i_clk~input_o\);
\ALT_INV_i_startn~input_o\ <= NOT \i_startn~input_o\;
\u_datapath|ALT_INV_w_clrnK~combout\ <= NOT \u_datapath|w_clrnK~combout\;
\u_control|ALT_INV_state.idle~q\ <= NOT \u_control|state.idle~q\;

-- Location: LCCOMB_X1_Y14_N2
\u_datapath|u_KmultB|w_add1inA[0]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(0) = (\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(0));

-- Location: FF_X1_Y14_N15
\u_datapath|u_i_A|o_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[1]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(1));

-- Location: LCCOMB_X1_Y14_N12
\u_datapath|u_KmultB|w_add3inB[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(3) = (\u_datapath|u_i_B|o_Q\(3) & \u_datapath|u_contK|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(3),
	datad => \u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_KmultB|w_add3inB\(3));

-- Location: LCCOMB_X6_Y14_N26
\u_datapath|u_KmultB|w_add2inB[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(3) = (\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|w_add2inB\(3));

-- Location: LCCOMB_X5_Y14_N26
\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|w_add3inB\(3) $ 
-- (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\,
	datab => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_KmultB|w_add3inB\(3),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X4_Y14_N6
\u_datapath|u_KmultB|w_add1inB[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inB\(4) = (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(3),
	combout => \u_datapath|u_KmultB|w_add1inB\(4));

-- Location: FF_X2_Y14_N9
\u_datapath|u_i_A|o_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[4]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(4));

-- Location: LCCOMB_X3_Y13_N16
\u_datapath|u_KmultB|w_add5inB[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add5inB\(5) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|w_add5inB\(5));

-- Location: LCCOMB_X4_Y13_N18
\u_datapath|u_KmultB|w_add4inB[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add4inB\(5) = (\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_KmultB|w_add4inB\(5));

-- Location: LCCOMB_X5_Y14_N4
\u_datapath|u_KmultB|w_add1inA[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(5) = (\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(5),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(5));

-- Location: LCCOMB_X4_Y14_N0
\u_datapath|u_KmultB|w_add2inB[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(5) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(5));

-- Location: LCCOMB_X4_Y14_N30
\u_datapath|u_KmultB|w_add4inB[6]\ : cycloneiv_lcell_comb
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

-- Location: FF_X4_Y13_N13
\u_datapath|u_i_A|o_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[6]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(6));

-- Location: LCCOMB_X4_Y14_N14
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ = (\u_datapath|u_i_B|o_Q\(2) & (\u_datapath|u_contK|q\(5) $ (((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(3)))))) # (!\u_datapath|u_i_B|o_Q\(2) & (\u_datapath|u_contK|q\(4) & 
-- ((\u_datapath|u_i_B|o_Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_contK|q\(5),
	datad => \u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X5_Y14_N30
\u_datapath|u_KmultB|w_add1inA[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(6) = (\u_datapath|u_contK|q\(6) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(6),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(6));

-- Location: LCCOMB_X4_Y14_N10
\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(6) & ((\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_KmultB|w_add1inA\(6) & 
-- (\u_datapath|u_contK|q\(5) & (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|w_add1inA\(6),
	datad => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X4_Y14_N4
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ = \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_contK|q\(5) & \u_datapath|u_i_B|o_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X4_Y14_N26
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ = (\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ & ((\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\) # ((\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(4))))) # 
-- (!\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ & (\u_datapath|u_i_B|o_Q\(2) & (\u_datapath|u_contK|q\(4) & \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X6_Y14_N6
\u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add1inA\(2) $ (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_KmultB|w_add1inA\(2),
	datac => \u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X2_Y14_N30
\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ $ (((\u_datapath|u_i_B|o_Q\(5) & \u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(5),
	datab => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\);

-- Location: IOIBUF_X12_Y31_N1
\i_A[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(1),
	o => \i_A[1]~input_o\);

-- Location: IOIBUF_X33_Y15_N1
\i_A[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(4),
	o => \i_A[4]~input_o\);

-- Location: IOIBUF_X20_Y0_N1
\i_A[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(6),
	o => \i_A[6]~input_o\);

-- Location: IOOBUF_X14_Y31_N9
\o_rdy~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_control|ALT_INV_state.idle~q\,
	devoe => ww_devoe,
	o => \o_rdy~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\o_S[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(0),
	devoe => ww_devoe,
	o => \o_S[0]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\o_S[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(1),
	devoe => ww_devoe,
	o => \o_S[1]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\o_S[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(2),
	devoe => ww_devoe,
	o => \o_S[2]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\o_S[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(3),
	devoe => ww_devoe,
	o => \o_S[3]~output_o\);

-- Location: IOOBUF_X12_Y31_N9
\o_S[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(4),
	devoe => ww_devoe,
	o => \o_S[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\o_S[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(5),
	devoe => ww_devoe,
	o => \o_S[5]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\o_S[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(6),
	devoe => ww_devoe,
	o => \o_S[6]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\o_S[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_datapath|u_regOut|o_Q\(7),
	devoe => ww_devoe,
	o => \o_S[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\i_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

-- Location: CLKCTRL_G17
\i_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X8_Y0_N8
\i_startn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_startn,
	o => \i_startn~input_o\);

-- Location: LCCOMB_X4_Y13_N22
\u_control|next_state.s0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_control|next_state.s0~0_combout\ = (!\i_startn~input_o\ & !\u_control|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i_startn~input_o\,
	datad => \u_control|state.idle~q\,
	combout => \u_control|next_state.s0~0_combout\);

-- Location: IOIBUF_X16_Y0_N22
\i_clrn~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clrn,
	o => \i_clrn~input_o\);

-- Location: CLKCTRL_G19
\i_clrn~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_clrn~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_clrn~inputclkctrl_outclk\);

-- Location: FF_X5_Y14_N31
\u_control|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \u_control|next_state.s0~0_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state.s0~q\);

-- Location: IOIBUF_X14_Y31_N1
\i_A[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(7),
	o => \i_A[7]~input_o\);

-- Location: FF_X6_Y14_N11
\u_datapath|u_i_A|o_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[7]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(7));

-- Location: LCCOMB_X6_Y14_N30
\u_datapath|u_contK|q[0]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[0]~7_combout\ = \u_datapath|u_contK|q\(0) $ (\u_control|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_control|state.s2~q\,
	combout => \u_datapath|u_contK|q[0]~7_combout\);

-- Location: LCCOMB_X5_Y14_N28
\u_datapath|w_clrnK\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|w_clrnK~combout\ = (\u_control|state.s0~q\) # (!\i_clrn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_clrn~input_o\,
	datac => \u_control|state.s0~q\,
	combout => \u_datapath|w_clrnK~combout\);

-- Location: FF_X6_Y14_N31
\u_datapath|u_contK|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[0]~7_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(0));

-- Location: LCCOMB_X5_Y14_N12
\u_datapath|u_contK|q[1]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[1]~8_combout\ = (\u_datapath|u_contK|q\(1) & (\u_datapath|u_contK|q\(0) $ (VCC))) # (!\u_datapath|u_contK|q\(1) & (\u_datapath|u_contK|q\(0) & VCC))
-- \u_datapath|u_contK|q[1]~9\ = CARRY((\u_datapath|u_contK|q\(1) & \u_datapath|u_contK|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(1),
	datab => \u_datapath|u_contK|q\(0),
	datad => VCC,
	combout => \u_datapath|u_contK|q[1]~8_combout\,
	cout => \u_datapath|u_contK|q[1]~9\);

-- Location: LCCOMB_X5_Y14_N14
\u_datapath|u_contK|q[2]~10\ : cycloneiv_lcell_comb
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

-- Location: FF_X5_Y14_N15
\u_datapath|u_contK|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[2]~10_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(2));

-- Location: LCCOMB_X5_Y14_N16
\u_datapath|u_contK|q[3]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[3]~12_combout\ = (\u_datapath|u_contK|q\(3) & (\u_datapath|u_contK|q[2]~11\ $ (GND))) # (!\u_datapath|u_contK|q\(3) & (!\u_datapath|u_contK|q[2]~11\ & VCC))
-- \u_datapath|u_contK|q[3]~13\ = CARRY((\u_datapath|u_contK|q\(3) & !\u_datapath|u_contK|q[2]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(3),
	datad => VCC,
	cin => \u_datapath|u_contK|q[2]~11\,
	combout => \u_datapath|u_contK|q[3]~12_combout\,
	cout => \u_datapath|u_contK|q[3]~13\);

-- Location: FF_X5_Y14_N17
\u_datapath|u_contK|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[3]~12_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(3));

-- Location: LCCOMB_X5_Y14_N18
\u_datapath|u_contK|q[4]~14\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X5_Y14_N20
\u_datapath|u_contK|q[5]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[5]~16_combout\ = (\u_datapath|u_contK|q\(5) & (\u_datapath|u_contK|q[4]~15\ $ (GND))) # (!\u_datapath|u_contK|q\(5) & (!\u_datapath|u_contK|q[4]~15\ & VCC))
-- \u_datapath|u_contK|q[5]~17\ = CARRY((\u_datapath|u_contK|q\(5) & !\u_datapath|u_contK|q[4]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(5),
	datad => VCC,
	cin => \u_datapath|u_contK|q[4]~15\,
	combout => \u_datapath|u_contK|q[5]~16_combout\,
	cout => \u_datapath|u_contK|q[5]~17\);

-- Location: FF_X5_Y14_N21
\u_datapath|u_contK|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[5]~16_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(5));

-- Location: LCCOMB_X5_Y14_N22
\u_datapath|u_contK|q[6]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_contK|q[6]~18_combout\ = (\u_datapath|u_contK|q\(6) & (!\u_datapath|u_contK|q[5]~17\)) # (!\u_datapath|u_contK|q\(6) & ((\u_datapath|u_contK|q[5]~17\) # (GND)))
-- \u_datapath|u_contK|q[6]~19\ = CARRY((!\u_datapath|u_contK|q[5]~17\) # (!\u_datapath|u_contK|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(6),
	datad => VCC,
	cin => \u_datapath|u_contK|q[5]~17\,
	combout => \u_datapath|u_contK|q[6]~18_combout\,
	cout => \u_datapath|u_contK|q[6]~19\);

-- Location: LCCOMB_X5_Y14_N24
\u_datapath|u_contK|q[7]~20\ : cycloneiv_lcell_comb
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

-- Location: FF_X5_Y14_N25
\u_datapath|u_contK|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[7]~20_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(7));

-- Location: IOIBUF_X22_Y0_N1
\i_B[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(1),
	o => \i_B[1]~input_o\);

-- Location: FF_X6_Y14_N5
\u_datapath|u_i_B|o_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[1]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(1));

-- Location: FF_X5_Y14_N23
\u_datapath|u_contK|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[6]~18_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(6));

-- Location: LCCOMB_X4_Y14_N8
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_contK|q\(7) $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(6)))))) # (!\u_datapath|u_i_B|o_Q\(0) & (((\u_datapath|u_i_B|o_Q\(1) & 
-- \u_datapath|u_contK|q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datab => \u_datapath|u_contK|q\(7),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(6),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\i_B[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(7),
	o => \i_B[7]~input_o\);

-- Location: FF_X1_Y14_N5
\u_datapath|u_i_B|o_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[7]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(7));

-- Location: IOIBUF_X22_Y0_N8
\i_B[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(6),
	o => \i_B[6]~input_o\);

-- Location: FF_X2_Y14_N5
\u_datapath|u_i_B|o_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[6]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(6));

-- Location: LCCOMB_X1_Y14_N4
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ = (\u_datapath|u_contK|q\(1) & (\u_datapath|u_i_B|o_Q\(6) $ (((\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(7)))))) # (!\u_datapath|u_contK|q\(1) & (\u_datapath|u_contK|q\(0) & 
-- (\u_datapath|u_i_B|o_Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(1),
	datab => \u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_i_B|o_Q\(7),
	datad => \u_datapath|u_i_B|o_Q\(6),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\);

-- Location: IOIBUF_X16_Y31_N1
\i_B[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(5),
	o => \i_B[5]~input_o\);

-- Location: FF_X3_Y13_N3
\u_datapath|u_i_B|o_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[5]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(5));

-- Location: LCCOMB_X4_Y14_N24
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ = (\u_datapath|u_i_B|o_Q\(4) & (\u_datapath|u_contK|q\(3) $ (((\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(5)))))) # (!\u_datapath|u_i_B|o_Q\(4) & (((\u_datapath|u_contK|q\(2) & 
-- \u_datapath|u_i_B|o_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(4),
	datab => \u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X1_Y14_N30
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ = \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ $ (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ $ 
-- (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\,
	datab => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\,
	datad => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\);

-- Location: IOIBUF_X33_Y12_N8
\i_B[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(4),
	o => \i_B[4]~input_o\);

-- Location: LCCOMB_X4_Y13_N0
\u_datapath|u_i_B|o_Q[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_B|o_Q[4]~feeder_combout\ = \i_B[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_B[4]~input_o\,
	combout => \u_datapath|u_i_B|o_Q[4]~feeder_combout\);

-- Location: FF_X4_Y13_N1
\u_datapath|u_i_B|o_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_i_B|o_Q[4]~feeder_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(4));

-- Location: LCCOMB_X3_Y13_N0
\u_datapath|u_KmultB|w_add4inB[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add4inB\(4) = (\u_datapath|u_i_B|o_Q\(4) & \u_datapath|u_contK|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_i_B|o_Q\(4),
	datad => \u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_KmultB|w_add4inB\(4));

-- Location: IOIBUF_X33_Y14_N8
\i_B[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(3),
	o => \i_B[3]~input_o\);

-- Location: FF_X1_Y14_N3
\u_datapath|u_i_B|o_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[3]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(3));

-- Location: FF_X5_Y14_N13
\u_datapath|u_contK|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[1]~8_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(1));

-- Location: LCCOMB_X1_Y14_N6
\u_datapath|u_KmultB|w_add3inB[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(4) = (\u_datapath|u_i_B|o_Q\(3) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(3),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|w_add3inB\(4));

-- Location: IOIBUF_X14_Y0_N8
\i_B[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(0),
	o => \i_B[0]~input_o\);

-- Location: FF_X6_Y14_N25
\u_datapath|u_i_B|o_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[0]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(0));

-- Location: LCCOMB_X5_Y14_N0
\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(2) $ (((\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(0)))))) # (!\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(3) & 
-- ((\u_datapath|u_i_B|o_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X6_Y14_N18
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X6_Y14_N28
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ = (\u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ & ((\u_datapath|u_contK|q\(2)) # (\u_datapath|u_contK|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(2),
	datab => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\);

-- Location: IOIBUF_X14_Y0_N1
\i_B[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_B(2),
	o => \i_B[2]~input_o\);

-- Location: FF_X6_Y14_N7
\u_datapath|u_i_B|o_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_B[2]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_B|o_Q\(2));

-- Location: LCCOMB_X6_Y14_N20
\u_datapath|u_KmultB|w_add2inB[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(2) = (\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(2));

-- Location: LCCOMB_X6_Y14_N2
\u_datapath|u_KmultB|w_add1inA[2]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(2) = (\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_contK|q\(2),
	combout => \u_datapath|u_KmultB|w_add1inA\(2));

-- Location: LCCOMB_X6_Y14_N0
\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ = (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(1) & ((!\u_datapath|u_contK|q\(0)) # (!\u_datapath|u_i_B|o_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X6_Y14_N16
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|w_add2inB\(3) $ (((\u_datapath|u_KmultB|w_add2inB\(2) & (\u_datapath|u_KmultB|w_add1inA\(2) $ (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(3),
	datab => \u_datapath|u_KmultB|w_add2inB\(2),
	datac => \u_datapath|u_KmultB|w_add1inA\(2),
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X4_Y14_N20
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ $ (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X4_Y14_N12
\u_datapath|u_KmultB|w_add2inB[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(4) = (\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_KmultB|w_add2inB\(4));

-- Location: LCCOMB_X6_Y14_N14
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\ = (\u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_contK|q\(3) $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(2)))))) # (!\u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_i_B|o_Q\(1) & 
-- ((\u_datapath|u_contK|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datab => \u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_contK|q\(2),
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\);

-- Location: LCCOMB_X6_Y14_N8
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2_combout\ = (\u_datapath|u_contK|q\(1) & ((!\u_datapath|u_contK|q\(0)) # (!\u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2_combout\);

-- Location: LCCOMB_X6_Y14_N22
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\ = (\u_datapath|u_KmultB|w_add2inB\(2) & (\u_datapath|u_KmultB|w_add1inA\(2) $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_KmultB|w_add2inB\(2),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~2_combout\,
	datad => \u_datapath|u_KmultB|w_add1inA\(2),
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\);

-- Location: LCCOMB_X6_Y14_N12
\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\ = (\u_datapath|u_KmultB|w_add2inB\(3) & ((\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\) # (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\ $ 
-- (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\)))) # (!\u_datapath|u_KmultB|w_add2inB\(3) & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\ & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\ $ 
-- (\u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(3),
	datab => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~5_combout\,
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~3_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\);

-- Location: LCCOMB_X6_Y14_N10
\u_datapath|u_KmultB|w_add1inA[3]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(3) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(3));

-- Location: LCCOMB_X5_Y14_N2
\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0\ : cycloneiv_lcell_comb
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

-- Location: FF_X5_Y14_N19
\u_datapath|u_contK|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_contK|q[4]~14_combout\,
	clrn => \u_datapath|ALT_INV_w_clrnK~combout\,
	ena => \u_control|state.s2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_contK|q\(4));

-- Location: LCCOMB_X3_Y14_N16
\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_contK|q\(4),
	combout => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X3_Y14_N24
\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|w_add2inB\(4) $ (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inB\(4),
	datab => \u_datapath|u_KmultB|w_add2inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X3_Y14_N30
\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add3inB\(4) $ (\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ $ (((\u_datapath|u_KmultB|w_add3inB\(3) & \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(3),
	datab => \u_datapath|u_KmultB|w_add3inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X4_Y14_N18
\u_datapath|u_KmultB|w_add3inB[5]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(5) = (\u_datapath|u_contK|q\(2) & \u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_KmultB|w_add3inB\(5));

-- Location: LCCOMB_X5_Y14_N8
\u_datapath|u_KmultB|w_add1inA[4]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add1inA\(4) = (\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_KmultB|w_add1inA\(4));

-- Location: LCCOMB_X5_Y14_N6
\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(4) & ((\u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\) # ((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(3))))) # (!\u_datapath|u_KmultB|w_add1inA\(4) & 
-- (\u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_contK|q\(3) & \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_KmultB|w_add1inA\(4),
	datad => \u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X5_Y14_N10
\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_contK|q\(5),
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X3_Y14_N0
\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add2inB\(4) & ((\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\) # (\u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add2inB\(4) & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\ & (\u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inB\(4),
	datab => \u_datapath|u_KmultB|w_add2inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~4_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N26
\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ $ (\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X3_Y14_N18
\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add3inB\(4) & ((\u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\) # ((\u_datapath|u_KmultB|w_add3inB\(3) & \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add3inB\(4) & (\u_datapath|u_KmultB|w_add3inB\(3) & (\u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add3inB\(3),
	datab => \u_datapath|u_KmultB|w_add3inB\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N28
\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|w_add3inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(5),
	datab => \u_datapath|u_KmultB|w_add3inB\(5),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N22
\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y13_N0
\u_datapath|u_KmultB|w_add5inB[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add5inB\(6) = (\u_datapath|u_contK|q\(1) & \u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_KmultB|w_add5inB\(6));

-- Location: LCCOMB_X4_Y14_N28
\u_datapath|u_KmultB|w_add3inB[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add3inB\(6) = (\u_datapath|u_contK|q\(3) & \u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_KmultB|w_add3inB\(6));

-- Location: LCCOMB_X3_Y14_N4
\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X4_Y14_N2
\u_datapath|u_KmultB|w_add1inB[5]\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X3_Y14_N14
\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X4_Y14_N16
\u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add1inA\(5) & ((\u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\) # ((\u_datapath|u_contK|q\(4) & \u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_KmultB|w_add1inA\(5) & 
-- (\u_datapath|u_contK|q\(4) & (\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add1inA\(5),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X4_Y14_N22
\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_contK|q\(6) & \u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(6),
	datac => \u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N8
\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_contK|q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_contK|q\(5),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N6
\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add3inB\(5) & ((\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add3inB\(5) & (\u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add2inB\(5),
	datab => \u_datapath|u_KmultB|w_add3inB\(5),
	datac => \u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N12
\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N2
\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add4inB\(6) $ (\u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add4inB\(6),
	datab => \u_datapath|u_KmultB|w_add3inB\(6),
	datac => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X2_Y14_N6
\u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|w_add5inB\(6) $ (\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ $ (((\u_datapath|u_KmultB|w_add5inB\(5) & \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add5inB\(5),
	datab => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	datac => \u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X2_Y14_N4
\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_contK|q\(0) & (\u_datapath|u_i_B|o_Q\(6) & \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_i_B|o_Q\(6),
	datad => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X6_Y14_N24
\u_datapath|u_KmultB|w_add2inB[6]\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|w_add2inB\(6) = (\u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_contK|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_contK|q\(4),
	combout => \u_datapath|u_KmultB|w_add2inB\(6));

-- Location: LCCOMB_X3_Y14_N10
\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ & ((\u_datapath|u_KmultB|w_add3inB\(6)) # (\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|w_add2inB\(6))))) # 
-- (!\u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add3inB\(6) & (\u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_KmultB|w_add2inB\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	datab => \u_datapath|u_KmultB|w_add3inB\(6),
	datac => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_KmultB|w_add2inB\(6),
	combout => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X3_Y14_N20
\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add4inB\(6) & ((\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\) # (\u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add4inB\(6) & (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add4inB\(6),
	datab => \u_datapath|u_KmultB|w_add3inB\(6),
	datac => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X2_Y14_N2
\u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_KmultB|w_add5inB\(6) & ((\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\) # ((\u_datapath|u_KmultB|w_add5inB\(5) & \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\)))) # 
-- (!\u_datapath|u_KmultB|w_add5inB\(6) & (\u_datapath|u_KmultB|w_add5inB\(5) & (\u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ & \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|w_add5inB\(5),
	datab => \u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	datac => \u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X2_Y14_N0
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ = \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ $ (\u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\,
	datab => \u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\);

-- Location: LCCOMB_X2_Y14_N10
\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ $ (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ $ (\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\,
	datab => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\,
	datac => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\,
	combout => \u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X2_Y14_N28
\u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\ $ (((\u_datapath|u_contK|q\(0) & \u_datapath|u_i_B|o_Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_i_B|o_Q\(6),
	datad => \u_datapath|u_KmultB|u_5|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\);

-- Location: IOIBUF_X16_Y31_N8
\i_A[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(5),
	o => \i_A[5]~input_o\);

-- Location: FF_X6_Y14_N19
\u_datapath|u_i_A|o_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[5]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(5));

-- Location: LCCOMB_X2_Y14_N8
\u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ $ (((\u_datapath|u_i_B|o_Q\(4) & \u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_i_B|o_Q\(4),
	datad => \u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\);

-- Location: IOIBUF_X10_Y31_N1
\i_A[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(3),
	o => \i_A[3]~input_o\);

-- Location: FF_X2_Y14_N31
\u_datapath|u_i_A|o_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[3]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(3));

-- Location: IOIBUF_X12_Y0_N1
\i_A[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(2),
	o => \i_A[2]~input_o\);

-- Location: LCCOMB_X4_Y13_N30
\u_datapath|u_i_A|o_Q[2]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_i_A|o_Q[2]~feeder_combout\ = \i_A[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_A[2]~input_o\,
	combout => \u_datapath|u_i_A|o_Q[2]~feeder_combout\);

-- Location: FF_X4_Y13_N31
\u_datapath|u_i_A|o_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_i_A|o_Q[2]~feeder_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(2));

-- Location: LCCOMB_X6_Y14_N4
\u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ = (\u_datapath|u_contK|q\(0) & (\u_datapath|u_i_B|o_Q\(1) $ (((\u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_contK|q\(1)))))) # (!\u_datapath|u_contK|q\(0) & (\u_datapath|u_i_B|o_Q\(0) & 
-- ((\u_datapath|u_contK|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\);

-- Location: IOIBUF_X10_Y0_N8
\i_A[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_A(0),
	o => \i_A[0]~input_o\);

-- Location: FF_X2_Y14_N29
\u_datapath|u_i_A|o_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	asdata => \i_A[0]~input_o\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_i_A|o_Q\(0));

-- Location: LCCOMB_X2_Y14_N12
\u_datapath|u_AsubMultRes|Add0~0\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y14_N14
\u_datapath|u_AsubMultRes|Add0~2\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y14_N16
\u_datapath|u_AsubMultRes|Add0~4\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y14_N18
\u_datapath|u_AsubMultRes|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~6_combout\ = (\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & ((\u_datapath|u_i_A|o_Q\(3) & (!\u_datapath|u_AsubMultRes|Add0~5\)) # (!\u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_AsubMultRes|Add0~5\) # (GND))))) # 
-- (!\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & ((\u_datapath|u_i_A|o_Q\(3) & (\u_datapath|u_AsubMultRes|Add0~5\ & VCC)) # (!\u_datapath|u_i_A|o_Q\(3) & (!\u_datapath|u_AsubMultRes|Add0~5\))))
-- \u_datapath|u_AsubMultRes|Add0~7\ = CARRY((\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & ((!\u_datapath|u_AsubMultRes|Add0~5\) # (!\u_datapath|u_i_A|o_Q\(3)))) # (!\u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & (!\u_datapath|u_i_A|o_Q\(3) & 
-- !\u_datapath|u_AsubMultRes|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_i_A|o_Q\(3),
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~5\,
	combout => \u_datapath|u_AsubMultRes|Add0~6_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~7\);

-- Location: LCCOMB_X2_Y14_N20
\u_datapath|u_AsubMultRes|Add0~8\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y14_N22
\u_datapath|u_AsubMultRes|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_AsubMultRes|Add0~10_combout\ = (\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & ((\u_datapath|u_i_A|o_Q\(5) & (!\u_datapath|u_AsubMultRes|Add0~9\)) # (!\u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_AsubMultRes|Add0~9\) # (GND))))) # 
-- (!\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & ((\u_datapath|u_i_A|o_Q\(5) & (\u_datapath|u_AsubMultRes|Add0~9\ & VCC)) # (!\u_datapath|u_i_A|o_Q\(5) & (!\u_datapath|u_AsubMultRes|Add0~9\))))
-- \u_datapath|u_AsubMultRes|Add0~11\ = CARRY((\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & ((!\u_datapath|u_AsubMultRes|Add0~9\) # (!\u_datapath|u_i_A|o_Q\(5)))) # (!\u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & (!\u_datapath|u_i_A|o_Q\(5) & 
-- !\u_datapath|u_AsubMultRes|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\,
	datab => \u_datapath|u_i_A|o_Q\(5),
	datad => VCC,
	cin => \u_datapath|u_AsubMultRes|Add0~9\,
	combout => \u_datapath|u_AsubMultRes|Add0~10_combout\,
	cout => \u_datapath|u_AsubMultRes|Add0~11\);

-- Location: LCCOMB_X2_Y14_N24
\u_datapath|u_AsubMultRes|Add0~12\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X2_Y14_N26
\u_datapath|u_AsubMultRes|Add0~14\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N14
\u_datapath|u_less_than|LessThan0~1\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N16
\u_datapath|u_less_than|LessThan0~3\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N18
\u_datapath|u_less_than|LessThan0~5\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N20
\u_datapath|u_less_than|LessThan0~7\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N22
\u_datapath|u_less_than|LessThan0~9\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N24
\u_datapath|u_less_than|LessThan0~11\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N26
\u_datapath|u_less_than|LessThan0~13\ : cycloneiv_lcell_comb
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

-- Location: LCCOMB_X1_Y14_N28
\u_datapath|u_less_than|LessThan0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_datapath|u_less_than|LessThan0~14_combout\ = (\u_datapath|u_i_B|o_Q\(7) & ((\u_datapath|u_less_than|LessThan0~13_cout\) # (!\u_datapath|u_AsubMultRes|Add0~14_combout\))) # (!\u_datapath|u_i_B|o_Q\(7) & (\u_datapath|u_less_than|LessThan0~13_cout\ & 
-- !\u_datapath|u_AsubMultRes|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_i_B|o_Q\(7),
	datad => \u_datapath|u_AsubMultRes|Add0~14_combout\,
	cin => \u_datapath|u_less_than|LessThan0~13_cout\,
	combout => \u_datapath|u_less_than|LessThan0~14_combout\);

-- Location: LCCOMB_X1_Y14_N10
\u_control|next_state.s2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_control|next_state.s2~0_combout\ = (\u_control|state.s1~q\ & !\u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s1~q\,
	datad => \u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_control|next_state.s2~0_combout\);

-- Location: FF_X1_Y14_N11
\u_control|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_control|next_state.s2~0_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state.s2~q\);

-- Location: LCCOMB_X1_Y14_N0
\u_control|next_state.s1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_control|next_state.s1~combout\ = (\u_control|state.s0~q\) # (\u_control|state.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state.s0~q\,
	datad => \u_control|state.s2~q\,
	combout => \u_control|next_state.s1~combout\);

-- Location: FF_X1_Y14_N1
\u_control|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_control|next_state.s1~combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state.s1~q\);

-- Location: LCCOMB_X1_Y14_N8
\u_control|next_state.s3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_control|next_state.s3~0_combout\ = (\u_control|state.s1~q\ & \u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s1~q\,
	datad => \u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_control|next_state.s3~0_combout\);

-- Location: FF_X1_Y14_N9
\u_control|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_control|next_state.s3~0_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state.s3~q\);

-- Location: LCCOMB_X4_Y13_N28
\u_control|Selector0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state.s3~q\ & ((\u_control|state.idle~q\) # (!\i_startn~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_startn~input_o\,
	datac => \u_control|state.idle~q\,
	datad => \u_control|state.s3~q\,
	combout => \u_control|Selector0~0_combout\);

-- Location: FF_X4_Y13_N29
\u_control|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_control|Selector0~0_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_control|state.idle~q\);

-- Location: FF_X2_Y14_N13
\u_datapath|u_regOut|o_Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~0_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(0));

-- Location: FF_X2_Y14_N15
\u_datapath|u_regOut|o_Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~2_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(1));

-- Location: FF_X2_Y14_N17
\u_datapath|u_regOut|o_Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~4_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(2));

-- Location: FF_X2_Y14_N19
\u_datapath|u_regOut|o_Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~6_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(3));

-- Location: FF_X2_Y14_N21
\u_datapath|u_regOut|o_Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~8_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(4));

-- Location: FF_X2_Y14_N23
\u_datapath|u_regOut|o_Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~10_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(5));

-- Location: FF_X2_Y14_N25
\u_datapath|u_regOut|o_Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~12_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(6));

-- Location: FF_X2_Y14_N27
\u_datapath|u_regOut|o_Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~inputclkctrl_outclk\,
	d => \u_datapath|u_AsubMultRes|Add0~14_combout\,
	clrn => \i_clrn~inputclkctrl_outclk\,
	ena => \u_control|state.s3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_datapath|u_regOut|o_Q\(7));

ww_o_rdy <= \o_rdy~output_o\;

ww_o_S(0) <= \o_S[0]~output_o\;

ww_o_S(1) <= \o_S[1]~output_o\;

ww_o_S(2) <= \o_S[2]~output_o\;

ww_o_S(3) <= \o_S[3]~output_o\;

ww_o_S(4) <= \o_S[4]~output_o\;

ww_o_S(5) <= \o_S[5]~output_o\;

ww_o_S(6) <= \o_S[6]~output_o\;

ww_o_S(7) <= \o_S[7]~output_o\;
END structure;


