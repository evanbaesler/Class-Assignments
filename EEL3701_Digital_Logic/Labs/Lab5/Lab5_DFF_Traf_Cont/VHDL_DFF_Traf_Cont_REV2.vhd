library ieee; use ieee.std_logic_1164.all;

entity TRAF_CONT_4BIT_REV2 is port(

-- We have our true/false inputs first, for CW and EV,
-- We also have Reset to set our initial values.
CW_L, EV: in std_logic;

-- We have our Q values and the next state D's for 4 bits.
Q: in std_logic_vector(3 downto 0);
D: out std_logic_vector(3 downto 0);

-- We have our light outputs.
Green, Yellow, Red: out std_logic
);


end TRAF_CONT_4BIT_REV2;

architecture behavior of TRAF_CONT_4BIT_REV2 is

signal CW : std_logic;

begin

CW <= not(CW_L);

-- DFF logic derived from next state truth table
D(3) <= (not Q(3) and Q(2) and Q(1) and Q(0))
or (Q(3) and not Q(2) and not Q(1) and not Q(0))
or (EV and Q(3) and not Q(2) and not Q(1));

D(2) <= (EV and not Q(3) and not Q(2)) or
(EV and not Q(3) and not Q(1)) or
(not Q(3) and not Q(2) and Q(1) and Q(0)) or
(not Q(3) and Q(2) and Q(1) and not Q(0)) or
(CW and not Q(3) and Q(2) and not Q(1));

D(1) <= (not Q(3) and not Q(1) and Q(0)) or
(not Q(3) and Q(1) and not Q(0)) or
(EV and not Q(3) and not Q(2)) or
(EV and not Q(3) and not Q(1));

D(0) <=
(not EV and not Q(3) and not Q(2) and not Q(0))
or (not EV and not Q(2) and not Q(1) and not Q(0))
or (not Q(3) and Q(2) and Q(1) and not Q(0))
or (not EV and CW and not Q(3) and not Q(0))
or (EV and Q(3) and not Q(2) and not Q(0))
or (EV and Q(3) and not Q(2) and not Q(1));

-- Outputs
Green <= '1' when (Q = "0000" and EV = '0') 
or (Q = "0001" and EV = '0') 
or (Q = "0010" and EV = '0')
or (Q = "0011" and EV = '0') 
or (Q = "0100" and EV = '0') 
or (Q = "1001" and EV = '0') else '0';

Yellow <= '1' when 
-- Moore Outputs
	(Q = "0101") 
or (Q = "0110")
-- Mealy Outputs
or (Q = "0000" and EV = '1')
or (Q = "0001" and EV = '1')
or (Q = "0010" and EV = '1')
or (Q = "0011" and EV = '1')
or (Q = "0100" and EV = '1') else '0';

Red <= '1' when 

(Q = "0111") 
or (Q = "1000") 
or (Q = "1001" and EV = '1')
else '0';

end behavior;