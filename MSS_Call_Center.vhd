LIBRARY IEEE;
USE  IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all; 

entity MSS_Call_Center is
	Port (clock,resetn,start,boton,BORRAR,Fu,HISTORIAL_LLAMADAS,cont6,Re_oc,Re_des,igual_oc,dir_hist_igual,igual_hist1,
			REALIZAR_LLAMADA,FINALIZAR_LLAMADA,icuenta0,icuenta1,icuenta2,icuenta3,icuenta4,icuenta5,u1,u2,u3,u4,u5,u6,u7,u8,
			Fu_ad1,Fu_ad2,Fu_ad3,Fu_ad4,Fu_ad5,Fu_ad6,Fu_ad7,Fu_ad8,iusuario1,iusuario2,iusuario3,iusuario4,iusuario5,iusuario6,
			iusuario7,iusuario8,iusuario_ant1,iusuario_ant2,iusuario_ant3,iusuario_ant4,iusuario_ant5,iusuario_ant6,iusuario_ant7,
			iusuario_ant8: IN std_logic;
			
			incrementa,reset_reg,cuenta_a_0,incremento_u1,incremento_u2,incremento_u3,incremento_u4,incremento_u5,incremento_u6,
			incremento_u7,incremento_u8,we_u1,we_u2,we_u3,we_u4,we_u5,we_u6,we_u7,we_u8,reset_oc,OCUPADO,reset_hist,disp_select,rhist_u1,
			rhist_u2,rhist_u3,rhist_u4,rhist_u5,rhist_u6,rhist_u7,rhist_u8,ihist_u1,ihist_u2,ihist_u3,ihist_u4,ihist_u5,ihist_u6,ihist_u7,
			ihist_u8,led1,led2,led3,led4,led5,led6,led7,led8,clock_ff_d: OUT std_logic;
			
			selec_u1,selec_u2,selec_u3,selec_u4,selec_u5,selec_u6,selec_u7,selec_u8: OUT std_logic_vector (1 downto 0);
			
			enable_reg: OUT std_logic_vector (5 downto 0);
			t_a,t_b,t_c: out std_logic);
	
end MSS_Call_Center;

ARCHITECTURE sol OF MSS_Call_Center IS

