library ieee;
use ieee.std_logic_1164.all;
	 	 
entity Selector is
  port (
    At, Bt, Ct, Dt, Et, Ft, Gt, Ht : in std_logic_vector(3 downto 0);
    Ent : in std_logic_vector(7 downto 0);
    Z : out std_logic_vector(3 downto 0)
  );
end entity Selector;

-- Map the input and output signals
architecture behavior of Selector is
signal sA,sB,sC,sD,sE,sF,sG,sH : std_logic_vector(3 downto 0);
signal En_sources : std_logic_vector(7 downto 0);
signal S_encoded : std_logic_vector(2 downto 0); 
signal output_Z : std_logic_vector(3 downto 0);


component PriorityEncoder
  port (
    En : in std_logic_vector(7 downto 0);
    SP : out std_logic_vector(2 downto 0)
  );
end component;

component Multiplexer
  port (
    A,B,C,D,E,F,G,H : in std_logic_vector(3 downto 0);
    S : in std_logic_vector(2 downto 0);
    output : out std_logic_vector(3 downto 0)
  );
end component;


begin
-- Instantiate the Priority Encoder
encoder_inst : PriorityEncoder
  port map (
    En => En_sources,
    SP => S_encoded
  );

  -- Instantiate the 8 to 1 Multiplexer
mux_inst : Multiplexer
  port map (
    A => sA,
	 B => sB,
	 C => sC,
	 D => sD,
	 E => sE,
	 F => sF,
	 G => sG,
	 H => sH,
    S => S_encoded,
    output => output_Z
);
  
    En_sources <= Ent;
	 sA <= At;
	 sB <= Bt;
	 sC <= Ct;
	 sD <= Dt;
	 sE <= Et;
	 sF <= Ft;
	 sG <= Gt;
	 sH <= Ht;

  -- Connect the output
  Z <= output_Z;
end architecture;