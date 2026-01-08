// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:test_6:1.0
// IP Revision: 11

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_test_6_0_0 (
  bram1_dout_b,
  bram2_dout_b,
  bram_addr_b,
  bram_en_b,
  start_solving,
  state,
  solution,
  steps,
  clause_counter,
  clause_counter_total,
  start,
  done,
  check,
  check_out,
  check_clauses,
  valid_in_1,
  check_v_new,
  check_x_new,
  valid_out_s1,
  valid_out_s2,
  valid_out_s3,
  valid_out_q5,
  valid_out_q8,
  valid_out_q16,
  valid_out_s5,
  valid_out_s6,
  valid_out_q6,
  valid_out_q20,
  valid_out_s7,
  valid_out_s8,
  valid_out_s9,
  valid_out_s10,
  valid_out_s11,
  valid_out_s12,
  valid_out_s13,
  valid_out_s14,
  valid_out_s15,
  valid_out_s16,
  valid_out_s17,
  valid_out_s18,
  valid_out_s19,
  valid_out_s20,
  valid_out_s21,
  valid_out_s22,
  valid_out_s26,
  valid_out_s27,
  valid_out_s28,
  valid_out_v_new,
  v1_index,
  v2_index,
  v3_index,
  v1_sign,
  v2_sign,
  v3_sign,
  C_m,
  G_n_1,
  G_n_2,
  G_n_3,
  R_n,
  G_n_2_full_2,
  G_n_3_full_2,
  G_R_1_full_2,
  max_v_index_1,
  max_v_index_2,
  max_v_index_3,
  test_v_1,
  test_v_2,
  test_v_3,
  test_v_4,
  test_v_5,
  test_v_1_new,
  test_v_2_new,
  test_v_3_new,
  test_v_4_new,
  test_v_5_new,
  test_v_1_new_tmp,
  test_v_2_new_tmp,
  test_v_3_new_tmp,
  test_v_4_new_tmp,
  test_v_5_new_tmp,
  test_current_x_l,
  test_current_x_s,
  funct_x_l,
  funct_x_s,
  euler_x_l,
  euler_x_s,
  new_x_l,
  new_x_s,
  all_full_Gs_1,
  all_full_Gs_2,
  all_full_Gs_3,
  all_full_Gs_4,
  all_full_Gs_5,
  all_full_Gs_last,
  all_full_Gs_second_last,
  all_full_G_R_temp,
  all_full_Gs_temp_2,
  all_full_Gs_temp_3,
  all_full_Gs_tmp,
  test_v_new_tmp,
  test_v_tmp,
  qwe1,
  qwe2,
  qwe3,
  qwe4,
  qwe5,
  qwe6,
  qwe7,
  qwe8,
  qwe9,
  qwe10,
  s00_axi_aclk,
  s00_axi_aresetn,
  s00_axi_awaddr,
  s00_axi_awprot,
  s00_axi_awvalid,
  s00_axi_awready,
  s00_axi_wdata,
  s00_axi_wstrb,
  s00_axi_wvalid,
  s00_axi_wready,
  s00_axi_bresp,
  s00_axi_bvalid,
  s00_axi_bready,
  s00_axi_araddr,
  s00_axi_arprot,
  s00_axi_arvalid,
  s00_axi_arready,
  s00_axi_rdata,
  s00_axi_rresp,
  s00_axi_rvalid,
  s00_axi_rready
);

