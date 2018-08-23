library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity contador_1_4bits is
    PORT (
        clk_cont,reset_cont  : IN  STD_LOGIC;
        suma: OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
end contador_1_4bits;

architecture sol of contador_1_4bits is
Signal cont: STD_LOGIC_VECTOR(3 DOWNTO 0):="0000";
Begin
	Process (clk_cont)
	Begin
		if reset_cont='1' then cont<="0000";
		elsif(clk_cont'event and clk_cont='1') then
			cont<=cont+1;
		end if;
	end Process;
	suma<=cont;
end sol;