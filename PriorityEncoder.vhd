library ieee;
use ieee.std_logic_1164.all;

entity PriorityEncoder is
	port (En: in std_logic_vector (7 downto 0);
			SP: out std_logic_vector (2 downto 0)
			);
end;

architecture behavior of PriorityEncoder is
begin
	SP <= 
		"111" when En(7) = '1' else
		"110" when En(6)='1' else
		"101" when En(5)='1' else
		"100" when En(4)='1' else
		"011" when En(3)='1' else
		"010" when En(2)='1' else
		"001" when En(1)='1' else
		"000";
end;