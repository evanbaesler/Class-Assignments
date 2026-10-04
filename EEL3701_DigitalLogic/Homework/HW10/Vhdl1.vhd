library ieee; use ieee.std_logic_1164.all;

-- This code is the redesign of the decoder from Lab 2, this was written by Evan Baesler
-- This code uses MSOP to create active-low LED outputs for a 7-segment display, from 0 to F in hex.

entity DECODER is port(
X: in std_logic_vector(3 downto 0);
T_L: in std_logic;

A_L, B_L, C_L, D_L, E_L, F_L, G_L: out std_logic
);

end DECODER;

architecture behavior of DECODER is
signal m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, mA, mB, mC, mD, mE, mF: std_logic;
signal A_H, B_H, C_H, D_H, E_H, F_H, G_H: std_logic;
signal T_H: std_logic;

begin

A_L <= not A_H;
B_L <= not B_H;
C_L <= not C_H;
D_L <= not D_H;
E_L <= not E_H;
F_L <= not F_H;
G_L <= not G_H;
T_H <= not T_L;

m0 <= not X(3) and not X(2) and not X(1) and not X(0);
m1 <= not X(3) and not X(2) and not X(1) and X(0);
m2 <= not X(3) and not X(2) and X(1) and not X(0);
m3 <= not X(3) and not X(2) and X(1) and X(0);
m4 <= not X(3) and X(2) and not X(1) and not X(0);
m5 <= not X(3) and X(2) and not X(1) and X(0);
m6 <= not X(3) and X(2) and X(1) and not X(0);
m7 <= not X(3) and X(2) and X(1) and X(0);
m8 <= X(3) and not X(2) and not X(1) and not X(0);
m9 <= X(3) and not X(2) and not X(1) and X(0);
mA <= X(3) and not X(2) and X(1) and not X(0);
mB <= X(3) and not X(2) and X(1) and X(0);
mC <= X(3) and X(2) and not X(1) and not X(0);
mD <= X(3) and X(2) and not X(1) and X(0);
mE <= X(3) and X(2) and X(1) and not X(0);
mF <= X(3) and X(2) and X(1) and X(0);


A_H <= T_H or (m0 or m2 or m3 or m5 or m6 or m7 or m8 or m9 or mA or mC or mE or mF);
B_H <= T_H or (m0 or m1 or m2 or m3 or m4 or m7 or m8 or m9 or mA or mD);
C_H <= T_H or (m0 or m1 or m3 or m4 or m5 or m6 or m7 or m8 or m9 or mA or mB or mD);
D_H <= T_H or (m0 or m2 or m3 or m5 or m6 or m8 or m9 or mB or mC or mD or mE);
E_H <= T_H or (m0 or m2 or m6 or m8 or mA or mB or mC or mD or mE or mF);
F_H <= T_H or (m0 or m4 or m5 or m6 or m8 or m9 or mA or mB or mC or mE or mF);
G_H <= T_H or (m2 or m3 or m4 or m5 or m6 or m8 or m9 or mA or mB or mD or mE or mF);
end behavior;