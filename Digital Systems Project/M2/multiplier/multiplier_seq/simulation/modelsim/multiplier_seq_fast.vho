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

-- DATE "06/14/2016 23:38:35"

-- 
-- Device: Altera EP2C50F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multiplier_seq IS
    PORT (
	i_CLK : IN std_logic;
	i_clrn : IN std_logic;
	i_start : IN std_logic;
	i_DINa : IN std_logic_vector(7 DOWNTO 0);
	i_DINb : IN std_logic_vector(7 DOWNTO 0);
	o_DOUT : OUT std_logic_vector(15 DOWNTO 0)
	);
END multiplier_seq;

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
-- i_CLK	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clrn	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINa[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_start	=>  Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[0]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[3]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[4]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[5]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[6]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_DINb[7]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF multiplier_seq IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_CLK : std_logic;
SIGNAL ww_i_clrn : std_logic;
SIGNAL ww_i_start : std_logic;
SIGNAL ww_i_DINa : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_DINb : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_DOUT : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_control|state.s16~regout\ : std_logic;
SIGNAL \u_control|state.s1~regout\ : std_logic;
SIGNAL \u_control|state.s11~regout\ : std_logic;
SIGNAL \u_op|add_0|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_control|Selector8~0_combout\ : std_logic;
SIGNAL \u_control|next_state.s1~0_combout\ : std_logic;
SIGNAL \u_control|next_state.s11~0_combout\ : std_logic;
SIGNAL \i_CLK~combout\ : std_logic;
SIGNAL \i_CLK~clkctrl_outclk\ : std_logic;
SIGNAL \reg_B|q[1]~feeder_combout\ : std_logic;
SIGNAL \i_clrn~combout\ : std_logic;
SIGNAL \i_start~combout\ : std_logic;
SIGNAL \u_button|Selector1~0_combout\ : std_logic;
SIGNAL \u_button|state.s1~regout\ : std_logic;
SIGNAL \u_button|next_state.s2~0_combout\ : std_logic;
SIGNAL \u_button|state.s2~regout\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_control|state.idle~regout\ : std_logic;
SIGNAL \u_control|next_state.start~0_combout\ : std_logic;
SIGNAL \u_control|state.start~regout\ : std_logic;
SIGNAL \reg_B|q[0]~feeder_combout\ : std_logic;
SIGNAL \u_control|state.s0~regout\ : std_logic;
SIGNAL \u_control|Selector1~0_combout\ : std_logic;
SIGNAL \u_control|state.s2~regout\ : std_logic;
SIGNAL \u_control|Selector2~0_combout\ : std_logic;
SIGNAL \u_control|state.s4~regout\ : std_logic;
SIGNAL \reg_B|q[3]~feeder_combout\ : std_logic;
SIGNAL \reg_B|q[2]~feeder_combout\ : std_logic;
SIGNAL \u_control|next_state.s5~0_combout\ : std_logic;
SIGNAL \u_control|state.s5~regout\ : std_logic;
SIGNAL \u_control|Selector3~0_combout\ : std_logic;
SIGNAL \u_control|state.s6~regout\ : std_logic;
SIGNAL \u_control|next_state.s7~0_combout\ : std_logic;
SIGNAL \u_control|state.s7~regout\ : std_logic;
SIGNAL \u_control|Selector4~0_combout\ : std_logic;
SIGNAL \u_control|state.s8~regout\ : std_logic;
SIGNAL \u_control|o_rsshr~0_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:1:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \reg_B|q[4]~feeder_combout\ : std_logic;
SIGNAL \u_control|next_state.s9~0_combout\ : std_logic;
SIGNAL \u_control|state.s9~regout\ : std_logic;
SIGNAL \u_control|Selector5~0_combout\ : std_logic;
SIGNAL \u_control|state.s10~regout\ : std_logic;
SIGNAL \u_control|Selector6~0_combout\ : std_logic;
SIGNAL \u_control|state.s12~regout\ : std_logic;
SIGNAL \u_control|next_state.s13~0_combout\ : std_logic;
SIGNAL \u_control|state.s13~regout\ : std_logic;
SIGNAL \u_control|Selector7~0_combout\ : std_logic;
SIGNAL \u_control|state.s14~regout\ : std_logic;
SIGNAL \u_control|o_rsshr~1_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~8_combout\ : std_logic;
SIGNAL \reg_B|q[7]~feeder_combout\ : std_logic;
SIGNAL \u_control|next_state.s15~0_combout\ : std_logic;
SIGNAL \u_control|state.s15~regout\ : std_logic;
SIGNAL \u_control|o_rsld~1_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[8]~7_combout\ : std_logic;
SIGNAL \u_control|o_rsshr~combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~6_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[7]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[6]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[5]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[4]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[2]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[1]~feeder_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data[0]~feeder_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:2:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:3:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~9_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~15_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~10_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~11_combout\ : std_logic;
SIGNAL \u_control|next_state.s3~0_combout\ : std_logic;
SIGNAL \u_control|state.s3~regout\ : std_logic;
SIGNAL \u_control|o_rsld~0_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:4:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:4:u_1|o_COUT~2_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~13_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~14_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~17_combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~12_combout\ : std_logic;
SIGNAL \u_op|add_0|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_op|rm_0|w_data~16_combout\ : std_logic;
SIGNAL \reg_B|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \reg_A|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_op|rm_0|w_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \i_DINb~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i_DINa~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_i_clrn~combout\ : std_logic;

BEGIN

ww_i_CLK <= i_CLK;
ww_i_clrn <= i_clrn;
ww_i_start <= i_start;
ww_i_DINa <= i_DINa;
ww_i_DINb <= i_DINb;
o_DOUT <= ww_o_DOUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_CLK~combout\);
\ALT_INV_i_clrn~combout\ <= NOT \i_clrn~combout\;

