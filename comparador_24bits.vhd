library ieee;
use IEEE.std_logic_1164.all;

entity comparador_24bits is
	port(A,B: in std_logic_vector(23 downto 0);
		igual: out std_logic); 
END comparador_24bits;

architecture situacion of comparador_24bits is
begin 
	igual <= '1' when (A=B)else '0'; 
END situacion;