// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XFUNC_H
#define XFUNC_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xfunc_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XFunc_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XFunc;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XFunc_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XFunc_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XFunc_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XFunc_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XFunc_Initialize(XFunc *InstancePtr, UINTPTR BaseAddress);
XFunc_Config* XFunc_LookupConfig(UINTPTR BaseAddress);
#else
int XFunc_Initialize(XFunc *InstancePtr, u16 DeviceId);
XFunc_Config* XFunc_LookupConfig(u16 DeviceId);
#endif
int XFunc_CfgInitialize(XFunc *InstancePtr, XFunc_Config *ConfigPtr);
#else
int XFunc_Initialize(XFunc *InstancePtr, const char* InstanceName);
int XFunc_Release(XFunc *InstancePtr);
#endif

void XFunc_Start(XFunc *InstancePtr);
u32 XFunc_IsDone(XFunc *InstancePtr);
u32 XFunc_IsIdle(XFunc *InstancePtr);
u32 XFunc_IsReady(XFunc *InstancePtr);
void XFunc_Continue(XFunc *InstancePtr);
void XFunc_EnableAutoRestart(XFunc *InstancePtr);
void XFunc_DisableAutoRestart(XFunc *InstancePtr);

void XFunc_Set_M(XFunc *InstancePtr, u32 Data);
u32 XFunc_Get_M(XFunc *InstancePtr);
void XFunc_Set_K(XFunc *InstancePtr, u32 Data);
u32 XFunc_Get_K(XFunc *InstancePtr);
void XFunc_Set_N(XFunc *InstancePtr, u32 Data);
u32 XFunc_Get_N(XFunc *InstancePtr);
void XFunc_Set_x(XFunc *InstancePtr, u64 Data);
u64 XFunc_Get_x(XFunc *InstancePtr);
void XFunc_Set_y(XFunc *InstancePtr, u64 Data);
u64 XFunc_Get_y(XFunc *InstancePtr);
void XFunc_Set_z(XFunc *InstancePtr, u64 Data);
u64 XFunc_Get_z(XFunc *InstancePtr);

void XFunc_InterruptGlobalEnable(XFunc *InstancePtr);
void XFunc_InterruptGlobalDisable(XFunc *InstancePtr);
void XFunc_InterruptEnable(XFunc *InstancePtr, u32 Mask);
void XFunc_InterruptDisable(XFunc *InstancePtr, u32 Mask);
void XFunc_InterruptClear(XFunc *InstancePtr, u32 Mask);
u32 XFunc_InterruptGetEnabled(XFunc *InstancePtr);
u32 XFunc_InterruptGetStatus(XFunc *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
