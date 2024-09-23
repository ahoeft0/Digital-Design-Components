library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity T_FF is
port( T: in std_logic;
D: in std_logic;
Clock: in std_logic;
Q: out std_logic);
end T_FF;
architecture Behavioral of T_FF is
begin
process (Clock,T,D)
begin
if (Clock'event and Clock='1') then
	if T='0' then
		Q <= D;
	elsif T='1' then
		Q <= not D;
	end if;
end if;
end process;
 end Behavioral;