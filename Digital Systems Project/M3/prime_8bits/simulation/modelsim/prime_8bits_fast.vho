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

-- DATE "07/14/2016 21:53:24"

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

ENTITY 	prime_8bits IS
    PORT (
	i_clk : IN std_logic;
	i_clrn : IN std_logic;
	i_startn : IN std_logic;
	i_data : IN std_logic_vector(7 DOWNTO 0);
	o_res : OUT std_logic;
	o_rdy : OUT std_logic
	);
END prime_8bits;

-- Design Ports Information
-- o_res	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_rdy	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_clrn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_startn	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[7]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[6]	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[5]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[4]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[3]	=>  Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[2]	=>  Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[1]	=>  Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_data[0]	=>  Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF prime_8bits IS
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
SIGNAL ww_i_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_o_res : std_logic;
SIGNAL ww_o_rdy : std_logic;
SIGNAL \i_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i_clrn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_datapath|u_contDiv|q[2]~9_combout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[5]~16\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[6]~17_combout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[6]~18\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[7]~20_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[5]~16\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[6]~18_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[6]~19\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[7]~20_combout\ : std_logic;
SIGNAL \u_datapath|u_regOut|o_Q[0]~1_combout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[0]~19_combout\ : std_logic;
SIGNAL \u_control|state.s2~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6_combout\ : std_logic;
SIGNAL \u_control|Selector1~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_regX|o_Q[4]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_regX|o_Q[3]~feeder_combout\ : std_logic;
SIGNAL \i_clk~combout\ : std_logic;
SIGNAL \i_clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_control|Selector0~0_combout\ : std_logic;
SIGNAL \i_clrn~combout\ : std_logic;
SIGNAL \i_clrn~clkctrl_outclk\ : std_logic;
SIGNAL \u_control|state.idle~regout\ : std_logic;
SIGNAL \u_control|next_state.init~0_combout\ : std_logic;
SIGNAL \u_control|state.init~regout\ : std_logic;
SIGNAL \u_datapath|u_regX|o_Q[7]~feeder_combout\ : std_logic;
SIGNAL \i_startn~combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[0]~21_combout\ : std_logic;
SIGNAL \u_datapath|w_clrnRegs~combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[1]~8\ : std_logic;
SIGNAL \u_datapath|u_countI|q[2]~9_combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[2]~10\ : std_logic;
SIGNAL \u_datapath|u_countI|q[3]~12\ : std_logic;
SIGNAL \u_datapath|u_countI|q[4]~14\ : std_logic;
SIGNAL \u_datapath|u_countI|q[5]~15_combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[5]~16\ : std_logic;
SIGNAL \u_datapath|u_countI|q[6]~17_combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[4]~13_combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[3]~11_combout\ : std_logic;
SIGNAL \u_datapath|u_regX|o_Q[2]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_regX|o_Q[1]~feeder_combout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~1_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~3_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~5_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~7_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~9_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~11_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~13_cout\ : std_logic;
SIGNAL \u_datapath|u_biggerthan|LessThan0~14_combout\ : std_logic;
SIGNAL \u_control|next_state.s1~0_combout\ : std_logic;
SIGNAL \u_control|state.s1~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|next_state.s0~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|state.s0~regout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[6]~18\ : std_logic;
SIGNAL \u_datapath|u_countI|q[7]~19_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[0]~17_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|w_clrnK~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[1]~7_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[1]~8\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[2]~9_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_i_B|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_countI|q[1]~7_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[2]~10\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[3]~12\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[4]~13_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[3]~11_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[4]~14\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q[5]~15_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~13\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|next_state.s2~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|state.s2~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|next_state.s1~combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|state.s1~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|next_state.s3~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|state.s3~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|Selector0~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_control|state.idle~regout\ : std_logic;
SIGNAL \u_control|next_state.s3~0_combout\ : std_logic;
SIGNAL \u_control|state.s3~regout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\ : std_logic;
SIGNAL \u_datapath|u_equal|Equal0~1_combout\ : std_logic;
SIGNAL \u_datapath|u_equal|Equal0~0_combout\ : std_logic;
SIGNAL \u_control|Selector2~0_combout\ : std_logic;
SIGNAL \u_control|state.s5~regout\ : std_logic;
SIGNAL \u_control|next_state.s0~combout\ : std_logic;
SIGNAL \u_control|state.s0~regout\ : std_logic;
SIGNAL \u_control|next_state.s6~0_combout\ : std_logic;
SIGNAL \u_control|state.s6~feeder_combout\ : std_logic;
SIGNAL \u_control|state.s6~regout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[1]~7_combout\ : std_logic;
SIGNAL \u_control|next_state.s4~0_combout\ : std_logic;
SIGNAL \u_control|state.s4~regout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[1]~8\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[2]~10\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[3]~11_combout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[3]~12\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[4]~14\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[5]~15_combout\ : std_logic;
SIGNAL \u_datapath|u_contDiv|q[4]~13_combout\ : std_logic;
SIGNAL \u_datapath|u_regOut|o_Q[0]~0_combout\ : std_logic;
SIGNAL \u_datapath|u_regOut|o_Q[0]~2_combout\ : std_logic;
SIGNAL \u_datapath|u_module|u_datapath|u_i_A|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_i_B|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_regOut|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_contDiv|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_regX|o_Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_countI|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_contK|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u_datapath|u_regOut|o_Q\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \i_data~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_control|ALT_INV_state.idle~regout\ : std_logic;
SIGNAL \ALT_INV_i_clrn~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_i_startn~combout\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_clrn <= i_clrn;
ww_i_startn <= i_startn;
ww_i_data <= i_data;
o_res <= ww_o_res;
o_rdy <= ww_o_rdy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\i_clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_clk~combout\);

\i_clrn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i_clrn~combout\);
\u_control|ALT_INV_state.idle~regout\ <= NOT \u_control|state.idle~regout\;
\ALT_INV_i_clrn~clkctrl_outclk\ <= NOT \i_clrn~clkctrl_outclk\;
\ALT_INV_i_startn~combout\ <= NOT \i_startn~combout\;

-- Location: LCFF_X47_Y19_N25
\u_datapath|u_contDiv|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[6]~17_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(6));

-- Location: LCFF_X47_Y19_N17
\u_datapath|u_contDiv|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[2]~9_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(2));

-- Location: LCFF_X47_Y19_N27
\u_datapath|u_contDiv|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[7]~20_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(7));

