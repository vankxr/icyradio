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

#ifndef _SIMHBMX_H_
#define _SIMHBMX_H_

#include "xtlm.h"
#include <list>

#include "axi_bram_memory_imp.h"
#include "utils/xtlm_aximm_target_stub.h"
#include "utils/xsc_stub_port.h"

class axi_bram_ctrl: public sc_core::sc_module {
public:
	axi_bram_ctrl(const sc_module_name&  module_name,xsc::common_cpp::properties&);
	virtual ~axi_bram_ctrl();
	SC_HAS_PROCESS(axi_bram_ctrl);
	//Slave interface used to R/W to HBM Memory
	xtlm::xtlm_aximm_target_socket*    target_0_rd_socket;
	xtlm::xtlm_aximm_target_socket*    target_0_wr_socket;
  xtlm::xtlm_aximm_target_socket*    s_axi_ctrl_target_rd_socket;
	xtlm::xtlm_aximm_target_socket*    s_axi_ctrl_target_wr_socket;
  std::vector<xtlm::xtlm_aximm_target_stub*> stubInitSkt;
  void clock_finder();
	sc_in<bool>                        s_axi_aclk;
	sc_in<bool>                        s_axi_aresetn;
  xsc::utils::xsc_stub_port ecc_interrupt;
  xsc::utils::xsc_stub_port ecc_ue;  
  xsc::utils::xsc_stub_port bram_rst_a;
  xsc::utils::xsc_stub_port bram_clk_a;
  xsc::utils::xsc_stub_port bram_en_a;
  xsc::utils::xsc_stub_port bram_we_a;
  xsc::utils::xsc_stub_port bram_addr_a;
  xsc::utils::xsc_stub_port bram_wrdata_a;
  xsc::utils::xsc_stub_port bram_rddata_a;
  xsc::utils::xsc_stub_port bram_rst_b;
  xsc::utils::xsc_stub_port bram_clk_b;
  xsc::utils::xsc_stub_port bram_en_b;
  xsc::utils::xsc_stub_port bram_we_b;
  xsc::utils::xsc_stub_port bram_addr_b;
  xsc::utils::xsc_stub_port bram_wrdata_b;
  xsc::utils::xsc_stub_port bram_rddata_b;
  sc_core::sc_signal<bool>bram_rst_b1;
  sc_core::sc_signal<bool>bram_clk_b1;
  sc_core::sc_signal<bool>bram_en_b1;
  sc_core::sc_signal<bool>bram_we_b1;
  sc_core::sc_signal<bool>bram_addr_b1;
  sc_core::sc_signal<bool>bram_wrdata_b1;
  sc_core::sc_signal<bool>bram_rddata_b1;

 
private :
	axi_bram_memory_imp* m_imp;
};

#endif /* _SIMHBMX_H_ */