-- Location: LCFF_X76_Y1_N25
\u_control|state.s16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \u_control|Selector8~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s16~regout\);

-- Location: LCFF_X74_Y1_N11
\u_control|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s1~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s1~regout\);

-- Location: LCFF_X76_Y1_N11
\u_control|state.s11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s11~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s11~regout\);

-- Location: LCCOMB_X76_Y1_N24
\u_op|add_0|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:6:u_1|o_DOUT~0_combout\ = \u_op|rm_0|w_data\(14) $ (\reg_A|q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_op|rm_0|w_data\(14),
	datad => \reg_A|q\(6),
	combout => \u_op|add_0|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X77_Y1_N14
\u_control|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector8~0_combout\ = (\u_control|state.s15~regout\) # ((\u_control|state.s14~regout\ & !\reg_B|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s15~regout\,
	datac => \u_control|state.s14~regout\,
	datad => \reg_B|q\(7),
	combout => \u_control|Selector8~0_combout\);

-- Location: LCCOMB_X74_Y1_N10
\u_control|next_state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s1~0_combout\ = (\reg_B|q\(0) & \u_control|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|q\(0),
	datad => \u_control|state.s0~regout\,
	combout => \u_control|next_state.s1~0_combout\);

-- Location: LCCOMB_X76_Y1_N10
\u_control|next_state.s11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s11~0_combout\ = (\reg_B|q\(5) & \u_control|state.s10~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|q\(5),
	datad => \u_control|state.s10~regout\,
	combout => \u_control|next_state.s11~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_CLK~I\ : cycloneii_io
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
	padio => ww_i_CLK,
	combout => \i_CLK~combout\);

-- Location: CLKCTRL_G2
\i_CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i_CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i_CLK~clkctrl_outclk\);

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

-- Location: LCCOMB_X74_Y1_N8
\reg_B|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[1]~feeder_combout\ = \i_DINb~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(1),
	combout => \reg_B|q[1]~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_W26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_start~I\ : cycloneii_io
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
	padio => ww_i_start,
	combout => \i_start~combout\);

-- Location: LCCOMB_X78_Y1_N14
\u_button|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_button|Selector1~0_combout\ = (!\u_button|state.s2~regout\ & !\i_start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_button|state.s2~regout\,
	datad => \i_start~combout\,
	combout => \u_button|Selector1~0_combout\);

-- Location: LCFF_X78_Y1_N15
\u_button|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_button|Selector1~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_button|state.s1~regout\);

-- Location: LCCOMB_X78_Y1_N18
\u_button|next_state.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_button|next_state.s2~0_combout\ = (\u_button|state.s1~regout\ & \i_start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_button|state.s1~regout\,
	datad => \i_start~combout\,
	combout => \u_button|next_state.s2~0_combout\);

-- Location: LCFF_X78_Y1_N19
\u_button|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_button|next_state.s2~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_button|state.s2~regout\);

-- Location: LCCOMB_X76_Y1_N22
\u_control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state.s16~regout\ & ((\u_control|state.idle~regout\) # (\u_button|state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s16~regout\,
	datac => \u_control|state.idle~regout\,
	datad => \u_button|state.s2~regout\,
	combout => \u_control|Selector0~0_combout\);

-- Location: LCFF_X76_Y1_N23
\u_control|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector0~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.idle~regout\);

-- Location: LCCOMB_X76_Y1_N4
\u_control|next_state.start~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.start~0_combout\ = (!\u_control|state.idle~regout\ & \u_button|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.idle~regout\,
	datad => \u_button|state.s2~regout\,
	combout => \u_control|next_state.start~0_combout\);

-- Location: LCFF_X76_Y1_N5
\u_control|state.start\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.start~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.start~regout\);

-- Location: LCFF_X74_Y1_N9
\reg_B|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[1]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(1));

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