-- Location: LCCOMB_X47_Y19_N16
\u_datapath|u_contDiv|q[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[2]~9_combout\ = (\u_datapath|u_contDiv|q\(2) & (!\u_datapath|u_contDiv|q[1]~8\)) # (!\u_datapath|u_contDiv|q\(2) & ((\u_datapath|u_contDiv|q[1]~8\) # (GND)))
-- \u_datapath|u_contDiv|q[2]~10\ = CARRY((!\u_datapath|u_contDiv|q[1]~8\) # (!\u_datapath|u_contDiv|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(2),
	datad => VCC,
	cin => \u_datapath|u_contDiv|q[1]~8\,
	combout => \u_datapath|u_contDiv|q[2]~9_combout\,
	cout => \u_datapath|u_contDiv|q[2]~10\);

-- Location: LCCOMB_X47_Y19_N22
\u_datapath|u_contDiv|q[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[5]~15_combout\ = (\u_datapath|u_contDiv|q\(5) & (\u_datapath|u_contDiv|q[4]~14\ $ (GND))) # (!\u_datapath|u_contDiv|q\(5) & (!\u_datapath|u_contDiv|q[4]~14\ & VCC))
-- \u_datapath|u_contDiv|q[5]~16\ = CARRY((\u_datapath|u_contDiv|q\(5) & !\u_datapath|u_contDiv|q[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contDiv|q\(5),
	datad => VCC,
	cin => \u_datapath|u_contDiv|q[4]~14\,
	combout => \u_datapath|u_contDiv|q[5]~15_combout\,
	cout => \u_datapath|u_contDiv|q[5]~16\);

-- Location: LCCOMB_X47_Y19_N24
\u_datapath|u_contDiv|q[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[6]~17_combout\ = (\u_datapath|u_contDiv|q\(6) & (!\u_datapath|u_contDiv|q[5]~16\)) # (!\u_datapath|u_contDiv|q\(6) & ((\u_datapath|u_contDiv|q[5]~16\) # (GND)))
-- \u_datapath|u_contDiv|q[6]~18\ = CARRY((!\u_datapath|u_contDiv|q[5]~16\) # (!\u_datapath|u_contDiv|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(6),
	datad => VCC,
	cin => \u_datapath|u_contDiv|q[5]~16\,
	combout => \u_datapath|u_contDiv|q[6]~17_combout\,
	cout => \u_datapath|u_contDiv|q[6]~18\);

-- Location: LCCOMB_X47_Y19_N26
\u_datapath|u_contDiv|q[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[7]~20_combout\ = \u_datapath|u_contDiv|q[6]~18\ $ (!\u_datapath|u_contDiv|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_datapath|u_contDiv|q\(7),
	cin => \u_datapath|u_contDiv|q[6]~18\,
	combout => \u_datapath|u_contDiv|q[7]~20_combout\);

-- Location: LCFF_X44_Y16_N13
\u_datapath|u_module|u_datapath|u_contK|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[6]~18_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(6));

-- Location: LCFF_X44_Y16_N15
\u_datapath|u_module|u_datapath|u_contK|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[7]~20_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(7));

-- Location: LCCOMB_X46_Y17_N24
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\ = ((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(4) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ $ (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\)))) # (GND)
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(4) & ((!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\))) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(4) & (!\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(4),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\);

-- Location: LCCOMB_X44_Y16_N10
\u_datapath|u_module|u_datapath|u_contK|q[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[5]~15_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(5) & (\u_datapath|u_module|u_datapath|u_contK|q[4]~14\ $ (GND))) # (!\u_datapath|u_module|u_datapath|u_contK|q\(5) & 
-- (!\u_datapath|u_module|u_datapath|u_contK|q[4]~14\ & VCC))
-- \u_datapath|u_module|u_datapath|u_contK|q[5]~16\ = CARRY((\u_datapath|u_module|u_datapath|u_contK|q\(5) & !\u_datapath|u_module|u_datapath|u_contK|q[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_contK|q[4]~14\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[5]~15_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[5]~16\);

-- Location: LCCOMB_X44_Y16_N12
\u_datapath|u_module|u_datapath|u_contK|q[6]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[6]~18_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(6) & (!\u_datapath|u_module|u_datapath|u_contK|q[5]~16\)) # (!\u_datapath|u_module|u_datapath|u_contK|q\(6) & 
-- ((\u_datapath|u_module|u_datapath|u_contK|q[5]~16\) # (GND)))
-- \u_datapath|u_module|u_datapath|u_contK|q[6]~19\ = CARRY((!\u_datapath|u_module|u_datapath|u_contK|q[5]~16\) # (!\u_datapath|u_module|u_datapath|u_contK|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(6),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_contK|q[5]~16\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[6]~18_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[6]~19\);

-- Location: LCCOMB_X44_Y16_N14
\u_datapath|u_module|u_datapath|u_contK|q[7]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[7]~20_combout\ = \u_datapath|u_module|u_datapath|u_contK|q\(7) $ (!\u_datapath|u_module|u_datapath|u_contK|q[6]~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(7),
	cin => \u_datapath|u_module|u_datapath|u_contK|q[6]~19\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[7]~20_combout\);

-- Location: LCFF_X46_Y19_N29
\u_datapath|u_contDiv|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[0]~19_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(0));

-- Location: LCCOMB_X47_Y19_N4
\u_datapath|u_regOut|o_Q[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regOut|o_Q[0]~1_combout\ = (!\u_datapath|u_contDiv|q\(2) & (!\u_datapath|u_contDiv|q\(0) & (\u_datapath|u_contDiv|q\(1) & !\u_datapath|u_contDiv|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(2),
	datab => \u_datapath|u_contDiv|q\(0),
	datac => \u_datapath|u_contDiv|q\(1),
	datad => \u_datapath|u_contDiv|q\(7),
	combout => \u_datapath|u_regOut|o_Q[0]~1_combout\);

-- Location: LCFF_X48_Y17_N3
\u_datapath|u_regX|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_data~combout\(6),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(6));

-- Location: LCFF_X48_Y17_N7
\u_datapath|u_regX|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regX|o_Q[4]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(4));

-- Location: LCFF_X48_Y17_N17
\u_datapath|u_regX|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regX|o_Q[3]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(3));

-- Location: LCCOMB_X46_Y19_N28
\u_datapath|u_contDiv|q[0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[0]~19_combout\ = \u_datapath|u_contDiv|q\(0) $ (\u_control|state.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_contDiv|q\(0),
	datad => \u_control|state.s4~regout\,
	combout => \u_datapath|u_contDiv|q[0]~19_combout\);

-- Location: LCFF_X46_Y17_N25
\u_datapath|u_module|u_datapath|u_regOut|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(4));

-- Location: LCFF_X46_Y17_N19
\u_datapath|u_module|u_datapath|u_regOut|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(1));

-- Location: LCFF_X46_Y17_N11
\u_control|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_control|Selector1~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s2~regout\);

-- Location: LCCOMB_X44_Y17_N22
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(5) = (\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(5));

-- Location: LCCOMB_X46_Y16_N16
\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4) = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_module|u_datapath|u_contK|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4));

-- Location: LCCOMB_X43_Y16_N24
\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2));

-- Location: LCCOMB_X46_Y16_N4
\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4) = (\u_datapath|u_module|u_datapath|u_contK|q\(1) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4));

-- Location: LCCOMB_X46_Y16_N2
\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5) = (\u_datapath|u_module|u_datapath|u_contK|q\(1) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5));

-- Location: LCCOMB_X44_Y17_N14
\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(5) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(5));

-- Location: LCCOMB_X44_Y17_N12
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(7) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) $ (((\u_datapath|u_module|u_datapath|u_contK|q\(6) & 
-- \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1)))))) # (!\u_datapath|u_module|u_datapath|u_contK|q\(7) & (\u_datapath|u_module|u_datapath|u_contK|q\(6) & ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(7),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(6),
	datac => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X44_Y17_N10
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & (\u_datapath|u_module|u_datapath|u_contK|q\(5) $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(3) & 
-- \u_datapath|u_module|u_datapath|u_contK|q\(4)))))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(3) & (\u_datapath|u_module|u_datapath|u_contK|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X44_Y17_N16
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(4) & (\u_datapath|u_module|u_datapath|u_contK|q\(3) $ (((\u_datapath|u_module|u_datapath|u_contK|q\(2) & 
-- \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5)))))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(4) & (((\u_datapath|u_module|u_datapath|u_contK|q\(2) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\);

-- Location: LCCOMB_X44_Y17_N6
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(7) & (\u_datapath|u_module|u_datapath|u_contK|q\(0) $ (((\u_datapath|u_module|u_datapath|u_contK|q\(1) & 
-- \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6)))))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(7) & (((\u_datapath|u_module|u_datapath|u_contK|q\(1) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(7),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\);

-- Location: LCCOMB_X44_Y17_N8
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\ $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~2_combout\,
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~1_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~3_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~4_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\);

-- Location: LCCOMB_X44_Y17_N2
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(6) = (\u_datapath|u_module|u_datapath|u_contK|q\(6) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(6),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(6));

-- Location: LCCOMB_X44_Y17_N28
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(6) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_module|u_datapath|u_contK|q\(5))))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(6) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ & \u_datapath|u_module|u_datapath|u_contK|q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(6),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y17_N18
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ (((\u_datapath|u_module|u_datapath|u_contK|q\(5) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y17_N24
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ & ((\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_module|u_datapath|u_contK|q\(4))))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & 
-- (\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X43_Y17_N8
\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(6) = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_module|u_datapath|u_contK|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(6));

-- Location: LCCOMB_X45_Y17_N8
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\) # 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ & (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(6),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N10
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~5_combout\,
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6_combout\);

