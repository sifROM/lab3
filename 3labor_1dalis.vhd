library ieee;
use ieee.std_logic_1164.all;
 
entity IR4 is
  port (
    i_bit1    : in  std_logic;
    i_bit2    : in  std_logic;
	i_bit3    : in  std_logic;
    i_bit4    : in  std_logic;
	
    o_bit1 : out std_logic;
	o_bit2 : out std_logic;
	o_bit3 : out std_logic
    );
end IR4;
 
architecture rtl of IR4 is
begin
  o_bit1 <= (i_bit1 and i_bit2) and (i_bit3 and i_bit4);
  
  with (i_bit1 and i_bit2) and (i_bit3 and i_bit4) select
  o_bit2 <= '1' when '1',
		    '0' when '0',
		    '0' when others;
			
  o_bit3 <= '1' when ((i_bit1='1' and i_bit2='1') and (i_bit3='1' and i_bit4='1')) else
		   '0';
  
end rtl;