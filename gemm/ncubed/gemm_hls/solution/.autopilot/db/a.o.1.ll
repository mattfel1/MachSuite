; ModuleID = '/local/ssd/home/mattfel/machsuite/gemm/ncubed/gemm_hls/solution/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gemm.str = internal unnamed_addr constant [5 x i8] c"gemm\00" ; [#uses=1 type=[5 x i8]*]
@.str6 = private unnamed_addr constant [4 x i8] c"Mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@.str5 = private unnamed_addr constant [24 x i8] c"?Mul_mult_Region_174519\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"middle\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=10]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @gemm(double* %m1, double* %m2, double* %prod) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @gemm.str) nounwind
  call void @llvm.dbg.value(metadata !{double* %m1}, i64 0, metadata !32), !dbg !33 ; [debug line = 3:19] [debug variable = m1]
  call void @llvm.dbg.value(metadata !{double* %m2}, i64 0, metadata !34), !dbg !35 ; [debug line = 3:37] [debug variable = m2]
  call void @llvm.dbg.value(metadata !{double* %prod}, i64 0, metadata !36), !dbg !37 ; [debug line = 3:55] [debug variable = prod]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %prod, i32 4096) nounwind, !dbg !38 ; [debug line = 3:69]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %m1, i32 4096) nounwind, !dbg !40 ; [debug line = 3:104]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %m2, i32 4096) nounwind, !dbg !41 ; [debug line = 3:137]
  br label %1, !dbg !42                           ; [debug line = 8:15]