-- Location: LCFF_X47_Y17_N13
\u_datapath|u_module|u_datapath|u_i_A|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(7),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(7));

-- Location: LCFF_X47_Y17_N15
\u_datapath|u_module|u_datapath|u_i_A|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(6),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(6));

-- Location: LCFF_X47_Y17_N11
\u_datapath|u_module|u_datapath|u_i_A|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(5),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(5));

-- Location: LCFF_X47_Y17_N19
\u_datapath|u_module|u_datapath|u_i_A|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(4),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(4));

-- Location: LCFF_X47_Y17_N5
\u_datapath|u_module|u_datapath|u_i_A|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(3),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(3));

-- Location: LCFF_X47_Y17_N7
\u_datapath|u_module|u_datapath|u_i_A|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(2),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(2));

-- Location: LCFF_X47_Y17_N17
\u_datapath|u_module|u_datapath|u_i_A|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(1),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(1));

-- Location: LCCOMB_X46_Y16_N22
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0));

-- Location: LCCOMB_X47_Y17_N30
\u_control|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector1~0_combout\ = (\u_control|state.s1~regout\) # ((\u_control|state.s2~regout\ & \u_datapath|u_module|u_control|state.idle~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s2~regout\,
	datab => \u_datapath|u_module|u_control|state.idle~regout\,
	datad => \u_control|state.s1~regout\,
	combout => \u_control|Selector1~0_combout\);

-- Location: LCCOMB_X45_Y17_N6
\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(5) & \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[6]~I\ : cycloneii_io
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
	padio => ww_i_data(6),
	combout => \i_data~combout\(6));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[4]~I\ : cycloneii_io
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
	padio => ww_i_data(4),
	combout => \i_data~combout\(4));

-- Location: PIN_R25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[3]~I\ : cycloneii_io
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
	padio => ww_i_data(3),
	combout => \i_data~combout\(3));

-- Location: LCCOMB_X48_Y17_N6
\u_datapath|u_regX|o_Q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regX|o_Q[4]~feeder_combout\ = \i_data~combout\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data~combout\(4),
	combout => \u_datapath|u_regX|o_Q[4]~feeder_combout\);

-- Location: LCCOMB_X48_Y17_N16
\u_datapath|u_regX|o_Q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regX|o_Q[3]~feeder_combout\ = \i_data~combout\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data~combout\(3),
	combout => \u_datapath|u_regX|o_Q[3]~feeder_combout\);

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

-- Location: LCCOMB_X46_Y19_N2
\u_control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector0~0_combout\ = (!\u_control|state.s6~regout\ & ((\u_control|state.idle~regout\) # (!\i_startn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_startn~combout\,
	datac => \u_control|state.idle~regout\,
	datad => \u_control|state.s6~regout\,
	combout => \u_control|Selector0~0_combout\);

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

-- Location: LCFF_X46_Y19_N3
\u_control|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|Selector0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.idle~regout\);

-- Location: LCCOMB_X46_Y19_N0
\u_control|next_state.init~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.init~0_combout\ = (!\i_startn~combout\ & !\u_control|state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i_startn~combout\,
	datad => \u_control|state.idle~regout\,
	combout => \u_control|next_state.init~0_combout\);

-- Location: LCFF_X46_Y19_N1
\u_control|state.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.init~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.init~regout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[7]~I\ : cycloneii_io
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
	padio => ww_i_data(7),
	combout => \i_data~combout\(7));

-- Location: LCCOMB_X48_Y17_N4
\u_datapath|u_regX|o_Q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regX|o_Q[7]~feeder_combout\ = \i_data~combout\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data~combout\(7),
	combout => \u_datapath|u_regX|o_Q[7]~feeder_combout\);

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

-- Location: LCFF_X48_Y17_N5
\u_datapath|u_regX|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regX|o_Q[7]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(7));

-- Location: LCCOMB_X46_Y19_N4
\u_datapath|u_countI|q[0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[0]~21_combout\ = \u_control|state.s5~regout\ $ (\u_datapath|u_countI|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s5~regout\,
	datac => \u_datapath|u_countI|q\(0),
	combout => \u_datapath|u_countI|q[0]~21_combout\);

-- Location: LCCOMB_X46_Y19_N30
\u_datapath|w_clrnRegs\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|w_clrnRegs~combout\ = (\u_control|state.init~regout\) # (!\i_clrn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_clrn~combout\,
	datad => \u_control|state.init~regout\,
	combout => \u_datapath|w_clrnRegs~combout\);

-- Location: LCFF_X46_Y19_N5
\u_datapath|u_countI|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[0]~21_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(0));

