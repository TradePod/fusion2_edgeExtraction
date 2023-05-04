-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:cameras_wrapper:1.0
-- IP Revision: 10

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_cameras_wrapper_0_0 IS
  PORT (
    M00_AXI1_0_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI1_0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI1_0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI1_0_arlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI1_0_arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI1_0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI1_0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI1_0_arready : IN STD_LOGIC;
    M00_AXI1_0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI1_0_arvalid : OUT STD_LOGIC;
    M00_AXI1_0_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    M00_AXI1_0_rlast : IN STD_LOGIC;
    M00_AXI1_0_rready : OUT STD_LOGIC;
    M00_AXI1_0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI1_0_rvalid : IN STD_LOGIC;
    M00_AXIS1_0_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M00_AXIS1_0_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXIS1_0_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXIS1_0_tready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXIS1_0_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXIS1_0_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    M00_AXI_0_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M00_AXI_0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_0_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_0_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M00_AXI_0_awready : IN STD_LOGIC;
    M00_AXI_0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M00_AXI_0_awvalid : OUT STD_LOGIC;
    M00_AXI_0_bready : OUT STD_LOGIC;
    M00_AXI_0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M00_AXI_0_bvalid : IN STD_LOGIC;
    M00_AXI_0_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M00_AXI_0_wlast : OUT STD_LOGIC;
    M00_AXI_0_wready : IN STD_LOGIC;
    M00_AXI_0_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M00_AXI_0_wvalid : OUT STD_LOGIC;
    M_AXI_S2MM_0_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    M_AXI_S2MM_0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_S2MM_0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_S2MM_0_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_S2MM_0_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_S2MM_0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_S2MM_0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    M_AXI_S2MM_0_awready : IN STD_LOGIC;
    M_AXI_S2MM_0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    M_AXI_S2MM_0_awvalid : OUT STD_LOGIC;
    M_AXI_S2MM_0_bready : OUT STD_LOGIC;
    M_AXI_S2MM_0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    M_AXI_S2MM_0_bvalid : IN STD_LOGIC;
    M_AXI_S2MM_0_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    M_AXI_S2MM_0_wlast : OUT STD_LOGIC;
    M_AXI_S2MM_0_wready : IN STD_LOGIC;
    M_AXI_S2MM_0_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    M_AXI_S2MM_0_wvalid : OUT STD_LOGIC;
    S00_AXI_0_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_0_arlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_arready : OUT STD_LOGIC;
    S00_AXI_0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_0_arvalid : IN STD_LOGIC;
    S00_AXI_0_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_0_awlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_awready : OUT STD_LOGIC;
    S00_AXI_0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    S00_AXI_0_awvalid : IN STD_LOGIC;
    S00_AXI_0_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_0_bready : IN STD_LOGIC;
    S00_AXI_0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_bvalid : OUT STD_LOGIC;
    S00_AXI_0_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_0_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_0_rlast : OUT STD_LOGIC;
    S00_AXI_0_rready : IN STD_LOGIC;
    S00_AXI_0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    S00_AXI_0_rvalid : OUT STD_LOGIC;
    S00_AXI_0_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    S00_AXI_0_wid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    S00_AXI_0_wlast : IN STD_LOGIC;
    S00_AXI_0_wready : OUT STD_LOGIC;
    S00_AXI_0_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    S00_AXI_0_wvalid : IN STD_LOGIC;
    S_AXIS_S2MM_0_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    S_AXIS_S2MM_0_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    S_AXIS_S2MM_0_tlast : IN STD_LOGIC;
    S_AXIS_S2MM_0_tready : OUT STD_LOGIC;
    S_AXIS_S2MM_0_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    S_AXIS_S2MM_0_tvalid : IN STD_LOGIC;
    cam_d1_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cam_d_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    cam_href1_0 : IN STD_LOGIC;
    cam_href_0 : IN STD_LOGIC;
    cam_pclk1_0 : IN STD_LOGIC;
    cam_pclk_0 : IN STD_LOGIC;
    cam_pdwn_0 : OUT STD_LOGIC;
    cam_rst_0 : OUT STD_LOGIC;
    cam_trigger1_0 : OUT STD_LOGIC;
    cam_trigger_0 : OUT STD_LOGIC;
    cam_vsync1_0 : IN STD_LOGIC;
    cam_vsync_0 : IN STD_LOGIC;
    cam_xclk_0 : OUT STD_LOGIC;
    irq_0 : OUT STD_LOGIC;
    peripheral_aresetn_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    resetn_0 : IN STD_LOGIC;
    s_axi_aclk_0 : IN STD_LOGIC
  );
