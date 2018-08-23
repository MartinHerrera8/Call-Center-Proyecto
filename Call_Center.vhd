library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.archivo_componentes.all;

Entity Call_Center is
	Port ( 	u1,u2,u3,u4,u5,u6,u7,u8: IN std_logic;
				clock,resetn:				 IN std_logic; --Por default
				start:				 		 IN std_logic;
				REALIZAR_LLAMADA:			 IN std_logic;
				FINALIZAR_LLAMADA:		 IN std_logic;
				HISTORIAL_LLAMADAS:		 IN std_logic;
				BORRAR:				 		 IN std_logic;
				TECLADO:						 IN std_logic_vector (9 downto 0);
				LLAMADA_EN_PROGRESO:		 BUFFER std_logic_vector (7 downto 0);
				OCUPADO:						 OUT std_logic;
				t_a,t_b,t_c: out std_logic;
				DISPLAY_1n:				 OUT std_logic_vector (3 downto 0);
				DISPLAY_2n:				 OUT std_logic_vector (3 downto 0);
				DISPLAY_3n:				 OUT std_logic_vector (3 downto 0);
				DISPLAY_4n:				 OUT std_logic_vector (3 downto 0);
				DISPLAY_5n:				 OUT std_logic_vector (3 downto 0);
				DISPLAY_6n:				 OUT std_logic_vector (3 downto 0)
				);
end Call_Center;

Architecture uno of Call_Center is

