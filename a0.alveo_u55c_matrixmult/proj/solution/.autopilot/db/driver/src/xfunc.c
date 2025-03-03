// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xfunc.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XFunc_CfgInitialize(XFunc *InstancePtr, XFunc_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XFunc_Start(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XFunc_IsDone(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XFunc_IsIdle(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XFunc_IsReady(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XFunc_Continue(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL) & 0x80;
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XFunc_EnableAutoRestart(XFunc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XFunc_DisableAutoRestart(XFunc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_AP_CTRL, 0);
}

void XFunc_Set_M(XFunc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_M_DATA, Data);
}

u32 XFunc_Get_M(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_M_DATA);
    return Data;
}

void XFunc_Set_K(XFunc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_K_DATA, Data);
}

u32 XFunc_Get_K(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_K_DATA);
    return Data;
}

void XFunc_Set_N(XFunc *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_N_DATA, Data);
}

u32 XFunc_Get_N(XFunc *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_N_DATA);
    return Data;
}

void XFunc_Set_x(XFunc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_X_DATA, (u32)(Data));
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XFunc_Get_x(XFunc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_X_DATA);
    Data += (u64)XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XFunc_Set_y(XFunc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Y_DATA, (u32)(Data));
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Y_DATA + 4, (u32)(Data >> 32));
}

u64 XFunc_Get_y(XFunc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Y_DATA);
    Data += (u64)XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Y_DATA + 4) << 32;
    return Data;
}

void XFunc_Set_z(XFunc *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Z_DATA, (u32)(Data));
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Z_DATA + 4, (u32)(Data >> 32));
}

u64 XFunc_Get_z(XFunc *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Z_DATA);
    Data += (u64)XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_Z_DATA + 4) << 32;
    return Data;
}

void XFunc_InterruptGlobalEnable(XFunc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_GIE, 1);
}

void XFunc_InterruptGlobalDisable(XFunc *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_GIE, 0);
}

void XFunc_InterruptEnable(XFunc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_IER);
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_IER, Register | Mask);
}

void XFunc_InterruptDisable(XFunc *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_IER);
    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_IER, Register & (~Mask));
}

void XFunc_InterruptClear(XFunc *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XFunc_WriteReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_ISR, Mask);
}

u32 XFunc_InterruptGetEnabled(XFunc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_IER);
}

u32 XFunc_InterruptGetStatus(XFunc *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XFunc_ReadReg(InstancePtr->Control_BaseAddress, XFUNC_CONTROL_ADDR_ISR);
}