END design_1_cameras_wrapper_0_0;

ARCHITECTURE design_1_cameras_wrapper_0_0_arch OF design_1_cameras_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_cameras_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT cameras_wrapper IS
    PORT (
      M00_AXI1_0_araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI1_0_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI1_0_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI1_0_arlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI1_0_arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI1_0_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI1_0_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI1_0_arready : IN STD_LOGIC;
      M00_AXI1_0_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI1_0_arvalid : OUT STD_LOGIC;
      M00_AXI1_0_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      M00_AXI1_0_rlast : IN STD_LOGIC;
      M00_AXI1_0_rready : OUT STD_LOGIC;
      M00_AXI1_0_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI1_0_rvalid : IN STD_LOGIC;
      M00_AXIS1_0_tdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M00_AXIS1_0_tkeep : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXIS1_0_tlast : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXIS1_0_tready : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXIS1_0_tuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXIS1_0_tvalid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      M00_AXI_0_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M00_AXI_0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_0_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_0_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M00_AXI_0_awready : IN STD_LOGIC;
      M00_AXI_0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M00_AXI_0_awvalid : OUT STD_LOGIC;
      M00_AXI_0_bready : OUT STD_LOGIC;
      M00_AXI_0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M00_AXI_0_bvalid : IN STD_LOGIC;
      M00_AXI_0_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M00_AXI_0_wlast : OUT STD_LOGIC;
      M00_AXI_0_wready : IN STD_LOGIC;
      M00_AXI_0_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M00_AXI_0_wvalid : OUT STD_LOGIC;
      M_AXI_S2MM_0_awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      M_AXI_S2MM_0_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_S2MM_0_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_S2MM_0_awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_S2MM_0_awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_S2MM_0_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_S2MM_0_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      M_AXI_S2MM_0_awready : IN STD_LOGIC;
      M_AXI_S2MM_0_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      M_AXI_S2MM_0_awvalid : OUT STD_LOGIC;
      M_AXI_S2MM_0_bready : OUT STD_LOGIC;
      M_AXI_S2MM_0_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      M_AXI_S2MM_0_bvalid : IN STD_LOGIC;
      M_AXI_S2MM_0_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      M_AXI_S2MM_0_wlast : OUT STD_LOGIC;
      M_AXI_S2MM_0_wready : IN STD_LOGIC;
      M_AXI_S2MM_0_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      M_AXI_S2MM_0_wvalid : OUT STD_LOGIC;
      S00_AXI_0_araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_0_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_arid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_0_arlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_0_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_arready : OUT STD_LOGIC;
      S00_AXI_0_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_0_arvalid : IN STD_LOGIC;
      S00_AXI_0_awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_0_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_awid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_0_awlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_0_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_awready : OUT STD_LOGIC;
      S00_AXI_0_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      S00_AXI_0_awvalid : IN STD_LOGIC;
      S00_AXI_0_bid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_0_bready : IN STD_LOGIC;
      S00_AXI_0_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_bvalid : OUT STD_LOGIC;
      S00_AXI_0_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_0_rid : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_0_rlast : OUT STD_LOGIC;
      S00_AXI_0_rready : IN STD_LOGIC;
      S00_AXI_0_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      S00_AXI_0_rvalid : OUT STD_LOGIC;
      S00_AXI_0_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      S00_AXI_0_wid : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      S00_AXI_0_wlast : IN STD_LOGIC;
      S00_AXI_0_wready : OUT STD_LOGIC;
      S00_AXI_0_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      S00_AXI_0_wvalid : IN STD_LOGIC;
      S_AXIS_S2MM_0_tdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      S_AXIS_S2MM_0_tkeep : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      S_AXIS_S2MM_0_tlast : IN STD_LOGIC;
      S_AXIS_S2MM_0_tready : OUT STD_LOGIC;
      S_AXIS_S2MM_0_tuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      S_AXIS_S2MM_0_tvalid : IN STD_LOGIC;
      cam_d1_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cam_d_0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cam_href1_0 : IN STD_LOGIC;
      cam_href_0 : IN STD_LOGIC;
      cam_pclk1_0 : IN STD_LOGIC;
      cam_pclk_0 : IN STD_LOGIC;
      cam_pdwn_0 : OUT STD_LOGIC;
      cam_rst_0 : OUT STD_LOGIC;
      cam_trigger1_0 : OUT STD_LOGIC;
      cam_trigger_0 : OUT STD_LOGIC;
      cam_vsync1_0 : IN STD_LOGIC;
      cam_vsync_0 : IN STD_LOGIC;
      cam_xclk_0 : OUT STD_LOGIC;
      irq_0 : OUT STD_LOGIC;
      peripheral_aresetn_0 : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      resetn_0 : IN STD_LOGIC;
      s_axi_aclk_0 : IN STD_LOGIC
    );
  END COMPONENT cameras_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_cameras_wrapper_0_0_arch: ARCHITECTURE IS "cameras_wrapper,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_cameras_wrapper_0_0_arch : ARCHITECTURE IS "design_1_cameras_wrapper_0_0,cameras_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_cameras_wrapper_0_0_arch: ARCHITECTURE IS "design_1_cameras_wrapper_0_0,cameras_wrapper,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=cameras_wrapper,x_ipVersion=1.0,x_ipCoreRevision=10,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_cameras_wrapper_0_0_arch: ARCHITECTURE IS "package_project";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_aclk_0: SIGNAL IS "XIL_INTERFACENAME s_axi_aclk_0, ASSOCIATED_BUSIF M00_AXIS1_0:S_AXIS_S2MM_0:M00_AXI1_0:M00_AXI_0:M_AXI_S2MM_0:S00_AXI_0, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_aclk_0: SIGNAL IS "xilinx.com:signal:clock:1.0 s_axi_aclk_0 CLK";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S_AXIS_S2MM_0_tdata: SIGNAL IS "XIL_INTERFACENAME S_AXIS_S2MM_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S_AXIS_S2MM_0_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_bid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 BID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arid: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARID";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF S00_AXI_0_araddr: SIGNAL IS "XIL_INTERFACENAME S00_AXI_0, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREA" & 
