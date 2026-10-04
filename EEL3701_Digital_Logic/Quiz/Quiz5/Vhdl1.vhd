-- ex1.vhd from the Examples page of the course website
library ieee;
use ieee.std_logic_1164.all;
entity quiz5block is
port(

	CF : in std_logic;
	Q : in std_logic_vector(2 downto 0);
	D : out std_logic_vector(2 downto 0);
	Buzz : out std_logic;
	Fizz : out std_logic);

end quiz5block;

architecture behav of quiz5block is

begin

D(2) <= (not Q(2) and not Q(1) and not Q(0)) or
(not Q(2) and Q(1) and not Q(0)) or
(Q(2) and not Q(1) and Q(0)) or
(Q(2) and Q(1) and not Q(0));

D(1) <= (not Q(2) and Q(1) and Q(0)) or
(Q(2) and not Q(1) and not Q(0)) or
(Q(2) and not Q(1) and Q(0)) or
(Q(2) and Q(1) and not Q(0));

D(0) <= (not Q(2) and Q(1) and not Q(0)) or
(Q(2) and not Q(1) and not Q(0)) or
(Q(2) and Q(1) and not Q(0)) or
(Q(2) and Q(1) and Q(0));

-- Outputs
Buzz <= (not Q(2) and not Q(1) and not Q(0) and not CF) or
(not Q(2) and Q(1) and not Q(0)) or
(Q(2) and not Q(1) and not Q(0)) or
(Q(2) and Q(1) and not Q(0) and not CF);

Fizz <= (CF and not Q(2) and not Q(1) and not Q(0)) or
(CF and not Q(2) and Q(1) and Q(0)) or
(CF and Q(2) and Q(1) and not Q(0));

end behav;


--To declare a bus, use
--BUS_NAME: out bit_vector(1 downto 0);
--And access bit 1 with
--BUS_NAME(1)