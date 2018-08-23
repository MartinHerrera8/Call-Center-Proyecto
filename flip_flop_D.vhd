library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity flip_flop_D is
	port (clk, reset: in std_logic;
			 d: in std_logic;
			 q: out std_logic);
end flip_flop_D;

architecture arch of flip_flop_D is
begin
	process(clk,reset)--tanto un cambio en clk como reset disparan el proceso
	begin
		if (reset='1') then -- el reset tiene prioridad al ser asíncrono
			q<='0';
		elsif (clk'event and clk='1') then-- si no existe un reset y el cambio de clk=1
			q<=d;-- funcionamiento normal del ffd
		end if;
	end process;
end arch;