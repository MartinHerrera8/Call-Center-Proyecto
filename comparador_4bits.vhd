library ieee;
use IEEE.std_logic_1164.all;

entity comparador_4bits is
	port(A,B: in std_logic_vector(3 downto 0);
		  igual: out std_logic); 
END comparador_4bits;

architecture situacion of comparador_4bits is
begin	
	igual <= '1' when (A=B)else '0'; 
END situacion;