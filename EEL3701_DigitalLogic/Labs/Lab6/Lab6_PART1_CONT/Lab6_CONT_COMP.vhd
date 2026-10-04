library ieee; use ieee.std_logic_1164.all;

entity Lab6_CONT_COMP is port(

-- Instruction Register Variables
IR: in std_logic_vector(1 downto 0);
IR_LOAD: out std_logic;

-- Mux Function Select Variables
MSA: out std_logic_vector(1 downto 0);
MSB: out std_logic_vector(1 downto 0);
MSC: out std_logic_vector(2 downto 0);

-- Q/D for IR, oscillates on clock.
Q: in std_logic;
D: out std_logic
);

end Lab6_CONT_COMP;

architecture behavior of Lab6_CONT_COMP is

begin

D <= not Q;
IR_LOAD <= not Q;

MSA(1) <= (
(Q and not IR(1) and not IR(0)) or
(Q and IR(1) and not IR(0))
);

MSA(0) <= (
(not Q) or
(Q and not IR(1) and not IR(0)) or
(Q and not IR(1) and IR(0)) or
(Q and IR(1) and not IR(0))
);

-- Always true, keeping expanded incase of future
-- additions to IR.
MSB(1) <= (
(not Q) or
(Q and not IR(1) and not IR(0)) or
(Q and not IR(1) and IR(0)) or
(Q and IR(1) and not IR(0)) or
(Q and IR(1) and IR(0))
);

MSB(0) <= (
(Q and not IR(1) and IR(0))
);

MSC(2) <= (
(Q and not IR(1) and not IR(0)) or
(Q and IR(1) and not IR(0))
);

MSC(1) <= (
(Q and not IR(1) and not IR(0))
);

MSC(0) <= (
(Q and IR(1) and not IR(0))
);

end behavior;