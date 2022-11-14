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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "11/14/2022 18:06:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	elevador IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	atual : OUT std_logic_vector(3 DOWNTO 0);
	requisitado : OUT std_logic_vector(3 DOWNTO 0);
	subindo : OUT std_logic;
	parado : OUT std_logic;
	descendo : OUT std_logic
	);
END elevador;

-- Design Ports Information
-- atual[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- atual[3]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- requisitado[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- requisitado[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- requisitado[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- requisitado[3]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- subindo	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- parado	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- descendo	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF elevador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_atual : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_requisitado : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_subindo : std_logic;
SIGNAL ww_parado : std_logic;
SIGNAL ww_descendo : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \atual[0]~output_o\ : std_logic;
SIGNAL \atual[1]~output_o\ : std_logic;
SIGNAL \atual[2]~output_o\ : std_logic;
SIGNAL \atual[3]~output_o\ : std_logic;
SIGNAL \requisitado[0]~output_o\ : std_logic;
SIGNAL \requisitado[1]~output_o\ : std_logic;
SIGNAL \requisitado[2]~output_o\ : std_logic;
SIGNAL \requisitado[3]~output_o\ : std_logic;
SIGNAL \subindo~output_o\ : std_logic;
SIGNAL \parado~output_o\ : std_logic;
SIGNAL \descendo~output_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \c~0_combout\ : std_logic;
SIGNAL \andar_atual[3]~3_combout\ : std_logic;
SIGNAL \andar_atual[3]~2_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \estado.S~q\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \estado.P~q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \estado.D~q\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \atual~0_combout\ : std_logic;
SIGNAL \atual~1_combout\ : std_logic;
SIGNAL \atual~2_combout\ : std_logic;
SIGNAL \atual~3_combout\ : std_logic;
SIGNAL \requisitado~0_combout\ : std_logic;
SIGNAL \requisitado~1_combout\ : std_logic;
SIGNAL \requisitado~2_combout\ : std_logic;
SIGNAL \requisitado~3_combout\ : std_logic;
SIGNAL \subindo~0_combout\ : std_logic;
SIGNAL \subindo~1_combout\ : std_logic;
SIGNAL \descendo~0_combout\ : std_logic;
SIGNAL andar_requisitado : std_logic_vector(3 DOWNTO 0);
SIGNAL andar_atual : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_subindo~1_combout\ : std_logic;
SIGNAL \ALT_INV_subindo~0_combout\ : std_logic;
SIGNAL \ALT_INV_estado.P~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_input <= input;
atual <= ww_atual;
requisitado <= ww_requisitado;
subindo <= ww_subindo;
parado <= ww_parado;
descendo <= ww_descendo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
\ALT_INV_subindo~1_combout\ <= NOT \subindo~1_combout\;
\ALT_INV_subindo~0_combout\ <= NOT \subindo~0_combout\;
\ALT_INV_estado.P~q\ <= NOT \estado.P~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y34_N9
\atual[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual~0_combout\,
	devoe => ww_devoe,
	o => \atual[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\atual[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual~1_combout\,
	devoe => ww_devoe,
	o => \atual[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\atual[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual~2_combout\,
	devoe => ww_devoe,
	o => \atual[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\atual[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \atual~3_combout\,
	devoe => ww_devoe,
	o => \atual[3]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\requisitado[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \requisitado~0_combout\,
	devoe => ww_devoe,
	o => \requisitado[0]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\requisitado[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \requisitado~1_combout\,
	devoe => ww_devoe,
	o => \requisitado[1]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\requisitado[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \requisitado~2_combout\,
	devoe => ww_devoe,
	o => \requisitado[2]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\requisitado[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \requisitado~3_combout\,
	devoe => ww_devoe,
	o => \requisitado[3]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\subindo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_subindo~0_combout\,
	devoe => ww_devoe,
	o => \subindo~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\parado~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_subindo~1_combout\,
	devoe => ww_devoe,
	o => \parado~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\descendo~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \descendo~0_combout\,
	devoe => ww_devoe,
	o => \descendo~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y28_N22
\input[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y31_N15
\input[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X2_Y32_N29
\andar_requisitado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_estado.P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_requisitado(3));

-- Location: LCCOMB_X2_Y32_N0
\Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = \estado.D~q\ $ (andar_atual(1) $ (andar_atual(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.D~q\,
	datac => andar_atual(1),
	datad => andar_atual(0),
	combout => \Selector6~0_combout\);

-- Location: IOIBUF_X0_Y29_N15
\input[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: FF_X2_Y32_N27
\andar_requisitado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[0]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_estado.P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_requisitado(0));

-- Location: IOIBUF_X0_Y29_N22
\input[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X2_Y32_N21
\andar_requisitado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_estado.P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_requisitado(1));

-- Location: LCCOMB_X2_Y32_N2
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (andar_requisitado(0) & (andar_atual(0) & (andar_requisitado(1) $ (!andar_atual(1))))) # (!andar_requisitado(0) & (!andar_atual(0) & (andar_requisitado(1) $ (!andar_atual(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_requisitado(0),
	datab => andar_requisitado(1),
	datac => andar_atual(1),
	datad => andar_atual(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y32_N10
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = andar_atual(2) $ (((andar_atual(0) & (!\estado.D~q\ & andar_atual(1))) # (!andar_atual(0) & (\estado.D~q\ & !andar_atual(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_atual(0),
	datab => \estado.D~q\,
	datac => andar_atual(2),
	datad => andar_atual(1),
	combout => \Selector5~0_combout\);

-- Location: FF_X2_Y32_N11
\andar_atual[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \andar_atual[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_atual(2));

-- Location: LCCOMB_X2_Y32_N22
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (andar_requisitado(3) & (((!andar_atual(2) & andar_requisitado(2))) # (!andar_atual(3)))) # (!andar_requisitado(3) & (!andar_atual(2) & (andar_requisitado(2) & !andar_atual(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_atual(2),
	datab => andar_requisitado(3),
	datac => andar_requisitado(2),
	datad => andar_atual(3),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X2_Y32_N26
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (andar_requisitado(1) & (((!andar_atual(0) & andar_requisitado(0))) # (!andar_atual(1)))) # (!andar_requisitado(1) & (!andar_atual(0) & (andar_requisitado(0) & !andar_atual(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_atual(0),
	datab => andar_requisitado(1),
	datac => andar_requisitado(0),
	datad => andar_atual(1),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X2_Y32_N16
\c~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \c~0_combout\ = (\LessThan1~0_combout\) # ((\Equal0~0_combout\ & ((\Equal0~1_combout\) # (\LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \LessThan1~0_combout\,
	datad => \LessThan1~1_combout\,
	combout => \c~0_combout\);

-- Location: LCCOMB_X2_Y32_N18
\andar_atual[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar_atual[3]~3_combout\ = ((\LessThan0~2_combout\) # ((\Equal0~0_combout\ & \Equal0~1_combout\))) # (!\estado.S~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \estado.S~q\,
	datad => \LessThan0~2_combout\,
	combout => \andar_atual[3]~3_combout\);

-- Location: LCCOMB_X2_Y32_N24
\andar_atual[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \andar_atual[3]~2_combout\ = ((!\c~0_combout\ & \estado.D~q\)) # (!\andar_atual[3]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c~0_combout\,
	datac => \estado.D~q\,
	datad => \andar_atual[3]~3_combout\,
	combout => \andar_atual[3]~2_combout\);

-- Location: FF_X2_Y32_N1
\andar_atual[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \andar_atual[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_atual(1));

-- Location: LCCOMB_X2_Y32_N30
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (andar_atual(0) & (((\estado.D~q\) # (!andar_atual(2))) # (!andar_atual(1)))) # (!andar_atual(0) & ((andar_atual(1)) # ((andar_atual(2)) # (!\estado.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_atual(0),
	datab => andar_atual(1),
	datac => \estado.D~q\,
	datad => andar_atual(2),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X2_Y32_N4
\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = andar_atual(3) $ (!\Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_atual(3),
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: FF_X2_Y32_N5
\andar_atual[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \andar_atual[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_atual(3));

-- Location: LCCOMB_X2_Y32_N14
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (andar_requisitado(3) & (!andar_requisitado(2) & (andar_atual(3) & andar_atual(2)))) # (!andar_requisitado(3) & ((andar_atual(3)) # ((!andar_requisitado(2) & andar_atual(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_requisitado(2),
	datab => andar_requisitado(3),
	datac => andar_atual(3),
	datad => andar_atual(2),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X2_Y32_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (andar_requisitado(1) & (andar_atual(0) & (!andar_requisitado(0) & andar_atual(1)))) # (!andar_requisitado(1) & ((andar_atual(1)) # ((andar_atual(0) & !andar_requisitado(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_atual(0),
	datab => andar_requisitado(1),
	datac => andar_requisitado(0),
	datad => andar_atual(1),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X2_Y32_N6
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((\Equal0~0_combout\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X3_Y32_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & \Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X3_Y32_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\LessThan0~2_combout\ & (\estado.P~q\ $ ((!\estado.S~q\)))) # (!\LessThan0~2_combout\ & (((\estado.S~q\ & \Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.P~q\,
	datab => \estado.S~q\,
	datac => \LessThan0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X3_Y32_N28
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\LessThan0~0_combout\ & (!\estado.P~q\ & ((!\LessThan0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \estado.P~q\,
	datac => \Equal0~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X3_Y32_N2
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~0_combout\) # ((\Equal0~0_combout\ & \LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X3_Y32_N10
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Equal0~2_combout\ & (\estado.D~q\ $ (((\Selector2~0_combout\ & \LessThan1~2_combout\))))) # (!\Equal0~2_combout\ & (\LessThan1~2_combout\ & ((\Selector2~0_combout\) # (\estado.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Selector2~0_combout\,
	datac => \estado.D~q\,
	datad => \LessThan1~2_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X3_Y32_N20
\Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\Selector0~0_combout\ & (((\estado.S~q\ & \Selector2~1_combout\)))) # (!\Selector0~0_combout\ & ((\Selector2~1_combout\ & (!\Selector2~3_combout\)) # (!\Selector2~1_combout\ & ((\estado.S~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector0~0_combout\,
	datac => \estado.S~q\,
	datad => \Selector2~1_combout\,
	combout => \Selector0~1_combout\);

-- Location: FF_X3_Y32_N21
\estado.S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.S~q\);

-- Location: LCCOMB_X2_Y32_N20
\Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\Equal0~0_combout\ & (\estado.S~q\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \estado.S~q\,
	datad => \Equal0~1_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X3_Y32_N16
\Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = \Selector0~0_combout\ $ (\Selector2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector0~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X3_Y32_N26
\Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~2_combout\ & (!\Selector2~3_combout\ & (!\Selector2~4_combout\))) # (!\Selector2~2_combout\ & (((\estado.P~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector2~4_combout\,
	datac => \estado.P~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~5_combout\);

-- Location: FF_X3_Y32_N27
\estado.P\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.P~q\);

-- Location: FF_X2_Y32_N23
\andar_requisitado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \ALT_INV_estado.P~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_requisitado(2));

-- Location: LCCOMB_X2_Y32_N28
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (andar_requisitado(2) & (andar_atual(2) & (andar_atual(3) $ (!andar_requisitado(3))))) # (!andar_requisitado(2) & (!andar_atual(2) & (andar_atual(3) $ (!andar_requisitado(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => andar_requisitado(2),
	datab => andar_atual(3),
	datac => andar_requisitado(3),
	datad => andar_atual(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X3_Y32_N18
\Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\estado.D~q\ & (\Equal0~0_combout\ & \Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.D~q\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X3_Y32_N14
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\LessThan0~2_combout\ & (((\estado.S~q\ & !\Equal0~2_combout\)) # (!\estado.P~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.P~q\,
	datab => \estado.S~q\,
	datac => \LessThan0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X3_Y32_N0
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector2~2_combout\ & (!\Selector2~3_combout\ & (\Selector1~0_combout\))) # (!\Selector2~2_combout\ & (((\estado.D~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~3_combout\,
	datab => \Selector1~0_combout\,
	datac => \estado.D~q\,
	datad => \Selector2~2_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X3_Y32_N1
\estado.D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.D~q\);

-- Location: LCCOMB_X2_Y32_N8
\Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\estado.P~q\ & (!\LessThan0~2_combout\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \estado.P~q\,
	datac => \Equal0~1_combout\,
	datad => \LessThan0~2_combout\,
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X3_Y32_N4
\Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = andar_atual(0) $ (((\estado.D~q\ & (!\c~0_combout\)) # (!\estado.D~q\ & ((\Selector7~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011111010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.D~q\,
	datab => \c~0_combout\,
	datac => andar_atual(0),
	datad => \Selector7~3_combout\,
	combout => \Selector7~2_combout\);

-- Location: FF_X3_Y32_N5
\andar_atual[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => andar_atual(0));

-- Location: LCCOMB_X3_Y32_N22
\atual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual~0_combout\ = (!\reset~input_o\ & andar_atual(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => andar_atual(0),
	combout => \atual~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\atual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual~1_combout\ = (andar_atual(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_atual(1),
	datad => \reset~input_o\,
	combout => \atual~1_combout\);

-- Location: LCCOMB_X1_Y32_N14
\atual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual~2_combout\ = (andar_atual(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_atual(2),
	datad => \reset~input_o\,
	combout => \atual~2_combout\);

-- Location: LCCOMB_X1_Y32_N20
\atual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \atual~3_combout\ = (andar_atual(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_atual(3),
	datad => \reset~input_o\,
	combout => \atual~3_combout\);

-- Location: LCCOMB_X1_Y32_N22
\requisitado~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \requisitado~0_combout\ = (andar_requisitado(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => andar_requisitado(0),
	datad => \reset~input_o\,
	combout => \requisitado~0_combout\);

-- Location: LCCOMB_X1_Y32_N4
\requisitado~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \requisitado~1_combout\ = (andar_requisitado(1) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_requisitado(1),
	datad => \reset~input_o\,
	combout => \requisitado~1_combout\);

-- Location: LCCOMB_X1_Y32_N10
\requisitado~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \requisitado~2_combout\ = (andar_requisitado(2) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => andar_requisitado(2),
	datad => \reset~input_o\,
	combout => \requisitado~2_combout\);

-- Location: LCCOMB_X1_Y32_N28
\requisitado~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \requisitado~3_combout\ = (andar_requisitado(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => andar_requisitado(3),
	datad => \reset~input_o\,
	combout => \requisitado~3_combout\);

-- Location: LCCOMB_X3_Y32_N24
\subindo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \subindo~0_combout\ = ((\reset~input_o\) # (\estado.D~q\)) # (!\estado.P~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.P~q\,
	datac => \reset~input_o\,
	datad => \estado.D~q\,
	combout => \subindo~0_combout\);

-- Location: LCCOMB_X3_Y32_N30
\subindo~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \subindo~1_combout\ = (\estado.P~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.P~q\,
	datac => \reset~input_o\,
	combout => \subindo~1_combout\);

-- Location: LCCOMB_X3_Y32_N12
\descendo~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \descendo~0_combout\ = (\estado.P~q\ & (!\reset~input_o\ & \estado.D~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.P~q\,
	datac => \reset~input_o\,
	datad => \estado.D~q\,
	combout => \descendo~0_combout\);

ww_atual(0) <= \atual[0]~output_o\;

ww_atual(1) <= \atual[1]~output_o\;

ww_atual(2) <= \atual[2]~output_o\;

ww_atual(3) <= \atual[3]~output_o\;

ww_requisitado(0) <= \requisitado[0]~output_o\;

ww_requisitado(1) <= \requisitado[1]~output_o\;

ww_requisitado(2) <= \requisitado[2]~output_o\;

ww_requisitado(3) <= \requisitado[3]~output_o\;

ww_subindo <= \subindo~output_o\;

ww_parado <= \parado~output_o\;

ww_descendo <= \descendo~output_o\;
END structure;


