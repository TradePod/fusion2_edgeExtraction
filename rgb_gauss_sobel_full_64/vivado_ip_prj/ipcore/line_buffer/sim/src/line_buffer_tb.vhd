-------------------------------------------------------------------------------
-- Dr. Kaputa
-- generic counter test bench
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity line_buffer_tb is
end line_buffer_tb;

architecture arch of line_buffer_tb is

component line_buffer is
  port (
    clk             : in  std_logic; 
    reset           : in  std_logic;
    fifo_count      : in  std_logic_vector(11 downto 0);
    ready           : out std_logic
  );  
end component; 

signal ready        : std_logic;
constant period     : time := 20ns;                                              
signal clk          : std_logic := '0';
signal reset        : std_logic := '1';
signal fifo_count   : std_logic_vector(11 downto 0);

begin

process(clk,reset)
  begin
    if (reset = '1') then 
      fifo_count <= "000000000000";
    elsif (clk'event and clk = '1') then
      fifo_count <= std_logic_vector(unsigned(fifo_count) + 1 );
    end if;
  end process;

-- clock process
clock: process
  begin
    clk <= not clk;
    wait for period/2;
end process; 
 
-- reset process
async_reset: process
  begin
    wait for 2 * period;
    reset <= '0';
    wait;
end process; 

uut1: line_buffer  
  port map(
    clk         => clk,
    reset       => reset,
    fifo_count  => fifo_count,
    ready       => ready
  );
  
end arch;