Type estado is (Ta,Tb,Tc,Te,Tf,Tg,Th,Ti,Tj,Tk,Tl,Tm,Tr,Ts,Tt,Tu,Tv,Tw,Tx,Ty,T_oc,T_oc_apagado,T_hist,T_hist1,T_hi,T1);--falta revisar qué estados cambié
Signal y: estado;
Begin
	Process (clock,resetn)
	Begin
		if resetn='0' then y<=Ta;
		elsif (clock'event and clock='1') then
			case y is
				when Ta => if start='1' then y<=Tb; else y<=Ta; end if;
				when Tb => if start='1' then y<=Tb; else y<=Tc; end if;
				when Tc => if boton='1' then y<=Tf;
							  elsif (BORRAR='1') then y<=Tr;
							  elsif Fu='1' then y<=Tk;
							  elsif HISTORIAL_LLAMADAS='1' then y<=T_hist;
							  else y<=Tc; end if;
				when Tf => y<=Te;
				When Te => if boton='1' then y<=Te; else y<=Tg; end if;
				when Tg => if cont6='0' then y<=Th; else y<=Ti; end if;
				when Th => y<=Tc;--Por el incremento, es una salida
				when Ti => if Re_oc='1' then y<=T_oc;
							  elsif Re_des='1' then y<=Tj;
							  elsif BORRAR='1' then y<=Tr;
							  else y<=Ti; end if;
							  
				when T_oc => if (igual_oc='1') then y<=T_oc_apagado; else y<=T_oc; end if;--estado de transicion para poder apagar la señal de ocupado
				when T_oc_apagado => y<=Tc;
				when T_hist => if HISTORIAL_LLAMADAS='1' then y<=T_hist; else y<=T_hist1; end if;
				when T_hist1 => if dir_hist_igual='1' then y<=Tc;--se sobre entiende que sólo un usuario está seleccionado antes de que presione el botón del historial
							  else y<=T_hi;end if;
				when T_hi => if igual_hist1='1' then y<=T1;
							  else y<=T_hi; end if;
				when T1 => y<=T_hist1;
				
				when Tj => if REALIZAR_LLAMADA='1' then y<=Tj; else y<=Tl; end if;
				When Tl => y<=Ts;--Porque hay una salida (que el led se encienda)
				
				when Tk => if FINALIZAR_LLAMADA='1' then y<=Tk; else y<=Tm; end if;
				
				when Tm => y<=Tt; --Porque hay una salida (que el led se apague)

				when Tr => if BORRAR='1' then y<=Tr; else y<=Ty; end if;
				When Ts => y<=Tu;
				when Tu => y<=Tw;
				when Tw => y<=Tc;
				when Tt => y<=Tv;
				when Tv => y<=Tx;
				when Tx => y<=Tc;
				when Ty => y<=Tc;
		
			end case;
		end if;
	end Process;
	Process(y)
	Begin
		case y is	
				when Ta => incrementa<='0';reset_reg<='1';cuenta_a_0<='0';--Condicion inicial, si en un estado cambia esa condicion
							  incremento_u1<='0';incremento_u2<='0';incremento_u3<='0';incremento_u4<='0';--solo lo hace en ese estado, al momento
							  incremento_u5<='0';incremento_u6<='0';incremento_u7<='0';incremento_u8<='0';we_u1<='0';--de pasar a otro estado todo
							  we_u2<='0';we_u3<='0';we_u4<='0';we_u5<='0';we_u6<='0';we_u7<='0';we_u8<='0';--vuelve a la condicion inicial
							  selec_u1<="00";selec_u2<="00";selec_u3<="00";selec_u4<="00";selec_u5<="00";selec_u6<="00";selec_u7<="00";selec_u8<="00";
							  reset_oc<='1'; OCUPADO<='0';reset_hist<='1';disp_select<='0';t_a<='1';t_b<='0';t_c<='0';
				when Tb => incrementa<='0';reset_reg<='1';cuenta_a_0<='0';--Condicion inicial, si en un estado cambia esa condicion
							  incremento_u1<='0';incremento_u2<='0';incremento_u3<='0';incremento_u4<='0';--solo lo hace en ese estado, al momento
							  incremento_u5<='0';incremento_u6<='0';incremento_u7<='0';incremento_u8<='0';we_u1<='0';--de pasar a otro estado todo
							  we_u2<='0';we_u3<='0';we_u4<='0';we_u5<='0';we_u6<='0';we_u7<='0';we_u8<='0';--vuelve a la condicion inicial
							  selec_u1<="00";selec_u2<="00";selec_u3<="00";selec_u4<="00";selec_u5<="00";selec_u6<="00";selec_u7<="00";selec_u8<="00";
							  reset_oc<='1'; OCUPADO<='0';reset_hist<='1';disp_select<='0';t_a<='0';t_b<='1';t_c<='0';
							  rhist_u1<='1';rhist_u2<='1';rhist_u3<='1';rhist_u4<='1';rhist_u5<='1';rhist_u6<='1';rhist_u7<='1';rhist_u8<='1';
							  ihist_u1<='0';ihist_u2<='0';ihist_u3<='0';ihist_u4<='0';ihist_u5<='0';ihist_u6<='0';ihist_u7<='0';ihist_u8<='0';
				When Tc => incrementa<='0';reset_reg<='1';cuenta_a_0<='0';--Condicion inicial, si en un estado cambia esa condicion
							  incremento_u1<='0';incremento_u2<='0';incremento_u3<='0';incremento_u4<='0';--solo lo hace en ese estado, al momento
							  incremento_u5<='0';incremento_u6<='0';incremento_u7<='0';incremento_u8<='0';we_u1<='0';--de pasar a otro estado todo
							  we_u2<='0';we_u3<='0';we_u4<='0';we_u5<='0';we_u6<='0';we_u7<='0';we_u8<='0';--vuelve a la condicion inicial
							  selec_u1<="00";selec_u2<="00";selec_u3<="00";selec_u4<="00";selec_u5<="00";selec_u6<="00";selec_u7<="00";selec_u8<="00";
							  reset_oc<='1'; OCUPADO<='0';reset_hist<='1';disp_select<='0';t_a<='0';t_b<='0';t_c<='1';
							  rhist_u1<='1';rhist_u2<='1';rhist_u3<='1';rhist_u4<='1';rhist_u5<='1';rhist_u6<='1';rhist_u7<='1';rhist_u8<='1';
							  ihist_u1<='0';ihist_u2<='0';ihist_u3<='0';ihist_u4<='0';ihist_u5<='0';ihist_u6<='0';ihist_u7<='0';ihist_u8<='0';
				
				when Tf => if icuenta0='1' then enable_reg<="000001";
							  elsif icuenta1='1' then enable_reg<="000010";
							  elsif icuenta2='1' then enable_reg<="000100";
							  elsif icuenta3='1' then enable_reg<="001000";
							  elsif icuenta4='1' then enable_reg<="010000";
							  elsif icuenta5='1' then enable_reg<="100000";end if;
				when Te => enable_reg<="000000";
				when Tg => 
				When Th => incrementa<='1';
				when Ti =>
				
				when T_oc => reset_oc<='0'; OCUPADO<='1';
				when T_oc_apagado => OCUPADO<='0';
				when T_hist => selec_u1<="10";selec_u2<="10";selec_u3<="10";selec_u4<="10";selec_u5<="10";selec_u6<="10";selec_u7<="10";selec_u8<="10";
									ihist_u1<='0';ihist_u2<='0';ihist_u3<='0';ihist_u4<='0';ihist_u5<='0';ihist_u6<='0';ihist_u7<='0';ihist_u8<='0';
									rhist_u1<='0';rhist_u2<='0';rhist_u3<='0';rhist_u1<='0';rhist_u5<='0';rhist_u6<='0';rhist_u7<='0';rhist_u8<='0';--solamente en estos estados el contador para mostrar el historial
				when T_hist1 => selec_u1<="10";selec_u2<="10";selec_u3<="10";selec_u4<="10";selec_u5<="10";selec_u6<="10";selec_u7<="10";selec_u8<="10";--debe funcionar por eso es '0', ya que con '1' el reset se activa
							  rhist_u1<='0';rhist_u2<='0';rhist_u3<='0';rhist_u1<='0';rhist_u5<='0';rhist_u6<='0';rhist_u7<='0';rhist_u8<='0';
							  ihist_u1<='0';ihist_u2<='0';ihist_u3<='0';ihist_u4<='0';ihist_u5<='0';ihist_u6<='0';ihist_u7<='0';ihist_u8<='0';disp_select<='1';
				when T_hi => selec_u1<="10";selec_u2<="10";selec_u3<="10";selec_u4<="10";selec_u5<="10";selec_u6<="10";selec_u7<="10";selec_u8<="10";
							  rhist_u1<='0';rhist_u2<='0';rhist_u3<='0';rhist_u1<='0';rhist_u5<='0';rhist_u6<='0';rhist_u7<='0';rhist_u8<='0';
							  selec_u1<="10";selec_u2<="10";selec_u3<="10";selec_u4<="10";selec_u5<="10";selec_u6<="10";selec_u7<="10";selec_u8<="10";
							  ihist_u1<='0';ihist_u2<='0';ihist_u3<='0';ihist_u4<='0';ihist_u5<='0';ihist_u6<='0';ihist_u7<='0';ihist_u8<='0';disp_select<='1';
							  reset_hist<='0';--empieza la cuenta hasta cuatro, el numero ya está seleccionado, se sobre entiende que el usuario ya esta seleccionado, y el adress empieza en 0
				when T1 => if u1='1' then ihist_u1<='1';--incremento para cada adress de la ram
							  elsif u2='1' then ihist_u2<='1';
							  elsif u3='1' then ihist_u3<='1';
							  elsif u4='1' then ihist_u4<='1';
							  elsif u5='1' then ihist_u5<='1';
							  elsif u6='1' then ihist_u6<='1';
							  elsif u7='1' then ihist_u7<='1';
							  elsif u8='1' then ihist_u8<='1';end if;disp_select<='1';
				
				when Tj => clock_ff_d<='0';
							  if (u1='1') then we_u1<='1';
							  elsif (u2='1') then we_u2<='1';
							  elsif (u3='1') then we_u3<='1';
							  elsif (u4='1') then we_u4<='1';
							  elsif (u5='1') then we_u5<='1';
							  elsif (u6='1') then we_u6<='1';
							  elsif (u7='1') then we_u7<='1';
							  elsif (u8='1') then we_u8<='1';end if;
				When Tk => if Fu_ad1='1' then incremento_u1<='1';--puedo omitir "FINALIZAR_LLAMADA='1'" porque se sobre entiende
							  elsif Fu_ad2='1' then incremento_u2<='1';--Solo cuando finalizo la llamada debo avanzar al siguiente adress de la ram
							  elsif Fu_ad3='1' then incremento_u3<='1';--Podria yo cambiar y establecer 2 clocks, uno para encendido y otro para apagado
							  elsif Fu_ad4='1' then incremento_u4<='1';--con eso evitaría que salgan las 'x's . La solucion es cuando un led enciende
							  elsif Fu_ad5='1' then incremento_u5<='1';--escribir que los demas sean cero, pero con dos clocks evito que alguno que 
							  elsif Fu_ad6='1' then incremento_u6<='1';--esté encendido se apague
							  elsif Fu_ad7='1' then incremento_u7<='1';
							  elsif Fu_ad8='1' then incremento_u8<='1';end if;clock_ff_d<='0';
				when Tl => if (u1='1') then led1<='1';--condicion para cada usuario encender
							  elsif (u2='1') then led2<='1';
							  elsif (u3='1') then led3<='1';
							  elsif (u4='1') then led4<='1';
							  elsif (u5='1') then led5<='1';
							  elsif (u6='1') then led6<='1';
							  elsif (u7='1') then led7<='1';
							  elsif (u8='1') then led8<='1'; end if;clock_ff_d<='0';			
				When Tm => if (u1='1') then led1<='0';--condicion para cada usuario apagar
							  elsif (u2='1') then led2<='0';
							  elsif (u3='1') then led3<='0';
							  elsif (u4='1') then led4<='0';
							  elsif (u5='1') then led5<='0';
							  elsif (u6='1') then led6<='0';
							  elsif (u7='1') then led7<='0';
							  elsif (u8='1') then led8<='0'; end if;clock_ff_d<='0';
				when Tr =>
				when Ts => if (u1='1') then led1<='1';--Para que mantenga el valor anterior y el clock del flipflop funcione
							  elsif (u2='1') then led2<='1';
							  elsif (u3='1') then led3<='1';
							  elsif (u4='1') then led4<='1';
							  elsif (u5='1') then led5<='1';
							  elsif (u6='1') then led6<='1';
							  elsif (u7='1') then led7<='1';
							  elsif (u8='1') then led8<='1'; end if;clock_ff_d<='1';
				when Tt => if (u1='1') then led1<='0';--Para que mantenga el valor anterior y el clock del flipflop funcione
							  elsif (u2='1') then led2<='0';
							  elsif (u3='1') then led3<='0';
							  elsif (u4='1') then led4<='0';
							  elsif (u5='1') then led5<='0';
							  elsif (u6='1') then led6<='0';
							  elsif (u7='1') then led7<='0';
							  elsif (u8='1') then led8<='0'; end if;clock_ff_d<='1';	
							  selec_u1<="01";selec_u2<="01";selec_u3<="01";selec_u4<="01";selec_u5<="01";selec_u6<="01";selec_u7<="01";selec_u8<="01";
				when Tu => if (iusuario1='1') then led1<='1';--condicion para cada usuario para encender el otro led
							  elsif (iusuario2='1') then led2<='1';
							  elsif (iusuario3='1') then led3<='1';
							  elsif (iusuario4='1') then led4<='1';
							  elsif (iusuario5='1') then led5<='1';
							  elsif (iusuario6='1') then led6<='1';
							  elsif (iusuario7='1') then led7<='1';
							  elsif (iusuario8='1') then led8<='1'; end if;clock_ff_d<='0';we_u1<='0';we_u2<='0';we_u3<='0';we_u4<='0';we_u5<='0';we_u6<='0';we_u7<='0';we_u8<='0';	
				when Tv => clock_ff_d<='0';--condicion para cada usuario apagar el otro led
							  selec_u1<="01";selec_u2<="01";selec_u3<="01";selec_u4<="01";selec_u5<="01";selec_u6<="01";selec_u7<="01";selec_u8<="01";
							  if iusuario_ant1='1' then led1<='0';
							  elsif iusuario_ant2='1' then led2<='0';
							  elsif iusuario_ant3='1' then led3<='0';
							  elsif iusuario_ant4='1' then led4<='0';
							  elsif iusuario_ant5='1' then led5<='0';
							  elsif iusuario_ant6='1' then led6<='0';
							  elsif iusuario_ant7='1' then led7<='0';
							  elsif iusuario_ant8='1' then led8<='0';end if;
				when Tw => if (iusuario1='1') then led1<='1';--Para que mantenga el valor del otro led
							  elsif (iusuario2='1') then led2<='1';
							  elsif (iusuario3='1') then led3<='1';
							  elsif (iusuario4='1') then led4<='1';
							  elsif (iusuario5='1') then led5<='1';
							  elsif (iusuario6='1') then led6<='1';
							  elsif (iusuario7='1') then led7<='1';
							  elsif (iusuario8='1') then led8<='1'; end if;clock_ff_d<='1';reset_reg<='0';cuenta_a_0<='1';
				when Tx => clock_ff_d<='1';--Para que se mantenga el valor del otro led
							  selec_u1<="01";selec_u2<="01";selec_u3<="01";selec_u4<="01";selec_u5<="01";selec_u6<="01";selec_u7<="01";selec_u8<="01";
							  if iusuario_ant1='1' then led1<='0';
							  elsif iusuario_ant2='1' then led2<='0';
							  elsif iusuario_ant3='1' then led3<='0';
							  elsif iusuario_ant4='1' then led4<='0';
							  elsif iusuario_ant5='1' then led5<='0';
							  elsif iusuario_ant6='1' then led6<='0';
							  elsif iusuario_ant7='1' then led7<='0';
							  elsif iusuario_ant8='1' then led8<='0';end if;
				when Ty => reset_reg<='0';cuenta_a_0<='1';
		end case;
	end Process;
end sol;