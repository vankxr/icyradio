#ifndef IP_ICYRADIO_AXI_BRAM_CTRL_0_0_H_
#define IP_ICYRADIO_AXI_BRAM_CTRL_0_0_H_

// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
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


#ifndef XTLM
#include "xtlm.h"
#endif
#ifndef SYSTEMC_INCLUDED
#include <systemc>
#endif

#if defined(_MSC_VER)
#define DllExport __declspec(dllexport)
#elif defined(__GNUC__)
#define DllExport __attribute__ ((visibility("default")))
#else
#define DllExport
#endif

#include "icyradio_axi_bram_ctrl_0_0_sc.h"




#ifdef XILINX_SIMULATOR
class DllExport icyradio_axi_bram_ctrl_0_0 : public icyradio_axi_bram_ctrl_0_0_sc
{
public:

  icyradio_axi_bram_ctrl_0_0(const sc_core::sc_module_name& nm);
  virtual ~icyradio_axi_bram_ctrl_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< bool > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_arburst;
  sc_core::sc_in< bool > s_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rlast;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_out< bool > bram_rst_a;
  sc_core::sc_out< bool > bram_clk_a;
  sc_core::sc_out< bool > bram_en_a;
  sc_core::sc_out< sc_dt::sc_bv<8> > bram_we_a;
  sc_core::sc_out< sc_dt::sc_bv<17> > bram_addr_a;
  sc_core::sc_out< sc_dt::sc_bv<64> > bram_wrdata_a;
  sc_core::sc_in< sc_dt::sc_bv<64> > bram_rddata_a;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,17,4,1,1,1,1,1>* mp_S_AXI_transactor;

};
#endif // XILINX_SIMULATOR




#ifdef XM_SYSTEMC
class DllExport icyradio_axi_bram_ctrl_0_0 : public icyradio_axi_bram_ctrl_0_0_sc
{
public:

  icyradio_axi_bram_ctrl_0_0(const sc_core::sc_module_name& nm);
  virtual ~icyradio_axi_bram_ctrl_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< bool > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_arburst;
  sc_core::sc_in< bool > s_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rlast;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_out< bool > bram_rst_a;
  sc_core::sc_out< bool > bram_clk_a;
  sc_core::sc_out< bool > bram_en_a;
  sc_core::sc_out< sc_dt::sc_bv<8> > bram_we_a;
  sc_core::sc_out< sc_dt::sc_bv<17> > bram_addr_a;
  sc_core::sc_out< sc_dt::sc_bv<64> > bram_wrdata_a;
  sc_core::sc_in< sc_dt::sc_bv<64> > bram_rddata_a;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,17,4,1,1,1,1,1>* mp_S_AXI_transactor;

};
#endif // XM_SYSTEMC




#ifdef RIVIERA
class DllExport icyradio_axi_bram_ctrl_0_0 : public icyradio_axi_bram_ctrl_0_0_sc
{
public:

  icyradio_axi_bram_ctrl_0_0(const sc_core::sc_module_name& nm);
  virtual ~icyradio_axi_bram_ctrl_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< bool > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_arburst;
  sc_core::sc_in< bool > s_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rlast;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_out< bool > bram_rst_a;
  sc_core::sc_out< bool > bram_clk_a;
  sc_core::sc_out< bool > bram_en_a;
  sc_core::sc_out< sc_dt::sc_bv<8> > bram_we_a;
  sc_core::sc_out< sc_dt::sc_bv<17> > bram_addr_a;
  sc_core::sc_out< sc_dt::sc_bv<64> > bram_wrdata_a;
  sc_core::sc_in< sc_dt::sc_bv<64> > bram_rddata_a;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,17,4,1,1,1,1,1>* mp_S_AXI_transactor;

};
#endif // RIVIERA




#ifdef VCSSYSTEMC
#include "utils/xtlm_aximm_target_stub.h"

class DllExport icyradio_axi_bram_ctrl_0_0 : public icyradio_axi_bram_ctrl_0_0_sc
{
public:

  icyradio_axi_bram_ctrl_0_0(const sc_core::sc_module_name& nm);
  virtual ~icyradio_axi_bram_ctrl_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< bool > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_arburst;
  sc_core::sc_in< bool > s_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rlast;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_out< bool > bram_rst_a;
  sc_core::sc_out< bool > bram_clk_a;
  sc_core::sc_out< bool > bram_en_a;
  sc_core::sc_out< sc_dt::sc_bv<8> > bram_we_a;
  sc_core::sc_out< sc_dt::sc_bv<17> > bram_addr_a;
  sc_core::sc_out< sc_dt::sc_bv<64> > bram_wrdata_a;
  sc_core::sc_in< sc_dt::sc_bv<64> > bram_rddata_a;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,17,4,1,1,1,1,1>* mp_S_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // VCSSYSTEMC




#ifdef MTI_SYSTEMC
#include "utils/xtlm_aximm_target_stub.h"

class DllExport icyradio_axi_bram_ctrl_0_0 : public icyradio_axi_bram_ctrl_0_0_sc
{
public:

  icyradio_axi_bram_ctrl_0_0(const sc_core::sc_module_name& nm);
  virtual ~icyradio_axi_bram_ctrl_0_0();

  // module pin-to-pin RTL interface

  sc_core::sc_in< bool > s_axi_aclk;
  sc_core::sc_in< bool > s_axi_aresetn;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_awaddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_awlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_awburst;
  sc_core::sc_in< bool > s_axi_awlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_awcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_awprot;
  sc_core::sc_in< bool > s_axi_awvalid;
  sc_core::sc_out< bool > s_axi_awready;
  sc_core::sc_in< sc_dt::sc_bv<64> > s_axi_wdata;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_wstrb;
  sc_core::sc_in< bool > s_axi_wlast;
  sc_core::sc_in< bool > s_axi_wvalid;
  sc_core::sc_out< bool > s_axi_wready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_bid;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_bresp;
  sc_core::sc_out< bool > s_axi_bvalid;
  sc_core::sc_in< bool > s_axi_bready;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arid;
  sc_core::sc_in< sc_dt::sc_bv<17> > s_axi_araddr;
  sc_core::sc_in< sc_dt::sc_bv<8> > s_axi_arlen;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arsize;
  sc_core::sc_in< sc_dt::sc_bv<2> > s_axi_arburst;
  sc_core::sc_in< bool > s_axi_arlock;
  sc_core::sc_in< sc_dt::sc_bv<4> > s_axi_arcache;
  sc_core::sc_in< sc_dt::sc_bv<3> > s_axi_arprot;
  sc_core::sc_in< bool > s_axi_arvalid;
  sc_core::sc_out< bool > s_axi_arready;
  sc_core::sc_out< sc_dt::sc_bv<4> > s_axi_rid;
  sc_core::sc_out< sc_dt::sc_bv<64> > s_axi_rdata;
  sc_core::sc_out< sc_dt::sc_bv<2> > s_axi_rresp;
  sc_core::sc_out< bool > s_axi_rlast;
  sc_core::sc_out< bool > s_axi_rvalid;
  sc_core::sc_in< bool > s_axi_rready;
  sc_core::sc_out< bool > bram_rst_a;
  sc_core::sc_out< bool > bram_clk_a;
  sc_core::sc_out< bool > bram_en_a;
  sc_core::sc_out< sc_dt::sc_bv<8> > bram_we_a;
  sc_core::sc_out< sc_dt::sc_bv<17> > bram_addr_a;
  sc_core::sc_out< sc_dt::sc_bv<64> > bram_wrdata_a;
  sc_core::sc_in< sc_dt::sc_bv<64> > bram_rddata_a;

  // Dummy Signals for IP Ports


protected:

  virtual void before_end_of_elaboration();

private:

  xtlm::xaximm_pin2xtlm_t<64,17,4,1,1,1,1,1>* mp_S_AXI_transactor;

  // Transactor stubs
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_rd_socket_stub;
  xtlm::xtlm_aximm_target_stub * S_AXI_transactor_target_wr_socket_stub;

  // Socket stubs

};
#endif // MTI_SYSTEMC
#endif // IP_ICYRADIO_AXI_BRAM_CTRL_0_0_H_