-- Location: LCCOMB_X46_Y19_N6
\u_datapath|u_countI|q[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[1]~7_combout\ = (\u_datapath|u_countI|q\(1) & (\u_datapath|u_countI|q\(0) $ (GND))) # (!\u_datapath|u_countI|q\(1) & (!\u_datapath|u_countI|q\(0) & VCC))
-- \u_datapath|u_countI|q[1]~8\ = CARRY((\u_datapath|u_countI|q\(1) & !\u_datapath|u_countI|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(1),
	datab => \u_datapath|u_countI|q\(0),
	datad => VCC,
	combout => \u_datapath|u_countI|q[1]~7_combout\,
	cout => \u_datapath|u_countI|q[1]~8\);

-- Location: LCCOMB_X46_Y19_N8
\u_datapath|u_countI|q[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[2]~9_combout\ = (\u_datapath|u_countI|q\(2) & (!\u_datapath|u_countI|q[1]~8\)) # (!\u_datapath|u_countI|q\(2) & ((\u_datapath|u_countI|q[1]~8\) # (GND)))
-- \u_datapath|u_countI|q[2]~10\ = CARRY((!\u_datapath|u_countI|q[1]~8\) # (!\u_datapath|u_countI|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_countI|q\(2),
	datad => VCC,
	cin => \u_datapath|u_countI|q[1]~8\,
	combout => \u_datapath|u_countI|q[2]~9_combout\,
	cout => \u_datapath|u_countI|q[2]~10\);

-- Location: LCFF_X46_Y19_N9
\u_datapath|u_countI|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[2]~9_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(2));

-- Location: LCCOMB_X46_Y19_N10
\u_datapath|u_countI|q[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[3]~11_combout\ = (\u_datapath|u_countI|q\(3) & (\u_datapath|u_countI|q[2]~10\ $ (GND))) # (!\u_datapath|u_countI|q\(3) & (!\u_datapath|u_countI|q[2]~10\ & VCC))
-- \u_datapath|u_countI|q[3]~12\ = CARRY((\u_datapath|u_countI|q\(3) & !\u_datapath|u_countI|q[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(3),
	datad => VCC,
	cin => \u_datapath|u_countI|q[2]~10\,
	combout => \u_datapath|u_countI|q[3]~11_combout\,
	cout => \u_datapath|u_countI|q[3]~12\);

-- Location: LCCOMB_X46_Y19_N12
\u_datapath|u_countI|q[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[4]~13_combout\ = (\u_datapath|u_countI|q\(4) & (!\u_datapath|u_countI|q[3]~12\)) # (!\u_datapath|u_countI|q\(4) & ((\u_datapath|u_countI|q[3]~12\) # (GND)))
-- \u_datapath|u_countI|q[4]~14\ = CARRY((!\u_datapath|u_countI|q[3]~12\) # (!\u_datapath|u_countI|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(4),
	datad => VCC,
	cin => \u_datapath|u_countI|q[3]~12\,
	combout => \u_datapath|u_countI|q[4]~13_combout\,
	cout => \u_datapath|u_countI|q[4]~14\);

-- Location: LCCOMB_X46_Y19_N14
\u_datapath|u_countI|q[5]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[5]~15_combout\ = (\u_datapath|u_countI|q\(5) & (\u_datapath|u_countI|q[4]~14\ $ (GND))) # (!\u_datapath|u_countI|q\(5) & (!\u_datapath|u_countI|q[4]~14\ & VCC))
-- \u_datapath|u_countI|q[5]~16\ = CARRY((\u_datapath|u_countI|q\(5) & !\u_datapath|u_countI|q[4]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_countI|q\(5),
	datad => VCC,
	cin => \u_datapath|u_countI|q[4]~14\,
	combout => \u_datapath|u_countI|q[5]~15_combout\,
	cout => \u_datapath|u_countI|q[5]~16\);

-- Location: LCFF_X46_Y19_N15
\u_datapath|u_countI|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[5]~15_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(5));

-- Location: LCCOMB_X46_Y19_N16
\u_datapath|u_countI|q[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[6]~17_combout\ = (\u_datapath|u_countI|q\(6) & (!\u_datapath|u_countI|q[5]~16\)) # (!\u_datapath|u_countI|q\(6) & ((\u_datapath|u_countI|q[5]~16\) # (GND)))
-- \u_datapath|u_countI|q[6]~18\ = CARRY((!\u_datapath|u_countI|q[5]~16\) # (!\u_datapath|u_countI|q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(6),
	datad => VCC,
	cin => \u_datapath|u_countI|q[5]~16\,
	combout => \u_datapath|u_countI|q[6]~17_combout\,
	cout => \u_datapath|u_countI|q[6]~18\);

-- Location: LCFF_X46_Y19_N17
\u_datapath|u_countI|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[6]~17_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(6));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[5]~I\ : cycloneii_io
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
	padio => ww_i_data(5),
	combout => \i_data~combout\(5));

-- Location: LCFF_X48_Y17_N29
\u_datapath|u_regX|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_data~combout\(5),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(5));

-- Location: LCFF_X46_Y19_N13
\u_datapath|u_countI|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[4]~13_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(4));

-- Location: LCFF_X46_Y19_N11
\u_datapath|u_countI|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[3]~11_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(3));

-- Location: PIN_R24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[2]~I\ : cycloneii_io
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
	padio => ww_i_data(2),
	combout => \i_data~combout\(2));

-- Location: LCCOMB_X48_Y17_N14
\u_datapath|u_regX|o_Q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regX|o_Q[2]~feeder_combout\ = \i_data~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data~combout\(2),
	combout => \u_datapath|u_regX|o_Q[2]~feeder_combout\);

-- Location: LCFF_X48_Y17_N15
\u_datapath|u_regX|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regX|o_Q[2]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(2));

-- Location: PIN_T23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[1]~I\ : cycloneii_io
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
	padio => ww_i_data(1),
	combout => \i_data~combout\(1));

-- Location: LCCOMB_X48_Y17_N0
\u_datapath|u_regX|o_Q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regX|o_Q[1]~feeder_combout\ = \i_data~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \i_data~combout\(1),
	combout => \u_datapath|u_regX|o_Q[1]~feeder_combout\);

-- Location: LCFF_X48_Y17_N1
\u_datapath|u_regX|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regX|o_Q[1]~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(1));

-- Location: PIN_P24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\i_data[0]~I\ : cycloneii_io
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
	padio => ww_i_data(0),
	combout => \i_data~combout\(0));

-- Location: LCFF_X48_Y17_N11
\u_datapath|u_regX|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \i_data~combout\(0),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_i_startn~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regX|o_Q\(0));