"DS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF S00_AXI_0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 S00_AXI_0 ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M_AXI_S2MM_0_awaddr: SIGNAL IS "XIL_INTERFACENAME M_AXI_S2MM_0, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THR" & 
"EADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXI_S2MM_0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M_AXI_S2MM_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_wstrb: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_wlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M00_AXI_0_awaddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI_0, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD" & 
"S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI_0_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI_0 AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tuser: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tready: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tlast: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tkeep: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TKEEP";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M00_AXIS1_0_tdata: SIGNAL IS "XIL_INTERFACENAME M00_AXIS1_0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXIS1_0_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 M00_AXIS1_0 TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_rlast: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arsize: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arqos: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arprot: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arlock: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arlen: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arcache: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_arburst: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARBURST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF M00_AXI1_0_araddr: SIGNAL IS "XIL_INTERFACENAME M00_AXI1_0, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREAD" & 
"S 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF M00_AXI1_0_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 M00_AXI1_0 ARADDR";
BEGIN
  U0 : cameras_wrapper
    PORT MAP (
      M00_AXI1_0_araddr => M00_AXI1_0_araddr,
      M00_AXI1_0_arburst => M00_AXI1_0_arburst,
      M00_AXI1_0_arcache => M00_AXI1_0_arcache,
      M00_AXI1_0_arlen => M00_AXI1_0_arlen,
      M00_AXI1_0_arlock => M00_AXI1_0_arlock,
      M00_AXI1_0_arprot => M00_AXI1_0_arprot,
      M00_AXI1_0_arqos => M00_AXI1_0_arqos,
      M00_AXI1_0_arready => M00_AXI1_0_arready,
      M00_AXI1_0_arsize => M00_AXI1_0_arsize,
      M00_AXI1_0_arvalid => M00_AXI1_0_arvalid,
      M00_AXI1_0_rdata => M00_AXI1_0_rdata,
      M00_AXI1_0_rlast => M00_AXI1_0_rlast,
      M00_AXI1_0_rready => M00_AXI1_0_rready,
      M00_AXI1_0_rresp => M00_AXI1_0_rresp,
      M00_AXI1_0_rvalid => M00_AXI1_0_rvalid,
      M00_AXIS1_0_tdata => M00_AXIS1_0_tdata,
      M00_AXIS1_0_tkeep => M00_AXIS1_0_tkeep,
      M00_AXIS1_0_tlast => M00_AXIS1_0_tlast,
      M00_AXIS1_0_tready => M00_AXIS1_0_tready,
      M00_AXIS1_0_tuser => M00_AXIS1_0_tuser,
      M00_AXIS1_0_tvalid => M00_AXIS1_0_tvalid,
      M00_AXI_0_awaddr => M00_AXI_0_awaddr,
      M00_AXI_0_awburst => M00_AXI_0_awburst,
      M00_AXI_0_awcache => M00_AXI_0_awcache,
      M00_AXI_0_awlen => M00_AXI_0_awlen,
      M00_AXI_0_awlock => M00_AXI_0_awlock,
      M00_AXI_0_awprot => M00_AXI_0_awprot,
      M00_AXI_0_awqos => M00_AXI_0_awqos,
      M00_AXI_0_awready => M00_AXI_0_awready,
      M00_AXI_0_awsize => M00_AXI_0_awsize,
      M00_AXI_0_awvalid => M00_AXI_0_awvalid,
      M00_AXI_0_bready => M00_AXI_0_bready,
      M00_AXI_0_bresp => M00_AXI_0_bresp,
      M00_AXI_0_bvalid => M00_AXI_0_bvalid,
      M00_AXI_0_wdata => M00_AXI_0_wdata,
      M00_AXI_0_wlast => M00_AXI_0_wlast,
      M00_AXI_0_wready => M00_AXI_0_wready,
      M00_AXI_0_wstrb => M00_AXI_0_wstrb,
      M00_AXI_0_wvalid => M00_AXI_0_wvalid,
      M_AXI_S2MM_0_awaddr => M_AXI_S2MM_0_awaddr,
      M_AXI_S2MM_0_awburst => M_AXI_S2MM_0_awburst,
      M_AXI_S2MM_0_awcache => M_AXI_S2MM_0_awcache,
      M_AXI_S2MM_0_awlen => M_AXI_S2MM_0_awlen,
      M_AXI_S2MM_0_awlock => M_AXI_S2MM_0_awlock,
      M_AXI_S2MM_0_awprot => M_AXI_S2MM_0_awprot,
      M_AXI_S2MM_0_awqos => M_AXI_S2MM_0_awqos,
      M_AXI_S2MM_0_awready => M_AXI_S2MM_0_awready,
      M_AXI_S2MM_0_awsize => M_AXI_S2MM_0_awsize,
      M_AXI_S2MM_0_awvalid => M_AXI_S2MM_0_awvalid,
      M_AXI_S2MM_0_bready => M_AXI_S2MM_0_bready,
      M_AXI_S2MM_0_bresp => M_AXI_S2MM_0_bresp,
      M_AXI_S2MM_0_bvalid => M_AXI_S2MM_0_bvalid,
      M_AXI_S2MM_0_wdata => M_AXI_S2MM_0_wdata,
      M_AXI_S2MM_0_wlast => M_AXI_S2MM_0_wlast,
      M_AXI_S2MM_0_wready => M_AXI_S2MM_0_wready,
      M_AXI_S2MM_0_wstrb => M_AXI_S2MM_0_wstrb,
      M_AXI_S2MM_0_wvalid => M_AXI_S2MM_0_wvalid,
      S00_AXI_0_araddr => S00_AXI_0_araddr,
      S00_AXI_0_arburst => S00_AXI_0_arburst,
      S00_AXI_0_arcache => S00_AXI_0_arcache,
      S00_AXI_0_arid => S00_AXI_0_arid,
      S00_AXI_0_arlen => S00_AXI_0_arlen,
      S00_AXI_0_arlock => S00_AXI_0_arlock,
      S00_AXI_0_arprot => S00_AXI_0_arprot,
      S00_AXI_0_arqos => S00_AXI_0_arqos,
      S00_AXI_0_arready => S00_AXI_0_arready,
      S00_AXI_0_arsize => S00_AXI_0_arsize,
      S00_AXI_0_arvalid => S00_AXI_0_arvalid,
      S00_AXI_0_awaddr => S00_AXI_0_awaddr,
      S00_AXI_0_awburst => S00_AXI_0_awburst,
      S00_AXI_0_awcache => S00_AXI_0_awcache,
      S00_AXI_0_awid => S00_AXI_0_awid,
      S00_AXI_0_awlen => S00_AXI_0_awlen,
      S00_AXI_0_awlock => S00_AXI_0_awlock,
      S00_AXI_0_awprot => S00_AXI_0_awprot,
      S00_AXI_0_awqos => S00_AXI_0_awqos,
      S00_AXI_0_awready => S00_AXI_0_awready,
      S00_AXI_0_awsize => S00_AXI_0_awsize,
      S00_AXI_0_awvalid => S00_AXI_0_awvalid,
      S00_AXI_0_bid => S00_AXI_0_bid,
      S00_AXI_0_bready => S00_AXI_0_bready,
      S00_AXI_0_bresp => S00_AXI_0_bresp,
      S00_AXI_0_bvalid => S00_AXI_0_bvalid,
      S00_AXI_0_rdata => S00_AXI_0_rdata,
      S00_AXI_0_rid => S00_AXI_0_rid,
      S00_AXI_0_rlast => S00_AXI_0_rlast,
      S00_AXI_0_rready => S00_AXI_0_rready,
      S00_AXI_0_rresp => S00_AXI_0_rresp,
      S00_AXI_0_rvalid => S00_AXI_0_rvalid,
      S00_AXI_0_wdata => S00_AXI_0_wdata,
      S00_AXI_0_wid => S00_AXI_0_wid,
      S00_AXI_0_wlast => S00_AXI_0_wlast,
      S00_AXI_0_wready => S00_AXI_0_wready,
      S00_AXI_0_wstrb => S00_AXI_0_wstrb,
      S00_AXI_0_wvalid => S00_AXI_0_wvalid,
      S_AXIS_S2MM_0_tdata => S_AXIS_S2MM_0_tdata,
      S_AXIS_S2MM_0_tkeep => S_AXIS_S2MM_0_tkeep,
      S_AXIS_S2MM_0_tlast => S_AXIS_S2MM_0_tlast,
      S_AXIS_S2MM_0_tready => S_AXIS_S2MM_0_tready,
      S_AXIS_S2MM_0_tuser => S_AXIS_S2MM_0_tuser,
      S_AXIS_S2MM_0_tvalid => S_AXIS_S2MM_0_tvalid,
      cam_d1_0 => cam_d1_0,
      cam_d_0 => cam_d_0,
      cam_href1_0 => cam_href1_0,
      cam_href_0 => cam_href_0,
      cam_pclk1_0 => cam_pclk1_0,
      cam_pclk_0 => cam_pclk_0,
      cam_pdwn_0 => cam_pdwn_0,
      cam_rst_0 => cam_rst_0,
      cam_trigger1_0 => cam_trigger1_0,
      cam_trigger_0 => cam_trigger_0,
      cam_vsync1_0 => cam_vsync1_0,
      cam_vsync_0 => cam_vsync_0,
      cam_xclk_0 => cam_xclk_0,
      irq_0 => irq_0,
      peripheral_aresetn_0 => peripheral_aresetn_0,
      resetn_0 => resetn_0,
      s_axi_aclk_0 => s_axi_aclk_0
    );
END design_1_cameras_wrapper_0_0_arch;