-- Location: LCCOMB_X74_Y1_N18
\reg_B|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[0]~feeder_combout\ = \i_DINb~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(0),
	combout => \reg_B|q[0]~feeder_combout\);

-- Location: LCFF_X74_Y1_N19
\reg_B|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[0]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(0));

-- Location: LCFF_X74_Y1_N1
\u_control|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \u_control|state.start~regout\,
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s0~regout\);

-- Location: LCCOMB_X74_Y1_N28
\u_control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector1~0_combout\ = (\u_control|state.s1~regout\) # ((!\reg_B|q\(0) & \u_control|state.s0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s1~regout\,
	datab => \reg_B|q\(0),
	datad => \u_control|state.s0~regout\,
	combout => \u_control|Selector1~0_combout\);

-- Location: LCFF_X74_Y1_N29
\u_control|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector1~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s2~regout\);

-- Location: LCCOMB_X74_Y1_N22
\u_control|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector2~0_combout\ = (\u_control|state.s3~regout\) # ((!\reg_B|q\(1) & \u_control|state.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s3~regout\,
	datac => \reg_B|q\(1),
	datad => \u_control|state.s2~regout\,
	combout => \u_control|Selector2~0_combout\);

-- Location: LCFF_X74_Y1_N23
\u_control|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector2~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s4~regout\);

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

-- Location: LCCOMB_X74_Y1_N4
\reg_B|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[3]~feeder_combout\ = \i_DINb~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(3),
	combout => \reg_B|q[3]~feeder_combout\);

-- Location: LCFF_X74_Y1_N5
\reg_B|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[3]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(3));

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

-- Location: LCCOMB_X74_Y1_N26
\reg_B|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[2]~feeder_combout\ = \i_DINb~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(2),
	combout => \reg_B|q[2]~feeder_combout\);

-- Location: LCFF_X74_Y1_N27
\reg_B|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[2]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(2));

-- Location: LCCOMB_X74_Y1_N2
\u_control|next_state.s5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s5~0_combout\ = (\u_control|state.s4~regout\ & \reg_B|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s4~regout\,
	datad => \reg_B|q\(2),
	combout => \u_control|next_state.s5~0_combout\);

-- Location: LCFF_X74_Y1_N3
\u_control|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s5~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s5~regout\);

-- Location: LCCOMB_X74_Y1_N20
\u_control|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector3~0_combout\ = (\u_control|state.s5~regout\) # ((\u_control|state.s4~regout\ & !\reg_B|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s5~regout\,
	datac => \u_control|state.s4~regout\,
	datad => \reg_B|q\(2),
	combout => \u_control|Selector3~0_combout\);

-- Location: LCFF_X74_Y1_N21
\u_control|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector3~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s6~regout\);

-- Location: LCCOMB_X74_Y1_N12
\u_control|next_state.s7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s7~0_combout\ = (\reg_B|q\(3) & \u_control|state.s6~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|q\(3),
	datac => \u_control|state.s6~regout\,
	combout => \u_control|next_state.s7~0_combout\);

-- Location: LCFF_X74_Y1_N13
\u_control|state.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s7~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s7~regout\);

-- Location: LCCOMB_X74_Y1_N30
\u_control|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector4~0_combout\ = (\u_control|state.s7~regout\) # ((!\reg_B|q\(3) & \u_control|state.s6~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|q\(3),
	datac => \u_control|state.s6~regout\,
	datad => \u_control|state.s7~regout\,
	combout => \u_control|Selector4~0_combout\);

-- Location: LCFF_X74_Y1_N31
\u_control|state.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector4~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s8~regout\);

-- Location: LCCOMB_X74_Y1_N24
\u_control|o_rsshr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|o_rsshr~0_combout\ = (\u_control|state.s6~regout\) # ((\u_control|state.s4~regout\) # ((\u_control|state.s8~regout\) # (\u_control|state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s6~regout\,
	datab => \u_control|state.s4~regout\,
	datac => \u_control|state.s8~regout\,
	datad => \u_control|state.s2~regout\,
	combout => \u_control|o_rsshr~0_combout\);

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

-- Location: LCFF_X75_Y1_N25
\reg_A|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(1),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(1));

-- Location: LCCOMB_X75_Y1_N24
\u_op|add_0|f_0:1:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:1:u_1|o_DOUT~0_combout\ = \u_op|rm_0|w_data\(9) $ (\reg_A|q\(1) $ (((\reg_A|q\(0) & \u_op|rm_0|w_data\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|q\(0),
	datab => \u_op|rm_0|w_data\(9),
	datac => \reg_A|q\(1),
	datad => \u_op|rm_0|w_data\(8),
	combout => \u_op|add_0|f_0:1:u_1|o_DOUT~0_combout\);

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

-- Location: LCFF_X75_Y1_N23
\reg_B|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINb~combout\(5),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(5));

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

-- Location: LCCOMB_X74_Y1_N6
\reg_B|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[4]~feeder_combout\ = \i_DINb~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(4),
	combout => \reg_B|q[4]~feeder_combout\);

-- Location: LCFF_X74_Y1_N7
\reg_B|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[4]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(4));