-- Location: LCCOMB_X47_Y17_N4
\u_datapath|u_biggerthan|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~1_cout\ = CARRY((!\u_datapath|u_countI|q\(0) & !\u_datapath|u_regX|o_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(0),
	datab => \u_datapath|u_regX|o_Q\(0),
	datad => VCC,
	cout => \u_datapath|u_biggerthan|LessThan0~1_cout\);

-- Location: LCCOMB_X47_Y17_N6
\u_datapath|u_biggerthan|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~3_cout\ = CARRY((\u_datapath|u_countI|q\(1) & (\u_datapath|u_regX|o_Q\(1) & !\u_datapath|u_biggerthan|LessThan0~1_cout\)) # (!\u_datapath|u_countI|q\(1) & ((\u_datapath|u_regX|o_Q\(1)) # 
-- (!\u_datapath|u_biggerthan|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(1),
	datab => \u_datapath|u_regX|o_Q\(1),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~1_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~3_cout\);

-- Location: LCCOMB_X47_Y17_N8
\u_datapath|u_biggerthan|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~5_cout\ = CARRY((\u_datapath|u_countI|q\(2) & ((!\u_datapath|u_biggerthan|LessThan0~3_cout\) # (!\u_datapath|u_regX|o_Q\(2)))) # (!\u_datapath|u_countI|q\(2) & (!\u_datapath|u_regX|o_Q\(2) & 
-- !\u_datapath|u_biggerthan|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(2),
	datab => \u_datapath|u_regX|o_Q\(2),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~3_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~5_cout\);

-- Location: LCCOMB_X47_Y17_N10
\u_datapath|u_biggerthan|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~7_cout\ = CARRY((\u_datapath|u_regX|o_Q\(3) & ((!\u_datapath|u_biggerthan|LessThan0~5_cout\) # (!\u_datapath|u_countI|q\(3)))) # (!\u_datapath|u_regX|o_Q\(3) & (!\u_datapath|u_countI|q\(3) & 
-- !\u_datapath|u_biggerthan|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_regX|o_Q\(3),
	datab => \u_datapath|u_countI|q\(3),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~5_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~7_cout\);

-- Location: LCCOMB_X47_Y17_N12
\u_datapath|u_biggerthan|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~9_cout\ = CARRY((\u_datapath|u_regX|o_Q\(4) & (\u_datapath|u_countI|q\(4) & !\u_datapath|u_biggerthan|LessThan0~7_cout\)) # (!\u_datapath|u_regX|o_Q\(4) & ((\u_datapath|u_countI|q\(4)) # 
-- (!\u_datapath|u_biggerthan|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_regX|o_Q\(4),
	datab => \u_datapath|u_countI|q\(4),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~7_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~9_cout\);

-- Location: LCCOMB_X47_Y17_N14
\u_datapath|u_biggerthan|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~11_cout\ = CARRY((\u_datapath|u_countI|q\(5) & (\u_datapath|u_regX|o_Q\(5) & !\u_datapath|u_biggerthan|LessThan0~9_cout\)) # (!\u_datapath|u_countI|q\(5) & ((\u_datapath|u_regX|o_Q\(5)) # 
-- (!\u_datapath|u_biggerthan|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(5),
	datab => \u_datapath|u_regX|o_Q\(5),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~9_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~11_cout\);

-- Location: LCCOMB_X47_Y17_N16
\u_datapath|u_biggerthan|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~13_cout\ = CARRY((\u_datapath|u_regX|o_Q\(6) & (\u_datapath|u_countI|q\(6) & !\u_datapath|u_biggerthan|LessThan0~11_cout\)) # (!\u_datapath|u_regX|o_Q\(6) & ((\u_datapath|u_countI|q\(6)) # 
-- (!\u_datapath|u_biggerthan|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_regX|o_Q\(6),
	datab => \u_datapath|u_countI|q\(6),
	datad => VCC,
	cin => \u_datapath|u_biggerthan|LessThan0~11_cout\,
	cout => \u_datapath|u_biggerthan|LessThan0~13_cout\);

-- Location: LCCOMB_X47_Y17_N18
\u_datapath|u_biggerthan|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_biggerthan|LessThan0~14_combout\ = (\u_datapath|u_countI|q\(7) & ((\u_datapath|u_biggerthan|LessThan0~13_cout\) # (!\u_datapath|u_regX|o_Q\(7)))) # (!\u_datapath|u_countI|q\(7) & (\u_datapath|u_biggerthan|LessThan0~13_cout\ & 
-- !\u_datapath|u_regX|o_Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_countI|q\(7),
	datad => \u_datapath|u_regX|o_Q\(7),
	cin => \u_datapath|u_biggerthan|LessThan0~13_cout\,
	combout => \u_datapath|u_biggerthan|LessThan0~14_combout\);

-- Location: LCCOMB_X48_Y17_N18
\u_control|next_state.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s1~0_combout\ = (!\u_datapath|u_biggerthan|LessThan0~14_combout\ & \u_control|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_biggerthan|LessThan0~14_combout\,
	datad => \u_control|state.s0~regout\,
	combout => \u_control|next_state.s1~0_combout\);

-- Location: LCFF_X48_Y17_N19
\u_control|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s1~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s1~regout\);

-- Location: LCCOMB_X47_Y17_N20
\u_datapath|u_module|u_control|next_state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_control|next_state.s0~0_combout\ = (!\u_datapath|u_module|u_control|state.idle~regout\ & \u_control|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_control|state.idle~regout\,
	datad => \u_control|state.s1~regout\,
	combout => \u_datapath|u_module|u_control|next_state.s0~0_combout\);

-- Location: LCFF_X44_Y16_N29
\u_datapath|u_module|u_control|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_module|u_control|next_state.s0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_control|state.s0~regout\);

-- Location: LCCOMB_X46_Y19_N18
\u_datapath|u_countI|q[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_countI|q[7]~19_combout\ = \u_datapath|u_countI|q[6]~18\ $ (!\u_datapath|u_countI|q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_datapath|u_countI|q\(7),
	cin => \u_datapath|u_countI|q[6]~18\,
	combout => \u_datapath|u_countI|q[7]~19_combout\);

-- Location: LCFF_X46_Y19_N19
\u_datapath|u_countI|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[7]~19_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(7));

-- Location: LCFF_X47_Y17_N21
\u_datapath|u_module|u_datapath|u_i_B|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(7),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(7));

-- Location: LCCOMB_X43_Y16_N28
\u_datapath|u_module|u_datapath|u_contK|q[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[0]~17_combout\ = \u_datapath|u_module|u_datapath|u_contK|q\(0) $ (\u_datapath|u_module|u_control|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_module|u_control|state.s2~regout\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[0]~17_combout\);

-- Location: LCCOMB_X44_Y16_N22
\u_datapath|u_module|u_datapath|w_clrnK\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|w_clrnK~combout\ = (\u_datapath|u_module|u_control|state.s0~regout\) # (!\i_clrn~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i_clrn~combout\,
	datad => \u_datapath|u_module|u_control|state.s0~regout\,
	combout => \u_datapath|u_module|u_datapath|w_clrnK~combout\);

-- Location: LCFF_X44_Y16_N27
\u_datapath|u_module|u_datapath|u_contK|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_module|u_datapath|u_contK|q[0]~17_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(0));

-- Location: LCFF_X46_Y16_N27
\u_datapath|u_module|u_datapath|u_i_B|o_Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(4),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4));

-- Location: LCCOMB_X46_Y16_N28
\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4));

-- Location: LCFF_X46_Y16_N23
\u_datapath|u_module|u_datapath|u_i_B|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(3),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3));

-- Location: LCCOMB_X46_Y16_N30
\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3));

-- Location: LCCOMB_X44_Y16_N2
\u_datapath|u_module|u_datapath|u_contK|q[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[1]~7_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & (\u_datapath|u_module|u_datapath|u_contK|q\(1) $ (VCC))) # (!\u_datapath|u_module|u_datapath|u_contK|q\(0) & 
-- (\u_datapath|u_module|u_datapath|u_contK|q\(1) & VCC))
-- \u_datapath|u_module|u_datapath|u_contK|q[1]~8\ = CARRY((\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_contK|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => VCC,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[1]~7_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[1]~8\);

-- Location: LCFF_X44_Y16_N3
\u_datapath|u_module|u_datapath|u_contK|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[1]~7_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(1));

-- Location: LCFF_X43_Y16_N29
\u_datapath|u_module|u_datapath|u_i_B|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(2),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2));

-- Location: LCCOMB_X44_Y16_N28
\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3) = (\u_datapath|u_module|u_datapath|u_contK|q\(1) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3));

-- Location: LCCOMB_X44_Y16_N4
\u_datapath|u_module|u_datapath|u_contK|q[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[2]~9_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(2) & (!\u_datapath|u_module|u_datapath|u_contK|q[1]~8\)) # (!\u_datapath|u_module|u_datapath|u_contK|q\(2) & 
-- ((\u_datapath|u_module|u_datapath|u_contK|q[1]~8\) # (GND)))
-- \u_datapath|u_module|u_datapath|u_contK|q[2]~10\ = CARRY((!\u_datapath|u_module|u_datapath|u_contK|q[1]~8\) # (!\u_datapath|u_module|u_datapath|u_contK|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_contK|q[1]~8\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[2]~9_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[2]~10\);

-- Location: LCFF_X44_Y16_N5
\u_datapath|u_module|u_datapath|u_contK|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[2]~9_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(2));

-- Location: LCCOMB_X46_Y16_N26
\u_datapath|u_module|u_datapath|u_i_B|o_Q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_i_B|o_Q[0]~0_combout\ = !\u_datapath|u_countI|q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_countI|q\(0),
	combout => \u_datapath|u_module|u_datapath|u_i_B|o_Q[0]~0_combout\);

-- Location: LCFF_X45_Y16_N3
\u_datapath|u_module|u_datapath|u_i_B|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_module|u_datapath|u_i_B|o_Q[0]~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0));

-- Location: LCCOMB_X45_Y16_N0
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_module|u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y16_N20
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\ & ((\u_datapath|u_module|u_datapath|u_contK|q\(0)) # 
-- (\u_datapath|u_module|u_datapath|u_contK|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\);

-- Location: LCCOMB_X44_Y16_N20
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3) = (\u_datapath|u_module|u_datapath|u_contK|q\(3) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3));

-- Location: LCCOMB_X45_Y16_N4
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3) $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) 
-- & \u_datapath|u_module|u_datapath|u_contK|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y16_N2
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_module|u_datapath|u_contK|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y16_N26
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_module|u_datapath|u_contK|q\(2) $ (((!\u_datapath|u_module|u_datapath|u_contK|q\(0) & 
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\))))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & (((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\);

-- Location: LCCOMB_X45_Y16_N6
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2) & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCFF_X46_Y19_N7
\u_datapath|u_countI|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_countI|q[1]~7_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_countI|q\(1));

-- Location: LCFF_X45_Y16_N1
\u_datapath|u_module|u_datapath|u_i_B|o_Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(1),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1));

-- Location: LCCOMB_X44_Y16_N26
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4) = (\u_datapath|u_module|u_datapath|u_contK|q\(3) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4));

