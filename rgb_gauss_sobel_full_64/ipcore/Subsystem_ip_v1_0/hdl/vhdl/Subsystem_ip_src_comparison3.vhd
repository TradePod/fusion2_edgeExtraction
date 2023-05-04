-- -------------------------------------------------------------
-- 
-- File Name: C:\Projects\fusion2_HWaccel_IP\rgb_gauss_sobel_full_64\hdlsrc\rgb_gauss_sobel_64bit_full\Subsystem_ip_src_comparison3.vhd
-- Created: 2023-05-04 18:21:05
-- 
-- Generated by MATLAB 9.12 and HDL Coder 3.20
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Subsystem_ip_src_comparison3
-- Source Path: rgb_gauss_sobel_64bit_full/Subsystem/rgb_filter/Subsystem1/comparison3
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Subsystem_ip_src_comparison3 IS
  PORT( In1                               :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        max                               :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        min                               :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        Out1                              :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END Subsystem_ip_src_comparison3;


ARCHITECTURE rtl OF Subsystem_ip_src_comparison3 IS

  -- Signals
  SIGNAL In1_unsigned                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL max_unsigned                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Relational_Operator_relop1       : std_logic;
  SIGNAL min_unsigned                     : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Relational_Operator1_relop1      : std_logic;
  SIGNAL AND_out1                         : std_logic;
  SIGNAL Constant_out1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch_out1                      : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  In1_unsigned <= unsigned(In1);

  max_unsigned <= unsigned(max);

  
  Relational_Operator_relop1 <= '1' WHEN In1_unsigned <= max_unsigned ELSE
      '0';

  min_unsigned <= unsigned(min);

  
  Relational_Operator1_relop1 <= '1' WHEN In1_unsigned >= min_unsigned ELSE
      '0';

  AND_out1 <= Relational_Operator_relop1 AND Relational_Operator1_relop1;

  Constant_out1 <= to_unsigned(16#00#, 8);

  
  Switch_out1 <= Constant_out1 WHEN AND_out1 = '0' ELSE
      In1_unsigned;

  Out1 <= std_logic_vector(Switch_out1);

END rtl;

