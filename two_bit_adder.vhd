library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity Tutorial3 is
	port (A:in std_logic_vector (1 downto 0);
		B : in std_logic_vector (1 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (1 downto 0);
		Cout : out std_logic);
end Tutorial3;

architecture behavior1 of Tutorial3 is

	component full_adder
		port (A:in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		Sum : out std_logic;
		Cout : out std_logic);
	end component;
	
	signal c0 : std_logic;
	
	begin
	
	uut0: full_adder port map (A=>A(0), B=>B(0), Cin=>Cin, Sum=>S(0), Cout=>c0);
	uut1: full_adder port map (A=>A(1), B=>B(1), Cin=>c0, Sum=>S(1), Cout=>Cout);
	
	end behavior1;