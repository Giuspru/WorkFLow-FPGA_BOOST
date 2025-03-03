; ModuleID = '/home/giuspru/HLS/tutorial-2023/a0.alveo_u55c_matrixmult/proj/solution/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<16>" = type { %"struct.ap_int_base<16, true>" }
%"struct.ap_int_base<16, true>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline willreturn
define void @apatb_func_ir(i32 %M, i32 %K, i32 %N, %"struct.ap_int<16>"* noalias nocapture nonnull readonly "maxi" %x, %"struct.ap_int<16>"* noalias nocapture nonnull readonly "maxi" %y, %"struct.ap_int<32>"* noalias nocapture nonnull "maxi" %z) local_unnamed_addr #0 {
entry:
  %x_copy = alloca i16, align 512
  %y_copy = alloca i16, align 512
  %z_copy = alloca i32, align 512
  call fastcc void @copy_in(%"struct.ap_int<16>"* nonnull %x, i16* nonnull align 512 %x_copy, %"struct.ap_int<16>"* nonnull %y, i16* nonnull align 512 %y_copy, %"struct.ap_int<32>"* nonnull %z, i32* nonnull align 512 %z_copy)
  call void @apatb_func_hw(i32 %M, i32 %K, i32 %N, i16* %x_copy, i16* %y_copy, i32* %z_copy)
  call void @copy_back(%"struct.ap_int<16>"* %x, i16* %x_copy, %"struct.ap_int<16>"* %y, i16* %y_copy, %"struct.ap_int<32>"* %z, i32* %z_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_in(%"struct.ap_int<16>"* noalias readonly "unpacked"="0", i16* noalias nocapture align 512 "unpacked"="1.0", %"struct.ap_int<16>"* noalias readonly "unpacked"="2", i16* noalias nocapture align 512 "unpacked"="3.0", %"struct.ap_int<32>"* noalias readonly "unpacked"="4", i32* noalias nocapture align 512 "unpacked"="5.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %1, %"struct.ap_int<16>"* %0)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* align 512 %3, %"struct.ap_int<16>"* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>"(i32* align 512 %5, %"struct.ap_int<32>"* %4)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>"(i32* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<32>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<32>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<32>", %"struct.ap_int<32>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src.0.0.03, align 4
  store i32 %1, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_out(%"struct.ap_int<16>"* noalias "unpacked"="0", i16* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_int<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.16"(%"struct.ap_int<16>"* %0, i16* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.16"(%"struct.ap_int<16>"* %2, i16* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.4"(%"struct.ap_int<32>"* %4, i32* align 512 %5)
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.4"(%"struct.ap_int<32>"* noalias "unpacked"="0" %dst, i32* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<32>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<32>", %"struct.ap_int<32>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i32, i32* %src, align 512
  store i32 %1, i32* %dst.0.0.04, align 4
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>"(i16* noalias nocapture align 512 "unpacked"="0.0" %dst, %"struct.ap_int<16>"* noalias readonly "unpacked"="1" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<16>"* %src, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %src.0.0.03 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %src, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src.0.0.03, align 2
  store i16 %1, i16* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_int<16>.16"(%"struct.ap_int<16>"* noalias "unpacked"="0" %dst, i16* noalias nocapture readonly align 512 "unpacked"="1.0" %src) unnamed_addr #2 {
entry:
  %0 = icmp eq %"struct.ap_int<16>"* %dst, null
  br i1 %0, label %ret, label %copy

copy:                                             ; preds = %entry
  %dst.0.0.04 = getelementptr %"struct.ap_int<16>", %"struct.ap_int<16>"* %dst, i64 0, i32 0, i32 0, i32 0
  %1 = load i16, i16* %src, align 512
  store i16 %1, i16* %dst.0.0.04, align 2
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

declare void @apatb_func_hw(i32, i32, i32, i16*, i16*, i32*)

; Function Attrs: argmemonly noinline norecurse willreturn
define internal fastcc void @copy_back(%"struct.ap_int<16>"* noalias "unpacked"="0", i16* noalias nocapture readonly align 512 "unpacked"="1.0", %"struct.ap_int<16>"* noalias "unpacked"="2", i16* noalias nocapture readonly align 512 "unpacked"="3.0", %"struct.ap_int<32>"* noalias "unpacked"="4", i32* noalias nocapture readonly align 512 "unpacked"="5.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0struct.ap_int<32>.4"(%"struct.ap_int<32>"* %4, i32* align 512 %5)
  ret void
}

define void @func_hw_stub_wrapper(i32, i32, i32, i16*, i16*, i32*) #4 {
entry:
  %6 = alloca %"struct.ap_int<16>"
  %7 = alloca %"struct.ap_int<16>"
  %8 = alloca %"struct.ap_int<32>"
  call void @copy_out(%"struct.ap_int<16>"* %6, i16* %3, %"struct.ap_int<16>"* %7, i16* %4, %"struct.ap_int<32>"* %8, i32* %5)
  call void @func_hw_stub(i32 %0, i32 %1, i32 %2, %"struct.ap_int<16>"* %6, %"struct.ap_int<16>"* %7, %"struct.ap_int<32>"* %8)
  call void @copy_in(%"struct.ap_int<16>"* %6, i16* %3, %"struct.ap_int<16>"* %7, i16* %4, %"struct.ap_int<32>"* %8, i32* %5)
  ret void
}

declare void @func_hw_stub(i32, i32, i32, %"struct.ap_int<16>"*, %"struct.ap_int<16>"*, %"struct.ap_int<32>"*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline willreturn "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse willreturn "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
