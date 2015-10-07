library ieee;
use ieee.std_logic_1164.all;

entity my_and is
	port(a,b: IN std_logic; f: OUT std_logic);
end my_and;
architecture behav of my_and is
begin
	f <= a AND b;
end;
