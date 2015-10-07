Library ieee;
use ieee.std_logic_1164.all;
 entity full_adder is
 Port(a,b,cin: in std_logic;
	S,C: out std_logic);
	end full_adder;
	architecture behav of full_adder is
	component my_xor
	Port(a,b,c: In std_logic;
	f: out std_logic);
	end component;
	component my_and
	Port(a,b: in std_logic;
	f: out std_logic);
	end component;
	component my_or
	Port(a,b,c: In std_logic;
	f: out std_logic);
	end component;
	
signal s1,s2,s3 : std_logic;

begin 
--u1 : my_xor PORT MAP (a=>a,b=>b,cin=>cin,f=>S);
u1 : my_xor PORT MAP (a,b,cin,S);
--u2 : my_and PORT MAP (a=>a,b=>b,f=>s1);
u2 : my_and PORT MAP (a,b,s1);
--u3 : my_and PORT MAP (a=>a,b=>cin,f=>s2);
u3 : my_and PORT MAP (a,cin,s2);
--u4 : my_and PORT MAP (b=>a,b=>cin,f=>s3);
u4 : my_and PORT MAP (b,cin,s3);
--u5 : my_or PORT MAP (s1=>a,s2=>b,s3=>cin,f=>C);
u5 : my_or PORT MAP (s1,s2,s3,C);
end;

	
	
	
	
	
