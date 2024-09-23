library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity full_adder is

	port (A:in std_logic;
		B : in std_logic;
		Cin : in std_logic;
		Sum : out std_logic;
		Cout : out std_logic);
		
end full_adder;

architecture FA of full_adder is

begin

	Sum <= A xor B xor Cin;
	
	Cout <= (A and B) or (B and Cin) or (A and Cin);
	
end FA;