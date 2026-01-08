// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Mon Jun 23 10:48:09 2025
// Host        : chunchic-ThinkStation-P910 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_bram_ctrl_0_bram_0 -prefix
//               design_1_axi_bram_ctrl_0_bram_0_ design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
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
  (* C_INIT_FILE = "design_1_axi_bram_ctrl_0_bram_0.mem" *) 
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
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59744)
`pragma protect data_block
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
xqxJuaRb5KY=
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