input wire [31 : 0] bram1_dout_b;
input wire [31 : 0] bram2_dout_b;
output wire [31 : 0] bram_addr_b;
output wire bram_en_b;
output wire start_solving;
output wire [2 : 0] state;
output wire [4 : 0] solution;
output wire [31 : 0] steps;
output wire [31 : 0] clause_counter;
output wire [31 : 0] clause_counter_total;
output wire start;
output wire done;
output wire check;
output wire [31 : 0] check_out;
output wire check_clauses;
output wire valid_in_1;
output wire check_v_new;
output wire check_x_new;
output wire valid_out_s1;
output wire valid_out_s2;
output wire valid_out_s3;
output wire valid_out_q5;
output wire valid_out_q8;
output wire valid_out_q16;
output wire valid_out_s5;
output wire valid_out_s6;
output wire valid_out_q6;
output wire valid_out_q20;
output wire valid_out_s7;
output wire valid_out_s8;
output wire valid_out_s9;
output wire valid_out_s10;
output wire valid_out_s11;
output wire valid_out_s12;
output wire valid_out_s13;
output wire valid_out_s14;
output wire valid_out_s15;
output wire valid_out_s16;
output wire valid_out_s17;
output wire valid_out_s18;
output wire valid_out_s19;
output wire valid_out_s20;
output wire valid_out_s21;
output wire valid_out_s22;
output wire valid_out_s26;
output wire valid_out_s27;
output wire valid_out_s28;
output wire valid_out_v_new;
output wire [15 : 0] v1_index;
output wire [15 : 0] v2_index;
output wire [15 : 0] v3_index;
output wire v1_sign;
output wire v2_sign;
output wire v3_sign;
output wire [15 : 0] C_m;
output wire [15 : 0] G_n_1;
output wire [15 : 0] G_n_2;
output wire [15 : 0] G_n_3;
output wire [15 : 0] R_n;
output wire [15 : 0] G_n_2_full_2;
output wire [15 : 0] G_n_3_full_2;
output wire [15 : 0] G_R_1_full_2;
output wire [15 : 0] max_v_index_1;
output wire [15 : 0] max_v_index_2;
output wire [15 : 0] max_v_index_3;
output wire [15 : 0] test_v_1;
output wire [15 : 0] test_v_2;
output wire [15 : 0] test_v_3;
output wire [15 : 0] test_v_4;
output wire [15 : 0] test_v_5;
output wire [15 : 0] test_v_1_new;
output wire [15 : 0] test_v_2_new;
output wire [15 : 0] test_v_3_new;
output wire [15 : 0] test_v_4_new;
output wire [15 : 0] test_v_5_new;
output wire [15 : 0] test_v_1_new_tmp;
output wire [15 : 0] test_v_2_new_tmp;
output wire [15 : 0] test_v_3_new_tmp;
output wire [15 : 0] test_v_4_new_tmp;
output wire [15 : 0] test_v_5_new_tmp;
output wire [15 : 0] test_current_x_l;
output wire [15 : 0] test_current_x_s;
output wire [15 : 0] funct_x_l;
output wire [15 : 0] funct_x_s;
output wire [15 : 0] euler_x_l;
output wire [15 : 0] euler_x_s;
output wire [15 : 0] new_x_l;
output wire [15 : 0] new_x_s;
output wire [15 : 0] all_full_Gs_1;
output wire [15 : 0] all_full_Gs_2;
output wire [15 : 0] all_full_Gs_3;
output wire [15 : 0] all_full_Gs_4;
output wire [15 : 0] all_full_Gs_5;
output wire [15 : 0] all_full_Gs_last;
output wire [15 : 0] all_full_Gs_second_last;
output wire [15 : 0] all_full_G_R_temp;
output wire [15 : 0] all_full_Gs_temp_2;
output wire [15 : 0] all_full_Gs_temp_3;
output wire [15 : 0] all_full_Gs_tmp;
output wire [15 : 0] test_v_new_tmp;
output wire [15 : 0] test_v_tmp;
output wire [15 : 0] qwe1;
output wire [15 : 0] qwe2;
output wire [15 : 0] qwe3;
output wire [15 : 0] qwe4;
output wire [15 : 0] qwe5;
output wire [15 : 0] qwe6;
output wire [15 : 0] qwe7;
output wire [15 : 0] qwe8;
output wire [15 : 0] qwe9;
output wire [15 : 0] qwe10;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 80000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *)
input wire s00_axi_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *)
input wire s00_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *)
input wire [5 : 0] s00_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *)
input wire [2 : 0] s00_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *)
input wire s00_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *)
output wire s00_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *)
input wire [31 : 0] s00_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *)
input wire [3 : 0] s00_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *)
input wire s00_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *)
output wire s00_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *)
output wire [1 : 0] s00_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *)
output wire s00_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *)
input wire s00_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *)
input wire [5 : 0] s00_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *)
input wire [2 : 0] s00_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *)
input wire s00_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *)
output wire s00_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *)
output wire [31 : 0] s00_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *)
output wire [1 : 0] s00_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *)
output wire s00_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 10, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 80000000, ID_WIDTH 0, ADDR_WIDTH 6, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_\
READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *)
input wire s00_axi_rready;

  test_6_v1_0 #(
    .C_S00_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_S00_AXI_ADDR_WIDTH(6)  // Width of S_AXI address bus
  ) inst (
    .bram1_dout_b(bram1_dout_b),
    .bram2_dout_b(bram2_dout_b),
    .bram_addr_b(bram_addr_b),
    .bram_en_b(bram_en_b),
    .start_solving(start_solving),
    .state(state),
    .solution(solution),
    .steps(steps),
    .clause_counter(clause_counter),
    .clause_counter_total(clause_counter_total),
    .start(start),
    .done(done),
    .check(check),
    .check_out(check_out),
    .check_clauses(check_clauses),
    .valid_in_1(valid_in_1),
    .check_v_new(check_v_new),
    .check_x_new(check_x_new),
    .valid_out_s1(valid_out_s1),
    .valid_out_s2(valid_out_s2),
    .valid_out_s3(valid_out_s3),
    .valid_out_q5(valid_out_q5),
    .valid_out_q8(valid_out_q8),
    .valid_out_q16(valid_out_q16),
    .valid_out_s5(valid_out_s5),
    .valid_out_s6(valid_out_s6),
    .valid_out_q6(valid_out_q6),
    .valid_out_q20(valid_out_q20),
    .valid_out_s7(valid_out_s7),
    .valid_out_s8(valid_out_s8),
    .valid_out_s9(valid_out_s9),
    .valid_out_s10(valid_out_s10),
    .valid_out_s11(valid_out_s11),
    .valid_out_s12(valid_out_s12),
    .valid_out_s13(valid_out_s13),
    .valid_out_s14(valid_out_s14),
    .valid_out_s15(valid_out_s15),
    .valid_out_s16(valid_out_s16),
    .valid_out_s17(valid_out_s17),
    .valid_out_s18(valid_out_s18),
    .valid_out_s19(valid_out_s19),
    .valid_out_s20(valid_out_s20),
    .valid_out_s21(valid_out_s21),
    .valid_out_s22(valid_out_s22),
    .valid_out_s26(valid_out_s26),
    .valid_out_s27(valid_out_s27),
    .valid_out_s28(valid_out_s28),
    .valid_out_v_new(valid_out_v_new),
    .v1_index(v1_index),
    .v2_index(v2_index),
    .v3_index(v3_index),
    .v1_sign(v1_sign),
    .v2_sign(v2_sign),
    .v3_sign(v3_sign),
    .C_m(C_m),
    .G_n_1(G_n_1),
    .G_n_2(G_n_2),
    .G_n_3(G_n_3),
    .R_n(R_n),
    .G_n_2_full_2(G_n_2_full_2),
    .G_n_3_full_2(G_n_3_full_2),
    .G_R_1_full_2(G_R_1_full_2),
    .max_v_index_1(max_v_index_1),
    .max_v_index_2(max_v_index_2),
    .max_v_index_3(max_v_index_3),
    .test_v_1(test_v_1),
    .test_v_2(test_v_2),
    .test_v_3(test_v_3),
    .test_v_4(test_v_4),
    .test_v_5(test_v_5),
    .test_v_1_new(test_v_1_new),
    .test_v_2_new(test_v_2_new),
    .test_v_3_new(test_v_3_new),
    .test_v_4_new(test_v_4_new),
    .test_v_5_new(test_v_5_new),
    .test_v_1_new_tmp(test_v_1_new_tmp),
    .test_v_2_new_tmp(test_v_2_new_tmp),
    .test_v_3_new_tmp(test_v_3_new_tmp),
    .test_v_4_new_tmp(test_v_4_new_tmp),
    .test_v_5_new_tmp(test_v_5_new_tmp),
    .test_current_x_l(test_current_x_l),
    .test_current_x_s(test_current_x_s),
    .funct_x_l(funct_x_l),
    .funct_x_s(funct_x_s),
    .euler_x_l(euler_x_l),
    .euler_x_s(euler_x_s),
    .new_x_l(new_x_l),
    .new_x_s(new_x_s),
    .all_full_Gs_1(all_full_Gs_1),
    .all_full_Gs_2(all_full_Gs_2),
    .all_full_Gs_3(all_full_Gs_3),
    .all_full_Gs_4(all_full_Gs_4),
    .all_full_Gs_5(all_full_Gs_5),
    .all_full_Gs_last(all_full_Gs_last),
    .all_full_Gs_second_last(all_full_Gs_second_last),
    .all_full_G_R_temp(all_full_G_R_temp),
    .all_full_Gs_temp_2(all_full_Gs_temp_2),
    .all_full_Gs_temp_3(all_full_Gs_temp_3),
    .all_full_Gs_tmp(all_full_Gs_tmp),
    .test_v_new_tmp(test_v_new_tmp),
    .test_v_tmp(test_v_tmp),
    .qwe1(qwe1),
    .qwe2(qwe2),
    .qwe3(qwe3),
    .qwe4(qwe4),
    .qwe5(qwe5),
    .qwe6(qwe6),
    .qwe7(qwe7),
    .qwe8(qwe8),
    .qwe9(qwe9),
    .qwe10(qwe10),
    .s00_axi_aclk(s00_axi_aclk),
    .s00_axi_aresetn(s00_axi_aresetn),
    .s00_axi_awaddr(s00_axi_awaddr),
    .s00_axi_awprot(s00_axi_awprot),
    .s00_axi_awvalid(s00_axi_awvalid),
    .s00_axi_awready(s00_axi_awready),
    .s00_axi_wdata(s00_axi_wdata),
    .s00_axi_wstrb(s00_axi_wstrb),
    .s00_axi_wvalid(s00_axi_wvalid),
    .s00_axi_wready(s00_axi_wready),
    .s00_axi_bresp(s00_axi_bresp),
    .s00_axi_bvalid(s00_axi_bvalid),
    .s00_axi_bready(s00_axi_bready),
    .s00_axi_araddr(s00_axi_araddr),
    .s00_axi_arprot(s00_axi_arprot),
    .s00_axi_arvalid(s00_axi_arvalid),
    .s00_axi_arready(s00_axi_arready),
    .s00_axi_rdata(s00_axi_rdata),
    .s00_axi_rresp(s00_axi_rresp),
    .s00_axi_rvalid(s00_axi_rvalid),
    .s00_axi_rready(s00_axi_rready)
  );
endmodule
