library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic_vector (1 downto 0);
  signal w_RESULT1 : std_logic_vector (2 downto 0);
-- naudoti 4ARBA vhd
  component pap is
    port (
      SEL    : in  std_logic_vector (1 downto 0);
      o_F : out std_logic_vector (2 downto 0)
	  );
  end component pap;
--behin behave
begin

  and_gate_INST : pap
    port map (
      SEL    => r_SIG1,
      o_F => w_RESULT1
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '0';

    wait for 10 ns;
    r_SIG1 <= '1';

    wait for 10 ns;
    r_SIG1 <= '0';

    wait for 10 ns;
	r_SIG1 <= '1';

	wait for 10 ns;
  end process;

end behave;