library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity FourBitRippleCarryAdder is
	port (A:in std_logic_vector (3 downto 0);
		B : in std_logic_vector (3 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (3 downto 0);
		Cout : out std_logic);
end FourBitRippleCarryAdder;

architecture behavior1 of FourBitRippleCarryAdder is

	component full_adder
		port (A:in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		Sum : out std_logic;
		Cout : out std_logic);
	end component;
	
	signal c0, c1, c2 : std_logic;
	
	begin
	
	uut0: full_adder port map (A(0), B(0), Cin, S(0), c0);
	uut1: full_adder port map (A(1), B(1), c0, S(1), c1);
	uut2: full_adder port map (A(2), B(2), c1, S(2), c2);
	uut3: full_adder port map (A(3), B(3), c2, S(3), Cout);
	
	end behavior1;