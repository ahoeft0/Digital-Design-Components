library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity TwoToFourDecoder is
port( a : in STD_LOGIC_VECTOR(1 downto 0);
d : out STD_LOGIC_VECTOR(3 downto 0));
end TwoToFourDecoder;

architecture bhv of TwoToFourDecoder is
begin
d(0) <= (NOT a(1)) AND (NOT a(0));
d(1) <= (NOT a(1)) AND a(0);
d(2) <= a(1) AND (NOT a(0));
d(3) <= a(1) AND a(0);
end bhv;