library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pap is
  port (
    SEL    : in  std_logic_vector(1 downto 0);	
    o_F  : out std_logic_vector(2 downto 0)
    );
end pap;
 
architecture pap_vykdo of pap is
begin
  o_F <=  "011" when (SEL="00") else
		  "100" when (SEL="01") else
		  "101" when (SEL="10") else
		  "110" when (SEL="11") else
		  "000";
  
end pap_vykdo;