// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar  3 09:52:32 2025
// Host        : vitis2 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_58f6_lut_buffer_0_sim_netlist.v
// Design      : bd_58f6_lut_buffer_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu55c-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_58f6_lut_buffer_0,lut_buffer_v2_0_0_lut_buffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "lut_buffer_v2_0_0_lut_buffer,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (tdi_i,
    tms_i,
    tck_i,
    drck_i,
    sel_i,
    shift_i,
    update_i,
    capture_i,
    runtest_i,
    reset_i,
    bscanid_en_i,
    tdo_o,
    tdi_o,
    tms_o,
    tck_o,
    drck_o,
    sel_o,
    shift_o,
    update_o,
    capture_o,
    runtest_o,
    reset_o,
    bscanid_en_o,
    tdo_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDI" *) input tdi_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TMS" *) input tms_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TCK" *) input tck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan DRCK" *) input drck_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SEL" *) input sel_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan SHIFT" *) input shift_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan UPDATE" *) input update_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan CAPTURE" *) input capture_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RUNTEST" *) input runtest_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan RESET" *) input reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan BSCANID_EN" *) input bscanid_en_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 s_bscan TDO" *) output tdo_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDI" *) output tdi_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TMS" *) output tms_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TCK" *) output tck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan DRCK" *) output drck_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SEL" *) output sel_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan SHIFT" *) output shift_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan UPDATE" *) output update_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan CAPTURE" *) output capture_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RUNTEST" *) output runtest_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan RESET" *) output reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan BSCANID_EN" *) output bscanid_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bscan:1.0 m_bscan TDO" *) input tdo_i;

  wire bscanid_en_i;
  wire bscanid_en_o;
  wire capture_i;
  wire capture_o;
  wire drck_i;
  wire drck_o;
  wire reset_i;
  wire reset_o;
  wire runtest_i;
  wire runtest_o;
  wire sel_i;
  wire sel_o;
  wire shift_i;
  wire shift_o;
  wire tck_i;
  wire tck_o;
  wire tdi_i;
  wire tdi_o;
  wire tdo_i;
  wire tdo_o;
  wire tms_i;
  wire tms_o;
  wire update_i;
  wire update_o;
  wire [31:0]NLW_inst_bscanid_o_UNCONNECTED;

  (* C_EN_BSCANID_VEC = "0" *) 
  (* DONT_TOUCH *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_lut_buffer_v2_0_0_lut_buffer inst
       (.bscanid_en_i(bscanid_en_i),
        .bscanid_en_o(bscanid_en_o),
        .bscanid_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bscanid_o(NLW_inst_bscanid_o_UNCONNECTED[31:0]),
        .capture_i(capture_i),
        .capture_o(capture_o),
        .drck_i(drck_i),
        .drck_o(drck_o),
        .reset_i(reset_i),
        .reset_o(reset_o),
        .runtest_i(runtest_i),
        .runtest_o(runtest_o),
        .sel_i(sel_i),
        .sel_o(sel_o),
        .shift_i(shift_i),
        .shift_o(shift_o),
        .tck_i(tck_i),
        .tck_o(tck_o),
        .tdi_i(tdi_i),
        .tdi_o(tdi_o),
        .tdo_i(tdo_i),
        .tdo_o(tdo_o),
        .tms_i(tms_i),
        .tms_o(tms_o),
        .update_i(update_i),
        .update_o(update_o));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Y0xh9134RsBng5etaGXwBVUEA8J2bWMgUTQDTIAitarHeeOiZsCqvqnqSMBLJzSAT8Clo2xSEdDb
f2T0bmuallNuAd4vpVjfpqZxOdLmUV+3X8aXUTr4KkIVjWQBC+K45w+OfnfdElcaUW1WQbp7AvaT
05bjWBH/BdJKBk0Kz8k=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PE7RpcxN5xLwFXFfGeLCerEjPkCaTxfWD0b+oprDoEGqctY+F7Wc4+NqdSUAG4JbLWR/Pc8Mvten
+K5WbuDTljggJrkieJAK3rBOK8BdubtGJNC4uQ5v2trZYixfg4cWld5Z1MOB9aGfI0nF082l9Fc1
oNJFrkGcenyozvDKcCrtwvJaYRweulCV8/ynKznNpn+AvYhnoluR06IxzZXoj14b7IZt4g/2m455
clbUPyf1qLHbJGSK/Rvl0/W7cB5xxs3pM9/5p3UZ1MPFflZOAeCDwlOgzpXGAzfCkl9cSVqnIFFm
Q3cDkAfbRmP4jbDuwO2EbXgpiNcvc0br8gVcbA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
V73a/OJRlITsAnnyOJ7wtYI9yf/7gLrmQAWi1efFadTpN18wAOW5wcGb51JuXb/TOad9XvQaZxoY
I1ZZckK9R3kp0xHb3eRHqTEs38gIdB9DieJsPfcgrAgAh7N3AeXDhRXODyfLCVtmoF6cv0lmGI3F
6gKImN8nvzJnJHdYS0w=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DCcPCQlu9uE6EBAoASplmWq6o/1vaTK24YYikkUnuM7wUc+K6wrTEbkFivj5OqxF/zGGynv+kjob
I28B+W/69av/irvgfSaOkl5CUwgmAnYrJQd5zO7pvvK7YBJ/f93xJ/FmpQTogAblevs7NdJLp3g2
OjMs/8iwMyXJYb2YgHoEFYKN8iqqLfoE1FTy3G1JWKcwGAYvCl6xaaPp+oYT4c7L99IYhk6R8LBP
5s2r5TkwtZsEUda1DuYu5UkWe5K0DyTVUxajXsz/s/xuKDYMlzV72Q6wQBSnBiknt/jnVyDo1tW+
PGq16LOUpjH7iA8esxtuBNSsdeu0hMvHXuCk0Q==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nwGINoKaVugQKTFyoLZc9O4TFbtk1/YjUn+a0zrC86S6J/PE/JSOh+4Yfyc8eQ/WKAw+4uNuqCfu
xMoblhyJX/PlyEcylGam6sg3YG3KUGmi+YfHMkiy5TIq7RfDEHBwm0OHajhuCJo+X/6WxDGrk+PS
JQwDW5IPxNMsoAYvcfcnzoAzaBMZ2IOHG/dpyyZ9tggqfcMqg7t2BLQujqkegYCW4gY5rCPGeljI
4AGn2WPvX+9JN5GQNIRdoRh8Onlhi39C7f6rkpR/zl9AY5kpcq9JW6q9bZNUXWBSnGm4Qz7GqfRv
VWcK4i0ng1C6xuiSkLkN+3y6/j1T30YlwsMfwA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hEsll6mGIaBLE7AxJMVNtolpxRIRkhMsR1xHRjohvcUv4jFzKCjUO8d3wAnCq+Pz8f91PWDGP2f8
vGvDzErKDDVww33sDh+czaUMpdCCZkXt02jx1NfASHgkhqZt48L0UuNktllZas8HQy1w28ioRL/7
3KzyZN4uQ0f8w82zbdxC6U1l1meuVs6Ymk3Nsfmr36ARxpZj/9mbYwpjCUYyUzvUJRzuQfrAg0Ug
NoZDuxYRFYh7nfwlzgujXfMnemYGWwvjSq+iGvBWkCedSDGyNW+1BepcrFfzMd0eKQwmcj8h07J6
R97hYRxcHh/xlYrOs7brn6ldE9gjFrrjzoo8iw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCn+A4p440uf9LYQwYUsNjUDkTOYDGJVSfBa72VZuxFlEtdCBsGMjyJlD71i9wfT+zo8h+uKo5qg
vdv6mNq8TlFLiiopLnEQiAavSCyjdKaqzw8udtBKGsJVh0jvWBiBGYR3s//q93WXtDm9YvhHTdgy
QyzPYSyta3qQBDVoFvr9QDfszU/AgD7tMB34LAvkpr+FTkjoCCJrveOtK2B2WHLDkSZUKkPVQ4z2
NkNE0C0TKTL07EoIHcBpTszfP8fVP255K0UDLBoKbNkya3Q/UqjG6bR9pNXI4n94ocrJxFUkJyc7
WjwNxUjgC0HL2CND2aA9LS0fnSdpZ/JZhvib0Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
eQmhkruRac3U1ERXu1Se13kEfZn5KP07/7J3pWhxX9QDO3A6aHkXHeiaH+qtRq5D2WFtbDCyVd5o
yPb7cQ9Sf2K6uFN+DTniB0oRADGePTdy2g3FHV68hvgIVlFrc9uf2rfs2yWR6pds+LDyYHhnSlEJ
hayggxgMxA41kth5hR2kGSybXpDjpQylauMvP+MetSb/27syf7QWVbXFhfLQE64opyObtme8TiWj
5MsRktemiPbC/x2RmB+ZklSRAvWu35tDO9u3XZ/Kk6WG2Pqj607cIfA/TsqoxZ6522ktimOnveJA
pSE6WUmDIQaOZ6pXjVIv4GEXZX73ZA3wLhRrmL7QxfXqCAeqFjouROHvM8Zv9kOfFGuDEo44JQSg
frNFO+XzslBTB/aplI0UWXL5ak9uQ1BUPtBO7xedGF/B7KKNsOoTml/48MYOaM6/3vjqSeiVUbvK
VVOQg7nBLowDBuFhcmn2RlKHia3ldFgRHkvFeuIJs5w1Ca1q0zuPaDzZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gmsDEPC6u2G9YmnQc+V5rl/+mw4IztZGOLCaixhGfvI1t16GeLgoWqRktnjvSlEQbNzx7qnrDu3r
je4CfK2ZF54ZUMDX1QZd4bL54eK/AB3GiU3wZKUDtd9ZB5j4Oq5zWBU/nuHisg8FDEXkIndNgak5
cWycB82LoueWPC88cLKbbFasGsKFV3+Cn/sQ88RAmKtwlL2bwHvI+udevI4dY8w7//0nMejfXbdJ
QRGDs0h2SxkGs298aaM464WfmgQ63xcJn9AB5LuagH+a7BdhySu3RNfRzgSw5k3AYXJd3Q8Mht1s
ztXL0X+/yquUTzhcMBTfyicvWkiYRw6CxzjnDA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2960)
`pragma protect data_block
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
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
