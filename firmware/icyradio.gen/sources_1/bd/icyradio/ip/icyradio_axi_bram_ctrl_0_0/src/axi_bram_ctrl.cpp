// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

#include "axi_bram_ctrl.h"

axi_bram_ctrl::axi_bram_ctrl(const sc_module_name& module_name, xsc::common_cpp::properties& properties) :
	sc_module(module_name) {
	//Get Width from property
	uint64_t data_width=properties.getLongLong("C_S_AXI_DATA_WIDTH");
  uint64_t dual_port=properties.getLongLong("C_SINGLE_PORT_BRAM");
  uint64_t ecc=properties.getLongLong("C_ECC");
  target_0_rd_socket = new xtlm::xtlm_aximm_target_socket("target_0_rd_socket", data_width);
	target_0_wr_socket = new xtlm::xtlm_aximm_target_socket("target_0_wr_socket", data_width);
	m_imp=new axi_bram_memory_imp("impl",properties);
	target_0_rd_socket->bind(*(m_imp->target_0_rd_socket));
	target_0_wr_socket->bind(*(m_imp->target_0_wr_socket));
  if(ecc==1)
  {
    s_axi_ctrl_target_rd_socket = new xtlm::xtlm_aximm_target_socket("target_1_rd_socket", 32);
	  s_axi_ctrl_target_wr_socket = new xtlm::xtlm_aximm_target_socket("target_1_wr_socket", 32);
    auto* stubWr = new xtlm::xtlm_aximm_target_stub("ifWrStubskt0", 32);
    s_axi_ctrl_target_wr_socket->bind(stubWr->target_socket);
    auto* stubRd = new xtlm::xtlm_aximm_target_stub("ifRdStubskt0", 32);
    s_axi_ctrl_target_rd_socket->bind(stubRd->target_socket);
    stubInitSkt.push_back(stubWr);
    stubInitSkt.push_back(stubRd);
  }
  if(dual_port==1)
  {
  bram_rst_b(bram_rst_b1);
  bram_clk_b(bram_clk_b1);
  bram_en_b(bram_en_b1);
  bram_we_b(bram_we_b1); 
  bram_addr_b(bram_addr_b1);
  bram_wrdata_b(bram_wrdata_b1);
  bram_rddata_b(bram_rddata_b1);
  }

  SC_THREAD(clock_finder);
  sensitive<< s_axi_aclk;
  dont_initialize();
  
  }
axi_bram_ctrl::~axi_bram_ctrl() {
	delete target_0_rd_socket;
	delete target_0_wr_socket;
	delete m_imp;
}
void axi_bram_ctrl::clock_finder() {
  sc_time clk1 = sc_time_stamp();
  wait();
  sc_time clk2= sc_time_stamp();
}
