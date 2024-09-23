library ieee;
use ieee.std_logic_1164.all;

entity Multiplexer is
	port (A,B,C,D,E,F,G,H: in std_logic_vector(3 downto 0);
			S: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(3 downto 0)
			);
end;

architecture behavior of Multiplexer is
begin
	output <= A when S = "000" else
		B when S = "001" else
		C when S = "010" else
		D when S = "011" else
		E when S = "100" else
		F when S = "101" else
		G when S = "110" else
		H;
end;