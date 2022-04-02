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

#ifndef __P2P_XTLM_EXTENSION_HH_
#define __P2P_XTLM_EXTENSION_HH_
#include "xtlm.h"

/**
 * XTLM extension to support peer to peer buffer allocation
 * Master requests buffer allocation with a base address and size and slave responds with corresponding
 * mmaped buffer file name
 */
namespace xsc {
namespace extension {
enum TYPE {
ALLOC_BO,
FREE_BO,
IMPORT_BO,
COPY_BO
};

class P2P_XTLM_extension: public xtlm::xtlm_extension<P2P_XTLM_extension> {

  public:
	P2P_XTLM_extension() {
		m_address=0;
		m_size=0;
    m_file_name = "";
		m_resp_valid=false;
		m_resp=false;
    m_type=TYPE::ALLOC_BO;
    m_src_offset = 0;
    m_dst_offset = 0;
	}

	~P2P_XTLM_extension(){}
  xtlm::xtlm_extension_base* clone() const {
		// Must override pure virtual clone method
		P2P_XTLM_extension* t = new P2P_XTLM_extension();
		return t;
	}
	// Must override pure virtual copy_from method
	void copy_from(xtlm::xtlm_extension_base const &ext) {
		m_address     = static_cast<P2P_XTLM_extension const &>(ext).m_address;
		m_size       = static_cast<P2P_XTLM_extension const &>(ext).m_size;
		m_file_name  = static_cast<P2P_XTLM_extension const &>(ext).m_file_name;
		m_resp_valid = static_cast<P2P_XTLM_extension const &>(ext).m_resp_valid;
		m_resp       = static_cast<P2P_XTLM_extension const &>(ext).m_resp;
		m_type       = static_cast<P2P_XTLM_extension const &>(ext).m_type;
		m_src_offset = static_cast<P2P_XTLM_extension const &>(ext).m_src_offset;
		m_dst_offset = static_cast<P2P_XTLM_extension const &>(ext).m_dst_offset;
	}
	
  void setAddress(uint64_t address) { 	m_address = address; }
	uint64_t getAddress()const        {   return m_address; }

  void setSize(uint64_t size) { m_size = size; }
	uint64_t getSize()const { return m_size; }

	void setFileName(std::string file_name) { m_file_name = file_name; }
	const std::string&  getFileName()const { return m_file_name; }

	void setIsResponseValid(bool resp_valid) { m_resp_valid = resp_valid;}
	bool getIsResponseValid() { return m_resp_valid; }

	void setResponse(bool resp){ m_resp = resp;}
	bool getResponse()  const  { return m_resp;}
  
  void setSrcOffset(uint64_t src_offset) { m_src_offset = src_offset; } 
  uint64_t getSrcOffset() const { return m_src_offset; }

  void setDstOffset(uint64_t dst_offset) { m_dst_offset = dst_offset; } 
  uint64_t getDstOffset() const { return m_dst_offset; }

  void setType(TYPE type) { m_type = type; }
  TYPE getType()  const { return m_type;}
	
private :
	uint64_t     m_address;
	uint64_t     m_size;
	std::string  m_file_name;
	bool         m_resp_valid;
	bool         m_resp;
  uint64_t     m_src_offset;
  uint64_t     m_dst_offset;
  TYPE         m_type;
};
}
}
#endif

