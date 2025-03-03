// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xfunc.h"

extern XFunc_Config XFunc_ConfigTable[];

#ifdef SDT
XFunc_Config *XFunc_LookupConfig(UINTPTR BaseAddress) {
	XFunc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XFunc_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XFunc_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XFunc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFunc_Initialize(XFunc *InstancePtr, UINTPTR BaseAddress) {
	XFunc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFunc_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFunc_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XFunc_Config *XFunc_LookupConfig(u16 DeviceId) {
	XFunc_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XFUNC_NUM_INSTANCES; Index++) {
		if (XFunc_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XFunc_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XFunc_Initialize(XFunc *InstancePtr, u16 DeviceId) {
	XFunc_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XFunc_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XFunc_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

