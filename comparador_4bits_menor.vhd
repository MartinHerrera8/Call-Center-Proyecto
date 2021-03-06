library ieee;
use IEEE.std_logic_1164.all;

entity comparador_4bits_menor is
	port(A,B: in std_logic_vector(3 downto 0);
		  menor: out std_logic); 
END comparador_4bits_menor;

architecture situacion of comparador_4bits_menor is
begin	
	menor <= '1' when (A<B)else '0'; 
END situacion;