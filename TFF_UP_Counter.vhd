library ieee;
use ieee.std_logic_1164.all;

ENTITY TFF_UP_Counter is 
		port(clk: in std_logic; 
				count_in : in std_logic_vector(2 downto 0);
				count_out: out std_logic_vector(2 downto 0)); 
END TFF_UP_Counter; 

ARCHITECTURE behav OF TFF_UP_Counter IS   
	COMPONENT T_FF is 
		port( T : in STD_LOGIC; 
			D : in std_logic;
			Clock: in STD_LOGIC;
			Q : out STD_LOGIC ); 
	END COMPONENT;  

signal t : std_logic_vector(2 downto 0);
signal w : std_logic_vector(2 downto 0);

begin

t(2) <= count_in(0) and count_in(1);
t(1) <= count_in(0);
t(0) <= '1';

uut2 : T_FF port map (t(2), count_in(2), clk, w(2));
uut1 : T_FF port map (t(1), count_in(1), clk, w(1));
uut0 : T_FF port map (t(0), count_in(0), clk, w(0));

count_out <= w;

end behav;
