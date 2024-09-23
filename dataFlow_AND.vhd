library ieee;
use ieee.std_logic_1164.all;

entity C1 is
	port(x,y: in std_logic;
		z: out std_logic
		);
end C1;

architecture dataFlow_AND of C1 is
begin
	z <= x and y;
end dataFlow_AND;