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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/01/2018 22:10:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Call_Center
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Call_Center_vhd_vec_tst IS
END Call_Center_vhd_vec_tst;
ARCHITECTURE Call_Center_arch OF Call_Center_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL BORRAR : STD_LOGIC;
SIGNAL clock : STD_LOGIC;
SIGNAL DISPLAY_1n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DISPLAY_2n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DISPLAY_3n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DISPLAY_4n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DISPLAY_5n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL DISPLAY_6n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL FINALIZAR_LLAMADA : STD_LOGIC;
SIGNAL HISTORIAL_LLAMADAS : STD_LOGIC;
SIGNAL LLAMADA_EN_PROGRESO : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL OCUPADO : STD_LOGIC;
SIGNAL REALIZAR_LLAMADA : STD_LOGIC;
SIGNAL resetn : STD_LOGIC;
SIGNAL start : STD_LOGIC;
SIGNAL TECLADO : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL u1 : STD_LOGIC;
SIGNAL u2 : STD_LOGIC;
SIGNAL u3 : STD_LOGIC;
SIGNAL u4 : STD_LOGIC;
SIGNAL u5 : STD_LOGIC;
SIGNAL u6 : STD_LOGIC;
SIGNAL u7 : STD_LOGIC;
SIGNAL u8 : STD_LOGIC;
COMPONENT Call_Center
	PORT (
	BORRAR : IN STD_LOGIC;
	clock : IN STD_LOGIC;
	DISPLAY_1n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY_2n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY_3n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY_4n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY_5n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	DISPLAY_6n : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	FINALIZAR_LLAMADA : IN STD_LOGIC;
	HISTORIAL_LLAMADAS : IN STD_LOGIC;
	LLAMADA_EN_PROGRESO : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	OCUPADO : OUT STD_LOGIC;
	REALIZAR_LLAMADA : IN STD_LOGIC;
	resetn : IN STD_LOGIC;
	start : IN STD_LOGIC;
	TECLADO : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	u1 : IN STD_LOGIC;
	u2 : IN STD_LOGIC;
	u3 : IN STD_LOGIC;
	u4 : IN STD_LOGIC;
	u5 : IN STD_LOGIC;
	u6 : IN STD_LOGIC;
	u7 : IN STD_LOGIC;
	u8 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Call_Center
	PORT MAP (
-- list connections between master ports and signals
	BORRAR => BORRAR,
	clock => clock,
	DISPLAY_1n => DISPLAY_1n,
	DISPLAY_2n => DISPLAY_2n,
	DISPLAY_3n => DISPLAY_3n,
	DISPLAY_4n => DISPLAY_4n,
	DISPLAY_5n => DISPLAY_5n,
	DISPLAY_6n => DISPLAY_6n,
	FINALIZAR_LLAMADA => FINALIZAR_LLAMADA,
	HISTORIAL_LLAMADAS => HISTORIAL_LLAMADAS,
	LLAMADA_EN_PROGRESO => LLAMADA_EN_PROGRESO,
	OCUPADO => OCUPADO,
	REALIZAR_LLAMADA => REALIZAR_LLAMADA,
	resetn => resetn,
	start => start,
	TECLADO => TECLADO,
	u1 => u1,
	u2 => u2,
	u3 => u3,
	u4 => u4,
	u5 => u5,
	u6 => u6,
	u7 => u7,
	u8 => u8
	);

-- BORRAR
t_prcs_BORRAR: PROCESS
BEGIN
	BORRAR <= '0';
WAIT;
END PROCESS t_prcs_BORRAR;

-- clock
t_prcs_clock: PROCESS
BEGIN
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
	WAIT FOR 5000 ps;
	FOR i IN 1 TO 98
	LOOP
		clock <= '1';
		WAIT FOR 5000 ps;
		clock <= '0';
		WAIT FOR 5000 ps;
	END LOOP;
	clock <= '1';
	WAIT FOR 5000 ps;
	clock <= '0';
WAIT;
END PROCESS t_prcs_clock;

-- FINALIZAR_LLAMADA
t_prcs_FINALIZAR_LLAMADA: PROCESS
BEGIN
	FINALIZAR_LLAMADA <= '0';
WAIT;
END PROCESS t_prcs_FINALIZAR_LLAMADA;

-- HISTORIAL_LLAMADAS
t_prcs_HISTORIAL_LLAMADAS: PROCESS
BEGIN
	HISTORIAL_LLAMADAS <= '0';
WAIT;
END PROCESS t_prcs_HISTORIAL_LLAMADAS;

-- REALIZAR_LLAMADA
t_prcs_REALIZAR_LLAMADA: PROCESS
BEGIN
	REALIZAR_LLAMADA <= '0';
	WAIT FOR 420000 ps;
	REALIZAR_LLAMADA <= '1';
	WAIT FOR 20000 ps;
	REALIZAR_LLAMADA <= '0';
	WAIT FOR 380000 ps;
	REALIZAR_LLAMADA <= '1';
	WAIT FOR 20000 ps;
	REALIZAR_LLAMADA <= '0';
WAIT;
END PROCESS t_prcs_REALIZAR_LLAMADA;

-- resetn
t_prcs_resetn: PROCESS
BEGIN
	resetn <= '1';
WAIT;
END PROCESS t_prcs_resetn;

-- start
t_prcs_start: PROCESS
BEGIN
	start <= '0';
	WAIT FOR 10000 ps;
	start <= '1';
	WAIT FOR 30000 ps;
	start <= '0';
WAIT;
END PROCESS t_prcs_start;
-- TECLADO[9]
t_prcs_TECLADO_9: PROCESS
BEGIN
	TECLADO(9) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_9;
-- TECLADO[8]
t_prcs_TECLADO_8: PROCESS
BEGIN
	TECLADO(8) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_8;
-- TECLADO[7]
t_prcs_TECLADO_7: PROCESS
BEGIN
	TECLADO(7) <= '0';
	WAIT FOR 120000 ps;
	TECLADO(7) <= '1';
	WAIT FOR 40000 ps;
	TECLADO(7) <= '0';
	WAIT FOR 390000 ps;
	TECLADO(7) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(7) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_7;
-- TECLADO[6]
t_prcs_TECLADO_6: PROCESS
BEGIN
	TECLADO(6) <= '0';
	WAIT FOR 50000 ps;
	TECLADO(6) <= '1';
	WAIT FOR 40000 ps;
	TECLADO(6) <= '0';
	WAIT FOR 160000 ps;
	TECLADO(6) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(6) <= '0';
	WAIT FOR 220000 ps;
	TECLADO(6) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(6) <= '0';
	WAIT FOR 120000 ps;
	TECLADO(6) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(6) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_6;
-- TECLADO[5]
t_prcs_TECLADO_5: PROCESS
BEGIN
	TECLADO(5) <= '0';
	WAIT FOR 300000 ps;
	TECLADO(5) <= '1';
	WAIT FOR 40000 ps;
	TECLADO(5) <= '0';
	WAIT FOR 20000 ps;
	TECLADO(5) <= '1';
	WAIT FOR 40000 ps;
	TECLADO(5) <= '0';
	WAIT FOR 300000 ps;
	TECLADO(5) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(5) <= '0';
	WAIT FOR 20000 ps;
	TECLADO(5) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(5) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_5;
-- TECLADO[4]
t_prcs_TECLADO_4: PROCESS
BEGIN
	TECLADO(4) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_4;
-- TECLADO[3]
t_prcs_TECLADO_3: PROCESS
BEGIN
	TECLADO(3) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_3;
-- TECLADO[2]
t_prcs_TECLADO_2: PROCESS
BEGIN
	TECLADO(2) <= '0';
	WAIT FOR 180000 ps;
	TECLADO(2) <= '1';
	WAIT FOR 40000 ps;
	TECLADO(2) <= '0';
	WAIT FOR 380000 ps;
	TECLADO(2) <= '1';
	WAIT FOR 30000 ps;
	TECLADO(2) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_2;
-- TECLADO[1]
t_prcs_TECLADO_1: PROCESS
BEGIN
	TECLADO(1) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_1;
-- TECLADO[0]
t_prcs_TECLADO_0: PROCESS
BEGIN
	TECLADO(0) <= '0';
WAIT;
END PROCESS t_prcs_TECLADO_0;

-- u1
t_prcs_u1: PROCESS
BEGIN
	u1 <= '1';
	WAIT FOR 490000 ps;
	u1 <= '0';
WAIT;
END PROCESS t_prcs_u1;

-- u2
t_prcs_u2: PROCESS
BEGIN
	u2 <= '0';
	WAIT FOR 490000 ps;
	u2 <= '1';
WAIT;
END PROCESS t_prcs_u2;

-- u3
t_prcs_u3: PROCESS
BEGIN
	u3 <= '0';
WAIT;
END PROCESS t_prcs_u3;

-- u4
t_prcs_u4: PROCESS
BEGIN
	u4 <= '0';
WAIT;
END PROCESS t_prcs_u4;

-- u5
t_prcs_u5: PROCESS
BEGIN
	u5 <= '0';
WAIT;
END PROCESS t_prcs_u5;

-- u6
t_prcs_u6: PROCESS
BEGIN
	u6 <= '0';
WAIT;
END PROCESS t_prcs_u6;

-- u7
t_prcs_u7: PROCESS
BEGIN
	u7 <= '0';
WAIT;
END PROCESS t_prcs_u7;

-- u8
t_prcs_u8: PROCESS
BEGIN
	u8 <= '0';
WAIT;
END PROCESS t_prcs_u8;
END Call_Center_arch;
