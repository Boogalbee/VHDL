library ieee;
use ieee.std_logic_1164.all;

entity my_or is
	port(a,b,c: IN std_logic; f: OUT std_logic);
end my_or;
architecture behav of my_or is
begin
	f <= a OR b OR c;
end;
