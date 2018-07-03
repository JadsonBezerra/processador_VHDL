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

-- DATE "06/29/2018 15:02:16"

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

ENTITY 	cpu IS
    PORT (
	rst : IN std_logic;
	start : IN std_logic;
	clk : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0);
	hex0 : OUT std_logic_vector(6 DOWNTO 0);
	hex1 : OUT std_logic_vector(6 DOWNTO 0);
	hex2 : OUT std_logic_vector(6 DOWNTO 0);
	hex3 : OUT std_logic_vector(6 DOWNTO 0);
	hex4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- output[0]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[1]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[2]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- output[3]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- hex4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_hex0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_hex4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu_in1[3]~0_combout\ : std_logic;
SIGNAL \controller|Selector34~0_combout\ : std_logic;
SIGNAL \controller|Selector35~0_combout\ : std_logic;
SIGNAL \controller|ADDRESS[0]~0_combout\ : std_logic;
SIGNAL \datapath|registrador|out0[0]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \controller|state.s4~regout\ : std_logic;
SIGNAL \controller|Selector37~0_combout\ : std_logic;
SIGNAL \controller|state.s1~regout\ : std_logic;
SIGNAL \controller|state.s2~regout\ : std_logic;
SIGNAL \controller|state.s3~feeder_combout\ : std_logic;
SIGNAL \controller|state.s3~regout\ : std_logic;
SIGNAL \controller|Add0~0_combout\ : std_logic;
SIGNAL \controller|Add0~2_combout\ : std_logic;
SIGNAL \controller|state.s0~0_combout\ : std_logic;
SIGNAL \controller|state.s0~regout\ : std_logic;
SIGNAL \controller|Add0~3_combout\ : std_logic;
SIGNAL \controller|Add0~1\ : std_logic;
SIGNAL \controller|Add0~4_combout\ : std_logic;
SIGNAL \controller|Add0~6_combout\ : std_logic;
SIGNAL \controller|Mux2~0_combout\ : std_logic;
SIGNAL \controller|OPCODE[2]~0_combout\ : std_logic;
SIGNAL \controller|estado_atual[0]~0_combout\ : std_logic;
SIGNAL \hex0[0]~reg0_regout\ : std_logic;
SIGNAL \controller|OPCODE[1]~1_combout\ : std_logic;
SIGNAL \controller|estado_atual[1]~1_combout\ : std_logic;
SIGNAL \hex1[0]~reg0_regout\ : std_logic;
SIGNAL \controller|Mux2~1_combout\ : std_logic;
SIGNAL \controller|estado_atual[2]~2_combout\ : std_logic;
SIGNAL \hex2[0]~reg0feeder_combout\ : std_logic;
SIGNAL \hex2[0]~reg0_regout\ : std_logic;
SIGNAL \datapath|dado[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|Mux11~1_combout\ : std_logic;
SIGNAL \datapath|registrador|out1[1]~feeder_combout\ : std_logic;
SIGNAL \controller|Mux3~0_combout\ : std_logic;
SIGNAL \controller|Selector33~0_combout\ : std_logic;
SIGNAL \datapath|dd[0]~0_combout\ : std_logic;
SIGNAL \datapath|dd[0]~1_combout\ : std_logic;
SIGNAL \datapath|registrador|out1[1]~0_combout\ : std_logic;
SIGNAL \datapath|registrador|out0[1]~feeder_combout\ : std_logic;
SIGNAL \datapath|registrador|out0[1]~0_combout\ : std_logic;
SIGNAL \datapath|registrador|Mux18~0_combout\ : std_logic;
SIGNAL \datapath|Mux11~0_combout\ : std_logic;
SIGNAL \datapath|enable_reg~regout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~1_combout\ : std_logic;
SIGNAL \datapath|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|enable_acu~0_combout\ : std_logic;
SIGNAL \datapath|alu1|output[3]~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~4_cout\ : std_logic;
SIGNAL \datapath|alu1|Add0~5_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux3~1_combout\ : std_logic;
SIGNAL \datapath|Mux8~0_combout\ : std_logic;
SIGNAL \datapath|acu_in[3]~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|enable_acu~1_combout\ : std_logic;
SIGNAL \datapath|enable_acu~regout\ : std_logic;
SIGNAL \datapath|dado[0]~feeder_combout\ : std_logic;
SIGNAL \datapath|registrador|out1[0]~1_combout\ : std_logic;
SIGNAL \datapath|registrador|Mux19~0_combout\ : std_logic;
SIGNAL \datapath|alu_in2[3]~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~2_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~6\ : std_logic;
SIGNAL \datapath|alu1|Add0~7_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux2~1_combout\ : std_logic;
SIGNAL \datapath|Mux7~0_combout\ : std_logic;
SIGNAL \datapath|dado[3]~feeder_combout\ : std_logic;
SIGNAL \datapath|registrador|out0[3]~1_combout\ : std_logic;
SIGNAL \datapath|registrador|out1[3]~2_combout\ : std_logic;
SIGNAL \datapath|registrador|Mux16~0_combout\ : std_logic;
SIGNAL \datapath|alu_in1[3]~1_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~11_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~8\ : std_logic;
SIGNAL \datapath|alu1|Add0~9_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux1~1_combout\ : std_logic;
SIGNAL \datapath|Mux6~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|registrador|out0[2]~feeder_combout\ : std_logic;
SIGNAL \datapath|registrador|Mux17~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Add0~10\ : std_logic;
SIGNAL \datapath|alu1|Add0~12_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~0_combout\ : std_logic;
SIGNAL \datapath|alu1|Mux0~1_combout\ : std_logic;
SIGNAL \datapath|Mux5~0_combout\ : std_logic;
SIGNAL \datapath|acumulador_atual|output[3]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \hex4[2]~0_combout\ : std_logic;
SIGNAL \hex4[0]~reg0_regout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \hex4[1]~reg0_regout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \hex4[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \hex4[3]~reg0_regout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \hex4[4]~reg0_regout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \hex4[5]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \hex4[6]~1_combout\ : std_logic;
SIGNAL \hex4[6]~reg0_regout\ : std_logic;
SIGNAL \controller|imm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|estado_atual\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu_in1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|dado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu_in2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|ADDRESS\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|registrador|out1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|registrador|out0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|OPCODE\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|registrador|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \controller|PC\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \datapath|dd\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \datapath|acu_in\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|acumulador_atual|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \datapath|alu1|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_hex4[6]~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \ALT_INV_clk~combout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_start <= start;
ww_clk <= clk;
output <= ww_output;
hex0 <= ww_hex0;
hex1 <= ww_hex1;
hex2 <= ww_hex2;
hex3 <= ww_hex3;
hex4 <= ww_hex4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\ALT_INV_hex4[6]~reg0_regout\ <= NOT \hex4[6]~reg0_regout\;
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\ALT_INV_clk~combout\ <= NOT \clk~combout\;

-- Location: LCFF_X62_Y26_N27
\datapath|alu_in1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|Mux1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in1\(2));

-- Location: LCFF_X62_Y26_N1
\datapath|alu_in2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|registrador|output\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|alu_in2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in2\(1));