-- Location: LCCOMB_X77_Y1_N8
\u_control|next_state.s9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s9~0_combout\ = (\reg_B|q\(4) & \u_control|state.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_B|q\(4),
	datad => \u_control|state.s8~regout\,
	combout => \u_control|next_state.s9~0_combout\);

-- Location: LCFF_X76_Y1_N17
\u_control|state.s9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \u_control|next_state.s9~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s9~regout\);

-- Location: LCCOMB_X77_Y1_N0
\u_control|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector5~0_combout\ = (\u_control|state.s9~regout\) # ((\u_control|state.s8~regout\ & !\reg_B|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s8~regout\,
	datac => \reg_B|q\(4),
	datad => \u_control|state.s9~regout\,
	combout => \u_control|Selector5~0_combout\);

-- Location: LCFF_X76_Y1_N19
\u_control|state.s10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \u_control|Selector5~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s10~regout\);

-- Location: LCCOMB_X76_Y1_N28
\u_control|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector6~0_combout\ = (\u_control|state.s11~regout\) # ((!\reg_B|q\(5) & \u_control|state.s10~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s11~regout\,
	datab => \reg_B|q\(5),
	datad => \u_control|state.s10~regout\,
	combout => \u_control|Selector6~0_combout\);

-- Location: LCFF_X76_Y1_N29
\u_control|state.s12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector6~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s12~regout\);

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

-- Location: LCFF_X75_Y1_N5
\reg_B|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINb~combout\(6),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(6));

-- Location: LCCOMB_X76_Y1_N8
\u_control|next_state.s13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s13~0_combout\ = (\reg_B|q\(6) & \u_control|state.s12~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_B|q\(6),
	datad => \u_control|state.s12~regout\,
	combout => \u_control|next_state.s13~0_combout\);

-- Location: LCFF_X76_Y1_N9
\u_control|state.s13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s13~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s13~regout\);

-- Location: LCCOMB_X76_Y1_N30
\u_control|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector7~0_combout\ = (\u_control|state.s13~regout\) # ((!\reg_B|q\(6) & \u_control|state.s12~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s13~regout\,
	datac => \reg_B|q\(6),
	datad => \u_control|state.s12~regout\,
	combout => \u_control|Selector7~0_combout\);

-- Location: LCFF_X76_Y1_N31
\u_control|state.s14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|Selector7~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s14~regout\);

-- Location: LCCOMB_X76_Y1_N18
\u_control|o_rsshr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|o_rsshr~1_combout\ = (\u_control|state.s16~regout\) # ((\u_control|state.s12~regout\) # ((\u_control|state.s10~regout\) # (\u_control|state.s14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s16~regout\,
	datab => \u_control|state.s12~regout\,
	datac => \u_control|state.s10~regout\,
	datad => \u_control|state.s14~regout\,
	combout => \u_control|o_rsshr~1_combout\);

-- Location: LCCOMB_X75_Y1_N6
\u_op|rm_0|w_data~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~8_combout\ = (\u_control|o_rsshr~0_combout\ & (\u_op|rm_0|w_data\(10))) # (!\u_control|o_rsshr~0_combout\ & ((\u_control|o_rsshr~1_combout\ & (\u_op|rm_0|w_data\(10))) # (!\u_control|o_rsshr~1_combout\ & 
-- ((\u_op|add_0|f_0:1:u_1|o_DOUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(10),
	datab => \u_control|o_rsshr~0_combout\,
	datac => \u_op|add_0|f_0:1:u_1|o_DOUT~0_combout\,
	datad => \u_control|o_rsshr~1_combout\,
	combout => \u_op|rm_0|w_data~8_combout\);

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

-- Location: LCCOMB_X78_Y1_N4
\reg_B|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \reg_B|q[7]~feeder_combout\ = \i_DINb~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_DINb~combout\(7),
	combout => \reg_B|q[7]~feeder_combout\);

-- Location: LCFF_X78_Y1_N5
\reg_B|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \reg_B|q[7]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_B|q\(7));

-- Location: LCCOMB_X78_Y1_N16
\u_control|next_state.s15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s15~0_combout\ = (\reg_B|q\(7) & \u_control|state.s14~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_B|q\(7),
	datad => \u_control|state.s14~regout\,
	combout => \u_control|next_state.s15~0_combout\);

-- Location: LCFF_X78_Y1_N17
\u_control|state.s15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s15~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s15~regout\);

