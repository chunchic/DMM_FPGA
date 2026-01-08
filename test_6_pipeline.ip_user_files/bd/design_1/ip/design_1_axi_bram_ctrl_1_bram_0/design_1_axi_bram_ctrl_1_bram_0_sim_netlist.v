// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jun 23 10:50:23 2025
// Host        : chunchic-ThinkStation-P910 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/chunchic/Documents/vitis_new_projects/test_6_pipeline/test_6_pipeline.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_1_bram_0/design_1_axi_bram_ctrl_1_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_1_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_1_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_1_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "design_1_axi_bram_ctrl_1_bram_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_1_bram_0_blk_mem_gen_v8_4_6 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 60032)
`pragma protect data_block
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
/8iBOk5C1MTFtss=
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
