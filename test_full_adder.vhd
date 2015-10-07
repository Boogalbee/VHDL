Library ieee;
use ieee.std_logic_1164.all;

entity test_full_adder is
end test_full_adder ;

architecture my_arch of test_full_adder is 

component full_adder
PORT(a,b,cin: IN std_logic; 
S,C: out std_logic);
end component;

signal ain: std_logic :='0';
signal bin: std_logic :='0';
signal cins: std_logic :='0';
signal cout: std_logic;
signal sout: std_logic;

Begin U1: full_adder port map (a=>ain,b=>bin,cin=>cins,c=>cout,s=>sout);

	--ain <= '0','1' after 20 ns, '0' after 40 ns, '1' after 60 ns;
	--bin <= '0','1' after 40 ns, '0' after 80 ns, '1' after 120 ns;
	--cins<= '0','1' after 60 ns, '0' after 120 ns, '1' after 180 ns;
 process
    begin
      ain <= '0';
      wait for 20 ns;
      ain <= '1';
      wait for 20 ns;
  end process; 
  
  process
    begin
      bin <= '0';
      wait for 40 ns;
      bin <= '1';
      wait for 40 ns;
  end process; 

  process
    begin
      cins <= '0';
      wait for 80 ns;
      cins <= '1';
      wait for 80 ns;
  end process; 
	

End my_arch;
