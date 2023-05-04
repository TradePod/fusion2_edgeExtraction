-- -------------------------------------------------------------
-- 
-- File Name: C:\Projects\ipcore_integration_v2\full_64_hdl\hdlsrc\gauss_sobel_rgb_64bit_full\Subsystem_ip_src_conv_X1.vhd
-- Created: 2023-05-03 00:57:07
-- 
-- Generated by MATLAB 9.12 and HDL Coder 3.20
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Subsystem_ip_src_conv_X1
-- Source Path: gauss_sobel_rgb_64bit_full/Subsystem/conv_core_sobel1/Subsystem1/conv X1
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Subsystem_ip_src_Subsystem_pkg.ALL;

ENTITY Subsystem_ip_src_conv_X1 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        coeffsX                           :   IN    vector_of_std_logic_vector8(0 TO 8);  -- int8 [9]
        Image_R                           :   IN    vector_of_std_logic_vector8(0 TO 8);  -- uint8 [9]
        Image_L                           :   IN    vector_of_std_logic_vector8(0 TO 8);  -- uint8 [9]
        alphavalid                        :   IN    std_logic;
        RX                                :   OUT   std_logic_vector(7 DOWNTO 0);  -- uint8
        LX                                :   OUT   std_logic_vector(7 DOWNTO 0)  -- uint8
        );
END Subsystem_ip_src_conv_X1;


ARCHITECTURE rtl OF Subsystem_ip_src_conv_X1 IS

  -- Signals
  SIGNAL enb_gated                        : std_logic;
  SIGNAL Image_R_unsigned                 : vector_of_unsigned8(0 TO 8);  -- uint8 [9]
  SIGNAL coeffsX_signed                   : vector_of_signed8(0 TO 8);  -- int8 [9]
  SIGNAL Product_cast                     : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp                 : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_1                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_1               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_2                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_2               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_3                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_3               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_4                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_4               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_5                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_5               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_6                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_6               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_7                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_7               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_cast_8                   : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product_mul_temp_8               : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product_out1                     : vector_of_signed16(0 TO 8);  -- int16 [9]
  SIGNAL enb_gated_1                      : std_logic;
  SIGNAL Delay1_out1                      : vector_of_signed16(0 TO 8);  -- int16 [9]
  SIGNAL in0_0                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL in0_1                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_op_stage1        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_2                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage3_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage2        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_3                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage4_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage3        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_4                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage5_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage4        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_5                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage6_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage5        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_6                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage7_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage6        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_7                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage8_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_op_stage7        : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_8                            : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements_stage9_add_temp  : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements_stage9_cast      : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL out0                             : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay3_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay3_out1_1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay3_out1_last_value           : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL enb_gated_2                      : std_logic;
  SIGNAL Image_L_unsigned                 : vector_of_unsigned8(0 TO 8);  -- uint8 [9]
  SIGNAL Product1_cast                    : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp                : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_1                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_1              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_2                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_2              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_3                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_3              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_4                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_4              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_5                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_5              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_6                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_6              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_7                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_7              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_cast_8                  : signed(8 DOWNTO 0);  -- sfix9
  SIGNAL Product1_mul_temp_8              : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Product1_out1                    : vector_of_signed16(0 TO 8);  -- int16 [9]
  SIGNAL enb_gated_3                      : std_logic;
  SIGNAL Delay2_out1                      : vector_of_signed16(0 TO 8);  -- int16 [9]
  SIGNAL in0_0_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL in0_1_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_op_stage1       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_2_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage3_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage2       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_3_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage4_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage3       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_4_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage5_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage4       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_5_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage6_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage5       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_6_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage7_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage6       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_7_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage8_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_op_stage7       : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL in0_8_1                          : signed(15 DOWNTO 0);  -- int16
  SIGNAL Sum_of_Elements1_stage9_add_temp : signed(32 DOWNTO 0);  -- sfix33
  SIGNAL Sum_of_Elements1_stage9_cast     : signed(31 DOWNTO 0);  -- sfix32
  SIGNAL out0_1                           : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay4_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay4_out1_1                    : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Delay4_out1_last_value           : unsigned(7 DOWNTO 0);  -- uint8

