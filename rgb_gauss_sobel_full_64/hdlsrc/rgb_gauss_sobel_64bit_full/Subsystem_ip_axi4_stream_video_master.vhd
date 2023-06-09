-- -------------------------------------------------------------
-- 
-- File Name: C:\Projects\fusion2_HWaccel_IP\rgb_gauss_sobel_full_64\hdlsrc\rgb_gauss_sobel_64bit_full\Subsystem_ip_axi4_stream_video_master.vhd
-- Created: 2023-05-04 18:21:28
-- 
-- Generated by MATLAB 9.12 and HDL Coder 3.20
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Subsystem_ip_axi4_stream_video_master
-- Source Path: Subsystem_ip/Subsystem_ip_axi4_stream_video_master
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Subsystem_ip_axi4_stream_video_master IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        AXI4_Stream_Video_Master_TREADY   :   IN    std_logic;  -- ufix1
        user_pixel                        :   IN    std_logic_vector(63 DOWNTO 0);  -- ufix64
        user_ctrl_hStart                  :   IN    std_logic;  -- ufix1
        user_ctrl_hEnd                    :   IN    std_logic;  -- ufix1
        user_ctrl_vStart                  :   IN    std_logic;  -- ufix1
        user_ctrl_vEnd                    :   IN    std_logic;  -- ufix1
        user_ctrl_valid                   :   IN    std_logic;  -- ufix1
        AXI4_Stream_Video_Master_TDATA    :   OUT   std_logic_vector(63 DOWNTO 0);  -- ufix64
        AXI4_Stream_Video_Master_TVALID   :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Video_Master_TLAST    :   OUT   std_logic;  -- ufix1
        AXI4_Stream_Video_Master_TUSER    :   OUT   std_logic;  -- ufix1
        auto_ready                        :   OUT   std_logic  -- ufix1
        );
END Subsystem_ip_axi4_stream_video_master;


ARCHITECTURE rtl OF Subsystem_ip_axi4_stream_video_master IS

  -- Component Declarations
  COMPONENT Subsystem_ip_fifo_data_OUT
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic_vector(63 DOWNTO 0);  -- ufix64
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic_vector(63 DOWNTO 0);  -- ufix64
          Empty                           :   OUT   std_logic;  -- ufix1
          AFull                           :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT Subsystem_ip_fifo_eol_out
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic;  -- ufix1
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  COMPONENT Subsystem_ip_fifo_sof_out
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          In_rsvd                         :   IN    std_logic;  -- ufix1
          Push                            :   IN    std_logic;  -- ufix1
          Pop                             :   IN    std_logic;  -- ufix1
          Out_rsvd                        :   OUT   std_logic  -- ufix1
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Subsystem_ip_fifo_data_OUT
    USE ENTITY work.Subsystem_ip_fifo_data_OUT(rtl);

  FOR ALL : Subsystem_ip_fifo_eol_out
    USE ENTITY work.Subsystem_ip_fifo_eol_out(rtl);

  FOR ALL : Subsystem_ip_fifo_sof_out
    USE ENTITY work.Subsystem_ip_fifo_sof_out(rtl);

  -- Signals
  SIGNAL fifo_afull_data                  : std_logic;  -- ufix1
  SIGNAL internal_ready                   : std_logic;  -- ufix1
  SIGNAL internal_ready_delayed           : std_logic;  -- ufix1
  SIGNAL fifo_push                        : std_logic;  -- ufix1
  SIGNAL AXI4_Stream_Video_Master_TDATA_tmp : std_logic_vector(63 DOWNTO 0);  -- ufix64
  SIGNAL fifo_empty_data                  : std_logic;  -- ufix1

BEGIN
  u_Subsystem_ip_fifo_data_OUT_inst : Subsystem_ip_fifo_data_OUT
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => user_pixel,  -- ufix64
              Push => fifo_push,  -- ufix1
              Pop => AXI4_Stream_Video_Master_TREADY,  -- ufix1
              Out_rsvd => AXI4_Stream_Video_Master_TDATA_tmp,  -- ufix64
              Empty => fifo_empty_data,  -- ufix1
              AFull => fifo_afull_data  -- ufix1
              );

  u_Subsystem_ip_fifo_eol_out_inst : Subsystem_ip_fifo_eol_out
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => user_ctrl_hEnd,  -- ufix1
              Push => fifo_push,  -- ufix1
              Pop => AXI4_Stream_Video_Master_TREADY,  -- ufix1
              Out_rsvd => AXI4_Stream_Video_Master_TLAST  -- ufix1
              );

  u_Subsystem_ip_fifo_sof_out_inst : Subsystem_ip_fifo_sof_out
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              In_rsvd => user_ctrl_vStart,  -- ufix1
              Push => fifo_push,  -- ufix1
              Pop => AXI4_Stream_Video_Master_TREADY,  -- ufix1
              Out_rsvd => AXI4_Stream_Video_Master_TUSER  -- ufix1
              );

  internal_ready <=  NOT fifo_afull_data;

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      internal_ready_delayed <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        internal_ready_delayed <= internal_ready;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  fifo_push <= internal_ready_delayed AND user_ctrl_valid;

  AXI4_Stream_Video_Master_TVALID <=  NOT fifo_empty_data;

  auto_ready <= internal_ready;

  AXI4_Stream_Video_Master_TDATA <= AXI4_Stream_Video_Master_TDATA_tmp;

END rtl;