-- Location: LCCOMB_X45_Y16_N14
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2) & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3) & (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\ & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(2),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(3),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y16_N6
\u_datapath|u_module|u_datapath|u_contK|q[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[3]~11_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(3) & (\u_datapath|u_module|u_datapath|u_contK|q[2]~10\ $ (GND))) # (!\u_datapath|u_module|u_datapath|u_contK|q\(3) & 
-- (!\u_datapath|u_module|u_datapath|u_contK|q[2]~10\ & VCC))
-- \u_datapath|u_module|u_datapath|u_contK|q[3]~12\ = CARRY((\u_datapath|u_module|u_datapath|u_contK|q\(3) & !\u_datapath|u_module|u_datapath|u_contK|q[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_contK|q[2]~10\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[3]~11_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[3]~12\);

-- Location: LCCOMB_X44_Y16_N8
\u_datapath|u_module|u_datapath|u_contK|q[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_contK|q[4]~13_combout\ = (\u_datapath|u_module|u_datapath|u_contK|q\(4) & (!\u_datapath|u_module|u_datapath|u_contK|q[3]~12\)) # (!\u_datapath|u_module|u_datapath|u_contK|q\(4) & 
-- ((\u_datapath|u_module|u_datapath|u_contK|q[3]~12\) # (GND)))
-- \u_datapath|u_module|u_datapath|u_contK|q[4]~14\ = CARRY((!\u_datapath|u_module|u_datapath|u_contK|q[3]~12\) # (!\u_datapath|u_module|u_datapath|u_contK|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_contK|q[3]~12\,
	combout => \u_datapath|u_module|u_datapath|u_contK|q[4]~13_combout\,
	cout => \u_datapath|u_module|u_datapath|u_contK|q[4]~14\);

-- Location: LCFF_X44_Y16_N9
\u_datapath|u_module|u_datapath|u_contK|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[4]~13_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(4));

-- Location: LCCOMB_X44_Y16_N0
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_module|u_datapath|u_contK|q\(2))))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & 
-- (\u_datapath|u_module|u_datapath|u_contK|q\(2) & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(3),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_COUT~1_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y16_N18
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datac => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X45_Y16_N12
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4) $ (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4) $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y16_N30
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3) & \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y16_N18
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3) & \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4) & (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ & \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(4),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(3),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X46_Y16_N8
\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5) = (\u_datapath|u_module|u_datapath|u_contK|q\(2) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5));

-- Location: LCCOMB_X45_Y16_N8
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\) # 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\ & (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(4),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y16_N16
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(4) = (\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(4));

-- Location: LCCOMB_X44_Y16_N30
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(4) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_contK|q\(3) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(4) & (\u_datapath|u_module|u_datapath|u_contK|q\(3) & 
-- (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(4),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:3:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y16_N24
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_module|u_datapath|u_contK|q\(5) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	datac => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X45_Y16_N22
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\);

-- Location: LCCOMB_X45_Y16_N28
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y16_N10
\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4) & \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5) & (\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ & \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X44_Y17_N30
\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6) = (\u_datapath|u_module|u_datapath|u_contK|q\(2) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(2),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6));

-- Location: LCFF_X44_Y16_N7
\u_datapath|u_module|u_datapath|u_contK|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[3]~11_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(3));

-- Location: LCCOMB_X43_Y16_N22
\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_module|u_datapath|u_contK|q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5));

-- Location: LCCOMB_X45_Y17_N20
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\) # 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\ & (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_DOUT~2_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCFF_X44_Y16_N11
\u_datapath|u_module|u_datapath|u_contK|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_contK|q[5]~15_combout\,
	aclr => \u_datapath|u_module|u_datapath|w_clrnK~combout\,
	ena => \u_datapath|u_module|u_control|state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_contK|q\(5));

-- Location: LCCOMB_X44_Y17_N20
\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(5) = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & \u_datapath|u_module|u_datapath|u_contK|q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(5));

-- Location: LCCOMB_X45_Y17_N12
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(5) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\) # 
-- ((\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1))))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(5) & (\u_datapath|u_module|u_datapath|u_contK|q\(4) & 
-- (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(5),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:4:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N30
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\ $ (((\u_datapath|u_module|u_datapath|u_contK|q\(6) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(6),
	datac => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N14
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_contK|q\(5) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(5),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_COUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y16_N16
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ & ((\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5)) # 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\ & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5) & (\u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add2inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(5),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:5:u_1|o_DOUT~2_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N28
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_contK|q\(4) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_contK|q\(4),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:6:u_1|o_DOUT~0_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N2
\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ & ((\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6)) # 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\ & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6) & (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\);

-- Location: LCFF_X47_Y17_N25
\u_datapath|u_module|u_datapath|u_i_B|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(6),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6));

-- Location: LCCOMB_X44_Y17_N26
\u_datapath|u_module|u_datapath|u_KmultB|w_add6inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6) = (\u_datapath|u_module|u_datapath|u_contK|q\(0) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6));

-- Location: LCFF_X47_Y17_N31
\u_datapath|u_module|u_datapath|u_i_B|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_countI|q\(5),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5));

-- Location: LCCOMB_X44_Y17_N4
\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6) = (\u_datapath|u_module|u_datapath|u_contK|q\(1) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6));

-- Location: LCCOMB_X44_Y17_N0
\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) = (\u_datapath|u_module|u_datapath|u_contK|q\(3) & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(3),
	datad => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6));

-- Location: LCCOMB_X45_Y17_N0
\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\ $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(6),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:6:u_1|o_DOUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add3inB\(6),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_COUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y17_N16
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6) & (\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6) & ((\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\,
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7_combout\);

-- Location: LCCOMB_X45_Y16_N24
\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\ $ 
-- (((\u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4) & \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add4inB\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:5:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y17_N18
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6) & (((\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\) # 
-- (!\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\)) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(5)))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6) & 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\ & ((!\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\);

-- Location: LCCOMB_X45_Y17_N26
\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8_combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\ $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~6_combout\,
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_COUT~0_combout\,
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~7_combout\,
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~0_combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8_combout\);

-- Location: LCCOMB_X45_Y17_N24
\u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\ $ (\u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6) $ 
-- (\u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_COUT~2_combout\,
	datab => \u_datapath|u_module|u_datapath|u_KmultB|w_add6inB\(6),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|w_add5inB\(6),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:6:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y17_N4
\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\ $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(5) & \u_datapath|u_module|u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	datab => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:5:u_1|o_DOUT~combout\,
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X46_Y16_N0
\u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\ $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(4) & \u_datapath|u_module|u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:4:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_4|f_0:4:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X46_Y16_N10
\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\ $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(3) & \u_datapath|u_module|u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	datac => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:3:u_1|o_DOUT~combout\,
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X46_Y16_N20
\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ = \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\ $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & \u_datapath|u_module|u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:2:u_1|o_DOUT~1_combout\,
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\);

-- Location: LCCOMB_X45_Y17_N22
\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_module|u_datapath|u_contK|q\(1) $ (((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & 
-- \u_datapath|u_module|u_datapath|u_contK|q\(0)))))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(0) & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_module|u_datapath|u_contK|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datac => \u_datapath|u_module|u_datapath|u_contK|q\(0),
	datad => \u_datapath|u_module|u_datapath|u_contK|q\(1),
	combout => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\);

-- Location: LCFF_X45_Y17_N5
\u_datapath|u_module|u_datapath|u_i_A|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_datapath|u_regX|o_Q\(0),
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	ena => \u_control|state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(0));

-- Location: LCCOMB_X46_Y17_N16
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\ = (\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0) & (\u_datapath|u_module|u_datapath|u_i_A|o_Q\(0) $ (VCC))) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0) & 
-- ((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(0)) # (GND)))
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(0)) # (!\u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_KmultB|w_add1inA\(0),
	datab => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(0),
	datad => VCC,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\);

-- Location: LCCOMB_X46_Y17_N18
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\ = (\u_datapath|u_module|u_datapath|u_i_A|o_Q\(1) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\)) # 
-- (!\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\ & VCC)))) # (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(1) & 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\) # (GND))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\))))
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(1) & (\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(1) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\) # (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_0|f_0:1:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~1\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\);

