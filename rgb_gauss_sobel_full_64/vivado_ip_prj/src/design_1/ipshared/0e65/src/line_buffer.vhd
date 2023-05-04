-------------------------------------------------------------------------------
-- Dr. Kaputa
-- generic counter demo
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity line_buffer is 
  port (    
    aclk                      : in  std_logic;
    resetn                    : in  std_logic;
    m_axis_video_tdata        : in  std_logic_vector(63 downto 0); 
    m_axis_video_tlast        : in  std_logic;  -- don't use this
    m_axis_video_tready       : out std_logic;
    m_axis_video_tuser        : in  std_logic;
    m_axis_video_tvalid       : in  std_logic;
    
    s_axis_video_tdata        : out std_logic_vector(63 downto 0); 
    s_axis_video_tlast        : out std_logic;
    s_axis_video_tready       : in std_logic;  -- don't use
    s_axis_video_tuser        : out std_logic;
    s_axis_video_tvalid       : out std_logic;
    
    din                       : out std_logic_vector(63 downto 0);
    dout                      : in  std_logic_vector(63 downto 0);
    wr_en                     : out std_logic;
    rd_en                     : out std_logic; 
    fifo_count                : in  std_logic_vector(11 downto 0);
    
    reset_fifo                : out std_logic
  );  
end line_buffer;  

architecture beh of line_buffer  is
--signal max_count    : std_logic_vector(11 downto 0) := "001011110000";
signal max_count    : std_logic_vector(11 downto 0) := "001011101110";
signal count_sig    : std_logic_vector(11 downto 0);
signal count_flag   : std_logic;
signal sof          : std_logic;
signal m_axis_video_tuser_z : std_logic;
--signal line_counter : std_logic_vector(8 downto 0);
--signal num_lines    : std_logic_vector(8 downto 0) := "111100000";  -- 480
--signal xmit_frame   : std_logic;

begin
process(aclk,resetn)
  begin
    if (resetn = '0') then 
      count_sig <= "000000000000";
      rd_en <= '0';
      s_axis_video_tvalid <= '0';
      s_axis_video_tlast  <= '0';
      sof <= '0';
      count_flag <= '0';
      --line_counter <= "000000000";
      --xmit_frame   <= '0';
    elsif (aclk'event and aclk = '1') then
      --s_axis_video_tuser <= '0';   -- always have it zero unless a sof
      s_axis_video_tlast  <= '0';
      if (m_axis_video_tuser = '1') and (m_axis_video_tvalid = '1') then
        sof <= '1';
        --line_counter <= "000000000";
        --xmit_frame <= '1';
      end if;
      
      if (count_flag = '0') then
        -- if we hit the last line then raise tuser.  need to do this to give
        -- time for tuser to be high for the downstream guy to get ready
        --if (line_counter = num_lines) then
        --    s_axis_video_tuser <= '1';
        --end if;
      
        --s_axis_video_tlast  <= '0';
        if (fifo_count > max_count) then
          --line_counter <= std_logic_vector(unsigned(line_counter) + 1 );
          -- we have a full line ready in the fifo
          if (sof = '1') then
            sof <= '0';
            --s_axis_video_tuser <= '0';
            --line_counter <= "000000001";
          end if;
          count_flag <= '1';       
          count_sig <= "000000000000";
          rd_en <= '1';
          s_axis_video_tvalid <= '1';
        else
          rd_en <= '0';
          s_axis_video_tvalid <= '0';
        end if;
      else
        -- we are trying to read and write
        if s_axis_video_tready = '1' then
          count_sig <= std_logic_vector(unsigned(count_sig) + 1 );
          rd_en <= '1';
        else
          rd_en <= '0';
        end if;
        
        s_axis_video_tvalid <= '1';
        s_axis_video_tlast  <= '0';
        if (count_sig = max_count) then
            count_flag <= '0';
            s_axis_video_tlast  <= '1';
        end if; 
      end if;
    end if;
  end process;
  
  -- user is one clock delayed of sof so it will still be high while valid is high for one clock
  process(aclk,resetn)
  begin
    if (resetn = '0') then 
      s_axis_video_tuser  <= '0';
    elsif (aclk'event and aclk = '1') then
      s_axis_video_tuser <= sof;
    end if;
  end process;
  
  rising_edge_detector: process(resetn,aclk,m_axis_video_tuser_z)
  begin
    if resetn = '0' then
      reset_fifo      <= '0';
      m_axis_video_tuser_z   <= '1';
    elsif rising_edge(aclk) then
      m_axis_video_tuser_z   <= m_axis_video_tuser;
      reset_fifo <= (m_axis_video_tuser xor m_axis_video_tuser_z) and m_axis_video_tuser;
    end if;
  end process;  
  
  -- data comes from the fifo
  s_axis_video_tdata      <= dout; 
  din                     <= m_axis_video_tdata;
  
  m_axis_video_tready     <= '1';  -- we always want data from upstream
  
  wr_en                   <= m_axis_video_tvalid;  -- write data to fifo when valid
end beh;