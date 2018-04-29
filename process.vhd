library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal r_SIG4   : std_logic := '0';
  signal w_RESULT1 : std_logic;
  signal w_RESULT2 : std_logic;
  signal w_RESULT3 : std_logic;
-- naudoti 4ARBA vhd
  component IR is
    port (
      i_bit1    : in  std_logic;
      i_bit2    : in  std_logic;
      i_bit3    : in  std_logic;
      i_bit4    : in  std_logic;
      o_bit1 : out std_logic;
	  o_bit2 : out std_logic;
	  o_bit3 : out std_logic);
  end component IR;
--behin behave
begin

  and_gate_INST : IR
    port map (
      i_bit1    => r_SIG1,
      i_bit2    => r_SIG2,
      i_bit3    => r_SIG3,
      i_bit4    => r_SIG4,
      o_bit1 => w_RESULT1,
	  o_bit2 => w_RESULT2,
	  o_bit3 => w_RESULT3
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '1';
	r_SIG4 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
	r_SIG3 <= '1';
	r_SIG4 <= '1';
    wait for 10 ns;
	r_SIG1 <= '1';
	r_SIG2 <= '1';
	r_SIG3 <= '0';
	r_SIG4 <= '0';
	wait for 10 ns;
  end process;

end behave;