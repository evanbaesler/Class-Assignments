library ieee; use ieee.std_logic_1164.all;

entity EBI_LOGIC is port(

-- We have our CS enables and RE/WE
WE_L: in std_logic;
RE_L: in std_logic;
CS0_L: in std_logic;
CS2_L: in std_logic;
A: in std_logic_vector(9 downto 4);

INPUT_EN_L: out std_logic;
OUTPUT_EN_L: out std_logic);

end EBI_LOGIC;

architecture behavior of EBI_LOGIC is

signal WE: std_logic;
signal RE: std_logic;
signal CS0: std_logic;
signal CS2: std_logic;
signal ADDRESSING: std_logic;
signal INPUT_EN: std_logic;
signal OUTPUT_EN: std_logic;

begin

WE <= not(WE_L);
RE <= not(RE_L);
CS0 <= not(CS0_L);
CS2 <= not(CS2_L);
ADDRESSING <= (A(9) and not A(8) and A(7) and A(6) and (not A(5) or not A(4)));
INPUT_EN_L <= not(INPUT_EN);
OUTPUT_EN_L <= not(OUTPUT_EN);

-- Outputs
INPUT_EN <= (CS2 and RE and ADDRESSING);
OUTPUT_EN <= ((CS2 and WE and ADDRESSING) or (CS0));
 
end behavior;