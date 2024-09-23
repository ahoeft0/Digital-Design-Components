library ieee;
use ieee.std_logic_1164.all;

entity D_FF is port(
	C: in std_logic;
	D: in std_logic;
	Q: out std_logic
);
end D_FF;
architecture behv of D_FF is
begin
	process(C,D)
	begin
		if(C'event and C = '1') then
			Q <= D;
		end if;
	end process;
end behv;