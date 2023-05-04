--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Thu May  4 18:22:50 2023
--Host        : DESKTOP-6TH33MP running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_href : in STD_LOGIC;
    cam_href1 : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_pclk1 : in STD_LOGIC;
    cam_pdwn : out STD_LOGIC;
    cam_pdwn1 : out STD_LOGIC;
    cam_rst : out STD_LOGIC;
    cam_rst1 : out STD_LOGIC;
    cam_trigger : out STD_LOGIC;
    cam_trigger1 : out STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_vsync1 : in STD_LOGIC;
    cam_xclk : out STD_LOGIC;
    cam_xclk1 : out STD_LOGIC;
    i2c0_scl_io : inout STD_LOGIC;
    i2c0_sda_io : inout STD_LOGIC;
    i2c1_scl_io : inout STD_LOGIC;
    i2c1_sda_io : inout STD_LOGIC;
    led : out STD_LOGIC;
    reset_rtl : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    cam_d : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_d1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    cam_href : in STD_LOGIC;
    cam_href1 : in STD_LOGIC;
    cam_pclk : in STD_LOGIC;
    cam_pclk1 : in STD_LOGIC;
    cam_pdwn : out STD_LOGIC;
    cam_pdwn1 : out STD_LOGIC;
    cam_rst : out STD_LOGIC;
    cam_rst1 : out STD_LOGIC;
    cam_trigger : out STD_LOGIC;
    cam_trigger1 : out STD_LOGIC;
    cam_vsync : in STD_LOGIC;
    cam_vsync1 : in STD_LOGIC;
    cam_xclk : out STD_LOGIC;
    cam_xclk1 : out STD_LOGIC;
    led : out STD_LOGIC;
    reset_rtl : in STD_LOGIC;
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    i2c1_sda_i : in STD_LOGIC;
    i2c1_sda_o : out STD_LOGIC;
    i2c1_sda_t : out STD_LOGIC;
    i2c1_scl_i : in STD_LOGIC;
    i2c1_scl_o : out STD_LOGIC;
    i2c1_scl_t : out STD_LOGIC;
    i2c0_sda_i : in STD_LOGIC;
    i2c0_sda_o : out STD_LOGIC;
    i2c0_sda_t : out STD_LOGIC;
    i2c0_scl_i : in STD_LOGIC;
    i2c0_scl_o : out STD_LOGIC;
    i2c0_scl_t : out STD_LOGIC
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal i2c0_scl_i : STD_LOGIC;
  signal i2c0_scl_o : STD_LOGIC;
  signal i2c0_scl_t : STD_LOGIC;
  signal i2c0_sda_i : STD_LOGIC;
  signal i2c0_sda_o : STD_LOGIC;
  signal i2c0_sda_t : STD_LOGIC;
  signal i2c1_scl_i : STD_LOGIC;
  signal i2c1_scl_o : STD_LOGIC;
  signal i2c1_scl_t : STD_LOGIC;
  signal i2c1_sda_i : STD_LOGIC;
  signal i2c1_sda_o : STD_LOGIC;
  signal i2c1_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      cam_d(7 downto 0) => cam_d(7 downto 0),
      cam_d1(7 downto 0) => cam_d1(7 downto 0),
      cam_href => cam_href,
      cam_href1 => cam_href1,
      cam_pclk => cam_pclk,
      cam_pclk1 => cam_pclk1,
      cam_pdwn => cam_pdwn,
      cam_pdwn1 => cam_pdwn1,
      cam_rst => cam_rst,
      cam_rst1 => cam_rst1,
      cam_trigger => cam_trigger,
      cam_trigger1 => cam_trigger1,
      cam_vsync => cam_vsync,
      cam_vsync1 => cam_vsync1,
      cam_xclk => cam_xclk,
      cam_xclk1 => cam_xclk1,
      i2c0_scl_i => i2c0_scl_i,
      i2c0_scl_o => i2c0_scl_o,
      i2c0_scl_t => i2c0_scl_t,
      i2c0_sda_i => i2c0_sda_i,
      i2c0_sda_o => i2c0_sda_o,
      i2c0_sda_t => i2c0_sda_t,
      i2c1_scl_i => i2c1_scl_i,
      i2c1_scl_o => i2c1_scl_o,
      i2c1_scl_t => i2c1_scl_t,
      i2c1_sda_i => i2c1_sda_i,
      i2c1_sda_o => i2c1_sda_o,
      i2c1_sda_t => i2c1_sda_t,
      led => led,
      reset_rtl => reset_rtl
    );
i2c0_scl_iobuf: component IOBUF
     port map (
      I => i2c0_scl_o,
      IO => i2c0_scl_io,
      O => i2c0_scl_i,
      T => i2c0_scl_t
    );
i2c0_sda_iobuf: component IOBUF
     port map (
      I => i2c0_sda_o,
      IO => i2c0_sda_io,
      O => i2c0_sda_i,
      T => i2c0_sda_t
    );
i2c1_scl_iobuf: component IOBUF
     port map (
      I => i2c1_scl_o,
      IO => i2c1_scl_io,
      O => i2c1_scl_i,
      T => i2c1_scl_t
    );
i2c1_sda_iobuf: component IOBUF
     port map (
      I => i2c1_sda_o,
      IO => i2c1_sda_io,
      O => i2c1_sda_i,
      T => i2c1_sda_t
    );
end STRUCTURE;
