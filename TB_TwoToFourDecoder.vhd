LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_TwoToFourDecoder IS
END TB_TwoToFourDecoder;
 
ARCHITECTURE behavior OF TB_TwoToFourDecoder IS
 
COMPONENT TwoToFourDecoder
PORT(
a : IN std_logic_vector(1 downto 0);
d : OUT std_logic_vector(3 downto 0)
);
END COMPONENT;
 
signal a : std_logic_vector(1 downto 0);
 
signal d : std_logic_vector(3 downto 0);
 
BEGIN
 
uut: TwoToFourDecoder PORT MAP (
a => a,
d => d
);
 
proc: process
begin
a <= "00";
 
wait for 100 ns;
a <= "01";
 
wait for 100 ns;
a <= "10";
 
wait for 100 ns;
a <= "11";
wait for 100 ns;
 
wait;
 
end process;
 
END;
