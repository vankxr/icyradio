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

#ifndef _SIM_HBMX_IMP_H_
#define _SIM_HBMX_IMP_H_

#include "xtlm.h"
#include "report_handler.h"
#include <list>
#include "axi_bram_fmodel_base.h"
#include "axi_bram_ram_fmodel.h"
#include "axi_bram_fmodel_shared_memory.h"

class axi_bram_memory_imp: public sc_core::sc_module {
public:
	//Workaround to implement Debug transport
	class target_rd_util;
	class target_wr_util;
	axi_bram_memory_imp(const sc_module_name& module_name,
			xsc::common_cpp::properties&);
	virtual ~axi_bram_memory_imp();SC_HAS_PROCESS(axi_bram_memory_imp);
	//Slave interface used to R/W to HBM Memory
	xtlm::xtlm_aximm_target_socket* target_0_rd_socket;
	xtlm::xtlm_aximm_target_socket* target_0_wr_socket;
private:
	target_rd_util* m_target_0_rd_socket_util;
	target_wr_util* m_target_0_wr_socket_util;
	uint64_t m_mem_addr_width;
	uint64_t m_data_width;
	std::list<xtlm::aximm_payload*> m_rd_req_vec;
	std::list<xtlm::aximm_payload*> m_wr_req_vec;
	std::list<xtlm::aximm_payload*> m_wr_data_vec;
	std::list<xtlm::aximm_payload*> m_wr_resp_vec;
	void methodProcessTransactionRead();
	void methodProcessTransactionWrite();
	xsc::common_cpp::report_handler* m_report_handler;
	axi_bram_fmodel_base* m_mem_handler;
	unsigned int transport_dbg(xtlm::aximm_payload&);
	unsigned int transport_dbg_wr(xtlm::aximm_payload&);
	unsigned int transport_dbg_rd(xtlm::aximm_payload&);
};

#endif /* _SIM_HBMX_IMP_H_ */

