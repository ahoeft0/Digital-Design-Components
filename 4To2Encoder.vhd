library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity FourToTwoEncoder is
port(
a : in STD_LOGIC_VECTOR(3 downto 0);
d : out STD_LOGIC_VECTOR(1 downto 0)
);
end FourToTwoEncoder;

architecture bhv of FourToTwoEncoder is
begin
d(0) <= a(3) OR a(1);
d(1) <= a(2) OR a(3);
end bhv;
