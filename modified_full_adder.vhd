library ieee;
use ieee.std_logic_1164.all;

entity modified_full_adder is
	port(x : in std_logic;
			y : in std_logic;
			Cin : in std_logic;
			Sum : out std_logic;
			g : out std_logic;
			p : out std_logic);
end entity modified_full_adder;

architecture behavior of modified_full_adder is
begin
	Sum <= x xor y xor Cin;
	g <= x and y;
	p <= x xor y;
end behavior;