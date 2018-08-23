-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "08/16/2018 22:33:25"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA


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

ENTITY 	Call_Center IS
    PORT (
	u1 : IN std_logic;
	u2 : IN std_logic;
	u3 : IN std_logic;
	u4 : IN std_logic;
	u5 : IN std_logic;
	u6 : IN std_logic;
	u7 : IN std_logic;
	u8 : IN std_logic;
	clock : IN std_logic;
	resetn : IN std_logic;
	start : IN std_logic;
	REALIZAR_LLAMADA : IN std_logic;
	FINALIZAR_LLAMADA : IN std_logic;
	HISTORIAL_LLAMADAS : IN std_logic;
	BORRAR : IN std_logic;
	TECLADO : IN std_logic_vector(9 DOWNTO 0);
	LLAMADA_EN_PROGRESO : BUFFER std_logic_vector(7 DOWNTO 0);
	OCUPADO : BUFFER std_logic;
	DISPLAY_1n : BUFFER std_logic_vector(3 DOWNTO 0);
	DISPLAY_2n : BUFFER std_logic_vector(3 DOWNTO 0);
	DISPLAY_3n : BUFFER std_logic_vector(3 DOWNTO 0);
	DISPLAY_4n : BUFFER std_logic_vector(3 DOWNTO 0);
	DISPLAY_5n : BUFFER std_logic_vector(3 DOWNTO 0);
	DISPLAY_6n : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END Call_Center;

-- Design Ports Information
-- LLAMADA_EN_PROGRESO[0]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[1]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[2]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[3]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[4]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[6]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LLAMADA_EN_PROGRESO[7]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- OCUPADO	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_1n[0]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_1n[1]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_1n[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_1n[3]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_2n[0]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_2n[1]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_2n[2]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_2n[3]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_3n[0]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_3n[1]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_3n[2]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_3n[3]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_4n[0]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_4n[1]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_4n[2]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_4n[3]	=>  Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_5n[0]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_5n[1]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_5n[2]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_5n[3]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_6n[0]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_6n[1]	=>  Location: PIN_P16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_6n[2]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- DISPLAY_6n[3]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- u4	=>  Location: PIN_E6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u3	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u1	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- u2	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u5	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u6	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u8	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- u7	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[7]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[6]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[8]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[9]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[3]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[4]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TECLADO[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- REALIZAR_LLAMADA	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- resetn	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FINALIZAR_LLAMADA	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HISTORIAL_LLAMADAS	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- BORRAR	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Call_Center IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_u1 : std_logic;
SIGNAL ww_u2 : std_logic;
SIGNAL ww_u3 : std_logic;
SIGNAL ww_u4 : std_logic;
SIGNAL ww_u5 : std_logic;
SIGNAL ww_u6 : std_logic;
SIGNAL ww_u7 : std_logic;
SIGNAL ww_u8 : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_resetn : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_REALIZAR_LLAMADA : std_logic;
SIGNAL ww_FINALIZAR_LLAMADA : std_logic;
SIGNAL ww_HISTORIAL_LLAMADAS : std_logic;
SIGNAL ww_BORRAR : std_logic;
SIGNAL ww_TECLADO : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LLAMADA_EN_PROGRESO : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OCUPADO : std_logic;
SIGNAL ww_DISPLAY_1n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY_2n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY_3n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY_4n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY_5n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DISPLAY_6n : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \G|CLOCK_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|CLOCK_100Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_100hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|Selector28~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_100Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_10Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_1Mhz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_10hz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|clock_1Khz_int~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u6~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u7~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|incremento_u1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u8~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|incremento_u2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|incremento_u3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u3~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MSS|ihist_u5~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LLAMADA_EN_PROGRESO[0]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[1]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[2]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[3]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[4]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[5]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[6]~output_o\ : std_logic;
SIGNAL \LLAMADA_EN_PROGRESO[7]~output_o\ : std_logic;
SIGNAL \OCUPADO~output_o\ : std_logic;
SIGNAL \DISPLAY_1n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_1n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_1n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_1n[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_2n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_2n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_2n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_2n[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_3n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_3n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_3n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_3n[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_4n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_4n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_4n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_4n[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_5n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_5n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_5n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_5n[3]~output_o\ : std_logic;
SIGNAL \DISPLAY_6n[0]~output_o\ : std_logic;
SIGNAL \DISPLAY_6n[1]~output_o\ : std_logic;
SIGNAL \DISPLAY_6n[2]~output_o\ : std_logic;
SIGNAL \DISPLAY_6n[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \G|count_1Mhz[0]~6_combout\ : std_logic;
SIGNAL \G|count_1Mhz[4]~15\ : std_logic;
SIGNAL \G|count_1Mhz[5]~16_combout\ : std_logic;
SIGNAL \G|LessThan0~0_combout\ : std_logic;
SIGNAL \G|LessThan0~1_combout\ : std_logic;
SIGNAL \G|count_1Mhz[0]~7\ : std_logic;
SIGNAL \G|count_1Mhz[1]~8_combout\ : std_logic;
SIGNAL \G|count_1Mhz[1]~9\ : std_logic;
SIGNAL \G|count_1Mhz[2]~10_combout\ : std_logic;
SIGNAL \G|count_1Mhz[2]~11\ : std_logic;
SIGNAL \G|count_1Mhz[3]~12_combout\ : std_logic;
SIGNAL \G|count_1Mhz[3]~13\ : std_logic;
SIGNAL \G|count_1Mhz[4]~14_combout\ : std_logic;
SIGNAL \G|LessThan1~0_combout\ : std_logic;
SIGNAL \G|clock_1Mhz_int~q\ : std_logic;
SIGNAL \G|clock_1Mhz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_100Khz[1]~1_combout\ : std_logic;
SIGNAL \G|count_100Khz~2_combout\ : std_logic;
SIGNAL \G|count_100Khz~0_combout\ : std_logic;
SIGNAL \G|clock_100Khz_int~0_combout\ : std_logic;
SIGNAL \G|clock_100Khz_int~feeder_combout\ : std_logic;
SIGNAL \G|clock_100Khz_int~q\ : std_logic;
SIGNAL \G|clock_100Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_10Khz[1]~1_combout\ : std_logic;
SIGNAL \G|count_10Khz~2_combout\ : std_logic;
SIGNAL \G|count_10Khz~0_combout\ : std_logic;
SIGNAL \G|clock_10Khz_int~0_combout\ : std_logic;
SIGNAL \G|clock_10Khz_int~q\ : std_logic;
SIGNAL \G|clock_10Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_1Khz[1]~1_combout\ : std_logic;
SIGNAL \G|count_1Khz~2_combout\ : std_logic;
SIGNAL \G|count_1Khz~0_combout\ : std_logic;
SIGNAL \G|clock_1Khz_int~0_combout\ : std_logic;
SIGNAL \G|clock_1Khz_int~feeder_combout\ : std_logic;
SIGNAL \G|clock_1Khz_int~q\ : std_logic;
SIGNAL \G|clock_1Khz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_100hz[1]~1_combout\ : std_logic;
SIGNAL \G|count_100hz~2_combout\ : std_logic;
SIGNAL \G|count_100hz~0_combout\ : std_logic;
SIGNAL \G|clock_100hz_int~0_combout\ : std_logic;
SIGNAL \G|clock_100hz_int~feeder_combout\ : std_logic;
SIGNAL \G|clock_100hz_int~q\ : std_logic;
SIGNAL \G|CLOCK_100Hz~feeder_combout\ : std_logic;
SIGNAL \G|CLOCK_100Hz~q\ : std_logic;
SIGNAL \G|CLOCK_100Hz~clkctrl_outclk\ : std_logic;
SIGNAL \REALIZAR_LLAMADA~input_o\ : std_logic;
SIGNAL \Gsr_3|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_3|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_3|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_3|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_3|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_3|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[8]~input_o\ : std_logic;
SIGNAL \Gsr_15|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_15|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_15|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_15|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_15|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_15|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[6]~input_o\ : std_logic;
SIGNAL \Gsr_13|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_13|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_13|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_13|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_13|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_13|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[3]~input_o\ : std_logic;
SIGNAL \Gsr_10|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_10|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_10|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_10|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_10|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_10|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[4]~input_o\ : std_logic;
SIGNAL \Gsr_11|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_11|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_11|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_11|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_11|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_11|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[5]~input_o\ : std_logic;
SIGNAL \Gsr_12|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_12|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_12|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_12|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_12|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_12|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \G0|Equal2~1_combout\ : std_logic;
SIGNAL \TECLADO[2]~input_o\ : std_logic;
SIGNAL \Gsr_9|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_9|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_9|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_9|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_9|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_9|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[9]~input_o\ : std_logic;
SIGNAL \Gsr_16|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_16|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_16|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_16|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_16|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_16|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[0]~input_o\ : std_logic;
SIGNAL \Gsr_7|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_7|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_7|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_7|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_7|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_7|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[1]~input_o\ : std_logic;
SIGNAL \Gsr_8|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_8|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_8|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_8|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_8|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_8|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \TECLADO[7]~input_o\ : std_logic;
SIGNAL \Gsr_14|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_14|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_14|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_14|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_14|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_14|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \G0|Equal0~0_combout\ : std_logic;
SIGNAL \G0|Equal2~0_combout\ : std_logic;
SIGNAL \G0|Equal1~0_combout\ : std_logic;
SIGNAL \G0|Equal0~1_combout\ : std_logic;
SIGNAL \G0|Equal5~1_combout\ : std_logic;
SIGNAL \boton~15_combout\ : std_logic;
SIGNAL \u2~input_o\ : std_logic;
SIGNAL \u8~input_o\ : std_logic;
SIGNAL \u5~input_o\ : std_logic;
SIGNAL \u7~input_o\ : std_logic;
SIGNAL \u6~input_o\ : std_logic;
SIGNAL \uf~2_combout\ : std_logic;
SIGNAL \u4~input_o\ : std_logic;
SIGNAL \u3~input_o\ : std_logic;
SIGNAL \uf~1_combout\ : std_logic;
SIGNAL \u1~input_o\ : std_logic;
SIGNAL \uf~3_combout\ : std_logic;
SIGNAL \uf~0_combout\ : std_logic;
SIGNAL \uf~4_combout\ : std_logic;
SIGNAL \uf~5_combout\ : std_logic;
SIGNAL \uf~6_combout\ : std_logic;
SIGNAL \G0|Equal3~1_combout\ : std_logic;
SIGNAL \G0|Equal3~0_combout\ : std_logic;
SIGNAL \boton~8_combout\ : std_logic;
SIGNAL \boton~7_combout\ : std_logic;
SIGNAL \boton~6_combout\ : std_logic;
SIGNAL \boton~3_combout\ : std_logic;
SIGNAL \boton~16_combout\ : std_logic;
SIGNAL \boton~combout\ : std_logic;
SIGNAL \HISTORIAL_LLAMADAS~input_o\ : std_logic;
SIGNAL \Gsr_5|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_5|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_5|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_5|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_5|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_5|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \FINALIZAR_LLAMADA~input_o\ : std_logic;
SIGNAL \Gsr_4|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_4|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_4|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_4|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_4|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_4|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \MSS|we_u8~0_combout\ : std_logic;
SIGNAL \MSS|we_u6~0_combout\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \Gsr_2|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_2|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_2|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_2|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_2|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_2|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \MSS|y~39_combout\ : std_logic;
SIGNAL \resetn~input_o\ : std_logic;
SIGNAL \Gsr_1|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_1|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_1|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_1|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \MSS|y.Td~q\ : std_logic;
SIGNAL \MSS|Selector0~0_combout\ : std_logic;
SIGNAL \MSS|y.Ta~feeder_combout\ : std_logic;
SIGNAL \MSS|y.Ta~q\ : std_logic;
SIGNAL \MSS|y~34_combout\ : std_logic;
SIGNAL \MSS|y.Tb~q\ : std_logic;
SIGNAL \MSS|WideOr12~0_combout\ : std_logic;
SIGNAL \MSS|Selector54~0_combout\ : std_logic;
SIGNAL \MSS|we_u6~combout\ : std_logic;
SIGNAL \G12_6|temp[0]~feeder_combout\ : std_logic;
SIGNAL \MSS|y.Ts~q\ : std_logic;
SIGNAL \MSS|y.Tu~q\ : std_logic;
SIGNAL \MSS|y.Tw~q\ : std_logic;
SIGNAL \G0|Equal8~0_combout\ : std_logic;
SIGNAL \G0|Equal8~1_combout\ : std_logic;
SIGNAL \G1_1|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|cuenta_a_0~combout\ : std_logic;
SIGNAL \G1_1|cont[1]~2_combout\ : std_logic;
SIGNAL \G1_1|cont[2]~1_combout\ : std_logic;
SIGNAL \MSS|Selector3~0_combout\ : std_logic;
SIGNAL \MSS|y~40_combout\ : std_logic;
SIGNAL \MSS|y.Th~q\ : std_logic;
SIGNAL \MSS|WideOr13~0_combout\ : std_logic;
SIGNAL \MSS|incrementa~combout\ : std_logic;
SIGNAL \G1_1|cont[3]~0_combout\ : std_logic;
SIGNAL \G3_cuentn5|Equal0~0_combout\ : std_logic;
SIGNAL \MSS|Selector12~0_combout\ : std_logic;
SIGNAL \MSS|Selector28~0_combout\ : std_logic;
SIGNAL \MSS|Selector28~1_combout\ : std_logic;
SIGNAL \MSS|Selector28~1clkctrl_outclk\ : std_logic;
SIGNAL \G3_cuentn1|Equal0~0_combout\ : std_logic;
SIGNAL \MSS|Selector13~0_combout\ : std_logic;
SIGNAL \G12_3|temp[0]~feeder_combout\ : std_logic;
SIGNAL \MSS|Selector14~0_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~4_combout\ : std_logic;
SIGNAL \G0|WideOr1~7_combout\ : std_logic;
SIGNAL \G0|WideOr1~3_combout\ : std_logic;
SIGNAL \G0|WideOr1~16_combout\ : std_logic;
SIGNAL \G12_5|temp[1]~feeder_combout\ : std_logic;
SIGNAL \G0|Equal5~0_combout\ : std_logic;
SIGNAL \G0|WideOr0~0_combout\ : std_logic;
SIGNAL \G0|WideOr0~1_combout\ : std_logic;
SIGNAL \G12_6|temp[1]~feeder_combout\ : std_logic;
SIGNAL \MSS|Selector11~0_combout\ : std_logic;
SIGNAL \MSS|Selector11~1_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~2_combout\ : std_logic;
SIGNAL \G12_5|temp[0]~feeder_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~1_combout\ : std_logic;
SIGNAL \G12_2|temp[0]~feeder_combout\ : std_logic;
SIGNAL \MSS|Selector15~0_combout\ : std_logic;
SIGNAL \G12_2|temp[2]~feeder_combout\ : std_logic;
SIGNAL \G12_2|temp[3]~feeder_combout\ : std_logic;
SIGNAL \G12_2|temp[1]~feeder_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~1_combout\ : std_logic;
SIGNAL \MSS|Selector20~0_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~6_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~3_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu5|Equal0~5_combout\ : std_logic;
SIGNAL \G3_nu4|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu4|Equal0~1_combout\ : std_logic;
SIGNAL \G3_nu4|Equal0~2_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~4_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~4_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~5_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~1_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~2_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~3_combout\ : std_logic;
SIGNAL \G3_nu7|Equal0~6_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~2_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~3_combout\ : std_logic;
SIGNAL \G3_nu1|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu2|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu2|Equal0~1_combout\ : std_logic;
SIGNAL \G3_nu2|Equal0~2_combout\ : std_logic;
SIGNAL \num_existe~1_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~5_combout\ : std_logic;
SIGNAL \G3_nu6|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu6|Equal0~1_combout\ : std_logic;
SIGNAL \G3_nu6|Equal0~2_combout\ : std_logic;
SIGNAL \G3_nu3|Equal0~0_combout\ : std_logic;
SIGNAL \G3_nu6|Equal0~3_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~7_combout\ : std_logic;
SIGNAL \G3_nu8|Equal0~8_combout\ : std_logic;
SIGNAL \num_existe~0_combout\ : std_logic;
SIGNAL \num_existe~combout\ : std_logic;
SIGNAL \MSS|Selector3~1_combout\ : std_logic;
SIGNAL \BORRAR~input_o\ : std_logic;
SIGNAL \Gsr_6|SHIFT_PB[3]~0_combout\ : std_logic;
SIGNAL \Gsr_6|SHIFT_PB[2]~feeder_combout\ : std_logic;
SIGNAL \Gsr_6|SHIFT_PB[1]~feeder_combout\ : std_logic;
SIGNAL \Gsr_6|SHIFT_PB[0]~feeder_combout\ : std_logic;
SIGNAL \Gsr_6|Equal0~0_combout\ : std_logic;
SIGNAL \Gsr_6|PB_SIN_REBOTE~q\ : std_logic;
SIGNAL \MSS|Selector5~2_combout\ : std_logic;
SIGNAL \MSS|Selector6~0_combout\ : std_logic;
SIGNAL \MSS|y.Tr~q\ : std_logic;
SIGNAL \MSS|y~41_combout\ : std_logic;
SIGNAL \MSS|y.Ty~q\ : std_logic;
SIGNAL \MSS|reset_reg~0_combout\ : std_logic;
SIGNAL \MSS|WideOr14~4_combout\ : std_logic;
SIGNAL \MSS|reset_reg~combout\ : std_logic;
SIGNAL \MSS|Selector5~0_combout\ : std_logic;
SIGNAL \MSS|Selector5~1_combout\ : std_logic;
SIGNAL \MSS|y.Tk~q\ : std_logic;
SIGNAL \MSS|Selector19~1_combout\ : std_logic;
SIGNAL \MSS|Selector23~5_combout\ : std_logic;
SIGNAL \MSS|y~38_combout\ : std_logic;
SIGNAL \MSS|y.Tm~q\ : std_logic;
SIGNAL \MSS|y.Tt~q\ : std_logic;
SIGNAL \MSS|y.Tv~q\ : std_logic;
SIGNAL \MSS|y.Tx~q\ : std_logic;
SIGNAL \MSS|Selector19~0_combout\ : std_logic;
SIGNAL \MSS|Selector23~8_combout\ : std_logic;
SIGNAL \MSS|Selector23~6_combout\ : std_logic;
SIGNAL \MSS|we_u8~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~8_combout\ : std_logic;
SIGNAL \MSS|WideOr28~0_combout\ : std_logic;
SIGNAL \MSS|WideOr20~0_combout\ : std_logic;
SIGNAL \MSS|WideOr18~0_combout\ : std_logic;
SIGNAL \G2_resta_u6|Add0~0_combout\ : std_logic;
SIGNAL \MSS|WideOr30~combout\ : std_logic;
SIGNAL \MSS|Selector31~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u6~combout\ : std_logic;
SIGNAL \MSS|ihist_u6~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u6|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|rhist_u5~combout\ : std_logic;
SIGNAL \G1_hist_u6|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u6|cont[2]~0_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux1~0_combout\ : std_logic;
SIGNAL \G1_hist_u6|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u6|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u6|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u6|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~7_combout\ : std_logic;
SIGNAL \MSS|we_u8~2_combout\ : std_logic;
SIGNAL \MSS|Selector53~0_combout\ : std_logic;
SIGNAL \MSS|we_u7~combout\ : std_logic;
SIGNAL \MSS|Selector22~5_combout\ : std_logic;
SIGNAL \MSS|Selector52~0_combout\ : std_logic;
SIGNAL \MSS|we_u8~combout\ : std_logic;
SIGNAL \Fu_ad1~0_combout\ : std_logic;
SIGNAL \MSS|Selector67~0_combout\ : std_logic;
SIGNAL \MSS|Selector61~1_combout\ : std_logic;
SIGNAL \G2_resta_u8|Add0~0_combout\ : std_logic;
SIGNAL \MSS|Selector29~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u8~combout\ : std_logic;
SIGNAL \MSS|ihist_u8~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u8|cont[0]~3_combout\ : std_logic;
SIGNAL \G1_hist_u8|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u8|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_hist_u8|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u8|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u8|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u8|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G2_h1|Mux16~15_combout\ : std_logic;
SIGNAL \MSS|Selector30~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u7~combout\ : std_logic;
SIGNAL \MSS|ihist_u7~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u7|cont[0]~3_combout\ : std_logic;
SIGNAL \G1_hist_u7|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u7|Add0~0_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u7|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_hist_u7|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u7|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u7|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u7|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G2_h1|Mux16~20_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~16_combout\ : std_logic;
SIGNAL \MSS|Selector55~0_combout\ : std_logic;
SIGNAL \MSS|we_u5~combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux16~21_combout\ : std_logic;
SIGNAL \G2_resta_u5|Add0~0_combout\ : std_logic;
SIGNAL \MSS|Selector32~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u5~combout\ : std_logic;
SIGNAL \MSS|ihist_u5~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u5|cont[0]~3_combout\ : std_logic;
SIGNAL \G1_hist_u5|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u5|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_hist_u5|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u5|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u5|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u5|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux16~7_combout\ : std_logic;
SIGNAL \MSS|Selector34~0_combout\ : std_logic;
SIGNAL \MSS|Selector57~0_combout\ : std_logic;
SIGNAL \MSS|we_u3~combout\ : std_logic;
SIGNAL \Fu_ad2~combout\ : std_logic;
SIGNAL \MSS|Selector66~0_combout\ : std_logic;
SIGNAL \MSS|incremento_u3~combout\ : std_logic;
SIGNAL \MSS|incremento_u3~clkctrl_outclk\ : std_logic;
SIGNAL \G1_u3|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux3~0_combout\ : std_logic;
SIGNAL \G2_resta_u3|Add0~0_combout\ : std_logic;
SIGNAL \G1_hist_u3|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u3|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_hist_u3|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u3|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u3|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u3|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u3|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux22~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~19_combout\ : std_logic;
SIGNAL \MSS|Selector56~0_combout\ : std_logic;
SIGNAL \MSS|we_u4~combout\ : std_logic;
SIGNAL \MSS|Selector60~0_combout\ : std_logic;
SIGNAL \MSS|we_u1~combout\ : std_logic;
SIGNAL \MSS|Selector37~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u1~combout\ : std_logic;
SIGNAL \MSS|ihist_u1~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u1|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|Selector69~0_combout\ : std_logic;
SIGNAL \MSS|incremento_u1~combout\ : std_logic;
SIGNAL \MSS|incremento_u1~clkctrl_outclk\ : std_logic;
SIGNAL \G1_u1|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux3~0_combout\ : std_logic;
SIGNAL \G2_resta_u1|Add0~0_combout\ : std_logic;
SIGNAL \G1_hist_u1|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux2~1_combout\ : std_logic;
SIGNAL \G1_u1|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_hist_u1|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u1|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u1|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u1|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u1|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~2_combout\ : std_logic;
SIGNAL \G2_resta_u4|Add0~0_combout\ : std_logic;
SIGNAL \G2_resta_u4|Mux2~0_combout\ : std_logic;
SIGNAL \G1_u4|cont[2]~0_combout\ : std_logic;
SIGNAL \G2_resta_u4|Mux1~0_combout\ : std_logic;
SIGNAL \G2_resta_u4|Mux1~1_combout\ : std_logic;
SIGNAL \G3_h4|Equal0~0_combout\ : std_logic;
SIGNAL \G1_u4|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u4|Mux0~0_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux14~5_combout\ : std_logic;
SIGNAL \MSS|Selector58~0_combout\ : std_logic;
SIGNAL \MSS|we_u2~combout\ : std_logic;
SIGNAL \MSS|Selector35~0_combout\ : std_logic;
SIGNAL \MSS|ihist_u2~combout\ : std_logic;
SIGNAL \MSS|ihist_u2~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u2|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|Selector67~1_combout\ : std_logic;
SIGNAL \MSS|incremento_u2~combout\ : std_logic;
SIGNAL \MSS|incremento_u2~clkctrl_outclk\ : std_logic;
SIGNAL \G1_u2|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux3~0_combout\ : std_logic;
SIGNAL \G2_resta_u2|Add0~0_combout\ : std_logic;
SIGNAL \G1_hist_u2|cont[1]~0_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux2~0_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux2~1_combout\ : std_logic;
SIGNAL \G1_hist_u2|cont[2]~1_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux1~0_combout\ : std_logic;
SIGNAL \G1_u2|cont[2]~0_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux1~1_combout\ : std_logic;
SIGNAL \G1_u2|cont[3]~1_combout\ : std_logic;
SIGNAL \G2_resta_u2|Add0~1_combout\ : std_logic;
SIGNAL \G1_hist_u2|cont[3]~2_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux0~0_combout\ : std_logic;
SIGNAL \G2_resta_u2|Mux0~1_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux16~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux14~6_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux14~8_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \G2_h1|Mux14~10_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux17~8_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux17~5_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~2_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \G2_h1|Mux17~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux17~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux17~10_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux11~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux11~6_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux11~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux11~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \G2_h1|Mux11~10_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux10~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux10~6_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~11_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux10~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux10~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \G2_h1|Mux10~10_combout\ : std_logic;
SIGNAL \MSS|Selector25~0_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G2_h1|Mux12~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G2_h1|Mux12~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux12~8_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G2_h1|Mux12~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G2_h1|Mux12~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux12~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \G2_h1|Mux12~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux12~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux12~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux12~10_combout\ : std_logic;
SIGNAL \MSS|Selector22~3_combout\ : std_logic;
SIGNAL \MSS|Selector25~2_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux19~8_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~2_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux19~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux19~6_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \G2_h1|Mux19~10_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G2_h1|Mux9~11_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G2_h1|Mux9~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux9~8_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G2_h1|Mux9~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G2_h1|Mux9~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux9~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \G2_h1|Mux9~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux9~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux9~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux9~10_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~2_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux18~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~6_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux18~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux18~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \G2_h1|Mux18~10_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux20~5_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux20~6_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux20~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux20~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \G2_h1|Mux20~10_combout\ : std_logic;
SIGNAL \MSS|Selector24~0_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~1_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux3~3_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~4_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \G2_h1|Mux3~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux3~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux3~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux3~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux0~7_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux0~3_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~0_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~4_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \G2_h1|Mux0~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux0~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G2_h1|Mux2~0_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G2_h1|Mux2~1_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G2_h1|Mux2~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux2~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux2~4_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G2_h1|Mux2~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \G2_h1|Mux2~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux2~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux2~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux2~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G2_h1|Mux1~0_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G2_h1|Mux1~1_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G2_h1|Mux1~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux1~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux1~4_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G2_h1|Mux1~5_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \G2_h1|Mux1~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux1~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux1~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux1~9_combout\ : std_logic;
SIGNAL \MSS|Selector19~4_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G2_h1|Mux5~0_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G2_h1|Mux5~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G2_h1|Mux5~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux5~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux5~4_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G2_h1|Mux5~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \G2_h1|Mux5~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux5~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux5~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux5~9_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~0_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux4~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux4~4_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~5_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux4~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux4~8_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \G2_h1|Mux4~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G2_h1|Mux6~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G2_h1|Mux6~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux6~7_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G2_h1|Mux6~0_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G2_h1|Mux6~1_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \G2_h1|Mux6~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux6~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux6~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux6~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux6~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~0_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux7~3_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~4_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux7~7_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux7~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux7~9_combout\ : std_logic;
SIGNAL \MSS|Selector19~5_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~0_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~2_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~1_combout\ : std_logic;
SIGNAL \G2_h1|Mux8~3_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~4_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~5_combout\ : std_logic;
SIGNAL \G2_h1|Mux8~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux8~8_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \G2_h1|Mux8~9_combout\ : std_logic;
SIGNAL \MSS|Selector19~3_combout\ : std_logic;
SIGNAL \MSS|Selector19~10_combout\ : std_logic;
SIGNAL \MSS|Selector24~1_combout\ : std_logic;
SIGNAL \MSS|Selector25~3_combout\ : std_logic;
SIGNAL \MSS|Selector25~4_combout\ : std_logic;
SIGNAL \MSS|led4~combout\ : std_logic;
SIGNAL \G7|q~q\ : std_logic;
SIGNAL \Fu_ad4~combout\ : std_logic;
SIGNAL \MSS|Selector65~0_combout\ : std_logic;
SIGNAL \MSS|incremento_u4~combout\ : std_logic;
SIGNAL \G1_u4|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u4|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux22~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux22~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux22~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux22~6_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux22~11_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \G2_h1|Mux22~7_combout\ : std_logic;
SIGNAL \G2_h1|Mux22~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux22~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux22~10_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G2_h1|Mux15~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G2_h1|Mux15~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux15~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G2_h1|Mux15~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux15~6_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G2_h1|Mux15~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \G2_h1|Mux15~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux15~8_combout\ : std_logic;
SIGNAL \G2_h1|Mux15~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux15~10_combout\ : std_logic;
SIGNAL \MSS|Selector26~0_combout\ : std_logic;
SIGNAL \MSS|Selector25~1_combout\ : std_logic;
SIGNAL \MSS|Selector22~0_combout\ : std_logic;
SIGNAL \MSS|Selector23~2_combout\ : std_logic;
SIGNAL \MSS|Selector23~3_combout\ : std_logic;
SIGNAL \MSS|Selector26~1_combout\ : std_logic;
SIGNAL \MSS|Selector26~2_combout\ : std_logic;
SIGNAL \MSS|led3~combout\ : std_logic;
SIGNAL \G6|q~q\ : std_logic;
SIGNAL \Fu_ad3~combout\ : std_logic;
SIGNAL \MSS|Selector62~0_combout\ : std_logic;
SIGNAL \MSS|Selector24~4_combout\ : std_logic;
SIGNAL \MSS|Selector24~2_combout\ : std_logic;
SIGNAL \MSS|Selector24~3_combout\ : std_logic;
SIGNAL \MSS|Selector24~5_combout\ : std_logic;
SIGNAL \MSS|led5~combout\ : std_logic;
SIGNAL \G8|q~q\ : std_logic;
SIGNAL \Fu_ad5~combout\ : std_logic;
SIGNAL \MSS|Selector64~0_combout\ : std_logic;
SIGNAL \MSS|incremento_u5~combout\ : std_logic;
SIGNAL \G1_u5|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u5|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G2_h1|Mux16~11_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G2_h1|Mux16~12_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~13_combout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \G2_h1|Mux16~10_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~14_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~17_combout\ : std_logic;
SIGNAL \G2_h1|Mux16~18_combout\ : std_logic;
SIGNAL \MSS|Selector19~6_combout\ : std_logic;
SIGNAL \MSS|Selector21~0_combout\ : std_logic;
SIGNAL \MSS|Selector21~1_combout\ : std_logic;
SIGNAL \MSS|Selector21~2_combout\ : std_logic;
SIGNAL \MSS|Selector21~3_combout\ : std_logic;
SIGNAL \MSS|Selector21~4_combout\ : std_logic;
SIGNAL \MSS|Selector21~5_combout\ : std_logic;
SIGNAL \MSS|led8~combout\ : std_logic;
SIGNAL \G11|q~feeder_combout\ : std_logic;
SIGNAL \G11|q~q\ : std_logic;
SIGNAL \MSS|Selector61~0_combout\ : std_logic;
SIGNAL \MSS|Selector61~2_combout\ : std_logic;
SIGNAL \MSS|incremento_u8~combout\ : std_logic;
SIGNAL \G1_u8|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u8|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G2_h1|Mux21~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G2_h1|Mux21~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux21~8_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G2_h1|Mux21~4_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G2_h1|Mux21~3_combout\ : std_logic;
SIGNAL \G2_h1|Mux21~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \G2_h1|Mux21~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux21~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux21~9_combout\ : std_logic;
SIGNAL \G2_h1|Mux21~10_combout\ : std_logic;
SIGNAL \MSS|Selector19~7_combout\ : std_logic;
SIGNAL \MSS|Selector22~4_combout\ : std_logic;
SIGNAL \MSS|Selector22~1_combout\ : std_logic;
SIGNAL \MSS|Selector22~2_combout\ : std_logic;
SIGNAL \MSS|Selector22~6_combout\ : std_logic;
SIGNAL \MSS|led7~combout\ : std_logic;
SIGNAL \G10|q~q\ : std_logic;
SIGNAL \MSS|Selector62~1_combout\ : std_logic;
SIGNAL \MSS|Selector62~2_combout\ : std_logic;
SIGNAL \MSS|incremento_u7~combout\ : std_logic;
SIGNAL \G1_u7|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u7|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux13~8_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux13~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux13~6_combout\ : std_logic;
SIGNAL \G2_h1|Mux13~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \G2_h1|Mux13~10_combout\ : std_logic;
SIGNAL \MSS|Selector23~4_combout\ : std_logic;
SIGNAL \MSS|Selector23~7_combout\ : std_logic;
SIGNAL \MSS|led6~combout\ : std_logic;
SIGNAL \G9|q~q\ : std_logic;
SIGNAL \Fu_ad6~combout\ : std_logic;
SIGNAL \MSS|Selector63~0_combout\ : std_logic;
SIGNAL \MSS|incremento_u6~combout\ : std_logic;
SIGNAL \G1_u6|cont[0]~2_combout\ : std_logic;
SIGNAL \G2_resta_u6|Mux3~0_combout\ : std_logic;
SIGNAL \G14_u6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~7_combout\ : std_logic;
SIGNAL \G14_u7|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~11_combout\ : std_logic;
SIGNAL \G2_h1|Mux23~8_combout\ : std_logic;
SIGNAL \G14_u4|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~3_combout\ : std_logic;
SIGNAL \G14_u3|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~4_combout\ : std_logic;
SIGNAL \G2_h1|Mux23~5_combout\ : std_logic;
SIGNAL \G14_u2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G14_u1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~2_combout\ : std_logic;
SIGNAL \G2_h1|Mux23~6_combout\ : std_logic;
SIGNAL \G14_u5|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~9_combout\ : std_logic;
SIGNAL \G14_u8|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \G2_h1|Mux23~10_combout\ : std_logic;
SIGNAL \MSS|Selector27~2_combout\ : std_logic;
SIGNAL \MSS|Selector27~0_combout\ : std_logic;
SIGNAL \MSS|Selector27~1_combout\ : std_logic;
SIGNAL \MSS|Selector27~3_combout\ : std_logic;
SIGNAL \MSS|led2~combout\ : std_logic;
SIGNAL \G5|q~q\ : std_logic;
SIGNAL \Fu~combout\ : std_logic;
SIGNAL \MSS|Selector8~0_combout\ : std_logic;
SIGNAL \MSS|y.T_hist~q\ : std_logic;
SIGNAL \MSS|Selector9~0_combout\ : std_logic;
SIGNAL \MSS|y.T_hist1~q\ : std_logic;
SIGNAL \G|clock_100hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_10hz[1]~1_combout\ : std_logic;
SIGNAL \G|count_10hz~2_combout\ : std_logic;
SIGNAL \G|count_10hz~0_combout\ : std_logic;
SIGNAL \G|clock_10hz_int~0_combout\ : std_logic;
SIGNAL \G|clock_10hz_int~feeder_combout\ : std_logic;
SIGNAL \G|clock_10hz_int~q\ : std_logic;
SIGNAL \G|clock_10hz_int~clkctrl_outclk\ : std_logic;
SIGNAL \G|count_1hz[1]~0_combout\ : std_logic;
SIGNAL \G|count_1hz~1_combout\ : std_logic;
SIGNAL \G|count_1hz~2_combout\ : std_logic;
SIGNAL \G|clock_1hz_int~0_combout\ : std_logic;
SIGNAL \G|clock_1hz_int~feeder_combout\ : std_logic;
SIGNAL \G|clock_1hz_int~q\ : std_logic;
SIGNAL \G|CLOCK_1Hz~feeder_combout\ : std_logic;
SIGNAL \G|CLOCK_1Hz~q\ : std_logic;
SIGNAL \G|CLOCK_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \G1_historial|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|WideOr24~0_combout\ : std_logic;
SIGNAL \MSS|reset_hist~combout\ : std_logic;
SIGNAL \G1_historial|cont[1]~2_combout\ : std_logic;
SIGNAL \G1_historial|cont[2]~0_combout\ : std_logic;
SIGNAL \G1_historial|cont[3]~1_combout\ : std_logic;
SIGNAL \MSS|y~35_combout\ : std_logic;
SIGNAL \MSS|Selector10~0_combout\ : std_logic;
SIGNAL \MSS|y.T_hi~q\ : std_logic;
SIGNAL \MSS|y~36_combout\ : std_logic;
SIGNAL \MSS|y.T1~q\ : std_logic;
SIGNAL \MSS|Selector34~1_combout\ : std_logic;
SIGNAL \MSS|ihist_u3~combout\ : std_logic;
SIGNAL \MSS|ihist_u3~clkctrl_outclk\ : std_logic;
SIGNAL \G1_hist_u3|cont[0]~3_combout\ : std_logic;
SIGNAL \G3_h3|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h5|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h3|Equal0~1_combout\ : std_logic;
SIGNAL \G3_h5|Equal0~1_combout\ : std_logic;
SIGNAL \dir_hist_igual~1_combout\ : std_logic;
SIGNAL \G3_h8|Equal0~1_combout\ : std_logic;
SIGNAL \G3_h8|Equal0~0_combout\ : std_logic;
SIGNAL \dir_hist_igual~3_combout\ : std_logic;
SIGNAL \G3_h2|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h1|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h1|Equal0~1_combout\ : std_logic;
SIGNAL \G3_h2|Equal0~1_combout\ : std_logic;
SIGNAL \dir_hist_igual~0_combout\ : std_logic;
SIGNAL \G3_h7|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h6|Equal0~0_combout\ : std_logic;
SIGNAL \G3_h7|Equal0~1_combout\ : std_logic;
SIGNAL \G3_h6|Equal0~1_combout\ : std_logic;
SIGNAL \dir_hist_igual~2_combout\ : std_logic;
SIGNAL \dir_hist_igual~4_combout\ : std_logic;
SIGNAL \MSS|Selector7~0_combout\ : std_logic;
SIGNAL \G1_ocupado|cont[0]~3_combout\ : std_logic;
SIGNAL \MSS|WideOr21~0_combout\ : std_logic;
SIGNAL \MSS|reset_oc~combout\ : std_logic;
SIGNAL \G1_ocupado|cont[1]~0_combout\ : std_logic;
SIGNAL \G1_ocupado|cont[2]~2_combout\ : std_logic;
SIGNAL \G1_ocupado|cont[3]~1_combout\ : std_logic;
SIGNAL \MSS|y~32_combout\ : std_logic;
SIGNAL \MSS|Selector7~1_combout\ : std_logic;
SIGNAL \MSS|y.T_oc~q\ : std_logic;
SIGNAL \MSS|y~33_combout\ : std_logic;
SIGNAL \MSS|y.T_oc_apagado~q\ : std_logic;
SIGNAL \MSS|Selector1~2_combout\ : std_logic;
SIGNAL \MSS|Selector1~0_combout\ : std_logic;
SIGNAL \MSS|Selector1~1_combout\ : std_logic;
SIGNAL \MSS|Selector1~3_combout\ : std_logic;
SIGNAL \MSS|y.Tc~q\ : std_logic;
SIGNAL \MSS|y~42_combout\ : std_logic;
SIGNAL \MSS|y.Tf~q\ : std_logic;
SIGNAL \MSS|Selector2~0_combout\ : std_logic;
SIGNAL \MSS|y.Te~feeder_combout\ : std_logic;
SIGNAL \MSS|y.Te~q\ : std_logic;
SIGNAL \MSS|y~43_combout\ : std_logic;
SIGNAL \MSS|y.Tg~q\ : std_logic;
SIGNAL \MSS|Selector3~2_combout\ : std_logic;
SIGNAL \MSS|y.Ti~q\ : std_logic;
SIGNAL \MSS|Selector4~0_combout\ : std_logic;
SIGNAL \MSS|Selector4~1_combout\ : std_logic;
SIGNAL \MSS|y.Tj~feeder_combout\ : std_logic;
SIGNAL \MSS|y.Tj~q\ : std_logic;
SIGNAL \MSS|y~37_combout\ : std_logic;
SIGNAL \MSS|y.Tl~q\ : std_logic;
SIGNAL \MSS|Selector16~0_combout\ : std_logic;
SIGNAL \MSS|WideOr32~0_combout\ : std_logic;
SIGNAL \MSS|WideOr32~1_combout\ : std_logic;
SIGNAL \MSS|WideOr34~0_combout\ : std_logic;
SIGNAL \MSS|clock_ff_d~combout\ : std_logic;
SIGNAL \MSS|Selector19~8_combout\ : std_logic;
SIGNAL \MSS|Selector19~2_combout\ : std_logic;
SIGNAL \MSS|Selector19~9_combout\ : std_logic;
SIGNAL \MSS|led1~combout\ : std_logic;
SIGNAL \G4|q~q\ : std_logic;
SIGNAL \MSS|WideOr23~0_combout\ : std_logic;
SIGNAL \MSS|OCUPADO~combout\ : std_logic;
SIGNAL \MSS|WideOr26~0_combout\ : std_logic;
SIGNAL \MSS|WideOr25~0_combout\ : std_logic;
SIGNAL \MSS|disp_select~combout\ : std_logic;
SIGNAL \G2_sal_d1|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d1|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d1|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d1|s[3]~3_combout\ : std_logic;
SIGNAL \G2_sal_d2|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d2|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d2|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d2|s[3]~3_combout\ : std_logic;
SIGNAL \G2_sal_d3|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d3|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d3|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d3|s[3]~3_combout\ : std_logic;
SIGNAL \G2_sal_d4|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d4|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d4|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d4|s[3]~3_combout\ : std_logic;
SIGNAL \G2_sal_d5|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d5|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d5|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d5|s[3]~3_combout\ : std_logic;
SIGNAL \G2_sal_d6|s[0]~0_combout\ : std_logic;
SIGNAL \G2_sal_d6|s[1]~1_combout\ : std_logic;
SIGNAL \G2_sal_d6|s[2]~2_combout\ : std_logic;
SIGNAL \G2_sal_d6|s[3]~3_combout\ : std_logic;
SIGNAL \G1_u8|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_6|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|count_1Mhz\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \G12_1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u1|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G12_2|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u2|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G12_3|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|count_1hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gsr_15|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u3|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G12_4|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|count_100hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G1_hist_u5|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G12_5|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u6|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G12_6|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u8|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u5|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u2|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u1|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_10|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u4|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u3|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_8|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_hist_u7|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_3|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u7|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_u6|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G0|Salida\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_ocupado|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_14|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_13|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_7|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_16|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_9|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_11|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_12|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_1|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G1_historial|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_1|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_2|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_4|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gsr_5|SHIFT_PB\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G|count_1Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G|count_10hz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G|count_10Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G|count_100Khz\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \MSS|selec_u5\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \MSS|enable_reg\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \MSS|ALT_INV_reset_hist~combout\ : std_logic;
SIGNAL \MSS|ALT_INV_cuenta_a_0~combout\ : std_logic;
SIGNAL \MSS|ALT_INV_reset_oc~combout\ : std_logic;
SIGNAL \MSS|ALT_INV_rhist_u5~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_u1 <= u1;
ww_u2 <= u2;
ww_u3 <= u3;
ww_u4 <= u4;
ww_u5 <= u5;
ww_u6 <= u6;
ww_u7 <= u7;
ww_u8 <= u8;
ww_clock <= clock;
ww_resetn <= resetn;
ww_start <= start;
ww_REALIZAR_LLAMADA <= REALIZAR_LLAMADA;
ww_FINALIZAR_LLAMADA <= FINALIZAR_LLAMADA;
ww_HISTORIAL_LLAMADAS <= HISTORIAL_LLAMADAS;
ww_BORRAR <= BORRAR;
ww_TECLADO <= TECLADO;
LLAMADA_EN_PROGRESO <= ww_LLAMADA_EN_PROGRESO;
OCUPADO <= ww_OCUPADO;
DISPLAY_1n <= ww_DISPLAY_1n;
DISPLAY_2n <= ww_DISPLAY_2n;
DISPLAY_3n <= ww_DISPLAY_3n;
DISPLAY_4n <= ww_DISPLAY_4n;
DISPLAY_5n <= ww_DISPLAY_5n;
DISPLAY_6n <= ww_DISPLAY_6n;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u8|Mux0~1_combout\ & \G2_resta_u8|Mux1~1_combout\ & \G2_resta_u8|Mux2~1_combout\ & \G2_resta_u8|Mux3~0_combout\);

\G14_u8|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u5|Mux0~1_combout\ & \G2_resta_u5|Mux1~1_combout\ & \G2_resta_u5|Mux2~1_combout\ & \G2_resta_u5|Mux3~0_combout\);

\G14_u5|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u2|Mux0~1_combout\ & \G2_resta_u2|Mux1~1_combout\ & \G2_resta_u2|Mux2~1_combout\ & \G2_resta_u2|Mux3~0_combout\);

\G14_u2|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u1|Mux0~1_combout\ & \G2_resta_u1|Mux1~1_combout\ & \G2_resta_u1|Mux2~1_combout\ & \G2_resta_u1|Mux3~0_combout\);

\G14_u1|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u4|Mux0~0_combout\ & \G2_resta_u4|Mux1~1_combout\ & \G2_resta_u4|Mux2~0_combout\ & \G2_resta_u4|Mux3~0_combout\);

\G14_u4|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u3|Mux0~1_combout\ & \G2_resta_u3|Mux1~1_combout\ & \G2_resta_u3|Mux2~1_combout\ & \G2_resta_u3|Mux3~0_combout\);

\G14_u3|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u7|Mux0~1_combout\ & \G2_resta_u7|Mux1~1_combout\ & \G2_resta_u7|Mux2~1_combout\ & \G2_resta_u7|Mux3~0_combout\);

\G14_u7|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \G12_1|temp\(3) & \G12_1|temp\(2) & \G12_1|temp\(1) & \G12_1|temp\(0) & \G12_2|temp\(1) & 
\G12_2|temp\(0));

\G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\G2_resta_u6|Mux0~1_combout\ & \G2_resta_u6|Mux1~1_combout\ & \G2_resta_u6|Mux2~1_combout\ & \G2_resta_u6|Mux3~0_combout\);

\G14_u6|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a17\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(1);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a20\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(2);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a21\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(3);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a22\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(4);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a23\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\(5);

\G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u8|Mux0~1_combout\ & \G2_resta_u8|Mux1~1_combout\ & \G2_resta_u8|Mux2~1_combout\ & \G2_resta_u8|Mux3~0_combout\);

\G14_u8|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u8|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u5|Mux0~1_combout\ & \G2_resta_u5|Mux1~1_combout\ & \G2_resta_u5|Mux2~1_combout\ & \G2_resta_u5|Mux3~0_combout\);

\G14_u5|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u5|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u2|Mux0~1_combout\ & \G2_resta_u2|Mux1~1_combout\ & \G2_resta_u2|Mux2~1_combout\ & \G2_resta_u2|Mux3~0_combout\);

\G14_u2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u2|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u1|Mux0~1_combout\ & \G2_resta_u1|Mux1~1_combout\ & \G2_resta_u1|Mux2~1_combout\ & \G2_resta_u1|Mux3~0_combout\);

\G14_u1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u1|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u4|Mux0~0_combout\ & \G2_resta_u4|Mux1~1_combout\ & \G2_resta_u4|Mux2~0_combout\ & \G2_resta_u4|Mux3~0_combout\);

\G14_u4|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u4|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u3|Mux0~1_combout\ & \G2_resta_u3|Mux1~1_combout\ & \G2_resta_u3|Mux2~1_combout\ & \G2_resta_u3|Mux3~0_combout\);

\G14_u3|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u3|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u7|Mux0~1_combout\ & \G2_resta_u7|Mux1~1_combout\ & \G2_resta_u7|Mux2~1_combout\ & \G2_resta_u7|Mux3~0_combout\);

\G14_u7|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u7|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\G12_2|temp\(3) & \G12_2|temp\(2) & \G12_3|temp\(3) & \G12_3|temp\(2) & \G12_3|temp\(1) & \G12_3|temp\(0) & \G12_4|temp\(3) & \G12_4|temp\(2) & \G12_4|temp\(1) & 
\G12_4|temp\(0) & \G12_5|temp\(3) & \G12_5|temp\(2) & \G12_5|temp\(1) & \G12_5|temp\(0) & \G12_6|temp\(3) & \G12_6|temp\(2) & \G12_6|temp\(1) & \G12_6|temp\(0));

\G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\G2_resta_u6|Mux0~1_combout\ & \G2_resta_u6|Mux1~1_combout\ & \G2_resta_u6|Mux2~1_combout\ & \G2_resta_u6|Mux3~0_combout\);

\G14_u6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a1\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a2\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a3\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a4\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a5\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a6\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a7\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a8\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a9\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a10\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a11\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a12\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a13\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a14\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a15\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a18\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(16);
\G14_u6|ram_rtl_0|auto_generated|ram_block1a19\ <= \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(17);

\G|CLOCK_1Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|CLOCK_1Hz~q\);

\G|CLOCK_100Hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|CLOCK_100Hz~q\);

\G|clock_100hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_100hz_int~q\);

\MSS|Selector28~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|Selector28~1_combout\);

\G|clock_100Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_100Khz_int~q\);

\MSS|ihist_u1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u1~combout\);

\G|clock_10Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_10Khz_int~q\);

\G|clock_1Mhz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_1Mhz_int~q\);

\G|clock_10hz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_10hz_int~q\);

\G|clock_1Khz_int~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \G|clock_1Khz_int~q\);

\MSS|ihist_u2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u2~combout\);

\MSS|ihist_u6~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u6~combout\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

\MSS|ihist_u7~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u7~combout\);

\MSS|incremento_u1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|incremento_u1~combout\);

\MSS|ihist_u8~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u8~combout\);

\MSS|incremento_u2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|incremento_u2~combout\);

\MSS|incremento_u3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|incremento_u3~combout\);

\MSS|ihist_u3~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u3~combout\);

\MSS|ihist_u5~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MSS|ihist_u5~combout\);
\MSS|ALT_INV_reset_hist~combout\ <= NOT \MSS|reset_hist~combout\;
\MSS|ALT_INV_cuenta_a_0~combout\ <= NOT \MSS|cuenta_a_0~combout\;
\MSS|ALT_INV_reset_oc~combout\ <= NOT \MSS|reset_oc~combout\;
\MSS|ALT_INV_rhist_u5~combout\ <= NOT \MSS|rhist_u5~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y34_N2
\LLAMADA_EN_PROGRESO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G4|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[0]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\LLAMADA_EN_PROGRESO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G5|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[1]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\LLAMADA_EN_PROGRESO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G6|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\LLAMADA_EN_PROGRESO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G7|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\LLAMADA_EN_PROGRESO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G8|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[4]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\LLAMADA_EN_PROGRESO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G9|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\LLAMADA_EN_PROGRESO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G10|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\LLAMADA_EN_PROGRESO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G11|q~q\,
	devoe => ww_devoe,
	o => \LLAMADA_EN_PROGRESO[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\OCUPADO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MSS|OCUPADO~combout\,
	devoe => ww_devoe,
	o => \OCUPADO~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\DISPLAY_1n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d1|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_1n[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\DISPLAY_1n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d1|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_1n[1]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\DISPLAY_1n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d1|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_1n[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\DISPLAY_1n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d1|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_1n[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\DISPLAY_2n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d2|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_2n[0]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DISPLAY_2n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d2|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_2n[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\DISPLAY_2n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d2|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_2n[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\DISPLAY_2n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d2|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_2n[3]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\DISPLAY_3n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d3|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_3n[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\DISPLAY_3n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d3|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_3n[1]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\DISPLAY_3n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d3|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_3n[2]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\DISPLAY_3n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d3|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_3n[3]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\DISPLAY_4n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d4|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_4n[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\DISPLAY_4n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d4|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_4n[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\DISPLAY_4n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d4|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_4n[2]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\DISPLAY_4n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d4|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_4n[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\DISPLAY_5n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d5|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_5n[0]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\DISPLAY_5n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d5|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_5n[1]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\DISPLAY_5n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d5|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_5n[2]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\DISPLAY_5n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d5|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_5n[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\DISPLAY_6n[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d6|s[0]~0_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_6n[0]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\DISPLAY_6n[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d6|s[1]~1_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_6n[1]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\DISPLAY_6n[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d6|s[2]~2_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_6n[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\DISPLAY_6n[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \G2_sal_d6|s[3]~3_combout\,
	devoe => ww_devoe,
	o => \DISPLAY_6n[3]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y16_N12
\G|count_1Mhz[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[0]~6_combout\ = \G|count_1Mhz\(0) $ (VCC)
-- \G|count_1Mhz[0]~7\ = CARRY(\G|count_1Mhz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Mhz\(0),
	datad => VCC,
	combout => \G|count_1Mhz[0]~6_combout\,
	cout => \G|count_1Mhz[0]~7\);

-- Location: LCCOMB_X51_Y16_N20
\G|count_1Mhz[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[4]~14_combout\ = (\G|count_1Mhz\(4) & (\G|count_1Mhz[3]~13\ $ (GND))) # (!\G|count_1Mhz\(4) & (!\G|count_1Mhz[3]~13\ & VCC))
-- \G|count_1Mhz[4]~15\ = CARRY((\G|count_1Mhz\(4) & !\G|count_1Mhz[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Mhz\(4),
	datad => VCC,
	cin => \G|count_1Mhz[3]~13\,
	combout => \G|count_1Mhz[4]~14_combout\,
	cout => \G|count_1Mhz[4]~15\);

-- Location: LCCOMB_X51_Y16_N22
\G|count_1Mhz[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[5]~16_combout\ = \G|count_1Mhz\(5) $ (\G|count_1Mhz[4]~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Mhz\(5),
	cin => \G|count_1Mhz[4]~15\,
	combout => \G|count_1Mhz[5]~16_combout\);

-- Location: FF_X51_Y16_N23
\G|count_1Mhz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[5]~16_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(5));

-- Location: LCCOMB_X51_Y16_N28
\G|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|LessThan0~0_combout\ = (!\G|count_1Mhz\(0) & (!\G|count_1Mhz\(3) & (!\G|count_1Mhz\(1) & !\G|count_1Mhz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Mhz\(0),
	datab => \G|count_1Mhz\(3),
	datac => \G|count_1Mhz\(1),
	datad => \G|count_1Mhz\(2),
	combout => \G|LessThan0~0_combout\);

-- Location: LCCOMB_X51_Y16_N30
\G|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|LessThan0~1_combout\ = (\G|count_1Mhz\(4) & (\G|count_1Mhz\(5) & !\G|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Mhz\(4),
	datac => \G|count_1Mhz\(5),
	datad => \G|LessThan0~0_combout\,
	combout => \G|LessThan0~1_combout\);

-- Location: FF_X51_Y16_N13
\G|count_1Mhz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[0]~6_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(0));

-- Location: LCCOMB_X51_Y16_N14
\G|count_1Mhz[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[1]~8_combout\ = (\G|count_1Mhz\(1) & (!\G|count_1Mhz[0]~7\)) # (!\G|count_1Mhz\(1) & ((\G|count_1Mhz[0]~7\) # (GND)))
-- \G|count_1Mhz[1]~9\ = CARRY((!\G|count_1Mhz[0]~7\) # (!\G|count_1Mhz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Mhz\(1),
	datad => VCC,
	cin => \G|count_1Mhz[0]~7\,
	combout => \G|count_1Mhz[1]~8_combout\,
	cout => \G|count_1Mhz[1]~9\);

-- Location: FF_X51_Y16_N15
\G|count_1Mhz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[1]~8_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(1));

-- Location: LCCOMB_X51_Y16_N16
\G|count_1Mhz[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[2]~10_combout\ = (\G|count_1Mhz\(2) & (\G|count_1Mhz[1]~9\ $ (GND))) # (!\G|count_1Mhz\(2) & (!\G|count_1Mhz[1]~9\ & VCC))
-- \G|count_1Mhz[2]~11\ = CARRY((\G|count_1Mhz\(2) & !\G|count_1Mhz[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Mhz\(2),
	datad => VCC,
	cin => \G|count_1Mhz[1]~9\,
	combout => \G|count_1Mhz[2]~10_combout\,
	cout => \G|count_1Mhz[2]~11\);

-- Location: FF_X51_Y16_N17
\G|count_1Mhz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[2]~10_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(2));

-- Location: LCCOMB_X51_Y16_N18
\G|count_1Mhz[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Mhz[3]~12_combout\ = (\G|count_1Mhz\(3) & (!\G|count_1Mhz[2]~11\)) # (!\G|count_1Mhz\(3) & ((\G|count_1Mhz[2]~11\) # (GND)))
-- \G|count_1Mhz[3]~13\ = CARRY((!\G|count_1Mhz[2]~11\) # (!\G|count_1Mhz\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Mhz\(3),
	datad => VCC,
	cin => \G|count_1Mhz[2]~11\,
	combout => \G|count_1Mhz[3]~12_combout\,
	cout => \G|count_1Mhz[3]~13\);

-- Location: FF_X51_Y16_N19
\G|count_1Mhz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[3]~12_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(3));

-- Location: FF_X51_Y16_N21
\G|count_1Mhz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|count_1Mhz[4]~14_combout\,
	sclr => \G|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Mhz\(4));

-- Location: LCCOMB_X52_Y16_N8
\G|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|LessThan1~0_combout\ = (\G|count_1Mhz\(4)) # ((\G|count_1Mhz\(3)) # ((\G|count_1Mhz\(2)) # (\G|count_1Mhz\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Mhz\(4),
	datab => \G|count_1Mhz\(3),
	datac => \G|count_1Mhz\(2),
	datad => \G|count_1Mhz\(5),
	combout => \G|LessThan1~0_combout\);

-- Location: FF_X52_Y16_N9
\G|clock_1Mhz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_1Mhz_int~q\);

-- Location: CLKCTRL_G7
\G|clock_1Mhz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_1Mhz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_1Mhz_int~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y33_N18
\G|count_100Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100Khz[1]~1_combout\ = \G|count_100Khz\(1) $ (\G|count_100Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_100Khz\(1),
	datad => \G|count_100Khz\(0),
	combout => \G|count_100Khz[1]~1_combout\);

-- Location: FF_X26_Y33_N19
\G|count_100Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Mhz_int~clkctrl_outclk\,
	d => \G|count_100Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100Khz\(1));

-- Location: LCCOMB_X26_Y33_N26
\G|count_100Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100Khz~2_combout\ = (\G|count_100Khz\(1) & (\G|count_100Khz\(2) $ (\G|count_100Khz\(0)))) # (!\G|count_100Khz\(1) & (\G|count_100Khz\(2) & \G|count_100Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_100Khz\(1),
	datac => \G|count_100Khz\(2),
	datad => \G|count_100Khz\(0),
	combout => \G|count_100Khz~2_combout\);

-- Location: FF_X26_Y33_N27
\G|count_100Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Mhz_int~clkctrl_outclk\,
	d => \G|count_100Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100Khz\(2));

-- Location: LCCOMB_X26_Y33_N30
\G|count_100Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100Khz~0_combout\ = (!\G|count_100Khz\(0) & ((\G|count_100Khz\(1)) # (!\G|count_100Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_100Khz\(1),
	datac => \G|count_100Khz\(0),
	datad => \G|count_100Khz\(2),
	combout => \G|count_100Khz~0_combout\);

-- Location: FF_X26_Y33_N31
\G|count_100Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Mhz_int~clkctrl_outclk\,
	d => \G|count_100Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100Khz\(0));

-- Location: LCCOMB_X26_Y33_N14
\G|clock_100Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_100Khz_int~0_combout\ = \G|clock_100Khz_int~q\ $ (((!\G|count_100Khz\(0) & (\G|count_100Khz\(2) & !\G|count_100Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_100Khz\(0),
	datab => \G|clock_100Khz_int~q\,
	datac => \G|count_100Khz\(2),
	datad => \G|count_100Khz\(1),
	combout => \G|clock_100Khz_int~0_combout\);

-- Location: LCCOMB_X26_Y33_N20
\G|clock_100Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_100Khz_int~feeder_combout\ = \G|clock_100Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|clock_100Khz_int~0_combout\,
	combout => \G|clock_100Khz_int~feeder_combout\);

-- Location: FF_X26_Y33_N21
\G|clock_100Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Mhz_int~clkctrl_outclk\,
	d => \G|clock_100Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_100Khz_int~q\);

-- Location: CLKCTRL_G12
\G|clock_100Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_100Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_100Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y33_N18
\G|count_10Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10Khz[1]~1_combout\ = \G|count_10Khz\(1) $ (\G|count_10Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_10Khz\(1),
	datad => \G|count_10Khz\(0),
	combout => \G|count_10Khz[1]~1_combout\);

-- Location: FF_X24_Y33_N19
\G|count_10Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100Khz_int~clkctrl_outclk\,
	d => \G|count_10Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10Khz\(1));

-- Location: LCCOMB_X24_Y33_N30
\G|count_10Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10Khz~2_combout\ = (\G|count_10Khz\(1) & (\G|count_10Khz\(2) $ (\G|count_10Khz\(0)))) # (!\G|count_10Khz\(1) & (\G|count_10Khz\(2) & \G|count_10Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_10Khz\(1),
	datac => \G|count_10Khz\(2),
	datad => \G|count_10Khz\(0),
	combout => \G|count_10Khz~2_combout\);

-- Location: FF_X24_Y33_N31
\G|count_10Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100Khz_int~clkctrl_outclk\,
	d => \G|count_10Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10Khz\(2));

-- Location: LCCOMB_X24_Y33_N8
\G|count_10Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10Khz~0_combout\ = (!\G|count_10Khz\(0) & ((\G|count_10Khz\(1)) # (!\G|count_10Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_10Khz\(1),
	datac => \G|count_10Khz\(0),
	datad => \G|count_10Khz\(2),
	combout => \G|count_10Khz~0_combout\);

-- Location: FF_X24_Y33_N9
\G|count_10Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100Khz_int~clkctrl_outclk\,
	d => \G|count_10Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10Khz\(0));

-- Location: LCCOMB_X24_Y33_N24
\G|clock_10Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_10Khz_int~0_combout\ = \G|clock_10Khz_int~q\ $ (((!\G|count_10Khz\(0) & (\G|count_10Khz\(2) & !\G|count_10Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|clock_10Khz_int~q\,
	datab => \G|count_10Khz\(0),
	datac => \G|count_10Khz\(2),
	datad => \G|count_10Khz\(1),
	combout => \G|clock_10Khz_int~0_combout\);

-- Location: FF_X24_Y33_N5
\G|clock_10Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100Khz_int~clkctrl_outclk\,
	asdata => \G|clock_10Khz_int~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_10Khz_int~q\);

-- Location: CLKCTRL_G13
\G|clock_10Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_10Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_10Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N28
\G|count_1Khz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Khz[1]~1_combout\ = \G|count_1Khz\(1) $ (\G|count_1Khz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_1Khz\(1),
	datad => \G|count_1Khz\(0),
	combout => \G|count_1Khz[1]~1_combout\);

-- Location: FF_X52_Y17_N29
\G|count_1Khz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10Khz_int~clkctrl_outclk\,
	d => \G|count_1Khz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Khz\(1));

-- Location: LCCOMB_X52_Y17_N30
\G|count_1Khz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Khz~2_combout\ = (\G|count_1Khz\(1) & (\G|count_1Khz\(2) $ (\G|count_1Khz\(0)))) # (!\G|count_1Khz\(1) & (\G|count_1Khz\(2) & \G|count_1Khz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1Khz\(1),
	datac => \G|count_1Khz\(2),
	datad => \G|count_1Khz\(0),
	combout => \G|count_1Khz~2_combout\);

-- Location: FF_X52_Y17_N31
\G|count_1Khz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10Khz_int~clkctrl_outclk\,
	d => \G|count_1Khz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Khz\(2));

-- Location: LCCOMB_X52_Y17_N26
\G|count_1Khz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1Khz~0_combout\ = (!\G|count_1Khz\(0) & ((\G|count_1Khz\(1)) # (!\G|count_1Khz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Khz\(1),
	datac => \G|count_1Khz\(0),
	datad => \G|count_1Khz\(2),
	combout => \G|count_1Khz~0_combout\);

-- Location: FF_X52_Y17_N27
\G|count_1Khz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10Khz_int~clkctrl_outclk\,
	d => \G|count_1Khz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1Khz\(0));

-- Location: LCCOMB_X52_Y17_N20
\G|clock_1Khz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_1Khz_int~0_combout\ = \G|clock_1Khz_int~q\ $ (((!\G|count_1Khz\(0) & (\G|count_1Khz\(2) & !\G|count_1Khz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1Khz\(0),
	datab => \G|clock_1Khz_int~q\,
	datac => \G|count_1Khz\(2),
	datad => \G|count_1Khz\(1),
	combout => \G|clock_1Khz_int~0_combout\);

-- Location: LCCOMB_X52_Y17_N22
\G|clock_1Khz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_1Khz_int~feeder_combout\ = \G|clock_1Khz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|clock_1Khz_int~0_combout\,
	combout => \G|clock_1Khz_int~feeder_combout\);

-- Location: FF_X52_Y17_N23
\G|clock_1Khz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10Khz_int~clkctrl_outclk\,
	d => \G|clock_1Khz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_1Khz_int~q\);

-- Location: CLKCTRL_G5
\G|clock_1Khz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_1Khz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_1Khz_int~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y16_N2
\G|count_100hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100hz[1]~1_combout\ = \G|count_100hz\(1) $ (\G|count_100hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_100hz\(1),
	datad => \G|count_100hz\(0),
	combout => \G|count_100hz[1]~1_combout\);

-- Location: FF_X1_Y16_N3
\G|count_100hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Khz_int~clkctrl_outclk\,
	d => \G|count_100hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100hz\(1));

-- Location: LCCOMB_X1_Y16_N4
\G|count_100hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100hz~2_combout\ = (\G|count_100hz\(1) & (\G|count_100hz\(2) $ (\G|count_100hz\(0)))) # (!\G|count_100hz\(1) & (\G|count_100hz\(2) & \G|count_100hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_100hz\(1),
	datac => \G|count_100hz\(2),
	datad => \G|count_100hz\(0),
	combout => \G|count_100hz~2_combout\);

-- Location: FF_X1_Y16_N5
\G|count_100hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Khz_int~clkctrl_outclk\,
	d => \G|count_100hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100hz\(2));

-- Location: LCCOMB_X1_Y16_N30
\G|count_100hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_100hz~0_combout\ = (!\G|count_100hz\(0) & ((\G|count_100hz\(1)) # (!\G|count_100hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_100hz\(1),
	datac => \G|count_100hz\(0),
	datad => \G|count_100hz\(2),
	combout => \G|count_100hz~0_combout\);

-- Location: FF_X1_Y16_N31
\G|count_100hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Khz_int~clkctrl_outclk\,
	d => \G|count_100hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_100hz\(0));

-- Location: LCCOMB_X1_Y16_N6
\G|clock_100hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_100hz_int~0_combout\ = \G|clock_100hz_int~q\ $ (((!\G|count_100hz\(0) & (\G|count_100hz\(2) & !\G|count_100hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_100hz\(0),
	datab => \G|clock_100hz_int~q\,
	datac => \G|count_100hz\(2),
	datad => \G|count_100hz\(1),
	combout => \G|clock_100hz_int~0_combout\);

-- Location: LCCOMB_X1_Y16_N12
\G|clock_100hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_100hz_int~feeder_combout\ = \G|clock_100hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|clock_100hz_int~0_combout\,
	combout => \G|clock_100hz_int~feeder_combout\);

-- Location: FF_X1_Y16_N13
\G|clock_100hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_1Khz_int~clkctrl_outclk\,
	d => \G|clock_100hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_100hz_int~q\);

-- Location: LCCOMB_X1_Y16_N28
\G|CLOCK_100Hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|CLOCK_100Hz~feeder_combout\ = \G|clock_100hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|clock_100hz_int~q\,
	combout => \G|CLOCK_100Hz~feeder_combout\);

-- Location: FF_X1_Y16_N29
\G|CLOCK_100Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|CLOCK_100Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|CLOCK_100Hz~q\);

-- Location: CLKCTRL_G1
\G|CLOCK_100Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|CLOCK_100Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|CLOCK_100Hz~clkctrl_outclk\);

-- Location: IOIBUF_X16_Y34_N8
\REALIZAR_LLAMADA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_REALIZAR_LLAMADA,
	o => \REALIZAR_LLAMADA~input_o\);

-- Location: LCCOMB_X19_Y13_N12
\Gsr_3|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_3|SHIFT_PB[3]~0_combout\ = !\REALIZAR_LLAMADA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \REALIZAR_LLAMADA~input_o\,
	combout => \Gsr_3|SHIFT_PB[3]~0_combout\);

-- Location: FF_X19_Y13_N13
\Gsr_3|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_3|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_3|SHIFT_PB\(3));

-- Location: LCCOMB_X19_Y13_N26
\Gsr_3|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_3|SHIFT_PB[2]~feeder_combout\ = \Gsr_3|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_3|SHIFT_PB\(3),
	combout => \Gsr_3|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X19_Y13_N27
\Gsr_3|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_3|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_3|SHIFT_PB\(2));

-- Location: LCCOMB_X19_Y13_N28
\Gsr_3|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_3|SHIFT_PB[1]~feeder_combout\ = \Gsr_3|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_3|SHIFT_PB\(2),
	combout => \Gsr_3|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X19_Y13_N29
\Gsr_3|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_3|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_3|SHIFT_PB\(1));

-- Location: LCCOMB_X19_Y13_N30
\Gsr_3|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_3|SHIFT_PB[0]~feeder_combout\ = \Gsr_3|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_3|SHIFT_PB\(1),
	combout => \Gsr_3|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X19_Y13_N31
\Gsr_3|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_3|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_3|SHIFT_PB\(0));

-- Location: LCCOMB_X19_Y13_N24
\Gsr_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_3|Equal0~0_combout\ = (\Gsr_3|SHIFT_PB\(3)) # ((\Gsr_3|SHIFT_PB\(1)) # ((\Gsr_3|SHIFT_PB\(0)) # (\Gsr_3|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_3|SHIFT_PB\(3),
	datab => \Gsr_3|SHIFT_PB\(1),
	datac => \Gsr_3|SHIFT_PB\(0),
	datad => \Gsr_3|SHIFT_PB\(2),
	combout => \Gsr_3|Equal0~0_combout\);

-- Location: FF_X19_Y13_N25
\Gsr_3|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_3|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_3|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X14_Y34_N22
\TECLADO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(8),
	o => \TECLADO[8]~input_o\);

-- Location: LCCOMB_X21_Y13_N16
\Gsr_15|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_15|SHIFT_PB[3]~0_combout\ = !\TECLADO[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TECLADO[8]~input_o\,
	combout => \Gsr_15|SHIFT_PB[3]~0_combout\);

-- Location: FF_X21_Y13_N17
\Gsr_15|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_15|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_15|SHIFT_PB\(3));

-- Location: LCCOMB_X21_Y13_N6
\Gsr_15|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_15|SHIFT_PB[2]~feeder_combout\ = \Gsr_15|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_15|SHIFT_PB\(3),
	combout => \Gsr_15|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X21_Y13_N7
\Gsr_15|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_15|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_15|SHIFT_PB\(2));

-- Location: LCCOMB_X21_Y13_N28
\Gsr_15|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_15|SHIFT_PB[1]~feeder_combout\ = \Gsr_15|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_15|SHIFT_PB\(2),
	combout => \Gsr_15|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X21_Y13_N29
\Gsr_15|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_15|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_15|SHIFT_PB\(1));

-- Location: LCCOMB_X21_Y13_N30
\Gsr_15|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_15|SHIFT_PB[0]~feeder_combout\ = \Gsr_15|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_15|SHIFT_PB\(1),
	combout => \Gsr_15|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X21_Y13_N31
\Gsr_15|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_15|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_15|SHIFT_PB\(0));

-- Location: LCCOMB_X21_Y13_N24
\Gsr_15|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_15|Equal0~0_combout\ = (\Gsr_15|SHIFT_PB\(2)) # ((\Gsr_15|SHIFT_PB\(1)) # ((\Gsr_15|SHIFT_PB\(0)) # (\Gsr_15|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_15|SHIFT_PB\(2),
	datab => \Gsr_15|SHIFT_PB\(1),
	datac => \Gsr_15|SHIFT_PB\(0),
	datad => \Gsr_15|SHIFT_PB\(3),
	combout => \Gsr_15|Equal0~0_combout\);

-- Location: FF_X21_Y13_N25
\Gsr_15|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_15|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_15|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X9_Y34_N22
\TECLADO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(6),
	o => \TECLADO[6]~input_o\);

-- Location: LCCOMB_X21_Y11_N10
\Gsr_13|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_13|SHIFT_PB[3]~0_combout\ = !\TECLADO[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[6]~input_o\,
	combout => \Gsr_13|SHIFT_PB[3]~0_combout\);

-- Location: FF_X21_Y11_N11
\Gsr_13|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_13|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_13|SHIFT_PB\(3));

-- Location: LCCOMB_X21_Y11_N20
\Gsr_13|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_13|SHIFT_PB[2]~feeder_combout\ = \Gsr_13|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_13|SHIFT_PB\(3),
	combout => \Gsr_13|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X21_Y11_N21
\Gsr_13|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_13|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_13|SHIFT_PB\(2));

-- Location: LCCOMB_X21_Y11_N2
\Gsr_13|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_13|SHIFT_PB[1]~feeder_combout\ = \Gsr_13|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_13|SHIFT_PB\(2),
	combout => \Gsr_13|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X21_Y11_N3
\Gsr_13|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_13|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_13|SHIFT_PB\(1));

-- Location: LCCOMB_X21_Y11_N4
\Gsr_13|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_13|SHIFT_PB[0]~feeder_combout\ = \Gsr_13|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_13|SHIFT_PB\(1),
	combout => \Gsr_13|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X21_Y11_N5
\Gsr_13|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_13|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_13|SHIFT_PB\(0));

-- Location: LCCOMB_X21_Y11_N8
\Gsr_13|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_13|Equal0~0_combout\ = (\Gsr_13|SHIFT_PB\(3)) # ((\Gsr_13|SHIFT_PB\(1)) # ((\Gsr_13|SHIFT_PB\(0)) # (\Gsr_13|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_13|SHIFT_PB\(3),
	datab => \Gsr_13|SHIFT_PB\(1),
	datac => \Gsr_13|SHIFT_PB\(0),
	datad => \Gsr_13|SHIFT_PB\(2),
	combout => \Gsr_13|Equal0~0_combout\);

-- Location: FF_X21_Y11_N9
\Gsr_13|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_13|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_13|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X7_Y34_N15
\TECLADO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(3),
	o => \TECLADO[3]~input_o\);

-- Location: LCCOMB_X19_Y9_N8
\Gsr_10|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_10|SHIFT_PB[3]~0_combout\ = !\TECLADO[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[3]~input_o\,
	combout => \Gsr_10|SHIFT_PB[3]~0_combout\);

-- Location: FF_X19_Y9_N9
\Gsr_10|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_10|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_10|SHIFT_PB\(3));

-- Location: LCCOMB_X19_Y9_N6
\Gsr_10|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_10|SHIFT_PB[2]~feeder_combout\ = \Gsr_10|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_10|SHIFT_PB\(3),
	combout => \Gsr_10|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X19_Y9_N7
\Gsr_10|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_10|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_10|SHIFT_PB\(2));

-- Location: LCCOMB_X19_Y9_N0
\Gsr_10|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_10|SHIFT_PB[1]~feeder_combout\ = \Gsr_10|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_10|SHIFT_PB\(2),
	combout => \Gsr_10|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X19_Y9_N1
\Gsr_10|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_10|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_10|SHIFT_PB\(1));

-- Location: LCCOMB_X19_Y9_N30
\Gsr_10|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_10|SHIFT_PB[0]~feeder_combout\ = \Gsr_10|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_10|SHIFT_PB\(1),
	combout => \Gsr_10|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X19_Y9_N31
\Gsr_10|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_10|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_10|SHIFT_PB\(0));

-- Location: LCCOMB_X19_Y9_N16
\Gsr_10|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_10|Equal0~0_combout\ = (\Gsr_10|SHIFT_PB\(0)) # ((\Gsr_10|SHIFT_PB\(1)) # ((\Gsr_10|SHIFT_PB\(3)) # (\Gsr_10|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_10|SHIFT_PB\(0),
	datab => \Gsr_10|SHIFT_PB\(1),
	datac => \Gsr_10|SHIFT_PB\(3),
	datad => \Gsr_10|SHIFT_PB\(2),
	combout => \Gsr_10|Equal0~0_combout\);

-- Location: FF_X19_Y9_N17
\Gsr_10|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_10|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_10|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X3_Y34_N1
\TECLADO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(4),
	o => \TECLADO[4]~input_o\);

-- Location: LCCOMB_X17_Y9_N28
\Gsr_11|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_11|SHIFT_PB[3]~0_combout\ = !\TECLADO[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TECLADO[4]~input_o\,
	combout => \Gsr_11|SHIFT_PB[3]~0_combout\);

-- Location: FF_X17_Y9_N29
\Gsr_11|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_11|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_11|SHIFT_PB\(3));

-- Location: LCCOMB_X17_Y9_N6
\Gsr_11|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_11|SHIFT_PB[2]~feeder_combout\ = \Gsr_11|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_11|SHIFT_PB\(3),
	combout => \Gsr_11|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X17_Y9_N7
\Gsr_11|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_11|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_11|SHIFT_PB\(2));

-- Location: LCCOMB_X17_Y9_N24
\Gsr_11|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_11|SHIFT_PB[1]~feeder_combout\ = \Gsr_11|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_11|SHIFT_PB\(2),
	combout => \Gsr_11|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X17_Y9_N25
\Gsr_11|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_11|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_11|SHIFT_PB\(1));

-- Location: LCCOMB_X17_Y9_N30
\Gsr_11|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_11|SHIFT_PB[0]~feeder_combout\ = \Gsr_11|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_11|SHIFT_PB\(1),
	combout => \Gsr_11|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X17_Y9_N31
\Gsr_11|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_11|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_11|SHIFT_PB\(0));

-- Location: LCCOMB_X17_Y9_N12
\Gsr_11|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_11|Equal0~0_combout\ = (\Gsr_11|SHIFT_PB\(2)) # ((\Gsr_11|SHIFT_PB\(1)) # ((\Gsr_11|SHIFT_PB\(0)) # (\Gsr_11|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_11|SHIFT_PB\(2),
	datab => \Gsr_11|SHIFT_PB\(1),
	datac => \Gsr_11|SHIFT_PB\(0),
	datad => \Gsr_11|SHIFT_PB\(3),
	combout => \Gsr_11|Equal0~0_combout\);

-- Location: FF_X17_Y9_N13
\Gsr_11|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_11|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_11|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X7_Y34_N1
\TECLADO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(5),
	o => \TECLADO[5]~input_o\);

-- Location: LCCOMB_X20_Y10_N12
\Gsr_12|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_12|SHIFT_PB[3]~0_combout\ = !\TECLADO[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TECLADO[5]~input_o\,
	combout => \Gsr_12|SHIFT_PB[3]~0_combout\);

-- Location: FF_X20_Y10_N13
\Gsr_12|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_12|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_12|SHIFT_PB\(3));

-- Location: LCCOMB_X20_Y10_N18
\Gsr_12|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_12|SHIFT_PB[2]~feeder_combout\ = \Gsr_12|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_12|SHIFT_PB\(3),
	combout => \Gsr_12|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X20_Y10_N19
\Gsr_12|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_12|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_12|SHIFT_PB\(2));

-- Location: LCCOMB_X20_Y10_N28
\Gsr_12|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_12|SHIFT_PB[1]~feeder_combout\ = \Gsr_12|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_12|SHIFT_PB\(2),
	combout => \Gsr_12|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X20_Y10_N29
\Gsr_12|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_12|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_12|SHIFT_PB\(1));

-- Location: LCCOMB_X20_Y10_N30
\Gsr_12|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_12|SHIFT_PB[0]~feeder_combout\ = \Gsr_12|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_12|SHIFT_PB\(1),
	combout => \Gsr_12|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X20_Y10_N31
\Gsr_12|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_12|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_12|SHIFT_PB\(0));

-- Location: LCCOMB_X20_Y10_N20
\Gsr_12|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_12|Equal0~0_combout\ = (\Gsr_12|SHIFT_PB\(3)) # ((\Gsr_12|SHIFT_PB\(1)) # ((\Gsr_12|SHIFT_PB\(0)) # (\Gsr_12|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_12|SHIFT_PB\(3),
	datab => \Gsr_12|SHIFT_PB\(1),
	datac => \Gsr_12|SHIFT_PB\(0),
	datad => \Gsr_12|SHIFT_PB\(2),
	combout => \Gsr_12|Equal0~0_combout\);

-- Location: FF_X20_Y10_N21
\Gsr_12|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_12|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_12|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X21_Y9_N20
\G0|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal2~1_combout\ = (!\Gsr_11|PB_SIN_REBOTE~q\ & !\Gsr_12|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_11|PB_SIN_REBOTE~q\,
	datad => \Gsr_12|PB_SIN_REBOTE~q\,
	combout => \G0|Equal2~1_combout\);

-- Location: IOIBUF_X7_Y34_N8
\TECLADO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(2),
	o => \TECLADO[2]~input_o\);

-- Location: LCCOMB_X20_Y11_N16
\Gsr_9|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_9|SHIFT_PB[3]~0_combout\ = !\TECLADO[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[2]~input_o\,
	combout => \Gsr_9|SHIFT_PB[3]~0_combout\);

-- Location: FF_X20_Y11_N17
\Gsr_9|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_9|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_9|SHIFT_PB\(3));

-- Location: LCCOMB_X20_Y11_N6
\Gsr_9|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_9|SHIFT_PB[2]~feeder_combout\ = \Gsr_9|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_9|SHIFT_PB\(3),
	combout => \Gsr_9|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X20_Y11_N7
\Gsr_9|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_9|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_9|SHIFT_PB\(2));

-- Location: LCCOMB_X20_Y11_N28
\Gsr_9|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_9|SHIFT_PB[1]~feeder_combout\ = \Gsr_9|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_9|SHIFT_PB\(2),
	combout => \Gsr_9|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X20_Y11_N29
\Gsr_9|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_9|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_9|SHIFT_PB\(1));

-- Location: LCCOMB_X20_Y11_N30
\Gsr_9|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_9|SHIFT_PB[0]~feeder_combout\ = \Gsr_9|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_9|SHIFT_PB\(1),
	combout => \Gsr_9|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X20_Y11_N31
\Gsr_9|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_9|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_9|SHIFT_PB\(0));

-- Location: LCCOMB_X20_Y11_N20
\Gsr_9|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_9|Equal0~0_combout\ = (\Gsr_9|SHIFT_PB\(2)) # ((\Gsr_9|SHIFT_PB\(1)) # ((\Gsr_9|SHIFT_PB\(0)) # (\Gsr_9|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_9|SHIFT_PB\(2),
	datab => \Gsr_9|SHIFT_PB\(1),
	datac => \Gsr_9|SHIFT_PB\(0),
	datad => \Gsr_9|SHIFT_PB\(3),
	combout => \Gsr_9|Equal0~0_combout\);

-- Location: FF_X20_Y11_N21
\Gsr_9|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_9|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_9|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X5_Y34_N15
\TECLADO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(9),
	o => \TECLADO[9]~input_o\);

-- Location: LCCOMB_X20_Y9_N30
\Gsr_16|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_16|SHIFT_PB[3]~0_combout\ = !\TECLADO[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[9]~input_o\,
	combout => \Gsr_16|SHIFT_PB[3]~0_combout\);

-- Location: FF_X20_Y9_N31
\Gsr_16|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_16|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_16|SHIFT_PB\(3));

-- Location: LCCOMB_X20_Y9_N0
\Gsr_16|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_16|SHIFT_PB[2]~feeder_combout\ = \Gsr_16|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_16|SHIFT_PB\(3),
	combout => \Gsr_16|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X20_Y9_N1
\Gsr_16|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_16|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_16|SHIFT_PB\(2));

-- Location: LCCOMB_X20_Y9_N18
\Gsr_16|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_16|SHIFT_PB[1]~feeder_combout\ = \Gsr_16|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_16|SHIFT_PB\(2),
	combout => \Gsr_16|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X20_Y9_N19
\Gsr_16|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_16|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_16|SHIFT_PB\(1));

-- Location: LCCOMB_X20_Y9_N8
\Gsr_16|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_16|SHIFT_PB[0]~feeder_combout\ = \Gsr_16|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_16|SHIFT_PB\(1),
	combout => \Gsr_16|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X20_Y9_N9
\Gsr_16|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_16|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_16|SHIFT_PB\(0));

-- Location: LCCOMB_X20_Y9_N26
\Gsr_16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_16|Equal0~0_combout\ = (\Gsr_16|SHIFT_PB\(3)) # ((\Gsr_16|SHIFT_PB\(1)) # ((\Gsr_16|SHIFT_PB\(0)) # (\Gsr_16|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|SHIFT_PB\(3),
	datab => \Gsr_16|SHIFT_PB\(1),
	datac => \Gsr_16|SHIFT_PB\(0),
	datad => \Gsr_16|SHIFT_PB\(2),
	combout => \Gsr_16|Equal0~0_combout\);

-- Location: FF_X20_Y9_N27
\Gsr_16|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_16|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_16|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X25_Y34_N22
\TECLADO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(0),
	o => \TECLADO[0]~input_o\);

-- Location: LCCOMB_X21_Y11_N18
\Gsr_7|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_7|SHIFT_PB[3]~0_combout\ = !\TECLADO[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[0]~input_o\,
	combout => \Gsr_7|SHIFT_PB[3]~0_combout\);

-- Location: FF_X21_Y11_N19
\Gsr_7|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_7|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_7|SHIFT_PB\(3));

-- Location: LCCOMB_X21_Y11_N0
\Gsr_7|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_7|SHIFT_PB[2]~feeder_combout\ = \Gsr_7|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_7|SHIFT_PB\(3),
	combout => \Gsr_7|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X21_Y11_N1
\Gsr_7|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_7|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_7|SHIFT_PB\(2));

-- Location: LCCOMB_X21_Y11_N6
\Gsr_7|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_7|SHIFT_PB[1]~feeder_combout\ = \Gsr_7|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_7|SHIFT_PB\(2),
	combout => \Gsr_7|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X21_Y11_N7
\Gsr_7|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_7|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_7|SHIFT_PB\(1));

-- Location: LCCOMB_X21_Y11_N28
\Gsr_7|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_7|SHIFT_PB[0]~feeder_combout\ = \Gsr_7|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_7|SHIFT_PB\(1),
	combout => \Gsr_7|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X21_Y11_N29
\Gsr_7|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_7|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_7|SHIFT_PB\(0));

-- Location: LCCOMB_X21_Y11_N26
\Gsr_7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_7|Equal0~0_combout\ = (\Gsr_7|SHIFT_PB\(1)) # ((\Gsr_7|SHIFT_PB\(0)) # ((\Gsr_7|SHIFT_PB\(3)) # (\Gsr_7|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_7|SHIFT_PB\(1),
	datab => \Gsr_7|SHIFT_PB\(0),
	datac => \Gsr_7|SHIFT_PB\(3),
	datad => \Gsr_7|SHIFT_PB\(2),
	combout => \Gsr_7|Equal0~0_combout\);

-- Location: FF_X21_Y11_N27
\Gsr_7|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_7|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_7|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X1_Y34_N1
\TECLADO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(1),
	o => \TECLADO[1]~input_o\);

-- Location: LCCOMB_X18_Y9_N16
\Gsr_8|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_8|SHIFT_PB[3]~0_combout\ = !\TECLADO[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TECLADO[1]~input_o\,
	combout => \Gsr_8|SHIFT_PB[3]~0_combout\);

-- Location: FF_X18_Y9_N17
\Gsr_8|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_8|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_8|SHIFT_PB\(3));

-- Location: LCCOMB_X18_Y9_N6
\Gsr_8|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_8|SHIFT_PB[2]~feeder_combout\ = \Gsr_8|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_8|SHIFT_PB\(3),
	combout => \Gsr_8|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X18_Y9_N7
\Gsr_8|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_8|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_8|SHIFT_PB\(2));

-- Location: LCCOMB_X18_Y9_N20
\Gsr_8|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_8|SHIFT_PB[1]~feeder_combout\ = \Gsr_8|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_8|SHIFT_PB\(2),
	combout => \Gsr_8|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X18_Y9_N21
\Gsr_8|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_8|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_8|SHIFT_PB\(1));

-- Location: LCCOMB_X18_Y9_N30
\Gsr_8|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_8|SHIFT_PB[0]~feeder_combout\ = \Gsr_8|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_8|SHIFT_PB\(1),
	combout => \Gsr_8|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X18_Y9_N31
\Gsr_8|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_8|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_8|SHIFT_PB\(0));

-- Location: LCCOMB_X18_Y9_N28
\Gsr_8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_8|Equal0~0_combout\ = (\Gsr_8|SHIFT_PB\(2)) # ((\Gsr_8|SHIFT_PB\(1)) # ((\Gsr_8|SHIFT_PB\(0)) # (\Gsr_8|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_8|SHIFT_PB\(2),
	datab => \Gsr_8|SHIFT_PB\(1),
	datac => \Gsr_8|SHIFT_PB\(0),
	datad => \Gsr_8|SHIFT_PB\(3),
	combout => \Gsr_8|Equal0~0_combout\);

-- Location: FF_X18_Y9_N29
\Gsr_8|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_8|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_8|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X11_Y34_N1
\TECLADO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TECLADO(7),
	o => \TECLADO[7]~input_o\);

-- Location: LCCOMB_X20_Y9_N2
\Gsr_14|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_14|SHIFT_PB[3]~0_combout\ = !\TECLADO[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \TECLADO[7]~input_o\,
	combout => \Gsr_14|SHIFT_PB[3]~0_combout\);

-- Location: FF_X20_Y9_N3
\Gsr_14|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_14|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_14|SHIFT_PB\(3));

-- Location: LCCOMB_X20_Y9_N12
\Gsr_14|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_14|SHIFT_PB[2]~feeder_combout\ = \Gsr_14|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_14|SHIFT_PB\(3),
	combout => \Gsr_14|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X20_Y9_N13
\Gsr_14|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_14|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_14|SHIFT_PB\(2));

-- Location: LCCOMB_X20_Y9_N10
\Gsr_14|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_14|SHIFT_PB[1]~feeder_combout\ = \Gsr_14|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_14|SHIFT_PB\(2),
	combout => \Gsr_14|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X20_Y9_N11
\Gsr_14|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_14|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_14|SHIFT_PB\(1));

-- Location: LCCOMB_X20_Y9_N4
\Gsr_14|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_14|SHIFT_PB[0]~feeder_combout\ = \Gsr_14|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_14|SHIFT_PB\(1),
	combout => \Gsr_14|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X20_Y9_N5
\Gsr_14|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_14|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_14|SHIFT_PB\(0));

-- Location: LCCOMB_X20_Y9_N16
\Gsr_14|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_14|Equal0~0_combout\ = (\Gsr_14|SHIFT_PB\(1)) # ((\Gsr_14|SHIFT_PB\(3)) # ((\Gsr_14|SHIFT_PB\(0)) # (\Gsr_14|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_14|SHIFT_PB\(1),
	datab => \Gsr_14|SHIFT_PB\(3),
	datac => \Gsr_14|SHIFT_PB\(0),
	datad => \Gsr_14|SHIFT_PB\(2),
	combout => \Gsr_14|Equal0~0_combout\);

-- Location: FF_X20_Y9_N17
\Gsr_14|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_14|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_14|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X21_Y9_N24
\G0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal0~0_combout\ = (!\Gsr_14|PB_SIN_REBOTE~q\ & (!\Gsr_13|PB_SIN_REBOTE~q\ & !\Gsr_15|PB_SIN_REBOTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_14|PB_SIN_REBOTE~q\,
	datac => \Gsr_13|PB_SIN_REBOTE~q\,
	datad => \Gsr_15|PB_SIN_REBOTE~q\,
	combout => \G0|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y9_N10
\G0|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal2~0_combout\ = (!\Gsr_16|PB_SIN_REBOTE~q\ & (!\Gsr_7|PB_SIN_REBOTE~q\ & (!\Gsr_8|PB_SIN_REBOTE~q\ & \G0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|PB_SIN_REBOTE~q\,
	datab => \Gsr_7|PB_SIN_REBOTE~q\,
	datac => \Gsr_8|PB_SIN_REBOTE~q\,
	datad => \G0|Equal0~0_combout\,
	combout => \G0|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y9_N30
\G0|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal1~0_combout\ = (!\Gsr_10|PB_SIN_REBOTE~q\ & (\G0|Equal2~1_combout\ & (\Gsr_9|PB_SIN_REBOTE~q\ & \G0|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_10|PB_SIN_REBOTE~q\,
	datab => \G0|Equal2~1_combout\,
	datac => \Gsr_9|PB_SIN_REBOTE~q\,
	datad => \G0|Equal2~0_combout\,
	combout => \G0|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y9_N18
\G0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal0~1_combout\ = (!\Gsr_10|PB_SIN_REBOTE~q\ & (!\Gsr_9|PB_SIN_REBOTE~q\ & (!\Gsr_7|PB_SIN_REBOTE~q\ & \G0|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_10|PB_SIN_REBOTE~q\,
	datab => \Gsr_9|PB_SIN_REBOTE~q\,
	datac => \Gsr_7|PB_SIN_REBOTE~q\,
	datad => \G0|Equal2~1_combout\,
	combout => \G0|Equal0~1_combout\);

-- Location: LCCOMB_X21_Y9_N0
\G0|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal5~1_combout\ = (!\Gsr_14|PB_SIN_REBOTE~q\ & (!\Gsr_8|PB_SIN_REBOTE~q\ & (!\Gsr_16|PB_SIN_REBOTE~q\ & \G0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_14|PB_SIN_REBOTE~q\,
	datab => \Gsr_8|PB_SIN_REBOTE~q\,
	datac => \Gsr_16|PB_SIN_REBOTE~q\,
	datad => \G0|Equal0~1_combout\,
	combout => \G0|Equal5~1_combout\);

-- Location: LCCOMB_X21_Y9_N26
\boton~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~15_combout\ = (!\G0|Equal1~0_combout\ & ((\Gsr_15|PB_SIN_REBOTE~q\ $ (!\Gsr_13|PB_SIN_REBOTE~q\)) # (!\G0|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_15|PB_SIN_REBOTE~q\,
	datab => \Gsr_13|PB_SIN_REBOTE~q\,
	datac => \G0|Equal1~0_combout\,
	datad => \G0|Equal5~1_combout\,
	combout => \boton~15_combout\);

-- Location: IOIBUF_X18_Y34_N22
\u2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u2,
	o => \u2~input_o\);

-- Location: IOIBUF_X20_Y34_N15
\u8~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u8,
	o => \u8~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\u5~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u5,
	o => \u5~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\u7~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u7,
	o => \u7~input_o\);

-- Location: IOIBUF_X23_Y34_N22
\u6~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u6,
	o => \u6~input_o\);

-- Location: LCCOMB_X25_Y8_N28
\uf~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~2_combout\ = (\u8~input_o\ & (!\u5~input_o\ & (!\u7~input_o\ & !\u6~input_o\))) # (!\u8~input_o\ & ((\u5~input_o\ & (!\u7~input_o\ & !\u6~input_o\)) # (!\u5~input_o\ & (\u7~input_o\ $ (\u6~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \u5~input_o\,
	datac => \u7~input_o\,
	datad => \u6~input_o\,
	combout => \uf~2_combout\);

-- Location: IOIBUF_X14_Y34_N15
\u4~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u4,
	o => \u4~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\u3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u3,
	o => \u3~input_o\);

-- Location: LCCOMB_X25_Y8_N26
\uf~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~1_combout\ = (!\u4~input_o\ & !\u3~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u4~input_o\,
	datad => \u3~input_o\,
	combout => \uf~1_combout\);

-- Location: IOIBUF_X27_Y0_N8
\u1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_u1,
	o => \u1~input_o\);

-- Location: LCCOMB_X25_Y8_N16
\uf~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~3_combout\ = (!\u2~input_o\ & (\uf~2_combout\ & (\uf~1_combout\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \uf~2_combout\,
	datac => \uf~1_combout\,
	datad => \u1~input_o\,
	combout => \uf~3_combout\);

-- Location: LCCOMB_X20_Y8_N12
\uf~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~0_combout\ = (!\u5~input_o\ & !\u6~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u5~input_o\,
	datad => \u6~input_o\,
	combout => \uf~0_combout\);

-- Location: LCCOMB_X25_Y8_N2
\uf~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~4_combout\ = (\u3~input_o\ & (!\u4~input_o\ & (!\u2~input_o\ & !\u1~input_o\))) # (!\u3~input_o\ & ((\u4~input_o\ & (!\u2~input_o\ & !\u1~input_o\)) # (!\u4~input_o\ & (\u2~input_o\ $ (\u1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u4~input_o\,
	datac => \u2~input_o\,
	datad => \u1~input_o\,
	combout => \uf~4_combout\);

-- Location: LCCOMB_X25_Y8_N10
\uf~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~5_combout\ = (!\u7~input_o\ & (\uf~0_combout\ & (!\u8~input_o\ & \uf~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7~input_o\,
	datab => \uf~0_combout\,
	datac => \u8~input_o\,
	datad => \uf~4_combout\,
	combout => \uf~5_combout\);

-- Location: LCCOMB_X25_Y8_N0
\uf~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uf~6_combout\ = (\uf~3_combout\) # (\uf~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uf~3_combout\,
	datad => \uf~5_combout\,
	combout => \uf~6_combout\);

-- Location: LCCOMB_X21_Y9_N6
\G0|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal3~1_combout\ = (!\Gsr_10|PB_SIN_REBOTE~q\ & (!\Gsr_9|PB_SIN_REBOTE~q\ & \G0|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_10|PB_SIN_REBOTE~q\,
	datac => \Gsr_9|PB_SIN_REBOTE~q\,
	datad => \G0|Equal2~0_combout\,
	combout => \G0|Equal3~1_combout\);

-- Location: LCCOMB_X21_Y9_N16
\G0|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal3~0_combout\ = (!\Gsr_12|PB_SIN_REBOTE~q\ & (\Gsr_11|PB_SIN_REBOTE~q\ & \G0|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gsr_12|PB_SIN_REBOTE~q\,
	datac => \Gsr_11|PB_SIN_REBOTE~q\,
	datad => \G0|Equal3~1_combout\,
	combout => \G0|Equal3~0_combout\);

-- Location: LCCOMB_X20_Y9_N22
\boton~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~8_combout\ = (\Gsr_16|PB_SIN_REBOTE~q\) # ((\Gsr_14|PB_SIN_REBOTE~q\) # ((\Gsr_10|PB_SIN_REBOTE~q\) # (\Gsr_8|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|PB_SIN_REBOTE~q\,
	datab => \Gsr_14|PB_SIN_REBOTE~q\,
	datac => \Gsr_10|PB_SIN_REBOTE~q\,
	datad => \Gsr_8|PB_SIN_REBOTE~q\,
	combout => \boton~8_combout\);

-- Location: LCCOMB_X20_Y9_N28
\boton~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~7_combout\ = (\Gsr_16|PB_SIN_REBOTE~q\ & ((\Gsr_14|PB_SIN_REBOTE~q\) # ((\Gsr_10|PB_SIN_REBOTE~q\) # (\Gsr_8|PB_SIN_REBOTE~q\)))) # (!\Gsr_16|PB_SIN_REBOTE~q\ & ((\Gsr_14|PB_SIN_REBOTE~q\ & ((\Gsr_10|PB_SIN_REBOTE~q\) # (\Gsr_8|PB_SIN_REBOTE~q\))) 
-- # (!\Gsr_14|PB_SIN_REBOTE~q\ & (\Gsr_10|PB_SIN_REBOTE~q\ $ (!\Gsr_8|PB_SIN_REBOTE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|PB_SIN_REBOTE~q\,
	datab => \Gsr_14|PB_SIN_REBOTE~q\,
	datac => \Gsr_10|PB_SIN_REBOTE~q\,
	datad => \Gsr_8|PB_SIN_REBOTE~q\,
	combout => \boton~7_combout\);

-- Location: LCCOMB_X20_Y9_N20
\boton~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~6_combout\ = (\Gsr_12|PB_SIN_REBOTE~q\ & (\boton~8_combout\)) # (!\Gsr_12|PB_SIN_REBOTE~q\ & ((\boton~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gsr_12|PB_SIN_REBOTE~q\,
	datac => \boton~8_combout\,
	datad => \boton~7_combout\,
	combout => \boton~6_combout\);

-- Location: LCCOMB_X20_Y9_N14
\boton~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~3_combout\ = (\Gsr_11|PB_SIN_REBOTE~q\) # ((\Gsr_9|PB_SIN_REBOTE~q\) # (\boton~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_11|PB_SIN_REBOTE~q\,
	datac => \Gsr_9|PB_SIN_REBOTE~q\,
	datad => \boton~6_combout\,
	combout => \boton~3_combout\);

-- Location: LCCOMB_X24_Y9_N0
\boton~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \boton~16_combout\ = (!\Gsr_13|PB_SIN_REBOTE~q\ & (!\Gsr_15|PB_SIN_REBOTE~q\ & (!\Gsr_7|PB_SIN_REBOTE~q\ & !\boton~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_13|PB_SIN_REBOTE~q\,
	datab => \Gsr_15|PB_SIN_REBOTE~q\,
	datac => \Gsr_7|PB_SIN_REBOTE~q\,
	datad => \boton~3_combout\,
	combout => \boton~16_combout\);

-- Location: LCCOMB_X24_Y9_N20
boton : cycloneive_lcell_comb
-- Equation(s):
-- \boton~combout\ = ((\boton~15_combout\ & (!\G0|Equal3~0_combout\ & !\boton~16_combout\))) # (!\uf~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~15_combout\,
	datab => \uf~6_combout\,
	datac => \G0|Equal3~0_combout\,
	datad => \boton~16_combout\,
	combout => \boton~combout\);

-- Location: IOIBUF_X18_Y34_N1
\HISTORIAL_LLAMADAS~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HISTORIAL_LLAMADAS,
	o => \HISTORIAL_LLAMADAS~input_o\);

-- Location: LCCOMB_X26_Y13_N12
\Gsr_5|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_5|SHIFT_PB[3]~0_combout\ = !\HISTORIAL_LLAMADAS~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \HISTORIAL_LLAMADAS~input_o\,
	combout => \Gsr_5|SHIFT_PB[3]~0_combout\);

-- Location: FF_X26_Y13_N13
\Gsr_5|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_5|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_5|SHIFT_PB\(3));

-- Location: LCCOMB_X26_Y13_N6
\Gsr_5|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_5|SHIFT_PB[2]~feeder_combout\ = \Gsr_5|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_5|SHIFT_PB\(3),
	combout => \Gsr_5|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X26_Y13_N7
\Gsr_5|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_5|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_5|SHIFT_PB\(2));

-- Location: LCCOMB_X26_Y13_N28
\Gsr_5|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_5|SHIFT_PB[1]~feeder_combout\ = \Gsr_5|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_5|SHIFT_PB\(2),
	combout => \Gsr_5|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X26_Y13_N29
\Gsr_5|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_5|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_5|SHIFT_PB\(1));

-- Location: LCCOMB_X26_Y13_N30
\Gsr_5|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_5|SHIFT_PB[0]~feeder_combout\ = \Gsr_5|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_5|SHIFT_PB\(1),
	combout => \Gsr_5|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X26_Y13_N31
\Gsr_5|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_5|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_5|SHIFT_PB\(0));

-- Location: LCCOMB_X26_Y13_N8
\Gsr_5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_5|Equal0~0_combout\ = (\Gsr_5|SHIFT_PB\(3)) # ((\Gsr_5|SHIFT_PB\(1)) # ((\Gsr_5|SHIFT_PB\(0)) # (\Gsr_5|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_5|SHIFT_PB\(3),
	datab => \Gsr_5|SHIFT_PB\(1),
	datac => \Gsr_5|SHIFT_PB\(0),
	datad => \Gsr_5|SHIFT_PB\(2),
	combout => \Gsr_5|Equal0~0_combout\);

-- Location: FF_X26_Y13_N9
\Gsr_5|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_5|PB_SIN_REBOTE~q\);

-- Location: IOIBUF_X16_Y34_N1
\FINALIZAR_LLAMADA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FINALIZAR_LLAMADA,
	o => \FINALIZAR_LLAMADA~input_o\);

-- Location: LCCOMB_X16_Y11_N28
\Gsr_4|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_4|SHIFT_PB[3]~0_combout\ = !\FINALIZAR_LLAMADA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \FINALIZAR_LLAMADA~input_o\,
	combout => \Gsr_4|SHIFT_PB[3]~0_combout\);

-- Location: FF_X16_Y11_N29
\Gsr_4|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_4|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_4|SHIFT_PB\(3));

-- Location: LCCOMB_X16_Y11_N6
\Gsr_4|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_4|SHIFT_PB[2]~feeder_combout\ = \Gsr_4|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_4|SHIFT_PB\(3),
	combout => \Gsr_4|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X16_Y11_N7
\Gsr_4|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_4|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_4|SHIFT_PB\(2));

-- Location: LCCOMB_X16_Y11_N12
\Gsr_4|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_4|SHIFT_PB[1]~feeder_combout\ = \Gsr_4|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_4|SHIFT_PB\(2),
	combout => \Gsr_4|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X16_Y11_N13
\Gsr_4|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_4|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_4|SHIFT_PB\(1));

-- Location: LCCOMB_X16_Y11_N30
\Gsr_4|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_4|SHIFT_PB[0]~feeder_combout\ = \Gsr_4|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_4|SHIFT_PB\(1),
	combout => \Gsr_4|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X16_Y11_N31
\Gsr_4|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_4|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_4|SHIFT_PB\(0));

-- Location: LCCOMB_X16_Y11_N8
\Gsr_4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_4|Equal0~0_combout\ = (\Gsr_4|SHIFT_PB\(1)) # ((\Gsr_4|SHIFT_PB\(3)) # ((\Gsr_4|SHIFT_PB\(0)) # (\Gsr_4|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_4|SHIFT_PB\(1),
	datab => \Gsr_4|SHIFT_PB\(3),
	datac => \Gsr_4|SHIFT_PB\(0),
	datad => \Gsr_4|SHIFT_PB\(2),
	combout => \Gsr_4|Equal0~0_combout\);

-- Location: FF_X16_Y11_N9
\Gsr_4|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_4|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X24_Y8_N30
\MSS|we_u8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u8~0_combout\ = (!\u4~input_o\ & (!\u3~input_o\ & (!\u2~input_o\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4~input_o\,
	datab => \u3~input_o\,
	datac => \u2~input_o\,
	datad => \u1~input_o\,
	combout => \MSS|we_u8~0_combout\);

-- Location: LCCOMB_X25_Y10_N30
\MSS|we_u6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u6~0_combout\ = (!\u5~input_o\ & \MSS|we_u8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	combout => \MSS|we_u6~0_combout\);

-- Location: IOIBUF_X25_Y34_N15
\start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X25_Y13_N20
\Gsr_2|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_2|SHIFT_PB[3]~0_combout\ = !\start~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \start~input_o\,
	combout => \Gsr_2|SHIFT_PB[3]~0_combout\);

-- Location: FF_X25_Y13_N21
\Gsr_2|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_2|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_2|SHIFT_PB\(3));

-- Location: LCCOMB_X25_Y13_N26
\Gsr_2|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_2|SHIFT_PB[2]~feeder_combout\ = \Gsr_2|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_2|SHIFT_PB\(3),
	combout => \Gsr_2|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X25_Y13_N27
\Gsr_2|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_2|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_2|SHIFT_PB\(2));

-- Location: LCCOMB_X25_Y13_N28
\Gsr_2|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_2|SHIFT_PB[1]~feeder_combout\ = \Gsr_2|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_2|SHIFT_PB\(2),
	combout => \Gsr_2|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X25_Y13_N29
\Gsr_2|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_2|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_2|SHIFT_PB\(1));

-- Location: LCCOMB_X25_Y13_N30
\Gsr_2|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_2|SHIFT_PB[0]~feeder_combout\ = \Gsr_2|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_2|SHIFT_PB\(1),
	combout => \Gsr_2|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X25_Y13_N31
\Gsr_2|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_2|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_2|SHIFT_PB\(0));

-- Location: LCCOMB_X25_Y13_N12
\Gsr_2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_2|Equal0~0_combout\ = (\Gsr_2|SHIFT_PB\(0)) # ((\Gsr_2|SHIFT_PB\(1)) # ((\Gsr_2|SHIFT_PB\(2)) # (\Gsr_2|SHIFT_PB\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_2|SHIFT_PB\(0),
	datab => \Gsr_2|SHIFT_PB\(1),
	datac => \Gsr_2|SHIFT_PB\(2),
	datad => \Gsr_2|SHIFT_PB\(3),
	combout => \Gsr_2|Equal0~0_combout\);

-- Location: FF_X25_Y13_N13
\Gsr_2|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_2|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_2|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X27_Y9_N22
\MSS|y~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~39_combout\ = (\Gsr_2|PB_SIN_REBOTE~q\ & ((\MSS|y.Tc~q\) # (\MSS|y.Td~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datab => \Gsr_2|PB_SIN_REBOTE~q\,
	datad => \MSS|y.Td~q\,
	combout => \MSS|y~39_combout\);

-- Location: IOIBUF_X1_Y34_N8
\resetn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_resetn,
	o => \resetn~input_o\);

-- Location: LCCOMB_X26_Y9_N2
\Gsr_1|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_1|SHIFT_PB[3]~0_combout\ = !\resetn~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \resetn~input_o\,
	combout => \Gsr_1|SHIFT_PB[3]~0_combout\);

-- Location: FF_X26_Y9_N3
\Gsr_1|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_1|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_1|SHIFT_PB\(3));

-- Location: LCCOMB_X26_Y9_N14
\Gsr_1|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_1|SHIFT_PB[2]~feeder_combout\ = \Gsr_1|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_1|SHIFT_PB\(3),
	combout => \Gsr_1|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X26_Y9_N15
\Gsr_1|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_1|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_1|SHIFT_PB\(2));

-- Location: FF_X26_Y9_N23
\Gsr_1|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \Gsr_1|SHIFT_PB\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_1|SHIFT_PB\(1));

-- Location: FF_X26_Y9_N11
\Gsr_1|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	asdata => \Gsr_1|SHIFT_PB\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_1|SHIFT_PB\(0));

-- Location: LCCOMB_X26_Y9_N30
\Gsr_1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_1|Equal0~0_combout\ = (\Gsr_1|SHIFT_PB\(1)) # ((\Gsr_1|SHIFT_PB\(3)) # ((\Gsr_1|SHIFT_PB\(2)) # (\Gsr_1|SHIFT_PB\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_1|SHIFT_PB\(1),
	datab => \Gsr_1|SHIFT_PB\(3),
	datac => \Gsr_1|SHIFT_PB\(2),
	datad => \Gsr_1|SHIFT_PB\(0),
	combout => \Gsr_1|Equal0~0_combout\);

-- Location: FF_X26_Y9_N31
\Gsr_1|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_1|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_1|PB_SIN_REBOTE~q\);

-- Location: FF_X27_Y9_N13
\MSS|y.Td\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MSS|y~39_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Td~q\);

-- Location: LCCOMB_X27_Y9_N12
\MSS|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector0~0_combout\ = (\Gsr_2|PB_SIN_REBOTE~q\) # ((!\MSS|y.Td~q\ & \MSS|y.Ta~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gsr_2|PB_SIN_REBOTE~q\,
	datac => \MSS|y.Td~q\,
	datad => \MSS|y.Ta~q\,
	combout => \MSS|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y9_N8
\MSS|y.Ta~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y.Ta~feeder_combout\ = \MSS|Selector0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MSS|Selector0~0_combout\,
	combout => \MSS|y.Ta~feeder_combout\);

-- Location: FF_X27_Y9_N9
\MSS|y.Ta\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|y.Ta~feeder_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Ta~q\);

-- Location: LCCOMB_X26_Y9_N6
\MSS|y~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~34_combout\ = (\Gsr_2|PB_SIN_REBOTE~q\ & ((\MSS|y.Tb~q\) # (!\MSS|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.Ta~q\,
	datac => \MSS|y.Tb~q\,
	datad => \Gsr_2|PB_SIN_REBOTE~q\,
	combout => \MSS|y~34_combout\);

-- Location: FF_X26_Y9_N7
\MSS|y.Tb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~34_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tb~q\);

-- Location: LCCOMB_X25_Y9_N28
\MSS|WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr12~0_combout\ = (\MSS|y.Ta~q\ & (!\MSS|y.Tc~q\ & !\MSS|y.Tb~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Ta~q\,
	datab => \MSS|y.Tc~q\,
	datad => \MSS|y.Tb~q\,
	combout => \MSS|WideOr12~0_combout\);

-- Location: LCCOMB_X25_Y10_N22
\MSS|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector54~0_combout\ = ((\MSS|y.Tj~q\ & (\u6~input_o\ & \MSS|we_u6~0_combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tj~q\,
	datab => \u6~input_o\,
	datac => \MSS|we_u6~0_combout\,
	datad => \MSS|WideOr12~0_combout\,
	combout => \MSS|Selector54~0_combout\);

-- Location: LCCOMB_X21_Y8_N24
\MSS|we_u6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u6~combout\ = (\MSS|Selector54~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector54~0_combout\ & (\MSS|we_u6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|we_u6~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector54~0_combout\,
	combout => \MSS|we_u6~combout\);

-- Location: LCCOMB_X27_Y5_N30
\G12_6|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_6|temp[0]~feeder_combout\ = \boton~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \boton~16_combout\,
	combout => \G12_6|temp[0]~feeder_combout\);

-- Location: FF_X27_Y8_N9
\MSS|y.Ts\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Tl~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Ts~q\);

-- Location: FF_X27_Y8_N15
\MSS|y.Tu\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Ts~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tu~q\);

-- Location: FF_X27_Y8_N7
\MSS|y.Tw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Tu~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tw~q\);

-- Location: LCCOMB_X21_Y9_N22
\G0|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal8~0_combout\ = (!\Gsr_8|PB_SIN_REBOTE~q\ & (!\Gsr_7|PB_SIN_REBOTE~q\ & (!\Gsr_9|PB_SIN_REBOTE~q\ & !\Gsr_10|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_8|PB_SIN_REBOTE~q\,
	datab => \Gsr_7|PB_SIN_REBOTE~q\,
	datac => \Gsr_9|PB_SIN_REBOTE~q\,
	datad => \Gsr_10|PB_SIN_REBOTE~q\,
	combout => \G0|Equal8~0_combout\);

-- Location: LCCOMB_X21_Y9_N4
\G0|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal8~1_combout\ = (\Gsr_16|PB_SIN_REBOTE~q\ & (\G0|Equal2~1_combout\ & (\G0|Equal8~0_combout\ & \G0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|PB_SIN_REBOTE~q\,
	datab => \G0|Equal2~1_combout\,
	datac => \G0|Equal8~0_combout\,
	datad => \G0|Equal0~0_combout\,
	combout => \G0|Equal8~1_combout\);

-- Location: LCCOMB_X21_Y9_N8
\G0|Salida[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Salida\(3) = (\G0|Equal8~1_combout\) # ((\Gsr_15|PB_SIN_REBOTE~q\ & (!\Gsr_13|PB_SIN_REBOTE~q\ & \G0|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_15|PB_SIN_REBOTE~q\,
	datab => \Gsr_13|PB_SIN_REBOTE~q\,
	datac => \G0|Equal8~1_combout\,
	datad => \G0|Equal5~1_combout\,
	combout => \G0|Salida\(3));

-- Location: LCCOMB_X28_Y7_N4
\G1_1|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_1|cont[0]~3_combout\ = !\G1_1|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_1|cont\(0),
	combout => \G1_1|cont[0]~3_combout\);

-- Location: LCCOMB_X28_Y7_N10
\MSS|cuenta_a_0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|cuenta_a_0~combout\ = (\MSS|WideOr14~4_combout\ & ((!\MSS|reset_reg~0_combout\))) # (!\MSS|WideOr14~4_combout\ & (\MSS|cuenta_a_0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|cuenta_a_0~combout\,
	datac => \MSS|WideOr14~4_combout\,
	datad => \MSS|reset_reg~0_combout\,
	combout => \MSS|cuenta_a_0~combout\);

-- Location: FF_X28_Y7_N5
\G1_1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incrementa~combout\,
	d => \G1_1|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_cuenta_a_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_1|cont\(0));

-- Location: LCCOMB_X28_Y7_N28
\G1_1|cont[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_1|cont[1]~2_combout\ = \G1_1|cont\(1) $ (\G1_1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_1|cont\(1),
	datad => \G1_1|cont\(0),
	combout => \G1_1|cont[1]~2_combout\);

-- Location: FF_X28_Y7_N29
\G1_1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incrementa~combout\,
	d => \G1_1|cont[1]~2_combout\,
	clrn => \MSS|ALT_INV_cuenta_a_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_1|cont\(1));

-- Location: LCCOMB_X28_Y7_N20
\G1_1|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_1|cont[2]~1_combout\ = \G1_1|cont\(2) $ (((\G1_1|cont\(1) & \G1_1|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_1|cont\(1),
	datac => \G1_1|cont\(2),
	datad => \G1_1|cont\(0),
	combout => \G1_1|cont[2]~1_combout\);

-- Location: FF_X28_Y7_N21
\G1_1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incrementa~combout\,
	d => \G1_1|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_cuenta_a_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_1|cont\(2));

-- Location: LCCOMB_X28_Y7_N24
\MSS|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector3~0_combout\ = (!\G1_1|cont\(1) & (!\G1_1|cont\(3) & (\G1_1|cont\(0) & \G1_1|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(1),
	datab => \G1_1|cont\(3),
	datac => \G1_1|cont\(0),
	datad => \G1_1|cont\(2),
	combout => \MSS|Selector3~0_combout\);

-- Location: LCCOMB_X26_Y9_N4
\MSS|y~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~40_combout\ = (\MSS|y.Tg~q\ & !\MSS|Selector3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSS|y.Tg~q\,
	datad => \MSS|Selector3~0_combout\,
	combout => \MSS|y~40_combout\);

-- Location: FF_X26_Y9_N5
\MSS|y.Th\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~40_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Th~q\);

-- Location: LCCOMB_X26_Y9_N24
\MSS|WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr13~0_combout\ = (\MSS|y.Tc~q\) # ((\MSS|y.Th~q\) # ((\MSS|y.Tb~q\) # (!\MSS|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datab => \MSS|y.Th~q\,
	datac => \MSS|y.Ta~q\,
	datad => \MSS|y.Tb~q\,
	combout => \MSS|WideOr13~0_combout\);

-- Location: LCCOMB_X26_Y9_N16
\MSS|incrementa\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incrementa~combout\ = (\MSS|WideOr13~0_combout\ & ((\MSS|y.Th~q\))) # (!\MSS|WideOr13~0_combout\ & (\MSS|incrementa~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|incrementa~combout\,
	datac => \MSS|y.Th~q\,
	datad => \MSS|WideOr13~0_combout\,
	combout => \MSS|incrementa~combout\);

-- Location: LCCOMB_X28_Y7_N14
\G1_1|cont[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_1|cont[3]~0_combout\ = \G1_1|cont\(3) $ (((\G1_1|cont\(0) & (\G1_1|cont\(2) & \G1_1|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(0),
	datab => \G1_1|cont\(2),
	datac => \G1_1|cont\(3),
	datad => \G1_1|cont\(1),
	combout => \G1_1|cont[3]~0_combout\);

-- Location: FF_X28_Y7_N15
\G1_1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incrementa~combout\,
	d => \G1_1|cont[3]~0_combout\,
	clrn => \MSS|ALT_INV_cuenta_a_0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_1|cont\(3));

-- Location: LCCOMB_X28_Y7_N0
\G3_cuentn5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_cuentn5|Equal0~0_combout\ = (!\G1_1|cont\(3) & (\G1_1|cont\(2) & (!\G1_1|cont\(0) & !\G1_1|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(3),
	datab => \G1_1|cont\(2),
	datac => \G1_1|cont\(0),
	datad => \G1_1|cont\(1),
	combout => \G3_cuentn5|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y7_N6
\MSS|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector12~0_combout\ = (!\MSS|y.Te~q\ & \G3_cuentn5|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Te~q\,
	datab => \G3_cuentn5|Equal0~0_combout\,
	combout => \MSS|Selector12~0_combout\);

-- Location: LCCOMB_X28_Y7_N22
\MSS|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector28~0_combout\ = (\MSS|y.Tf~q\ & (!\G1_1|cont\(3) & ((!\G1_1|cont\(1)) # (!\G1_1|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tf~q\,
	datab => \G1_1|cont\(2),
	datac => \G1_1|cont\(3),
	datad => \G1_1|cont\(1),
	combout => \MSS|Selector28~0_combout\);

-- Location: LCCOMB_X25_Y6_N14
\MSS|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector28~1_combout\ = (\MSS|y.Te~q\) # (\MSS|Selector28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSS|y.Te~q\,
	datad => \MSS|Selector28~0_combout\,
	combout => \MSS|Selector28~1_combout\);

-- Location: CLKCTRL_G6
\MSS|Selector28~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|Selector28~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|Selector28~1clkctrl_outclk\);

-- Location: LCCOMB_X28_Y7_N18
\MSS|enable_reg[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(4) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|Selector12~0_combout\))) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|enable_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|enable_reg\(4),
	datac => \MSS|Selector12~0_combout\,
	datad => \MSS|Selector28~1clkctrl_outclk\,
	combout => \MSS|enable_reg\(4));

-- Location: FF_X27_Y6_N17
\G12_5|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|Salida\(3),
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_5|temp\(3));

-- Location: LCCOMB_X28_Y7_N30
\G3_cuentn1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_cuentn1|Equal0~0_combout\ = (!\G1_1|cont\(3) & !\G1_1|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_1|cont\(3),
	datad => \G1_1|cont\(2),
	combout => \G3_cuentn1|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y6_N0
\MSS|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector13~0_combout\ = (\G1_1|cont\(0) & (\G1_1|cont\(1) & (\G3_cuentn1|Equal0~0_combout\ & !\MSS|y.Te~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(0),
	datab => \G1_1|cont\(1),
	datac => \G3_cuentn1|Equal0~0_combout\,
	datad => \MSS|y.Te~q\,
	combout => \MSS|Selector13~0_combout\);

-- Location: LCCOMB_X26_Y6_N28
\MSS|enable_reg[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(3) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|Selector13~0_combout\)) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|enable_reg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector13~0_combout\,
	datac => \MSS|Selector28~1clkctrl_outclk\,
	datad => \MSS|enable_reg\(3),
	combout => \MSS|enable_reg\(3));

-- Location: FF_X26_Y6_N17
\G12_4|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|Salida\(3),
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_4|temp\(3));

-- Location: LCCOMB_X25_Y6_N2
\G12_3|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_3|temp[0]~feeder_combout\ = \boton~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~16_combout\,
	combout => \G12_3|temp[0]~feeder_combout\);

-- Location: LCCOMB_X25_Y6_N16
\MSS|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector14~0_combout\ = (\G1_1|cont\(1) & (!\MSS|y.Te~q\ & (!\G1_1|cont\(0) & \G3_cuentn1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(1),
	datab => \MSS|y.Te~q\,
	datac => \G1_1|cont\(0),
	datad => \G3_cuentn1|Equal0~0_combout\,
	combout => \MSS|Selector14~0_combout\);

-- Location: LCCOMB_X25_Y6_N8
\MSS|enable_reg[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(2) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|Selector14~0_combout\)) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|enable_reg\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector14~0_combout\,
	datab => \MSS|enable_reg\(2),
	datac => \MSS|Selector28~1clkctrl_outclk\,
	combout => \MSS|enable_reg\(2));

-- Location: FF_X25_Y6_N3
\G12_3|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_3|temp[0]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_3|temp\(0));

-- Location: LCCOMB_X26_Y6_N16
\G3_nu5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~4_combout\ = (\G12_5|temp\(3) & (\G12_4|temp\(3) & !\G12_3|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_5|temp\(3),
	datac => \G12_4|temp\(3),
	datad => \G12_3|temp\(0),
	combout => \G3_nu5|Equal0~4_combout\);

-- Location: LCCOMB_X20_Y9_N24
\G0|WideOr1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|WideOr1~7_combout\ = (\Gsr_10|PB_SIN_REBOTE~q\ & ((\Gsr_14|PB_SIN_REBOTE~q\) # ((\Gsr_9|PB_SIN_REBOTE~q\) # (\Gsr_13|PB_SIN_REBOTE~q\)))) # (!\Gsr_10|PB_SIN_REBOTE~q\ & ((\Gsr_14|PB_SIN_REBOTE~q\ & ((\Gsr_9|PB_SIN_REBOTE~q\) # 
-- (\Gsr_13|PB_SIN_REBOTE~q\))) # (!\Gsr_14|PB_SIN_REBOTE~q\ & (\Gsr_9|PB_SIN_REBOTE~q\ $ (!\Gsr_13|PB_SIN_REBOTE~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_10|PB_SIN_REBOTE~q\,
	datab => \Gsr_14|PB_SIN_REBOTE~q\,
	datac => \Gsr_9|PB_SIN_REBOTE~q\,
	datad => \Gsr_13|PB_SIN_REBOTE~q\,
	combout => \G0|WideOr1~7_combout\);

-- Location: LCCOMB_X20_Y9_N6
\G0|WideOr1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|WideOr1~3_combout\ = (\Gsr_16|PB_SIN_REBOTE~q\) # ((\Gsr_12|PB_SIN_REBOTE~q\) # ((\Gsr_11|PB_SIN_REBOTE~q\) # (\G0|WideOr1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_16|PB_SIN_REBOTE~q\,
	datab => \Gsr_12|PB_SIN_REBOTE~q\,
	datac => \Gsr_11|PB_SIN_REBOTE~q\,
	datad => \G0|WideOr1~7_combout\,
	combout => \G0|WideOr1~3_combout\);

-- Location: LCCOMB_X21_Y9_N2
\G0|WideOr1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|WideOr1~16_combout\ = (!\Gsr_7|PB_SIN_REBOTE~q\ & (!\Gsr_15|PB_SIN_REBOTE~q\ & (!\G0|WideOr1~3_combout\ & !\Gsr_8|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_7|PB_SIN_REBOTE~q\,
	datab => \Gsr_15|PB_SIN_REBOTE~q\,
	datac => \G0|WideOr1~3_combout\,
	datad => \Gsr_8|PB_SIN_REBOTE~q\,
	combout => \G0|WideOr1~16_combout\);

-- Location: LCCOMB_X27_Y6_N12
\G12_5|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_5|temp[1]~feeder_combout\ = \G0|WideOr1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G0|WideOr1~16_combout\,
	combout => \G12_5|temp[1]~feeder_combout\);

-- Location: FF_X27_Y6_N13
\G12_5|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_5|temp[1]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_5|temp\(1));

-- Location: LCCOMB_X21_Y9_N12
\G0|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|Equal5~0_combout\ = (!\Gsr_8|PB_SIN_REBOTE~q\ & (!\Gsr_16|PB_SIN_REBOTE~q\ & \G0|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_8|PB_SIN_REBOTE~q\,
	datac => \Gsr_16|PB_SIN_REBOTE~q\,
	datad => \G0|Equal0~1_combout\,
	combout => \G0|Equal5~0_combout\);

-- Location: LCCOMB_X21_Y9_N28
\G0|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|WideOr0~0_combout\ = (\Gsr_15|PB_SIN_REBOTE~q\) # ((\Gsr_14|PB_SIN_REBOTE~q\ $ (!\Gsr_13|PB_SIN_REBOTE~q\)) # (!\G0|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_14|PB_SIN_REBOTE~q\,
	datab => \Gsr_13|PB_SIN_REBOTE~q\,
	datac => \Gsr_15|PB_SIN_REBOTE~q\,
	datad => \G0|Equal5~0_combout\,
	combout => \G0|WideOr0~0_combout\);

-- Location: LCCOMB_X21_Y9_N14
\G0|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G0|WideOr0~1_combout\ = ((\G0|Equal3~1_combout\ & (\Gsr_11|PB_SIN_REBOTE~q\ $ (\Gsr_12|PB_SIN_REBOTE~q\)))) # (!\G0|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G0|Equal3~1_combout\,
	datab => \Gsr_11|PB_SIN_REBOTE~q\,
	datac => \Gsr_12|PB_SIN_REBOTE~q\,
	datad => \G0|WideOr0~0_combout\,
	combout => \G0|WideOr0~1_combout\);

-- Location: FF_X26_Y6_N21
\G12_4|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr0~1_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_4|temp\(2));

-- Location: FF_X26_Y6_N27
\G12_4|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \boton~16_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_4|temp\(0));

-- Location: LCCOMB_X27_Y5_N10
\G12_6|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_6|temp[1]~feeder_combout\ = \G0|WideOr1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G0|WideOr1~16_combout\,
	combout => \G12_6|temp[1]~feeder_combout\);

-- Location: LCCOMB_X28_Y7_N8
\MSS|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector11~0_combout\ = (\G1_1|cont\(3)) # ((\G1_1|cont\(2) & \G1_1|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_1|cont\(2),
	datac => \G1_1|cont\(3),
	datad => \G1_1|cont\(1),
	combout => \MSS|Selector11~0_combout\);

-- Location: LCCOMB_X28_Y7_N16
\MSS|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector11~1_combout\ = (!\MSS|y.Te~q\ & ((\MSS|Selector11~0_combout\) # ((\G1_1|cont\(2) & \G1_1|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(2),
	datab => \G1_1|cont\(0),
	datac => \MSS|Selector11~0_combout\,
	datad => \MSS|y.Te~q\,
	combout => \MSS|Selector11~1_combout\);

-- Location: LCCOMB_X27_Y5_N20
\MSS|enable_reg[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(5) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|Selector11~1_combout\)) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|enable_reg\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector11~1_combout\,
	datac => \MSS|enable_reg\(5),
	datad => \MSS|Selector28~1clkctrl_outclk\,
	combout => \MSS|enable_reg\(5));

-- Location: FF_X27_Y5_N11
\G12_6|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_6|temp[1]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_6|temp\(1));

-- Location: LCCOMB_X27_Y6_N18
\G3_nu5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~2_combout\ = (!\G12_5|temp\(1) & (!\G12_4|temp\(2) & (\G12_4|temp\(0) & \G12_6|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_5|temp\(1),
	datab => \G12_4|temp\(2),
	datac => \G12_4|temp\(0),
	datad => \G12_6|temp\(1),
	combout => \G3_nu5|Equal0~2_combout\);

-- Location: FF_X27_Y5_N15
\G12_6|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|Salida\(3),
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_6|temp\(3));

-- Location: LCCOMB_X27_Y6_N0
\G12_5|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_5|temp[0]~feeder_combout\ = \boton~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \boton~16_combout\,
	combout => \G12_5|temp[0]~feeder_combout\);

-- Location: FF_X27_Y6_N1
\G12_5|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_5|temp[0]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_5|temp\(0));

-- Location: FF_X25_Y6_N31
\G12_3|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr0~1_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_3|temp\(2));

-- Location: FF_X27_Y5_N27
\G12_6|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr0~1_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_6|temp\(2));

-- Location: LCCOMB_X27_Y6_N24
\G3_nu5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~1_combout\ = (!\G12_6|temp\(3) & (!\G12_5|temp\(0) & (!\G12_3|temp\(2) & !\G12_6|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(3),
	datab => \G12_5|temp\(0),
	datac => \G12_3|temp\(2),
	datad => \G12_6|temp\(2),
	combout => \G3_nu5|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y5_N10
\G12_2|temp[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_2|temp[0]~feeder_combout\ = \boton~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \boton~16_combout\,
	combout => \G12_2|temp[0]~feeder_combout\);

-- Location: LCCOMB_X28_Y5_N30
\MSS|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector15~0_combout\ = (!\G1_1|cont\(1) & (\G1_1|cont\(0) & (\G3_cuentn1|Equal0~0_combout\ & !\MSS|y.Te~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_1|cont\(1),
	datab => \G1_1|cont\(0),
	datac => \G3_cuentn1|Equal0~0_combout\,
	datad => \MSS|y.Te~q\,
	combout => \MSS|Selector15~0_combout\);

-- Location: LCCOMB_X28_Y5_N28
\MSS|enable_reg[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(1) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|Selector15~0_combout\))) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|enable_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|enable_reg\(1),
	datac => \MSS|Selector15~0_combout\,
	datad => \MSS|Selector28~1clkctrl_outclk\,
	combout => \MSS|enable_reg\(1));

-- Location: FF_X28_Y5_N11
\G12_2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_2|temp[0]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_2|temp\(0));

-- Location: LCCOMB_X28_Y5_N8
\G12_2|temp[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_2|temp[2]~feeder_combout\ = \G0|WideOr0~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G0|WideOr0~1_combout\,
	combout => \G12_2|temp[2]~feeder_combout\);

-- Location: FF_X28_Y5_N9
\G12_2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_2|temp[2]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_2|temp\(2));

-- Location: LCCOMB_X28_Y5_N26
\G12_2|temp[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_2|temp[3]~feeder_combout\ = \G0|Salida\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G0|Salida\(3),
	combout => \G12_2|temp[3]~feeder_combout\);

-- Location: FF_X28_Y5_N27
\G12_2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_2|temp[3]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_2|temp\(3));

-- Location: LCCOMB_X28_Y5_N18
\G12_2|temp[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G12_2|temp[1]~feeder_combout\ = \G0|WideOr1~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G0|WideOr1~16_combout\,
	combout => \G12_2|temp[1]~feeder_combout\);

-- Location: FF_X28_Y5_N19
\G12_2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_2|temp[1]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_2|temp\(1));

-- Location: LCCOMB_X28_Y5_N0
\G3_nu8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~1_combout\ = (\G12_2|temp\(0) & (\G12_2|temp\(2) & (!\G12_2|temp\(3) & \G12_2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_2|temp\(0),
	datab => \G12_2|temp\(2),
	datac => \G12_2|temp\(3),
	datad => \G12_2|temp\(1),
	combout => \G3_nu8|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y7_N2
\MSS|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector20~0_combout\ = (\G3_cuentn1|Equal0~0_combout\ & (!\G1_1|cont\(0) & (!\G1_1|cont\(1) & !\MSS|y.Te~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_cuentn1|Equal0~0_combout\,
	datab => \G1_1|cont\(0),
	datac => \G1_1|cont\(1),
	datad => \MSS|y.Te~q\,
	combout => \MSS|Selector20~0_combout\);

-- Location: LCCOMB_X28_Y7_N26
\MSS|enable_reg[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|enable_reg\(0) = (GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & ((\MSS|Selector20~0_combout\))) # (!GLOBAL(\MSS|Selector28~1clkctrl_outclk\) & (\MSS|enable_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|enable_reg\(0),
	datac => \MSS|Selector20~0_combout\,
	datad => \MSS|Selector28~1clkctrl_outclk\,
	combout => \MSS|enable_reg\(0));

-- Location: FF_X29_Y6_N27
\G12_1|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|Salida\(3),
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_1|temp\(3));

-- Location: FF_X29_Y6_N17
\G12_1|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr1~16_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_1|temp\(1));

-- Location: FF_X29_Y6_N15
\G12_1|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \boton~16_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_1|temp\(0));

-- Location: FF_X29_Y6_N11
\G12_1|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr0~1_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_1|temp\(2));

-- Location: LCCOMB_X29_Y6_N22
\G3_nu8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~0_combout\ = (!\G12_1|temp\(3) & (\G12_1|temp\(1) & (!\G12_1|temp\(0) & \G12_1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_1|temp\(3),
	datab => \G12_1|temp\(1),
	datac => \G12_1|temp\(0),
	datad => \G12_1|temp\(2),
	combout => \G3_nu8|Equal0~0_combout\);

-- Location: FF_X25_Y6_N11
\G12_3|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|Salida\(3),
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_3|temp\(3));

-- Location: LCCOMB_X29_Y6_N20
\G3_nu8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~6_combout\ = (\G3_nu8|Equal0~1_combout\ & (\G3_nu8|Equal0~0_combout\ & !\G12_3|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3_nu8|Equal0~1_combout\,
	datac => \G3_nu8|Equal0~0_combout\,
	datad => \G12_3|temp\(3),
	combout => \G3_nu8|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y6_N4
\G3_nu5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~3_combout\ = (\G3_nu5|Equal0~2_combout\ & (\G3_nu5|Equal0~1_combout\ & \G3_nu8|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu5|Equal0~2_combout\,
	datac => \G3_nu5|Equal0~1_combout\,
	datad => \G3_nu8|Equal0~6_combout\,
	combout => \G3_nu5|Equal0~3_combout\);

-- Location: FF_X25_Y6_N7
\G12_3|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr1~16_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_3|temp\(1));

-- Location: FF_X28_Y6_N31
\G12_5|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr0~1_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_5|temp\(2));

-- Location: FF_X26_Y6_N11
\G12_4|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \G0|WideOr1~16_combout\,
	clrn => \MSS|reset_reg~combout\,
	sload => VCC,
	ena => \MSS|enable_reg\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_4|temp\(1));

-- Location: LCCOMB_X29_Y6_N24
\G3_nu5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~0_combout\ = (\G12_3|temp\(1) & (!\G12_5|temp\(2) & (!\G12_4|temp\(1) & \G12_6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(1),
	datab => \G12_5|temp\(2),
	datac => \G12_4|temp\(1),
	datad => \G12_6|temp\(0),
	combout => \G3_nu5|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y6_N12
\G3_nu5|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu5|Equal0~5_combout\ = (\G3_nu5|Equal0~4_combout\ & (\G3_nu5|Equal0~3_combout\ & \G3_nu5|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu5|Equal0~4_combout\,
	datac => \G3_nu5|Equal0~3_combout\,
	datad => \G3_nu5|Equal0~0_combout\,
	combout => \G3_nu5|Equal0~5_combout\);

-- Location: LCCOMB_X25_Y6_N24
\G3_nu4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu4|Equal0~0_combout\ = (!\G12_3|temp\(1) & (!\G12_4|temp\(3) & (\G12_3|temp\(0) & !\G12_6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(1),
	datab => \G12_4|temp\(3),
	datac => \G12_3|temp\(0),
	datad => \G12_6|temp\(0),
	combout => \G3_nu4|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y6_N24
\G3_nu4|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu4|Equal0~1_combout\ = (!\G12_5|temp\(3) & (\G12_5|temp\(2) & \G12_4|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_5|temp\(3),
	datac => \G12_5|temp\(2),
	datad => \G12_4|temp\(1),
	combout => \G3_nu4|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y6_N30
\G3_nu4|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu4|Equal0~2_combout\ = (\G3_nu4|Equal0~0_combout\ & (\G3_nu5|Equal0~3_combout\ & \G3_nu4|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3_nu4|Equal0~0_combout\,
	datac => \G3_nu5|Equal0~3_combout\,
	datad => \G3_nu4|Equal0~1_combout\,
	combout => \G3_nu4|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y6_N6
\G3_nu8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~4_combout\ = (!\G12_4|temp\(1) & (!\G12_3|temp\(1) & !\G12_4|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_4|temp\(1),
	datac => \G12_3|temp\(1),
	datad => \G12_4|temp\(0),
	combout => \G3_nu8|Equal0~4_combout\);

-- Location: LCCOMB_X25_Y6_N4
\G3_nu7|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~4_combout\ = (!\G12_5|temp\(2) & (\G12_3|temp\(0) & (\G3_nu8|Equal0~4_combout\ & \G12_5|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_5|temp\(2),
	datab => \G12_3|temp\(0),
	datac => \G3_nu8|Equal0~4_combout\,
	datad => \G12_5|temp\(1),
	combout => \G3_nu7|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y5_N24
\G3_nu7|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~5_combout\ = (!\G12_6|temp\(0) & !\G12_4|temp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G12_6|temp\(0),
	datad => \G12_4|temp\(3),
	combout => \G3_nu7|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y5_N4
\G3_nu7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~1_combout\ = (!\G12_3|temp\(2) & (!\G12_6|temp\(2) & (\G12_6|temp\(3) & \G12_4|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(2),
	datab => \G12_6|temp\(2),
	datac => \G12_6|temp\(3),
	datad => \G12_4|temp\(2),
	combout => \G3_nu7|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y6_N14
\G3_nu7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~2_combout\ = (\G3_nu7|Equal0~1_combout\ & !\G12_6|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G3_nu7|Equal0~1_combout\,
	datac => \G12_6|temp\(1),
	combout => \G3_nu7|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y6_N16
\G3_nu7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~0_combout\ = (!\G12_5|temp\(3) & \G12_5|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G12_5|temp\(3),
	datad => \G12_5|temp\(0),
	combout => \G3_nu7|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y6_N20
\G3_nu7|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~3_combout\ = (!\G12_3|temp\(3) & (\G3_nu8|Equal0~0_combout\ & (\G3_nu7|Equal0~0_combout\ & \G3_nu8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(3),
	datab => \G3_nu8|Equal0~0_combout\,
	datac => \G3_nu7|Equal0~0_combout\,
	datad => \G3_nu8|Equal0~1_combout\,
	combout => \G3_nu7|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y6_N22
\G3_nu7|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu7|Equal0~6_combout\ = (\G3_nu7|Equal0~4_combout\ & (\G3_nu7|Equal0~5_combout\ & (\G3_nu7|Equal0~2_combout\ & \G3_nu7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu7|Equal0~4_combout\,
	datab => \G3_nu7|Equal0~5_combout\,
	datac => \G3_nu7|Equal0~2_combout\,
	datad => \G3_nu7|Equal0~3_combout\,
	combout => \G3_nu7|Equal0~6_combout\);

-- Location: LCCOMB_X25_Y6_N10
\G3_nu8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~2_combout\ = (!\G12_3|temp\(0) & (!\G12_4|temp\(3) & (!\G12_3|temp\(3) & !\G12_5|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(0),
	datab => \G12_4|temp\(3),
	datac => \G12_3|temp\(3),
	datad => \G12_5|temp\(1),
	combout => \G3_nu8|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y6_N24
\G3_nu8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~3_combout\ = (\G3_nu8|Equal0~2_combout\ & (\G3_nu8|Equal0~0_combout\ & (\G3_nu7|Equal0~0_combout\ & \G3_nu8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu8|Equal0~2_combout\,
	datab => \G3_nu8|Equal0~0_combout\,
	datac => \G3_nu7|Equal0~0_combout\,
	datad => \G3_nu8|Equal0~1_combout\,
	combout => \G3_nu8|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y6_N8
\G3_nu1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu1|Equal0~0_combout\ = (\G12_4|temp\(0) & (\G3_nu8|Equal0~3_combout\ & (\G3_nu7|Equal0~2_combout\ & \G3_nu5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_4|temp\(0),
	datab => \G3_nu8|Equal0~3_combout\,
	datac => \G3_nu7|Equal0~2_combout\,
	datad => \G3_nu5|Equal0~0_combout\,
	combout => \G3_nu1|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y5_N0
\G3_nu2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu2|Equal0~0_combout\ = (\G12_6|temp\(0) & (\G12_6|temp\(1) & (!\G12_6|temp\(3) & \G12_3|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(0),
	datab => \G12_6|temp\(1),
	datac => \G12_6|temp\(3),
	datad => \G12_3|temp\(2),
	combout => \G3_nu2|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y6_N30
\G3_nu2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu2|Equal0~1_combout\ = (!\G12_4|temp\(2) & (\G12_4|temp\(3) & \G12_6|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_4|temp\(2),
	datab => \G12_4|temp\(3),
	datad => \G12_6|temp\(2),
	combout => \G3_nu2|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y6_N20
\G3_nu2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu2|Equal0~2_combout\ = (\G3_nu2|Equal0~0_combout\ & (\G3_nu7|Equal0~4_combout\ & (\G3_nu2|Equal0~1_combout\ & \G3_nu7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu2|Equal0~0_combout\,
	datab => \G3_nu7|Equal0~4_combout\,
	datac => \G3_nu2|Equal0~1_combout\,
	datad => \G3_nu7|Equal0~3_combout\,
	combout => \G3_nu2|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y6_N4
\num_existe~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_existe~1_combout\ = (\G3_nu7|Equal0~6_combout\) # ((\G3_nu1|Equal0~0_combout\) # (\G3_nu2|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu7|Equal0~6_combout\,
	datac => \G3_nu1|Equal0~0_combout\,
	datad => \G3_nu2|Equal0~2_combout\,
	combout => \num_existe~1_combout\);

-- Location: LCCOMB_X25_Y6_N0
\G3_nu8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~5_combout\ = (!\G12_4|temp\(3) & (!\G12_3|temp\(0) & !\G12_5|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_4|temp\(3),
	datac => \G12_3|temp\(0),
	datad => \G12_5|temp\(1),
	combout => \G3_nu8|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y5_N18
\G3_nu6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu6|Equal0~0_combout\ = (!\G12_3|temp\(2) & (!\G12_6|temp\(3) & (\G12_4|temp\(1) & \G12_3|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(2),
	datab => \G12_6|temp\(3),
	datac => \G12_4|temp\(1),
	datad => \G12_3|temp\(1),
	combout => \G3_nu6|Equal0~0_combout\);

-- Location: LCCOMB_X28_Y6_N0
\G3_nu6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu6|Equal0~1_combout\ = (\G12_6|temp\(2) & \G3_nu6|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G12_6|temp\(2),
	datad => \G3_nu6|Equal0~0_combout\,
	combout => \G3_nu6|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y6_N10
\G3_nu6|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu6|Equal0~2_combout\ = (\G3_nu8|Equal0~5_combout\ & (\G3_nu6|Equal0~1_combout\ & (\G12_5|temp\(2) & \G3_nu7|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu8|Equal0~5_combout\,
	datab => \G3_nu6|Equal0~1_combout\,
	datac => \G12_5|temp\(2),
	datad => \G3_nu7|Equal0~3_combout\,
	combout => \G3_nu6|Equal0~2_combout\);

-- Location: LCCOMB_X26_Y6_N18
\G3_nu3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu3|Equal0~0_combout\ = (!\G12_6|temp\(1) & (\G12_4|temp\(2) & (!\G12_4|temp\(0) & \G12_6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(1),
	datab => \G12_4|temp\(2),
	datac => \G12_4|temp\(0),
	datad => \G12_6|temp\(0),
	combout => \G3_nu3|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y6_N26
\G3_nu6|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu6|Equal0~3_combout\ = (\G12_6|temp\(1) & (!\G12_4|temp\(2) & (\G12_4|temp\(0) & !\G12_6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(1),
	datab => \G12_4|temp\(2),
	datac => \G12_4|temp\(0),
	datad => \G12_6|temp\(0),
	combout => \G3_nu6|Equal0~3_combout\);

-- Location: LCCOMB_X26_Y6_N20
\G3_nu8|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~7_combout\ = (!\G12_6|temp\(2) & (\G3_nu8|Equal0~4_combout\ & (\G12_4|temp\(2) & \G3_nu2|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(2),
	datab => \G3_nu8|Equal0~4_combout\,
	datac => \G12_4|temp\(2),
	datad => \G3_nu2|Equal0~0_combout\,
	combout => \G3_nu8|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y6_N12
\G3_nu8|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_nu8|Equal0~8_combout\ = (\G3_nu8|Equal0~5_combout\ & (\G3_nu7|Equal0~3_combout\ & (\G12_5|temp\(2) & \G3_nu8|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu8|Equal0~5_combout\,
	datab => \G3_nu7|Equal0~3_combout\,
	datac => \G12_5|temp\(2),
	datad => \G3_nu8|Equal0~7_combout\,
	combout => \G3_nu8|Equal0~8_combout\);

-- Location: LCCOMB_X28_Y6_N16
\num_existe~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \num_existe~0_combout\ = (\G3_nu8|Equal0~8_combout\) # ((\G3_nu6|Equal0~2_combout\ & ((\G3_nu3|Equal0~0_combout\) # (\G3_nu6|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu6|Equal0~2_combout\,
	datab => \G3_nu3|Equal0~0_combout\,
	datac => \G3_nu6|Equal0~3_combout\,
	datad => \G3_nu8|Equal0~8_combout\,
	combout => \num_existe~0_combout\);

-- Location: LCCOMB_X28_Y6_N26
num_existe : cycloneive_lcell_comb
-- Equation(s):
-- \num_existe~combout\ = (\G3_nu5|Equal0~5_combout\) # ((\G3_nu4|Equal0~2_combout\) # ((\num_existe~1_combout\) # (\num_existe~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu5|Equal0~5_combout\,
	datab => \G3_nu4|Equal0~2_combout\,
	datac => \num_existe~1_combout\,
	datad => \num_existe~0_combout\,
	combout => \num_existe~combout\);

-- Location: LCCOMB_X28_Y6_N30
\MSS|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector3~1_combout\ = (\MSS|y.Ti~q\ & ((!\num_existe~combout\) # (!\Gsr_3|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Ti~q\,
	datab => \Gsr_3|PB_SIN_REBOTE~q\,
	datad => \num_existe~combout\,
	combout => \MSS|Selector3~1_combout\);

-- Location: IOIBUF_X9_Y34_N8
\BORRAR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BORRAR,
	o => \BORRAR~input_o\);

-- Location: LCCOMB_X24_Y11_N12
\Gsr_6|SHIFT_PB[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_6|SHIFT_PB[3]~0_combout\ = !\BORRAR~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BORRAR~input_o\,
	combout => \Gsr_6|SHIFT_PB[3]~0_combout\);

-- Location: FF_X24_Y11_N13
\Gsr_6|SHIFT_PB[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_6|SHIFT_PB[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_6|SHIFT_PB\(3));

-- Location: LCCOMB_X24_Y11_N6
\Gsr_6|SHIFT_PB[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_6|SHIFT_PB[2]~feeder_combout\ = \Gsr_6|SHIFT_PB\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_6|SHIFT_PB\(3),
	combout => \Gsr_6|SHIFT_PB[2]~feeder_combout\);

-- Location: FF_X24_Y11_N7
\Gsr_6|SHIFT_PB[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_6|SHIFT_PB[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_6|SHIFT_PB\(2));

-- Location: LCCOMB_X24_Y11_N28
\Gsr_6|SHIFT_PB[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_6|SHIFT_PB[1]~feeder_combout\ = \Gsr_6|SHIFT_PB\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_6|SHIFT_PB\(2),
	combout => \Gsr_6|SHIFT_PB[1]~feeder_combout\);

-- Location: FF_X24_Y11_N29
\Gsr_6|SHIFT_PB[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_6|SHIFT_PB[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_6|SHIFT_PB\(1));

-- Location: LCCOMB_X24_Y11_N30
\Gsr_6|SHIFT_PB[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_6|SHIFT_PB[0]~feeder_combout\ = \Gsr_6|SHIFT_PB\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Gsr_6|SHIFT_PB\(1),
	combout => \Gsr_6|SHIFT_PB[0]~feeder_combout\);

-- Location: FF_X24_Y11_N31
\Gsr_6|SHIFT_PB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_6|SHIFT_PB[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_6|SHIFT_PB\(0));

-- Location: LCCOMB_X24_Y11_N4
\Gsr_6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gsr_6|Equal0~0_combout\ = (\Gsr_6|SHIFT_PB\(3)) # ((\Gsr_6|SHIFT_PB\(1)) # ((\Gsr_6|SHIFT_PB\(0)) # (\Gsr_6|SHIFT_PB\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_6|SHIFT_PB\(3),
	datab => \Gsr_6|SHIFT_PB\(1),
	datac => \Gsr_6|SHIFT_PB\(0),
	datad => \Gsr_6|SHIFT_PB\(2),
	combout => \Gsr_6|Equal0~0_combout\);

-- Location: FF_X24_Y11_N5
\Gsr_6|PB_SIN_REBOTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_100Hz~clkctrl_outclk\,
	d => \Gsr_6|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Gsr_6|PB_SIN_REBOTE~q\);

-- Location: LCCOMB_X27_Y9_N14
\MSS|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector5~2_combout\ = (\MSS|y.Tc~q\ & (!\Gsr_2|PB_SIN_REBOTE~q\ & \boton~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datac => \Gsr_2|PB_SIN_REBOTE~q\,
	datad => \boton~combout\,
	combout => \MSS|Selector5~2_combout\);

-- Location: LCCOMB_X28_Y6_N2
\MSS|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector6~0_combout\ = (\Gsr_6|PB_SIN_REBOTE~q\ & ((\MSS|Selector3~1_combout\) # ((\MSS|y.Tr~q\) # (\MSS|Selector5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector3~1_combout\,
	datab => \Gsr_6|PB_SIN_REBOTE~q\,
	datac => \MSS|y.Tr~q\,
	datad => \MSS|Selector5~2_combout\,
	combout => \MSS|Selector6~0_combout\);

-- Location: FF_X28_Y6_N3
\MSS|y.Tr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|Selector6~0_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tr~q\);

-- Location: LCCOMB_X27_Y8_N2
\MSS|y~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~41_combout\ = (\MSS|y.Tr~q\ & !\Gsr_6|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSS|y.Tr~q\,
	datad => \Gsr_6|PB_SIN_REBOTE~q\,
	combout => \MSS|y~41_combout\);

-- Location: FF_X27_Y8_N3
\MSS|y.Ty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~41_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Ty~q\);

-- Location: LCCOMB_X27_Y8_N4
\MSS|reset_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|reset_reg~0_combout\ = (!\MSS|y.Tw~q\ & !\MSS|y.Ty~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tw~q\,
	datad => \MSS|y.Ty~q\,
	combout => \MSS|reset_reg~0_combout\);

-- Location: LCCOMB_X27_Y9_N6
\MSS|WideOr14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr14~4_combout\ = (\MSS|y.Tc~q\) # ((\MSS|y.Tb~q\) # ((!\MSS|reset_reg~0_combout\) # (!\MSS|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datab => \MSS|y.Tb~q\,
	datac => \MSS|y.Ta~q\,
	datad => \MSS|reset_reg~0_combout\,
	combout => \MSS|WideOr14~4_combout\);

-- Location: LCCOMB_X28_Y6_N6
\MSS|reset_reg\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|reset_reg~combout\ = (\MSS|WideOr14~4_combout\ & ((\MSS|reset_reg~0_combout\))) # (!\MSS|WideOr14~4_combout\ & (\MSS|reset_reg~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|reset_reg~combout\,
	datac => \MSS|WideOr14~4_combout\,
	datad => \MSS|reset_reg~0_combout\,
	combout => \MSS|reset_reg~combout\);

-- Location: FF_X27_Y5_N31
\G12_6|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \G12_6|temp[0]~feeder_combout\,
	clrn => \MSS|reset_reg~combout\,
	ena => \MSS|enable_reg\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G12_6|temp\(0));

-- Location: LCCOMB_X24_Y9_N28
\MSS|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector5~0_combout\ = (!\Gsr_2|PB_SIN_REBOTE~q\ & (!\Gsr_6|PB_SIN_REBOTE~q\ & (\MSS|y.Tc~q\ & \boton~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_2|PB_SIN_REBOTE~q\,
	datab => \Gsr_6|PB_SIN_REBOTE~q\,
	datac => \MSS|y.Tc~q\,
	datad => \boton~combout\,
	combout => \MSS|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y8_N24
\MSS|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector5~1_combout\ = (\Gsr_4|PB_SIN_REBOTE~q\ & ((\MSS|y.Tk~q\) # ((\Fu~combout\ & \MSS|Selector5~0_combout\)))) # (!\Gsr_4|PB_SIN_REBOTE~q\ & (\Fu~combout\ & ((\MSS|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_4|PB_SIN_REBOTE~q\,
	datab => \Fu~combout\,
	datac => \MSS|y.Tk~q\,
	datad => \MSS|Selector5~0_combout\,
	combout => \MSS|Selector5~1_combout\);

-- Location: FF_X26_Y8_N25
\MSS|y.Tk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|Selector5~1_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tk~q\);

-- Location: LCCOMB_X28_Y8_N0
\MSS|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~1_combout\ = (!\MSS|y.Tw~q\ & !\MSS|y.Tu~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSS|y.Tw~q\,
	datad => \MSS|y.Tu~q\,
	combout => \MSS|Selector19~1_combout\);

-- Location: LCCOMB_X26_Y10_N20
\MSS|Selector23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~5_combout\ = (!\u5~input_o\ & (\u6~input_o\ & (\MSS|we_u8~0_combout\ & \MSS|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector23~5_combout\);

-- Location: LCCOMB_X28_Y8_N20
\MSS|y~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~38_combout\ = (\MSS|y.Tk~q\ & !\Gsr_4|PB_SIN_REBOTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.Tk~q\,
	datad => \Gsr_4|PB_SIN_REBOTE~q\,
	combout => \MSS|y~38_combout\);

-- Location: FF_X27_Y8_N27
\MSS|y.Tm\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y~38_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tm~q\);

-- Location: FF_X27_Y8_N5
\MSS|y.Tt\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Tm~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tt~q\);

-- Location: FF_X27_Y8_N31
\MSS|y.Tv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Tt~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tv~q\);

-- Location: FF_X27_Y8_N19
\MSS|y.Tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \MSS|y.Tv~q\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tx~q\);

-- Location: LCCOMB_X28_Y8_N16
\MSS|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~0_combout\ = (!\MSS|y.Tv~q\ & (!\MSS|WideOr32~0_combout\ & !\MSS|y.Tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.Tv~q\,
	datac => \MSS|WideOr32~0_combout\,
	datad => \MSS|y.Tx~q\,
	combout => \MSS|Selector19~0_combout\);

-- Location: LCCOMB_X27_Y10_N16
\MSS|Selector23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~8_combout\ = (\G3_nu6|Equal0~2_combout\ & (\G3_nu6|Equal0~3_combout\ & ((\MSS|y.Tw~q\) # (\MSS|y.Tu~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu6|Equal0~2_combout\,
	datab => \MSS|y.Tw~q\,
	datac => \G3_nu6|Equal0~3_combout\,
	datad => \MSS|y.Tu~q\,
	combout => \MSS|Selector23~8_combout\);

-- Location: LCCOMB_X26_Y10_N4
\MSS|Selector23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~6_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector23~5_combout\) # (\MSS|Selector23~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector23~5_combout\,
	datac => \MSS|Selector19~0_combout\,
	datad => \MSS|Selector23~8_combout\,
	combout => \MSS|Selector23~6_combout\);

-- Location: LCCOMB_X24_Y5_N30
\MSS|we_u8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u8~1_combout\ = (\u8~input_o\ & (!\u7~input_o\ & (\uf~0_combout\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \u7~input_o\,
	datac => \uf~0_combout\,
	datad => \MSS|we_u8~0_combout\,
	combout => \MSS|we_u8~1_combout\);

-- Location: LCCOMB_X24_Y5_N26
\G2_h1|Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~9_combout\ = (\u6~input_o\) # (\u7~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u6~input_o\,
	datad => \u7~input_o\,
	combout => \G2_h1|Mux16~9_combout\);

-- Location: LCCOMB_X21_Y7_N10
\G2_h1|Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~8_combout\ = (\u7~input_o\) # ((\u5~input_o\ & !\u6~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datad => \u7~input_o\,
	combout => \G2_h1|Mux16~8_combout\);

-- Location: LCCOMB_X25_Y9_N18
\MSS|WideOr28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr28~0_combout\ = (!\MSS|y.T_hist~q\ & (!\MSS|y.T_hist1~q\ & !\MSS|y.T_hi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.T_hist~q\,
	datac => \MSS|y.T_hist1~q\,
	datad => \MSS|y.T_hi~q\,
	combout => \MSS|WideOr28~0_combout\);

-- Location: LCCOMB_X27_Y8_N12
\MSS|WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr20~0_combout\ = (!\MSS|y.Tv~q\ & (!\MSS|y.Tt~q\ & !\MSS|y.Tx~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tv~q\,
	datab => \MSS|y.Tt~q\,
	datad => \MSS|y.Tx~q\,
	combout => \MSS|WideOr20~0_combout\);

-- Location: LCCOMB_X27_Y8_N6
\MSS|WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr18~0_combout\ = ((!\MSS|WideOr12~0_combout\) # (!\MSS|WideOr20~0_combout\)) # (!\MSS|WideOr28~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr28~0_combout\,
	datab => \MSS|WideOr20~0_combout\,
	datad => \MSS|WideOr12~0_combout\,
	combout => \MSS|WideOr18~0_combout\);

-- Location: LCCOMB_X24_Y5_N2
\MSS|selec_u5[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|selec_u5\(1) = (\MSS|WideOr18~0_combout\ & ((!\MSS|WideOr28~0_combout\))) # (!\MSS|WideOr18~0_combout\ & (\MSS|selec_u5\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|selec_u5\(1),
	datac => \MSS|WideOr28~0_combout\,
	datad => \MSS|WideOr18~0_combout\,
	combout => \MSS|selec_u5\(1));

-- Location: LCCOMB_X24_Y5_N16
\MSS|selec_u5[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|selec_u5\(0) = (\MSS|WideOr18~0_combout\ & ((!\MSS|WideOr20~0_combout\))) # (!\MSS|WideOr18~0_combout\ & (\MSS|selec_u5\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|selec_u5\(0),
	datac => \MSS|WideOr20~0_combout\,
	datad => \MSS|WideOr18~0_combout\,
	combout => \MSS|selec_u5\(0));

-- Location: FF_X24_Y8_N23
\G1_u6|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u6~combout\,
	asdata => \G2_resta_u6|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u6|cont\(1));

-- Location: LCCOMB_X24_Y8_N4
\G2_resta_u6|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Add0~0_combout\ = \G1_u6|cont\(1) $ (\G1_u6|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u6|cont\(1),
	datad => \G1_u6|cont\(0),
	combout => \G2_resta_u6|Add0~0_combout\);

-- Location: LCCOMB_X26_Y9_N26
\MSS|WideOr30\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr30~combout\ = (\MSS|y.Tb~q\) # ((\MSS|y.Tc~q\) # (!\MSS|WideOr28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tb~q\,
	datac => \MSS|y.Tc~q\,
	datad => \MSS|WideOr28~0_combout\,
	combout => \MSS|WideOr30~combout\);

-- Location: LCCOMB_X25_Y10_N28
\MSS|Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector31~0_combout\ = (\MSS|WideOr30~combout\) # ((\MSS|we_u6~0_combout\ & (\u6~input_o\ & \MSS|y.T1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u6~0_combout\,
	datab => \u6~input_o\,
	datac => \MSS|WideOr30~combout\,
	datad => \MSS|y.T1~q\,
	combout => \MSS|Selector31~0_combout\);

-- Location: LCCOMB_X25_Y10_N16
\MSS|ihist_u6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u6~combout\ = (\MSS|Selector31~0_combout\ & ((\MSS|y.T1~q\))) # (!\MSS|Selector31~0_combout\ & (\MSS|ihist_u6~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|ihist_u6~combout\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|Selector31~0_combout\,
	combout => \MSS|ihist_u6~combout\);

-- Location: CLKCTRL_G0
\MSS|ihist_u6~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u6~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u6~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N8
\G1_hist_u6|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u6|cont[0]~3_combout\ = !\G1_hist_u6|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u6|cont\(0),
	combout => \G1_hist_u6|cont[0]~3_combout\);

-- Location: LCCOMB_X24_Y7_N18
\MSS|rhist_u5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|rhist_u5~combout\ = (\MSS|WideOr30~combout\ & ((\MSS|WideOr28~0_combout\))) # (!\MSS|WideOr30~combout\ & (\MSS|rhist_u5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|rhist_u5~combout\,
	datac => \MSS|WideOr28~0_combout\,
	datad => \MSS|WideOr30~combout\,
	combout => \MSS|rhist_u5~combout\);

-- Location: FF_X24_Y8_N9
\G1_hist_u6|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u6~clkctrl_outclk\,
	d => \G1_hist_u6|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u6|cont\(0));

-- Location: LCCOMB_X24_Y8_N6
\G1_hist_u6|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u6|cont[1]~0_combout\ = \G1_hist_u6|cont\(1) $ (\G1_hist_u6|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u6|cont\(1),
	datad => \G1_hist_u6|cont\(0),
	combout => \G1_hist_u6|cont[1]~0_combout\);

-- Location: FF_X24_Y8_N7
\G1_hist_u6|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u6~clkctrl_outclk\,
	d => \G1_hist_u6|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u6|cont\(1));

-- Location: LCCOMB_X23_Y8_N14
\G2_resta_u6|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & (\G1_hist_u6|cont\(1))) # (!\MSS|selec_u5\(1) & ((\G1_u6|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_hist_u6|cont\(1),
	datac => \G1_u6|cont\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u6|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y8_N22
\G2_resta_u6|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux2~1_combout\ = (\G2_resta_u6|Mux2~0_combout\) # ((!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) & !\G2_resta_u6|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \MSS|selec_u5\(0),
	datac => \G2_resta_u6|Add0~0_combout\,
	datad => \G2_resta_u6|Mux2~0_combout\,
	combout => \G2_resta_u6|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y8_N12
\G1_u6|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u6|cont[2]~0_combout\ = \G1_u6|cont\(2) $ (((\G1_u6|cont\(0) & \G1_u6|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(0),
	datac => \G1_u6|cont\(2),
	datad => \G1_u6|cont\(1),
	combout => \G1_u6|cont[2]~0_combout\);

-- Location: FF_X24_Y8_N13
\G1_u6|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u6~combout\,
	d => \G1_u6|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u6|cont\(2));

-- Location: LCCOMB_X23_Y8_N28
\G2_resta_u6|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux1~0_combout\ = \G1_u6|cont\(2) $ (((!\G1_u6|cont\(0) & (!\G1_u6|cont\(1) & \MSS|selec_u5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(0),
	datab => \G1_u6|cont\(2),
	datac => \G1_u6|cont\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u6|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y8_N14
\G1_hist_u6|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u6|cont[2]~1_combout\ = \G1_hist_u6|cont\(2) $ (((\G1_hist_u6|cont\(1) & \G1_hist_u6|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u6|cont\(1),
	datac => \G1_hist_u6|cont\(2),
	datad => \G1_hist_u6|cont\(0),
	combout => \G1_hist_u6|cont[2]~1_combout\);

-- Location: FF_X24_Y8_N15
\G1_hist_u6|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u6~clkctrl_outclk\,
	d => \G1_hist_u6|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u6|cont\(2));

-- Location: LCCOMB_X23_Y8_N4
\G2_resta_u6|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (((\G1_hist_u6|cont\(2) & !\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & (\G2_resta_u6|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G2_resta_u6|Mux1~0_combout\,
	datac => \G1_hist_u6|cont\(2),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u6|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y8_N26
\G1_u6|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u6|cont[3]~1_combout\ = \G1_u6|cont\(3) $ (((\G1_u6|cont\(0) & (\G1_u6|cont\(2) & \G1_u6|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(0),
	datab => \G1_u6|cont\(2),
	datac => \G1_u6|cont\(3),
	datad => \G1_u6|cont\(1),
	combout => \G1_u6|cont[3]~1_combout\);

-- Location: FF_X24_Y8_N27
\G1_u6|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u6~combout\,
	d => \G1_u6|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u6|cont\(3));

-- Location: LCCOMB_X24_Y8_N22
\G2_resta_u6|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Add0~1_combout\ = \G1_u6|cont\(3) $ (((\G1_u6|cont\(0)) # ((\G1_u6|cont\(2)) # (\G1_u6|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(0),
	datab => \G1_u6|cont\(2),
	datac => \G1_u6|cont\(1),
	datad => \G1_u6|cont\(3),
	combout => \G2_resta_u6|Add0~1_combout\);

-- Location: LCCOMB_X24_Y8_N16
\G1_hist_u6|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u6|cont[3]~2_combout\ = \G1_hist_u6|cont\(3) $ (((\G1_hist_u6|cont\(0) & (\G1_hist_u6|cont\(2) & \G1_hist_u6|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u6|cont\(0),
	datab => \G1_hist_u6|cont\(2),
	datac => \G1_hist_u6|cont\(3),
	datad => \G1_hist_u6|cont\(1),
	combout => \G1_hist_u6|cont[3]~2_combout\);

-- Location: FF_X24_Y8_N17
\G1_hist_u6|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u6~clkctrl_outclk\,
	d => \G1_hist_u6|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u6|cont\(3));

-- Location: LCCOMB_X23_Y8_N30
\G2_resta_u6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u6|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u6|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_u6|cont\(3),
	datac => \G1_hist_u6|cont\(3),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u6|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y8_N2
\G2_resta_u6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux0~1_combout\ = (\G2_resta_u6|Mux0~0_combout\) # ((!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) & !\G2_resta_u6|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \MSS|selec_u5\(0),
	datac => \G2_resta_u6|Add0~1_combout\,
	datad => \G2_resta_u6|Mux0~0_combout\,
	combout => \G2_resta_u6|Mux0~1_combout\);

-- Location: M9K_X22_Y8_N0
\G14_u6|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u6|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u6~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u6|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y8_N4
\G2_h1|Mux13~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a10\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux13~7_combout\);

-- Location: LCCOMB_X25_Y9_N30
\MSS|we_u8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u8~2_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u6~input_o\,
	datac => \u5~input_o\,
	datad => \MSS|we_u8~0_combout\,
	combout => \MSS|we_u8~2_combout\);

-- Location: LCCOMB_X24_Y6_N20
\MSS|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector53~0_combout\ = ((\u7~input_o\ & (\MSS|y.Tj~q\ & \MSS|we_u8~2_combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7~input_o\,
	datab => \MSS|y.Tj~q\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \MSS|we_u8~2_combout\,
	combout => \MSS|Selector53~0_combout\);

-- Location: LCCOMB_X23_Y7_N10
\MSS|we_u7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u7~combout\ = (\MSS|Selector53~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector53~0_combout\ & (\MSS|we_u7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u7~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector53~0_combout\,
	combout => \MSS|we_u7~combout\);

-- Location: LCCOMB_X28_Y8_N30
\MSS|Selector22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~5_combout\ = (\MSS|Selector19~1_combout\ & (\MSS|we_u8~2_combout\ & (\u7~input_o\))) # (!\MSS|Selector19~1_combout\ & (((\G3_nu7|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~2_combout\,
	datab => \u7~input_o\,
	datac => \G3_nu7|Equal0~6_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector22~5_combout\);

-- Location: LCCOMB_X24_Y6_N14
\MSS|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector52~0_combout\ = ((\MSS|y.Tj~q\ & \MSS|we_u8~1_combout\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|WideOr12~0_combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|we_u8~1_combout\,
	combout => \MSS|Selector52~0_combout\);

-- Location: LCCOMB_X23_Y4_N28
\MSS|we_u8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u8~combout\ = (\MSS|Selector52~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector52~0_combout\ & (\MSS|we_u8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|we_u8~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector52~0_combout\,
	combout => \MSS|we_u8~combout\);

-- Location: LCCOMB_X27_Y8_N30
\Fu_ad1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad1~0_combout\ = (\u1~input_o\ & \G4|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1~input_o\,
	datad => \G4|q~q\,
	combout => \Fu_ad1~0_combout\);

-- Location: LCCOMB_X26_Y8_N30
\MSS|Selector67~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector67~0_combout\ = (\MSS|y.Tk~q\ & (((!\uf~3_combout\ & !\uf~5_combout\)) # (!\Fu_ad1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~3_combout\,
	datab => \MSS|y.Tk~q\,
	datac => \Fu_ad1~0_combout\,
	datad => \uf~5_combout\,
	combout => \MSS|Selector67~0_combout\);

-- Location: LCCOMB_X26_Y8_N18
\MSS|Selector61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector61~1_combout\ = (\MSS|Selector67~0_combout\ & (((!\u2~input_o\) # (!\G5|q~q\)) # (!\uf~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~6_combout\,
	datab => \G5|q~q\,
	datac => \MSS|Selector67~0_combout\,
	datad => \u2~input_o\,
	combout => \MSS|Selector61~1_combout\);

-- Location: FF_X23_Y4_N23
\G1_u8|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u8~combout\,
	asdata => \G2_resta_u8|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u8|cont\(1));

-- Location: LCCOMB_X23_Y4_N4
\G2_resta_u8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Add0~0_combout\ = \G1_u8|cont\(1) $ (\G1_u8|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u8|cont\(1),
	datad => \G1_u8|cont\(0),
	combout => \G2_resta_u8|Add0~0_combout\);

-- Location: LCCOMB_X26_Y9_N10
\MSS|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector29~0_combout\ = (\MSS|WideOr30~combout\) # ((\MSS|we_u8~1_combout\ & \MSS|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \MSS|y.T1~q\,
	datad => \MSS|WideOr30~combout\,
	combout => \MSS|Selector29~0_combout\);

-- Location: LCCOMB_X26_Y9_N22
\MSS|ihist_u8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u8~combout\ = (\MSS|Selector29~0_combout\ & ((\MSS|y.T1~q\))) # (!\MSS|Selector29~0_combout\ & (\MSS|ihist_u8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector29~0_combout\,
	datab => \MSS|ihist_u8~combout\,
	datad => \MSS|y.T1~q\,
	combout => \MSS|ihist_u8~combout\);

-- Location: CLKCTRL_G19
\MSS|ihist_u8~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u8~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u8~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y9_N18
\G1_hist_u8|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u8|cont[0]~3_combout\ = !\G1_hist_u8|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u8|cont\(0),
	combout => \G1_hist_u8|cont[0]~3_combout\);

-- Location: FF_X24_Y9_N19
\G1_hist_u8|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u8~clkctrl_outclk\,
	d => \G1_hist_u8|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u8|cont\(0));

-- Location: LCCOMB_X24_Y9_N30
\G1_hist_u8|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u8|cont[1]~0_combout\ = \G1_hist_u8|cont\(1) $ (\G1_hist_u8|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u8|cont\(1),
	datad => \G1_hist_u8|cont\(0),
	combout => \G1_hist_u8|cont[1]~0_combout\);

-- Location: FF_X24_Y9_N31
\G1_hist_u8|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u8~clkctrl_outclk\,
	d => \G1_hist_u8|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u8|cont\(1));

-- Location: LCCOMB_X21_Y4_N16
\G2_resta_u8|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u8|cont\(1)))) # (!\MSS|selec_u5\(1) & (\G1_u8|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u8|cont\(1),
	datac => \G1_hist_u8|cont\(1),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u8|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y4_N6
\G2_resta_u8|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux2~1_combout\ = (\G2_resta_u8|Mux2~0_combout\) # ((\MSS|selec_u5\(0) & (!\MSS|selec_u5\(1) & !\G2_resta_u8|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \MSS|selec_u5\(1),
	datac => \G2_resta_u8|Add0~0_combout\,
	datad => \G2_resta_u8|Mux2~0_combout\,
	combout => \G2_resta_u8|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y4_N2
\G1_u8|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u8|cont[2]~0_combout\ = \G1_u8|cont\(2) $ (((\G1_u8|cont\(1) & \G1_u8|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u8|cont\(1),
	datac => \G1_u8|cont\(2),
	datad => \G1_u8|cont\(0),
	combout => \G1_u8|cont[2]~0_combout\);

-- Location: FF_X23_Y4_N3
\G1_u8|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u8~combout\,
	d => \G1_u8|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u8|cont\(2));

-- Location: LCCOMB_X24_Y9_N12
\G1_hist_u8|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u8|cont[2]~1_combout\ = \G1_hist_u8|cont\(2) $ (((\G1_hist_u8|cont\(1) & \G1_hist_u8|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u8|cont\(1),
	datac => \G1_hist_u8|cont\(2),
	datad => \G1_hist_u8|cont\(0),
	combout => \G1_hist_u8|cont[2]~1_combout\);

-- Location: FF_X24_Y9_N13
\G1_hist_u8|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u8~clkctrl_outclk\,
	d => \G1_hist_u8|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u8|cont\(2));

-- Location: LCCOMB_X23_Y4_N16
\G2_resta_u8|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux1~0_combout\ = (\MSS|selec_u5\(0) & ((\G1_u8|cont\(0)) # ((\G1_u8|cont\(1))))) # (!\MSS|selec_u5\(0) & (((\G1_hist_u8|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u8|cont\(0),
	datac => \G1_u8|cont\(1),
	datad => \G1_hist_u8|cont\(2),
	combout => \G2_resta_u8|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y4_N30
\G2_resta_u8|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (((!\MSS|selec_u5\(0) & \G2_resta_u8|Mux1~0_combout\)))) # (!\MSS|selec_u5\(1) & (\G1_u8|cont\(2) $ (((\MSS|selec_u5\(0) & !\G2_resta_u8|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u8|cont\(2),
	datab => \MSS|selec_u5\(1),
	datac => \MSS|selec_u5\(0),
	datad => \G2_resta_u8|Mux1~0_combout\,
	combout => \G2_resta_u8|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y4_N18
\G1_u8|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u8|cont[3]~1_combout\ = \G1_u8|cont\(3) $ (((\G1_u8|cont\(1) & (\G1_u8|cont\(2) & \G1_u8|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u8|cont\(1),
	datab => \G1_u8|cont\(2),
	datac => \G1_u8|cont\(3),
	datad => \G1_u8|cont\(0),
	combout => \G1_u8|cont[3]~1_combout\);

-- Location: FF_X23_Y4_N19
\G1_u8|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u8~combout\,
	d => \G1_u8|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u8|cont\(3));

-- Location: LCCOMB_X23_Y4_N22
\G2_resta_u8|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Add0~1_combout\ = \G1_u8|cont\(3) $ (((\G1_u8|cont\(2)) # ((\G1_u8|cont\(1)) # (\G1_u8|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u8|cont\(3),
	datab => \G1_u8|cont\(2),
	datac => \G1_u8|cont\(1),
	datad => \G1_u8|cont\(0),
	combout => \G2_resta_u8|Add0~1_combout\);

-- Location: LCCOMB_X24_Y9_N24
\G1_hist_u8|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u8|cont[3]~2_combout\ = \G1_hist_u8|cont\(3) $ (((\G1_hist_u8|cont\(1) & (\G1_hist_u8|cont\(0) & \G1_hist_u8|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u8|cont\(1),
	datab => \G1_hist_u8|cont\(0),
	datac => \G1_hist_u8|cont\(3),
	datad => \G1_hist_u8|cont\(2),
	combout => \G1_hist_u8|cont[3]~2_combout\);

-- Location: FF_X24_Y9_N25
\G1_hist_u8|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u8~clkctrl_outclk\,
	d => \G1_hist_u8|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u8|cont\(3));

-- Location: LCCOMB_X23_Y4_N26
\G2_resta_u8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u8|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u8|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u8|cont\(3),
	datac => \MSS|selec_u5\(1),
	datad => \G1_hist_u8|cont\(3),
	combout => \G2_resta_u8|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y4_N20
\G2_resta_u8|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux0~1_combout\ = (\G2_resta_u8|Mux0~0_combout\) # ((!\MSS|selec_u5\(1) & (!\G2_resta_u8|Add0~1_combout\ & \MSS|selec_u5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G2_resta_u8|Add0~1_combout\,
	datac => \G2_resta_u8|Mux0~0_combout\,
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u8|Mux0~1_combout\);

-- Location: M9K_X22_Y4_N0
\G14_u8|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u8|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u8~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u8|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X20_Y8_N26
\G2_h1|Mux16~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~15_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a7\,
	combout => \G2_h1|Mux16~15_combout\);

-- Location: LCCOMB_X25_Y9_N12
\MSS|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector30~0_combout\ = (\MSS|WideOr30~combout\) # ((\u7~input_o\ & (\MSS|y.T1~q\ & \MSS|we_u8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7~input_o\,
	datab => \MSS|y.T1~q\,
	datac => \MSS|we_u8~2_combout\,
	datad => \MSS|WideOr30~combout\,
	combout => \MSS|Selector30~0_combout\);

-- Location: LCCOMB_X25_Y9_N24
\MSS|ihist_u7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u7~combout\ = (\MSS|Selector30~0_combout\ & ((\MSS|y.T1~q\))) # (!\MSS|Selector30~0_combout\ & (\MSS|ihist_u7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|ihist_u7~combout\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|Selector30~0_combout\,
	combout => \MSS|ihist_u7~combout\);

-- Location: CLKCTRL_G2
\MSS|ihist_u7~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u7~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u7~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y7_N22
\G1_hist_u7|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u7|cont[0]~3_combout\ = !\G1_hist_u7|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u7|cont\(0),
	combout => \G1_hist_u7|cont[0]~3_combout\);

-- Location: FF_X24_Y7_N23
\G1_hist_u7|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u7~clkctrl_outclk\,
	d => \G1_hist_u7|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u7|cont\(0));

-- Location: LCCOMB_X24_Y7_N26
\G1_hist_u7|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u7|cont[1]~0_combout\ = \G1_hist_u7|cont\(1) $ (\G1_hist_u7|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u7|cont\(1),
	datad => \G1_hist_u7|cont\(0),
	combout => \G1_hist_u7|cont[1]~0_combout\);

-- Location: FF_X24_Y7_N27
\G1_hist_u7|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u7~clkctrl_outclk\,
	d => \G1_hist_u7|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u7|cont\(1));

-- Location: LCCOMB_X24_Y7_N8
\G2_resta_u7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Add0~0_combout\ = \G1_u7|cont\(1) $ (\G1_u7|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_u7|cont\(1),
	datad => \G1_u7|cont\(0),
	combout => \G2_resta_u7|Add0~0_combout\);

-- Location: FF_X24_Y7_N25
\G1_u7|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u7~combout\,
	asdata => \G2_resta_u7|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u7|cont\(1));

-- Location: LCCOMB_X24_Y7_N2
\G2_resta_u7|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & (\G1_hist_u7|cont\(1))) # (!\MSS|selec_u5\(1) & ((\G1_u7|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u7|cont\(1),
	datab => \G1_u7|cont\(1),
	datac => \MSS|selec_u5\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y7_N4
\G2_resta_u7|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux2~1_combout\ = (\G2_resta_u7|Mux2~0_combout\) # ((!\MSS|selec_u5\(1) & (!\G2_resta_u7|Add0~0_combout\ & \MSS|selec_u5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_resta_u7|Mux2~0_combout\,
	datab => \MSS|selec_u5\(1),
	datac => \G2_resta_u7|Add0~0_combout\,
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y7_N30
\G1_u7|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u7|cont[2]~0_combout\ = \G1_u7|cont\(2) $ (((\G1_u7|cont\(1) & \G1_u7|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(1),
	datac => \G1_u7|cont\(2),
	datad => \G1_u7|cont\(0),
	combout => \G1_u7|cont[2]~0_combout\);

-- Location: FF_X24_Y7_N31
\G1_u7|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u7~combout\,
	d => \G1_u7|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u7|cont\(2));

-- Location: LCCOMB_X24_Y7_N4
\G1_hist_u7|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u7|cont[2]~1_combout\ = \G1_hist_u7|cont\(2) $ (((\G1_hist_u7|cont\(1) & \G1_hist_u7|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u7|cont\(1),
	datac => \G1_hist_u7|cont\(2),
	datad => \G1_hist_u7|cont\(0),
	combout => \G1_hist_u7|cont[2]~1_combout\);

-- Location: FF_X24_Y7_N5
\G1_hist_u7|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u7~clkctrl_outclk\,
	d => \G1_hist_u7|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u7|cont\(2));

-- Location: LCCOMB_X23_Y5_N4
\G2_resta_u7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux1~0_combout\ = (\MSS|selec_u5\(0) & ((\G1_u7|cont\(1)) # ((\G1_u7|cont\(0))))) # (!\MSS|selec_u5\(0) & (((\G1_hist_u7|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(1),
	datab => \G1_hist_u7|cont\(2),
	datac => \G1_u7|cont\(0),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y5_N24
\G2_resta_u7|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (((\G2_resta_u7|Mux1~0_combout\ & !\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & (\G1_u7|cont\(2) $ (((!\G2_resta_u7|Mux1~0_combout\ & \MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_u7|cont\(2),
	datac => \G2_resta_u7|Mux1~0_combout\,
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y7_N12
\G1_u7|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u7|cont[3]~1_combout\ = \G1_u7|cont\(3) $ (((\G1_u7|cont\(2) & (\G1_u7|cont\(1) & \G1_u7|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(2),
	datab => \G1_u7|cont\(1),
	datac => \G1_u7|cont\(3),
	datad => \G1_u7|cont\(0),
	combout => \G1_u7|cont[3]~1_combout\);

-- Location: FF_X24_Y7_N13
\G1_u7|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u7~combout\,
	d => \G1_u7|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u7|cont\(3));

-- Location: LCCOMB_X24_Y7_N24
\G2_resta_u7|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Add0~1_combout\ = \G1_u7|cont\(3) $ (((\G1_u7|cont\(2)) # ((\G1_u7|cont\(1)) # (\G1_u7|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(2),
	datab => \G1_u7|cont\(3),
	datac => \G1_u7|cont\(1),
	datad => \G1_u7|cont\(0),
	combout => \G2_resta_u7|Add0~1_combout\);

-- Location: LCCOMB_X24_Y7_N6
\G1_hist_u7|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u7|cont[3]~2_combout\ = \G1_hist_u7|cont\(3) $ (((\G1_hist_u7|cont\(1) & (\G1_hist_u7|cont\(2) & \G1_hist_u7|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u7|cont\(1),
	datab => \G1_hist_u7|cont\(2),
	datac => \G1_hist_u7|cont\(3),
	datad => \G1_hist_u7|cont\(0),
	combout => \G1_hist_u7|cont[3]~2_combout\);

-- Location: FF_X24_Y7_N7
\G1_hist_u7|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u7~clkctrl_outclk\,
	d => \G1_hist_u7|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u7|cont\(3));

-- Location: LCCOMB_X24_Y7_N14
\G2_resta_u7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u7|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u7|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(3),
	datab => \G1_hist_u7|cont\(3),
	datac => \MSS|selec_u5\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y7_N0
\G2_resta_u7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux0~1_combout\ = (\G2_resta_u7|Mux0~0_combout\) # ((!\MSS|selec_u5\(1) & (!\G2_resta_u7|Add0~1_combout\ & \MSS|selec_u5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G2_resta_u7|Add0~1_combout\,
	datac => \MSS|selec_u5\(0),
	datad => \G2_resta_u7|Mux0~0_combout\,
	combout => \G2_resta_u7|Mux0~1_combout\);

-- Location: M9K_X22_Y7_N0
\G14_u7|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u7|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u7~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u7|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y8_N28
\G2_h1|Mux16~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~20_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a7\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux16~20_combout\);

-- Location: LCCOMB_X20_Y8_N16
\G2_h1|Mux16~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~16_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux16~20_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~15_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux16~15_combout\,
	datad => \G2_h1|Mux16~20_combout\,
	combout => \G2_h1|Mux16~16_combout\);

-- Location: LCCOMB_X23_Y6_N4
\MSS|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector55~0_combout\ = ((\u5~input_o\ & (\MSS|we_u8~0_combout\ & \MSS|y.Tj~q\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \MSS|WideOr12~0_combout\,
	datac => \MSS|we_u8~0_combout\,
	datad => \MSS|y.Tj~q\,
	combout => \MSS|Selector55~0_combout\);

-- Location: LCCOMB_X23_Y9_N0
\MSS|we_u5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u5~combout\ = (\MSS|Selector55~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector55~0_combout\ & (\MSS|we_u5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|we_u5~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector55~0_combout\,
	combout => \MSS|we_u5~combout\);

-- Location: LCCOMB_X21_Y4_N0
\G2_h1|Mux16~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~21_combout\ = (!\u6~input_o\ & (!\u7~input_o\ & ((\MSS|we_u8~0_combout\) # (!\u5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \u7~input_o\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux16~21_combout\);

-- Location: FF_X25_Y7_N9
\G1_u5|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u5~combout\,
	asdata => \G2_resta_u5|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u5|cont\(1));

-- Location: LCCOMB_X25_Y7_N26
\G2_resta_u5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Add0~0_combout\ = \G1_u5|cont\(1) $ (\G1_u5|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u5|cont\(1),
	datad => \G1_u5|cont\(0),
	combout => \G2_resta_u5|Add0~0_combout\);

-- Location: LCCOMB_X26_Y10_N28
\MSS|Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector32~0_combout\ = (\MSS|WideOr30~combout\) # ((\u5~input_o\ & (\MSS|y.T1~q\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \MSS|y.T1~q\,
	datac => \MSS|we_u8~0_combout\,
	datad => \MSS|WideOr30~combout\,
	combout => \MSS|Selector32~0_combout\);

-- Location: LCCOMB_X26_Y10_N18
\MSS|ihist_u5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u5~combout\ = (\MSS|Selector32~0_combout\ & (\MSS|y.T1~q\)) # (!\MSS|Selector32~0_combout\ & ((\MSS|ihist_u5~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.T1~q\,
	datab => \MSS|ihist_u5~combout\,
	datad => \MSS|Selector32~0_combout\,
	combout => \MSS|ihist_u5~combout\);

-- Location: CLKCTRL_G14
\MSS|ihist_u5~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u5~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u5~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y7_N22
\G1_hist_u5|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u5|cont[0]~3_combout\ = !\G1_hist_u5|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u5|cont\(0),
	combout => \G1_hist_u5|cont[0]~3_combout\);

-- Location: FF_X25_Y7_N23
\G1_hist_u5|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u5~clkctrl_outclk\,
	d => \G1_hist_u5|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u5|cont\(0));

-- Location: LCCOMB_X25_Y7_N30
\G1_hist_u5|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u5|cont[1]~0_combout\ = \G1_hist_u5|cont\(1) $ (\G1_hist_u5|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u5|cont\(1),
	datad => \G1_hist_u5|cont\(0),
	combout => \G1_hist_u5|cont[1]~0_combout\);

-- Location: FF_X25_Y7_N31
\G1_hist_u5|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u5~clkctrl_outclk\,
	d => \G1_hist_u5|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u5|cont\(1));

-- Location: LCCOMB_X24_Y5_N24
\G2_resta_u5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & (\G1_hist_u5|cont\(1))) # (!\MSS|selec_u5\(1) & ((\G1_u5|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(1),
	datab => \MSS|selec_u5\(0),
	datac => \MSS|selec_u5\(1),
	datad => \G1_u5|cont\(1),
	combout => \G2_resta_u5|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y9_N22
\G2_resta_u5|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux2~1_combout\ = (\G2_resta_u5|Mux2~0_combout\) # ((!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) & !\G2_resta_u5|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \MSS|selec_u5\(0),
	datac => \G2_resta_u5|Add0~0_combout\,
	datad => \G2_resta_u5|Mux2~0_combout\,
	combout => \G2_resta_u5|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y7_N18
\G1_u5|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u5|cont[2]~0_combout\ = \G1_u5|cont\(2) $ (((\G1_u5|cont\(1) & \G1_u5|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u5|cont\(1),
	datac => \G1_u5|cont\(2),
	datad => \G1_u5|cont\(0),
	combout => \G1_u5|cont[2]~0_combout\);

-- Location: FF_X25_Y7_N19
\G1_u5|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u5~combout\,
	d => \G1_u5|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u5|cont\(2));

-- Location: LCCOMB_X25_Y7_N14
\G1_hist_u5|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u5|cont[2]~1_combout\ = \G1_hist_u5|cont\(2) $ (((\G1_hist_u5|cont\(1) & \G1_hist_u5|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(1),
	datac => \G1_hist_u5|cont\(2),
	datad => \G1_hist_u5|cont\(0),
	combout => \G1_hist_u5|cont[2]~1_combout\);

-- Location: FF_X25_Y7_N15
\G1_hist_u5|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u5~clkctrl_outclk\,
	d => \G1_hist_u5|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u5|cont\(2));

-- Location: LCCOMB_X25_Y7_N10
\G2_resta_u5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux1~0_combout\ = (\MSS|selec_u5\(0) & ((\G1_u5|cont\(1)) # ((\G1_u5|cont\(0))))) # (!\MSS|selec_u5\(0) & (((\G1_hist_u5|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u5|cont\(1),
	datab => \G1_u5|cont\(0),
	datac => \G1_hist_u5|cont\(2),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u5|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y7_N20
\G2_resta_u5|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (!\MSS|selec_u5\(0) & ((\G2_resta_u5|Mux1~0_combout\)))) # (!\MSS|selec_u5\(1) & (\G1_u5|cont\(2) $ (((\MSS|selec_u5\(0) & !\G2_resta_u5|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u5|cont\(2),
	datac => \MSS|selec_u5\(1),
	datad => \G2_resta_u5|Mux1~0_combout\,
	combout => \G2_resta_u5|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y7_N4
\G1_u5|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u5|cont[3]~1_combout\ = \G1_u5|cont\(3) $ (((\G1_u5|cont\(2) & (\G1_u5|cont\(1) & \G1_u5|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u5|cont\(2),
	datab => \G1_u5|cont\(1),
	datac => \G1_u5|cont\(3),
	datad => \G1_u5|cont\(0),
	combout => \G1_u5|cont[3]~1_combout\);

-- Location: FF_X25_Y7_N5
\G1_u5|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u5~combout\,
	d => \G1_u5|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u5|cont\(3));

-- Location: LCCOMB_X25_Y7_N8
\G2_resta_u5|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Add0~1_combout\ = \G1_u5|cont\(3) $ (((\G1_u5|cont\(0)) # ((\G1_u5|cont\(1)) # (\G1_u5|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u5|cont\(0),
	datab => \G1_u5|cont\(3),
	datac => \G1_u5|cont\(1),
	datad => \G1_u5|cont\(2),
	combout => \G2_resta_u5|Add0~1_combout\);

-- Location: LCCOMB_X25_Y7_N12
\G1_hist_u5|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u5|cont[3]~2_combout\ = \G1_hist_u5|cont\(3) $ (((\G1_hist_u5|cont\(1) & (\G1_hist_u5|cont\(0) & \G1_hist_u5|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(1),
	datab => \G1_hist_u5|cont\(0),
	datac => \G1_hist_u5|cont\(3),
	datad => \G1_hist_u5|cont\(2),
	combout => \G1_hist_u5|cont[3]~2_combout\);

-- Location: FF_X25_Y7_N13
\G1_hist_u5|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u5~clkctrl_outclk\,
	d => \G1_hist_u5|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u5|cont\(3));

-- Location: LCCOMB_X25_Y7_N28
\G2_resta_u5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & (\G1_hist_u5|cont\(3))) # (!\MSS|selec_u5\(1) & ((\G1_u5|cont\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(3),
	datab => \G1_u5|cont\(3),
	datac => \MSS|selec_u5\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u5|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y7_N2
\G2_resta_u5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux0~1_combout\ = (\G2_resta_u5|Mux0~0_combout\) # ((\MSS|selec_u5\(0) & (!\G2_resta_u5|Add0~1_combout\ & !\MSS|selec_u5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G2_resta_u5|Add0~1_combout\,
	datac => \MSS|selec_u5\(1),
	datad => \G2_resta_u5|Mux0~0_combout\,
	combout => \G2_resta_u5|Mux0~1_combout\);

-- Location: M9K_X22_Y9_N0
\G14_u5|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u5|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u5~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u5|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y3_N20
\G2_h1|Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~7_combout\ = (\u4~input_o\) # ((\u2~input_o\ & !\u3~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datad => \u4~input_o\,
	combout => \G2_h1|Mux16~7_combout\);

-- Location: LCCOMB_X27_Y10_N12
\MSS|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector34~0_combout\ = (\u3~input_o\ & (!\u2~input_o\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datac => \u2~input_o\,
	datad => \u1~input_o\,
	combout => \MSS|Selector34~0_combout\);

-- Location: LCCOMB_X27_Y6_N14
\MSS|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector57~0_combout\ = ((\MSS|Selector34~0_combout\ & \MSS|y.Tj~q\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr12~0_combout\,
	datac => \MSS|Selector34~0_combout\,
	datad => \MSS|y.Tj~q\,
	combout => \MSS|Selector57~0_combout\);

-- Location: LCCOMB_X23_Y3_N6
\MSS|we_u3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u3~combout\ = (\MSS|Selector57~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector57~0_combout\ & (\MSS|we_u3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u3~combout\,
	datab => \MSS|y.Tj~q\,
	datad => \MSS|Selector57~0_combout\,
	combout => \MSS|we_u3~combout\);

-- Location: LCCOMB_X27_Y8_N0
Fu_ad2 : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad2~combout\ = (\u2~input_o\ & (\G5|q~q\ & ((\uf~3_combout\) # (\uf~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~3_combout\,
	datab => \u2~input_o\,
	datac => \G5|q~q\,
	datad => \uf~5_combout\,
	combout => \Fu_ad2~combout\);

-- Location: LCCOMB_X26_Y7_N20
\MSS|Selector66~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector66~0_combout\ = ((\MSS|Selector67~0_combout\ & (\Fu_ad3~combout\ & !\Fu_ad2~combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector67~0_combout\,
	datab => \MSS|WideOr12~0_combout\,
	datac => \Fu_ad3~combout\,
	datad => \Fu_ad2~combout\,
	combout => \MSS|Selector66~0_combout\);

-- Location: LCCOMB_X26_Y7_N28
\MSS|incremento_u3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u3~combout\ = (\MSS|Selector66~0_combout\ & ((\MSS|y.Tk~q\))) # (!\MSS|Selector66~0_combout\ & (\MSS|incremento_u3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|incremento_u3~combout\,
	datac => \MSS|y.Tk~q\,
	datad => \MSS|Selector66~0_combout\,
	combout => \MSS|incremento_u3~combout\);

-- Location: CLKCTRL_G16
\MSS|incremento_u3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|incremento_u3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|incremento_u3~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y7_N6
\G1_u3|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u3|cont[0]~2_combout\ = !\G1_u3|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u3|cont\(0),
	combout => \G1_u3|cont[0]~2_combout\);

-- Location: FF_X23_Y7_N7
\G1_u3|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u3~clkctrl_outclk\,
	d => \G1_u3|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u3|cont\(0));

-- Location: LCCOMB_X23_Y3_N22
\G2_resta_u3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (\G1_hist_u3|cont\(0) & (!\MSS|selec_u5\(0)))) # (!\MSS|selec_u5\(1) & ((\MSS|selec_u5\(0) $ (\G1_u3|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u3|cont\(0),
	datab => \MSS|selec_u5\(0),
	datac => \MSS|selec_u5\(1),
	datad => \G1_u3|cont\(0),
	combout => \G2_resta_u3|Mux3~0_combout\);

-- Location: FF_X23_Y7_N15
\G1_u3|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u3~clkctrl_outclk\,
	d => \G2_resta_u3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u3|cont\(1));

-- Location: LCCOMB_X23_Y7_N14
\G2_resta_u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Add0~0_combout\ = \G1_u3|cont\(1) $ (\G1_u3|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u3|cont\(1),
	datad => \G1_u3|cont\(0),
	combout => \G2_resta_u3|Add0~0_combout\);

-- Location: LCCOMB_X23_Y7_N20
\G1_hist_u3|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u3|cont[1]~0_combout\ = \G1_hist_u3|cont\(1) $ (\G1_hist_u3|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u3|cont\(1),
	datad => \G1_hist_u3|cont\(0),
	combout => \G1_hist_u3|cont[1]~0_combout\);

-- Location: FF_X23_Y7_N21
\G1_hist_u3|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u3~clkctrl_outclk\,
	d => \G1_hist_u3|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u3|cont\(1));

-- Location: LCCOMB_X23_Y7_N12
\G2_resta_u3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u3|cont\(1)))) # (!\MSS|selec_u5\(1) & (\G1_u3|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u3|cont\(1),
	datab => \G1_hist_u3|cont\(1),
	datac => \MSS|selec_u5\(0),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u3|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y7_N18
\G2_resta_u3|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux2~1_combout\ = (\G2_resta_u3|Mux2~0_combout\) # ((\MSS|selec_u5\(0) & (!\G2_resta_u3|Add0~0_combout\ & !\MSS|selec_u5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G2_resta_u3|Add0~0_combout\,
	datac => \MSS|selec_u5\(1),
	datad => \G2_resta_u3|Mux2~0_combout\,
	combout => \G2_resta_u3|Mux2~1_combout\);

-- Location: LCCOMB_X23_Y7_N24
\G1_u3|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u3|cont[2]~0_combout\ = \G1_u3|cont\(2) $ (((\G1_u3|cont\(1) & \G1_u3|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_u3|cont\(1),
	datac => \G1_u3|cont\(2),
	datad => \G1_u3|cont\(0),
	combout => \G1_u3|cont[2]~0_combout\);

-- Location: FF_X23_Y7_N25
\G1_u3|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u3~clkctrl_outclk\,
	d => \G1_u3|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u3|cont\(2));

-- Location: LCCOMB_X23_Y7_N30
\G1_hist_u3|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u3|cont[2]~1_combout\ = \G1_hist_u3|cont\(2) $ (((\G1_hist_u3|cont\(1) & \G1_hist_u3|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_hist_u3|cont\(1),
	datac => \G1_hist_u3|cont\(2),
	datad => \G1_hist_u3|cont\(0),
	combout => \G1_hist_u3|cont[2]~1_combout\);

-- Location: FF_X23_Y7_N31
\G1_hist_u3|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u3~clkctrl_outclk\,
	d => \G1_hist_u3|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u3|cont\(2));

-- Location: LCCOMB_X23_Y5_N0
\G2_resta_u3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux1~0_combout\ = (\MSS|selec_u5\(0) & (((\G1_u3|cont\(1)) # (\G1_u3|cont\(0))))) # (!\MSS|selec_u5\(0) & (\G1_hist_u3|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u3|cont\(2),
	datab => \G1_u3|cont\(1),
	datac => \G1_u3|cont\(0),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u3|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y5_N20
\G2_resta_u3|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (((!\MSS|selec_u5\(0) & \G2_resta_u3|Mux1~0_combout\)))) # (!\MSS|selec_u5\(1) & (\G1_u3|cont\(2) $ (((\MSS|selec_u5\(0) & !\G2_resta_u3|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_u3|cont\(2),
	datac => \MSS|selec_u5\(0),
	datad => \G2_resta_u3|Mux1~0_combout\,
	combout => \G2_resta_u3|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y7_N26
\G1_u3|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u3|cont[3]~1_combout\ = \G1_u3|cont\(3) $ (((\G1_u3|cont\(0) & (\G1_u3|cont\(1) & \G1_u3|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u3|cont\(0),
	datab => \G1_u3|cont\(1),
	datac => \G1_u3|cont\(3),
	datad => \G1_u3|cont\(2),
	combout => \G1_u3|cont[3]~1_combout\);

-- Location: FF_X23_Y7_N27
\G1_u3|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u3~clkctrl_outclk\,
	d => \G1_u3|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u3|cont\(3));

-- Location: LCCOMB_X24_Y7_N16
\G2_resta_u3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Add0~1_combout\ = \G1_u3|cont\(3) $ (((\G1_u3|cont\(2)) # ((\G1_u3|cont\(0)) # (\G1_u3|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u3|cont\(3),
	datab => \G1_u3|cont\(2),
	datac => \G1_u3|cont\(0),
	datad => \G1_u3|cont\(1),
	combout => \G2_resta_u3|Add0~1_combout\);

-- Location: LCCOMB_X23_Y7_N28
\G1_hist_u3|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u3|cont[3]~2_combout\ = \G1_hist_u3|cont\(3) $ (((\G1_hist_u3|cont\(2) & (\G1_hist_u3|cont\(0) & \G1_hist_u3|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u3|cont\(2),
	datab => \G1_hist_u3|cont\(0),
	datac => \G1_hist_u3|cont\(3),
	datad => \G1_hist_u3|cont\(1),
	combout => \G1_hist_u3|cont[3]~2_combout\);

-- Location: FF_X23_Y7_N29
\G1_hist_u3|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u3~clkctrl_outclk\,
	d => \G1_hist_u3|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u3|cont\(3));

-- Location: LCCOMB_X23_Y7_N0
\G2_resta_u3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u3|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u3|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u3|cont\(3),
	datab => \G1_hist_u3|cont\(3),
	datac => \MSS|selec_u5\(0),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u3|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y7_N2
\G2_resta_u3|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u3|Mux0~1_combout\ = (\G2_resta_u3|Mux0~0_combout\) # ((\MSS|selec_u5\(0) & (!\G2_resta_u3|Add0~1_combout\ & !\MSS|selec_u5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G2_resta_u3|Add0~1_combout\,
	datac => \MSS|selec_u5\(1),
	datad => \G2_resta_u3|Mux0~0_combout\,
	combout => \G2_resta_u3|Mux0~1_combout\);

-- Location: M9K_X22_Y3_N0
\G14_u3|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u3|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u3~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y3_N4
\G2_h1|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \G2_h1|Mux22~4_combout\);

-- Location: LCCOMB_X25_Y3_N16
\G2_h1|Mux16~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~19_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datac => \u2~input_o\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux16~19_combout\);

-- Location: LCCOMB_X26_Y5_N22
\MSS|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector56~0_combout\ = ((\u4~input_o\ & (\G2_h1|Mux16~19_combout\ & \MSS|y.Tj~q\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4~input_o\,
	datab => \G2_h1|Mux16~19_combout\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \MSS|y.Tj~q\,
	combout => \MSS|Selector56~0_combout\);

-- Location: LCCOMB_X23_Y2_N2
\MSS|we_u4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u4~combout\ = (\MSS|Selector56~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector56~0_combout\ & (\MSS|we_u4~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|we_u4~combout\,
	datac => \MSS|Selector56~0_combout\,
	datad => \MSS|y.Tj~q\,
	combout => \MSS|we_u4~combout\);

-- Location: LCCOMB_X23_Y6_N12
\MSS|Selector60~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector60~0_combout\ = ((\MSS|y.Tj~q\ & \u1~input_o\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.Tj~q\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \u1~input_o\,
	combout => \MSS|Selector60~0_combout\);

-- Location: LCCOMB_X23_Y6_N18
\MSS|we_u1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u1~combout\ = (\MSS|Selector60~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector60~0_combout\ & (\MSS|we_u1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|we_u1~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector60~0_combout\,
	combout => \MSS|we_u1~combout\);

-- Location: LCCOMB_X26_Y9_N20
\MSS|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector37~0_combout\ = (\MSS|WideOr30~combout\) # ((\MSS|y.T1~q\ & \u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.T1~q\,
	datac => \MSS|WideOr30~combout\,
	datad => \u1~input_o\,
	combout => \MSS|Selector37~0_combout\);

-- Location: LCCOMB_X26_Y9_N18
\MSS|ihist_u1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u1~combout\ = (\MSS|Selector37~0_combout\ & (\MSS|y.T1~q\)) # (!\MSS|Selector37~0_combout\ & ((\MSS|ihist_u1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.T1~q\,
	datac => \MSS|ihist_u1~combout\,
	datad => \MSS|Selector37~0_combout\,
	combout => \MSS|ihist_u1~combout\);

-- Location: CLKCTRL_G9
\MSS|ihist_u1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u1~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y6_N26
\G1_hist_u1|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u1|cont[0]~3_combout\ = !\G1_hist_u1|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u1|cont\(0),
	combout => \G1_hist_u1|cont[0]~3_combout\);

-- Location: FF_X24_Y6_N27
\G1_hist_u1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u1~clkctrl_outclk\,
	d => \G1_hist_u1|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u1|cont\(0));

-- Location: LCCOMB_X26_Y8_N28
\MSS|Selector69~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector69~0_combout\ = ((\uf~6_combout\ & (\Fu_ad1~0_combout\ & \MSS|y.Tk~q\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~6_combout\,
	datab => \MSS|WideOr12~0_combout\,
	datac => \Fu_ad1~0_combout\,
	datad => \MSS|y.Tk~q\,
	combout => \MSS|Selector69~0_combout\);

-- Location: LCCOMB_X26_Y8_N16
\MSS|incremento_u1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u1~combout\ = (\MSS|Selector69~0_combout\ & (\MSS|y.Tk~q\)) # (!\MSS|Selector69~0_combout\ & ((\MSS|incremento_u1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tk~q\,
	datab => \MSS|incremento_u1~combout\,
	datad => \MSS|Selector69~0_combout\,
	combout => \MSS|incremento_u1~combout\);

-- Location: CLKCTRL_G17
\MSS|incremento_u1~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|incremento_u1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|incremento_u1~clkctrl_outclk\);

-- Location: LCCOMB_X24_Y6_N0
\G1_u1|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u1|cont[0]~2_combout\ = !\G1_u1|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u1|cont\(0),
	combout => \G1_u1|cont[0]~2_combout\);

-- Location: FF_X24_Y6_N1
\G1_u1|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u1~clkctrl_outclk\,
	d => \G1_u1|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u1|cont\(0));

-- Location: LCCOMB_X23_Y6_N16
\G2_resta_u1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (\G1_hist_u1|cont\(0) & (!\MSS|selec_u5\(0)))) # (!\MSS|selec_u5\(1) & ((\MSS|selec_u5\(0) $ (\G1_u1|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(0),
	datab => \MSS|selec_u5\(0),
	datac => \G1_u1|cont\(0),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u1|Mux3~0_combout\);

-- Location: FF_X24_Y6_N23
\G1_u1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u1~clkctrl_outclk\,
	asdata => \G2_resta_u1|Add0~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u1|cont\(1));

-- Location: LCCOMB_X24_Y6_N30
\G2_resta_u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Add0~0_combout\ = \G1_u1|cont\(1) $ (\G1_u1|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u1|cont\(1),
	datad => \G1_u1|cont\(0),
	combout => \G2_resta_u1|Add0~0_combout\);

-- Location: LCCOMB_X24_Y6_N16
\G1_hist_u1|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u1|cont[1]~0_combout\ = \G1_hist_u1|cont\(0) $ (\G1_hist_u1|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(0),
	datac => \G1_hist_u1|cont\(1),
	combout => \G1_hist_u1|cont[1]~0_combout\);

-- Location: FF_X24_Y6_N17
\G1_hist_u1|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u1~clkctrl_outclk\,
	d => \G1_hist_u1|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u1|cont\(1));

-- Location: LCCOMB_X23_Y6_N2
\G2_resta_u1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & (\G1_hist_u1|cont\(1))) # (!\MSS|selec_u5\(1) & ((\G1_u1|cont\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(1),
	datab => \MSS|selec_u5\(0),
	datac => \G1_u1|cont\(1),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y6_N20
\G2_resta_u1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux2~1_combout\ = (\G2_resta_u1|Mux2~0_combout\) # ((!\G2_resta_u1|Add0~0_combout\ & (\MSS|selec_u5\(0) & !\MSS|selec_u5\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_resta_u1|Add0~0_combout\,
	datab => \MSS|selec_u5\(0),
	datac => \MSS|selec_u5\(1),
	datad => \G2_resta_u1|Mux2~0_combout\,
	combout => \G2_resta_u1|Mux2~1_combout\);

-- Location: LCCOMB_X24_Y6_N18
\G1_u1|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u1|cont[2]~0_combout\ = \G1_u1|cont\(2) $ (((\G1_u1|cont\(1) & \G1_u1|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u1|cont\(1),
	datac => \G1_u1|cont\(2),
	datad => \G1_u1|cont\(0),
	combout => \G1_u1|cont[2]~0_combout\);

-- Location: FF_X24_Y6_N19
\G1_u1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u1~clkctrl_outclk\,
	d => \G1_u1|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u1|cont\(2));

-- Location: LCCOMB_X24_Y6_N4
\G1_hist_u1|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u1|cont[2]~1_combout\ = \G1_hist_u1|cont\(2) $ (((\G1_hist_u1|cont\(0) & \G1_hist_u1|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(0),
	datab => \G1_hist_u1|cont\(1),
	datac => \G1_hist_u1|cont\(2),
	combout => \G1_hist_u1|cont[2]~1_combout\);

-- Location: FF_X24_Y6_N5
\G1_hist_u1|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u1~clkctrl_outclk\,
	d => \G1_hist_u1|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u1|cont\(2));

-- Location: LCCOMB_X23_Y5_N10
\G2_resta_u1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux1~0_combout\ = (\MSS|selec_u5\(0) & ((\G1_u1|cont\(1)) # ((\G1_u1|cont\(0))))) # (!\MSS|selec_u5\(0) & (((\G1_hist_u1|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u1|cont\(1),
	datab => \G1_u1|cont\(0),
	datac => \G1_hist_u1|cont\(2),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u1|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y5_N18
\G2_resta_u1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (((!\MSS|selec_u5\(0) & \G2_resta_u1|Mux1~0_combout\)))) # (!\MSS|selec_u5\(1) & (\G1_u1|cont\(2) $ (((\MSS|selec_u5\(0) & !\G2_resta_u1|Mux1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_u1|cont\(2),
	datac => \MSS|selec_u5\(0),
	datad => \G2_resta_u1|Mux1~0_combout\,
	combout => \G2_resta_u1|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y6_N8
\G1_u1|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u1|cont[3]~1_combout\ = \G1_u1|cont\(3) $ (((\G1_u1|cont\(1) & (\G1_u1|cont\(0) & \G1_u1|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u1|cont\(1),
	datab => \G1_u1|cont\(0),
	datac => \G1_u1|cont\(3),
	datad => \G1_u1|cont\(2),
	combout => \G1_u1|cont[3]~1_combout\);

-- Location: FF_X24_Y6_N9
\G1_u1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u1~clkctrl_outclk\,
	d => \G1_u1|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u1|cont\(3));

-- Location: LCCOMB_X24_Y6_N22
\G2_resta_u1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Add0~1_combout\ = \G1_u1|cont\(3) $ (((\G1_u1|cont\(2)) # ((\G1_u1|cont\(1)) # (\G1_u1|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u1|cont\(2),
	datab => \G1_u1|cont\(3),
	datac => \G1_u1|cont\(1),
	datad => \G1_u1|cont\(0),
	combout => \G2_resta_u1|Add0~1_combout\);

-- Location: LCCOMB_X24_Y6_N12
\G1_hist_u1|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u1|cont[3]~2_combout\ = \G1_hist_u1|cont\(3) $ (((\G1_hist_u1|cont\(0) & (\G1_hist_u1|cont\(2) & \G1_hist_u1|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(0),
	datab => \G1_hist_u1|cont\(2),
	datac => \G1_hist_u1|cont\(3),
	datad => \G1_hist_u1|cont\(1),
	combout => \G1_hist_u1|cont[3]~2_combout\);

-- Location: FF_X24_Y6_N13
\G1_hist_u1|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u1~clkctrl_outclk\,
	d => \G1_hist_u1|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u1|cont\(3));

-- Location: LCCOMB_X23_Y6_N10
\G2_resta_u1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u1|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u1|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u1|cont\(3),
	datab => \MSS|selec_u5\(0),
	datac => \G1_hist_u1|cont\(3),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y6_N14
\G2_resta_u1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u1|Mux0~1_combout\ = (\G2_resta_u1|Mux0~0_combout\) # ((!\G2_resta_u1|Add0~1_combout\ & (!\MSS|selec_u5\(1) & \MSS|selec_u5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_resta_u1|Add0~1_combout\,
	datab => \MSS|selec_u5\(1),
	datac => \MSS|selec_u5\(0),
	datad => \G2_resta_u1|Mux0~0_combout\,
	combout => \G2_resta_u1|Mux0~1_combout\);

-- Location: M9K_X22_Y6_N0
\G14_u1|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u1|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u1~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u1|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y3_N10
\G2_h1|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \G2_h1|Mux14~2_combout\);

-- Location: LCCOMB_X23_Y5_N26
\G2_resta_u4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Add0~0_combout\ = \G1_u4|cont\(1) $ (\G1_u4|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u4|cont\(1),
	datad => \G1_u4|cont\(0),
	combout => \G2_resta_u4|Add0~0_combout\);

-- Location: FF_X23_Y5_N27
\G1_u4|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u4~combout\,
	d => \G2_resta_u4|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u4|cont\(1));

-- Location: LCCOMB_X23_Y2_N28
\G2_resta_u4|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Mux2~0_combout\ = (!\MSS|selec_u5\(1) & (\G1_u4|cont\(1) $ (((!\G1_u4|cont\(0) & \MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(0),
	datab => \MSS|selec_u5\(0),
	datac => \G1_u4|cont\(1),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u4|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y5_N14
\G1_u4|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u4|cont[2]~0_combout\ = \G1_u4|cont\(2) $ (((\G1_u4|cont\(1) & \G1_u4|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(1),
	datab => \G1_u4|cont\(0),
	datac => \G1_u4|cont\(2),
	combout => \G1_u4|cont[2]~0_combout\);

-- Location: FF_X23_Y5_N15
\G1_u4|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u4~combout\,
	d => \G1_u4|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u4|cont\(2));

-- Location: LCCOMB_X23_Y5_N22
\G2_resta_u4|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Mux1~0_combout\ = \G1_u4|cont\(2) $ (((!\G1_u4|cont\(1) & (!\G1_u4|cont\(0) & \MSS|selec_u5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(1),
	datab => \G1_u4|cont\(2),
	datac => \G1_u4|cont\(0),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u4|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y5_N30
\G2_resta_u4|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Mux1~1_combout\ = (\G2_resta_u4|Mux1~0_combout\ & !\MSS|selec_u5\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G2_resta_u4|Mux1~0_combout\,
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u4|Mux1~1_combout\);

-- Location: LCCOMB_X23_Y5_N12
\G3_h4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h4|Equal0~0_combout\ = (!\G1_u4|cont\(1) & (!\G1_u4|cont\(2) & !\G1_u4|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(1),
	datac => \G1_u4|cont\(2),
	datad => \G1_u4|cont\(0),
	combout => \G3_h4|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y5_N16
\G1_u4|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u4|cont[3]~1_combout\ = \G1_u4|cont\(3) $ (((\G1_u4|cont\(1) & (\G1_u4|cont\(2) & \G1_u4|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(1),
	datab => \G1_u4|cont\(2),
	datac => \G1_u4|cont\(3),
	datad => \G1_u4|cont\(0),
	combout => \G1_u4|cont[3]~1_combout\);

-- Location: FF_X23_Y5_N17
\G1_u4|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u4~combout\,
	d => \G1_u4|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u4|cont\(3));

-- Location: LCCOMB_X23_Y2_N6
\G2_resta_u4|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Mux0~0_combout\ = (!\MSS|selec_u5\(1) & (\G1_u4|cont\(3) $ (((\G3_h4|Equal0~0_combout\ & \MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_h4|Equal0~0_combout\,
	datab => \MSS|selec_u5\(0),
	datac => \G1_u4|cont\(3),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u4|Mux0~0_combout\);

-- Location: M9K_X22_Y2_N0
\G14_u4|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u4|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u4~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u4|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y3_N8
\G2_h1|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a9\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux14~3_combout\);

-- Location: LCCOMB_X21_Y3_N20
\G2_h1|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a9\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux14~4_combout\);

-- Location: LCCOMB_X21_Y3_N16
\G2_h1|Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux14~3_combout\)) # (!\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux14~3_combout\,
	datad => \G2_h1|Mux14~4_combout\,
	combout => \G2_h1|Mux14~5_combout\);

-- Location: LCCOMB_X23_Y6_N0
\MSS|Selector58~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector58~0_combout\ = ((\u2~input_o\ & (\MSS|y.Tj~q\ & !\u1~input_o\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \MSS|y.Tj~q\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \u1~input_o\,
	combout => \MSS|Selector58~0_combout\);

-- Location: LCCOMB_X23_Y6_N6
\MSS|we_u2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|we_u2~combout\ = (\MSS|Selector58~0_combout\ & ((\MSS|y.Tj~q\))) # (!\MSS|Selector58~0_combout\ & (\MSS|we_u2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u2~combout\,
	datac => \MSS|y.Tj~q\,
	datad => \MSS|Selector58~0_combout\,
	combout => \MSS|we_u2~combout\);

-- Location: LCCOMB_X27_Y9_N24
\MSS|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector35~0_combout\ = (\MSS|WideOr30~combout\) # ((!\u1~input_o\ & (\MSS|y.T1~q\ & \u2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr30~combout\,
	datab => \u1~input_o\,
	datac => \MSS|y.T1~q\,
	datad => \u2~input_o\,
	combout => \MSS|Selector35~0_combout\);

-- Location: LCCOMB_X26_Y9_N28
\MSS|ihist_u2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u2~combout\ = (\MSS|Selector35~0_combout\ & ((\MSS|y.T1~q\))) # (!\MSS|Selector35~0_combout\ & (\MSS|ihist_u2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|ihist_u2~combout\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|Selector35~0_combout\,
	combout => \MSS|ihist_u2~combout\);

-- Location: CLKCTRL_G8
\MSS|ihist_u2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u2~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y5_N16
\G1_hist_u2|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u2|cont[0]~3_combout\ = !\G1_hist_u2|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u2|cont\(0),
	combout => \G1_hist_u2|cont[0]~3_combout\);

-- Location: FF_X25_Y5_N17
\G1_hist_u2|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u2~clkctrl_outclk\,
	d => \G1_hist_u2|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u2|cont\(0));

-- Location: LCCOMB_X26_Y8_N6
\MSS|Selector67~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector67~1_combout\ = ((\MSS|Selector67~0_combout\ & \Fu_ad2~combout\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector67~0_combout\,
	datac => \Fu_ad2~combout\,
	datad => \MSS|WideOr12~0_combout\,
	combout => \MSS|Selector67~1_combout\);

-- Location: LCCOMB_X26_Y8_N26
\MSS|incremento_u2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u2~combout\ = (\MSS|Selector67~1_combout\ & (\MSS|y.Tk~q\)) # (!\MSS|Selector67~1_combout\ & ((\MSS|incremento_u2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tk~q\,
	datac => \MSS|incremento_u2~combout\,
	datad => \MSS|Selector67~1_combout\,
	combout => \MSS|incremento_u2~combout\);

-- Location: CLKCTRL_G15
\MSS|incremento_u2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|incremento_u2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|incremento_u2~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y5_N18
\G1_u2|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u2|cont[0]~2_combout\ = !\G1_u2|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u2|cont\(0),
	combout => \G1_u2|cont[0]~2_combout\);

-- Location: FF_X25_Y5_N19
\G1_u2|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u2~clkctrl_outclk\,
	d => \G1_u2|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u2|cont\(0));

-- Location: LCCOMB_X23_Y5_N8
\G2_resta_u2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (\G1_hist_u2|cont\(0) & ((!\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & ((\G1_u2|cont\(0) $ (\MSS|selec_u5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_hist_u2|cont\(0),
	datac => \G1_u2|cont\(0),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u2|Mux3~0_combout\);

-- Location: FF_X25_Y5_N13
\G1_u2|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u2~clkctrl_outclk\,
	d => \G2_resta_u2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u2|cont\(1));

-- Location: LCCOMB_X25_Y5_N12
\G2_resta_u2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Add0~0_combout\ = \G1_u2|cont\(1) $ (\G1_u2|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u2|cont\(1),
	datad => \G1_u2|cont\(0),
	combout => \G2_resta_u2|Add0~0_combout\);

-- Location: LCCOMB_X25_Y5_N4
\G1_hist_u2|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u2|cont[1]~0_combout\ = \G1_hist_u2|cont\(1) $ (\G1_hist_u2|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u2|cont\(1),
	datad => \G1_hist_u2|cont\(0),
	combout => \G1_hist_u2|cont[1]~0_combout\);

-- Location: FF_X25_Y5_N5
\G1_hist_u2|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u2~clkctrl_outclk\,
	d => \G1_hist_u2|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u2|cont\(1));

-- Location: LCCOMB_X25_Y5_N2
\G2_resta_u2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux2~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u2|cont\(1)))) # (!\MSS|selec_u5\(1) & (\G1_u2|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u2|cont\(1),
	datac => \G1_hist_u2|cont\(1),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u2|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y5_N28
\G2_resta_u2|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux2~1_combout\ = (\G2_resta_u2|Mux2~0_combout\) # ((!\MSS|selec_u5\(1) & (!\G2_resta_u2|Add0~0_combout\ & \MSS|selec_u5\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G2_resta_u2|Add0~0_combout\,
	datac => \G2_resta_u2|Mux2~0_combout\,
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u2|Mux2~1_combout\);

-- Location: LCCOMB_X25_Y5_N22
\G1_hist_u2|cont[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u2|cont[2]~1_combout\ = \G1_hist_u2|cont\(2) $ (((\G1_hist_u2|cont\(1) & \G1_hist_u2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_hist_u2|cont\(1),
	datac => \G1_hist_u2|cont\(2),
	datad => \G1_hist_u2|cont\(0),
	combout => \G1_hist_u2|cont[2]~1_combout\);

-- Location: FF_X25_Y5_N23
\G1_hist_u2|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u2~clkctrl_outclk\,
	d => \G1_hist_u2|cont[2]~1_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u2|cont\(2));

-- Location: LCCOMB_X24_Y5_N20
\G2_resta_u2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux1~0_combout\ = (\MSS|selec_u5\(0) & (((\G1_u2|cont\(0)) # (\G1_u2|cont\(1))))) # (!\MSS|selec_u5\(0) & (\G1_hist_u2|cont\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u2|cont\(2),
	datab => \G1_u2|cont\(0),
	datac => \G1_u2|cont\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u2|Mux1~0_combout\);

-- Location: LCCOMB_X25_Y5_N10
\G1_u2|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u2|cont[2]~0_combout\ = \G1_u2|cont\(2) $ (((\G1_u2|cont\(1) & \G1_u2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(1),
	datac => \G1_u2|cont\(2),
	datad => \G1_u2|cont\(0),
	combout => \G1_u2|cont[2]~0_combout\);

-- Location: FF_X25_Y5_N11
\G1_u2|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u2~clkctrl_outclk\,
	d => \G1_u2|cont[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u2|cont\(2));

-- Location: LCCOMB_X24_Y5_N28
\G2_resta_u2|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux1~1_combout\ = (\MSS|selec_u5\(1) & (\G2_resta_u2|Mux1~0_combout\ & ((!\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & (\G1_u2|cont\(2) $ (((!\G2_resta_u2|Mux1~0_combout\ & \MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G2_resta_u2|Mux1~0_combout\,
	datac => \G1_u2|cont\(2),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u2|Mux1~1_combout\);

-- Location: LCCOMB_X25_Y5_N6
\G1_u2|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u2|cont[3]~1_combout\ = \G1_u2|cont\(3) $ (((\G1_u2|cont\(2) & (\G1_u2|cont\(0) & \G1_u2|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(2),
	datab => \G1_u2|cont\(0),
	datac => \G1_u2|cont\(3),
	datad => \G1_u2|cont\(1),
	combout => \G1_u2|cont[3]~1_combout\);

-- Location: FF_X25_Y5_N7
\G1_u2|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u2~clkctrl_outclk\,
	d => \G1_u2|cont[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u2|cont\(3));

-- Location: LCCOMB_X24_Y5_N4
\G2_resta_u2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Add0~1_combout\ = \G1_u2|cont\(3) $ (((\G1_u2|cont\(2)) # ((\G1_u2|cont\(0)) # (\G1_u2|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(2),
	datab => \G1_u2|cont\(0),
	datac => \G1_u2|cont\(1),
	datad => \G1_u2|cont\(3),
	combout => \G2_resta_u2|Add0~1_combout\);

-- Location: LCCOMB_X25_Y5_N14
\G1_hist_u2|cont[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u2|cont[3]~2_combout\ = \G1_hist_u2|cont\(3) $ (((\G1_hist_u2|cont\(2) & (\G1_hist_u2|cont\(0) & \G1_hist_u2|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u2|cont\(2),
	datab => \G1_hist_u2|cont\(0),
	datac => \G1_hist_u2|cont\(3),
	datad => \G1_hist_u2|cont\(1),
	combout => \G1_hist_u2|cont[3]~2_combout\);

-- Location: FF_X25_Y5_N15
\G1_hist_u2|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u2~clkctrl_outclk\,
	d => \G1_hist_u2|cont[3]~2_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u2|cont\(3));

-- Location: LCCOMB_X24_Y5_N10
\G2_resta_u2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux0~0_combout\ = (!\MSS|selec_u5\(0) & ((\MSS|selec_u5\(1) & ((\G1_hist_u2|cont\(3)))) # (!\MSS|selec_u5\(1) & (\G1_u2|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(3),
	datab => \G1_hist_u2|cont\(3),
	datac => \MSS|selec_u5\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y5_N18
\G2_resta_u2|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u2|Mux0~1_combout\ = (\G2_resta_u2|Mux0~0_combout\) # ((!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) & !\G2_resta_u2|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \MSS|selec_u5\(0),
	datac => \G2_resta_u2|Add0~1_combout\,
	datad => \G2_resta_u2|Mux0~0_combout\,
	combout => \G2_resta_u2|Mux0~1_combout\);

-- Location: M9K_X22_Y5_N0
\G14_u2|ram_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u2|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u2~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u2|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N0
\G2_h1|Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~6_combout\ = (!\u3~input_o\ & (!\u4~input_o\ & ((!\u1~input_o\) # (!\u2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \u4~input_o\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux16~6_combout\);

-- Location: LCCOMB_X21_Y3_N18
\G2_h1|Mux14~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~6_combout\ = (\G2_h1|Mux14~5_combout\ & ((\G2_h1|Mux14~2_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux14~5_combout\ & (((\G14_u2|ram_rtl_0|auto_generated|ram_block1a9\ & \G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux14~2_combout\,
	datab => \G2_h1|Mux14~5_combout\,
	datac => \G14_u2|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux14~6_combout\);

-- Location: LCCOMB_X21_Y7_N22
\G2_h1|Mux14~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \G2_h1|Mux14~7_combout\);

-- Location: LCCOMB_X21_Y7_N16
\G2_h1|Mux14~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a9\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux14~11_combout\);

-- Location: LCCOMB_X21_Y7_N20
\G2_h1|Mux14~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~8_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux14~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux14~7_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux14~7_combout\,
	datad => \G2_h1|Mux14~11_combout\,
	combout => \G2_h1|Mux14~8_combout\);

-- Location: LCCOMB_X21_Y7_N12
\G2_h1|Mux14~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~9_combout\ = (\G2_h1|Mux14~8_combout\ & ((\G2_h1|Mux14~6_combout\) # ((!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux14~8_combout\ & (((\G14_u5|ram_rtl_0|auto_generated|ram_block1a9\ & \G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux14~6_combout\,
	datab => \G2_h1|Mux14~8_combout\,
	datac => \G14_u5|ram_rtl_0|auto_generated|ram_block1a9\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux14~9_combout\);

-- Location: LCCOMB_X26_Y5_N6
\G2_h1|Mux14~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux14~10_combout\ = (\u8~input_o\ & (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a9\)))) # (!\u8~input_o\ & ((\G2_h1|Mux14~9_combout\) # ((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \MSS|we_u8~1_combout\,
	datac => \G2_h1|Mux14~9_combout\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a9\,
	combout => \G2_h1|Mux14~10_combout\);

-- Location: LCCOMB_X20_Y6_N14
\G2_h1|Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \G2_h1|Mux17~7_combout\);

-- Location: LCCOMB_X20_Y6_N6
\G2_h1|Mux17~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~11_combout\ = (!\u5~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a6\ & (\MSS|we_u8~0_combout\ & !\u6~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \G14_u7|ram_rtl_0|auto_generated|ram_block1a6\,
	datac => \MSS|we_u8~0_combout\,
	datad => \u6~input_o\,
	combout => \G2_h1|Mux17~11_combout\);

-- Location: LCCOMB_X20_Y6_N2
\G2_h1|Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux17~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux17~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux17~7_combout\,
	datad => \G2_h1|Mux17~11_combout\,
	combout => \G2_h1|Mux17~8_combout\);

-- Location: LCCOMB_X21_Y3_N12
\G2_h1|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a6\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux17~4_combout\);

-- Location: LCCOMB_X20_Y6_N10
\G2_h1|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \G2_h1|Mux17~3_combout\);

-- Location: LCCOMB_X20_Y6_N28
\G2_h1|Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux17~3_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux17~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux17~4_combout\,
	datad => \G2_h1|Mux17~3_combout\,
	combout => \G2_h1|Mux17~5_combout\);

-- Location: LCCOMB_X20_Y6_N26
\G2_h1|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \G2_h1|Mux17~2_combout\);

-- Location: LCCOMB_X20_Y6_N4
\G2_h1|Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~6_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux17~5_combout\ & (\G2_h1|Mux17~2_combout\)) # (!\G2_h1|Mux17~5_combout\ & ((\G14_u2|ram_rtl_0|auto_generated|ram_block1a6\))))) # (!\G2_h1|Mux16~6_combout\ & (\G2_h1|Mux17~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~6_combout\,
	datab => \G2_h1|Mux17~5_combout\,
	datac => \G2_h1|Mux17~2_combout\,
	datad => \G14_u2|ram_rtl_0|auto_generated|ram_block1a6\,
	combout => \G2_h1|Mux17~6_combout\);

-- Location: LCCOMB_X20_Y6_N30
\G2_h1|Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~9_combout\ = (\G2_h1|Mux17~8_combout\ & (((\G2_h1|Mux17~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux17~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a6\ & ((\G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a6\,
	datab => \G2_h1|Mux17~8_combout\,
	datac => \G2_h1|Mux17~6_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux17~9_combout\);

-- Location: LCCOMB_X26_Y5_N14
\G2_h1|Mux17~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux17~10_combout\ = (\u8~input_o\ & (\MSS|we_u8~1_combout\ & (\G14_u8|ram_rtl_0|auto_generated|ram_block1a6\))) # (!\u8~input_o\ & ((\G2_h1|Mux17~9_combout\) # ((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \MSS|we_u8~1_combout\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a6\,
	datad => \G2_h1|Mux17~9_combout\,
	combout => \G2_h1|Mux17~10_combout\);

-- Location: LCCOMB_X21_Y5_N20
\G2_h1|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a12\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux11~2_combout\);

-- Location: LCCOMB_X21_Y5_N14
\G2_h1|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a12\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux11~3_combout\);

-- Location: LCCOMB_X21_Y5_N28
\G2_h1|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a12\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux11~4_combout\);

-- Location: LCCOMB_X21_Y5_N18
\G2_h1|Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux11~3_combout\)) # (!\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux11~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux11~3_combout\,
	datad => \G2_h1|Mux11~4_combout\,
	combout => \G2_h1|Mux11~5_combout\);

-- Location: LCCOMB_X21_Y5_N6
\G2_h1|Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~6_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux11~5_combout\ & ((\G2_h1|Mux11~2_combout\))) # (!\G2_h1|Mux11~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a12\)))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux11~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a12\,
	datab => \G2_h1|Mux11~2_combout\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux11~5_combout\,
	combout => \G2_h1|Mux11~6_combout\);

-- Location: LCCOMB_X23_Y5_N6
\G2_h1|Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a12\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux11~7_combout\);

-- Location: LCCOMB_X23_Y8_N8
\G2_h1|Mux11~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~11_combout\ = (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a12\ & (\MSS|we_u8~0_combout\ & !\u5~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \G14_u7|ram_rtl_0|auto_generated|ram_block1a12\,
	datac => \MSS|we_u8~0_combout\,
	datad => \u5~input_o\,
	combout => \G2_h1|Mux11~11_combout\);

-- Location: LCCOMB_X24_Y5_N22
\G2_h1|Mux11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux11~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux11~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux11~7_combout\,
	datad => \G2_h1|Mux11~11_combout\,
	combout => \G2_h1|Mux11~8_combout\);

-- Location: LCCOMB_X21_Y5_N30
\G2_h1|Mux11~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~9_combout\ = (\G2_h1|Mux11~8_combout\ & ((\G2_h1|Mux11~6_combout\) # ((!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux11~8_combout\ & (((\G14_u5|ram_rtl_0|auto_generated|ram_block1a12\ & \G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux11~6_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a12\,
	datac => \G2_h1|Mux11~8_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux11~9_combout\);

-- Location: LCCOMB_X25_Y5_N8
\G2_h1|Mux11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux11~10_combout\ = (\G2_h1|Mux11~9_combout\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a12\ & \MSS|we_u8~1_combout\)) # (!\u8~input_o\))) # (!\G2_h1|Mux11~9_combout\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a12\ & 
-- \MSS|we_u8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux11~9_combout\,
	datab => \u8~input_o\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a12\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux11~10_combout\);

-- Location: LCCOMB_X25_Y4_N24
\G2_h1|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a13\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux10~2_combout\);

-- Location: LCCOMB_X25_Y4_N22
\G2_h1|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a13\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux10~3_combout\);

-- Location: LCCOMB_X25_Y3_N0
\G2_h1|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \G2_h1|Mux10~4_combout\);

-- Location: LCCOMB_X25_Y4_N26
\G2_h1|Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux10~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux10~3_combout\,
	datad => \G2_h1|Mux10~4_combout\,
	combout => \G2_h1|Mux10~5_combout\);

-- Location: LCCOMB_X25_Y4_N14
\G2_h1|Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~6_combout\ = (\G2_h1|Mux10~5_combout\ & (((\G2_h1|Mux10~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux10~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a13\ & ((\G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a13\,
	datab => \G2_h1|Mux10~2_combout\,
	datac => \G2_h1|Mux10~5_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux10~6_combout\);

-- Location: LCCOMB_X21_Y8_N26
\G2_h1|Mux10~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \G2_h1|Mux10~11_combout\);

-- Location: LCCOMB_X21_Y8_N18
\G2_h1|Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \G2_h1|Mux10~7_combout\);

-- Location: LCCOMB_X21_Y8_N6
\G2_h1|Mux10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & (\G2_h1|Mux10~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux10~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux10~11_combout\,
	datad => \G2_h1|Mux10~7_combout\,
	combout => \G2_h1|Mux10~8_combout\);

-- Location: LCCOMB_X25_Y4_N0
\G2_h1|Mux10~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~9_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux10~8_combout\ & (\G2_h1|Mux10~6_combout\)) # (!\G2_h1|Mux10~8_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a13\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~21_combout\,
	datab => \G2_h1|Mux10~6_combout\,
	datac => \G14_u5|ram_rtl_0|auto_generated|ram_block1a13\,
	datad => \G2_h1|Mux10~8_combout\,
	combout => \G2_h1|Mux10~9_combout\);

-- Location: LCCOMB_X26_Y5_N30
\G2_h1|Mux10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux10~10_combout\ = (\G2_h1|Mux10~9_combout\ & (((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a13\)) # (!\u8~input_o\))) # (!\G2_h1|Mux10~9_combout\ & (\MSS|we_u8~1_combout\ & 
-- ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux10~9_combout\,
	datab => \MSS|we_u8~1_combout\,
	datac => \u8~input_o\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a13\,
	combout => \G2_h1|Mux10~10_combout\);

-- Location: LCCOMB_X26_Y5_N8
\MSS|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector25~0_combout\ = (\G2_h1|Mux11~10_combout\ & (!\G2_h1|Mux16~18_combout\ & !\G2_h1|Mux10~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux11~10_combout\,
	datab => \G2_h1|Mux16~18_combout\,
	datac => \G2_h1|Mux10~10_combout\,
	combout => \MSS|Selector25~0_combout\);

-- Location: LCCOMB_X21_Y8_N20
\G2_h1|Mux12~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a11\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux12~7_combout\);

-- Location: LCCOMB_X20_Y8_N0
\G2_h1|Mux12~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~11_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a11\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux12~11_combout\);

-- Location: LCCOMB_X20_Y8_N8
\G2_h1|Mux12~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~8_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux12~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux12~7_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux12~7_combout\,
	datad => \G2_h1|Mux12~11_combout\,
	combout => \G2_h1|Mux12~8_combout\);

-- Location: LCCOMB_X20_Y3_N20
\G2_h1|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \G2_h1|Mux12~4_combout\);

-- Location: LCCOMB_X23_Y2_N16
\G2_h1|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \G2_h1|Mux12~3_combout\);

-- Location: LCCOMB_X21_Y2_N6
\G2_h1|Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux12~3_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux12~4_combout\,
	datad => \G2_h1|Mux12~3_combout\,
	combout => \G2_h1|Mux12~5_combout\);

-- Location: LCCOMB_X21_Y6_N4
\G2_h1|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a11\,
	combout => \G2_h1|Mux12~2_combout\);

-- Location: LCCOMB_X21_Y6_N16
\G2_h1|Mux12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~6_combout\ = (\G2_h1|Mux12~5_combout\ & (((\G2_h1|Mux12~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux12~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a11\ & ((\G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux12~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a11\,
	datac => \G2_h1|Mux12~2_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux12~6_combout\);

-- Location: LCCOMB_X21_Y6_N10
\G2_h1|Mux12~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~9_combout\ = (\G2_h1|Mux12~8_combout\ & (((\G2_h1|Mux12~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux12~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a11\ & (\G2_h1|Mux16~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux12~8_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a11\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux12~6_combout\,
	combout => \G2_h1|Mux12~9_combout\);

-- Location: LCCOMB_X26_Y6_N14
\G2_h1|Mux12~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux12~10_combout\ = (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a11\) # ((!\u8~input_o\ & \G2_h1|Mux12~9_combout\)))) # (!\MSS|we_u8~1_combout\ & (!\u8~input_o\ & ((\G2_h1|Mux12~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \u8~input_o\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a11\,
	datad => \G2_h1|Mux12~9_combout\,
	combout => \G2_h1|Mux12~10_combout\);

-- Location: LCCOMB_X26_Y5_N10
\MSS|Selector22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~3_combout\ = (!\G2_h1|Mux23~10_combout\ & !\G2_h1|Mux12~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datad => \G2_h1|Mux12~10_combout\,
	combout => \MSS|Selector22~3_combout\);

-- Location: LCCOMB_X26_Y5_N24
\MSS|Selector25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector25~2_combout\ = (\G2_h1|Mux14~10_combout\ & (\G2_h1|Mux17~10_combout\ & (\MSS|Selector25~0_combout\ & \MSS|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux14~10_combout\,
	datab => \G2_h1|Mux17~10_combout\,
	datac => \MSS|Selector25~0_combout\,
	datad => \MSS|Selector22~3_combout\,
	combout => \MSS|Selector25~2_combout\);

-- Location: LCCOMB_X24_Y4_N22
\G2_h1|Mux19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a4\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux19~7_combout\);

-- Location: LCCOMB_X24_Y4_N24
\G2_h1|Mux19~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~11_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \G2_h1|Mux19~11_combout\);

-- Location: LCCOMB_X24_Y4_N28
\G2_h1|Mux19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~8_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux19~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux19~7_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux19~7_combout\,
	datad => \G2_h1|Mux19~11_combout\,
	combout => \G2_h1|Mux19~8_combout\);

-- Location: LCCOMB_X24_Y4_N8
\G2_h1|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a4\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \G2_h1|Mux19~2_combout\);

-- Location: LCCOMB_X25_Y4_N8
\G2_h1|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \G2_h1|Mux19~4_combout\);

-- Location: LCCOMB_X25_Y4_N28
\G2_h1|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a4\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a4\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux19~3_combout\);

-- Location: LCCOMB_X25_Y4_N2
\G2_h1|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux19~3_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux19~4_combout\,
	datad => \G2_h1|Mux19~3_combout\,
	combout => \G2_h1|Mux19~5_combout\);

-- Location: LCCOMB_X24_Y4_N26
\G2_h1|Mux19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~6_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux19~5_combout\ & ((\G2_h1|Mux19~2_combout\))) # (!\G2_h1|Mux19~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a4\)))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux19~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a4\,
	datab => \G2_h1|Mux16~6_combout\,
	datac => \G2_h1|Mux19~2_combout\,
	datad => \G2_h1|Mux19~5_combout\,
	combout => \G2_h1|Mux19~6_combout\);

-- Location: LCCOMB_X24_Y4_N30
\G2_h1|Mux19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~9_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux19~8_combout\ & (\G2_h1|Mux19~6_combout\)) # (!\G2_h1|Mux19~8_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a4\))))) # (!\G2_h1|Mux16~21_combout\ & (\G2_h1|Mux19~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~21_combout\,
	datab => \G2_h1|Mux19~8_combout\,
	datac => \G2_h1|Mux19~6_combout\,
	datad => \G14_u5|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \G2_h1|Mux19~9_combout\);

-- Location: LCCOMB_X24_Y4_N18
\G2_h1|Mux19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux19~10_combout\ = (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a4\) # ((!\u8~input_o\ & \G2_h1|Mux19~9_combout\)))) # (!\MSS|we_u8~1_combout\ & (!\u8~input_o\ & (\G2_h1|Mux19~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \u8~input_o\,
	datac => \G2_h1|Mux19~9_combout\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a4\,
	combout => \G2_h1|Mux19~10_combout\);

-- Location: LCCOMB_X21_Y8_N14
\G2_h1|Mux9~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \G2_h1|Mux9~11_combout\);

-- Location: LCCOMB_X21_Y8_N2
\G2_h1|Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a14\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a14\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux9~7_combout\);

-- Location: LCCOMB_X21_Y8_N12
\G2_h1|Mux9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & (\G2_h1|Mux9~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux9~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux9~11_combout\,
	datad => \G2_h1|Mux9~7_combout\,
	combout => \G2_h1|Mux9~8_combout\);

-- Location: LCCOMB_X23_Y3_N16
\G2_h1|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a14\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a14\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux9~3_combout\);

-- Location: LCCOMB_X24_Y3_N6
\G2_h1|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \G2_h1|Mux9~4_combout\);

-- Location: LCCOMB_X24_Y3_N28
\G2_h1|Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux9~3_combout\)) # (!\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux9~3_combout\,
	datad => \G2_h1|Mux9~4_combout\,
	combout => \G2_h1|Mux9~5_combout\);

-- Location: LCCOMB_X24_Y6_N28
\G2_h1|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a14\,
	combout => \G2_h1|Mux9~2_combout\);

-- Location: LCCOMB_X24_Y6_N10
\G2_h1|Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~6_combout\ = (\G2_h1|Mux9~5_combout\ & (((\G2_h1|Mux9~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux9~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a14\ & (\G2_h1|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux9~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux9~2_combout\,
	combout => \G2_h1|Mux9~6_combout\);

-- Location: LCCOMB_X24_Y6_N6
\G2_h1|Mux9~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~9_combout\ = (\G2_h1|Mux9~8_combout\ & (((\G2_h1|Mux9~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux9~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a14\ & (\G2_h1|Mux16~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux9~8_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a14\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux9~6_combout\,
	combout => \G2_h1|Mux9~9_combout\);

-- Location: LCCOMB_X25_Y5_N0
\G2_h1|Mux9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux9~10_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a14\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux9~9_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a14\ & (((!\u8~input_o\ & \G2_h1|Mux9~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a14\,
	datab => \MSS|we_u8~1_combout\,
	datac => \u8~input_o\,
	datad => \G2_h1|Mux9~9_combout\,
	combout => \G2_h1|Mux9~10_combout\);

-- Location: LCCOMB_X24_Y4_N12
\G2_h1|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a5\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a5\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux18~2_combout\);

-- Location: LCCOMB_X21_Y3_N30
\G2_h1|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~4_combout\);

-- Location: LCCOMB_X21_Y3_N6
\G2_h1|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~3_combout\);

-- Location: LCCOMB_X21_Y3_N0
\G2_h1|Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux18~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux18~4_combout\,
	datad => \G2_h1|Mux18~3_combout\,
	combout => \G2_h1|Mux18~5_combout\);

-- Location: LCCOMB_X24_Y4_N20
\G2_h1|Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~6_combout\ = (\G2_h1|Mux18~5_combout\ & ((\G2_h1|Mux18~2_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux18~5_combout\ & (((\G2_h1|Mux16~6_combout\ & \G14_u2|ram_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux18~2_combout\,
	datab => \G2_h1|Mux18~5_combout\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G14_u2|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~6_combout\);

-- Location: LCCOMB_X23_Y4_N8
\G2_h1|Mux18~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~7_combout\);

-- Location: LCCOMB_X23_Y4_N6
\G2_h1|Mux18~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~11_combout\);

-- Location: LCCOMB_X23_Y4_N24
\G2_h1|Mux18~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux18~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux18~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux18~7_combout\,
	datad => \G2_h1|Mux18~11_combout\,
	combout => \G2_h1|Mux18~8_combout\);

-- Location: LCCOMB_X23_Y4_N12
\G2_h1|Mux18~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~9_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux18~8_combout\ & ((\G2_h1|Mux18~6_combout\))) # (!\G2_h1|Mux18~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a5\)))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux18~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~21_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a5\,
	datac => \G2_h1|Mux18~6_combout\,
	datad => \G2_h1|Mux18~8_combout\,
	combout => \G2_h1|Mux18~9_combout\);

-- Location: LCCOMB_X23_Y4_N14
\G2_h1|Mux18~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux18~10_combout\ = (\G2_h1|Mux18~9_combout\ & (((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a5\)) # (!\u8~input_o\))) # (!\G2_h1|Mux18~9_combout\ & (((\MSS|we_u8~1_combout\ & 
-- \G14_u8|ram_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux18~9_combout\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a5\,
	combout => \G2_h1|Mux18~10_combout\);

-- Location: LCCOMB_X23_Y2_N30
\G2_h1|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a3\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux20~4_combout\);

-- Location: LCCOMB_X23_Y2_N20
\G2_h1|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a3\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux20~3_combout\);

-- Location: LCCOMB_X23_Y2_N10
\G2_h1|Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux20~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux20~4_combout\,
	datad => \G2_h1|Mux20~3_combout\,
	combout => \G2_h1|Mux20~5_combout\);

-- Location: LCCOMB_X23_Y9_N2
\G2_h1|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a3\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux20~2_combout\);

-- Location: LCCOMB_X23_Y9_N24
\G2_h1|Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~6_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux20~5_combout\ & ((\G2_h1|Mux20~2_combout\))) # (!\G2_h1|Mux20~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a3\)))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux20~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \G2_h1|Mux16~6_combout\,
	datac => \G2_h1|Mux20~5_combout\,
	datad => \G2_h1|Mux20~2_combout\,
	combout => \G2_h1|Mux20~6_combout\);

-- Location: LCCOMB_X23_Y9_N8
\G2_h1|Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \G2_h1|Mux20~7_combout\);

-- Location: LCCOMB_X23_Y9_N10
\G2_h1|Mux20~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~11_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a3\,
	combout => \G2_h1|Mux20~11_combout\);

-- Location: LCCOMB_X23_Y9_N14
\G2_h1|Mux20~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux20~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux20~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux20~7_combout\,
	datad => \G2_h1|Mux20~11_combout\,
	combout => \G2_h1|Mux20~8_combout\);

-- Location: LCCOMB_X23_Y9_N16
\G2_h1|Mux20~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~9_combout\ = (\G2_h1|Mux20~8_combout\ & (((\G2_h1|Mux20~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux20~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a3\ & ((\G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a3\,
	datab => \G2_h1|Mux20~6_combout\,
	datac => \G2_h1|Mux20~8_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux20~9_combout\);

-- Location: LCCOMB_X25_Y6_N28
\G2_h1|Mux20~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux20~10_combout\ = (\G2_h1|Mux20~9_combout\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a3\ & \MSS|we_u8~1_combout\)) # (!\u8~input_o\))) # (!\G2_h1|Mux20~9_combout\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a3\ & 
-- \MSS|we_u8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux20~9_combout\,
	datab => \u8~input_o\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a3\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux20~10_combout\);

-- Location: LCCOMB_X25_Y6_N12
\MSS|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~0_combout\ = (!\G2_h1|Mux19~10_combout\ & (!\G2_h1|Mux9~10_combout\ & (!\G2_h1|Mux18~10_combout\ & !\G2_h1|Mux20~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux19~10_combout\,
	datab => \G2_h1|Mux9~10_combout\,
	datac => \G2_h1|Mux18~10_combout\,
	datad => \G2_h1|Mux20~10_combout\,
	combout => \MSS|Selector24~0_combout\);

-- Location: M9K_X22_Y4_N0
\G14_u8|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u8|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u8~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u8|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y6_N0
\G14_u1|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u1|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u1~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u1|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N12
\G2_h1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a20\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~0_combout\);

-- Location: M9K_X22_Y2_N0
\G14_u4|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u4|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u4~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u4|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N22
\G2_h1|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~1_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~1_combout\);

-- Location: M9K_X22_Y3_N0
\G14_u3|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u3|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u3~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u3|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N14
\G2_h1|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~2_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~2_combout\);

-- Location: LCCOMB_X21_Y2_N24
\G2_h1|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux3~1_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux3~1_combout\,
	datad => \G2_h1|Mux3~2_combout\,
	combout => \G2_h1|Mux3~3_combout\);

-- Location: M9K_X22_Y5_N0
\G14_u2|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u2|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u2~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u2|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X21_Y2_N20
\G2_h1|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~4_combout\ = (\G2_h1|Mux3~3_combout\ & ((\G2_h1|Mux3~0_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux3~3_combout\ & (((\G2_h1|Mux16~6_combout\ & \G14_u2|ram_rtl_0|auto_generated|ram_block1a20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux3~0_combout\,
	datab => \G2_h1|Mux3~3_combout\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G14_u2|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~4_combout\);

-- Location: M9K_X22_Y9_N0
\G14_u5|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u5|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u5~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u5|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X22_Y8_N0
\G14_u6|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u6|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u6~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u6|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y8_N26
\G2_h1|Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~6_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~6_combout\);

-- Location: M9K_X22_Y7_N0
\G14_u7|ram_rtl_0|auto_generated|ram_block1a16\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "RAM:G14_u7|altsyncram:ram_rtl_0|altsyncram_jd41:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 16,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MSS|we_u7~combout\,
	portare => VCC,
	clk0 => \clock~input_o\,
	portadatain => \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAIN_bus\,
	portaaddr => \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \G14_u7|ram_rtl_0|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: LCCOMB_X23_Y8_N18
\G2_h1|Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a20\,
	combout => \G2_h1|Mux3~5_combout\);

-- Location: LCCOMB_X23_Y8_N12
\G2_h1|Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~7_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux3~5_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux3~6_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux3~6_combout\,
	datad => \G2_h1|Mux3~5_combout\,
	combout => \G2_h1|Mux3~7_combout\);

-- Location: LCCOMB_X23_Y8_N10
\G2_h1|Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux3~7_combout\ & (\G2_h1|Mux3~4_combout\)) # (!\G2_h1|Mux3~7_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a20\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux3~4_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a20\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux3~7_combout\,
	combout => \G2_h1|Mux3~8_combout\);

-- Location: LCCOMB_X23_Y8_N24
\G2_h1|Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux3~9_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a20\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux3~8_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a20\ & (!\u8~input_o\ & ((\G2_h1|Mux3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a20\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux3~8_combout\,
	combout => \G2_h1|Mux3~9_combout\);

-- Location: LCCOMB_X21_Y7_N4
\G2_h1|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~6_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a23\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a23\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux0~6_combout\);

-- Location: LCCOMB_X21_Y7_N6
\G2_h1|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a23\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a23\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux0~5_combout\);

-- Location: LCCOMB_X21_Y7_N30
\G2_h1|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~7_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux0~5_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux0~6_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux0~6_combout\,
	datad => \G2_h1|Mux0~5_combout\,
	combout => \G2_h1|Mux0~7_combout\);

-- Location: LCCOMB_X21_Y2_N8
\G2_h1|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~2_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \G2_h1|Mux0~2_combout\);

-- Location: LCCOMB_X21_Y2_N16
\G2_h1|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~1_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a23\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a23\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y2_N10
\G2_h1|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux0~1_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux0~2_combout\,
	datad => \G2_h1|Mux0~1_combout\,
	combout => \G2_h1|Mux0~3_combout\);

-- Location: LCCOMB_X21_Y6_N30
\G2_h1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~0_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a23\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a23\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux0~0_combout\);

-- Location: LCCOMB_X21_Y6_N0
\G2_h1|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~4_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux0~3_combout\ & (\G2_h1|Mux0~0_combout\)) # (!\G2_h1|Mux0~3_combout\ & ((\G14_u2|ram_rtl_0|auto_generated|ram_block1a23\))))) # (!\G2_h1|Mux16~6_combout\ & (\G2_h1|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~6_combout\,
	datab => \G2_h1|Mux0~3_combout\,
	datac => \G2_h1|Mux0~0_combout\,
	datad => \G14_u2|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \G2_h1|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y6_N26
\G2_h1|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~8_combout\ = (\G2_h1|Mux0~7_combout\ & ((\G2_h1|Mux0~4_combout\) # ((!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux0~7_combout\ & (((\G2_h1|Mux16~21_combout\ & \G14_u5|ram_rtl_0|auto_generated|ram_block1a23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux0~7_combout\,
	datab => \G2_h1|Mux0~4_combout\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G14_u5|ram_rtl_0|auto_generated|ram_block1a23\,
	combout => \G2_h1|Mux0~8_combout\);

-- Location: LCCOMB_X21_Y6_N18
\G2_h1|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux0~9_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a23\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux0~8_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a23\ & (!\u8~input_o\ & (\G2_h1|Mux0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a23\,
	datab => \u8~input_o\,
	datac => \G2_h1|Mux0~8_combout\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux0~9_combout\);

-- Location: LCCOMB_X21_Y2_N30
\G2_h1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a21\,
	combout => \G2_h1|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y2_N4
\G2_h1|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~1_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a21\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y2_N18
\G2_h1|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a21\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux2~2_combout\);

-- Location: LCCOMB_X21_Y2_N28
\G2_h1|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux2~1_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux2~1_combout\,
	datad => \G2_h1|Mux2~2_combout\,
	combout => \G2_h1|Mux2~3_combout\);

-- Location: LCCOMB_X21_Y2_N26
\G2_h1|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~4_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux2~3_combout\ & (\G2_h1|Mux2~0_combout\)) # (!\G2_h1|Mux2~3_combout\ & ((\G14_u2|ram_rtl_0|auto_generated|ram_block1a21\))))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux2~0_combout\,
	datab => \G2_h1|Mux16~6_combout\,
	datac => \G14_u2|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \G2_h1|Mux2~3_combout\,
	combout => \G2_h1|Mux2~4_combout\);

-- Location: LCCOMB_X21_Y4_N8
\G2_h1|Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~6_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a21\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux2~6_combout\);

-- Location: LCCOMB_X21_Y4_N18
\G2_h1|Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~5_combout\ = (!\u5~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a21\ & (!\u6~input_o\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \G14_u7|ram_rtl_0|auto_generated|ram_block1a21\,
	datac => \u6~input_o\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux2~5_combout\);

-- Location: LCCOMB_X21_Y4_N10
\G2_h1|Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~7_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux2~5_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux2~6_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux2~6_combout\,
	datad => \G2_h1|Mux2~5_combout\,
	combout => \G2_h1|Mux2~7_combout\);

-- Location: LCCOMB_X21_Y4_N26
\G2_h1|Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux2~7_combout\ & (\G2_h1|Mux2~4_combout\)) # (!\G2_h1|Mux2~7_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a21\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux2~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux2~4_combout\,
	datab => \G2_h1|Mux16~21_combout\,
	datac => \G14_u5|ram_rtl_0|auto_generated|ram_block1a21\,
	datad => \G2_h1|Mux2~7_combout\,
	combout => \G2_h1|Mux2~8_combout\);

-- Location: LCCOMB_X21_Y4_N4
\G2_h1|Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux2~9_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a21\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux2~8_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a21\ & (!\u8~input_o\ & (\G2_h1|Mux2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a21\,
	datab => \u8~input_o\,
	datac => \G2_h1|Mux2~8_combout\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux2~9_combout\);

-- Location: LCCOMB_X23_Y3_N12
\G2_h1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \G2_h1|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y6_N8
\G2_h1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~1_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \G2_h1|Mux1~1_combout\);

-- Location: LCCOMB_X20_Y6_N20
\G2_h1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~2_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \G2_h1|Mux1~2_combout\);

-- Location: LCCOMB_X20_Y6_N16
\G2_h1|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux1~1_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux1~1_combout\,
	datad => \G2_h1|Mux1~2_combout\,
	combout => \G2_h1|Mux1~3_combout\);

-- Location: LCCOMB_X20_Y6_N24
\G2_h1|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~4_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux1~3_combout\ & (\G2_h1|Mux1~0_combout\)) # (!\G2_h1|Mux1~3_combout\ & ((\G14_u2|ram_rtl_0|auto_generated|ram_block1a22\))))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~6_combout\,
	datab => \G2_h1|Mux1~0_combout\,
	datac => \G14_u2|ram_rtl_0|auto_generated|ram_block1a22\,
	datad => \G2_h1|Mux1~3_combout\,
	combout => \G2_h1|Mux1~4_combout\);

-- Location: LCCOMB_X21_Y7_N8
\G2_h1|Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \G2_h1|Mux1~5_combout\);

-- Location: LCCOMB_X21_Y7_N18
\G2_h1|Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~6_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a22\,
	combout => \G2_h1|Mux1~6_combout\);

-- Location: LCCOMB_X21_Y7_N0
\G2_h1|Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~7_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux1~5_combout\)) # (!\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux1~6_combout\))))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux1~5_combout\,
	datad => \G2_h1|Mux1~6_combout\,
	combout => \G2_h1|Mux1~7_combout\);

-- Location: LCCOMB_X20_Y6_N0
\G2_h1|Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~8_combout\ = (\G2_h1|Mux1~7_combout\ & (((\G2_h1|Mux1~4_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux1~7_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a22\ & ((\G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a22\,
	datab => \G2_h1|Mux1~4_combout\,
	datac => \G2_h1|Mux1~7_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux1~8_combout\);

-- Location: LCCOMB_X20_Y6_N12
\G2_h1|Mux1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux1~9_combout\ = (\u8~input_o\ & (\G14_u8|ram_rtl_0|auto_generated|ram_block1a22\ & (\MSS|we_u8~1_combout\))) # (!\u8~input_o\ & ((\G2_h1|Mux1~8_combout\) # ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a22\ & \MSS|we_u8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \G14_u8|ram_rtl_0|auto_generated|ram_block1a22\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux1~8_combout\,
	combout => \G2_h1|Mux1~9_combout\);

-- Location: LCCOMB_X21_Y6_N28
\MSS|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~4_combout\ = (!\G2_h1|Mux3~9_combout\ & (!\G2_h1|Mux0~9_combout\ & (\G2_h1|Mux2~9_combout\ & \G2_h1|Mux1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux3~9_combout\,
	datab => \G2_h1|Mux0~9_combout\,
	datac => \G2_h1|Mux2~9_combout\,
	datad => \G2_h1|Mux1~9_combout\,
	combout => \MSS|Selector19~4_combout\);

-- Location: LCCOMB_X21_Y5_N10
\G2_h1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~0_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a18\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y3_N4
\G2_h1|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a18\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y3_N10
\G2_h1|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~1_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a18\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux5~1_combout\);

-- Location: LCCOMB_X23_Y3_N18
\G2_h1|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux5~1_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux5~2_combout\,
	datad => \G2_h1|Mux5~1_combout\,
	combout => \G2_h1|Mux5~3_combout\);

-- Location: LCCOMB_X21_Y5_N24
\G2_h1|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~4_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux5~3_combout\ & (\G2_h1|Mux5~0_combout\)) # (!\G2_h1|Mux5~3_combout\ & ((\G14_u2|ram_rtl_0|auto_generated|ram_block1a18\))))) # (!\G2_h1|Mux16~6_combout\ & (((\G2_h1|Mux5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux5~0_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a18\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux5~3_combout\,
	combout => \G2_h1|Mux5~4_combout\);

-- Location: LCCOMB_X25_Y8_N20
\G2_h1|Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~6_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a18\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux5~6_combout\);

-- Location: LCCOMB_X23_Y6_N24
\G2_h1|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~5_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a18\,
	combout => \G2_h1|Mux5~5_combout\);

-- Location: LCCOMB_X24_Y8_N18
\G2_h1|Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~7_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux5~5_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux5~6_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux5~6_combout\,
	datad => \G2_h1|Mux5~5_combout\,
	combout => \G2_h1|Mux5~7_combout\);

-- Location: LCCOMB_X24_Y8_N24
\G2_h1|Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux5~7_combout\ & (\G2_h1|Mux5~4_combout\)) # (!\G2_h1|Mux5~7_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a18\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux5~4_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a18\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux5~7_combout\,
	combout => \G2_h1|Mux5~8_combout\);

-- Location: LCCOMB_X25_Y8_N18
\G2_h1|Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux5~9_combout\ = (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a18\) # ((!\u8~input_o\ & \G2_h1|Mux5~8_combout\)))) # (!\MSS|we_u8~1_combout\ & (!\u8~input_o\ & ((\G2_h1|Mux5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \u8~input_o\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a18\,
	datad => \G2_h1|Mux5~8_combout\,
	combout => \G2_h1|Mux5~9_combout\);

-- Location: LCCOMB_X23_Y3_N26
\G2_h1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a19\,
	combout => \G2_h1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y3_N30
\G2_h1|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a19\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y3_N28
\G2_h1|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~1_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a19\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y3_N8
\G2_h1|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux4~1_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux4~2_combout\,
	datad => \G2_h1|Mux4~1_combout\,
	combout => \G2_h1|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y3_N0
\G2_h1|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~4_combout\ = (\G2_h1|Mux4~3_combout\ & ((\G2_h1|Mux4~0_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux4~3_combout\ & (((\G14_u2|ram_rtl_0|auto_generated|ram_block1a19\ & \G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux4~0_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a19\,
	datac => \G2_h1|Mux4~3_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux4~4_combout\);

-- Location: LCCOMB_X21_Y4_N14
\G2_h1|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a19\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux4~5_combout\);

-- Location: LCCOMB_X21_Y4_N12
\G2_h1|Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~6_combout\ = (\G14_u6|ram_rtl_0|auto_generated|ram_block1a19\ & (!\u5~input_o\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u6|ram_rtl_0|auto_generated|ram_block1a19\,
	datac => \u5~input_o\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux4~6_combout\);

-- Location: LCCOMB_X21_Y4_N28
\G2_h1|Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~7_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & (\G2_h1|Mux4~5_combout\))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux4~6_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux4~5_combout\,
	datad => \G2_h1|Mux4~6_combout\,
	combout => \G2_h1|Mux4~7_combout\);

-- Location: LCCOMB_X21_Y4_N2
\G2_h1|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux4~7_combout\ & ((\G2_h1|Mux4~4_combout\))) # (!\G2_h1|Mux4~7_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a19\)))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a19\,
	datab => \G2_h1|Mux16~21_combout\,
	datac => \G2_h1|Mux4~4_combout\,
	datad => \G2_h1|Mux4~7_combout\,
	combout => \G2_h1|Mux4~8_combout\);

-- Location: LCCOMB_X21_Y4_N30
\G2_h1|Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux4~9_combout\ = (\u8~input_o\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a19\ & \MSS|we_u8~1_combout\)))) # (!\u8~input_o\ & ((\G2_h1|Mux4~8_combout\) # ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a19\ & \MSS|we_u8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \G2_h1|Mux4~8_combout\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a19\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux4~9_combout\);

-- Location: LCCOMB_X21_Y8_N30
\G2_h1|Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~6_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a17\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a17\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux6~6_combout\);

-- Location: LCCOMB_X21_Y8_N10
\G2_h1|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a17\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a17\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux6~5_combout\);

-- Location: LCCOMB_X21_Y8_N4
\G2_h1|Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~7_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux6~5_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux6~6_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux6~6_combout\,
	datad => \G2_h1|Mux6~5_combout\,
	combout => \G2_h1|Mux6~7_combout\);

-- Location: LCCOMB_X25_Y4_N20
\G2_h1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \G2_h1|Mux6~0_combout\);

-- Location: LCCOMB_X25_Y4_N30
\G2_h1|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~1_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a17\,
	combout => \G2_h1|Mux6~1_combout\);

-- Location: LCCOMB_X25_Y4_N18
\G2_h1|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a17\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a17\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux6~2_combout\);

-- Location: LCCOMB_X25_Y4_N4
\G2_h1|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux6~1_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux6~1_combout\,
	datad => \G2_h1|Mux6~2_combout\,
	combout => \G2_h1|Mux6~3_combout\);

-- Location: LCCOMB_X25_Y4_N16
\G2_h1|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~4_combout\ = (\G2_h1|Mux6~3_combout\ & (((\G2_h1|Mux6~0_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux6~3_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a17\ & ((\G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a17\,
	datab => \G2_h1|Mux6~0_combout\,
	datac => \G2_h1|Mux6~3_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux6~4_combout\);

-- Location: LCCOMB_X25_Y4_N10
\G2_h1|Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~8_combout\ = (\G2_h1|Mux6~7_combout\ & (((\G2_h1|Mux6~4_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux6~7_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a17\ & (\G2_h1|Mux16~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a17\,
	datab => \G2_h1|Mux6~7_combout\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux6~4_combout\,
	combout => \G2_h1|Mux6~8_combout\);

-- Location: LCCOMB_X25_Y4_N6
\G2_h1|Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux6~9_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a17\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux6~8_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a17\ & (!\u8~input_o\ & ((\G2_h1|Mux6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a17\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux6~8_combout\,
	combout => \G2_h1|Mux6~9_combout\);

-- Location: LCCOMB_X21_Y3_N22
\G2_h1|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~0_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \G2_h1|Mux7~0_combout\);

-- Location: LCCOMB_X21_Y3_N4
\G2_h1|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux7~2_combout\);

-- Location: LCCOMB_X21_Y3_N28
\G2_h1|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~1_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \G2_h1|Mux7~1_combout\);

-- Location: LCCOMB_X21_Y3_N14
\G2_h1|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~3_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux7~1_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux7~2_combout\,
	datad => \G2_h1|Mux7~1_combout\,
	combout => \G2_h1|Mux7~3_combout\);

-- Location: LCCOMB_X21_Y3_N2
\G2_h1|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~4_combout\ = (\G2_h1|Mux7~3_combout\ & ((\G2_h1|Mux7~0_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux7~3_combout\ & (((\G14_u2|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ & \G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux7~0_combout\,
	datab => \G2_h1|Mux7~3_combout\,
	datac => \G14_u2|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux7~4_combout\);

-- Location: LCCOMB_X21_Y7_N26
\G2_h1|Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~6_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a16~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \G2_h1|Mux7~6_combout\);

-- Location: LCCOMB_X21_Y7_N28
\G2_h1|Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a16~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \G2_h1|Mux7~5_combout\);

-- Location: LCCOMB_X21_Y7_N2
\G2_h1|Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~7_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux7~5_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux7~6_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux7~6_combout\,
	datad => \G2_h1|Mux7~5_combout\,
	combout => \G2_h1|Mux7~7_combout\);

-- Location: LCCOMB_X21_Y3_N26
\G2_h1|Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux7~7_combout\ & (\G2_h1|Mux7~4_combout\)) # (!\G2_h1|Mux7~7_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a16~portadataout\))))) # (!\G2_h1|Mux16~21_combout\ & 
-- (((\G2_h1|Mux7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~21_combout\,
	datab => \G2_h1|Mux7~4_combout\,
	datac => \G2_h1|Mux7~7_combout\,
	datad => \G14_u5|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	combout => \G2_h1|Mux7~8_combout\);

-- Location: LCCOMB_X25_Y4_N12
\G2_h1|Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux7~9_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux7~8_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a16~portadataout\ & (!\u8~input_o\ & 
-- ((\G2_h1|Mux7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a16~portadataout\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux7~8_combout\,
	combout => \G2_h1|Mux7~9_combout\);

-- Location: LCCOMB_X26_Y4_N10
\MSS|Selector19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~5_combout\ = (\G2_h1|Mux5~9_combout\ & (!\G2_h1|Mux4~9_combout\ & (\G2_h1|Mux6~9_combout\ & \G2_h1|Mux7~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux5~9_combout\,
	datab => \G2_h1|Mux4~9_combout\,
	datac => \G2_h1|Mux6~9_combout\,
	datad => \G2_h1|Mux7~9_combout\,
	combout => \MSS|Selector19~5_combout\);

-- Location: LCCOMB_X21_Y6_N22
\G2_h1|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~0_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a15\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux8~0_combout\);

-- Location: LCCOMB_X20_Y3_N4
\G2_h1|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~2_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a15\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux8~2_combout\);

-- Location: LCCOMB_X20_Y3_N6
\G2_h1|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~1_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \G2_h1|Mux8~1_combout\);

-- Location: LCCOMB_X20_Y3_N10
\G2_h1|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~3_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & ((\G2_h1|Mux8~1_combout\)))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux8~2_combout\,
	datad => \G2_h1|Mux8~1_combout\,
	combout => \G2_h1|Mux8~3_combout\);

-- Location: LCCOMB_X21_Y6_N6
\G2_h1|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~4_combout\ = (\G2_h1|Mux8~3_combout\ & ((\G2_h1|Mux8~0_combout\) # ((!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux8~3_combout\ & (((\G14_u2|ram_rtl_0|auto_generated|ram_block1a15\ & \G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux8~0_combout\,
	datab => \G2_h1|Mux8~3_combout\,
	datac => \G14_u2|ram_rtl_0|auto_generated|ram_block1a15\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux8~4_combout\);

-- Location: LCCOMB_X21_Y8_N8
\G2_h1|Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~6_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \G2_h1|Mux8~6_combout\);

-- Location: LCCOMB_X21_Y8_N0
\G2_h1|Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~5_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \G2_h1|Mux8~5_combout\);

-- Location: LCCOMB_X21_Y8_N22
\G2_h1|Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~7_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux8~5_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux8~6_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux8~6_combout\,
	datad => \G2_h1|Mux8~5_combout\,
	combout => \G2_h1|Mux8~7_combout\);

-- Location: LCCOMB_X21_Y6_N12
\G2_h1|Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~8_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux8~7_combout\ & (\G2_h1|Mux8~4_combout\)) # (!\G2_h1|Mux8~7_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a15\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux8~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux8~4_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a15\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux8~7_combout\,
	combout => \G2_h1|Mux8~8_combout\);

-- Location: LCCOMB_X21_Y6_N24
\G2_h1|Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux8~9_combout\ = (\G2_h1|Mux8~8_combout\ & (((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a15\)) # (!\u8~input_o\))) # (!\G2_h1|Mux8~8_combout\ & (((\MSS|we_u8~1_combout\ & \G14_u8|ram_rtl_0|auto_generated|ram_block1a15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux8~8_combout\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a15\,
	combout => \G2_h1|Mux8~9_combout\);

-- Location: LCCOMB_X28_Y8_N14
\MSS|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~3_combout\ = (!\G2_h1|Mux8~9_combout\ & (!\MSS|WideOr32~0_combout\ & ((\MSS|y.Tv~q\) # (\MSS|y.Tx~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux8~9_combout\,
	datab => \MSS|y.Tv~q\,
	datac => \MSS|WideOr32~0_combout\,
	datad => \MSS|y.Tx~q\,
	combout => \MSS|Selector19~3_combout\);

-- Location: LCCOMB_X27_Y6_N10
\MSS|Selector19~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~10_combout\ = (\MSS|Selector19~4_combout\ & (\MSS|Selector19~5_combout\ & \MSS|Selector19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~4_combout\,
	datac => \MSS|Selector19~5_combout\,
	datad => \MSS|Selector19~3_combout\,
	combout => \MSS|Selector19~10_combout\);

-- Location: LCCOMB_X26_Y5_N26
\MSS|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~1_combout\ = (\MSS|Selector24~0_combout\ & (!\G2_h1|Mux21~10_combout\ & (\MSS|Selector19~10_combout\ & \MSS|Selector23~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector24~0_combout\,
	datab => \G2_h1|Mux21~10_combout\,
	datac => \MSS|Selector19~10_combout\,
	datad => \MSS|Selector23~4_combout\,
	combout => \MSS|Selector24~1_combout\);

-- Location: LCCOMB_X26_Y5_N28
\MSS|Selector25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector25~3_combout\ = (\MSS|Selector19~1_combout\ & (\u4~input_o\ & ((\G2_h1|Mux16~19_combout\)))) # (!\MSS|Selector19~1_combout\ & (((\G3_nu4|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u4~input_o\,
	datab => \G3_nu4|Equal0~2_combout\,
	datac => \G2_h1|Mux16~19_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector25~3_combout\);

-- Location: LCCOMB_X26_Y5_N2
\MSS|Selector25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector25~4_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector25~3_combout\) # ((\MSS|Selector25~2_combout\ & \MSS|Selector24~1_combout\)))) # (!\MSS|Selector19~0_combout\ & (\MSS|Selector25~2_combout\ & (\MSS|Selector24~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~0_combout\,
	datab => \MSS|Selector25~2_combout\,
	datac => \MSS|Selector24~1_combout\,
	datad => \MSS|Selector25~3_combout\,
	combout => \MSS|Selector25~4_combout\);

-- Location: LCCOMB_X25_Y8_N8
\MSS|led4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led4~combout\ = (\MSS|Selector25~4_combout\ & (!\MSS|Selector16~0_combout\)) # (!\MSS|Selector25~4_combout\ & ((\MSS|led4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector16~0_combout\,
	datac => \MSS|led4~combout\,
	datad => \MSS|Selector25~4_combout\,
	combout => \MSS|led4~combout\);

-- Location: FF_X25_Y8_N27
\G7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led4~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G7|q~q\);

-- Location: LCCOMB_X25_Y8_N6
Fu_ad4 : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad4~combout\ = (\u4~input_o\ & (\G7|q~q\ & ((\uf~5_combout\) # (\uf~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~5_combout\,
	datab => \u4~input_o\,
	datac => \G7|q~q\,
	datad => \uf~3_combout\,
	combout => \Fu_ad4~combout\);

-- Location: LCCOMB_X26_Y8_N12
\MSS|Selector65~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector65~0_combout\ = ((!\Fu_ad3~combout\ & (\Fu_ad4~combout\ & \MSS|Selector61~1_combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fu_ad3~combout\,
	datab => \Fu_ad4~combout\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \MSS|Selector61~1_combout\,
	combout => \MSS|Selector65~0_combout\);

-- Location: LCCOMB_X26_Y8_N14
\MSS|incremento_u4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u4~combout\ = (\MSS|Selector65~0_combout\ & (\MSS|y.Tk~q\)) # (!\MSS|Selector65~0_combout\ & ((\MSS|incremento_u4~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tk~q\,
	datac => \MSS|incremento_u4~combout\,
	datad => \MSS|Selector65~0_combout\,
	combout => \MSS|incremento_u4~combout\);

-- Location: LCCOMB_X23_Y5_N28
\G1_u4|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u4|cont[0]~2_combout\ = !\G1_u4|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u4|cont\(0),
	combout => \G1_u4|cont[0]~2_combout\);

-- Location: FF_X23_Y5_N29
\G1_u4|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u4~combout\,
	d => \G1_u4|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u4|cont\(0));

-- Location: LCCOMB_X23_Y2_N22
\G2_resta_u4|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u4|Mux3~0_combout\ = (!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) $ (\G1_u4|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|selec_u5\(0),
	datac => \G1_u4|cont\(0),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u4|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y3_N12
\G2_h1|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \G2_h1|Mux22~3_combout\);

-- Location: LCCOMB_X24_Y3_N24
\G2_h1|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux22~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux22~4_combout\,
	datad => \G2_h1|Mux22~3_combout\,
	combout => \G2_h1|Mux22~5_combout\);

-- Location: LCCOMB_X23_Y6_N8
\G2_h1|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a1\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux22~2_combout\);

-- Location: LCCOMB_X23_Y5_N2
\G2_h1|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~6_combout\ = (\G2_h1|Mux22~5_combout\ & (((\G2_h1|Mux22~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux22~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a1\ & (\G2_h1|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux22~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux22~2_combout\,
	combout => \G2_h1|Mux22~6_combout\);

-- Location: LCCOMB_X23_Y8_N6
\G2_h1|Mux22~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \G2_h1|Mux22~11_combout\);

-- Location: LCCOMB_X24_Y8_N10
\G2_h1|Mux22~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a1\,
	combout => \G2_h1|Mux22~7_combout\);

-- Location: LCCOMB_X24_Y8_N28
\G2_h1|Mux22~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & (\G2_h1|Mux22~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux22~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux22~11_combout\,
	datad => \G2_h1|Mux22~7_combout\,
	combout => \G2_h1|Mux22~8_combout\);

-- Location: LCCOMB_X23_Y8_N16
\G2_h1|Mux22~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~9_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux22~8_combout\ & ((\G2_h1|Mux22~6_combout\))) # (!\G2_h1|Mux22~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a1\)))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux22~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~21_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a1\,
	datac => \G2_h1|Mux22~6_combout\,
	datad => \G2_h1|Mux22~8_combout\,
	combout => \G2_h1|Mux22~9_combout\);

-- Location: LCCOMB_X26_Y6_N8
\G2_h1|Mux22~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux22~10_combout\ = (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a1\) # ((!\u8~input_o\ & \G2_h1|Mux22~9_combout\)))) # (!\MSS|we_u8~1_combout\ & (!\u8~input_o\ & ((\G2_h1|Mux22~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \u8~input_o\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a1\,
	datad => \G2_h1|Mux22~9_combout\,
	combout => \G2_h1|Mux22~10_combout\);

-- Location: LCCOMB_X23_Y2_N14
\G2_h1|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \G2_h1|Mux15~4_combout\);

-- Location: LCCOMB_X23_Y2_N18
\G2_h1|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \G2_h1|Mux15~3_combout\);

-- Location: LCCOMB_X23_Y2_N26
\G2_h1|Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux15~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux15~4_combout\,
	datad => \G2_h1|Mux15~3_combout\,
	combout => \G2_h1|Mux15~5_combout\);

-- Location: LCCOMB_X23_Y2_N0
\G2_h1|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a8\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \G2_h1|Mux15~2_combout\);

-- Location: LCCOMB_X23_Y2_N4
\G2_h1|Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~6_combout\ = (\G2_h1|Mux15~5_combout\ & (((\G2_h1|Mux15~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux15~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a8\ & (\G2_h1|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux15~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a8\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux15~2_combout\,
	combout => \G2_h1|Mux15~6_combout\);

-- Location: LCCOMB_X21_Y4_N22
\G2_h1|Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a8\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux15~7_combout\);

-- Location: LCCOMB_X21_Y7_N14
\G2_h1|Mux15~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a8\,
	combout => \G2_h1|Mux15~11_combout\);

-- Location: LCCOMB_X21_Y4_N24
\G2_h1|Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux15~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux15~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux15~7_combout\,
	datad => \G2_h1|Mux15~11_combout\,
	combout => \G2_h1|Mux15~8_combout\);

-- Location: LCCOMB_X21_Y4_N20
\G2_h1|Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~9_combout\ = (\G2_h1|Mux16~21_combout\ & ((\G2_h1|Mux15~8_combout\ & (\G2_h1|Mux15~6_combout\)) # (!\G2_h1|Mux15~8_combout\ & ((\G14_u5|ram_rtl_0|auto_generated|ram_block1a8\))))) # (!\G2_h1|Mux16~21_combout\ & (((\G2_h1|Mux15~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux15~6_combout\,
	datab => \G2_h1|Mux16~21_combout\,
	datac => \G14_u5|ram_rtl_0|auto_generated|ram_block1a8\,
	datad => \G2_h1|Mux15~8_combout\,
	combout => \G2_h1|Mux15~9_combout\);

-- Location: LCCOMB_X26_Y4_N0
\G2_h1|Mux15~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux15~10_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a8\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux15~9_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a8\ & (!\u8~input_o\ & ((\G2_h1|Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a8\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux15~9_combout\,
	combout => \G2_h1|Mux15~10_combout\);

-- Location: LCCOMB_X26_Y6_N6
\MSS|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector26~0_combout\ = (\G2_h1|Mux23~10_combout\ & (!\G2_h1|Mux22~10_combout\ & (\G2_h1|Mux13~10_combout\ & !\G2_h1|Mux15~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datab => \G2_h1|Mux22~10_combout\,
	datac => \G2_h1|Mux13~10_combout\,
	datad => \G2_h1|Mux15~10_combout\,
	combout => \MSS|Selector26~0_combout\);

-- Location: LCCOMB_X27_Y6_N20
\MSS|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector25~1_combout\ = (\G2_h1|Mux14~10_combout\ & \G2_h1|Mux17~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G2_h1|Mux14~10_combout\,
	datad => \G2_h1|Mux17~10_combout\,
	combout => \MSS|Selector25~1_combout\);

-- Location: LCCOMB_X27_Y6_N26
\MSS|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~0_combout\ = (\MSS|Selector19~4_combout\ & (\MSS|Selector19~5_combout\ & (\G2_h1|Mux19~10_combout\ & \MSS|Selector19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~4_combout\,
	datab => \MSS|Selector19~5_combout\,
	datac => \G2_h1|Mux19~10_combout\,
	datad => \MSS|Selector19~3_combout\,
	combout => \MSS|Selector22~0_combout\);

-- Location: LCCOMB_X26_Y5_N18
\MSS|Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~2_combout\ = (\G2_h1|Mux10~10_combout\ & (!\G2_h1|Mux20~10_combout\ & (!\G2_h1|Mux9~10_combout\ & \G2_h1|Mux21~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux10~10_combout\,
	datab => \G2_h1|Mux20~10_combout\,
	datac => \G2_h1|Mux9~10_combout\,
	datad => \G2_h1|Mux21~10_combout\,
	combout => \MSS|Selector23~2_combout\);

-- Location: LCCOMB_X27_Y6_N2
\MSS|Selector23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~3_combout\ = (\MSS|Selector19~6_combout\ & (\MSS|Selector25~1_combout\ & (\MSS|Selector22~0_combout\ & \MSS|Selector23~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~6_combout\,
	datab => \MSS|Selector25~1_combout\,
	datac => \MSS|Selector22~0_combout\,
	datad => \MSS|Selector23~2_combout\,
	combout => \MSS|Selector23~3_combout\);

-- Location: LCCOMB_X27_Y10_N4
\MSS|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector26~1_combout\ = (\MSS|Selector19~1_combout\ & (((\MSS|Selector34~0_combout\)))) # (!\MSS|Selector19~1_combout\ & (\G3_nu6|Equal0~2_combout\ & (\G3_nu3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu6|Equal0~2_combout\,
	datab => \MSS|Selector19~1_combout\,
	datac => \G3_nu3|Equal0~0_combout\,
	datad => \MSS|Selector34~0_combout\,
	combout => \MSS|Selector26~1_combout\);

-- Location: LCCOMB_X27_Y10_N22
\MSS|Selector26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector26~2_combout\ = (\MSS|Selector26~0_combout\ & ((\MSS|Selector23~3_combout\) # ((\MSS|Selector26~1_combout\ & \MSS|Selector19~0_combout\)))) # (!\MSS|Selector26~0_combout\ & (((\MSS|Selector26~1_combout\ & \MSS|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector26~0_combout\,
	datab => \MSS|Selector23~3_combout\,
	datac => \MSS|Selector26~1_combout\,
	datad => \MSS|Selector19~0_combout\,
	combout => \MSS|Selector26~2_combout\);

-- Location: LCCOMB_X27_Y8_N10
\MSS|led3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led3~combout\ = (\MSS|Selector26~2_combout\ & ((!\MSS|Selector16~0_combout\))) # (!\MSS|Selector26~2_combout\ & (\MSS|led3~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector26~2_combout\,
	datac => \MSS|led3~combout\,
	datad => \MSS|Selector16~0_combout\,
	combout => \MSS|led3~combout\);

-- Location: FF_X27_Y8_N21
\G6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led3~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G6|q~q\);

-- Location: LCCOMB_X27_Y8_N20
Fu_ad3 : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad3~combout\ = (\u3~input_o\ & (\G6|q~q\ & ((\uf~3_combout\) # (\uf~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~3_combout\,
	datab => \u3~input_o\,
	datac => \G6|q~q\,
	datad => \uf~5_combout\,
	combout => \Fu_ad3~combout\);

-- Location: LCCOMB_X26_Y8_N0
\MSS|Selector62~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector62~0_combout\ = (!\Fu_ad3~combout\ & (!\Fu_ad4~combout\ & (!\Fu_ad2~combout\ & \MSS|Selector67~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fu_ad3~combout\,
	datab => \Fu_ad4~combout\,
	datac => \Fu_ad2~combout\,
	datad => \MSS|Selector67~0_combout\,
	combout => \MSS|Selector62~0_combout\);

-- Location: LCCOMB_X28_Y8_N2
\MSS|Selector24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~4_combout\ = (\MSS|Selector19~1_combout\ & (\MSS|we_u8~0_combout\ & (\u5~input_o\))) # (!\MSS|Selector19~1_combout\ & (((\G3_nu5|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~0_combout\,
	datab => \u5~input_o\,
	datac => \G3_nu5|Equal0~5_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector24~4_combout\);

-- Location: LCCOMB_X26_Y5_N20
\MSS|Selector24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~2_combout\ = (\G2_h1|Mux23~10_combout\ & (!\G2_h1|Mux17~10_combout\ & (\G2_h1|Mux10~10_combout\ & \G2_h1|Mux12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datab => \G2_h1|Mux17~10_combout\,
	datac => \G2_h1|Mux10~10_combout\,
	datad => \G2_h1|Mux12~10_combout\,
	combout => \MSS|Selector24~2_combout\);

-- Location: LCCOMB_X25_Y5_N26
\MSS|Selector24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~3_combout\ = (!\G2_h1|Mux14~10_combout\ & (!\G2_h1|Mux11~10_combout\ & (\MSS|Selector24~2_combout\ & \G2_h1|Mux16~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux14~10_combout\,
	datab => \G2_h1|Mux11~10_combout\,
	datac => \MSS|Selector24~2_combout\,
	datad => \G2_h1|Mux16~18_combout\,
	combout => \MSS|Selector24~3_combout\);

-- Location: LCCOMB_X25_Y5_N20
\MSS|Selector24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector24~5_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector24~4_combout\) # ((\MSS|Selector24~3_combout\ & \MSS|Selector24~1_combout\)))) # (!\MSS|Selector19~0_combout\ & (((\MSS|Selector24~3_combout\ & \MSS|Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~0_combout\,
	datab => \MSS|Selector24~4_combout\,
	datac => \MSS|Selector24~3_combout\,
	datad => \MSS|Selector24~1_combout\,
	combout => \MSS|Selector24~5_combout\);

-- Location: LCCOMB_X25_Y8_N22
\MSS|led5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led5~combout\ = (\MSS|Selector24~5_combout\ & ((!\MSS|Selector16~0_combout\))) # (!\MSS|Selector24~5_combout\ & (\MSS|led5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|led5~combout\,
	datac => \MSS|Selector16~0_combout\,
	datad => \MSS|Selector24~5_combout\,
	combout => \MSS|led5~combout\);

-- Location: FF_X25_Y8_N25
\G8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led5~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G8|q~q\);

-- Location: LCCOMB_X25_Y8_N24
Fu_ad5 : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad5~combout\ = (\u5~input_o\ & (\G8|q~q\ & ((\uf~5_combout\) # (\uf~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~5_combout\,
	datab => \u5~input_o\,
	datac => \G8|q~q\,
	datad => \uf~3_combout\,
	combout => \Fu_ad5~combout\);

-- Location: LCCOMB_X26_Y8_N4
\MSS|Selector64~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector64~0_combout\ = ((\MSS|Selector62~0_combout\ & \Fu_ad5~combout\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector62~0_combout\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \Fu_ad5~combout\,
	combout => \MSS|Selector64~0_combout\);

-- Location: LCCOMB_X26_Y8_N22
\MSS|incremento_u5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u5~combout\ = (\MSS|Selector64~0_combout\ & ((\MSS|y.Tk~q\))) # (!\MSS|Selector64~0_combout\ & (\MSS|incremento_u5~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|incremento_u5~combout\,
	datac => \MSS|Selector64~0_combout\,
	datad => \MSS|y.Tk~q\,
	combout => \MSS|incremento_u5~combout\);

-- Location: LCCOMB_X25_Y7_N24
\G1_u5|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u5|cont[0]~2_combout\ = !\G1_u5|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u5|cont\(0),
	combout => \G1_u5|cont[0]~2_combout\);

-- Location: FF_X25_Y7_N25
\G1_u5|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u5~combout\,
	d => \G1_u5|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u5|cont\(0));

-- Location: LCCOMB_X23_Y9_N12
\G2_resta_u5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u5|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (((\G1_hist_u5|cont\(0) & !\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & (\G1_u5|cont\(0) $ (((\MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(1),
	datab => \G1_u5|cont\(0),
	datac => \G1_hist_u5|cont\(0),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u5|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y5_N4
\G2_h1|Mux16~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~11_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a7\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux16~11_combout\);

-- Location: LCCOMB_X21_Y5_N16
\G2_h1|Mux16~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~12_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a7\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux16~12_combout\);

-- Location: LCCOMB_X21_Y5_N26
\G2_h1|Mux16~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~13_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux16~11_combout\)) # (!\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux16~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux16~11_combout\,
	datad => \G2_h1|Mux16~12_combout\,
	combout => \G2_h1|Mux16~13_combout\);

-- Location: LCCOMB_X21_Y5_N12
\G2_h1|Mux16~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~10_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a7\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a7\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux16~10_combout\);

-- Location: LCCOMB_X21_Y5_N22
\G2_h1|Mux16~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~14_combout\ = (\G2_h1|Mux16~6_combout\ & ((\G2_h1|Mux16~13_combout\ & ((\G2_h1|Mux16~10_combout\))) # (!\G2_h1|Mux16~13_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a7\)))) # (!\G2_h1|Mux16~6_combout\ & 
-- (((\G2_h1|Mux16~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u2|ram_rtl_0|auto_generated|ram_block1a7\,
	datab => \G2_h1|Mux16~6_combout\,
	datac => \G2_h1|Mux16~13_combout\,
	datad => \G2_h1|Mux16~10_combout\,
	combout => \G2_h1|Mux16~14_combout\);

-- Location: LCCOMB_X21_Y5_N8
\G2_h1|Mux16~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~17_combout\ = (\G2_h1|Mux16~16_combout\ & (((\G2_h1|Mux16~14_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux16~16_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a7\ & ((\G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~16_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a7\,
	datac => \G2_h1|Mux16~14_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux16~17_combout\);

-- Location: LCCOMB_X21_Y5_N0
\G2_h1|Mux16~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux16~18_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a7\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux16~17_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a7\ & (!\u8~input_o\ & ((\G2_h1|Mux16~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a7\,
	datab => \u8~input_o\,
	datac => \MSS|we_u8~1_combout\,
	datad => \G2_h1|Mux16~17_combout\,
	combout => \G2_h1|Mux16~18_combout\);

-- Location: LCCOMB_X27_Y6_N30
\MSS|Selector19~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~6_combout\ = (!\G2_h1|Mux16~18_combout\ & (!\G2_h1|Mux18~10_combout\ & (!\G2_h1|Mux11~10_combout\ & !\G2_h1|Mux12~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~18_combout\,
	datab => \G2_h1|Mux18~10_combout\,
	datac => \G2_h1|Mux11~10_combout\,
	datad => \G2_h1|Mux12~10_combout\,
	combout => \MSS|Selector19~6_combout\);

-- Location: LCCOMB_X26_Y6_N2
\MSS|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~0_combout\ = (\G2_h1|Mux23~10_combout\ & (!\G2_h1|Mux21~10_combout\ & (\G2_h1|Mux13~10_combout\ & !\G2_h1|Mux14~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datab => \G2_h1|Mux21~10_combout\,
	datac => \G2_h1|Mux13~10_combout\,
	datad => \G2_h1|Mux14~10_combout\,
	combout => \MSS|Selector21~0_combout\);

-- Location: LCCOMB_X27_Y6_N22
\MSS|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~1_combout\ = (\MSS|Selector19~6_combout\ & (\MSS|Selector22~0_combout\ & \MSS|Selector21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~6_combout\,
	datac => \MSS|Selector22~0_combout\,
	datad => \MSS|Selector21~0_combout\,
	combout => \MSS|Selector21~1_combout\);

-- Location: LCCOMB_X26_Y6_N4
\MSS|Selector21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~2_combout\ = (\G2_h1|Mux9~10_combout\ & (\G2_h1|Mux22~10_combout\ & !\G2_h1|Mux20~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux9~10_combout\,
	datac => \G2_h1|Mux22~10_combout\,
	datad => \G2_h1|Mux20~10_combout\,
	combout => \MSS|Selector21~2_combout\);

-- Location: LCCOMB_X28_Y8_N6
\MSS|Selector21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~3_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector19~1_combout\ & ((\MSS|we_u8~1_combout\))) # (!\MSS|Selector19~1_combout\ & (\G3_nu8|Equal0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_nu8|Equal0~8_combout\,
	datab => \MSS|Selector19~0_combout\,
	datac => \MSS|we_u8~1_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector21~3_combout\);

-- Location: LCCOMB_X27_Y5_N28
\MSS|Selector21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~4_combout\ = (!\G2_h1|Mux15~10_combout\ & (!\G2_h1|Mux10~10_combout\ & \G2_h1|Mux17~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux15~10_combout\,
	datab => \G2_h1|Mux10~10_combout\,
	datad => \G2_h1|Mux17~10_combout\,
	combout => \MSS|Selector21~4_combout\);

-- Location: LCCOMB_X27_Y6_N28
\MSS|Selector21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector21~5_combout\ = (\MSS|Selector21~3_combout\) # ((\MSS|Selector21~1_combout\ & (\MSS|Selector21~2_combout\ & \MSS|Selector21~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector21~1_combout\,
	datab => \MSS|Selector21~2_combout\,
	datac => \MSS|Selector21~3_combout\,
	datad => \MSS|Selector21~4_combout\,
	combout => \MSS|Selector21~5_combout\);

-- Location: LCCOMB_X28_Y8_N28
\MSS|led8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led8~combout\ = (\MSS|Selector21~5_combout\ & ((!\MSS|Selector16~0_combout\))) # (!\MSS|Selector21~5_combout\ & (\MSS|led8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|led8~combout\,
	datac => \MSS|Selector21~5_combout\,
	datad => \MSS|Selector16~0_combout\,
	combout => \MSS|led8~combout\);

-- Location: LCCOMB_X28_Y8_N10
\G11|q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G11|q~feeder_combout\ = \MSS|led8~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MSS|led8~combout\,
	combout => \G11|q~feeder_combout\);

-- Location: FF_X28_Y8_N11
\G11|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	d => \G11|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G11|q~q\);

-- Location: LCCOMB_X28_Y8_N22
\MSS|Selector61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector61~0_combout\ = (\u8~input_o\ & \G11|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u8~input_o\,
	datad => \G11|q~q\,
	combout => \MSS|Selector61~0_combout\);

-- Location: LCCOMB_X26_Y8_N2
\MSS|Selector61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector61~2_combout\ = ((\uf~6_combout\ & (\MSS|Selector61~1_combout\ & \MSS|Selector61~0_combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~6_combout\,
	datab => \MSS|Selector61~1_combout\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \MSS|Selector61~0_combout\,
	combout => \MSS|Selector61~2_combout\);

-- Location: LCCOMB_X26_Y8_N10
\MSS|incremento_u8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u8~combout\ = (\MSS|Selector61~2_combout\ & ((\MSS|y.Tk~q\))) # (!\MSS|Selector61~2_combout\ & (\MSS|incremento_u8~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|incremento_u8~combout\,
	datac => \MSS|y.Tk~q\,
	datad => \MSS|Selector61~2_combout\,
	combout => \MSS|incremento_u8~combout\);

-- Location: LCCOMB_X23_Y4_N0
\G1_u8|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u8|cont[0]~2_combout\ = !\G1_u8|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u8|cont\(0),
	combout => \G1_u8|cont[0]~2_combout\);

-- Location: FF_X23_Y4_N1
\G1_u8|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u8~combout\,
	d => \G1_u8|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u8|cont\(0));

-- Location: LCCOMB_X23_Y4_N10
\G2_resta_u8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u8|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (!\MSS|selec_u5\(0) & ((\G1_hist_u8|cont\(0))))) # (!\MSS|selec_u5\(1) & (\MSS|selec_u5\(0) $ ((\G1_u8|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|selec_u5\(0),
	datab => \G1_u8|cont\(0),
	datac => \MSS|selec_u5\(1),
	datad => \G1_hist_u8|cont\(0),
	combout => \G2_resta_u8|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y9_N26
\G2_h1|Mux21~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~7_combout\ = (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u6|ram_rtl_0|auto_generated|ram_block1a2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u6|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \G2_h1|Mux21~7_combout\);

-- Location: LCCOMB_X23_Y9_N18
\G2_h1|Mux21~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~11_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \G2_h1|Mux21~11_combout\);

-- Location: LCCOMB_X23_Y9_N20
\G2_h1|Mux21~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~8_combout\ = (\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux21~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux21~7_combout\)) # (!\G2_h1|Mux16~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~8_combout\,
	datab => \G2_h1|Mux16~9_combout\,
	datac => \G2_h1|Mux21~7_combout\,
	datad => \G2_h1|Mux21~11_combout\,
	combout => \G2_h1|Mux21~8_combout\);

-- Location: LCCOMB_X23_Y2_N8
\G2_h1|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a2\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux21~4_combout\);

-- Location: LCCOMB_X23_Y2_N24
\G2_h1|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a2\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a2\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux21~3_combout\);

-- Location: LCCOMB_X23_Y2_N12
\G2_h1|Mux21~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~5_combout\ = (\uf~1_combout\ & (!\G2_h1|Mux16~7_combout\)) # (!\uf~1_combout\ & ((\G2_h1|Mux16~7_combout\ & ((\G2_h1|Mux21~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & (\G2_h1|Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~1_combout\,
	datab => \G2_h1|Mux16~7_combout\,
	datac => \G2_h1|Mux21~4_combout\,
	datad => \G2_h1|Mux21~3_combout\,
	combout => \G2_h1|Mux21~5_combout\);

-- Location: LCCOMB_X23_Y9_N28
\G2_h1|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a2\,
	combout => \G2_h1|Mux21~2_combout\);

-- Location: LCCOMB_X23_Y9_N4
\G2_h1|Mux21~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~6_combout\ = (\G2_h1|Mux21~5_combout\ & (((\G2_h1|Mux21~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux21~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a2\ & (\G2_h1|Mux16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux21~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a2\,
	datac => \G2_h1|Mux16~6_combout\,
	datad => \G2_h1|Mux21~2_combout\,
	combout => \G2_h1|Mux21~6_combout\);

-- Location: LCCOMB_X23_Y9_N6
\G2_h1|Mux21~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~9_combout\ = (\G2_h1|Mux21~8_combout\ & (((\G2_h1|Mux21~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux21~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a2\ & ((\G2_h1|Mux16~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u5|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \G2_h1|Mux21~8_combout\,
	datac => \G2_h1|Mux21~6_combout\,
	datad => \G2_h1|Mux16~21_combout\,
	combout => \G2_h1|Mux21~9_combout\);

-- Location: LCCOMB_X26_Y5_N0
\G2_h1|Mux21~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux21~10_combout\ = (\G14_u8|ram_rtl_0|auto_generated|ram_block1a2\ & ((\MSS|we_u8~1_combout\) # ((!\u8~input_o\ & \G2_h1|Mux21~9_combout\)))) # (!\G14_u8|ram_rtl_0|auto_generated|ram_block1a2\ & (((!\u8~input_o\ & \G2_h1|Mux21~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G14_u8|ram_rtl_0|auto_generated|ram_block1a2\,
	datab => \MSS|we_u8~1_combout\,
	datac => \u8~input_o\,
	datad => \G2_h1|Mux21~9_combout\,
	combout => \G2_h1|Mux21~10_combout\);

-- Location: LCCOMB_X26_Y5_N4
\MSS|Selector19~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~7_combout\ = (\G2_h1|Mux20~10_combout\ & (!\G2_h1|Mux9~10_combout\ & !\G2_h1|Mux22~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G2_h1|Mux20~10_combout\,
	datac => \G2_h1|Mux9~10_combout\,
	datad => \G2_h1|Mux22~10_combout\,
	combout => \MSS|Selector19~7_combout\);

-- Location: LCCOMB_X26_Y5_N12
\MSS|Selector22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~4_combout\ = (\G2_h1|Mux13~10_combout\ & (!\G2_h1|Mux21~10_combout\ & (\MSS|Selector19~7_combout\ & \MSS|Selector22~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux13~10_combout\,
	datab => \G2_h1|Mux21~10_combout\,
	datac => \MSS|Selector19~7_combout\,
	datad => \MSS|Selector22~3_combout\,
	combout => \MSS|Selector22~4_combout\);

-- Location: LCCOMB_X27_Y6_N6
\MSS|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~1_combout\ = (\G2_h1|Mux18~10_combout\ & (!\G2_h1|Mux15~10_combout\ & (!\G2_h1|Mux14~10_combout\ & !\G2_h1|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux18~10_combout\,
	datab => \G2_h1|Mux15~10_combout\,
	datac => \G2_h1|Mux14~10_combout\,
	datad => \G2_h1|Mux17~10_combout\,
	combout => \MSS|Selector22~1_combout\);

-- Location: LCCOMB_X27_Y6_N8
\MSS|Selector22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~2_combout\ = (\MSS|Selector22~1_combout\ & (\MSS|Selector22~0_combout\ & \MSS|Selector25~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector22~1_combout\,
	datac => \MSS|Selector22~0_combout\,
	datad => \MSS|Selector25~0_combout\,
	combout => \MSS|Selector22~2_combout\);

-- Location: LCCOMB_X28_Y8_N8
\MSS|Selector22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector22~6_combout\ = (\MSS|Selector22~5_combout\ & ((\MSS|Selector19~0_combout\) # ((\MSS|Selector22~4_combout\ & \MSS|Selector22~2_combout\)))) # (!\MSS|Selector22~5_combout\ & (((\MSS|Selector22~4_combout\ & \MSS|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector22~5_combout\,
	datab => \MSS|Selector19~0_combout\,
	datac => \MSS|Selector22~4_combout\,
	datad => \MSS|Selector22~2_combout\,
	combout => \MSS|Selector22~6_combout\);

-- Location: LCCOMB_X25_Y8_N30
\MSS|led7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led7~combout\ = (\MSS|Selector22~6_combout\ & (!\MSS|Selector16~0_combout\)) # (!\MSS|Selector22~6_combout\ & ((\MSS|led7~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector16~0_combout\,
	datac => \MSS|led7~combout\,
	datad => \MSS|Selector22~6_combout\,
	combout => \MSS|led7~combout\);

-- Location: FF_X25_Y8_N13
\G10|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led7~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G10|q~q\);

-- Location: LCCOMB_X25_Y8_N12
\MSS|Selector62~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector62~1_combout\ = (\u7~input_o\ & (!\Fu_ad6~combout\ & (\G10|q~q\ & \uf~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u7~input_o\,
	datab => \Fu_ad6~combout\,
	datac => \G10|q~q\,
	datad => \uf~6_combout\,
	combout => \MSS|Selector62~1_combout\);

-- Location: LCCOMB_X26_Y7_N18
\MSS|Selector62~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector62~2_combout\ = ((\MSS|Selector62~1_combout\ & (!\Fu_ad5~combout\ & \MSS|Selector62~0_combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector62~1_combout\,
	datab => \MSS|WideOr12~0_combout\,
	datac => \Fu_ad5~combout\,
	datad => \MSS|Selector62~0_combout\,
	combout => \MSS|Selector62~2_combout\);

-- Location: LCCOMB_X25_Y7_N6
\MSS|incremento_u7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u7~combout\ = (\MSS|Selector62~2_combout\ & ((\MSS|y.Tk~q\))) # (!\MSS|Selector62~2_combout\ & (\MSS|incremento_u7~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|incremento_u7~combout\,
	datac => \MSS|y.Tk~q\,
	datad => \MSS|Selector62~2_combout\,
	combout => \MSS|incremento_u7~combout\);

-- Location: LCCOMB_X24_Y7_N28
\G1_u7|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u7|cont[0]~2_combout\ = !\G1_u7|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u7|cont\(0),
	combout => \G1_u7|cont[0]~2_combout\);

-- Location: FF_X24_Y7_N29
\G1_u7|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u7~combout\,
	d => \G1_u7|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u7|cont\(0));

-- Location: LCCOMB_X21_Y7_N24
\G2_resta_u7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u7|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (((\G1_hist_u7|cont\(0) & !\MSS|selec_u5\(0))))) # (!\MSS|selec_u5\(1) & (\G1_u7|cont\(0) $ (((\MSS|selec_u5\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(0),
	datab => \G1_hist_u7|cont\(0),
	datac => \MSS|selec_u5\(1),
	datad => \MSS|selec_u5\(0),
	combout => \G2_resta_u7|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y8_N28
\G2_h1|Mux13~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~11_combout\ = (!\u6~input_o\ & (!\u5~input_o\ & (\MSS|we_u8~0_combout\ & \G14_u7|ram_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u6~input_o\,
	datab => \u5~input_o\,
	datac => \MSS|we_u8~0_combout\,
	datad => \G14_u7|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \G2_h1|Mux13~11_combout\);

-- Location: LCCOMB_X20_Y8_N20
\G2_h1|Mux13~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~8_combout\ = (\G2_h1|Mux16~9_combout\ & ((\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux13~11_combout\))) # (!\G2_h1|Mux16~8_combout\ & (\G2_h1|Mux13~7_combout\)))) # (!\G2_h1|Mux16~9_combout\ & (!\G2_h1|Mux16~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~9_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux13~7_combout\,
	datad => \G2_h1|Mux13~11_combout\,
	combout => \G2_h1|Mux13~8_combout\);

-- Location: LCCOMB_X23_Y3_N14
\G2_h1|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~3_combout\ = (!\u2~input_o\ & (!\u3~input_o\ & (!\u1~input_o\ & \G14_u4|ram_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datab => \u3~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u4|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \G2_h1|Mux13~3_combout\);

-- Location: LCCOMB_X23_Y3_N2
\G2_h1|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~4_combout\ = (!\u2~input_o\ & (\G14_u3|ram_rtl_0|auto_generated|ram_block1a10\ & !\u1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2~input_o\,
	datac => \G14_u3|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux13~4_combout\);

-- Location: LCCOMB_X23_Y3_N24
\G2_h1|Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux13~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux13~3_combout\,
	datad => \G2_h1|Mux13~4_combout\,
	combout => \G2_h1|Mux13~5_combout\);

-- Location: LCCOMB_X23_Y6_N26
\G2_h1|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~2_combout\ = (\G14_u1|ram_rtl_0|auto_generated|ram_block1a10\ & \u1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G14_u1|ram_rtl_0|auto_generated|ram_block1a10\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux13~2_combout\);

-- Location: LCCOMB_X23_Y6_N22
\G2_h1|Mux13~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~6_combout\ = (\G2_h1|Mux13~5_combout\ & (((\G2_h1|Mux13~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux13~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a10\ & ((\G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux13~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \G2_h1|Mux13~2_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux13~6_combout\);

-- Location: LCCOMB_X21_Y6_N20
\G2_h1|Mux13~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~9_combout\ = (\G2_h1|Mux13~8_combout\ & (((\G2_h1|Mux13~6_combout\) # (!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux13~8_combout\ & (\G14_u5|ram_rtl_0|auto_generated|ram_block1a10\ & (\G2_h1|Mux16~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux13~8_combout\,
	datab => \G14_u5|ram_rtl_0|auto_generated|ram_block1a10\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G2_h1|Mux13~6_combout\,
	combout => \G2_h1|Mux13~9_combout\);

-- Location: LCCOMB_X26_Y6_N30
\G2_h1|Mux13~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux13~10_combout\ = (\MSS|we_u8~1_combout\ & ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a10\) # ((!\u8~input_o\ & \G2_h1|Mux13~9_combout\)))) # (!\MSS|we_u8~1_combout\ & (!\u8~input_o\ & (\G2_h1|Mux13~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|we_u8~1_combout\,
	datab => \u8~input_o\,
	datac => \G2_h1|Mux13~9_combout\,
	datad => \G14_u8|ram_rtl_0|auto_generated|ram_block1a10\,
	combout => \G2_h1|Mux13~10_combout\);

-- Location: LCCOMB_X26_Y6_N22
\MSS|Selector23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~4_combout\ = (!\G2_h1|Mux13~10_combout\ & (\G2_h1|Mux22~10_combout\ & \G2_h1|Mux15~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux13~10_combout\,
	datac => \G2_h1|Mux22~10_combout\,
	datad => \G2_h1|Mux15~10_combout\,
	combout => \MSS|Selector23~4_combout\);

-- Location: LCCOMB_X26_Y10_N24
\MSS|Selector23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector23~7_combout\ = (\MSS|Selector23~6_combout\) # ((!\G2_h1|Mux23~10_combout\ & (\MSS|Selector23~4_combout\ & \MSS|Selector23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datab => \MSS|Selector23~6_combout\,
	datac => \MSS|Selector23~4_combout\,
	datad => \MSS|Selector23~3_combout\,
	combout => \MSS|Selector23~7_combout\);

-- Location: LCCOMB_X25_Y8_N4
\MSS|led6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led6~combout\ = (\MSS|Selector23~7_combout\ & (!\MSS|Selector16~0_combout\)) # (!\MSS|Selector23~7_combout\ & ((\MSS|led6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector16~0_combout\,
	datac => \MSS|led6~combout\,
	datad => \MSS|Selector23~7_combout\,
	combout => \MSS|led6~combout\);

-- Location: FF_X25_Y8_N15
\G9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led6~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G9|q~q\);

-- Location: LCCOMB_X25_Y8_N14
Fu_ad6 : cycloneive_lcell_comb
-- Equation(s):
-- \Fu_ad6~combout\ = (\u6~input_o\ & (\G9|q~q\ & ((\uf~5_combout\) # (\uf~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~5_combout\,
	datab => \u6~input_o\,
	datac => \G9|q~q\,
	datad => \uf~3_combout\,
	combout => \Fu_ad6~combout\);

-- Location: LCCOMB_X26_Y8_N8
\MSS|Selector63~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector63~0_combout\ = ((\Fu_ad6~combout\ & (\MSS|Selector62~0_combout\ & !\Fu_ad5~combout\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fu_ad6~combout\,
	datab => \MSS|Selector62~0_combout\,
	datac => \MSS|WideOr12~0_combout\,
	datad => \Fu_ad5~combout\,
	combout => \MSS|Selector63~0_combout\);

-- Location: LCCOMB_X26_Y8_N20
\MSS|incremento_u6\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|incremento_u6~combout\ = (\MSS|Selector63~0_combout\ & (\MSS|y.Tk~q\)) # (!\MSS|Selector63~0_combout\ & ((\MSS|incremento_u6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tk~q\,
	datab => \MSS|incremento_u6~combout\,
	datac => \MSS|Selector63~0_combout\,
	combout => \MSS|incremento_u6~combout\);

-- Location: LCCOMB_X24_Y8_N20
\G1_u6|cont[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_u6|cont[0]~2_combout\ = !\G1_u6|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_u6|cont\(0),
	combout => \G1_u6|cont[0]~2_combout\);

-- Location: FF_X24_Y8_N21
\G1_u6|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|incremento_u6~combout\,
	d => \G1_u6|cont[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_u6|cont\(0));

-- Location: LCCOMB_X23_Y8_N20
\G2_resta_u6|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_resta_u6|Mux3~0_combout\ = (\MSS|selec_u5\(1) & (((!\MSS|selec_u5\(0) & \G1_hist_u6|cont\(0))))) # (!\MSS|selec_u5\(1) & (\G1_u6|cont\(0) $ ((\MSS|selec_u5\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(0),
	datab => \MSS|selec_u5\(0),
	datac => \G1_hist_u6|cont\(0),
	datad => \MSS|selec_u5\(1),
	combout => \G2_resta_u6|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y8_N6
\G2_h1|Mux23~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~7_combout\ = (!\u5~input_o\ & (\G14_u6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & \MSS|we_u8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u5~input_o\,
	datac => \G14_u6|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux23~7_combout\);

-- Location: LCCOMB_X21_Y8_N16
\G2_h1|Mux23~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~11_combout\ = (!\u5~input_o\ & (!\u6~input_o\ & (\G14_u7|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & \MSS|we_u8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u5~input_o\,
	datab => \u6~input_o\,
	datac => \G14_u7|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \MSS|we_u8~0_combout\,
	combout => \G2_h1|Mux23~11_combout\);

-- Location: LCCOMB_X20_Y8_N14
\G2_h1|Mux23~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~8_combout\ = (\G2_h1|Mux16~8_combout\ & (((\G2_h1|Mux16~9_combout\ & \G2_h1|Mux23~11_combout\)))) # (!\G2_h1|Mux16~8_combout\ & ((\G2_h1|Mux23~7_combout\) # ((!\G2_h1|Mux16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~7_combout\,
	datab => \G2_h1|Mux16~8_combout\,
	datac => \G2_h1|Mux16~9_combout\,
	datad => \G2_h1|Mux23~11_combout\,
	combout => \G2_h1|Mux23~8_combout\);

-- Location: LCCOMB_X20_Y3_N22
\G2_h1|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~3_combout\ = (!\u3~input_o\ & (!\u2~input_o\ & (\G14_u4|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & !\u1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3~input_o\,
	datab => \u2~input_o\,
	datac => \G14_u4|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \u1~input_o\,
	combout => \G2_h1|Mux23~3_combout\);

-- Location: LCCOMB_X21_Y3_N24
\G2_h1|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~4_combout\ = (!\u2~input_o\ & (!\u1~input_o\ & \G14_u3|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2~input_o\,
	datac => \u1~input_o\,
	datad => \G14_u3|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \G2_h1|Mux23~4_combout\);

-- Location: LCCOMB_X20_Y3_N16
\G2_h1|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~5_combout\ = (\G2_h1|Mux16~7_combout\ & (!\uf~1_combout\ & (\G2_h1|Mux23~3_combout\))) # (!\G2_h1|Mux16~7_combout\ & ((\uf~1_combout\) # ((\G2_h1|Mux23~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~7_combout\,
	datab => \uf~1_combout\,
	datac => \G2_h1|Mux23~3_combout\,
	datad => \G2_h1|Mux23~4_combout\,
	combout => \G2_h1|Mux23~5_combout\);

-- Location: LCCOMB_X21_Y6_N8
\G2_h1|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~2_combout\ = (\u1~input_o\ & \G14_u1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u1~input_o\,
	datad => \G14_u1|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \G2_h1|Mux23~2_combout\);

-- Location: LCCOMB_X21_Y6_N14
\G2_h1|Mux23~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~6_combout\ = (\G2_h1|Mux23~5_combout\ & (((\G2_h1|Mux23~2_combout\) # (!\G2_h1|Mux16~6_combout\)))) # (!\G2_h1|Mux23~5_combout\ & (\G14_u2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & ((\G2_h1|Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~5_combout\,
	datab => \G14_u2|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datac => \G2_h1|Mux23~2_combout\,
	datad => \G2_h1|Mux16~6_combout\,
	combout => \G2_h1|Mux23~6_combout\);

-- Location: LCCOMB_X21_Y6_N2
\G2_h1|Mux23~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~9_combout\ = (\G2_h1|Mux23~8_combout\ & ((\G2_h1|Mux23~6_combout\) # ((!\G2_h1|Mux16~21_combout\)))) # (!\G2_h1|Mux23~8_combout\ & (((\G2_h1|Mux16~21_combout\ & \G14_u5|ram_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~8_combout\,
	datab => \G2_h1|Mux23~6_combout\,
	datac => \G2_h1|Mux16~21_combout\,
	datad => \G14_u5|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \G2_h1|Mux23~9_combout\);

-- Location: LCCOMB_X23_Y6_N30
\G2_h1|Mux23~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_h1|Mux23~10_combout\ = (\u8~input_o\ & (((\G14_u8|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & \MSS|we_u8~1_combout\)))) # (!\u8~input_o\ & ((\G2_h1|Mux23~9_combout\) # ((\G14_u8|ram_rtl_0|auto_generated|ram_block1a0~portadataout\ & 
-- \MSS|we_u8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u8~input_o\,
	datab => \G2_h1|Mux23~9_combout\,
	datac => \G14_u8|ram_rtl_0|auto_generated|ram_block1a0~portadataout\,
	datad => \MSS|we_u8~1_combout\,
	combout => \G2_h1|Mux23~10_combout\);

-- Location: LCCOMB_X26_Y6_N12
\MSS|Selector27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector27~2_combout\ = (\G2_h1|Mux23~10_combout\ & (\G2_h1|Mux12~10_combout\ & (!\G2_h1|Mux13~10_combout\ & \G2_h1|Mux21~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datab => \G2_h1|Mux12~10_combout\,
	datac => \G2_h1|Mux13~10_combout\,
	datad => \G2_h1|Mux21~10_combout\,
	combout => \MSS|Selector27~2_combout\);

-- Location: LCCOMB_X28_Y8_N12
\MSS|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector27~0_combout\ = (!\u1~input_o\ & (\u2~input_o\ & (!\MSS|y.Tw~q\ & !\MSS|y.Tu~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1~input_o\,
	datab => \u2~input_o\,
	datac => \MSS|y.Tw~q\,
	datad => \MSS|y.Tu~q\,
	combout => \MSS|Selector27~0_combout\);

-- Location: LCCOMB_X28_Y8_N24
\MSS|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector27~1_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector27~0_combout\) # ((\G3_nu2|Equal0~2_combout\ & !\MSS|Selector19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector27~0_combout\,
	datab => \MSS|Selector19~0_combout\,
	datac => \G3_nu2|Equal0~2_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector27~1_combout\);

-- Location: LCCOMB_X27_Y6_N4
\MSS|Selector27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector27~3_combout\ = (\MSS|Selector27~1_combout\) # ((\MSS|Selector27~2_combout\ & (\MSS|Selector21~2_combout\ & \MSS|Selector22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector27~2_combout\,
	datab => \MSS|Selector21~2_combout\,
	datac => \MSS|Selector22~2_combout\,
	datad => \MSS|Selector27~1_combout\,
	combout => \MSS|Selector27~3_combout\);

-- Location: LCCOMB_X27_Y8_N28
\MSS|led2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led2~combout\ = (\MSS|Selector27~3_combout\ & ((!\MSS|Selector16~0_combout\))) # (!\MSS|Selector27~3_combout\ & (\MSS|led2~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|led2~combout\,
	datac => \MSS|Selector27~3_combout\,
	datad => \MSS|Selector16~0_combout\,
	combout => \MSS|led2~combout\);

-- Location: FF_X27_Y8_N1
\G5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G5|q~q\);

-- Location: LCCOMB_X27_Y9_N4
Fu : cycloneive_lcell_comb
-- Equation(s):
-- \Fu~combout\ = (\uf~6_combout\ & (\Gsr_4|PB_SIN_REBOTE~q\ & ((\G4|q~q\) # (\G5|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uf~6_combout\,
	datab => \Gsr_4|PB_SIN_REBOTE~q\,
	datac => \G4|q~q\,
	datad => \G5|q~q\,
	combout => \Fu~combout\);

-- Location: LCCOMB_X26_Y9_N8
\MSS|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector8~0_combout\ = (\Gsr_5|PB_SIN_REBOTE~q\ & ((\MSS|y.T_hist~q\) # ((!\Fu~combout\ & \MSS|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fu~combout\,
	datab => \Gsr_5|PB_SIN_REBOTE~q\,
	datac => \MSS|y.T_hist~q\,
	datad => \MSS|Selector5~0_combout\,
	combout => \MSS|Selector8~0_combout\);

-- Location: FF_X26_Y9_N9
\MSS|y.T_hist\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|Selector8~0_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T_hist~q\);

-- Location: LCCOMB_X26_Y9_N12
\MSS|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector9~0_combout\ = (\MSS|y.T1~q\) # ((!\Gsr_5|PB_SIN_REBOTE~q\ & \MSS|y.T_hist~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_5|PB_SIN_REBOTE~q\,
	datab => \MSS|y.T1~q\,
	datac => \MSS|y.T_hist~q\,
	combout => \MSS|Selector9~0_combout\);

-- Location: FF_X26_Y9_N13
\MSS|y.T_hist1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|Selector9~0_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T_hist1~q\);

-- Location: CLKCTRL_G3
\G|clock_100hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_100hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_100hz_int~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y33_N28
\G|count_10hz[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10hz[1]~1_combout\ = \G|count_10hz\(1) $ (\G|count_10hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_10hz\(1),
	datad => \G|count_10hz\(0),
	combout => \G|count_10hz[1]~1_combout\);

-- Location: FF_X25_Y33_N29
\G|count_10hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100hz_int~clkctrl_outclk\,
	d => \G|count_10hz[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10hz\(1));

-- Location: LCCOMB_X25_Y33_N26
\G|count_10hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10hz~2_combout\ = (\G|count_10hz\(1) & (\G|count_10hz\(2) $ (\G|count_10hz\(0)))) # (!\G|count_10hz\(1) & (\G|count_10hz\(2) & \G|count_10hz\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_10hz\(1),
	datac => \G|count_10hz\(2),
	datad => \G|count_10hz\(0),
	combout => \G|count_10hz~2_combout\);

-- Location: FF_X25_Y33_N27
\G|count_10hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100hz_int~clkctrl_outclk\,
	d => \G|count_10hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10hz\(2));

-- Location: LCCOMB_X25_Y33_N22
\G|count_10hz~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_10hz~0_combout\ = (!\G|count_10hz\(0) & ((\G|count_10hz\(1)) # (!\G|count_10hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_10hz\(1),
	datac => \G|count_10hz\(0),
	datad => \G|count_10hz\(2),
	combout => \G|count_10hz~0_combout\);

-- Location: FF_X25_Y33_N23
\G|count_10hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100hz_int~clkctrl_outclk\,
	d => \G|count_10hz~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_10hz\(0));

-- Location: LCCOMB_X25_Y33_N30
\G|clock_10hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_10hz_int~0_combout\ = \G|clock_10hz_int~q\ $ (((!\G|count_10hz\(0) & (\G|count_10hz\(2) & !\G|count_10hz\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|clock_10hz_int~q\,
	datab => \G|count_10hz\(0),
	datac => \G|count_10hz\(2),
	datad => \G|count_10hz\(1),
	combout => \G|clock_10hz_int~0_combout\);

-- Location: LCCOMB_X25_Y33_N12
\G|clock_10hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_10hz_int~feeder_combout\ = \G|clock_10hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|clock_10hz_int~0_combout\,
	combout => \G|clock_10hz_int~feeder_combout\);

-- Location: FF_X25_Y33_N13
\G|clock_10hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_100hz_int~clkctrl_outclk\,
	d => \G|clock_10hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_10hz_int~q\);

-- Location: CLKCTRL_G10
\G|clock_10hz_int~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|clock_10hz_int~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|clock_10hz_int~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y32_N22
\G|count_1hz[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1hz[1]~0_combout\ = \G|count_1hz\(1) $ (\G|count_1hz\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G|count_1hz\(1),
	datad => \G|count_1hz\(0),
	combout => \G|count_1hz[1]~0_combout\);

-- Location: FF_X25_Y32_N23
\G|count_1hz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10hz_int~clkctrl_outclk\,
	d => \G|count_1hz[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1hz\(1));

-- Location: LCCOMB_X25_Y32_N20
\G|count_1hz~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1hz~1_combout\ = (!\G|count_1hz\(0) & ((\G|count_1hz\(1)) # (!\G|count_1hz\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1hz\(2),
	datac => \G|count_1hz\(0),
	datad => \G|count_1hz\(1),
	combout => \G|count_1hz~1_combout\);

-- Location: FF_X25_Y32_N21
\G|count_1hz[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10hz_int~clkctrl_outclk\,
	d => \G|count_1hz~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1hz\(0));

-- Location: LCCOMB_X25_Y32_N26
\G|count_1hz~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|count_1hz~2_combout\ = (\G|count_1hz\(0) & (\G|count_1hz\(2) $ (\G|count_1hz\(1)))) # (!\G|count_1hz\(0) & (\G|count_1hz\(2) & \G|count_1hz\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G|count_1hz\(0),
	datac => \G|count_1hz\(2),
	datad => \G|count_1hz\(1),
	combout => \G|count_1hz~2_combout\);

-- Location: FF_X25_Y32_N27
\G|count_1hz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10hz_int~clkctrl_outclk\,
	d => \G|count_1hz~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|count_1hz\(2));

-- Location: LCCOMB_X25_Y32_N24
\G|clock_1hz_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_1hz_int~0_combout\ = \G|clock_1hz_int~q\ $ (((\G|count_1hz\(2) & (!\G|count_1hz\(1) & !\G|count_1hz\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G|count_1hz\(2),
	datab => \G|count_1hz\(1),
	datac => \G|clock_1hz_int~q\,
	datad => \G|count_1hz\(0),
	combout => \G|clock_1hz_int~0_combout\);

-- Location: LCCOMB_X25_Y32_N30
\G|clock_1hz_int~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|clock_1hz_int~feeder_combout\ = \G|clock_1hz_int~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G|clock_1hz_int~0_combout\,
	combout => \G|clock_1hz_int~feeder_combout\);

-- Location: FF_X25_Y32_N31
\G|clock_1hz_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|clock_10hz_int~clkctrl_outclk\,
	d => \G|clock_1hz_int~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|clock_1hz_int~q\);

-- Location: LCCOMB_X25_Y32_N18
\G|CLOCK_1Hz~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \G|CLOCK_1Hz~feeder_combout\ = \G|clock_1hz_int~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \G|clock_1hz_int~q\,
	combout => \G|CLOCK_1Hz~feeder_combout\);

-- Location: FF_X25_Y32_N19
\G|CLOCK_1Hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \G|CLOCK_1Hz~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G|CLOCK_1Hz~q\);

-- Location: CLKCTRL_G11
\G|CLOCK_1Hz~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \G|CLOCK_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \G|CLOCK_1Hz~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y9_N10
\G1_historial|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_historial|cont[0]~3_combout\ = !\G1_historial|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_historial|cont\(0),
	combout => \G1_historial|cont[0]~3_combout\);

-- Location: LCCOMB_X25_Y9_N8
\MSS|WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr24~0_combout\ = (\MSS|y.Tb~q\) # ((\MSS|y.Tc~q\) # ((\MSS|y.T_hi~q\) # (!\MSS|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tb~q\,
	datab => \MSS|y.Tc~q\,
	datac => \MSS|y.Ta~q\,
	datad => \MSS|y.T_hi~q\,
	combout => \MSS|WideOr24~0_combout\);

-- Location: LCCOMB_X25_Y9_N26
\MSS|reset_hist\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|reset_hist~combout\ = (\MSS|WideOr24~0_combout\ & ((!\MSS|y.T_hi~q\))) # (!\MSS|WideOr24~0_combout\ & (\MSS|reset_hist~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|reset_hist~combout\,
	datac => \MSS|WideOr24~0_combout\,
	datad => \MSS|y.T_hi~q\,
	combout => \MSS|reset_hist~combout\);

-- Location: FF_X25_Y9_N11
\G1_historial|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_historial|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_reset_hist~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_historial|cont\(0));

-- Location: LCCOMB_X25_Y9_N0
\G1_historial|cont[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_historial|cont[1]~2_combout\ = \G1_historial|cont\(1) $ (\G1_historial|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_historial|cont\(1),
	datad => \G1_historial|cont\(0),
	combout => \G1_historial|cont[1]~2_combout\);

-- Location: FF_X25_Y9_N1
\G1_historial|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_historial|cont[1]~2_combout\,
	clrn => \MSS|ALT_INV_reset_hist~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_historial|cont\(1));

-- Location: LCCOMB_X25_Y9_N22
\G1_historial|cont[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_historial|cont[2]~0_combout\ = \G1_historial|cont\(2) $ (((\G1_historial|cont\(1) & \G1_historial|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1_historial|cont\(1),
	datac => \G1_historial|cont\(2),
	datad => \G1_historial|cont\(0),
	combout => \G1_historial|cont[2]~0_combout\);

-- Location: FF_X25_Y9_N23
\G1_historial|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_historial|cont[2]~0_combout\,
	clrn => \MSS|ALT_INV_reset_hist~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_historial|cont\(2));

-- Location: LCCOMB_X25_Y9_N20
\G1_historial|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_historial|cont[3]~1_combout\ = \G1_historial|cont\(3) $ (((\G1_historial|cont\(2) & (\G1_historial|cont\(1) & \G1_historial|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_historial|cont\(2),
	datab => \G1_historial|cont\(1),
	datac => \G1_historial|cont\(3),
	datad => \G1_historial|cont\(0),
	combout => \G1_historial|cont[3]~1_combout\);

-- Location: FF_X25_Y9_N21
\G1_historial|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_historial|cont[3]~1_combout\,
	clrn => \MSS|ALT_INV_reset_hist~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_historial|cont\(3));

-- Location: LCCOMB_X25_Y9_N14
\MSS|y~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~35_combout\ = (!\G1_historial|cont\(0) & (!\G1_historial|cont\(1) & (\G1_historial|cont\(2) & !\G1_historial|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_historial|cont\(0),
	datab => \G1_historial|cont\(1),
	datac => \G1_historial|cont\(2),
	datad => \G1_historial|cont\(3),
	combout => \MSS|y~35_combout\);

-- Location: LCCOMB_X25_Y9_N16
\MSS|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector10~0_combout\ = (\MSS|y.T_hist1~q\ & (((\MSS|y.T_hi~q\ & !\MSS|y~35_combout\)) # (!\dir_hist_igual~4_combout\))) # (!\MSS|y.T_hist1~q\ & (\MSS|y.T_hi~q\ & (!\MSS|y~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.T_hist1~q\,
	datab => \MSS|y.T_hi~q\,
	datac => \MSS|y~35_combout\,
	datad => \dir_hist_igual~4_combout\,
	combout => \MSS|Selector10~0_combout\);

-- Location: FF_X25_Y9_N29
\MSS|y.T_hi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MSS|Selector10~0_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T_hi~q\);

-- Location: LCCOMB_X26_Y9_N0
\MSS|y~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~36_combout\ = (\MSS|y.T_hi~q\ & \MSS|y~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.T_hi~q\,
	datad => \MSS|y~35_combout\,
	combout => \MSS|y~36_combout\);

-- Location: FF_X26_Y9_N1
\MSS|y.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~36_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T1~q\);

-- Location: LCCOMB_X27_Y10_N28
\MSS|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector34~1_combout\ = (\MSS|WideOr30~combout\) # ((\MSS|Selector34~0_combout\ & \MSS|y.T1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector34~0_combout\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|WideOr30~combout\,
	combout => \MSS|Selector34~1_combout\);

-- Location: LCCOMB_X27_Y10_N26
\MSS|ihist_u3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|ihist_u3~combout\ = (\MSS|Selector34~1_combout\ & (\MSS|y.T1~q\)) # (!\MSS|Selector34~1_combout\ & ((\MSS|ihist_u3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.T1~q\,
	datac => \MSS|ihist_u3~combout\,
	datad => \MSS|Selector34~1_combout\,
	combout => \MSS|ihist_u3~combout\);

-- Location: CLKCTRL_G4
\MSS|ihist_u3~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MSS|ihist_u3~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MSS|ihist_u3~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y7_N8
\G1_hist_u3|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_hist_u3|cont[0]~3_combout\ = !\G1_hist_u3|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_hist_u3|cont\(0),
	combout => \G1_hist_u3|cont[0]~3_combout\);

-- Location: FF_X23_Y7_N9
\G1_hist_u3|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|ihist_u3~clkctrl_outclk\,
	d => \G1_hist_u3|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_rhist_u5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_hist_u3|cont\(0));

-- Location: LCCOMB_X23_Y7_N22
\G3_h3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h3|Equal0~0_combout\ = (\G1_hist_u3|cont\(0) & (\G1_u3|cont\(0) & (\G1_hist_u3|cont\(1) $ (!\G1_u3|cont\(1))))) # (!\G1_hist_u3|cont\(0) & (!\G1_u3|cont\(0) & (\G1_hist_u3|cont\(1) $ (!\G1_u3|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u3|cont\(0),
	datab => \G1_hist_u3|cont\(1),
	datac => \G1_u3|cont\(1),
	datad => \G1_u3|cont\(0),
	combout => \G3_h3|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y7_N16
\G3_h5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h5|Equal0~0_combout\ = (\G1_hist_u5|cont\(1) & (\G1_u5|cont\(1) & (\G1_hist_u5|cont\(0) $ (!\G1_u5|cont\(0))))) # (!\G1_hist_u5|cont\(1) & (!\G1_u5|cont\(1) & (\G1_hist_u5|cont\(0) $ (!\G1_u5|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(1),
	datab => \G1_hist_u5|cont\(0),
	datac => \G1_u5|cont\(1),
	datad => \G1_u5|cont\(0),
	combout => \G3_h5|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y7_N16
\G3_h3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h3|Equal0~1_combout\ = (\G1_hist_u3|cont\(2) & (\G1_u3|cont\(2) & (\G1_hist_u3|cont\(3) $ (!\G1_u3|cont\(3))))) # (!\G1_hist_u3|cont\(2) & (!\G1_u3|cont\(2) & (\G1_hist_u3|cont\(3) $ (!\G1_u3|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u3|cont\(2),
	datab => \G1_hist_u3|cont\(3),
	datac => \G1_u3|cont\(3),
	datad => \G1_u3|cont\(2),
	combout => \G3_h3|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y7_N0
\G3_h5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h5|Equal0~1_combout\ = (\G1_hist_u5|cont\(2) & (\G1_u5|cont\(2) & (\G1_u5|cont\(3) $ (!\G1_hist_u5|cont\(3))))) # (!\G1_hist_u5|cont\(2) & (!\G1_u5|cont\(2) & (\G1_u5|cont\(3) $ (!\G1_hist_u5|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u5|cont\(2),
	datab => \G1_u5|cont\(2),
	datac => \G1_u5|cont\(3),
	datad => \G1_hist_u5|cont\(3),
	combout => \G3_h5|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y9_N22
\dir_hist_igual~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dir_hist_igual~1_combout\ = (\G3_h3|Equal0~0_combout\ & ((\G3_h3|Equal0~1_combout\) # ((\G3_h5|Equal0~0_combout\ & \G3_h5|Equal0~1_combout\)))) # (!\G3_h3|Equal0~0_combout\ & (\G3_h5|Equal0~0_combout\ & ((\G3_h5|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_h3|Equal0~0_combout\,
	datab => \G3_h5|Equal0~0_combout\,
	datac => \G3_h3|Equal0~1_combout\,
	datad => \G3_h5|Equal0~1_combout\,
	combout => \dir_hist_igual~1_combout\);

-- Location: LCCOMB_X24_Y9_N4
\G3_h8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h8|Equal0~1_combout\ = (\G1_hist_u8|cont\(2) & (\G1_u8|cont\(2) & (\G1_hist_u8|cont\(3) $ (!\G1_u8|cont\(3))))) # (!\G1_hist_u8|cont\(2) & (!\G1_u8|cont\(2) & (\G1_hist_u8|cont\(3) $ (!\G1_u8|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u8|cont\(2),
	datab => \G1_hist_u8|cont\(3),
	datac => \G1_u8|cont\(2),
	datad => \G1_u8|cont\(3),
	combout => \G3_h8|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y9_N16
\G3_h8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h8|Equal0~0_combout\ = (\G1_hist_u8|cont\(1) & (\G1_u8|cont\(1) & (\G1_hist_u8|cont\(0) $ (!\G1_u8|cont\(0))))) # (!\G1_hist_u8|cont\(1) & (!\G1_u8|cont\(1) & (\G1_hist_u8|cont\(0) $ (!\G1_u8|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u8|cont\(1),
	datab => \G1_hist_u8|cont\(0),
	datac => \G1_u8|cont\(1),
	datad => \G1_u8|cont\(0),
	combout => \G3_h8|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y9_N8
\dir_hist_igual~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dir_hist_igual~3_combout\ = (\G1_u4|cont\(3) & (((\G3_h8|Equal0~1_combout\ & \G3_h8|Equal0~0_combout\)))) # (!\G1_u4|cont\(3) & ((\G3_h4|Equal0~0_combout\) # ((\G3_h8|Equal0~1_combout\ & \G3_h8|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u4|cont\(3),
	datab => \G3_h4|Equal0~0_combout\,
	datac => \G3_h8|Equal0~1_combout\,
	datad => \G3_h8|Equal0~0_combout\,
	combout => \dir_hist_igual~3_combout\);

-- Location: LCCOMB_X25_Y5_N30
\G3_h2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h2|Equal0~0_combout\ = (\G1_u2|cont\(1) & (\G1_hist_u2|cont\(1) & (\G1_hist_u2|cont\(0) $ (!\G1_u2|cont\(0))))) # (!\G1_u2|cont\(1) & (!\G1_hist_u2|cont\(1) & (\G1_hist_u2|cont\(0) $ (!\G1_u2|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(1),
	datab => \G1_hist_u2|cont\(0),
	datac => \G1_hist_u2|cont\(1),
	datad => \G1_u2|cont\(0),
	combout => \G3_h2|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y6_N2
\G3_h1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h1|Equal0~0_combout\ = (\G1_hist_u1|cont\(0) & (\G1_u1|cont\(0) & (\G1_u1|cont\(1) $ (!\G1_hist_u1|cont\(1))))) # (!\G1_hist_u1|cont\(0) & (!\G1_u1|cont\(0) & (\G1_u1|cont\(1) $ (!\G1_hist_u1|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(0),
	datab => \G1_u1|cont\(0),
	datac => \G1_u1|cont\(1),
	datad => \G1_hist_u1|cont\(1),
	combout => \G3_h1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y6_N24
\G3_h1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h1|Equal0~1_combout\ = (\G1_hist_u1|cont\(3) & (\G1_u1|cont\(3) & (\G1_hist_u1|cont\(2) $ (!\G1_u1|cont\(2))))) # (!\G1_hist_u1|cont\(3) & (!\G1_u1|cont\(3) & (\G1_hist_u1|cont\(2) $ (!\G1_u1|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u1|cont\(3),
	datab => \G1_hist_u1|cont\(2),
	datac => \G1_u1|cont\(3),
	datad => \G1_u1|cont\(2),
	combout => \G3_h1|Equal0~1_combout\);

-- Location: LCCOMB_X25_Y5_N24
\G3_h2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h2|Equal0~1_combout\ = (\G1_u2|cont\(3) & (\G1_hist_u2|cont\(3) & (\G1_hist_u2|cont\(2) $ (!\G1_u2|cont\(2))))) # (!\G1_u2|cont\(3) & (!\G1_hist_u2|cont\(3) & (\G1_hist_u2|cont\(2) $ (!\G1_u2|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u2|cont\(3),
	datab => \G1_hist_u2|cont\(2),
	datac => \G1_hist_u2|cont\(3),
	datad => \G1_u2|cont\(2),
	combout => \G3_h2|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y9_N26
\dir_hist_igual~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dir_hist_igual~0_combout\ = (\G3_h2|Equal0~0_combout\ & ((\G3_h2|Equal0~1_combout\) # ((\G3_h1|Equal0~0_combout\ & \G3_h1|Equal0~1_combout\)))) # (!\G3_h2|Equal0~0_combout\ & (\G3_h1|Equal0~0_combout\ & (\G3_h1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_h2|Equal0~0_combout\,
	datab => \G3_h1|Equal0~0_combout\,
	datac => \G3_h1|Equal0~1_combout\,
	datad => \G3_h2|Equal0~1_combout\,
	combout => \dir_hist_igual~0_combout\);

-- Location: LCCOMB_X24_Y7_N10
\G3_h7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h7|Equal0~0_combout\ = (\G1_hist_u7|cont\(0) & (\G1_u7|cont\(0) & (\G1_u7|cont\(1) $ (!\G1_hist_u7|cont\(1))))) # (!\G1_hist_u7|cont\(0) & (!\G1_u7|cont\(0) & (\G1_u7|cont\(1) $ (!\G1_hist_u7|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_hist_u7|cont\(0),
	datab => \G1_u7|cont\(1),
	datac => \G1_hist_u7|cont\(1),
	datad => \G1_u7|cont\(0),
	combout => \G3_h7|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\G3_h6|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h6|Equal0~0_combout\ = (\G1_u6|cont\(1) & (\G1_hist_u6|cont\(1) & (\G1_hist_u6|cont\(0) $ (!\G1_u6|cont\(0))))) # (!\G1_u6|cont\(1) & (!\G1_hist_u6|cont\(1) & (\G1_hist_u6|cont\(0) $ (!\G1_u6|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(1),
	datab => \G1_hist_u6|cont\(0),
	datac => \G1_u6|cont\(0),
	datad => \G1_hist_u6|cont\(1),
	combout => \G3_h6|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y7_N20
\G3_h7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h7|Equal0~1_combout\ = (\G1_u7|cont\(3) & (\G1_hist_u7|cont\(3) & (\G1_hist_u7|cont\(2) $ (!\G1_u7|cont\(2))))) # (!\G1_u7|cont\(3) & (!\G1_hist_u7|cont\(3) & (\G1_hist_u7|cont\(2) $ (!\G1_u7|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u7|cont\(3),
	datab => \G1_hist_u7|cont\(2),
	datac => \G1_u7|cont\(2),
	datad => \G1_hist_u7|cont\(3),
	combout => \G3_h7|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y8_N0
\G3_h6|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G3_h6|Equal0~1_combout\ = (\G1_u6|cont\(2) & (\G1_hist_u6|cont\(2) & (\G1_u6|cont\(3) $ (!\G1_hist_u6|cont\(3))))) # (!\G1_u6|cont\(2) & (!\G1_hist_u6|cont\(2) & (\G1_u6|cont\(3) $ (!\G1_hist_u6|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_u6|cont\(2),
	datab => \G1_u6|cont\(3),
	datac => \G1_hist_u6|cont\(2),
	datad => \G1_hist_u6|cont\(3),
	combout => \G3_h6|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y9_N2
\dir_hist_igual~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dir_hist_igual~2_combout\ = (\G3_h7|Equal0~0_combout\ & ((\G3_h7|Equal0~1_combout\) # ((\G3_h6|Equal0~0_combout\ & \G3_h6|Equal0~1_combout\)))) # (!\G3_h7|Equal0~0_combout\ & (\G3_h6|Equal0~0_combout\ & ((\G3_h6|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3_h7|Equal0~0_combout\,
	datab => \G3_h6|Equal0~0_combout\,
	datac => \G3_h7|Equal0~1_combout\,
	datad => \G3_h6|Equal0~1_combout\,
	combout => \dir_hist_igual~2_combout\);

-- Location: LCCOMB_X24_Y9_N10
\dir_hist_igual~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dir_hist_igual~4_combout\ = (\dir_hist_igual~1_combout\) # ((\dir_hist_igual~3_combout\) # ((\dir_hist_igual~0_combout\) # (\dir_hist_igual~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir_hist_igual~1_combout\,
	datab => \dir_hist_igual~3_combout\,
	datac => \dir_hist_igual~0_combout\,
	datad => \dir_hist_igual~2_combout\,
	combout => \dir_hist_igual~4_combout\);

-- Location: LCCOMB_X27_Y9_N10
\MSS|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector7~0_combout\ = (\Gsr_3|PB_SIN_REBOTE~q\ & (\MSS|y.Ti~q\ & ((\G5|q~q\) # (\G4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_3|PB_SIN_REBOTE~q\,
	datab => \G5|q~q\,
	datac => \G4|q~q\,
	datad => \MSS|y.Ti~q\,
	combout => \MSS|Selector7~0_combout\);

-- Location: LCCOMB_X28_Y9_N10
\G1_ocupado|cont[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_ocupado|cont[0]~3_combout\ = !\G1_ocupado|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_ocupado|cont\(0),
	combout => \G1_ocupado|cont[0]~3_combout\);

-- Location: LCCOMB_X27_Y9_N18
\MSS|WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr21~0_combout\ = (!\MSS|y.Tc~q\ & (!\MSS|y.Tb~q\ & (!\MSS|y.T_oc~q\ & \MSS|y.Ta~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datab => \MSS|y.Tb~q\,
	datac => \MSS|y.T_oc~q\,
	datad => \MSS|y.Ta~q\,
	combout => \MSS|WideOr21~0_combout\);

-- Location: LCCOMB_X27_Y9_N30
\MSS|reset_oc\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|reset_oc~combout\ = (\MSS|WideOr21~0_combout\ & (\MSS|reset_oc~combout\)) # (!\MSS|WideOr21~0_combout\ & ((!\MSS|y.T_oc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|reset_oc~combout\,
	datac => \MSS|y.T_oc~q\,
	datad => \MSS|WideOr21~0_combout\,
	combout => \MSS|reset_oc~combout\);

-- Location: FF_X28_Y9_N11
\G1_ocupado|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_ocupado|cont[0]~3_combout\,
	clrn => \MSS|ALT_INV_reset_oc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_ocupado|cont\(0));

-- Location: LCCOMB_X28_Y9_N12
\G1_ocupado|cont[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_ocupado|cont[1]~0_combout\ = \G1_ocupado|cont\(1) $ (\G1_ocupado|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \G1_ocupado|cont\(1),
	datad => \G1_ocupado|cont\(0),
	combout => \G1_ocupado|cont[1]~0_combout\);

-- Location: FF_X28_Y9_N13
\G1_ocupado|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_ocupado|cont[1]~0_combout\,
	clrn => \MSS|ALT_INV_reset_oc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_ocupado|cont\(1));

-- Location: LCCOMB_X28_Y9_N28
\G1_ocupado|cont[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_ocupado|cont[2]~2_combout\ = \G1_ocupado|cont\(2) $ (((\G1_ocupado|cont\(0) & \G1_ocupado|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_ocupado|cont\(0),
	datac => \G1_ocupado|cont\(2),
	datad => \G1_ocupado|cont\(1),
	combout => \G1_ocupado|cont[2]~2_combout\);

-- Location: FF_X28_Y9_N29
\G1_ocupado|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_ocupado|cont[2]~2_combout\,
	clrn => \MSS|ALT_INV_reset_oc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_ocupado|cont\(2));

-- Location: LCCOMB_X28_Y9_N22
\G1_ocupado|cont[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G1_ocupado|cont[3]~1_combout\ = \G1_ocupado|cont\(3) $ (((\G1_ocupado|cont\(0) & (\G1_ocupado|cont\(2) & \G1_ocupado|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_ocupado|cont\(0),
	datab => \G1_ocupado|cont\(2),
	datac => \G1_ocupado|cont\(3),
	datad => \G1_ocupado|cont\(1),
	combout => \G1_ocupado|cont[3]~1_combout\);

-- Location: FF_X28_Y9_N23
\G1_ocupado|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \G|CLOCK_1Hz~clkctrl_outclk\,
	d => \G1_ocupado|cont[3]~1_combout\,
	clrn => \MSS|ALT_INV_reset_oc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G1_ocupado|cont\(3));

-- Location: LCCOMB_X28_Y9_N24
\MSS|y~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~32_combout\ = (\G1_ocupado|cont\(1) & (!\G1_ocupado|cont\(2) & (!\G1_ocupado|cont\(3) & !\G1_ocupado|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G1_ocupado|cont\(1),
	datab => \G1_ocupado|cont\(2),
	datac => \G1_ocupado|cont\(3),
	datad => \G1_ocupado|cont\(0),
	combout => \MSS|y~32_combout\);

-- Location: LCCOMB_X27_Y9_N16
\MSS|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector7~1_combout\ = (\MSS|Selector7~0_combout\ & ((\num_existe~combout\) # ((!\MSS|y~32_combout\ & \MSS|y.T_oc~q\)))) # (!\MSS|Selector7~0_combout\ & (!\MSS|y~32_combout\ & (\MSS|y.T_oc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector7~0_combout\,
	datab => \MSS|y~32_combout\,
	datac => \MSS|y.T_oc~q\,
	datad => \num_existe~combout\,
	combout => \MSS|Selector7~1_combout\);

-- Location: FF_X27_Y9_N23
\MSS|y.T_oc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \MSS|Selector7~1_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T_oc~q\);

-- Location: LCCOMB_X27_Y9_N28
\MSS|y~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~33_combout\ = (\MSS|y.T_oc~q\ & \MSS|y~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSS|y.T_oc~q\,
	datad => \MSS|y~32_combout\,
	combout => \MSS|y~33_combout\);

-- Location: FF_X27_Y9_N29
\MSS|y.T_oc_apagado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~33_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.T_oc_apagado~q\);

-- Location: LCCOMB_X28_Y9_N30
\MSS|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector1~2_combout\ = ((\MSS|y.Tx~q\) # ((\MSS|y.Th~q\) # (\MSS|y.T_oc_apagado~q\))) # (!\MSS|reset_reg~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|reset_reg~0_combout\,
	datab => \MSS|y.Tx~q\,
	datac => \MSS|y.Th~q\,
	datad => \MSS|y.T_oc_apagado~q\,
	combout => \MSS|Selector1~2_combout\);

-- Location: LCCOMB_X27_Y9_N0
\MSS|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector1~0_combout\ = (\MSS|y.Tc~q\ & (!\Gsr_5|PB_SIN_REBOTE~q\ & (!\Fu~combout\ & !\Gsr_6|PB_SIN_REBOTE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datab => \Gsr_5|PB_SIN_REBOTE~q\,
	datac => \Fu~combout\,
	datad => \Gsr_6|PB_SIN_REBOTE~q\,
	combout => \MSS|Selector1~0_combout\);

-- Location: LCCOMB_X24_Y9_N14
\MSS|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector1~1_combout\ = (!\Gsr_2|PB_SIN_REBOTE~q\ & ((\MSS|y.Tb~q\) # ((\boton~combout\ & \MSS|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gsr_2|PB_SIN_REBOTE~q\,
	datab => \boton~combout\,
	datac => \MSS|y.Tb~q\,
	datad => \MSS|Selector1~0_combout\,
	combout => \MSS|Selector1~1_combout\);

-- Location: LCCOMB_X24_Y9_N6
\MSS|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector1~3_combout\ = (\MSS|Selector1~2_combout\) # ((\MSS|Selector1~1_combout\) # ((\dir_hist_igual~4_combout\ & \MSS|y.T_hist1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dir_hist_igual~4_combout\,
	datab => \MSS|Selector1~2_combout\,
	datac => \MSS|Selector1~1_combout\,
	datad => \MSS|y.T_hist1~q\,
	combout => \MSS|Selector1~3_combout\);

-- Location: FF_X24_Y9_N7
\MSS|y.Tc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|Selector1~3_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tc~q\);

-- Location: LCCOMB_X27_Y9_N2
\MSS|y~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~42_combout\ = (\MSS|y.Tc~q\ & (!\Gsr_2|PB_SIN_REBOTE~q\ & !\boton~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tc~q\,
	datac => \Gsr_2|PB_SIN_REBOTE~q\,
	datad => \boton~combout\,
	combout => \MSS|y~42_combout\);

-- Location: FF_X27_Y9_N3
\MSS|y.Tf\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~42_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tf~q\);

-- Location: LCCOMB_X25_Y6_N18
\MSS|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector2~0_combout\ = (\MSS|y.Tf~q\) # ((!\boton~combout\ & \MSS|y.Te~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tf~q\,
	datac => \boton~combout\,
	datad => \MSS|y.Te~q\,
	combout => \MSS|Selector2~0_combout\);

-- Location: LCCOMB_X25_Y6_N26
\MSS|y.Te~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y.Te~feeder_combout\ = \MSS|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MSS|Selector2~0_combout\,
	combout => \MSS|y.Te~feeder_combout\);

-- Location: FF_X25_Y6_N27
\MSS|y.Te\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|y.Te~feeder_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Te~q\);

-- Location: LCCOMB_X25_Y6_N22
\MSS|y~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~43_combout\ = (\boton~combout\ & \MSS|y.Te~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \boton~combout\,
	datab => \MSS|y.Te~q\,
	combout => \MSS|y~43_combout\);

-- Location: FF_X25_Y6_N23
\MSS|y.Tg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|y~43_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tg~q\);

-- Location: LCCOMB_X28_Y6_N18
\MSS|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector3~2_combout\ = (\MSS|y.Tg~q\ & ((\MSS|Selector3~0_combout\) # ((\MSS|Selector3~1_combout\ & !\Gsr_6|PB_SIN_REBOTE~q\)))) # (!\MSS|y.Tg~q\ & (((\MSS|Selector3~1_combout\ & !\Gsr_6|PB_SIN_REBOTE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tg~q\,
	datab => \MSS|Selector3~0_combout\,
	datac => \MSS|Selector3~1_combout\,
	datad => \Gsr_6|PB_SIN_REBOTE~q\,
	combout => \MSS|Selector3~2_combout\);

-- Location: FF_X28_Y6_N19
\MSS|y.Ti\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|Selector3~2_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Ti~q\);

-- Location: LCCOMB_X27_Y8_N14
\MSS|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector4~0_combout\ = (!\G4|q~q\ & (\MSS|y.Ti~q\ & !\G5|q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4|q~q\,
	datab => \MSS|y.Ti~q\,
	datad => \G5|q~q\,
	combout => \MSS|Selector4~0_combout\);

-- Location: LCCOMB_X28_Y6_N28
\MSS|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector4~1_combout\ = (\Gsr_3|PB_SIN_REBOTE~q\ & ((\MSS|y.Tj~q\) # ((\MSS|Selector4~0_combout\ & \num_existe~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tj~q\,
	datab => \Gsr_3|PB_SIN_REBOTE~q\,
	datac => \MSS|Selector4~0_combout\,
	datad => \num_existe~combout\,
	combout => \MSS|Selector4~1_combout\);

-- Location: LCCOMB_X23_Y6_N28
\MSS|y.Tj~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y.Tj~feeder_combout\ = \MSS|Selector4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \MSS|Selector4~1_combout\,
	combout => \MSS|y.Tj~feeder_combout\);

-- Location: FF_X23_Y6_N29
\MSS|y.Tj\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \MSS|y.Tj~feeder_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tj~q\);

-- Location: LCCOMB_X27_Y8_N22
\MSS|y~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|y~37_combout\ = (!\Gsr_3|PB_SIN_REBOTE~q\ & \MSS|y.Tj~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gsr_3|PB_SIN_REBOTE~q\,
	datad => \MSS|y.Tj~q\,
	combout => \MSS|y~37_combout\);

-- Location: FF_X27_Y8_N23
\MSS|y.Tl\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \MSS|y~37_combout\,
	clrn => \Gsr_1|PB_SIN_REBOTE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MSS|y.Tl~q\);

-- Location: LCCOMB_X27_Y8_N24
\MSS|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector16~0_combout\ = (!\MSS|y.Tl~q\ & (!\MSS|y.Tu~q\ & (!\MSS|y.Ts~q\ & !\MSS|y.Tw~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tl~q\,
	datab => \MSS|y.Tu~q\,
	datac => \MSS|y.Ts~q\,
	datad => \MSS|y.Tw~q\,
	combout => \MSS|Selector16~0_combout\);

-- Location: LCCOMB_X28_Y8_N26
\MSS|WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr32~0_combout\ = (\MSS|Selector16~0_combout\ & (!\MSS|y.Tm~q\ & \MSS|WideOr20~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|Selector16~0_combout\,
	datac => \MSS|y.Tm~q\,
	datad => \MSS|WideOr20~0_combout\,
	combout => \MSS|WideOr32~0_combout\);

-- Location: LCCOMB_X27_Y8_N18
\MSS|WideOr32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr32~1_combout\ = ((\MSS|y.Tj~q\) # (\MSS|y.Tk~q\)) # (!\MSS|WideOr32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr32~0_combout\,
	datab => \MSS|y.Tj~q\,
	datad => \MSS|y.Tk~q\,
	combout => \MSS|WideOr32~1_combout\);

-- Location: LCCOMB_X27_Y8_N16
\MSS|WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr34~0_combout\ = (\MSS|y.Tw~q\) # ((\MSS|y.Ts~q\) # ((\MSS|y.Tt~q\) # (\MSS|y.Tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|y.Tw~q\,
	datab => \MSS|y.Ts~q\,
	datac => \MSS|y.Tt~q\,
	datad => \MSS|y.Tx~q\,
	combout => \MSS|WideOr34~0_combout\);

-- Location: LCCOMB_X27_Y8_N8
\MSS|clock_ff_d\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|clock_ff_d~combout\ = (\MSS|WideOr32~1_combout\ & ((\MSS|WideOr34~0_combout\))) # (!\MSS|WideOr32~1_combout\ & (\MSS|clock_ff_d~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr32~1_combout\,
	datab => \MSS|clock_ff_d~combout\,
	datad => \MSS|WideOr34~0_combout\,
	combout => \MSS|clock_ff_d~combout\);

-- Location: LCCOMB_X26_Y5_N16
\MSS|Selector19~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~8_combout\ = (\G2_h1|Mux10~10_combout\ & (\G2_h1|Mux15~10_combout\ & (\MSS|Selector19~7_combout\ & !\G2_h1|Mux17~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux10~10_combout\,
	datab => \G2_h1|Mux15~10_combout\,
	datac => \MSS|Selector19~7_combout\,
	datad => \G2_h1|Mux17~10_combout\,
	combout => \MSS|Selector19~8_combout\);

-- Location: LCCOMB_X28_Y8_N4
\MSS|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~2_combout\ = (\MSS|Selector19~0_combout\ & ((\MSS|Selector19~1_combout\ & (\u1~input_o\)) # (!\MSS|Selector19~1_combout\ & ((\G3_nu1|Equal0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1~input_o\,
	datab => \MSS|Selector19~0_combout\,
	datac => \G3_nu1|Equal0~0_combout\,
	datad => \MSS|Selector19~1_combout\,
	combout => \MSS|Selector19~2_combout\);

-- Location: LCCOMB_X28_Y8_N18
\MSS|Selector19~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|Selector19~9_combout\ = (\MSS|Selector19~2_combout\) # ((\MSS|Selector19~8_combout\ & \MSS|Selector21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|Selector19~8_combout\,
	datac => \MSS|Selector19~2_combout\,
	datad => \MSS|Selector21~1_combout\,
	combout => \MSS|Selector19~9_combout\);

-- Location: LCCOMB_X27_Y8_N26
\MSS|led1\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|led1~combout\ = (\MSS|Selector19~9_combout\ & ((!\MSS|Selector16~0_combout\))) # (!\MSS|Selector19~9_combout\ & (\MSS|led1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|led1~combout\,
	datab => \MSS|Selector19~9_combout\,
	datad => \MSS|Selector16~0_combout\,
	combout => \MSS|led1~combout\);

-- Location: FF_X27_Y8_N13
\G4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MSS|clock_ff_d~combout\,
	asdata => \MSS|led1~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \G4|q~q\);

-- Location: LCCOMB_X27_Y9_N20
\MSS|WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr23~0_combout\ = ((\MSS|y.T_oc~q\) # (\MSS|y.T_oc_apagado~q\)) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr12~0_combout\,
	datac => \MSS|y.T_oc~q\,
	datad => \MSS|y.T_oc_apagado~q\,
	combout => \MSS|WideOr23~0_combout\);

-- Location: LCCOMB_X27_Y9_N26
\MSS|OCUPADO\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|OCUPADO~combout\ = (\MSS|WideOr23~0_combout\ & ((\MSS|y.T_oc~q\))) # (!\MSS|WideOr23~0_combout\ & (\MSS|OCUPADO~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|OCUPADO~combout\,
	datac => \MSS|y.T_oc~q\,
	datad => \MSS|WideOr23~0_combout\,
	combout => \MSS|OCUPADO~combout\);

-- Location: LCCOMB_X25_Y9_N6
\MSS|WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr26~0_combout\ = (!\MSS|y.T_hi~q\ & (!\MSS|y.T1~q\ & !\MSS|y.T_hist1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|y.T_hi~q\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|y.T_hist1~q\,
	combout => \MSS|WideOr26~0_combout\);

-- Location: LCCOMB_X25_Y9_N2
\MSS|WideOr25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|WideOr25~0_combout\ = ((\MSS|y.T_hist1~q\) # ((\MSS|y.T1~q\) # (\MSS|y.T_hi~q\))) # (!\MSS|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|WideOr12~0_combout\,
	datab => \MSS|y.T_hist1~q\,
	datac => \MSS|y.T1~q\,
	datad => \MSS|y.T_hi~q\,
	combout => \MSS|WideOr25~0_combout\);

-- Location: LCCOMB_X25_Y9_N4
\MSS|disp_select\ : cycloneive_lcell_comb
-- Equation(s):
-- \MSS|disp_select~combout\ = (\MSS|WideOr25~0_combout\ & ((!\MSS|WideOr26~0_combout\))) # (!\MSS|WideOr25~0_combout\ & (\MSS|disp_select~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|disp_select~combout\,
	datac => \MSS|WideOr26~0_combout\,
	datad => \MSS|WideOr25~0_combout\,
	combout => \MSS|disp_select~combout\);

-- Location: LCCOMB_X23_Y8_N0
\G2_sal_d1|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d1|s[0]~0_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux3~9_combout\))) # (!\MSS|disp_select~combout\ & (\G12_1|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_1|temp\(0),
	datab => \G2_h1|Mux3~9_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d1|s[0]~0_combout\);

-- Location: LCCOMB_X29_Y6_N16
\G2_sal_d1|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d1|s[1]~1_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux2~9_combout\))) # (!\MSS|disp_select~combout\ & (\G12_1|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datac => \G12_1|temp\(1),
	datad => \G2_h1|Mux2~9_combout\,
	combout => \G2_sal_d1|s[1]~1_combout\);

-- Location: LCCOMB_X29_Y6_N18
\G2_sal_d1|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d1|s[2]~2_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux1~9_combout\))) # (!\MSS|disp_select~combout\ & (\G12_1|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_1|temp\(2),
	datac => \G2_h1|Mux1~9_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d1|s[2]~2_combout\);

-- Location: LCCOMB_X29_Y6_N28
\G2_sal_d1|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d1|s[3]~3_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux0~9_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_1|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datab => \G2_h1|Mux0~9_combout\,
	datac => \G12_1|temp\(3),
	combout => \G2_sal_d1|s[3]~3_combout\);

-- Location: LCCOMB_X26_Y4_N28
\G2_sal_d2|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d2|s[0]~0_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux7~9_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_2|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux7~9_combout\,
	datac => \G12_2|temp\(0),
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d2|s[0]~0_combout\);

-- Location: LCCOMB_X27_Y4_N24
\G2_sal_d2|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d2|s[1]~1_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux6~9_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux6~9_combout\,
	datab => \G12_2|temp\(1),
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d2|s[1]~1_combout\);

-- Location: LCCOMB_X26_Y4_N30
\G2_sal_d2|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d2|s[2]~2_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux5~9_combout\))) # (!\MSS|disp_select~combout\ & (\G12_2|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_2|temp\(2),
	datac => \G2_h1|Mux5~9_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d2|s[2]~2_combout\);

-- Location: LCCOMB_X27_Y4_N2
\G2_sal_d2|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d2|s[3]~3_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux4~9_combout\))) # (!\MSS|disp_select~combout\ & (\G12_2|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_2|temp\(3),
	datac => \G2_h1|Mux4~9_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d2|s[3]~3_combout\);

-- Location: LCCOMB_X34_Y1_N28
\G2_sal_d3|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d3|s[0]~0_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux11~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_3|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datac => \G2_h1|Mux11~10_combout\,
	datad => \G12_3|temp\(0),
	combout => \G2_sal_d3|s[0]~0_combout\);

-- Location: LCCOMB_X27_Y5_N14
\G2_sal_d3|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d3|s[1]~1_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux10~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datab => \G12_3|temp\(1),
	datad => \G2_h1|Mux10~10_combout\,
	combout => \G2_sal_d3|s[1]~1_combout\);

-- Location: LCCOMB_X25_Y3_N14
\G2_sal_d3|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d3|s[2]~2_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux9~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_3|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_3|temp\(2),
	datab => \MSS|disp_select~combout\,
	datac => \G2_h1|Mux9~10_combout\,
	combout => \G2_sal_d3|s[2]~2_combout\);

-- Location: LCCOMB_X28_Y5_N24
\G2_sal_d3|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d3|s[3]~3_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux8~9_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_3|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSS|disp_select~combout\,
	datac => \G2_h1|Mux8~9_combout\,
	datad => \G12_3|temp\(3),
	combout => \G2_sal_d3|s[3]~3_combout\);

-- Location: LCCOMB_X28_Y5_N20
\G2_sal_d4|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d4|s[0]~0_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux15~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_4|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G12_4|temp\(0),
	datac => \G2_h1|Mux15~10_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d4|s[0]~0_combout\);

-- Location: LCCOMB_X20_Y6_N22
\G2_sal_d4|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d4|s[1]~1_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux14~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_4|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_4|temp\(1),
	datab => \MSS|disp_select~combout\,
	datad => \G2_h1|Mux14~10_combout\,
	combout => \G2_sal_d4|s[1]~1_combout\);

-- Location: LCCOMB_X26_Y6_N10
\G2_sal_d4|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d4|s[2]~2_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux13~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_4|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux13~10_combout\,
	datab => \G12_4|temp\(2),
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d4|s[2]~2_combout\);

-- Location: LCCOMB_X27_Y5_N26
\G2_sal_d4|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d4|s[3]~3_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux12~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_4|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datab => \G2_h1|Mux12~10_combout\,
	datad => \G12_4|temp\(3),
	combout => \G2_sal_d4|s[3]~3_combout\);

-- Location: LCCOMB_X24_Y2_N0
\G2_sal_d5|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d5|s[0]~0_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux19~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_5|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_5|temp\(0),
	datac => \G2_h1|Mux19~10_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d5|s[0]~0_combout\);

-- Location: LCCOMB_X29_Y6_N26
\G2_sal_d5|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d5|s[1]~1_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux18~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_5|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSS|disp_select~combout\,
	datab => \G2_h1|Mux18~10_combout\,
	datad => \G12_5|temp\(1),
	combout => \G2_sal_d5|s[1]~1_combout\);

-- Location: LCCOMB_X29_Y6_N14
\G2_sal_d5|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d5|s[2]~2_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux17~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_5|temp\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_5|temp\(2),
	datab => \G2_h1|Mux17~10_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d5|s[2]~2_combout\);

-- Location: LCCOMB_X28_Y7_N12
\G2_sal_d5|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d5|s[3]~3_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux16~18_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_5|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux16~18_combout\,
	datac => \MSS|disp_select~combout\,
	datad => \G12_5|temp\(3),
	combout => \G2_sal_d5|s[3]~3_combout\);

-- Location: LCCOMB_X27_Y5_N16
\G2_sal_d6|s[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d6|s[0]~0_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux23~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_6|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux23~10_combout\,
	datac => \MSS|disp_select~combout\,
	datad => \G12_6|temp\(0),
	combout => \G2_sal_d6|s[0]~0_combout\);

-- Location: LCCOMB_X27_Y5_N22
\G2_sal_d6|s[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d6|s[1]~1_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux22~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_6|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux22~10_combout\,
	datac => \MSS|disp_select~combout\,
	datad => \G12_6|temp\(1),
	combout => \G2_sal_d6|s[1]~1_combout\);

-- Location: LCCOMB_X29_Y6_N10
\G2_sal_d6|s[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d6|s[2]~2_combout\ = (\MSS|disp_select~combout\ & (\G2_h1|Mux21~10_combout\)) # (!\MSS|disp_select~combout\ & ((\G12_6|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2_h1|Mux21~10_combout\,
	datab => \G12_6|temp\(2),
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d6|s[2]~2_combout\);

-- Location: LCCOMB_X27_Y4_N0
\G2_sal_d6|s[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \G2_sal_d6|s[3]~3_combout\ = (\MSS|disp_select~combout\ & ((\G2_h1|Mux20~10_combout\))) # (!\MSS|disp_select~combout\ & (\G12_6|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G12_6|temp\(3),
	datac => \G2_h1|Mux20~10_combout\,
	datad => \MSS|disp_select~combout\,
	combout => \G2_sal_d6|s[3]~3_combout\);

ww_LLAMADA_EN_PROGRESO(0) <= \LLAMADA_EN_PROGRESO[0]~output_o\;

ww_LLAMADA_EN_PROGRESO(1) <= \LLAMADA_EN_PROGRESO[1]~output_o\;

ww_LLAMADA_EN_PROGRESO(2) <= \LLAMADA_EN_PROGRESO[2]~output_o\;

ww_LLAMADA_EN_PROGRESO(3) <= \LLAMADA_EN_PROGRESO[3]~output_o\;

ww_LLAMADA_EN_PROGRESO(4) <= \LLAMADA_EN_PROGRESO[4]~output_o\;

ww_LLAMADA_EN_PROGRESO(5) <= \LLAMADA_EN_PROGRESO[5]~output_o\;

ww_LLAMADA_EN_PROGRESO(6) <= \LLAMADA_EN_PROGRESO[6]~output_o\;

ww_LLAMADA_EN_PROGRESO(7) <= \LLAMADA_EN_PROGRESO[7]~output_o\;

ww_OCUPADO <= \OCUPADO~output_o\;

ww_DISPLAY_1n(0) <= \DISPLAY_1n[0]~output_o\;

ww_DISPLAY_1n(1) <= \DISPLAY_1n[1]~output_o\;

ww_DISPLAY_1n(2) <= \DISPLAY_1n[2]~output_o\;

ww_DISPLAY_1n(3) <= \DISPLAY_1n[3]~output_o\;

ww_DISPLAY_2n(0) <= \DISPLAY_2n[0]~output_o\;

ww_DISPLAY_2n(1) <= \DISPLAY_2n[1]~output_o\;

ww_DISPLAY_2n(2) <= \DISPLAY_2n[2]~output_o\;

ww_DISPLAY_2n(3) <= \DISPLAY_2n[3]~output_o\;

ww_DISPLAY_3n(0) <= \DISPLAY_3n[0]~output_o\;

ww_DISPLAY_3n(1) <= \DISPLAY_3n[1]~output_o\;

ww_DISPLAY_3n(2) <= \DISPLAY_3n[2]~output_o\;

ww_DISPLAY_3n(3) <= \DISPLAY_3n[3]~output_o\;

ww_DISPLAY_4n(0) <= \DISPLAY_4n[0]~output_o\;

ww_DISPLAY_4n(1) <= \DISPLAY_4n[1]~output_o\;

ww_DISPLAY_4n(2) <= \DISPLAY_4n[2]~output_o\;

ww_DISPLAY_4n(3) <= \DISPLAY_4n[3]~output_o\;

ww_DISPLAY_5n(0) <= \DISPLAY_5n[0]~output_o\;

ww_DISPLAY_5n(1) <= \DISPLAY_5n[1]~output_o\;

ww_DISPLAY_5n(2) <= \DISPLAY_5n[2]~output_o\;

ww_DISPLAY_5n(3) <= \DISPLAY_5n[3]~output_o\;

ww_DISPLAY_6n(0) <= \DISPLAY_6n[0]~output_o\;

ww_DISPLAY_6n(1) <= \DISPLAY_6n[1]~output_o\;

ww_DISPLAY_6n(2) <= \DISPLAY_6n[2]~output_o\;

ww_DISPLAY_6n(3) <= \DISPLAY_6n[3]~output_o\;
END structure;


