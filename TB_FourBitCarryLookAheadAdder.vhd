LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_FourBitCarryLookAheadAdder IS
END TB_FourBitCarryLookAheadAdder;
 
ARCHITECTURE behavior OF TB_FourBitCarryLookAheadAdder IS
 
-- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT FourBitCarryLookAheadAdder
PORT(
x : IN std_logic_vector(7 downto 0);
y : IN std_logic_vector(7 downto 0);
Cin : IN std_logic;
Cout : OUT std_logic;
Sum : OUT std_logic_vector(7 downto 0));
END COMPONENT;
 
--Inputs
signal x : std_logic_vector(7 downto 0) := (others => '0');
signal y : std_logic_vector(7 downto 0) := (others => '0');
signal Cin : std_logic := '0';
 
--Outputs
signal Sum : std_logic_vector(7 downto 0);
signal Cout : std_logic;
 
BEGIN
 
-- Instantiate the Unit Under Test (UUT)
uut: FourBitCarryLookAheadAdder PORT MAP (
x => x,
y => y,
Cin => Cin,
Sum => Sum,
Cout => Cout
);
 
-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 10 ns;
 
x <= "11111111";
y <= "11111111";
Cin <= '1';
 
wait for 10 ns;
 
x <= "10101010";
y <= "01111111";
Cin <= '0';
 
wait for 10 ns;
 
x <= "10000000";
y <= "10010010";
Cin <= '0';

wait for 10 ns;
 
x <= "00000000";
y <= "00000000";
Cin <= '1';

wait for 10 ns;
 
x <= "11111111";
y <= "11111111";
Cin <= '0';

wait for 10 ns;
 
x <= "10000001";
y <= "10011010";
Cin <= '1';
 
wait;
 
end process;
 
END;
