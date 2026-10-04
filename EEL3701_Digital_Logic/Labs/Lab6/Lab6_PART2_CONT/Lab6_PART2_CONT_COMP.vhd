library ieee; use ieee.std_logic_1164.all;

entity Lab6_CONT_COMP is port(

-- Lab 6 Part 2 Controller designed by Evan Baesler

-- Instruction Register Variables
IR: in std_logic_vector(2 downto 0);
IR_LOAD: out std_logic;

-- Mux Function Select Variables
MSA: out std_logic_vector(1 downto 0);
MSB: out std_logic_vector(1 downto 0);
MSC: out std_logic_vector(2 downto 0);

-- Program Counter 
PC_INC: out std_logic;
PC_LD: out std_logic;

-- Q/D for IR, oscillates on clock.
Q: in std_logic_vector(1 downto 0);
D: out std_logic_vector(1 downto 0)
);

end Lab6_CONT_COMP;

architecture behavior of Lab6_CONT_COMP is

signal PC_LD_H : std_logic;

begin

PC_LD <= not(PC_LD_H);

IR_LOAD <= (
(not Q(1) and not Q(0))
);

D(1) <= (
(not IR(2) and IR(1) and not Q(1) and Q(0))
);

D(0) <= (
(not Q(1) and not Q(0)) or
(not IR(2) and IR(1) and IR(0) and not Q(1) and Q(0))
);

MSA(1) <= (
(not Q(1) and Q(0) and not IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1))
);

MSA(0) <= (
(not Q(1) and not Q(0)) or
(not Q(1) and Q(0) and not IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and not IR(2) and not IR(1) and IR(0)) or
(not Q(1) and Q(0) and not IR(2) and IR(1) and not IR(0)) or
(not Q(1) and Q(0) and not IR(2) and IR(1) and IR(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1) and IR(0)) or
(Q(1) and Q(0))
);

MSB(1) <= (
(not Q(1) and not Q(0)) or
(not Q(1) and Q(0) and not IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and not IR(2) and not IR(1) and IR(0)) or
(not Q(1) and Q(0) and not IR(2) and IR(1) and not IR(0)) or
(Q(1) and not Q(0)) or
(not Q(1) and Q(0) and not IR(2) and IR(1) and IR(0)) or
(Q(1) and Q(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1))
);

MSB(0) <= (
(not Q(1) and Q(0) and not IR(2) and not IR(1) and IR(0))
);

MSC(2) <= (
(not Q(1) and Q(0) and not IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1))
);

MSC(1) <= (
(not Q(1) and Q(0) and IR(2) and not IR(1))
);

MSC(0) <= (
(not Q(1) and Q(0) and not IR(2) and not IR(1) and not IR(0)) or
(not Q(1) and Q(0) and IR(2) and not IR(1) and not IR(0))
);

PC_LD_H <= (
(Q(1) and Q(0))
);

PC_INC <= (
(not Q(1) and Q(0)) or
(Q(1) and not Q(0))
);

end behavior;