-- Location: LCFF_X62_Y26_N5
\datapath|alu_in1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|Mux3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in1\(0));

-- Location: LCFF_X61_Y27_N29
\datapath|registrador|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|dado\(2),
	sload => VCC,
	ena => \datapath|registrador|out1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out1\(2));

-- Location: LCFF_X60_Y27_N15
\datapath|registrador|out0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out0[0]~feeder_combout\,
	ena => \datapath|registrador|out0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out0\(0));

-- Location: LCCOMB_X63_Y26_N0
\datapath|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux1~0_combout\ = (\controller|estado_atual\(0) & (\datapath|acumulador_atual|output\(2))) # (!\controller|estado_atual\(0) & ((\controller|estado_atual\(2) & (\datapath|acumulador_atual|output\(2))) # (!\controller|estado_atual\(2) & 
-- ((\controller|imm\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \controller|imm\(2),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|Mux1~0_combout\);

-- Location: LCFF_X64_Y26_N27
\controller|imm[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector34~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(1));

-- Location: LCFF_X64_Y26_N9
\controller|imm[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector35~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(0));

-- Location: LCCOMB_X63_Y26_N16
\datapath|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux3~0_combout\ = (\controller|estado_atual\(0) & (\datapath|acumulador_atual|output\(0))) # (!\controller|estado_atual\(0) & ((\controller|estado_atual\(2) & (\datapath|acumulador_atual|output\(0))) # (!\controller|estado_atual\(2) & 
-- ((\controller|imm\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(0),
	datab => \controller|imm\(0),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y27_N14
\datapath|alu_in1[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu_in1[3]~0_combout\ = (\datapath|acumulador_atual|output\(3) & (\controller|estado_atual\(2) $ (((\controller|estado_atual\(1) & \controller|estado_atual\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(3),
	datab => \controller|estado_atual\(1),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu_in1[3]~0_combout\);

-- Location: LCCOMB_X64_Y26_N26
\controller|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector34~0_combout\ = (\controller|state.s3~regout\ & (((!\controller|ADDRESS\(2))))) # (!\controller|state.s3~regout\ & (\controller|state.s0~regout\ & (\controller|imm\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|state.s0~regout\,
	datac => \controller|imm\(1),
	datad => \controller|ADDRESS\(2),
	combout => \controller|Selector34~0_combout\);

-- Location: LCFF_X64_Y25_N5
\controller|ADDRESS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|ADDRESS[0]~0_combout\,
	ena => \controller|OPCODE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(0));

-- Location: LCCOMB_X64_Y26_N8
\controller|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector35~0_combout\ = (\controller|state.s3~regout\ & (((\controller|ADDRESS\(0))))) # (!\controller|state.s3~regout\ & (\controller|state.s0~regout\ & (\controller|imm\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|state.s0~regout\,
	datac => \controller|imm\(0),
	datad => \controller|ADDRESS\(0),
	combout => \controller|Selector35~0_combout\);

-- Location: LCCOMB_X64_Y25_N4
\controller|ADDRESS[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|ADDRESS[0]~0_combout\ = !\controller|PC\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(0),
	combout => \controller|ADDRESS[0]~0_combout\);

-- Location: LCCOMB_X60_Y27_N14
\datapath|registrador|out0[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out0[0]~feeder_combout\ = \datapath|dado\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(0),
	combout => \datapath|registrador|out0[0]~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X63_Y27_N23
\controller|state.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|state.s3~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s4~regout\);

-- Location: LCCOMB_X63_Y27_N24
\controller|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector37~0_combout\ = (\controller|state.s4~regout\) # ((!\controller|state.s0~regout\ & \start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s0~regout\,
	datac => \start~combout\,
	datad => \controller|state.s4~regout\,
	combout => \controller|Selector37~0_combout\);

-- Location: LCFF_X63_Y27_N25
\controller|state.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector37~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s1~regout\);

-- Location: LCFF_X63_Y27_N3
\controller|state.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|state.s1~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s2~regout\);

-- Location: LCCOMB_X63_Y27_N16
\controller|state.s3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s3~feeder_combout\ = \controller|state.s2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|state.s2~regout\,
	combout => \controller|state.s3~feeder_combout\);

-- Location: LCFF_X63_Y27_N17
\controller|state.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|state.s3~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s3~regout\);

-- Location: LCCOMB_X64_Y25_N0
\controller|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~0_combout\ = \controller|PC\(0) $ (VCC)
-- \controller|Add0~1\ = CARRY(\controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(0),
	datad => VCC,
	combout => \controller|Add0~0_combout\,
	cout => \controller|Add0~1\);

-- Location: LCCOMB_X64_Y25_N22
\controller|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~2_combout\ = (\controller|state.s2~regout\ & \controller|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s2~regout\,
	datad => \controller|Add0~0_combout\,
	combout => \controller|Add0~2_combout\);

-- Location: LCCOMB_X63_Y27_N12
\controller|state.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|state.s0~0_combout\ = (\start~combout\) # (\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datac => \controller|state.s0~regout\,
	combout => \controller|state.s0~0_combout\);

-- Location: LCFF_X63_Y27_N13
\controller|state.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|state.s0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|state.s0~regout\);

