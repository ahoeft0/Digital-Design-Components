library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity TB_2_bit_adder is
end TB_2_bit_adder;

architecture behavioral1 of TB_2_bit_adder is

	component two_bit_adder

	port (A:in std_logic_vector (1 downto 0);
		B : in std_logic_vector (1 downto 0);
		Cin : in std_logic;
		S : out std_logic_vector (1 downto 0);
		Cout : out std_logic);
	end component;

signal A : std_logic_vector (1 downto 0) := "00";
signal B : std_logic_vector (1 downto 0) := "00";
signal Cin : std_logic := '0';
signal S : std_logic_vector (1 downto 0) := "00";
signal Cout : std_logic := '0';

begin

uut: two_bit_adder port map (A=>A,B=>B,Cin=>Cin,S=>S,Cout=>Cout);

stin_proc: process

begin

	wait for 50 ns;
	
	A <= "00";
	B <= "01";
	Cin <= '0';
	
	wait for 50 ns;
	assert((S = "01") and (Cout = '0')) report "test failed for 00+00";
	
	A <= "11";
	B <= "01";
	Cin <= '0';
	
	wait for 50 ns;
	assert ((S= "00") and (Cout = '1')) report "test failed for 11+01";
	wait;
	
end process;
end;