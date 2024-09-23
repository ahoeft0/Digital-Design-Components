library IEEE;
use IEEE.std_logic_1164.all;

entity FourToOneMUX is
	port(
		w : in std_logic;
		x : in std_logic;
		y : in std_logic;
		z : in std_logic;
		s : in std_logic_vector(1 downto 0);
		m : out std_logic
	);
end FourToOneMUX;

architecture arch1 of FourToOneMUX is
begin
	
	m <= ((not s(0)) and (not s(1)) and w) or (s(0) and (not s(1)) and x) or ((not s(0)) and s(1) and y) or (s(0) and s(1) and z);
	
end arch1;