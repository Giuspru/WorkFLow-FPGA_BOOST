// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Mon Mar  3 10:06:25 2025
// Host        : vitis2 running 64-bit Ubuntu 20.04.6 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_22c0_gapping_demand_toggle_0_sim_netlist.v
// Design      : bd_22c0_gapping_demand_toggle_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu55c-fsvh2892-2L-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_22c0_gapping_demand_toggle_0,c_counter_binary_v12_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_17,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    CE,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN cd_ctrl_00, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 ce_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME ce_intf, POLARITY ACTIVE_HIGH" *) input CE;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} DATA_WIDTH 1}" *) output [0:0]Q;

  wire CE;
  wire CLK;
  wire [0:0]Q;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_COUNT_BY = "1" *) 
  (* C_COUNT_MODE = "0" *) 
  (* C_COUNT_TO = "1" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "1" *) 
  (* C_HAS_LOAD = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_HAS_THRESH0 = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_LOAD_LOW = "0" *) 
  (* C_RESTRICT_COUNT = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_THRESH0_VALUE = "1" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "1" *) 
  (* C_XDEVICEFAMILY = "virtexuplusHBM" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_17 U0
       (.CE(CE),
        .CLK(CLK),
        .L(1'b0),
        .LOAD(1'b0),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(1'b1));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2336)
`pragma protect data_block
+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
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
eFbqyWxvTxgrA/YtdaoI20/0Oxv6heWR3Rkp9/xOWnvLDdGDhtGJBQqdO4v1RO/kikveHE3JyVBx
OMXM/QBYbcn/QmEMFud4drsy8IbaUwVstP+Mzovw04CY0e6ucHcNG8bkdAhiixaw1DGilwl8tfXo
1/LD/FGivkVY+qD5JIE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qZVOEd9Suj8PFYlAHZ5eNfv9g67bFY/Iau3fGJHFAIz/4EbdSAUDaGh/Aj5F/sayLnlRNhD6w+39
N7ODCROvgCW/DEQMBCPz7kcEchwyjzrqkhJexEv0Dz7kFQn1ftmdbnZ6SxsSg0bAUSqDETfwIrDN
VELNGURpq3DjO751fQLkz152JThZlONrPm6SqH+2yq0k/imlDMyhznvq+Up4EXiczfO25/APInqH
9ImfZSrqCiz3p7BNa9t1DtJtjx4nO4g/3qItwAhtZOzSyNgUZUJkS0OgYwLaNbOAMte1lEZ3aCj/
PtYFcVrRv6BV9zObKm5JRWmYYw/qLDjrN9AsCA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
PTqB7iZsvJeVQbxSYRkkEOB7dur2/Y+zWd7rSI4QgTOZZuY7cx4mymLcNTtY69vWs3+Ir6xtLuRI
kV9wRh0KJKuphJal6eQJChHGu6rp+AHyp8AyhIwGgID1vxyyu7xhU5nl4qM40fYe+ov2uBp5DVP0
GoOHS6Gilji9DRkCQuI=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nl92noyushAx6EnMgw3oSlb0lEtv202gnVMSNN83+NLaV5DJ/HimKQF470dvcnALDIl0xa3e3Dx2
/s2hBMgu9+fSioH4xbMFQTaBWMjBfDKLVgBkEfT5zBbn1LpjuMEnd/TVHxe/dqXJ8Ev1EIyVB5r3
7KAUvfDL8CretmawtvJtixs8bH8vAxLO4BUzVNbXDL44NeL/PffK31PA74odtZbSUGIq+Gf0nEXP
yEajhFawSXpK6M+iRpsuDwKHS/YxQldY5i8FGvVQrcrDBe3XAh+jjvxUqPhZBRChKpDSo0q7V9L4
JAZoQiGn28UrFoWwrxxP1gsv7sPdry3YTRu8DA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
KbhPmoTx5e7VcsW2JDC/J/bcPlnz66gRyRCtg0E0qHv9wqViijoH+owrxv0IWMQoDBsXBaeQm2xz
nHRZDc5s+B+JlzwwZQGB8pQM3sXMmxGcH+jeVqy6X8gKOEQFgnIK2FJlAjHpfO0xmJkl3wxWImNr
ADPNoWEMdruR5ksSgKexng6J3lkv4vPYoEvCF+Jq91pp71EIJgPtwlY833cs1Exi28xe2Qo/nzU7
oEFG5gySNEidQa25q1QrCDnSmj7j5wDJg5xzjXYmwWk9873dPWyEXdpFMqjxovIcyph/uXidS1PQ
XxFetrAMjtseoYWmz4Lm4f+rpe89PGRhWXsiZw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
u7x25sjZWe79yzU52TdAK1EHhzoxhg0OOXYOwTp455Bu78gqkmKRv90VNHoa9foKyQc+Ui9ovV+f
Mu2Crcme1IbP51J6eQdKys/57qJrcFCxGtJs1Tw7KJ7NffFwkytoqR7pgvmtIH6+qncA8b3aZTLq
uwD9bGF9UFZVZ2XBc83+LRU+GZnNMHOa4eegWtueYHh1zUhGju1xbiGWuhliZ58pcNp6gCDiDv+p
GdiwFDT5RDj1bjrkOecRL2fvOdGLrhdqiTh7mvJeDStjjXiovaCdny21gVHf+dzrpyPE2xGgBinA
czj0D2pyt8plttBhpmMBtLm7Yegb1rHiA1UC4Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ax8Nn3y8qIY97tYqs/w6/65Cp2CG+WRyi20ND2JmdKrfZukanonYYzlNsDdtoOeMZdG6gzVR279V
Et2Qz8YBLQmhBZMJ13mNxEOwpSUbc5lUbLJ9CQ+4u6jvStTDzX+odxkCCqHG8GJhSSFPGX+Z3VZc
TdU/OWddzxwk6JO1tiPn+qt2Q8nMj3Ulh7gqAxPMp0gosh6z+Kx5ZXSuVE/EPNyUDXjRSXjnWPwN
NnM94gbzG23dPqFIOG6f2m5ugBmUUghvI75DFpM7vJkXsEWAfZeOV351MLISR26yMaWxONCdGWTQ
DW1hvUkse+kVt5BxF8ft6CnT7VchA/flFKvfPg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
e/Ry1l/vqJFJqrtAPFKKjxxp0MWhiORDa7WOuKdNY7LaztvYcFdzfNmZDmSuTrj2jPF7WDL6uDC8
FMboEovqCHZ9s014f2WS+jYxvraqlkgyGQ1Q7gAZ6yaBsdSi2RgWdbpy++ECpfVjq8/sYcJl+CZl
ZIsOc7C4BTFh3wysjt9r3cLq/k/dOO8xw2ZAarjqRzjr0h9T3TEzowI/jWVIqkEICEpCsA6k6h2U
oRuVQxQmdtSXmU/Zm/g8I4dj6axYw/zYpYJe2v9s4sy3NCBf/p+z3JFoReqcGYtminQ5ba3zzR5v
mVNiXw+YtQVCe0IsGLqjaEBWcXrs5SNFVYKce0xzBupVSQ0hP5cTBMtcToem7n2nM+9LdhZqlPBl
KimcvX+KrlUbox8H49P1OzL0A8+Eterrfdy0jE2DF+YuIuSAnudKM11WtjqK5yq8zJk5JOHQUQZl
qO7dmmZT95FjGPG/jqS+uYlHdZCNNyQ2l2SbVZw7NPkIJGq5bAKeGsSg

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OqTG2QUdaSjYwH6PeUiMov3bCDPXiUvE4U1Z/Vd7xbPVo7tNNwQeTcXKi/ZUR5G1tkEs1OoxIqaH
ytImL/6Ro6liEE5oT3otxdQb1Yz3ukWdnhQpgw3O2DRb5K1R4L7p5QCVIgq+/7f4oNn8VSJ1hT7o
jVMeT5IvgkJXZsqX/2c86iOEUQ/Xha6SVw6W50dS1u8Q/FzR54WBSo0MFMxZWh5Pyf5qnBJKna0d
nVdDHDBFDajINOk8j7Oonu6ynHrhNkyo1IEnNv/ZQPbHo2aynI/MIaO/5etmCQO2m+53okz5H7pu
RWYkE0zXoE1v6jl/QhZyc23SZppXzWGhd1zsRw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
T+LCAutPaCCMxuQxL5wchu00sIL2qV5zRb7Mwx38QZatsa1DyGGXUxIFxKCAcToGhs3mBYEFIxwN
9YoRU3Pbo3+y67wKfda4ddkY9fkPlbLLdT69AZvwnf5aIsVXP0NerDgF0WGDATlgFHyN5tsvlH1t
sD1sr2uIOOE45e2OUFFToSGc76ye9ercO9tVORSXocgkPJaOMzKVSgTwFkOBlFGNREkZ8dxHNNn4
FJbNYN3z8dOi11Gqqlh1TtkoSaTjdRHcfgXfoVPT5+sDhKiGkl1a6z870wtwRIihIKCQSZVEGiTi
ln3TT4EwJ/iYOryUSeZA2g6dR8Iiy4mfdXTBLA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nHCkqQYtnZLb0VuVLLjAcUmmx6fHOxQYDDQwGnOIxUnPO3JzibAImc3ONArsPdUzlL+38qgCe1l5
Qt/VcmS4aTBmuUuKns89SO1zNSTSLIDJtw5plmUTHGXSJ/N+RVWnIJNXufqtdczognCT0YDZvY7M
0FeJhj9khYY+hd2AZIoJHb5nS5UV3qZzNWWHlb2MinYIIFP1brN21FC0KjNc42VtNau9HenIr3fc
WBKgYX5YhFm0f8MOrp+PaV8lB8cqt3tg8SewTuH+ZdjAbmowkQYFVT3wCDJ4gJevy/2mEG9hA78Y
V+I5VVbGIMagbkNyYjTF43nivRxEh/lXTDDlEA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 2832)
`pragma protect data_block
+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
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
