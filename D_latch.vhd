library ieee;
use ieee.std_logic_1164.all;
entity D_latch is port(
C,D: in std_logic;
Q: out std_logic);
end D_latch;
architecture behv of D_latch is
begin
process(C,D)
begin
if(C ='1') then
Q<=D;
end if;
end process;
end behv;