-- Location: LCCOMB_X64_Y25_N12
\controller|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~3_combout\ = (\controller|state.s2~regout\) # (!\controller|state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s2~regout\,
	datad => \controller|state.s0~regout\,
	combout => \controller|Add0~3_combout\);

-- Location: LCFF_X64_Y25_N23
\controller|PC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Add0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(0));

-- Location: LCCOMB_X64_Y25_N2
\controller|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~4_combout\ = \controller|Add0~1\ $ (\controller|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \controller|PC\(1),
	cin => \controller|Add0~1\,
	combout => \controller|Add0~4_combout\);

-- Location: LCCOMB_X64_Y25_N28
\controller|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Add0~6_combout\ = (\controller|state.s2~regout\ & \controller|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|state.s2~regout\,
	datad => \controller|Add0~4_combout\,
	combout => \controller|Add0~6_combout\);

-- Location: LCFF_X64_Y25_N29
\controller|PC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Add0~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \controller|Add0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|PC\(1));

-- Location: LCCOMB_X64_Y25_N14
\controller|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~0_combout\ = (!\controller|PC\(1) & \controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y25_N24
\controller|OPCODE[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[2]~0_combout\ = (!\rst~combout\ & \controller|state.s1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rst~combout\,
	datad => \controller|state.s1~regout\,
	combout => \controller|OPCODE[2]~0_combout\);

-- Location: LCFF_X64_Y25_N25
\controller|OPCODE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|Mux2~0_combout\,
	sload => VCC,
	ena => \controller|OPCODE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(0));

-- Location: LCCOMB_X61_Y26_N28
\controller|estado_atual[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|estado_atual[0]~0_combout\ = (\rst~combout\ & (((\controller|estado_atual\(0))))) # (!\rst~combout\ & ((\controller|state.s3~regout\ & ((\controller|OPCODE\(0)))) # (!\controller|state.s3~regout\ & (\controller|estado_atual\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|state.s3~regout\,
	datac => \controller|estado_atual\(0),
	datad => \controller|OPCODE\(0),
	combout => \controller|estado_atual[0]~0_combout\);

-- Location: LCFF_X61_Y26_N29
\controller|estado_atual[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|estado_atual[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(0));

-- Location: LCFF_X64_Y26_N5
\hex0[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|estado_atual\(0),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex0[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y25_N26
\controller|OPCODE[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|OPCODE[1]~1_combout\ = !\controller|Mux2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|Mux2~0_combout\,
	combout => \controller|OPCODE[1]~1_combout\);

-- Location: LCFF_X64_Y25_N27
\controller|OPCODE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|OPCODE[1]~1_combout\,
	ena => \controller|OPCODE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(1));

-- Location: LCCOMB_X63_Y27_N10
\controller|estado_atual[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|estado_atual[1]~1_combout\ = (\controller|state.s3~regout\ & ((\rst~combout\ & ((\controller|estado_atual\(1)))) # (!\rst~combout\ & (\controller|OPCODE\(1))))) # (!\controller|state.s3~regout\ & (((\controller|estado_atual\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|OPCODE\(1),
	datac => \controller|estado_atual\(1),
	datad => \rst~combout\,
	combout => \controller|estado_atual[1]~1_combout\);

-- Location: LCFF_X63_Y27_N11
\controller|estado_atual[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|estado_atual[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(1));

-- Location: LCFF_X64_Y26_N3
\hex1[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \controller|estado_atual\(1),
	sload => VCC,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex1[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y25_N20
\controller|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux2~1_combout\ = (\controller|PC\(1) & \controller|PC\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux2~1_combout\);

-- Location: LCFF_X64_Y25_N21
\controller|OPCODE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Mux2~1_combout\,
	ena => \controller|OPCODE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|OPCODE\(2));

-- Location: LCCOMB_X61_Y26_N14
\controller|estado_atual[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|estado_atual[2]~2_combout\ = (\rst~combout\ & (((\controller|estado_atual\(2))))) # (!\rst~combout\ & ((\controller|state.s3~regout\ & ((\controller|OPCODE\(2)))) # (!\controller|state.s3~regout\ & (\controller|estado_atual\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|state.s3~regout\,
	datac => \controller|estado_atual\(2),
	datad => \controller|OPCODE\(2),
	combout => \controller|estado_atual[2]~2_combout\);

-- Location: LCFF_X61_Y26_N15
\controller|estado_atual[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|estado_atual[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|estado_atual\(2));

-- Location: LCCOMB_X64_Y26_N12
\hex2[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex2[0]~reg0feeder_combout\ = \controller|estado_atual\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \controller|estado_atual\(2),
	combout => \hex2[0]~reg0feeder_combout\);

-- Location: LCFF_X64_Y26_N13
\hex2[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex2[0]~reg0feeder_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex2[0]~reg0_regout\);

-- Location: LCCOMB_X60_Y27_N10
\datapath|dado[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dado[1]~feeder_combout\ = \datapath|acumulador_atual|output\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output\(1),
	combout => \datapath|dado[1]~feeder_combout\);

-- Location: LCCOMB_X60_Y27_N8
\datapath|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux11~1_combout\ = (!\controller|estado_atual\(1) & (!\controller|estado_atual\(2) & \controller|estado_atual\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \controller|estado_atual\(2),
	datad => \controller|estado_atual\(0),
	combout => \datapath|Mux11~1_combout\);

-- Location: LCFF_X60_Y27_N11
\datapath|dado[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|dado[1]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado\(1));

-- Location: LCCOMB_X61_Y27_N26
\datapath|registrador|out1[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out1[1]~feeder_combout\ = \datapath|dado\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(1),
	combout => \datapath|registrador|out1[1]~feeder_combout\);

-- Location: LCCOMB_X64_Y25_N6
\controller|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Mux3~0_combout\ = (\controller|PC\(0)) # (!\controller|PC\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|PC\(1),
	datad => \controller|PC\(0),
	combout => \controller|Mux3~0_combout\);

-- Location: LCFF_X64_Y25_N7
\controller|ADDRESS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Mux3~0_combout\,
	ena => \controller|OPCODE[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|ADDRESS\(2));

-- Location: LCCOMB_X64_Y26_N0
\controller|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \controller|Selector33~0_combout\ = (\controller|state.s3~regout\ & (((\controller|ADDRESS\(2))))) # (!\controller|state.s3~regout\ & (\controller|state.s0~regout\ & (\controller|imm\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|state.s3~regout\,
	datab => \controller|state.s0~regout\,
	datac => \controller|imm\(2),
	datad => \controller|ADDRESS\(2),
	combout => \controller|Selector33~0_combout\);

-- Location: LCFF_X64_Y26_N1
\controller|imm[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \controller|Selector33~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \controller|imm\(2));

-- Location: LCCOMB_X62_Y27_N8
\datapath|dd[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dd[0]~0_combout\ = (!\rst~combout\ & ((\controller|estado_atual\(0) $ (\controller|estado_atual\(2))) # (!\controller|estado_atual\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \controller|estado_atual\(1),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|dd[0]~0_combout\);

-- Location: LCCOMB_X63_Y27_N20
\datapath|dd[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dd[0]~1_combout\ = (\datapath|dd[0]~0_combout\ & (\controller|imm\(2))) # (!\datapath|dd[0]~0_combout\ & ((\datapath|dd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|imm\(2),
	datac => \datapath|dd\(0),
	datad => \datapath|dd[0]~0_combout\,
	combout => \datapath|dd[0]~1_combout\);

-- Location: LCFF_X63_Y27_N21
\datapath|dd[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|dd[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dd\(0));

-- Location: LCCOMB_X61_Y27_N28
\datapath|registrador|out1[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out1[1]~0_combout\ = (!\datapath|enable_reg~regout\ & (!\rst~combout\ & \datapath|dd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|enable_reg~regout\,
	datab => \rst~combout\,
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|out1[1]~0_combout\);

-- Location: LCFF_X61_Y27_N27
\datapath|registrador|out1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out1[1]~feeder_combout\,
	ena => \datapath|registrador|out1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out1\(1));

-- Location: LCCOMB_X60_Y27_N30
\datapath|registrador|out0[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out0[1]~feeder_combout\ = \datapath|dado\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(1),
	combout => \datapath|registrador|out0[1]~feeder_combout\);

-- Location: LCCOMB_X61_Y27_N4
\datapath|registrador|out0[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out0[1]~0_combout\ = (!\datapath|enable_reg~regout\ & (!\rst~combout\ & !\datapath|dd\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|enable_reg~regout\,
	datac => \rst~combout\,
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|out0[1]~0_combout\);

-- Location: LCFF_X60_Y27_N31
\datapath|registrador|out0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out0[1]~feeder_combout\,
	ena => \datapath|registrador|out0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out0\(1));

-- Location: LCCOMB_X61_Y27_N22
\datapath|registrador|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|Mux18~0_combout\ = (\datapath|dd\(0) & (\datapath|registrador|out1\(1))) # (!\datapath|dd\(0) & ((\datapath|registrador|out0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|registrador|out1\(1),
	datac => \datapath|registrador|out0\(1),
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|Mux18~0_combout\);

-- Location: LCCOMB_X62_Y27_N4
\datapath|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux11~0_combout\ = (\controller|estado_atual\(1)) # (!\controller|estado_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(1),
	datad => \controller|estado_atual\(0),
	combout => \datapath|Mux11~0_combout\);

-- Location: LCFF_X62_Y27_N5
\datapath|enable_reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|Mux11~0_combout\,
	sdata => VCC,
	sload => \controller|estado_atual\(2),
	ena => \datapath|dd[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|enable_reg~regout\);

-- Location: LCFF_X61_Y27_N23
\datapath|registrador|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|Mux18~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|output\(1));

-- Location: LCCOMB_X62_Y26_N0
\datapath|alu1|output[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~1_combout\ = \controller|estado_atual\(0) $ (\controller|estado_atual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu1|output[3]~1_combout\);

-- Location: LCCOMB_X63_Y26_N26
\datapath|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux2~0_combout\ = (\controller|estado_atual\(2) & (((\datapath|acumulador_atual|output\(1))))) # (!\controller|estado_atual\(2) & ((\controller|estado_atual\(0) & ((\datapath|acumulador_atual|output\(1)))) # (!\controller|estado_atual\(0) & 
-- (\controller|imm\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|imm\(1),
	datab => \controller|estado_atual\(2),
	datac => \controller|estado_atual\(0),
	datad => \datapath|acumulador_atual|output\(1),
	combout => \datapath|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y26_N18
\datapath|enable_acu~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|enable_acu~0_combout\ = (\controller|estado_atual\(1) & ((!\controller|estado_atual\(2)) # (!\controller|estado_atual\(0)))) # (!\controller|estado_atual\(1) & ((\controller|estado_atual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(0),
	datab => \controller|estado_atual\(1),
	datad => \controller|estado_atual\(2),
	combout => \datapath|enable_acu~0_combout\);

-- Location: LCFF_X62_Y26_N23
\datapath|alu_in1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|Mux2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in1\(1));

-- Location: LCCOMB_X63_Y26_N28
\datapath|alu1|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|output[3]~0_combout\ = (!\controller|estado_atual\(0) & ((\controller|estado_atual\(1)) # (!\controller|estado_atual\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(1),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu1|output[3]~0_combout\);

-- Location: LCCOMB_X63_Y26_N14
\datapath|alu1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~0_combout\ = (\datapath|alu_in2\(1) & ((\datapath|alu_in1\(1)) # ((\datapath|alu1|output[3]~1_combout\)))) # (!\datapath|alu_in2\(1) & ((\datapath|alu1|output[3]~0_combout\ & (\datapath|alu_in1\(1))) # 
-- (!\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|output[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in2\(1),
	datab => \datapath|alu_in1\(1),
	datac => \datapath|alu1|output[3]~1_combout\,
	datad => \datapath|alu1|output[3]~0_combout\,
	combout => \datapath|alu1|Mux2~0_combout\);

-- Location: LCCOMB_X62_Y26_N22
\datapath|alu1|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~1_combout\ = \datapath|alu_in2\(1) $ (\controller|estado_atual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in2\(1),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu1|Add0~1_combout\);

-- Location: LCCOMB_X62_Y26_N6
\datapath|alu1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~4_cout\ = CARRY(!\controller|estado_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(0),
	datad => VCC,
	cout => \datapath|alu1|Add0~4_cout\);

-- Location: LCCOMB_X62_Y26_N8
\datapath|alu1|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~5_combout\ = (\datapath|alu_in1\(0) & ((\datapath|alu1|Add0~2_combout\ & (\datapath|alu1|Add0~4_cout\ & VCC)) # (!\datapath|alu1|Add0~2_combout\ & (!\datapath|alu1|Add0~4_cout\)))) # (!\datapath|alu_in1\(0) & 
-- ((\datapath|alu1|Add0~2_combout\ & (!\datapath|alu1|Add0~4_cout\)) # (!\datapath|alu1|Add0~2_combout\ & ((\datapath|alu1|Add0~4_cout\) # (GND)))))
-- \datapath|alu1|Add0~6\ = CARRY((\datapath|alu_in1\(0) & (!\datapath|alu1|Add0~2_combout\ & !\datapath|alu1|Add0~4_cout\)) # (!\datapath|alu_in1\(0) & ((!\datapath|alu1|Add0~4_cout\) # (!\datapath|alu1|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1\(0),
	datab => \datapath|alu1|Add0~2_combout\,
	datad => VCC,
	cin => \datapath|alu1|Add0~4_cout\,
	combout => \datapath|alu1|Add0~5_combout\,
	cout => \datapath|alu1|Add0~6\);

-- Location: LCCOMB_X62_Y26_N2
\datapath|alu1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~0_combout\ = (\datapath|alu1|output[3]~1_combout\ & ((\datapath|alu1|output[3]~0_combout\ & (\datapath|alu_in2\(0))) # (!\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|Add0~5_combout\))))) # 
-- (!\datapath|alu1|output[3]~1_combout\ & ((\datapath|alu_in2\(0)) # ((\datapath|alu1|output[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in2\(0),
	datab => \datapath|alu1|output[3]~1_combout\,
	datac => \datapath|alu1|Add0~5_combout\,
	datad => \datapath|alu1|output[3]~0_combout\,
	combout => \datapath|alu1|Mux3~0_combout\);

-- Location: LCCOMB_X62_Y26_N20
\datapath|alu1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux3~1_combout\ = (\datapath|alu_in1\(0) & ((\datapath|alu1|Mux3~0_combout\) # ((\datapath|alu1|output[3]~1_combout\ & \datapath|alu1|output[3]~0_combout\)))) # (!\datapath|alu_in1\(0) & (\datapath|alu1|output[3]~1_combout\ & 
-- ((\datapath|alu1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1\(0),
	datab => \datapath|alu1|output[3]~1_combout\,
	datac => \datapath|alu1|output[3]~0_combout\,
	datad => \datapath|alu1|Mux3~0_combout\,
	combout => \datapath|alu1|Mux3~1_combout\);

-- Location: LCFF_X62_Y26_N21
\datapath|alu1|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|Mux3~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(0));

-- Location: LCCOMB_X63_Y27_N18
\datapath|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux8~0_combout\ = (\controller|estado_atual\(2) & (((\datapath|alu1|output\(0))))) # (!\controller|estado_atual\(2) & ((\controller|estado_atual\(1) & ((\datapath|alu1|output\(0)))) # (!\controller|estado_atual\(1) & 
-- (\datapath|registrador|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|registrador|output\(0),
	datab => \datapath|alu1|output\(0),
	datac => \controller|estado_atual\(2),
	datad => \controller|estado_atual\(1),
	combout => \datapath|Mux8~0_combout\);

-- Location: LCCOMB_X62_Y27_N30
\datapath|acu_in[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acu_in[3]~0_combout\ = (\controller|estado_atual\(1) $ (\controller|estado_atual\(2))) # (!\controller|estado_atual\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(1),
	datac => \controller|estado_atual\(2),
	datad => \controller|estado_atual\(0),
	combout => \datapath|acu_in[3]~0_combout\);

-- Location: LCFF_X63_Y27_N19
\datapath|acu_in[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|Mux8~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|acu_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(0));

-- Location: LCCOMB_X64_Y27_N14
\datapath|acumulador_atual|output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[0]~feeder_combout\ = \datapath|acu_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acu_in\(0),
	combout => \datapath|acumulador_atual|output[0]~feeder_combout\);

-- Location: LCCOMB_X63_Y27_N28
\datapath|enable_acu~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|enable_acu~1_combout\ = (\datapath|enable_acu~regout\) # ((!\rst~combout\ & \datapath|enable_acu~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datac => \datapath|enable_acu~regout\,
	datad => \datapath|enable_acu~0_combout\,
	combout => \datapath|enable_acu~1_combout\);

-- Location: LCFF_X63_Y27_N29
\datapath|enable_acu\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|enable_acu~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|enable_acu~regout\);

-- Location: LCFF_X64_Y27_N15
\datapath|acumulador_atual|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(0));

-- Location: LCCOMB_X60_Y27_N6
\datapath|dado[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dado[0]~feeder_combout\ = \datapath|acumulador_atual|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output\(0),
	combout => \datapath|dado[0]~feeder_combout\);

-- Location: LCFF_X60_Y27_N7
\datapath|dado[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|dado[0]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado\(0));

-- Location: LCCOMB_X61_Y27_N30
\datapath|registrador|out1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out1[0]~1_combout\ = !\datapath|dado\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \datapath|dado\(0),
	combout => \datapath|registrador|out1[0]~1_combout\);

-- Location: LCFF_X61_Y27_N31
\datapath|registrador|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out1[0]~1_combout\,
	ena => \datapath|registrador|out1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out1\(0));

-- Location: LCCOMB_X61_Y27_N18
\datapath|registrador|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|Mux19~0_combout\ = (\datapath|dd\(0) & ((!\datapath|registrador|out1\(0)))) # (!\datapath|dd\(0) & (\datapath|registrador|out0\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|registrador|out0\(0),
	datab => \datapath|registrador|out1\(0),
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|Mux19~0_combout\);

-- Location: LCFF_X61_Y27_N19
\datapath|registrador|output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|Mux19~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|output\(0));

-- Location: LCCOMB_X63_Y26_N2
\datapath|alu_in2[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu_in2[3]~0_combout\ = \controller|estado_atual\(2) $ (((\controller|estado_atual\(1) & \controller|estado_atual\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \controller|estado_atual\(1),
	datac => \controller|estado_atual\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu_in2[3]~0_combout\);

-- Location: LCFF_X62_Y26_N19
\datapath|alu_in2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|registrador|output\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|alu_in2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in2\(0));

-- Location: LCCOMB_X62_Y26_N4
\datapath|alu1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~2_combout\ = \datapath|alu_in2\(0) $ (\controller|estado_atual\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu_in2\(0),
	datad => \controller|estado_atual\(2),
	combout => \datapath|alu1|Add0~2_combout\);

-- Location: LCCOMB_X62_Y26_N10
\datapath|alu1|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~7_combout\ = ((\datapath|alu_in1\(1) $ (\datapath|alu1|Add0~1_combout\ $ (!\datapath|alu1|Add0~6\)))) # (GND)
-- \datapath|alu1|Add0~8\ = CARRY((\datapath|alu_in1\(1) & ((\datapath|alu1|Add0~1_combout\) # (!\datapath|alu1|Add0~6\))) # (!\datapath|alu_in1\(1) & (\datapath|alu1|Add0~1_combout\ & !\datapath|alu1|Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1\(1),
	datab => \datapath|alu1|Add0~1_combout\,
	datad => VCC,
	cin => \datapath|alu1|Add0~6\,
	combout => \datapath|alu1|Add0~7_combout\,
	cout => \datapath|alu1|Add0~8\);

-- Location: LCCOMB_X62_Y26_N30
\datapath|alu1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux2~1_combout\ = (\datapath|alu1|Mux2~0_combout\ & ((\datapath|alu1|output[3]~0_combout\) # ((\datapath|alu1|Add0~7_combout\) # (!\datapath|alu1|output[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~0_combout\,
	datab => \datapath|alu1|output[3]~1_combout\,
	datac => \datapath|alu1|Mux2~0_combout\,
	datad => \datapath|alu1|Add0~7_combout\,
	combout => \datapath|alu1|Mux2~1_combout\);

-- Location: LCFF_X62_Y26_N31
\datapath|alu1|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|Mux2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(1));

-- Location: LCCOMB_X63_Y27_N30
\datapath|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux7~0_combout\ = (\controller|estado_atual\(1) & (((\datapath|alu1|output\(1))))) # (!\controller|estado_atual\(1) & ((\controller|estado_atual\(2) & ((\datapath|alu1|output\(1)))) # (!\controller|estado_atual\(2) & 
-- (\datapath|registrador|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \datapath|registrador|output\(1),
	datac => \controller|estado_atual\(2),
	datad => \datapath|alu1|output\(1),
	combout => \datapath|Mux7~0_combout\);

-- Location: LCFF_X63_Y27_N31
\datapath|acu_in[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|Mux7~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|acu_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(1));

-- Location: LCFF_X64_Y27_N23
\datapath|acumulador_atual|output[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acu_in\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|enable_acu~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(1));

-- Location: LCCOMB_X60_Y27_N28
\datapath|dado[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|dado[3]~feeder_combout\ = \datapath|acumulador_atual|output\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acumulador_atual|output\(3),
	combout => \datapath|dado[3]~feeder_combout\);

-- Location: LCFF_X60_Y27_N29
\datapath|dado[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|dado[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado\(3));

-- Location: LCCOMB_X60_Y27_N16
\datapath|registrador|out0[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out0[3]~1_combout\ = !\datapath|dado\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(3),
	combout => \datapath|registrador|out0[3]~1_combout\);

-- Location: LCFF_X60_Y27_N17
\datapath|registrador|out0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out0[3]~1_combout\,
	ena => \datapath|registrador|out0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out0\(3));

-- Location: LCCOMB_X61_Y27_N24
\datapath|registrador|out1[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out1[3]~2_combout\ = !\datapath|dado\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(3),
	combout => \datapath|registrador|out1[3]~2_combout\);

-- Location: LCFF_X61_Y27_N25
\datapath|registrador|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out1[3]~2_combout\,
	ena => \datapath|registrador|out1[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out1\(3));

-- Location: LCCOMB_X61_Y27_N12
\datapath|registrador|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|Mux16~0_combout\ = (\datapath|dd\(0) & ((!\datapath|registrador|out1\(3)))) # (!\datapath|dd\(0) & (!\datapath|registrador|out0\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|registrador|out0\(3),
	datac => \datapath|registrador|out1\(3),
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|Mux16~0_combout\);

-- Location: LCFF_X61_Y27_N13
\datapath|registrador|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|Mux16~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|output\(3));

-- Location: LCCOMB_X63_Y27_N6
\datapath|alu_in1[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu_in1[3]~1_combout\ = (\datapath|alu_in1[3]~0_combout\) # ((\datapath|alu_in1\(3) & !\datapath|enable_acu~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1[3]~0_combout\,
	datac => \datapath|alu_in1\(3),
	datad => \datapath|enable_acu~0_combout\,
	combout => \datapath|alu_in1[3]~1_combout\);

-- Location: LCFF_X63_Y27_N7
\datapath|alu_in1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu_in1[3]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in1\(3));

-- Location: LCFF_X64_Y26_N7
\datapath|alu_in2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|registrador|output\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|alu_in2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in2\(3));

-- Location: LCCOMB_X63_Y26_N30
\datapath|alu1|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~11_combout\ = \controller|estado_atual\(2) $ (\datapath|alu_in2\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \controller|estado_atual\(2),
	datad => \datapath|alu_in2\(3),
	combout => \datapath|alu1|Add0~11_combout\);

-- Location: LCCOMB_X62_Y26_N16
\datapath|alu1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~0_combout\ = (\datapath|alu_in2\(2) & ((\datapath|alu_in1\(2)) # ((\datapath|alu1|output[3]~1_combout\)))) # (!\datapath|alu_in2\(2) & ((\datapath|alu1|output[3]~0_combout\ & (\datapath|alu_in1\(2))) # 
-- (!\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu1|output[3]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1\(2),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu_in2\(2),
	datad => \datapath|alu1|output[3]~1_combout\,
	combout => \datapath|alu1|Mux1~0_combout\);

-- Location: LCCOMB_X62_Y26_N12
\datapath|alu1|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~9_combout\ = (\datapath|alu_in1\(2) & ((\datapath|alu1|Add0~0_combout\ & (\datapath|alu1|Add0~8\ & VCC)) # (!\datapath|alu1|Add0~0_combout\ & (!\datapath|alu1|Add0~8\)))) # (!\datapath|alu_in1\(2) & ((\datapath|alu1|Add0~0_combout\ & 
-- (!\datapath|alu1|Add0~8\)) # (!\datapath|alu1|Add0~0_combout\ & ((\datapath|alu1|Add0~8\) # (GND)))))
-- \datapath|alu1|Add0~10\ = CARRY((\datapath|alu_in1\(2) & (!\datapath|alu1|Add0~0_combout\ & !\datapath|alu1|Add0~8\)) # (!\datapath|alu_in1\(2) & ((!\datapath|alu1|Add0~8\) # (!\datapath|alu1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in1\(2),
	datab => \datapath|alu1|Add0~0_combout\,
	datad => VCC,
	cin => \datapath|alu1|Add0~8\,
	combout => \datapath|alu1|Add0~9_combout\,
	cout => \datapath|alu1|Add0~10\);

-- Location: LCCOMB_X62_Y26_N28
\datapath|alu1|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux1~1_combout\ = (\datapath|alu1|Mux1~0_combout\ & ((\datapath|alu1|output[3]~0_combout\) # ((\datapath|alu1|Add0~9_combout\) # (!\datapath|alu1|output[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~0_combout\,
	datab => \datapath|alu1|output[3]~1_combout\,
	datac => \datapath|alu1|Mux1~0_combout\,
	datad => \datapath|alu1|Add0~9_combout\,
	combout => \datapath|alu1|Mux1~1_combout\);

-- Location: LCFF_X62_Y26_N29
\datapath|alu1|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|Mux1~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(2));

-- Location: LCCOMB_X63_Y27_N14
\datapath|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux6~0_combout\ = (\controller|estado_atual\(1) & (((\datapath|alu1|output\(2))))) # (!\controller|estado_atual\(1) & ((\controller|estado_atual\(2) & ((\datapath|alu1|output\(2)))) # (!\controller|estado_atual\(2) & 
-- (\datapath|registrador|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \datapath|registrador|output\(2),
	datac => \controller|estado_atual\(2),
	datad => \datapath|alu1|output\(2),
	combout => \datapath|Mux6~0_combout\);

-- Location: LCFF_X63_Y27_N15
\datapath|acu_in[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|Mux6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|acu_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(2));

-- Location: LCCOMB_X64_Y27_N4
\datapath|acumulador_atual|output[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[2]~feeder_combout\ = \datapath|acu_in\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acu_in\(2),
	combout => \datapath|acumulador_atual|output[2]~feeder_combout\);

-- Location: LCFF_X64_Y27_N5
\datapath|acumulador_atual|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[2]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(2));

-- Location: LCFF_X60_Y27_N9
\datapath|dado[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|acumulador_atual|output\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|Mux11~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|dado\(2));

-- Location: LCCOMB_X60_Y27_N20
\datapath|registrador|out0[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|out0[2]~feeder_combout\ = \datapath|dado\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|dado\(2),
	combout => \datapath|registrador|out0[2]~feeder_combout\);

-- Location: LCFF_X60_Y27_N21
\datapath|registrador|out0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|out0[2]~feeder_combout\,
	ena => \datapath|registrador|out0[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|out0\(2));

-- Location: LCCOMB_X61_Y27_N20
\datapath|registrador|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|registrador|Mux17~0_combout\ = (\datapath|dd\(0) & (\datapath|registrador|out1\(2))) # (!\datapath|dd\(0) & ((\datapath|registrador|out0\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|registrador|out1\(2),
	datac => \datapath|registrador|out0\(2),
	datad => \datapath|dd\(0),
	combout => \datapath|registrador|Mux17~0_combout\);

-- Location: LCFF_X61_Y27_N21
\datapath|registrador|output[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|registrador|Mux17~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|registrador|output\(2));

-- Location: LCFF_X62_Y26_N17
\datapath|alu_in2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	sdata => \datapath|registrador|output\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \datapath|alu_in2[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu_in2\(2));

-- Location: LCCOMB_X62_Y26_N26
\datapath|alu1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~0_combout\ = \controller|estado_atual\(2) $ (\datapath|alu_in2\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(2),
	datad => \datapath|alu_in2\(2),
	combout => \datapath|alu1|Add0~0_combout\);

-- Location: LCCOMB_X62_Y26_N14
\datapath|alu1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Add0~12_combout\ = \datapath|alu_in1\(3) $ (\datapath|alu1|Add0~10\ $ (!\datapath|alu1|Add0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \datapath|alu_in1\(3),
	datad => \datapath|alu1|Add0~11_combout\,
	cin => \datapath|alu1|Add0~10\,
	combout => \datapath|alu1|Add0~12_combout\);

-- Location: LCCOMB_X63_Y26_N4
\datapath|alu1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~0_combout\ = (\datapath|alu_in2\(3) & (((\datapath|alu1|output[3]~1_combout\) # (\datapath|alu_in1\(3))))) # (!\datapath|alu_in2\(3) & ((\datapath|alu1|output[3]~0_combout\ & ((\datapath|alu_in1\(3)))) # 
-- (!\datapath|alu1|output[3]~0_combout\ & (\datapath|alu1|output[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu_in2\(3),
	datab => \datapath|alu1|output[3]~0_combout\,
	datac => \datapath|alu1|output[3]~1_combout\,
	datad => \datapath|alu_in1\(3),
	combout => \datapath|alu1|Mux0~0_combout\);

-- Location: LCCOMB_X62_Y26_N24
\datapath|alu1|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|alu1|Mux0~1_combout\ = (\datapath|alu1|Mux0~0_combout\ & ((\datapath|alu1|output[3]~0_combout\) # ((\datapath|alu1|Add0~12_combout\) # (!\datapath|alu1|output[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|alu1|output[3]~0_combout\,
	datab => \datapath|alu1|output[3]~1_combout\,
	datac => \datapath|alu1|Add0~12_combout\,
	datad => \datapath|alu1|Mux0~0_combout\,
	combout => \datapath|alu1|Mux0~1_combout\);

-- Location: LCFF_X62_Y26_N25
\datapath|alu1|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|alu1|Mux0~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|alu1|output\(3));

-- Location: LCCOMB_X63_Y27_N8
\datapath|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|Mux5~0_combout\ = (\controller|estado_atual\(1) & (((\datapath|alu1|output\(3))))) # (!\controller|estado_atual\(1) & ((\controller|estado_atual\(2) & ((\datapath|alu1|output\(3)))) # (!\controller|estado_atual\(2) & 
-- (\datapath|registrador|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controller|estado_atual\(1),
	datab => \datapath|registrador|output\(3),
	datac => \controller|estado_atual\(2),
	datad => \datapath|alu1|output\(3),
	combout => \datapath|Mux5~0_combout\);

-- Location: LCFF_X63_Y27_N9
\datapath|acu_in[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|Mux5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|acu_in[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acu_in\(3));

-- Location: LCCOMB_X64_Y27_N28
\datapath|acumulador_atual|output[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \datapath|acumulador_atual|output[3]~feeder_combout\ = \datapath|acu_in\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \datapath|acu_in\(3),
	combout => \datapath|acumulador_atual|output[3]~feeder_combout\);

-- Location: LCFF_X64_Y27_N29
\datapath|acumulador_atual|output[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \datapath|acumulador_atual|output[3]~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \datapath|enable_acu~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \datapath|acumulador_atual|output\(3));

-- Location: LCCOMB_X64_Y27_N20
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\datapath|acumulador_atual|output\(1) & (!\datapath|acumulador_atual|output\(3) & (\datapath|acumulador_atual|output\(2) $ (\datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X64_Y27_N24
\hex4[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4[2]~0_combout\ = ((!\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(2))) # (!\datapath|acumulador_atual|output\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(2),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \hex4[2]~0_combout\);

-- Location: LCFF_X64_Y27_N21
\hex4[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[0]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N6
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\datapath|acumulador_atual|output\(2) & (!\datapath|acumulador_atual|output\(3) & (\datapath|acumulador_atual|output\(1) $ (\datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux5~0_combout\);

-- Location: LCFF_X64_Y27_N7
\hex4[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[1]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N12
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) & (!\datapath|acumulador_atual|output\(0) & !\datapath|acumulador_atual|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux4~0_combout\);

-- Location: LCFF_X64_Y27_N13
\hex4[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux4~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[2]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N30
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) $ (!\datapath|acumulador_atual|output\(0)))) # (!\datapath|acumulador_atual|output\(2) & 
-- (!\datapath|acumulador_atual|output\(1) & \datapath|acumulador_atual|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux3~0_combout\);

-- Location: LCFF_X64_Y27_N31
\hex4[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux3~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[3]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N16
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\datapath|acumulador_atual|output\(0)) # ((\datapath|acumulador_atual|output\(2) & (!\datapath|acumulador_atual|output\(1) & !\datapath|acumulador_atual|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux2~0_combout\);

-- Location: LCFF_X64_Y27_N17
\hex4[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux2~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[4]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\datapath|acumulador_atual|output\(3) & ((\datapath|acumulador_atual|output\(2) & (\datapath|acumulador_atual|output\(1) & \datapath|acumulador_atual|output\(0))) # (!\datapath|acumulador_atual|output\(2) & 
-- ((\datapath|acumulador_atual|output\(1)) # (\datapath|acumulador_atual|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(1),
	datac => \datapath|acumulador_atual|output\(0),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux1~0_combout\);

-- Location: LCFF_X64_Y27_N19
\hex4[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \Mux1~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \hex4[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[5]~reg0_regout\);

-- Location: LCCOMB_X64_Y27_N22
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\datapath|acumulador_atual|output\(3)) # ((\datapath|acumulador_atual|output\(2) & ((!\datapath|acumulador_atual|output\(1)) # (!\datapath|acumulador_atual|output\(0)))) # (!\datapath|acumulador_atual|output\(2) & 
-- ((\datapath|acumulador_atual|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \datapath|acumulador_atual|output\(2),
	datab => \datapath|acumulador_atual|output\(0),
	datac => \datapath|acumulador_atual|output\(1),
	datad => \datapath|acumulador_atual|output\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X63_Y27_N0
\hex4[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \hex4[6]~1_combout\ = (\hex4[2]~0_combout\ & (\Mux0~0_combout\)) # (!\hex4[2]~0_combout\ & ((\hex4[6]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \hex4[6]~reg0_regout\,
	datad => \hex4[2]~0_combout\,
	combout => \hex4[6]~1_combout\);

-- Location: LCFF_X63_Y27_N1
\hex4[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~combout\,
	datain => \hex4[6]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \hex4[6]~reg0_regout\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\output[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[0]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[3]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[4]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[5]~I\ : cycloneii_io
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
	datain => \hex0[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex0[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex0(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[0]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[3]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[4]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[5]~I\ : cycloneii_io
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
	datain => \hex1[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex1[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex1(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[0]~I\ : cycloneii_io
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
	datain => \hex2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[3]~I\ : cycloneii_io
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
	datain => \hex2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[4]~I\ : cycloneii_io
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
	datain => \hex2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[5]~I\ : cycloneii_io
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
	datain => \hex2[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex2[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex2(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex3[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex3(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[0]~I\ : cycloneii_io
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
	datain => \hex4[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[1]~I\ : cycloneii_io
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
	datain => \hex4[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[2]~I\ : cycloneii_io
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
	datain => \hex4[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[3]~I\ : cycloneii_io
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
	datain => \hex4[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[4]~I\ : cycloneii_io
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
	datain => \hex4[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[5]~I\ : cycloneii_io
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
	datain => \hex4[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\hex4[6]~I\ : cycloneii_io
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
	datain => \ALT_INV_hex4[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_hex4(6));
END structure;