-- Location: LCCOMB_X46_Y17_N20
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\ = ((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(2) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ $ (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\)))) # (GND)
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(2) & ((!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\))) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(2) & (!\u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(2),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_2|f_0:2:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~3\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\);

-- Location: LCCOMB_X46_Y17_N22
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\ = (\u_datapath|u_module|u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\)) # 
-- (!\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\ & VCC)))) # (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(3) & 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\) # (GND))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\))))
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(3) & (\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(3) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\) # (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(3),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_3|f_0:3:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~5\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~7\);

-- Location: LCCOMB_X46_Y17_N26
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\ = (\u_datapath|u_module|u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\)) # 
-- (!\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\ & VCC)))) # (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(5) & 
-- ((\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\) # (GND))) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\))))
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(5) & (\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(5) & ((\u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\) # (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(5),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_5|f_0:5:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~9\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\);

-- Location: LCCOMB_X46_Y17_N28
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\ = ((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(6) $ (\u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ $ (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\)))) # 
-- (GND)
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~13\ = CARRY((\u_datapath|u_module|u_datapath|u_i_A|o_Q\(6) & ((!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\) # (!\u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\))) # 
-- (!\u_datapath|u_module|u_datapath|u_i_A|o_Q\(6) & (!\u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(6),
	datab => \u_datapath|u_module|u_datapath|u_KmultB|u_6|f_0:6:u_1|o_DOUT~combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~11\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\,
	cout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~13\);

-- Location: LCCOMB_X46_Y17_N30
\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\ = \u_datapath|u_module|u_datapath|u_i_A|o_Q\(7) $ (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~13\ $ (!\u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_A|o_Q\(7),
	datad => \u_datapath|u_module|u_datapath|u_KmultB|u_7|f_0:7:u_1|o_DOUT~8_combout\,
	cin => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~13\,
	combout => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\);

-- Location: LCCOMB_X46_Y17_N0
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\ = CARRY((!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\ & \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\,
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(0),
	datad => VCC,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\);

-- Location: LCCOMB_X46_Y17_N2
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\ & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(1) & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\) # (!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~2_combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~1_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\);

-- Location: LCCOMB_X46_Y17_N4
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\ & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2) & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\ & ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(2)) # (!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\,
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(2),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~3_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\);

-- Location: LCCOMB_X46_Y17_N6
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(3) & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\ & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(3) & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\) # (!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(3),
	datab => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~5_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\);

-- Location: LCCOMB_X46_Y17_N8
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\ & (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(4) & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\ & ((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(4)) # (!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~8_combout\,
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(4),
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~7_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\);

-- Location: LCCOMB_X46_Y17_N10
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(5) & (\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\ & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\)) # 
-- (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(5) & ((\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\) # (!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(5),
	datab => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~9_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\);

-- Location: LCCOMB_X46_Y17_N12
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\ = CARRY((\u_datapath|u_module|u_datapath|u_i_B|o_Q\(6) & ((!\u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\) # 
-- (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\))) # (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(6) & (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\ & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(6),
	datab => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\,
	datad => VCC,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~11_cout\,
	cout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\);

-- Location: LCCOMB_X46_Y17_N14
\u_datapath|u_module|u_datapath|u_less_than|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\ = (\u_datapath|u_module|u_datapath|u_i_B|o_Q\(7) & ((\u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\) # (!\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\))) # 
-- (!\u_datapath|u_module|u_datapath|u_i_B|o_Q\(7) & (\u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\ & !\u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_datapath|u_i_B|o_Q\(7),
	datad => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\,
	cin => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~13_cout\,
	combout => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\);

-- Location: LCCOMB_X47_Y17_N28
\u_datapath|u_module|u_control|next_state.s2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_control|next_state.s2~0_combout\ = (\u_datapath|u_module|u_control|state.s1~regout\ & !\u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_control|state.s1~regout\,
	datad => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_datapath|u_module|u_control|next_state.s2~0_combout\);

-- Location: LCFF_X47_Y17_N29
\u_datapath|u_module|u_control|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_control|next_state.s2~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_control|state.s2~regout\);

-- Location: LCCOMB_X47_Y17_N22
\u_datapath|u_module|u_control|next_state.s1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_control|next_state.s1~combout\ = (\u_datapath|u_module|u_control|state.s0~regout\) # (\u_datapath|u_module|u_control|state.s2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_datapath|u_module|u_control|state.s0~regout\,
	datad => \u_datapath|u_module|u_control|state.s2~regout\,
	combout => \u_datapath|u_module|u_control|next_state.s1~combout\);

-- Location: LCFF_X47_Y17_N23
\u_datapath|u_module|u_control|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_control|next_state.s1~combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_control|state.s1~regout\);

-- Location: LCCOMB_X47_Y17_N26
\u_datapath|u_module|u_control|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_control|next_state.s3~0_combout\ = (\u_datapath|u_module|u_control|state.s1~regout\ & \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_control|state.s1~regout\,
	datad => \u_datapath|u_module|u_datapath|u_less_than|LessThan0~14_combout\,
	combout => \u_datapath|u_module|u_control|next_state.s3~0_combout\);

-- Location: LCFF_X47_Y17_N27
\u_datapath|u_module|u_control|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_control|next_state.s3~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_control|state.s3~regout\);

-- Location: LCCOMB_X48_Y17_N24
\u_datapath|u_module|u_control|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_module|u_control|Selector0~0_combout\ = (!\u_datapath|u_module|u_control|state.s3~regout\ & ((\u_datapath|u_module|u_control|state.idle~regout\) # (\u_control|state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_module|u_control|state.s3~regout\,
	datac => \u_datapath|u_module|u_control|state.idle~regout\,
	datad => \u_control|state.s1~regout\,
	combout => \u_datapath|u_module|u_control|Selector0~0_combout\);

-- Location: LCFF_X48_Y17_N25
\u_datapath|u_module|u_control|state.idle\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_control|Selector0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_control|state.idle~regout\);

-- Location: LCCOMB_X47_Y17_N2
\u_control|next_state.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s3~0_combout\ = (\u_control|state.s2~regout\ & !\u_datapath|u_module|u_control|state.idle~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s2~regout\,
	datad => \u_datapath|u_module|u_control|state.idle~regout\,
	combout => \u_control|next_state.s3~0_combout\);

-- Location: LCFF_X47_Y17_N3
\u_control|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s3~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s3~regout\);

-- Location: LCFF_X46_Y17_N17
\u_datapath|u_module|u_datapath|u_regOut|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(0));

-- Location: LCFF_X46_Y17_N21
\u_datapath|u_module|u_datapath|u_regOut|o_Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~4_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(2));

-- Location: LCFF_X46_Y17_N23
\u_datapath|u_module|u_datapath|u_regOut|o_Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~6_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(3));

-- Location: LCCOMB_X47_Y17_N0
\u_datapath|u_equal|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_equal|Equal0~1_combout\ = (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(1) & (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(0) & (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(2) & !\u_datapath|u_module|u_datapath|u_regOut|o_Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(1),
	datab => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(0),
	datac => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(2),
	datad => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(3),
	combout => \u_datapath|u_equal|Equal0~1_combout\);

-- Location: LCFF_X46_Y17_N29
\u_datapath|u_module|u_datapath|u_regOut|o_Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~12_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(6));

-- Location: LCFF_X46_Y17_N27
\u_datapath|u_module|u_datapath|u_regOut|o_Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~10_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(5));

-- Location: LCFF_X46_Y17_N31
\u_datapath|u_module|u_datapath|u_regOut|o_Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_module|u_datapath|u_AsubMultRes|Add0~14_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	ena => \u_datapath|u_module|u_control|state.s3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(7));

