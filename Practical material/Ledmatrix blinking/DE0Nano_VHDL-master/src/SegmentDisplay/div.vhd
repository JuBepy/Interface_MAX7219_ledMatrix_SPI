-- megafunction wizard: %LPM_DIVIDE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_DIVIDE 

-- ============================================================
-- File Name: div.vhd
-- Megafunction Name(s):
-- 			LPM_DIVIDE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 17.0.1 Build 598 06/07/2017 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2017  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel MegaCore Function License Agreement, or other 
--applicable license agreement, including, without limitation, 
--that your use is for the sole purpose of programming logic 
--devices manufactured by Intel and sold by Intel or its 
--authorized distributors.  Please refer to the applicable 
--agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY div IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		denom		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		numer		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		quotient		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
		remain		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
END div;


ARCHITECTURE SYN OF div IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (13 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC_VECTOR (13 DOWNTO 0);



	COMPONENT lpm_divide
	GENERIC (
		lpm_drepresentation		: STRING;
		lpm_hint		: STRING;
		lpm_nrepresentation		: STRING;
		lpm_pipeline		: NATURAL;
		lpm_type		: STRING;
		lpm_widthd		: NATURAL;
		lpm_widthn		: NATURAL
	);
	PORT (
			clock	: IN STD_LOGIC ;
			denom	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			numer	: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
			quotient	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			remain	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	quotient    <= sub_wire0(13 DOWNTO 0);
	remain    <= sub_wire1(13 DOWNTO 0);

	LPM_DIVIDE_component : LPM_DIVIDE
	GENERIC MAP (
		lpm_drepresentation => "UNSIGNED",
		lpm_hint => "MAXIMIZE_SPEED=5,LPM_REMAINDERPOSITIVE=FALSE",
		lpm_nrepresentation => "UNSIGNED",
		lpm_pipeline => 1,
		lpm_type => "LPM_DIVIDE",
		lpm_widthd => 14,
		lpm_widthn => 14
	)
	PORT MAP (
		clock => clock,
		denom => denom,
		numer => numer,
		quotient => sub_wire0,
		remain => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
-- Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "FALSE"
-- Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "5"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "1"
-- Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=5,LPM_REMAINDERPOSITIVE=FALSE"
-- Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
-- Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
-- Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "14"
-- Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "14"
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
-- Retrieval info: USED_PORT: denom 0 0 14 0 INPUT NODEFVAL "denom[13..0]"
-- Retrieval info: USED_PORT: numer 0 0 14 0 INPUT NODEFVAL "numer[13..0]"
-- Retrieval info: USED_PORT: quotient 0 0 14 0 OUTPUT NODEFVAL "quotient[13..0]"
-- Retrieval info: USED_PORT: remain 0 0 14 0 OUTPUT NODEFVAL "remain[13..0]"
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @denom 0 0 14 0 denom 0 0 14 0
-- Retrieval info: CONNECT: @numer 0 0 14 0 numer 0 0 14 0
-- Retrieval info: CONNECT: quotient 0 0 14 0 @quotient 0 0 14 0
-- Retrieval info: CONNECT: remain 0 0 14 0 @remain 0 0 14 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL div.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL div.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL div.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL div.bsf FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL div_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm