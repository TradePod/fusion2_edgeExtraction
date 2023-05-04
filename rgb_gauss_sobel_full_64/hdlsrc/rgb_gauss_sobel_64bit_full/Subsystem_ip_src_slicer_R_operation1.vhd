-- -------------------------------------------------------------
-- 
-- File Name: C:\Projects\fusion2_HWaccel_IP\rgb_gauss_sobel_full_64\hdlsrc\rgb_gauss_sobel_64bit_full\Subsystem_ip_src_slicer_R_operation1.vhd
-- Created: 2023-05-04 18:21:05
-- 
-- Generated by MATLAB 9.12 and HDL Coder 3.20
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Subsystem_ip_src_slicer_R_operation1
-- Source Path: rgb_gauss_sobel_64bit_full/Subsystem/conv_core_gauss/Subsystem1/slicer R operation1
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Subsystem_ip_src_slicer_R_operation1 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        channel_in                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        alphavalid                        :   IN    std_logic;
        out_1                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_2                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_3                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_4                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_5                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_6                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_7                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_8                             :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        out_9                             :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END Subsystem_ip_src_slicer_R_operation1;


ARCHITECTURE rtl OF Subsystem_ip_src_slicer_R_operation1 IS

  -- Component Declarations
  COMPONENT Subsystem_ip_src_SimpleDualPortRAM_generic
    GENERIC( AddrWidth                    : integer;
             DataWidth                    : integer
             );
    PORT( clk                             :   IN    std_logic;
          enb                             :   IN    std_logic;
          wr_din                          :   IN    std_logic_vector(DataWidth - 1 DOWNTO 0);  -- generic width
          wr_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          wr_en                           :   IN    std_logic;  -- ufix1
          rd_addr                         :   IN    std_logic_vector(AddrWidth - 1 DOWNTO 0);  -- generic width
          rd_dout                         :   OUT   std_logic_vector(DataWidth - 1 DOWNTO 0)  -- generic width
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Subsystem_ip_src_SimpleDualPortRAM_generic
    USE ENTITY work.Subsystem_ip_src_SimpleDualPortRAM_generic(rtl);

  -- Signals
  SIGNAL channel_in_unsigned              : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated                        : std_logic;
  SIGNAL Delay1_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_1                      : std_logic;
  SIGNAL Delay4_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_2                      : std_logic;
  SIGNAL Line_buffer_regin                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Line_buffer_waddr                : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Line_buffer_wrenb                : std_logic;  -- ufix1
  SIGNAL Line_buffer_raddr                : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Line_buffer_regout               : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Line_buffer_regout_unsigned      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Line_buffer_out1                 : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_3                      : std_logic;
  SIGNAL Delay2_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_4                      : std_logic;
  SIGNAL Delay5_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_5                      : std_logic;
  SIGNAL Line_buffer1_regin               : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Line_buffer1_waddr               : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Line_buffer1_wrenb               : std_logic;  -- ufix1
  SIGNAL Line_buffer1_raddr               : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Line_buffer1_regout              : std_logic_vector(7 DOWNTO 0);  -- ufix8
  SIGNAL Line_buffer1_regout_unsigned     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Line_buffer1_out1                : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_6                      : std_logic;
  SIGNAL Delay3_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_7                      : std_logic;
  SIGNAL Delay6_out1                      : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  u_ShiftRegisterRAM_generic : Subsystem_ip_src_SimpleDualPortRAM_generic
    GENERIC MAP( AddrWidth => 10,
                 DataWidth => 8
                 )
    PORT MAP( clk => clk,
              enb => enb_gated_2,
              wr_din => std_logic_vector(Line_buffer_regin),
              wr_addr => std_logic_vector(Line_buffer_waddr),
              wr_en => Line_buffer_wrenb,  -- ufix1
              rd_addr => std_logic_vector(Line_buffer_raddr),
              rd_dout => Line_buffer_regout
              );

  u_ShiftRegisterRAM : Subsystem_ip_src_SimpleDualPortRAM_generic
    GENERIC MAP( AddrWidth => 10,
                 DataWidth => 8
                 )
    PORT MAP( clk => clk,
              enb => enb_gated_5,
              wr_din => std_logic_vector(Line_buffer1_regin),
              wr_addr => std_logic_vector(Line_buffer1_waddr),
              wr_en => Line_buffer1_wrenb,  -- ufix1
              rd_addr => std_logic_vector(Line_buffer1_raddr),
              rd_dout => Line_buffer1_regout
              );

  channel_in_unsigned <= unsigned(channel_in);

  enb_gated <= alphavalid AND enb;

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        Delay1_out1 <= channel_in_unsigned;
      END IF;
    END IF;
  END PROCESS Delay1_process;


  out_2 <= std_logic_vector(Delay1_out1);

  enb_gated_1 <= alphavalid AND enb;

  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_1 = '1' THEN
        Delay4_out1 <= Delay1_out1;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  out_3 <= std_logic_vector(Delay4_out1);

  enb_gated_2 <= alphavalid AND enb;

  -- Input register for RAM-based shift register Line buffer
  Line_buffer_reginc_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer_regin <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        Line_buffer_regin <= Delay4_out1;
      END IF;
    END IF;
  END PROCESS Line_buffer_reginc_process;


  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 747
  -- 
  -- Write address counter for RAM-based shift register Line buffer
  Line_buffer_wr_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer_waddr <= to_unsigned(16#000#, 10);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        IF Line_buffer_waddr >= to_unsigned(16#2EB#, 10) THEN 
          Line_buffer_waddr <= to_unsigned(16#000#, 10);
        ELSE 
          Line_buffer_waddr <= Line_buffer_waddr + to_unsigned(16#001#, 10);
        END IF;
      END IF;
    END IF;
  END PROCESS Line_buffer_wr_process;


  Line_buffer_wrenb <= '1';

  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 747
  -- 
  -- Read address counter for RAM-based shift register Line buffer
  Line_buffer_rd_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer_raddr <= to_unsigned(16#001#, 10);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        IF Line_buffer_raddr >= to_unsigned(16#2EB#, 10) THEN 
          Line_buffer_raddr <= to_unsigned(16#000#, 10);
        ELSE 
          Line_buffer_raddr <= Line_buffer_raddr + to_unsigned(16#001#, 10);
        END IF;
      END IF;
    END IF;
  END PROCESS Line_buffer_rd_process;


  Line_buffer_regout_unsigned <= unsigned(Line_buffer_regout);

  -- Output register for RAM-based shift register Line buffer
  Line_buffer_regoutc_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        Line_buffer_out1 <= Line_buffer_regout_unsigned;
      END IF;
    END IF;
  END PROCESS Line_buffer_regoutc_process;


  out_4 <= std_logic_vector(Line_buffer_out1);

  enb_gated_3 <= alphavalid AND enb;

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_3 = '1' THEN
        Delay2_out1 <= Line_buffer_out1;
      END IF;
    END IF;
  END PROCESS Delay2_process;


  out_5 <= std_logic_vector(Delay2_out1);

  enb_gated_4 <= alphavalid AND enb;

  Delay5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay5_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_4 = '1' THEN
        Delay5_out1 <= Delay2_out1;
      END IF;
    END IF;
  END PROCESS Delay5_process;


  out_6 <= std_logic_vector(Delay5_out1);

  enb_gated_5 <= alphavalid AND enb;

  -- Input register for RAM-based shift register Line buffer1
  Line_buffer1_reginc_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer1_regin <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_5 = '1' THEN
        Line_buffer1_regin <= Delay5_out1;
      END IF;
    END IF;
  END PROCESS Line_buffer1_reginc_process;


  -- Count limited, Unsigned Counter
  --  initial value   = 0
  --  step value      = 1
  --  count to value  = 747
  -- 
  -- Write address counter for RAM-based shift register Line buffer1
  Line_buffer1_wr_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer1_waddr <= to_unsigned(16#000#, 10);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_5 = '1' THEN
        IF Line_buffer1_waddr >= to_unsigned(16#2EB#, 10) THEN 
          Line_buffer1_waddr <= to_unsigned(16#000#, 10);
        ELSE 
          Line_buffer1_waddr <= Line_buffer1_waddr + to_unsigned(16#001#, 10);
        END IF;
      END IF;
    END IF;
  END PROCESS Line_buffer1_wr_process;


  Line_buffer1_wrenb <= '1';

  -- Count limited, Unsigned Counter
  --  initial value   = 1
  --  step value      = 1
  --  count to value  = 747
  -- 
  -- Read address counter for RAM-based shift register Line buffer1
  Line_buffer1_rd_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer1_raddr <= to_unsigned(16#001#, 10);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_5 = '1' THEN
        IF Line_buffer1_raddr >= to_unsigned(16#2EB#, 10) THEN 
          Line_buffer1_raddr <= to_unsigned(16#000#, 10);
        ELSE 
          Line_buffer1_raddr <= Line_buffer1_raddr + to_unsigned(16#001#, 10);
        END IF;
      END IF;
    END IF;
  END PROCESS Line_buffer1_rd_process;


  Line_buffer1_regout_unsigned <= unsigned(Line_buffer1_regout);

  -- Output register for RAM-based shift register Line buffer1
  Line_buffer1_regoutc_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Line_buffer1_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_5 = '1' THEN
        Line_buffer1_out1 <= Line_buffer1_regout_unsigned;
      END IF;
    END IF;
  END PROCESS Line_buffer1_regoutc_process;


  out_7 <= std_logic_vector(Line_buffer1_out1);

  enb_gated_6 <= alphavalid AND enb;

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_6 = '1' THEN
        Delay3_out1 <= Line_buffer1_out1;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  out_8 <= std_logic_vector(Delay3_out1);

  enb_gated_7 <= alphavalid AND enb;

  Delay6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay6_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_7 = '1' THEN
        Delay6_out1 <= Delay3_out1;
      END IF;
    END IF;
  END PROCESS Delay6_process;


  out_9 <= std_logic_vector(Delay6_out1);

  out_1 <= channel_in;

END rtl;