; <label>:1                                       ; preds = %8, %0
  %i = phi i32 [ 0, %0 ], [ %i.1, %8 ]            ; [#uses=3 type=i32]
  %exitcond2 = icmp eq i32 %i, 64, !dbg !42       ; [#uses=1 type=i1] [debug line = 8:15]
  br i1 %exitcond2, label %9, label %2, !dbg !42  ; [debug line = 8:15]

; <label>:2                                       ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !44 ; [debug line = 8:30]
  %rbegin9 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !44 ; [#uses=1 type=i32] [debug line = 8:30]
  %i_col = shl nsw i32 %i, 6, !dbg !46            ; [#uses=2 type=i32] [debug line = 10:13]
  br label %3, !dbg !49                           ; [debug line = 9:20]

; <label>:3                                       ; preds = %7, %2
  %j = phi i32 [ 0, %2 ], [ %j.1, %7 ]            ; [#uses=4 type=i32]
  %exitcond1 = icmp eq i32 %j, 64, !dbg !49       ; [#uses=1 type=i1] [debug line = 9:20]
  br i1 %exitcond1, label %8, label %4, !dbg !49  ; [debug line = 9:20]

; <label>:4                                       ; preds = %3
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !50 ; [debug line = 9:35]
  %rbegin7 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !50 ; [#uses=1 type=i32] [debug line = 9:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !51 ; [debug line = 10:1]
  call void @llvm.dbg.value(metadata !{i32 %i_col}, i64 0, metadata !52), !dbg !46 ; [debug line = 10:13] [debug variable = i_col]
  br label %5, !dbg !53                           ; [debug line = 12:23]

; <label>:5                                       ; preds = %6, %4
  %k = phi i32 [ 0, %4 ], [ %k.1, %6 ]            ; [#uses=4 type=i32]
  %sum = phi double [ 0.000000e+00, %4 ], [ %sum.1, %6 ] ; [#uses=2 type=double]
  %exitcond = icmp eq i32 %k, 64, !dbg !53        ; [#uses=1 type=i1] [debug line = 12:23]
  br i1 %exitcond, label %7, label %6, !dbg !53   ; [debug line = 12:23]

; <label>:6                                       ; preds = %5
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !55 ; [debug line = 12:38]
  %rbegin5 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0)) nounwind, !dbg !55 ; [#uses=1 type=i32] [debug line = 12:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !57 ; [debug line = 13:1]
  %k_col = mul i32 %k, 64, !dbg !58               ; [#uses=1 type=i32] [debug line = 13:17]
  call void @llvm.dbg.value(metadata !{i32 %k_col}, i64 0, metadata !59), !dbg !58 ; [debug line = 13:17] [debug variable = k_col]
  %rbegin3 = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0)) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 14:18]
  %rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0)) nounwind, !dbg !60 ; [#uses=1 type=i32] [debug line = 14:18]
  %tmp.3 = add nsw i32 %k, %i_col, !dbg !62       ; [#uses=1 type=i32] [debug line = 15:1]
  %tmp.4 = sext i32 %tmp.3 to i64, !dbg !62       ; [#uses=1 type=i64] [debug line = 15:1]
  %m1.addr = getelementptr inbounds double* %m1, i64 %tmp.4, !dbg !62 ; [#uses=1 type=double*] [debug line = 15:1]
  %m1.load = load double* %m1.addr, align 8, !dbg !62 ; [#uses=2 type=double] [debug line = 15:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %m1.load) nounwind
  %tmp.5 = add nsw i32 %k_col, %j, !dbg !62       ; [#uses=1 type=i32] [debug line = 15:1]
  %tmp.6 = sext i32 %tmp.5 to i64, !dbg !62       ; [#uses=1 type=i64] [debug line = 15:1]
  %m2.addr = getelementptr inbounds double* %m2, i64 %tmp.6, !dbg !62 ; [#uses=1 type=double*] [debug line = 15:1]
  %m2.load = load double* %m2.addr, align 8, !dbg !62 ; [#uses=2 type=double] [debug line = 15:1]
  call void (...)* @_ssdm_SpecKeepArrayLoad(double %m2.load) nounwind
  %mult = fmul double %m1.load, %m2.load, !dbg !62 ; [#uses=2 type=double] [debug line = 15:1]
  call void @llvm.dbg.value(metadata !{double %mult}, i64 0, metadata !63), !dbg !62 ; [debug line = 15:1] [debug variable = mult]
  call void (...)* @_ssdm_op_SpecResource(double %mult, i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i64 0, i64 0)) nounwind, !dbg !64 ; [debug line = 16:1]
  %rend = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str5, i64 0, i64 0), i32 %rbegin) nounwind, !dbg !65 ; [#uses=0 type=i32] [debug line = 17:1]
  %rend4 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i64 0, i64 0), i32 %rbegin3) nounwind, !dbg !66 ; [#uses=0 type=i32] [debug line = 17:44]
  %sum.1 = fadd double %sum, %mult, !dbg !67      ; [#uses=1 type=double] [debug line = 15:17]
  call void @llvm.dbg.value(metadata !{double %sum.1}, i64 0, metadata !68), !dbg !67 ; [debug line = 15:17] [debug variable = sum]
  %rend6 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i32 %rbegin5) nounwind, !dbg !69 ; [#uses=0 type=i32] [debug line = 16:13]
  %k.1 = add nsw i32 %k, 1, !dbg !70              ; [#uses=1 type=i32] [debug line = 12:32]
  call void @llvm.dbg.value(metadata !{i32 %k.1}, i64 0, metadata !71), !dbg !70 ; [debug line = 12:32] [debug variable = k]
  br label %5, !dbg !70                           ; [debug line = 12:32]

; <label>:7                                       ; preds = %5
  %sum.0.lcssa = phi double [ %sum, %5 ]          ; [#uses=1 type=double]
  %tmp = add nsw i32 %j, %i_col, !dbg !72         ; [#uses=1 type=i32] [debug line = 17:13]
  %tmp.1 = sext i32 %tmp to i64, !dbg !72         ; [#uses=1 type=i64] [debug line = 17:13]
  %prod.addr = getelementptr inbounds double* %prod, i64 %tmp.1, !dbg !72 ; [#uses=1 type=double*] [debug line = 17:13]
  store double %sum.0.lcssa, double* %prod.addr, align 8, !dbg !72 ; [debug line = 17:13]
  %rend8 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32 %rbegin7) nounwind, !dbg !73 ; [#uses=0 type=i32] [debug line = 18:9]
  %j.1 = add nsw i32 %j, 1, !dbg !74              ; [#uses=1 type=i32] [debug line = 9:29]
  call void @llvm.dbg.value(metadata !{i32 %j.1}, i64 0, metadata !75), !dbg !74 ; [debug line = 9:29] [debug variable = j]
  br label %3, !dbg !74                           ; [debug line = 9:29]

; <label>:8                                       ; preds = %3
  %rend10 = call i32 (...)* @_ssdm_op_SpecRegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 %rbegin9) nounwind, !dbg !76 ; [#uses=0 type=i32] [debug line = 19:5]
  %i.1 = add nsw i32 %i, 1, !dbg !77              ; [#uses=1 type=i32] [debug line = 8:24]
  call void @llvm.dbg.value(metadata !{i32 %i.1}, i64 0, metadata !78), !dbg !77 ; [debug line = 8:24] [debug variable = i]
  br label %1, !dbg !77                           ; [debug line = 8:24]

; <label>:9                                       ; preds = %1
  ret void, !dbg !79                              ; [debug line = 20:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionEnd(...)

; [#uses=5]
declare i32 @_ssdm_op_SpecRegionBegin(...)

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=2]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!25}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/local/ssd/home/mattfel/machsuite/gemm/ncubed/gemm_hls/solution/.autopilot/db/gemm.pragma.2.c", metadata !"/home/mattfel/machsuite/gemm/ncubed", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !13} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"gemm", metadata !"gemm", metadata !"", metadata !6, i32 3, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (double*, double*, double*)* @gemm, null, null, metadata !11, i32 3} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"gemm.c", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !9}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !15, metadata !18, metadata !19, metadata !20, metadata !23}
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !24, i32 45, metadata !22, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786473, metadata !"./support.h", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!25 = metadata !{void (double*, double*, double*)* @gemm, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!27 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!29 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"m1", metadata !"m2", metadata !"prod"}
!31 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!32 = metadata !{i32 786689, metadata !5, metadata !"m1", metadata !6, i32 16777219, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!33 = metadata !{i32 3, i32 19, metadata !5, null}
!34 = metadata !{i32 786689, metadata !5, metadata !"m2", metadata !6, i32 33554435, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!35 = metadata !{i32 3, i32 37, metadata !5, null}
!36 = metadata !{i32 786689, metadata !5, metadata !"prod", metadata !6, i32 50331651, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!37 = metadata !{i32 3, i32 55, metadata !5, null}
!38 = metadata !{i32 3, i32 69, metadata !39, null}
!39 = metadata !{i32 786443, metadata !5, i32 3, i32 68, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!40 = metadata !{i32 3, i32 104, metadata !39, null}
!41 = metadata !{i32 3, i32 137, metadata !39, null}
!42 = metadata !{i32 8, i32 15, metadata !43, null}
!43 = metadata !{i32 786443, metadata !39, i32 8, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 8, i32 30, metadata !45, null}
!45 = metadata !{i32 786443, metadata !43, i32 8, i32 29, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!46 = metadata !{i32 10, i32 13, metadata !47, null}
!47 = metadata !{i32 786443, metadata !48, i32 9, i32 34, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!48 = metadata !{i32 786443, metadata !45, i32 9, i32 16, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!49 = metadata !{i32 9, i32 20, metadata !48, null}
!50 = metadata !{i32 9, i32 35, metadata !47, null}
!51 = metadata !{i32 10, i32 1, metadata !47, null}
!52 = metadata !{i32 786688, metadata !39, metadata !"i_col", metadata !6, i32 5, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 12, i32 23, metadata !54, null}
!54 = metadata !{i32 786443, metadata !47, i32 12, i32 19, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!55 = metadata !{i32 12, i32 38, metadata !56, null}
!56 = metadata !{i32 786443, metadata !54, i32 12, i32 37, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 13, i32 1, metadata !56, null}
!58 = metadata !{i32 13, i32 17, metadata !56, null}
!59 = metadata !{i32 786688, metadata !39, metadata !"k_col", metadata !6, i32 5, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!60 = metadata !{i32 14, i32 18, metadata !61, null}
!61 = metadata !{i32 786443, metadata !56, i32 14, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!62 = metadata !{i32 15, i32 1, metadata !61, null}
!63 = metadata !{i32 786688, metadata !39, metadata !"mult", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!64 = metadata !{i32 16, i32 1, metadata !61, null}
!65 = metadata !{i32 17, i32 1, metadata !61, null}
!66 = metadata !{i32 17, i32 44, metadata !61, null}
!67 = metadata !{i32 15, i32 17, metadata !56, null}
!68 = metadata !{i32 786688, metadata !47, metadata !"sum", metadata !6, i32 11, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!69 = metadata !{i32 16, i32 13, metadata !56, null}
!70 = metadata !{i32 12, i32 32, metadata !54, null}
!71 = metadata !{i32 786688, metadata !39, metadata !"k", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!72 = metadata !{i32 17, i32 13, metadata !47, null}
!73 = metadata !{i32 18, i32 9, metadata !47, null}
!74 = metadata !{i32 9, i32 29, metadata !48, null}
!75 = metadata !{i32 786688, metadata !39, metadata !"j", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!76 = metadata !{i32 19, i32 5, metadata !45, null}
!77 = metadata !{i32 8, i32 24, metadata !43, null}
!78 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!79 = metadata !{i32 20, i32 1, metadata !39, null}
