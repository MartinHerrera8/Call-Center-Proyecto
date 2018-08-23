library ieee;
use ieee.std_logic_1164.all;
Entity mux_8s is
	Port (num1: IN std_logic_vector (23 downto 0);
			num2: IN std_logic_vector (23 downto 0);
			num3: IN std_logic_vector (23 downto 0);
			num4: IN std_logic_vector (23 downto 0);
			num5: IN std_logic_vector (23 downto 0);
			num6: IN std_logic_vector (23 downto 0);
			num7: IN std_logic_vector (23 downto 0);
			num8: IN std_logic_vector (23 downto 0);
			selector: IN std_logic_vector (7 downto 0);
			s: OUT std_logic_vector (23 downto 0));
end mux_8s;

architecture sol of mux_8s is
Begin
	Process (selector,num1,num2,num3,num4,num5,num6,num7,num8)
	Begin
		case selector is
			when "00000001" => s<=num1;
			when "00000010" => s<=num2;
			when "00000100" => s<=num3;
			when "00001000" => s<=num4;
			when "00010000" => s<=num5;
			when "00100000" => s<=num6;
			when "01000000" => s<=num7;
			when "10000000" => s<=num8;
			when others => s<="000000000000000000000000" ;
		end case;
	end Process;
end sol;