-- Location: LCCOMB_X46_Y19_N26
\u_datapath|u_equal|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_equal|Equal0~0_combout\ = (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(4) & (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(6) & (!\u_datapath|u_module|u_datapath|u_regOut|o_Q\(5) & !\u_datapath|u_module|u_datapath|u_regOut|o_Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(4),
	datab => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(6),
	datac => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(5),
	datad => \u_datapath|u_module|u_datapath|u_regOut|o_Q\(7),
	combout => \u_datapath|u_equal|Equal0~0_combout\);

-- Location: LCCOMB_X47_Y19_N0
\u_control|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|Selector2~0_combout\ = (\u_control|state.s4~regout\) # ((\u_control|state.s3~regout\ & ((!\u_datapath|u_equal|Equal0~0_combout\) # (!\u_datapath|u_equal|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_control|state.s4~regout\,
	datab => \u_control|state.s3~regout\,
	datac => \u_datapath|u_equal|Equal0~1_combout\,
	datad => \u_datapath|u_equal|Equal0~0_combout\,
	combout => \u_control|Selector2~0_combout\);

-- Location: LCFF_X47_Y19_N1
\u_control|state.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|Selector2~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s5~regout\);

-- Location: LCCOMB_X47_Y19_N30
\u_control|next_state.s0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s0~combout\ = (\u_control|state.init~regout\) # (\u_control|state.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_control|state.init~regout\,
	datad => \u_control|state.s5~regout\,
	combout => \u_control|next_state.s0~combout\);

-- Location: LCFF_X47_Y17_N9
\u_control|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	sdata => \u_control|next_state.s0~combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s0~regout\);

-- Location: LCCOMB_X47_Y17_N24
\u_control|next_state.s6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s6~0_combout\ = (\u_control|state.s0~regout\ & \u_datapath|u_biggerthan|LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_control|state.s0~regout\,
	datad => \u_datapath|u_biggerthan|LessThan0~14_combout\,
	combout => \u_control|next_state.s6~0_combout\);

-- Location: LCCOMB_X47_Y19_N28
\u_control|state.s6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|state.s6~feeder_combout\ = \u_control|next_state.s6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_control|next_state.s6~0_combout\,
	combout => \u_control|state.s6~feeder_combout\);

-- Location: LCFF_X47_Y19_N29
\u_control|state.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|state.s6~feeder_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s6~regout\);

-- Location: LCCOMB_X47_Y19_N14
\u_datapath|u_contDiv|q[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[1]~7_combout\ = (\u_datapath|u_contDiv|q\(0) & (\u_datapath|u_contDiv|q\(1) $ (VCC))) # (!\u_datapath|u_contDiv|q\(0) & (\u_datapath|u_contDiv|q\(1) & VCC))
-- \u_datapath|u_contDiv|q[1]~8\ = CARRY((\u_datapath|u_contDiv|q\(0) & \u_datapath|u_contDiv|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(0),
	datab => \u_datapath|u_contDiv|q\(1),
	datad => VCC,
	combout => \u_datapath|u_contDiv|q[1]~7_combout\,
	cout => \u_datapath|u_contDiv|q[1]~8\);

-- Location: LCCOMB_X47_Y19_N6
\u_control|next_state.s4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_control|next_state.s4~0_combout\ = (\u_datapath|u_equal|Equal0~0_combout\ & (\u_datapath|u_equal|Equal0~1_combout\ & \u_control|state.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_equal|Equal0~0_combout\,
	datac => \u_datapath|u_equal|Equal0~1_combout\,
	datad => \u_control|state.s3~regout\,
	combout => \u_control|next_state.s4~0_combout\);

-- Location: LCFF_X47_Y19_N7
\u_control|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_control|next_state.s4~0_combout\,
	aclr => \ALT_INV_i_clrn~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_control|state.s4~regout\);

-- Location: LCFF_X47_Y19_N15
\u_datapath|u_contDiv|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[1]~7_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(1));

-- Location: LCCOMB_X47_Y19_N18
\u_datapath|u_contDiv|q[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[3]~11_combout\ = (\u_datapath|u_contDiv|q\(3) & (\u_datapath|u_contDiv|q[2]~10\ $ (GND))) # (!\u_datapath|u_contDiv|q\(3) & (!\u_datapath|u_contDiv|q[2]~10\ & VCC))
-- \u_datapath|u_contDiv|q[3]~12\ = CARRY((\u_datapath|u_contDiv|q\(3) & !\u_datapath|u_contDiv|q[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_datapath|u_contDiv|q\(3),
	datad => VCC,
	cin => \u_datapath|u_contDiv|q[2]~10\,
	combout => \u_datapath|u_contDiv|q[3]~11_combout\,
	cout => \u_datapath|u_contDiv|q[3]~12\);

-- Location: LCFF_X47_Y19_N19
\u_datapath|u_contDiv|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[3]~11_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(3));

-- Location: LCCOMB_X47_Y19_N20
\u_datapath|u_contDiv|q[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_contDiv|q[4]~13_combout\ = (\u_datapath|u_contDiv|q\(4) & (!\u_datapath|u_contDiv|q[3]~12\)) # (!\u_datapath|u_contDiv|q\(4) & ((\u_datapath|u_contDiv|q[3]~12\) # (GND)))
-- \u_datapath|u_contDiv|q[4]~14\ = CARRY((!\u_datapath|u_contDiv|q[3]~12\) # (!\u_datapath|u_contDiv|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(4),
	datad => VCC,
	cin => \u_datapath|u_contDiv|q[3]~12\,
	combout => \u_datapath|u_contDiv|q[4]~13_combout\,
	cout => \u_datapath|u_contDiv|q[4]~14\);

-- Location: LCFF_X47_Y19_N23
\u_datapath|u_contDiv|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[5]~15_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(5));

-- Location: LCFF_X47_Y19_N21
\u_datapath|u_contDiv|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_contDiv|q[4]~13_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	ena => \u_control|state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_contDiv|q\(4));

-- Location: LCCOMB_X47_Y19_N2
\u_datapath|u_regOut|o_Q[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regOut|o_Q[0]~0_combout\ = (!\u_datapath|u_contDiv|q\(6) & (!\u_datapath|u_contDiv|q\(5) & (!\u_datapath|u_contDiv|q\(4) & !\u_datapath|u_contDiv|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_contDiv|q\(6),
	datab => \u_datapath|u_contDiv|q\(5),
	datac => \u_datapath|u_contDiv|q\(4),
	datad => \u_datapath|u_contDiv|q\(3),
	combout => \u_datapath|u_regOut|o_Q[0]~0_combout\);

-- Location: LCCOMB_X46_Y19_N24
\u_datapath|u_regOut|o_Q[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_datapath|u_regOut|o_Q[0]~2_combout\ = (\u_control|state.s6~regout\ & (\u_datapath|u_regOut|o_Q[0]~1_combout\ & ((\u_datapath|u_regOut|o_Q[0]~0_combout\)))) # (!\u_control|state.s6~regout\ & (((\u_datapath|u_regOut|o_Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_datapath|u_regOut|o_Q[0]~1_combout\,
	datab => \u_control|state.s6~regout\,
	datac => \u_datapath|u_regOut|o_Q\(0),
	datad => \u_datapath|u_regOut|o_Q[0]~0_combout\,
	combout => \u_datapath|u_regOut|o_Q[0]~2_combout\);

-- Location: LCFF_X46_Y19_N25
\u_datapath|u_regOut|o_Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i_clk~clkctrl_outclk\,
	datain => \u_datapath|u_regOut|o_Q[0]~2_combout\,
	aclr => \u_datapath|w_clrnRegs~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_datapath|u_regOut|o_Q\(0));

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_res~I\ : cycloneii_io
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
	padio => ww_o_res);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
END structure;