-- Location: LCCOMB_X76_Y1_N16
\u_control|o_rsld~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|o_rsld~1_combout\ = (!\u_control|state.s11~regout\ & (!\u_control|state.s13~regout\ & (!\u_control|state.s9~regout\ & !\u_control|state.s15~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s11~regout\,
	datab => \u_control|state.s13~regout\,
	datac => \u_control|state.s9~regout\,
	datad => \u_control|state.s15~regout\,
	combout => \u_control|o_rsld~1_combout\);

-- Location: LCCOMB_X75_Y1_N30
\u_op|rm_0|w_data[8]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[8]~7_combout\ = ((\u_control|o_rsshr~0_combout\) # ((\u_control|o_rsshr~1_combout\) # (!\u_control|o_rsld~1_combout\))) # (!\u_control|o_rsld~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsld~0_combout\,
	datab => \u_control|o_rsshr~0_combout\,
	datac => \u_control|o_rsld~1_combout\,
	datad => \u_control|o_rsshr~1_combout\,
	combout => \u_op|rm_0|w_data[8]~7_combout\);

-- Location: LCFF_X75_Y1_N7
\u_op|rm_0|w_data[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~8_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(9));

-- Location: LCCOMB_X76_Y1_N2
\u_control|o_rsshr\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|o_rsshr~combout\ = (\u_control|o_rsshr~1_combout\) # (\u_control|o_rsshr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsshr~1_combout\,
	datac => \u_control|o_rsshr~0_combout\,
	combout => \u_control|o_rsshr~combout\);

-- Location: LCCOMB_X75_Y1_N16
\u_op|rm_0|w_data~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~6_combout\ = (\u_control|o_rsshr~combout\ & (((\u_op|rm_0|w_data\(9))))) # (!\u_control|o_rsshr~combout\ & (\reg_A|q\(0) $ (((\u_op|rm_0|w_data\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|q\(0),
	datab => \u_op|rm_0|w_data\(9),
	datac => \u_op|rm_0|w_data\(8),
	datad => \u_control|o_rsshr~combout\,
	combout => \u_op|rm_0|w_data~6_combout\);

-- Location: LCFF_X75_Y1_N17
\u_op|rm_0|w_data[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~6_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(8));

-- Location: LCCOMB_X77_Y1_N26
\u_op|rm_0|w_data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[7]~feeder_combout\ = \u_op|rm_0|w_data\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(8),
	combout => \u_op|rm_0|w_data[7]~feeder_combout\);

-- Location: LCFF_X77_Y1_N27
\u_op|rm_0|w_data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[7]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(7));

-- Location: LCCOMB_X77_Y1_N28
\u_op|rm_0|w_data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[6]~feeder_combout\ = \u_op|rm_0|w_data\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(7),
	combout => \u_op|rm_0|w_data[6]~feeder_combout\);

-- Location: LCFF_X77_Y1_N29
\u_op|rm_0|w_data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[6]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(6));

-- Location: LCCOMB_X77_Y1_N2
\u_op|rm_0|w_data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[5]~feeder_combout\ = \u_op|rm_0|w_data\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(6),
	combout => \u_op|rm_0|w_data[5]~feeder_combout\);

-- Location: LCFF_X77_Y1_N3
\u_op|rm_0|w_data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[5]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(5));

-- Location: LCCOMB_X77_Y1_N4
\u_op|rm_0|w_data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[4]~feeder_combout\ = \u_op|rm_0|w_data\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(5),
	combout => \u_op|rm_0|w_data[4]~feeder_combout\);

-- Location: LCFF_X77_Y1_N5
\u_op|rm_0|w_data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[4]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(4));

-- Location: LCFF_X77_Y1_N11
\u_op|rm_0|w_data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \u_op|rm_0|w_data\(4),
	aclr => \u_control|state.start~regout\,
	sload => VCC,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(3));

-- Location: LCCOMB_X77_Y1_N12
\u_op|rm_0|w_data[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[2]~feeder_combout\ = \u_op|rm_0|w_data\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(3),
	combout => \u_op|rm_0|w_data[2]~feeder_combout\);

-- Location: LCFF_X77_Y1_N13
\u_op|rm_0|w_data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[2]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(2));

-- Location: LCCOMB_X77_Y1_N22
\u_op|rm_0|w_data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[1]~feeder_combout\ = \u_op|rm_0|w_data\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(2),
	combout => \u_op|rm_0|w_data[1]~feeder_combout\);

-- Location: LCFF_X77_Y1_N23
\u_op|rm_0|w_data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[1]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(1));

-- Location: LCCOMB_X77_Y1_N24
\u_op|rm_0|w_data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data[0]~feeder_combout\ = \u_op|rm_0|w_data\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_op|rm_0|w_data\(1),
	combout => \u_op|rm_0|w_data[0]~feeder_combout\);

-- Location: LCFF_X77_Y1_N25
\u_op|rm_0|w_data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data[0]~feeder_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_control|o_rsshr~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(0));

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

-- Location: LCFF_X75_Y1_N9
\reg_A|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(0),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(0));

