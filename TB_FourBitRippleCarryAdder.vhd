LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_FourBitRippleCarryAdder IS
END TB_FourBitRippleCarryAdder;
 
ARCHITECTURE behavior OF TB_FourBitRippleCarryAdder IS
 
COMPONENT FourBitRippleCarryAdder
PORT(
A : IN std_logic_vector(3 downto 0);
B : IN std_logic_vector(3 downto 0);
Cin : IN std_logic;
S : OUT std_logic_vector(3 downto 0);
Cout : OUT std_logic
);
END COMPONENT;
 
signal A : std_logic_vector(3 downto 0) := (others => '0');
signal B : std_logic_vector(3 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
signal S : std_logic_vector(3 downto 0);
signal Cout : std_logic;
 
BEGIN
 
uut: FourBitRippleCarryAdder PORT MAP (
A => A,
B => B,
Cin => Cin,
S => S,
Cout => Cout
);
 
proc: process
begin
wait for 100 ns;
A <= "0110";
B <= "1100";
 
wait for 100 ns;
A <= "1111";
B <= "1100";
 
wait for 100 ns;
A <= "0110";
B <= "0111";
 
wait for 100 ns;
A <= "0110";
B <= "1110";
 
wait for 100 ns;
A <= "1111";
B <= "1111";
 
wait;
 
end process;
 
END;
