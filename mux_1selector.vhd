library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
Entity mux_1selector is
	Port (num1: IN std_logic_vector (3 downto 0);
			num2: IN std_logic_vector (3 downto 0);		
			selector: IN std_logic;
			s: OUT std_logic_vector (3 downto 0));
end mux_1selector;

architecture sol of mux_1selector is
Begin
	Process (selector,num1,num2)
	Begin
		case selector is
			when '0' => s<=num1;
			when '1' => s<=num2;
		end case;
	end Process;
end sol;