-- Location: LCCOMB_X75_Y1_N20
\u_op|add_0|f_0:1:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\ = (\reg_A|q\(1) & ((\u_op|rm_0|w_data\(9)) # ((\reg_A|q\(0) & \u_op|rm_0|w_data\(8))))) # (!\reg_A|q\(1) & (\reg_A|q\(0) & (\u_op|rm_0|w_data\(8) & \u_op|rm_0|w_data\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|q\(1),
	datab => \reg_A|q\(0),
	datac => \u_op|rm_0|w_data\(8),
	datad => \u_op|rm_0|w_data\(9),
	combout => \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\);

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

-- Location: LCFF_X75_Y1_N27
\reg_A|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(2),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(2));

-- Location: LCCOMB_X75_Y1_N8
\u_op|add_0|f_0:2:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:2:u_1|o_DOUT~0_combout\ = \u_op|rm_0|w_data\(10) $ (\u_op|add_0|f_0:1:u_1|o_COUT~0_combout\ $ (\reg_A|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(10),
	datab => \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\,
	datad => \reg_A|q\(2),
	combout => \u_op|add_0|f_0:2:u_1|o_DOUT~0_combout\);

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

-- Location: LCFF_X75_Y1_N3
\reg_A|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(3),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(3));

-- Location: LCCOMB_X75_Y1_N26
\u_op|add_0|f_0:3:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:3:u_1|o_DOUT~0_combout\ = \reg_A|q\(3) $ (((\u_op|rm_0|w_data\(10) & ((\u_op|add_0|f_0:1:u_1|o_COUT~0_combout\) # (\reg_A|q\(2)))) # (!\u_op|rm_0|w_data\(10) & (\u_op|add_0|f_0:1:u_1|o_COUT~0_combout\ & \reg_A|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(10),
	datab => \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\,
	datac => \reg_A|q\(2),
	datad => \reg_A|q\(3),
	combout => \u_op|add_0|f_0:3:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X76_Y1_N26
\u_op|rm_0|w_data~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~9_combout\ = (\u_control|o_rsshr~combout\ & (\u_op|rm_0|w_data\(12))) # (!\u_control|o_rsshr~combout\ & ((\u_op|add_0|f_0:3:u_1|o_DOUT~0_combout\ $ (\u_op|rm_0|w_data\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(12),
	datab => \u_op|add_0|f_0:3:u_1|o_DOUT~0_combout\,
	datac => \u_op|rm_0|w_data\(11),
	datad => \u_control|o_rsshr~combout\,
	combout => \u_op|rm_0|w_data~9_combout\);

-- Location: LCFF_X76_Y1_N27
\u_op|rm_0|w_data[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~9_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(11));

-- Location: LCCOMB_X76_Y1_N12
\u_op|rm_0|w_data~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~15_combout\ = (\u_control|o_rsshr~0_combout\ & (((\u_op|rm_0|w_data\(11))))) # (!\u_control|o_rsshr~0_combout\ & ((\u_control|o_rsshr~1_combout\ & ((\u_op|rm_0|w_data\(11)))) # (!\u_control|o_rsshr~1_combout\ & 
-- (\u_op|add_0|f_0:2:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsshr~0_combout\,
	datab => \u_op|add_0|f_0:2:u_1|o_DOUT~0_combout\,
	datac => \u_control|o_rsshr~1_combout\,
	datad => \u_op|rm_0|w_data\(11),
	combout => \u_op|rm_0|w_data~15_combout\);

-- Location: LCFF_X76_Y1_N13
\u_op|rm_0|w_data[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~15_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(10));

-- Location: LCCOMB_X75_Y1_N4
\u_op|add_0|f_0:2:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\ = (\reg_A|q\(2) & ((\u_op|rm_0|w_data\(10)) # (\u_op|add_0|f_0:1:u_1|o_COUT~0_combout\))) # (!\reg_A|q\(2) & (\u_op|rm_0|w_data\(10) & \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reg_A|q\(2),
	datab => \u_op|rm_0|w_data\(10),
	datad => \u_op|add_0|f_0:1:u_1|o_COUT~0_combout\,
	combout => \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\);

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

-- Location: LCFF_X75_Y1_N19
\reg_A|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(4),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(4));

-- Location: LCCOMB_X75_Y1_N18
\u_op|rm_0|w_data~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~10_combout\ = \reg_A|q\(4) $ (((\u_op|rm_0|w_data\(11) & ((\u_op|add_0|f_0:2:u_1|o_COUT~0_combout\) # (\reg_A|q\(3)))) # (!\u_op|rm_0|w_data\(11) & (\u_op|add_0|f_0:2:u_1|o_COUT~0_combout\ & \reg_A|q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(11),
	datab => \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\,
	datac => \reg_A|q\(4),
	datad => \reg_A|q\(3),
	combout => \u_op|rm_0|w_data~10_combout\);

-- Location: LCCOMB_X76_Y1_N20
\u_op|rm_0|w_data~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~11_combout\ = (\u_control|o_rsshr~combout\ & (\u_op|rm_0|w_data\(13))) # (!\u_control|o_rsshr~combout\ & ((\u_op|rm_0|w_data~10_combout\ $ (\u_op|rm_0|w_data\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(13),
	datab => \u_op|rm_0|w_data~10_combout\,
	datac => \u_op|rm_0|w_data\(12),
	datad => \u_control|o_rsshr~combout\,
	combout => \u_op|rm_0|w_data~11_combout\);

-- Location: LCFF_X76_Y1_N21
\u_op|rm_0|w_data[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~11_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(12));

-- Location: LCCOMB_X74_Y1_N16
\u_control|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s3~0_combout\ = (\reg_B|q\(1) & \u_control|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reg_B|q\(1),
	datad => \u_control|state.s2~regout\,
	combout => \u_control|next_state.s3~0_combout\);

-- Location: LCFF_X74_Y1_N17
\u_control|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_control|next_state.s3~0_combout\,
	aclr => \ALT_INV_i_clrn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s3~regout\);

-- Location: LCCOMB_X74_Y1_N14
\u_control|o_rsld~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|o_rsld~0_combout\ = (!\u_control|state.s1~regout\ & (!\u_control|state.s5~regout\ & (!\u_control|state.s3~regout\ & !\u_control|state.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s1~regout\,
	datab => \u_control|state.s5~regout\,
	datac => \u_control|state.s3~regout\,
	datad => \u_control|state.s7~regout\,
	combout => \u_control|o_rsld~0_combout\);

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

-- Location: LCFF_X75_Y1_N15
\reg_A|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(7),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(7));

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

-- Location: LCFF_X75_Y1_N13
\reg_A|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(6),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(6));

-- Location: LCCOMB_X75_Y1_N22
\u_op|add_0|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:4:u_1|o_COUT~0_combout\ = (\reg_A|q\(4) & \u_op|rm_0|w_data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_A|q\(4),
	datad => \u_op|rm_0|w_data\(12),
	combout => \u_op|add_0|f_0:4:u_1|o_COUT~0_combout\);

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

-- Location: LCFF_X75_Y1_N1
\reg_A|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	sdata => \i_DINa~combout\(5),
	aclr => \ALT_INV_i_clrn~combout\,
	sload => VCC,
	ena => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \reg_A|q\(5));

-- Location: LCCOMB_X75_Y1_N2
\u_op|add_0|f_0:4:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:4:u_1|o_COUT~1_combout\ = (\reg_A|q\(4)) # (\u_op|rm_0|w_data\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reg_A|q\(4),
	datad => \u_op|rm_0|w_data\(12),
	combout => \u_op|add_0|f_0:4:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X75_Y1_N28
\u_op|add_0|f_0:4:u_1|o_COUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:4:u_1|o_COUT~2_combout\ = (\u_op|add_0|f_0:4:u_1|o_COUT~1_combout\ & ((\u_op|rm_0|w_data\(11) & ((\reg_A|q\(3)) # (\u_op|add_0|f_0:2:u_1|o_COUT~0_combout\))) # (!\u_op|rm_0|w_data\(11) & (\reg_A|q\(3) & 
-- \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(11),
	datab => \reg_A|q\(3),
	datac => \u_op|add_0|f_0:2:u_1|o_COUT~0_combout\,
	datad => \u_op|add_0|f_0:4:u_1|o_COUT~1_combout\,
	combout => \u_op|add_0|f_0:4:u_1|o_COUT~2_combout\);

-- Location: LCCOMB_X75_Y1_N0
\u_op|add_0|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\ = (\u_op|rm_0|w_data\(13) & ((\u_op|add_0|f_0:4:u_1|o_COUT~0_combout\) # ((\reg_A|q\(5)) # (\u_op|add_0|f_0:4:u_1|o_COUT~2_combout\)))) # (!\u_op|rm_0|w_data\(13) & (\reg_A|q\(5) & 
-- ((\u_op|add_0|f_0:4:u_1|o_COUT~0_combout\) # (\u_op|add_0|f_0:4:u_1|o_COUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(13),
	datab => \u_op|add_0|f_0:4:u_1|o_COUT~0_combout\,
	datac => \reg_A|q\(5),
	datad => \u_op|add_0|f_0:4:u_1|o_COUT~2_combout\,
	combout => \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X75_Y1_N12
\u_op|rm_0|w_data~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~13_combout\ = (\u_op|rm_0|w_data\(14) & ((\reg_A|q\(6)) # (\u_op|add_0|f_0:5:u_1|o_COUT~0_combout\))) # (!\u_op|rm_0|w_data\(14) & (\reg_A|q\(6) & \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(14),
	datac => \reg_A|q\(6),
	datad => \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_op|rm_0|w_data~13_combout\);

-- Location: LCCOMB_X75_Y1_N14
\u_op|rm_0|w_data~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~14_combout\ = (\u_control|o_rsld~1_combout\ & (!\u_control|o_rsld~0_combout\ & (\reg_A|q\(7) $ (\u_op|rm_0|w_data~13_combout\)))) # (!\u_control|o_rsld~1_combout\ & ((\reg_A|q\(7) $ (\u_op|rm_0|w_data~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsld~1_combout\,
	datab => \u_control|o_rsld~0_combout\,
	datac => \reg_A|q\(7),
	datad => \u_op|rm_0|w_data~13_combout\,
	combout => \u_op|rm_0|w_data~14_combout\);

-- Location: LCCOMB_X76_Y1_N14
\u_op|rm_0|w_data~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~17_combout\ = (!\u_control|o_rsshr~0_combout\ & (!\u_control|o_rsshr~1_combout\ & (\u_op|rm_0|w_data\(15) $ (\u_op|rm_0|w_data~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsshr~0_combout\,
	datab => \u_control|o_rsshr~1_combout\,
	datac => \u_op|rm_0|w_data\(15),
	datad => \u_op|rm_0|w_data~14_combout\,
	combout => \u_op|rm_0|w_data~17_combout\);

-- Location: LCFF_X76_Y1_N15
\u_op|rm_0|w_data[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~17_combout\,
	aclr => \u_control|state.start~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(15));

-- Location: LCCOMB_X76_Y1_N0
\u_op|rm_0|w_data~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~12_combout\ = (\u_control|o_rsshr~combout\ & (((\u_op|rm_0|w_data\(15))))) # (!\u_control|o_rsshr~combout\ & (\u_op|add_0|f_0:6:u_1|o_DOUT~0_combout\ $ (((\u_op|add_0|f_0:5:u_1|o_COUT~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|add_0|f_0:6:u_1|o_DOUT~0_combout\,
	datab => \u_op|rm_0|w_data\(15),
	datac => \u_op|add_0|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_control|o_rsshr~combout\,
	combout => \u_op|rm_0|w_data~12_combout\);

-- Location: LCFF_X76_Y1_N1
\u_op|rm_0|w_data[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~12_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(14));

-- Location: LCCOMB_X75_Y1_N10
\u_op|add_0|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|add_0|f_0:5:u_1|o_DOUT~combout\ = \u_op|rm_0|w_data\(13) $ (\reg_A|q\(5) $ (((\u_op|add_0|f_0:4:u_1|o_COUT~2_combout\) # (\u_op|add_0|f_0:4:u_1|o_COUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_op|rm_0|w_data\(13),
	datab => \u_op|add_0|f_0:4:u_1|o_COUT~2_combout\,
	datac => \reg_A|q\(5),
	datad => \u_op|add_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_op|add_0|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X76_Y1_N6
\u_op|rm_0|w_data~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_op|rm_0|w_data~16_combout\ = (\u_control|o_rsshr~0_combout\ & (\u_op|rm_0|w_data\(14))) # (!\u_control|o_rsshr~0_combout\ & ((\u_control|o_rsshr~1_combout\ & (\u_op|rm_0|w_data\(14))) # (!\u_control|o_rsshr~1_combout\ & 
-- ((\u_op|add_0|f_0:5:u_1|o_DOUT~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|o_rsshr~0_combout\,
	datab => \u_op|rm_0|w_data\(14),
	datac => \u_control|o_rsshr~1_combout\,
	datad => \u_op|add_0|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_op|rm_0|w_data~16_combout\);

-- Location: LCFF_X76_Y1_N7
\u_op|rm_0|w_data[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_CLK~clkctrl_outclk\,
	datain => \u_op|rm_0|w_data~16_combout\,
	aclr => \u_control|state.start~regout\,
	ena => \u_op|rm_0|w_data[8]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_op|rm_0|w_data\(13));

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
	datain => \u_op|rm_0|w_data\(0),
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
	datain => \u_op|rm_0|w_data\(1),
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
	datain => \u_op|rm_0|w_data\(2),
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
	datain => \u_op|rm_0|w_data\(3),
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
	datain => \u_op|rm_0|w_data\(4),
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
	datain => \u_op|rm_0|w_data\(5),
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
	datain => \u_op|rm_0|w_data\(6),
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
	datain => \u_op|rm_0|w_data\(7),
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
	datain => \u_op|rm_0|w_data\(8),
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
	datain => \u_op|rm_0|w_data\(9),
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
	datain => \u_op|rm_0|w_data\(10),
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
	datain => \u_op|rm_0|w_data\(11),
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
	datain => \u_op|rm_0|w_data\(12),
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
	datain => \u_op|rm_0|w_data\(13),
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
	datain => \u_op|rm_0|w_data\(14),
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
	datain => \u_op|rm_0|w_data\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_DOUT(15));
END structure;