Signal usuario: std_logic_vector (7 downto 0);
Signal num_bcd,cuenta,sal_mux_1,sal_mux_2,sal_mux_3,sal_mux_4,sal_mux_5,sal_mux_6: std_logic_vector (3 downto 0);
Signal direc_u1,direc_u2,direc_u3,direc_u4,direc_u5,direc_u6,direc_u7,direc_u8: std_logic_vector (3 downto 0);
Signal dhist_1,dhist_2,dhist_3,dhist_4,dhist_5,dhist_6,dhist_7,dhist_8: std_logic_vector (3 downto 0);
signal cuenta_oc,cuenta_hist: std_logic_vector (3 downto 0);
Signal incremento_u1,incremento_u2,incremento_u3,incremento_u4,incremento_u5,incremento_u6,incremento_u7,incremento_u8: std_logic;
Signal reset_u1,reset_u2,reset_u3,reset_u4,reset_u5,reset_u6,reset_u7,reset_u8: std_logic;
Signal ihist_u1,ihist_u2,ihist_u3,ihist_u4,ihist_u5,ihist_u6,ihist_u7,ihist_u8: std_logic;
Signal rhist_u1,rhist_u2,rhist_u3,rhist_u4,rhist_u5,rhist_u6,rhist_u7,rhist_u8: std_logic;
Signal igual_oc,icuenta0,icuenta1,icuenta2,icuenta3,icuenta4,icuenta5,igual_hist1: std_logic;
Signal boton,uf,alguna_llamada,cont6,Fu,num_existe,Re_oc,Re_des,dir_hist_igual,reset_oc,reset_hist,disp_select: std_logic;
Signal iusuario1,iusuario2,iusuario3,iusuario4,iusuario5,iusuario6,iusuario7,iusuario8: std_logic;
Signal iusuario_ant1,iusuario_ant2,iusuario_ant3,iusuario_ant4,iusuario_ant5,iusuario_ant6,iusuario_ant7,iusuario_ant8: std_logic;
Signal igual_h1,igual_h2,igual_h3,igual_h4,igual_h5,igual_h6,igual_h7,igual_h8: std_logic;
Signal incrementa,cuenta_a_0: std_logic;
Signal selec_u1,selec_u2,selec_u3,selec_u4,selec_u5,selec_u6,selec_u7,selec_u8: std_logic_vector (1 downto 0);
Signal adress_u1,adress_u2,adress_u3,adress_u4,adress_u5,adress_u6,adress_u7,adress_u8: std_logic_vector (3 downto 0);
Signal historial_u1,historial_u2,historial_u3,historial_u4,historial_u5,historial_u6,historial_u7,historial_u8: std_logic_vector (23 downto 0);
Signal numero_actual,numero_ram: std_logic_vector (23 downto 0);
Signal enable_reg: std_logic_vector (5 downto 0);
Signal sal_reg_1,sal_reg_2,sal_reg_3,sal_reg_4,sal_reg_5,sal_reg_6: std_logic_vector (3 downto 0);
Signal num1hist,num2hist,num3hist,num4hist,num5hist,num6hist: std_logic_vector (3 downto 0);
Signal clock_ff_d,reset_ff_d,led1,led2,led3,led4,led5,led6,led7,led8,reset_reg: std_logic;
Signal we_u1,we_u2,we_u3,we_u4,we_u5,we_u6,we_u7,we_u8: std_logic;
Signal Fu_ad1,Fu_ad2,Fu_ad3,Fu_ad4,Fu_ad5,Fu_ad6,Fu_ad7,Fu_ad8: std_logic;
Signal cero: std_logic_vector (3 downto 0):="0000";
Signal uno: std_logic_vector (3 downto 0):="0001";
Signal dos: std_logic_vector (3 downto 0):="0010";
Signal tres: std_logic_vector (3 downto 0):="0011";
Signal cuatro: std_logic_vector (3 downto 0):="0100";
Signal cinco: std_logic_vector (3 downto 0):="0101";
Signal CLOCK_50MHz,CLOCK_1MHz,CLOCK_100kHz,CLOCK_10kHz,CLOCK_1kHz,CLOCK_100Hz,CLOCK_10Hz,CLOCK_1Hz: std_logic;
Signal resetn_sr,start_sr,REALIZAR_LLAMADA_sr,FINALIZAR_LLAMADA_sr,HISTORIAL_LLAMADAS_sr,BORRAR_sr: std_logic;
Signal TECLADO_sr: std_logic_vector (9 downto 0);
--Numero del usuario 1
Signal num_u1: std_logic_vector(23 downto 0):="011001110010010100011001";
--Numero del usuario 2
Signal num_u2: std_logic_vector(23 downto 0):="011001110101100000110111";
--Numero del usuario 3
Signal num_u3: std_logic_vector(23 downto 0):="011001110010011001010101";
--Numero del usuario 4
Signal num_u4: std_logic_vector(23 downto 0):="011001110001001101000010";
--Numero del usuario 5
Signal num_u5: std_logic_vector(23 downto 0):="011001110010100110000011";
--Numero del usuario 6
Signal num_u6: std_logic_vector(23 downto 0):="011001110010001101010110";
--Numero del usuario 7
Signal num_u7: std_logic_vector(23 downto 0):="011001110001010000111000";
--Numero del usuario 8
Signal num_u8: std_logic_vector(23 downto 0):="011001110100010001010011";
Begin
	uf <= (((u1) and not(u2) and not(u3) and not(u4) and not(u5) and	not(u6) and not(u7) and not(u8)) or 
			 (not (u1) and (u2) and not(u3) and not(u4) and not(u5) and	not(u6) and not(u7) and not(u8)) or
			 (not (u1) and not(u2) and (u3) and not(u4) and not(u5) and	not(u6) and not(u7) and not(u8)) or
			 (not (u1) and not(u2) and not(u3) and (u4) and not(u5) and	not(u6) and not(u7) and not(u8)) or
			 (not (u1) and not(u2) and not(u3) and not(u4) and (u5) and	not(u6) and not(u7) and not(u8)) or
			 (not (u1) and not(u2) and not(u3) and not(u4) and not(u5) and	(u6) and not(u7) and not(u8)) or
			 (not (u1) and not(u2) and not(u3) and not(u4) and not(u5) and	not(u6) and (u7) and not(u8)) or
			 (not (u1) and not(u2) and not(u3) and not(u4) and not(u5) and	not(u6) and not(u7) and (u8)) );
	usuario<=u8&u7&u6&u5&u4&u3&u2&u1;--usuario seleccionado
	numero_actual<=sal_reg_1&sal_reg_2&sal_reg_3&sal_reg_4&sal_reg_5&sal_reg_6;--numero actual
	num1hist<=numero_ram(23)&numero_ram(22)&numero_ram(21)&numero_ram(20);--numero 1 del historial que se obtiene de la RAM
	num2hist<=numero_ram(19)&numero_ram(18)&numero_ram(17)&numero_ram(16);--el numero de la ram puede usarse para mostrar el historial
	num3hist<=numero_ram(15)&numero_ram(14)&numero_ram(13)&numero_ram(12);--o para conocer el numero anterior
	num4hist<=numero_ram(11)&numero_ram(10)&numero_ram(9)&numero_ram(8);
	num5hist<=numero_ram(7)&numero_ram(6)&numero_ram(5)&numero_ram(4);
	num6hist<=numero_ram(3)&numero_ram(2)&numero_ram(1)&numero_ram(0);
	boton <= (num_bcd(3) or num_bcd(2) or num_bcd(1) or num_bcd(0)) and uf;--además de presionar un botón un usuario está seleccionado
	alguna_llamada <= (LLAMADA_EN_PROGRESO(0) or LLAMADA_EN_PROGRESO(1) );
	cont6 <= (not cuenta (3) and cuenta(2) and not cuenta(1) and cuenta(0));
	Fu <= (uf and alguna_llamada and FINALIZAR_LLAMADA_sr);--usuario seleccionado y alguna llamada en progreso, sólo ahí puedo finalizar
	num_existe <= (iusuario1 or iusuario2 or iusuario3 or iusuario4 or iusuario5 or iusuario6 or iusuario7 or iusuario8);--si el numero actual es igual a al menos un número en el registro
	Re_oc <= (num_existe and alguna_llamada and REALIZAR_LLAMADA_sr);--Para mostrar el ocupado, si el numero escrito existe y ademas existe alguna llamada y presiono realizar llamada
	Re_des <= (num_existe and not (alguna_llamada) and REALIZAR_LLAMADA_sr);--para realizar la llamada el numero escrito debe existir, no debe haber ninguna llamada y debo presionar realizar llamada
	dir_hist_igual <= (igual_h1 or igual_h2 or igual_h3 or igual_h4 or igual_h5 or igual_h6 or igual_h7 or igual_h8);--si la direccion de alguno de los historiales ya se igualo a la direccion de las ram en las que voy guardando
	Fu_ad1 <= (uf and u1 and LLAMADA_EN_PROGRESO(0)); --solo finalizo la llamada si hay una en progreso y de paso el adress de la ram debe aumentar a la siguiente para guardar
	Fu_ad2 <= (uf and u2 and LLAMADA_EN_PROGRESO(1));
	Fu_ad3 <= (uf and u3 and LLAMADA_EN_PROGRESO(2));
	Fu_ad4 <= (uf and u4 and LLAMADA_EN_PROGRESO(3));
	Fu_ad5 <= (uf and u5 and LLAMADA_EN_PROGRESO(4));
	Fu_ad6 <= (uf and u6 and LLAMADA_EN_PROGRESO(5));
	Fu_ad7 <= (uf and u7 and LLAMADA_EN_PROGRESO(6));
	Fu_ad8 <= (uf and u8 and LLAMADA_EN_PROGRESO(7));
	DISPLAY_1n <= sal_mux_1;-- tomar en cuenta para la particion funcional
	DISPLAY_2n <= sal_mux_2;
	DISPLAY_3n <= sal_mux_3;
	DISPLAY_4n <= sal_mux_4;
  	DISPLAY_5n <= sal_mux_5;
	DISPLAY_6n <= sal_mux_6;	
	Gsr_1: ANTIREBOTE port map (resetn,CLOCK_100Hz,resetn_sr);
	Gsr_2: ANTIREBOTE port map (start,CLOCK_100Hz,start_sr);
	Gsr_3: ANTIREBOTE port map (REALIZAR_LLAMADA,CLOCK_100Hz,REALIZAR_LLAMADA_sr);
	Gsr_4: ANTIREBOTE port map (FINALIZAR_LLAMADA,CLOCK_100Hz,FINALIZAR_LLAMADA_sr);
	Gsr_5: ANTIREBOTE port map (HISTORIAL_LLAMADAS,CLOCK_100Hz,HISTORIAL_LLAMADAS_sr);
	Gsr_6: ANTIREBOTE port map (BORRAR,CLOCK_100Hz,BORRAR_sr);
	Gsr_7: ANTIREBOTE port map (TECLADO(0),CLOCK_100Hz,TECLADO_sr(0));
	Gsr_8: ANTIREBOTE port map (TECLADO(1),CLOCK_100Hz,TECLADO_sr(1));
	Gsr_9: ANTIREBOTE port map (TECLADO(2),CLOCK_100Hz,TECLADO_sr(2));
	Gsr_10: ANTIREBOTE port map (TECLADO(3),CLOCK_100Hz,TECLADO_sr(3));
	Gsr_11: ANTIREBOTE port map (TECLADO(4),CLOCK_100Hz,TECLADO_sr(4));
	Gsr_12: ANTIREBOTE port map (TECLADO(5),CLOCK_100Hz,TECLADO_sr(5));
	Gsr_13: ANTIREBOTE port map (TECLADO(6),CLOCK_100Hz,TECLADO_sr(6));
	Gsr_14: ANTIREBOTE port map (TECLADO(7),CLOCK_100Hz,TECLADO_sr(7));
	Gsr_15: ANTIREBOTE port map (TECLADO(8),CLOCK_100Hz,TECLADO_sr(8));
	Gsr_16: ANTIREBOTE port map (TECLADO(9),CLOCK_100Hz,TECLADO_sr(9));
	G: CLOCK_DIV_50 port map (clock,CLOCK_1MHz,CLOCK_100KHz,CLOCK_10KHz,CLOCK_1KHz,CLOCK_100Hz,CLOCK_10Hz,CLOCK_1Hz);
	G0: encoder_Dec_BCD port map (TECLADO_sr,num_bcd);
	G1_1: contador_1_4bits port map (incrementa, cuenta_a_0, cuenta);--contador para cuando presiono una tecla
	--Contador para el adress del usuario n
	G1_u1: contador_1_4bits port map (incremento_u1,reset_u1,direc_u1);
	G1_u2: contador_1_4bits port map (incremento_u2,reset_u2,direc_u2);
	G1_u3: contador_1_4bits port map (incremento_u3,reset_u3,direc_u3);
	G1_u4: contador_1_4bits port map (incremento_u4,reset_u4,direc_u4);
	G1_u5: contador_1_4bits port map (incremento_u5,reset_u5,direc_u5);
	G1_u6: contador_1_4bits port map (incremento_u6,reset_u6,direc_u6);
	G1_u7: contador_1_4bits port map (incremento_u7,reset_u7,direc_u7);
	G1_u8: contador_1_4bits port map (incremento_u8,reset_u8,direc_u8);
	--Contador para el historial adress del usuario n
	G1_hist_u1: contador_1_4bits port map (ihist_u1,rhist_u1,dhist_1);
	G1_hist_u2: contador_1_4bits port map (ihist_u2,rhist_u2,dhist_2);
	G1_hist_u3: contador_1_4bits port map (ihist_u3,rhist_u3,dhist_3);
	G1_hist_u4: contador_1_4bits port map (ihist_u4,rhist_u4,dhist_4);
	G1_hist_u5: contador_1_4bits port map (ihist_u5,rhist_u5,dhist_5);
	G1_hist_u6: contador_1_4bits port map (ihist_u6,rhist_u6,dhist_6);
	G1_hist_u7: contador_1_4bits port map (ihist_u7,rhist_u7,dhist_7);
	G1_hist_u8: contador_1_4bits port map (ihist_u8,rhist_u8,dhist_8);
	G1_ocupado: contador_1_4bits port map (CLOCK_1Hz,reset_oc,cuenta_oc);--cuenta hasta 2 segundos
	G1_historial: contador_1_4bits port map (CLOCK_1Hz,reset_hist,cuenta_hist);--cuenta 4 segundos
	G2_resta_u1: mux_2selector_restador port map (direc_u1,direc_u1,dhist_1,selec_u1,adress_u1);--la RAM puede trabajar de 3 maneras
	G2_resta_u2: mux_2selector_restador port map (direc_u2,direc_u2,dhist_2,selec_u2,adress_u2);--guardando el numero y aumentando el adress
	G2_resta_u3: mux_2selector_restador port map (direc_u3,direc_u3,dhist_3,selec_u3,adress_u3);--verificando la direccion anterior (ultimo numero guardado para saber a que numero llamo determinado usuario)
	G2_resta_u4: mux_2selector_restador port map (direc_u4,direc_u4,dhist_4,selec_u4,adress_u4);--y un conteo para mostral el historial en el display
	G2_resta_u5: mux_2selector_restador port map (direc_u5,direc_u5,dhist_5,selec_u5,adress_u5);
	G2_resta_u6: mux_2selector_restador port map (direc_u6,direc_u6,dhist_6,selec_u6,adress_u6);
	G2_resta_u7: mux_2selector_restador port map (direc_u7,direc_u7,dhist_7,selec_u7,adress_u7);
	G2_resta_u8: mux_2selector_restador port map (direc_u8,direc_u8,dhist_8,selec_u8,adress_u8);
	G2_h1: mux_8s port map (historial_u1,historial_u2,historial_u3,historial_u4,historial_u5,historial_u6,historial_u7,historial_u8,usuario,numero_ram);--depende del usuario que quiera ver el historial, entonces solo ahi se va a verificar el ultimo numero guardado en la ram de dicho usuario
	G2_sal_d1: mux_1selector port map (sal_reg_1,num1hist,disp_select,sal_mux_1);--seleccionar en el display:
	G2_sal_d2: mux_1selector port map (sal_reg_2,num2hist,disp_select,sal_mux_2);--el numero escrito actual o
	G2_sal_d3: mux_1selector port map (sal_reg_3,num3hist,disp_select,sal_mux_3);--mostrar el historial
	G2_sal_d4: mux_1selector port map (sal_reg_4,num4hist,disp_select,sal_mux_4);
	G2_sal_d5: mux_1selector port map (sal_reg_5,num5hist,disp_select,sal_mux_5);
	G2_sal_d6: mux_1selector port map (sal_reg_6,num6hist,disp_select,sal_mux_6);
	G3_h1: comparador_4bits_menor port map (direc_u1,dhist_1,igual_h1);
	G3_h2: comparador_4bits_menor port map (direc_u2,dhist_2,igual_h2);
	G3_h3: comparador_4bits_menor port map (direc_u3,dhist_3,igual_h3);
	G3_h4: comparador_4bits_menor port map (direc_u4,dhist_4,igual_h4);
	G3_h5: comparador_4bits_menor port map (direc_u5,dhist_5,igual_h5);
	G3_h6: comparador_4bits_menor port map (direc_u6,dhist_6,igual_h6);
	G3_h7: comparador_4bits_menor port map (direc_u7,dhist_7,igual_h7);
	G3_h8: comparador_4bits_menor port map (direc_u8,dhist_8,igual_h8);
	G3_nu1: comparador_24bits port map (numero_actual,num_u1,iusuario1);--Si el numero actual le pertenece al usuario 1
	G3_nu2: comparador_24bits port map (numero_actual,num_u2,iusuario2);--Si el numero actual le pertenece al usuario 2
	G3_nu3: comparador_24bits port map (numero_actual,num_u3,iusuario3);
	G3_nu4: comparador_24bits port map (numero_actual,num_u4,iusuario4);
	G3_nu5: comparador_24bits port map (numero_actual,num_u5,iusuario5);
	G3_nu6: comparador_24bits port map (numero_actual,num_u6,iusuario6);
	G3_nu7: comparador_24bits port map (numero_actual,num_u7,iusuario7);
	G3_nu8: comparador_24bits port map (numero_actual,num_u8,iusuario8);--Si el numero actual le pertenece al usuario 8
	G3_hu1: comparador_24bits port map (numero_ram,num_u1,iusuario_ant1);--Si el numero anterior de la ram (para finalizar la llamada) le pertenece al usuario 1
	G3_hu2: comparador_24bits port map (numero_ram,num_u2,iusuario_ant2);--Si el numero anterior de la ram (para finalizar la llamada) le pertenece al usuario 2
	G3_hu3: comparador_24bits port map (numero_ram,num_u3,iusuario_ant3);
	G3_hu4: comparador_24bits port map (numero_ram,num_u4,iusuario_ant4);
	G3_hu5: comparador_24bits port map (numero_ram,num_u5,iusuario_ant5);
	G3_hu6: comparador_24bits port map (numero_ram,num_u6,iusuario_ant6);
	G3_hu7: comparador_24bits port map (numero_ram,num_u7,iusuario_ant7);
	G3_hu8: comparador_24bits port map (numero_ram,num_u8,iusuario_ant8);--Si el numero anterior de la ram (para finalizar la llamada) le pertenece al usuario 8
	G3_oc: comparador_4bits port map (dos,cuenta_oc,igual_oc);--agregado
	G3_cuentn1: comparador_4bits port map (cuenta,cero,icuenta0);--si la cuenta está en cero
	G3_cuentn2: comparador_4bits port map (cuenta,uno,icuenta1);--si la cuenta está en uno
	G3_cuentn3: comparador_4bits port map (cuenta,dos,icuenta2);--si la cuenta está en dos
	G3_cuentn4: comparador_4bits port map (cuenta,tres,icuenta3);--si la cuenta está en tres
	G3_cuentn5: comparador_4bits port map (cuenta,cuatro,icuenta4);--si la cuenta está en cuatro
	G3_cuentn6: comparador_4bits port map (cuenta,cinco,icuenta5);--si la cuenta está en cinco
	G3_hist: comparador_4bits port map (cuatro,cuenta_hist,igual_hist1);--si ha llegado a los 4 segundos
	G4: flip_flop_D port map (clock_ff_d,reset_ff_d,led1,LLAMADA_EN_PROGRESO(0));
	G5: flip_flop_D port map (clock_ff_d,reset_ff_d,led2,LLAMADA_EN_PROGRESO(1));
	G6: flip_flop_D port map (clock_ff_d,reset_ff_d,led3,LLAMADA_EN_PROGRESO(2));
	G7: flip_flop_D port map (clock_ff_d,reset_ff_d,led4,LLAMADA_EN_PROGRESO(3));
	G8: flip_flop_D port map (clock_ff_d,reset_ff_d,led5,LLAMADA_EN_PROGRESO(4));
	G9: flip_flop_D port map (clock_ff_d,reset_ff_d,led6,LLAMADA_EN_PROGRESO(5));
	G10: flip_flop_D port map (clock_ff_d,reset_ff_d,led7,LLAMADA_EN_PROGRESO(6));
	G11: flip_flop_D port map (clock_ff_d,reset_ff_d,led8,LLAMADA_EN_PROGRESO(7));
	G12_1: registro_sostenimiento port map (clock,reset_reg,enable_reg(0),num_bcd,sal_reg_1);
	G12_2: registro_sostenimiento port map (clock,reset_reg,enable_reg(1),num_bcd,sal_reg_2);
	G12_3: registro_sostenimiento port map (clock,reset_reg,enable_reg(2),num_bcd,sal_reg_3);
	G12_4: registro_sostenimiento port map (clock,reset_reg,enable_reg(3),num_bcd,sal_reg_4);
	G12_5: registro_sostenimiento port map (clock,reset_reg,enable_reg(4),num_bcd,sal_reg_5);
	G12_6: registro_sostenimiento port map (clock,reset_reg,enable_reg(5),num_bcd,sal_reg_6);
	G14_u1: RAM port map (clock,we_u1,adress_u1,numero_actual,historial_u1);--usuario 1 historial
	G14_u2: RAM port map (clock,we_u2,adress_u2,numero_actual,historial_u2);--usuario 2 historial
	G14_u3: RAM port map (clock,we_u3,adress_u3,numero_actual,historial_u3);--usuario 3 historial
	G14_u4: RAM port map (clock,we_u4,adress_u4,numero_actual,historial_u4);--usuario 4 historial
	G14_u5: RAM port map (clock,we_u5,adress_u5,numero_actual,historial_u5);--usuario 5 historial
	G14_u6: RAM port map (clock,we_u6,adress_u6,numero_actual,historial_u6);--usuario 6 historial
	G14_u7: RAM port map (clock,we_u7,adress_u7,numero_actual,historial_u7);--usuario 7 historial
	G14_u8: RAM port map (clock,we_u8,adress_u8,numero_actual,historial_u8);--usuario 8 historial
	
	MSS: MSS_Call_Center port map 
			(clock,resetn_sr,start_sr,boton,BORRAR_sr,Fu,HISTORIAL_LLAMADAS_sr,cont6,Re_oc,Re_des,igual_oc,dir_hist_igual,igual_hist1,
			REALIZAR_LLAMADA_sr,FINALIZAR_LLAMADA_sr,icuenta0,icuenta1,icuenta2,icuenta3,icuenta4,icuenta5,u1,u2,u3,u4,u5,u6,u7,u8,
			Fu_ad1,Fu_ad2,Fu_ad3,Fu_ad4,Fu_ad5,Fu_ad6,Fu_ad7,Fu_ad8,iusuario1,iusuario2,iusuario3,iusuario4,iusuario5,iusuario6,
			iusuario7,iusuario8,iusuario_ant1,iusuario_ant2,iusuario_ant3,iusuario_ant4,iusuario_ant5,iusuario_ant6,iusuario_ant7,
			iusuario_ant8,incrementa,reset_reg,cuenta_a_0,incremento_u1,incremento_u2,incremento_u3,incremento_u4,incremento_u5,incremento_u6,
			incremento_u7,incremento_u8,we_u1,we_u2,we_u3,we_u4,we_u5,we_u6,we_u7,we_u8,reset_oc,OCUPADO,reset_hist,disp_select,rhist_u1,
			rhist_u2,rhist_u3,rhist_u4,rhist_u5,rhist_u6,rhist_u7,rhist_u8,ihist_u1,ihist_u2,ihist_u3,ihist_u4,ihist_u5,ihist_u6,ihist_u7,
			ihist_u8,led1,led2,led3,led4,led5,led6,led7,led8,clock_ff_d,selec_u1,selec_u2,selec_u3,selec_u4,selec_u5,selec_u6,selec_u7,selec_u8,
			enable_reg,t_a,t_b,t_c); 
end uno;	