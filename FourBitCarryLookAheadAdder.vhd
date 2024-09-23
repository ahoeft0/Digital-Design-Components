library ieee;
use ieee.std_logic_1164.all;

entity FourBitCarryLookAheadAdder is
	port(x : in std_logic_vector(7 downto 0);
			y : in std_logic_vector(7 downto 0);
			Cin : in std_logic;
			Cout : out std_logic;
			Sum : out std_logic_vector(7 downto 0));
end entity FourBitCarryLookAheadAdder;

architecture behavior of FourBitCarryLookAheadAdder is
	signal g : std_logic_vector(7 downto 0);
	signal p : std_logic_vector(7 downto 0);
	signal c : std_logic_vector(7 downto 0);
	
	begin
	
	g(0) <= x(0) and y(0);
	g(1) <= x(1) and y(1);
	g(2) <= x(2) and y(2);
	g(3) <= x(3) and y(3);
	g(4) <= x(4) and y(4);
	g(5) <= x(5) and y(5);
	g(6) <= x(6) and y(6);
	g(7) <= x(7) and y(7);
	
   p(0) <= x(0) xor y(0);
	p(1) <= x(1) xor y(1);
	p(2) <= x(2) xor y(2);
	p(3) <= x(3) xor y(3);
	p(4) <= x(4) xor y(4);
	p(5) <= x(5) xor y(5);
	p(6) <= x(6) xor y(6);
	p(7) <= x(7) xor y(7);
	
	c(0) <= Cin;
	c(1) <= g(0) or (p(0) and c(0));
	c(2) <= g(1) or (p(1) and c(1));
	c(3) <= g(2) or (p(2) and c(2));
	c(4) <= g(3) or (p(3) and c(3));
	c(5) <= g(4) or (p(4) and c(4));
	c(6) <= g(5) or (p(5) and c(5));
	c(7) <= g(6) or (p(6) and c(6));
	Cout <= g(7) or (p(7) and c(7));
	
	Sum(0) <= p(0) xor c(0);
	Sum(1) <= p(1) xor c(1);
	Sum(2) <= p(2) xor c(2);
	Sum(3) <= p(3) xor c(3);
	Sum(4) <= p(4) xor c(4);
	Sum(5) <= p(5) xor c(5);
	Sum(6) <= p(6) xor c(6);
	Sum(7) <= p(7) xor c(7);
	
end architecture behavior;