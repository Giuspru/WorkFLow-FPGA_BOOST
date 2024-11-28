// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of N
//        bit 31~0 - N[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x1c : Data signal of x
//        bit 31~0 - x[63:32] (Read/Write)
// 0x20 : reserved
// 0x24 : Data signal of y
//        bit 31~0 - y[31:0] (Read/Write)
// 0x28 : Data signal of y
//        bit 31~0 - y[63:32] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of z
//        bit 31~0 - z[31:0] (Read/Write)
// 0x34 : Data signal of z
//        bit 31~0 - z[63:32] (Read/Write)
// 0x38 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XFUNC_CONTROL_ADDR_AP_CTRL 0x00
#define XFUNC_CONTROL_ADDR_GIE     0x04
#define XFUNC_CONTROL_ADDR_IER     0x08
#define XFUNC_CONTROL_ADDR_ISR     0x0c
#define XFUNC_CONTROL_ADDR_N_DATA  0x10
#define XFUNC_CONTROL_BITS_N_DATA  32
#define XFUNC_CONTROL_ADDR_X_DATA  0x18
#define XFUNC_CONTROL_BITS_X_DATA  64
#define XFUNC_CONTROL_ADDR_Y_DATA  0x24
#define XFUNC_CONTROL_BITS_Y_DATA  64
#define XFUNC_CONTROL_ADDR_Z_DATA  0x30
#define XFUNC_CONTROL_BITS_Z_DATA  64

