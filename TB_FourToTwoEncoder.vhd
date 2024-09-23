LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_FourToTwoEncoder IS
END TB_FourToTwoEncoder;
 
ARCHITECTURE behavior OF TB_FourToTwoEncoder IS
 
COMPONENT FourToTwoEncoder
PORT(
a : IN std_logic_vector(3 downto 0);
d : OUT std_logic_vector(1 downto 0)
);
END COMPONENT;
 
signal a : std_logic_vector(3 downto 0);
 
signal d : std_logic_vector(1 downto 0);
 
BEGIN
 
uut: FourToTwoEncoder PORT MAP (
a => a,
d => d
);
 
proc: process
begin
a <= "0001";
 
wait for 100 ns;
a <= "0010";
 
wait for 100 ns;
a <= "0100";
 
wait for 100 ns;
a <= "1000";
wait for 100 ns;
 
wait;
 
end process;
 
END;
