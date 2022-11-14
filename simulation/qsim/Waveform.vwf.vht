-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "11/14/2022 18:06:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          elevador
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY elevador_vhd_vec_tst IS
END elevador_vhd_vec_tst;
ARCHITECTURE elevador_arch OF elevador_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL atual : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk : STD_LOGIC;
SIGNAL descendo : STD_LOGIC;
SIGNAL input : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL parado : STD_LOGIC;
SIGNAL requisitado : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL subindo : STD_LOGIC;
COMPONENT elevador
	PORT (
	atual : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk : IN STD_LOGIC;
	descendo : OUT STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	parado : OUT STD_LOGIC;
	requisitado : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reset : IN STD_LOGIC;
	subindo : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : elevador
	PORT MAP (
-- list connections between master ports and signals
	atual => atual,
	clk => clk,
	descendo => descendo,
	input => input,
	parado => parado,
	requisitado => requisitado,
	reset => reset,
	subindo => subindo
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 500 ps;
	clk <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 100 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
	WAIT FOR 250000 ps;
	reset <= '0';
	WAIT FOR 250000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- input[3]
t_prcs_input_3: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		input(3) <= '1';
		WAIT FOR 40000 ps;
		input(3) <= '0';
		WAIT FOR 40000 ps;
	END LOOP;
	input(3) <= '1';
WAIT;
END PROCESS t_prcs_input_3;
-- input[2]
t_prcs_input_2: PROCESS
BEGIN
LOOP
	input(2) <= '0';
	WAIT FOR 20000 ps;
	input(2) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_2;
-- input[1]
t_prcs_input_1: PROCESS
BEGIN
LOOP
	input(1) <= '0';
	WAIT FOR 10000 ps;
	input(1) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_1;
-- input[0]
t_prcs_input_0: PROCESS
BEGIN
LOOP
	input(0) <= '0';
	WAIT FOR 5000 ps;
	input(0) <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_input_0;
END elevador_arch;
