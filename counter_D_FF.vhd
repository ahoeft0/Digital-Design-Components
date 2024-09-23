library ieee;
use ieee.std_logic_1164.all;

entity counter_D_FF is

    port (    clock    : in std_logic;
		  d    : in std_logic_vector(2 downto 0);
        q    : out std_logic_vector(2 downto 0)
    );

end counter_D_FF;

architecture arch of counter_D_FF is

    component D_FF is
        port (    C    : in std_logic;      
            D    : in std_logic;
            Q    : out std_logic
        );
    end component;

signal count : std_logic_vector(2 downto 0);
signal w : std_logic_vector(2 downto 0);

begin

uut0 : D_FF port map (clock, d(2), count(2));
uut1 : D_FF port map (clock, d(1), count(1));
uut2 : D_FF port map (clock, d(0), count(0));

w(2) <= (not count(2) and count(1) and count(0)) or (count(2)and (not count(1) or not count(0)));
w(1) <= count(1) xor count(0);
w(0) <= not count(0);

q <= w;

end arch;