BEGIN
  enb_gated <= alphavalid AND enb;

  outputgen2: FOR k IN 0 TO 8 GENERATE
    Image_R_unsigned(k) <= unsigned(Image_R(k));
  END GENERATE;

  outputgen1: FOR k IN 0 TO 8 GENERATE
    coeffsX_signed(k) <= signed(coeffsX(k));
  END GENERATE;

  Product_cast <= signed(resize(Image_R_unsigned(0), 9));
  Product_mul_temp <= Product_cast * coeffsX_signed(0);
  Product_out1(0) <= Product_mul_temp(15 DOWNTO 0);
  Product_cast_1 <= signed(resize(Image_R_unsigned(1), 9));
  Product_mul_temp_1 <= Product_cast_1 * coeffsX_signed(1);
  Product_out1(1) <= Product_mul_temp_1(15 DOWNTO 0);
  Product_cast_2 <= signed(resize(Image_R_unsigned(2), 9));
  Product_mul_temp_2 <= Product_cast_2 * coeffsX_signed(2);
  Product_out1(2) <= Product_mul_temp_2(15 DOWNTO 0);
  Product_cast_3 <= signed(resize(Image_R_unsigned(3), 9));
  Product_mul_temp_3 <= Product_cast_3 * coeffsX_signed(3);
  Product_out1(3) <= Product_mul_temp_3(15 DOWNTO 0);
  Product_cast_4 <= signed(resize(Image_R_unsigned(4), 9));
  Product_mul_temp_4 <= Product_cast_4 * coeffsX_signed(4);
  Product_out1(4) <= Product_mul_temp_4(15 DOWNTO 0);
  Product_cast_5 <= signed(resize(Image_R_unsigned(5), 9));
  Product_mul_temp_5 <= Product_cast_5 * coeffsX_signed(5);
  Product_out1(5) <= Product_mul_temp_5(15 DOWNTO 0);
  Product_cast_6 <= signed(resize(Image_R_unsigned(6), 9));
  Product_mul_temp_6 <= Product_cast_6 * coeffsX_signed(6);
  Product_out1(6) <= Product_mul_temp_6(15 DOWNTO 0);
  Product_cast_7 <= signed(resize(Image_R_unsigned(7), 9));
  Product_mul_temp_7 <= Product_cast_7 * coeffsX_signed(7);
  Product_out1(7) <= Product_mul_temp_7(15 DOWNTO 0);
  Product_cast_8 <= signed(resize(Image_R_unsigned(8), 9));
  Product_mul_temp_8 <= Product_cast_8 * coeffsX_signed(8);
  Product_out1(8) <= Product_mul_temp_8(15 DOWNTO 0);

  enb_gated_1 <= alphavalid AND enb;

  Delay1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay1_out1(0) <= to_signed(16#0000#, 16);
      Delay1_out1(1) <= to_signed(16#0000#, 16);
      Delay1_out1(2) <= to_signed(16#0000#, 16);
      Delay1_out1(3) <= to_signed(16#0000#, 16);
      Delay1_out1(4) <= to_signed(16#0000#, 16);
      Delay1_out1(5) <= to_signed(16#0000#, 16);
      Delay1_out1(6) <= to_signed(16#0000#, 16);
      Delay1_out1(7) <= to_signed(16#0000#, 16);
      Delay1_out1(8) <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_1 = '1' THEN
        Delay1_out1(0) <= Product_out1(0);
        Delay1_out1(1) <= Product_out1(1);
        Delay1_out1(2) <= Product_out1(2);
        Delay1_out1(3) <= Product_out1(3);
        Delay1_out1(4) <= Product_out1(4);
        Delay1_out1(5) <= Product_out1(5);
        Delay1_out1(6) <= Product_out1(6);
        Delay1_out1(7) <= Product_out1(7);
        Delay1_out1(8) <= Product_out1(8);
      END IF;
    END IF;
  END PROCESS Delay1_process;


  in0_0 <= Delay1_out1(0);

  in0_1 <= Delay1_out1(1);

  Sum_of_Elements_op_stage1 <= resize(in0_0, 32) + resize(in0_1, 32);

  in0_2 <= Delay1_out1(2);

  Sum_of_Elements_stage3_add_temp <= resize(Sum_of_Elements_op_stage1, 33) + resize(in0_2, 33);
  
  Sum_of_Elements_op_stage2 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage3_add_temp(32) = '0') AND (Sum_of_Elements_stage3_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage3_add_temp(32) = '1') AND (Sum_of_Elements_stage3_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage3_add_temp(31 DOWNTO 0);

  in0_3 <= Delay1_out1(3);

  Sum_of_Elements_stage4_add_temp <= resize(Sum_of_Elements_op_stage2, 33) + resize(in0_3, 33);
  
  Sum_of_Elements_op_stage3 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage4_add_temp(32) = '0') AND (Sum_of_Elements_stage4_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage4_add_temp(32) = '1') AND (Sum_of_Elements_stage4_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage4_add_temp(31 DOWNTO 0);

  in0_4 <= Delay1_out1(4);

  Sum_of_Elements_stage5_add_temp <= resize(Sum_of_Elements_op_stage3, 33) + resize(in0_4, 33);
  
  Sum_of_Elements_op_stage4 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage5_add_temp(32) = '0') AND (Sum_of_Elements_stage5_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage5_add_temp(32) = '1') AND (Sum_of_Elements_stage5_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage5_add_temp(31 DOWNTO 0);

  in0_5 <= Delay1_out1(5);

  Sum_of_Elements_stage6_add_temp <= resize(Sum_of_Elements_op_stage4, 33) + resize(in0_5, 33);
  
  Sum_of_Elements_op_stage5 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage6_add_temp(32) = '0') AND (Sum_of_Elements_stage6_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage6_add_temp(32) = '1') AND (Sum_of_Elements_stage6_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage6_add_temp(31 DOWNTO 0);

  in0_6 <= Delay1_out1(6);

  Sum_of_Elements_stage7_add_temp <= resize(Sum_of_Elements_op_stage5, 33) + resize(in0_6, 33);
  
  Sum_of_Elements_op_stage6 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage7_add_temp(32) = '0') AND (Sum_of_Elements_stage7_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage7_add_temp(32) = '1') AND (Sum_of_Elements_stage7_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage7_add_temp(31 DOWNTO 0);

  in0_7 <= Delay1_out1(7);

  Sum_of_Elements_stage8_add_temp <= resize(Sum_of_Elements_op_stage6, 33) + resize(in0_7, 33);
  
  Sum_of_Elements_op_stage7 <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage8_add_temp(32) = '0') AND (Sum_of_Elements_stage8_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage8_add_temp(32) = '1') AND (Sum_of_Elements_stage8_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage8_add_temp(31 DOWNTO 0);

  in0_8 <= Delay1_out1(8);

  Sum_of_Elements_stage9_add_temp <= resize(Sum_of_Elements_op_stage7, 33) + resize(in0_8, 33);
  
  Sum_of_Elements_stage9_cast <= X"7FFFFFFF" WHEN (Sum_of_Elements_stage9_add_temp(32) = '0') AND (Sum_of_Elements_stage9_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements_stage9_add_temp(32) = '1') AND (Sum_of_Elements_stage9_add_temp(31) /= '1') ELSE
      Sum_of_Elements_stage9_add_temp(31 DOWNTO 0);
  
  out0 <= "11111111" WHEN (Sum_of_Elements_stage9_cast(31) = '0') AND (Sum_of_Elements_stage9_cast(30 DOWNTO 8) /= "00000000000000000000000") ELSE
      "00000000" WHEN Sum_of_Elements_stage9_cast(31) = '1' ELSE
      unsigned(Sum_of_Elements_stage9_cast(7 DOWNTO 0));

  Delay3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        Delay3_out1 <= out0;
      END IF;
    END IF;
  END PROCESS Delay3_process;


  out0_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay3_out1_last_value <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        Delay3_out1_last_value <= Delay3_out1_1;
      END IF;
    END IF;
  END PROCESS out0_bypass_process;


  
  Delay3_out1_1 <= Delay3_out1_last_value WHEN alphavalid = '0' ELSE
      Delay3_out1;

  RX <= std_logic_vector(Delay3_out1_1);

  enb_gated_2 <= alphavalid AND enb;

  outputgen: FOR k IN 0 TO 8 GENERATE
    Image_L_unsigned(k) <= unsigned(Image_L(k));
  END GENERATE;

  Product1_cast <= signed(resize(Image_L_unsigned(0), 9));
  Product1_mul_temp <= coeffsX_signed(0) * Product1_cast;
  Product1_out1(0) <= Product1_mul_temp(15 DOWNTO 0);
  Product1_cast_1 <= signed(resize(Image_L_unsigned(1), 9));
  Product1_mul_temp_1 <= coeffsX_signed(1) * Product1_cast_1;
  Product1_out1(1) <= Product1_mul_temp_1(15 DOWNTO 0);
  Product1_cast_2 <= signed(resize(Image_L_unsigned(2), 9));
  Product1_mul_temp_2 <= coeffsX_signed(2) * Product1_cast_2;
  Product1_out1(2) <= Product1_mul_temp_2(15 DOWNTO 0);
  Product1_cast_3 <= signed(resize(Image_L_unsigned(3), 9));
  Product1_mul_temp_3 <= coeffsX_signed(3) * Product1_cast_3;
  Product1_out1(3) <= Product1_mul_temp_3(15 DOWNTO 0);
  Product1_cast_4 <= signed(resize(Image_L_unsigned(4), 9));
  Product1_mul_temp_4 <= coeffsX_signed(4) * Product1_cast_4;
  Product1_out1(4) <= Product1_mul_temp_4(15 DOWNTO 0);
  Product1_cast_5 <= signed(resize(Image_L_unsigned(5), 9));
  Product1_mul_temp_5 <= coeffsX_signed(5) * Product1_cast_5;
  Product1_out1(5) <= Product1_mul_temp_5(15 DOWNTO 0);
  Product1_cast_6 <= signed(resize(Image_L_unsigned(6), 9));
  Product1_mul_temp_6 <= coeffsX_signed(6) * Product1_cast_6;
  Product1_out1(6) <= Product1_mul_temp_6(15 DOWNTO 0);
  Product1_cast_7 <= signed(resize(Image_L_unsigned(7), 9));
  Product1_mul_temp_7 <= coeffsX_signed(7) * Product1_cast_7;
  Product1_out1(7) <= Product1_mul_temp_7(15 DOWNTO 0);
  Product1_cast_8 <= signed(resize(Image_L_unsigned(8), 9));
  Product1_mul_temp_8 <= coeffsX_signed(8) * Product1_cast_8;
  Product1_out1(8) <= Product1_mul_temp_8(15 DOWNTO 0);

  enb_gated_3 <= alphavalid AND enb;

  Delay2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay2_out1(0) <= to_signed(16#0000#, 16);
      Delay2_out1(1) <= to_signed(16#0000#, 16);
      Delay2_out1(2) <= to_signed(16#0000#, 16);
      Delay2_out1(3) <= to_signed(16#0000#, 16);
      Delay2_out1(4) <= to_signed(16#0000#, 16);
      Delay2_out1(5) <= to_signed(16#0000#, 16);
      Delay2_out1(6) <= to_signed(16#0000#, 16);
      Delay2_out1(7) <= to_signed(16#0000#, 16);
      Delay2_out1(8) <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_3 = '1' THEN
        Delay2_out1(0) <= Product1_out1(0);
        Delay2_out1(1) <= Product1_out1(1);
        Delay2_out1(2) <= Product1_out1(2);
        Delay2_out1(3) <= Product1_out1(3);
        Delay2_out1(4) <= Product1_out1(4);
        Delay2_out1(5) <= Product1_out1(5);
        Delay2_out1(6) <= Product1_out1(6);
        Delay2_out1(7) <= Product1_out1(7);
        Delay2_out1(8) <= Product1_out1(8);
      END IF;
    END IF;
  END PROCESS Delay2_process;


  in0_0_1 <= Delay2_out1(0);

  in0_1_1 <= Delay2_out1(1);

  Sum_of_Elements1_op_stage1 <= resize(in0_0_1, 32) + resize(in0_1_1, 32);

  in0_2_1 <= Delay2_out1(2);

  Sum_of_Elements1_stage3_add_temp <= resize(Sum_of_Elements1_op_stage1, 33) + resize(in0_2_1, 33);
  
  Sum_of_Elements1_op_stage2 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage3_add_temp(32) = '0') AND (Sum_of_Elements1_stage3_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage3_add_temp(32) = '1') AND (Sum_of_Elements1_stage3_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage3_add_temp(31 DOWNTO 0);

  in0_3_1 <= Delay2_out1(3);

  Sum_of_Elements1_stage4_add_temp <= resize(Sum_of_Elements1_op_stage2, 33) + resize(in0_3_1, 33);
  
  Sum_of_Elements1_op_stage3 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage4_add_temp(32) = '0') AND (Sum_of_Elements1_stage4_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage4_add_temp(32) = '1') AND (Sum_of_Elements1_stage4_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage4_add_temp(31 DOWNTO 0);

  in0_4_1 <= Delay2_out1(4);

  Sum_of_Elements1_stage5_add_temp <= resize(Sum_of_Elements1_op_stage3, 33) + resize(in0_4_1, 33);
  
  Sum_of_Elements1_op_stage4 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage5_add_temp(32) = '0') AND (Sum_of_Elements1_stage5_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage5_add_temp(32) = '1') AND (Sum_of_Elements1_stage5_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage5_add_temp(31 DOWNTO 0);

  in0_5_1 <= Delay2_out1(5);

  Sum_of_Elements1_stage6_add_temp <= resize(Sum_of_Elements1_op_stage4, 33) + resize(in0_5_1, 33);
  
  Sum_of_Elements1_op_stage5 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage6_add_temp(32) = '0') AND (Sum_of_Elements1_stage6_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage6_add_temp(32) = '1') AND (Sum_of_Elements1_stage6_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage6_add_temp(31 DOWNTO 0);

  in0_6_1 <= Delay2_out1(6);

  Sum_of_Elements1_stage7_add_temp <= resize(Sum_of_Elements1_op_stage5, 33) + resize(in0_6_1, 33);
  
  Sum_of_Elements1_op_stage6 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage7_add_temp(32) = '0') AND (Sum_of_Elements1_stage7_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage7_add_temp(32) = '1') AND (Sum_of_Elements1_stage7_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage7_add_temp(31 DOWNTO 0);

  in0_7_1 <= Delay2_out1(7);

  Sum_of_Elements1_stage8_add_temp <= resize(Sum_of_Elements1_op_stage6, 33) + resize(in0_7_1, 33);
  
  Sum_of_Elements1_op_stage7 <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage8_add_temp(32) = '0') AND (Sum_of_Elements1_stage8_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage8_add_temp(32) = '1') AND (Sum_of_Elements1_stage8_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage8_add_temp(31 DOWNTO 0);

  in0_8_1 <= Delay2_out1(8);

  Sum_of_Elements1_stage9_add_temp <= resize(Sum_of_Elements1_op_stage7, 33) + resize(in0_8_1, 33);
  
  Sum_of_Elements1_stage9_cast <= X"7FFFFFFF" WHEN (Sum_of_Elements1_stage9_add_temp(32) = '0') AND (Sum_of_Elements1_stage9_add_temp(31) /= '0') ELSE
      X"80000000" WHEN (Sum_of_Elements1_stage9_add_temp(32) = '1') AND (Sum_of_Elements1_stage9_add_temp(31) /= '1') ELSE
      Sum_of_Elements1_stage9_add_temp(31 DOWNTO 0);
  
  out0_1 <= "11111111" WHEN (Sum_of_Elements1_stage9_cast(31) = '0') AND (Sum_of_Elements1_stage9_cast(30 DOWNTO 8) /= "00000000000000000000000") ELSE
      "00000000" WHEN Sum_of_Elements1_stage9_cast(31) = '1' ELSE
      unsigned(Sum_of_Elements1_stage9_cast(7 DOWNTO 0));

  Delay4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1 <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        Delay4_out1 <= out0_1;
      END IF;
    END IF;
  END PROCESS Delay4_process;


  out0_bypass_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay4_out1_last_value <= to_unsigned(16#00#, 8);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated_2 = '1' THEN
        Delay4_out1_last_value <= Delay4_out1_1;
      END IF;
    END IF;
  END PROCESS out0_bypass_1_process;


  
  Delay4_out1_1 <= Delay4_out1_last_value WHEN alphavalid = '0' ELSE
      Delay4_out1;

  LX <= std_logic_vector(Delay4_out1_1);

END rtl;

