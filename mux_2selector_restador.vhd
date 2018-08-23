library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
Entity mux_2selector_restador is
	Port (num1: IN std_logic_vector (3 downto 0);
			num2: IN std_logic_vector (3 downto 0);	
			num3: IN std_logic_vector (3 downto 0);		
			selector: IN std_logic_vector (1 downto 0);
			s: OUT std_logic_vector (3 downto 0));
end mux_2selector_restador;

architecture sol of mux_2selector_restador is
Begin
	Process (selector,num1,num2)
	Begin
		case selector is
			when "00" => s<=num1;
			when "01" => s<=(num2 - 1);
			when "10" => s<=num3;
			When "11" => s<="0000";
		end case;
	end Process;
end sol;