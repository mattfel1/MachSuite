; ModuleID = '/local/ssd/home/mattfel/machsuite/gemm/ncubed/gemm_hls/solution/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@.str = private unnamed_addr constant [6 x i8] c"outer\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [7 x i8] c"middle\00", align 1 ; [#uses=1 type=[7 x i8]*]
@.str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str3 = private unnamed_addr constant [6 x i8] c"inner\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=1 type=[12 x i8]*]
@.str5 = private unnamed_addr constant [24 x i8] c"?Mul_mult_Region_174519\00", align 1 ; [#uses=1 type=[24 x i8]*]
@.str6 = private unnamed_addr constant [4 x i8] c"Mul\00", align 1 ; [#uses=1 type=[4 x i8]*]
@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@INPUT_SIZE = external global i32                 ; [#uses=0 type=i32*]

; [#uses=0]
define void @gemm(double* %m1, double* %m2, double* %prod) nounwind uwtable {
  %1 = alloca double*, align 8                    ; [#uses=3 type=double**]
  %2 = alloca double*, align 8                    ; [#uses=3 type=double**]
  %3 = alloca double*, align 8                    ; [#uses=3 type=double**]
  %i = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %j = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %k = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %k_col = alloca i32, align 4                    ; [#uses=2 type=i32*]
  %i_col = alloca i32, align 4                    ; [#uses=3 type=i32*]
  %mult = alloca double, align 8                  ; [#uses=3 type=double*]
  %sum = alloca double, align 8                   ; [#uses=4 type=double*]
  store double* %m1, double** %1, align 8
  call void @llvm.dbg.declare(metadata !{double** %1}, metadata !32), !dbg !33 ; [debug line = 3:19] [debug variable = m1]
  store double* %m2, double** %2, align 8
  call void @llvm.dbg.declare(metadata !{double** %2}, metadata !34), !dbg !35 ; [debug line = 3:37] [debug variable = m2]
  store double* %prod, double** %3, align 8
  call void @llvm.dbg.declare(metadata !{double** %3}, metadata !36), !dbg !37 ; [debug line = 3:55] [debug variable = prod]
  %4 = load double** %3, align 8, !dbg !38        ; [#uses=1 type=double*] [debug line = 3:69]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %4, i32 4096) nounwind, !dbg !38 ; [debug line = 3:69]
  %5 = load double** %1, align 8, !dbg !40        ; [#uses=1 type=double*] [debug line = 3:104]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %5, i32 4096) nounwind, !dbg !40 ; [debug line = 3:104]
  %6 = load double** %2, align 8, !dbg !41        ; [#uses=1 type=double*] [debug line = 3:137]
  call void (...)* @_ssdm_SpecArrayDimSize(double* %6, i32 4096) nounwind, !dbg !41 ; [debug line = 3:137]
  call void @llvm.dbg.declare(metadata !{i32* %i}, metadata !42), !dbg !43 ; [debug line = 4:9] [debug variable = i]
  call void @llvm.dbg.declare(metadata !{i32* %j}, metadata !44), !dbg !45 ; [debug line = 4:12] [debug variable = j]
  call void @llvm.dbg.declare(metadata !{i32* %k}, metadata !46), !dbg !47 ; [debug line = 4:15] [debug variable = k]
  call void @llvm.dbg.declare(metadata !{i32* %k_col}, metadata !48), !dbg !49 ; [debug line = 5:9] [debug variable = k_col]
  call void @llvm.dbg.declare(metadata !{i32* %i_col}, metadata !50), !dbg !51 ; [debug line = 5:16] [debug variable = i_col]
  call void @llvm.dbg.declare(metadata !{double* %mult}, metadata !52), !dbg !53 ; [debug line = 6:12] [debug variable = mult]
  br label %7, !dbg !54                           ; [debug line = 6:16]

; <label>:7                                       ; preds = %0
  store i32 0, i32* %i, align 4, !dbg !55         ; [debug line = 8:15]
  br label %8, !dbg !55                           ; [debug line = 8:15]

; <label>:8                                       ; preds = %60, %7
  %9 = load i32* %i, align 4, !dbg !55            ; [#uses=1 type=i32] [debug line = 8:15]
  %10 = icmp slt i32 %9, 64, !dbg !55             ; [#uses=1 type=i1] [debug line = 8:15]
  br i1 %10, label %11, label %63, !dbg !55       ; [debug line = 8:15]

; <label>:11                                      ; preds = %8
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !57 ; [debug line = 8:30]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !57 ; [debug line = 8:30]
  br label %12, !dbg !57                          ; [debug line = 8:30]

; <label>:12                                      ; preds = %11
  store i32 0, i32* %j, align 4, !dbg !59         ; [debug line = 9:20]
  br label %13, !dbg !59                          ; [debug line = 9:20]

; <label>:13                                      ; preds = %56, %12
  %14 = load i32* %j, align 4, !dbg !59           ; [#uses=1 type=i32] [debug line = 9:20]
  %15 = icmp slt i32 %14, 64, !dbg !59            ; [#uses=1 type=i1] [debug line = 9:20]
  br i1 %15, label %16, label %59, !dbg !59       ; [debug line = 9:20]

; <label>:16                                      ; preds = %13
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !61 ; [debug line = 9:35]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !61 ; [debug line = 9:35]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !63 ; [debug line = 10:1]
  %17 = load i32* %i, align 4, !dbg !64           ; [#uses=1 type=i32] [debug line = 10:13]
  %18 = mul nsw i32 %17, 64, !dbg !64             ; [#uses=1 type=i32] [debug line = 10:13]
  store i32 %18, i32* %i_col, align 4, !dbg !64   ; [debug line = 10:13]
  call void @llvm.dbg.declare(metadata !{double* %sum}, metadata !65), !dbg !66 ; [debug line = 11:20] [debug variable = sum]
  store double 0.000000e+00, double* %sum, align 8, !dbg !67 ; [debug line = 11:27]
  br label %19, !dbg !67                          ; [debug line = 11:27]

; <label>:19                                      ; preds = %16
  store i32 0, i32* %k, align 4, !dbg !68         ; [debug line = 12:23]
  br label %20, !dbg !68                          ; [debug line = 12:23]

; <label>:20                                      ; preds = %45, %19
  %21 = load i32* %k, align 4, !dbg !68           ; [#uses=1 type=i32] [debug line = 12:23]
  %22 = icmp slt i32 %21, 64, !dbg !68            ; [#uses=1 type=i1] [debug line = 12:23]
  br i1 %22, label %23, label %48, !dbg !68       ; [debug line = 12:23]

; <label>:23                                      ; preds = %20
  call void (...)* @_ssdm_op_SpecLoopName(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 12:38]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !70 ; [debug line = 12:38]
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !72 ; [debug line = 13:1]
  %24 = load i32* %k, align 4, !dbg !73           ; [#uses=1 type=i32] [debug line = 13:17]
  %25 = mul nsw i32 %24, 64, !dbg !73             ; [#uses=1 type=i32] [debug line = 13:17]
  store i32 %25, i32* %k_col, align 4, !dbg !73   ; [debug line = 13:17]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 14:18]
  call void (...)* @_ssdm_RegionBegin(i8* getelementptr inbounds ([24 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !74 ; [debug line = 14:18]
  %26 = load i32* %i_col, align 4, !dbg !76       ; [#uses=1 type=i32] [debug line = 15:1]
  %27 = load i32* %k, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 15:1]
  %28 = add nsw i32 %26, %27, !dbg !76            ; [#uses=1 type=i32] [debug line = 15:1]
  %29 = sext i32 %28 to i64, !dbg !76             ; [#uses=1 type=i64] [debug line = 15:1]
  %30 = load double** %1, align 8, !dbg !76       ; [#uses=1 type=double*] [debug line = 15:1]
  %31 = getelementptr inbounds double* %30, i64 %29, !dbg !76 ; [#uses=1 type=double*] [debug line = 15:1]
  %32 = load double* %31, align 8, !dbg !76       ; [#uses=1 type=double] [debug line = 15:1]
  %33 = load i32* %k_col, align 4, !dbg !76       ; [#uses=1 type=i32] [debug line = 15:1]
  %34 = load i32* %j, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 15:1]
  %35 = add nsw i32 %33, %34, !dbg !76            ; [#uses=1 type=i32] [debug line = 15:1]
  %36 = sext i32 %35 to i64, !dbg !76             ; [#uses=1 type=i64] [debug line = 15:1]
  %37 = load double** %2, align 8, !dbg !76       ; [#uses=1 type=double*] [debug line = 15:1]
  %38 = getelementptr inbounds double* %37, i64 %36, !dbg !76 ; [#uses=1 type=double*] [debug line = 15:1]
  %39 = load double* %38, align 8, !dbg !76       ; [#uses=1 type=double] [debug line = 15:1]
  %40 = fmul double %32, %39, !dbg !76            ; [#uses=1 type=double] [debug line = 15:1]
  store double %40, double* %mult, align 8, !dbg !76 ; [debug line = 15:1]
  %41 = load double* %mult, align 8, !dbg !77     ; [#uses=1 type=double] [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecResource(double %41, i8* getelementptr inbounds ([24 x i8]* @.str5, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8]* @.str6, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i32 -1, i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str2, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 16:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([24 x i8]* @.str5, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 17:1]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([12 x i8]* @.str4, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 17:44]
  %42 = load double* %mult, align 8, !dbg !80     ; [#uses=1 type=double] [debug line = 15:17]
  %43 = load double* %sum, align 8, !dbg !80      ; [#uses=1 type=double] [debug line = 15:17]
  %44 = fadd double %43, %42, !dbg !80            ; [#uses=1 type=double] [debug line = 15:17]
  store double %44, double* %sum, align 8, !dbg !80 ; [debug line = 15:17]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str3, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 16:13]
  br label %45, !dbg !81                          ; [debug line = 16:13]

; <label>:45                                      ; preds = %23
  %46 = load i32* %k, align 4, !dbg !82           ; [#uses=1 type=i32] [debug line = 12:32]
  %47 = add nsw i32 %46, 1, !dbg !82              ; [#uses=1 type=i32] [debug line = 12:32]
  store i32 %47, i32* %k, align 4, !dbg !82       ; [debug line = 12:32]
  br label %20, !dbg !82                          ; [debug line = 12:32]

; <label>:48                                      ; preds = %20
  %49 = load double* %sum, align 8, !dbg !83      ; [#uses=1 type=double] [debug line = 17:13]
  %50 = load i32* %i_col, align 4, !dbg !83       ; [#uses=1 type=i32] [debug line = 17:13]
  %51 = load i32* %j, align 4, !dbg !83           ; [#uses=1 type=i32] [debug line = 17:13]
  %52 = add nsw i32 %50, %51, !dbg !83            ; [#uses=1 type=i32] [debug line = 17:13]
  %53 = sext i32 %52 to i64, !dbg !83             ; [#uses=1 type=i64] [debug line = 17:13]
  %54 = load double** %3, align 8, !dbg !83       ; [#uses=1 type=double*] [debug line = 17:13]
  %55 = getelementptr inbounds double* %54, i64 %53, !dbg !83 ; [#uses=1 type=double*] [debug line = 17:13]
  store double %49, double* %55, align 8, !dbg !83 ; [debug line = 17:13]
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([7 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 18:9]
  br label %56, !dbg !84                          ; [debug line = 18:9]

; <label>:56                                      ; preds = %48
  %57 = load i32* %j, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 9:29]
  %58 = add nsw i32 %57, 1, !dbg !85              ; [#uses=1 type=i32] [debug line = 9:29]
  store i32 %58, i32* %j, align 4, !dbg !85       ; [debug line = 9:29]
  br label %13, !dbg !85                          ; [debug line = 9:29]

; <label>:59                                      ; preds = %13
  call void (...)* @_ssdm_RegionEnd(i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 19:5]
  br label %60, !dbg !86                          ; [debug line = 19:5]

; <label>:60                                      ; preds = %59
  %61 = load i32* %i, align 4, !dbg !87           ; [#uses=1 type=i32] [debug line = 8:24]
  %62 = add nsw i32 %61, 1, !dbg !87              ; [#uses=1 type=i32] [debug line = 8:24]
  store i32 %62, i32* %i, align 4, !dbg !87       ; [debug line = 8:24]
  br label %8, !dbg !87                           ; [debug line = 8:24]

; <label>:63                                      ; preds = %8
  ret void, !dbg !88                              ; [debug line = 20:1]
}

; [#uses=10]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=3]
declare void @_ssdm_SpecArrayDimSize(...) nounwind

; [#uses=3]
declare void @_ssdm_op_SpecLoopName(...) nounwind

; [#uses=5]
declare void @_ssdm_RegionBegin(...) nounwind

; [#uses=2]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecResource(...) nounwind

; [#uses=5]
declare void @_ssdm_RegionEnd(...) nounwind

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
!15 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !16, i32 320, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!16 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !16, i32 318, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!18 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !16, i32 321, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!19 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !16, i32 322, metadata !17, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!20 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !21, i32 26, metadata !22, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!21 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/mattfel/machsuite/gemm/ncubed", null} ; [ DW_TAG_file_type ]
!22 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!23 = metadata !{i32 786484, i32 0, null, metadata !"INPUT_SIZE", metadata !"INPUT_SIZE", metadata !"", metadata !24, i32 45, metadata !22, i32 0, i32 1, i32* @INPUT_SIZE} ; [ DW_TAG_variable ]
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
!42 = metadata !{i32 786688, metadata !39, metadata !"i", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!43 = metadata !{i32 4, i32 9, metadata !39, null}
!44 = metadata !{i32 786688, metadata !39, metadata !"j", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!45 = metadata !{i32 4, i32 12, metadata !39, null}
!46 = metadata !{i32 786688, metadata !39, metadata !"k", metadata !6, i32 4, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!47 = metadata !{i32 4, i32 15, metadata !39, null}
!48 = metadata !{i32 786688, metadata !39, metadata !"k_col", metadata !6, i32 5, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!49 = metadata !{i32 5, i32 9, metadata !39, null}
!50 = metadata !{i32 786688, metadata !39, metadata !"i_col", metadata !6, i32 5, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!51 = metadata !{i32 5, i32 16, metadata !39, null}
!52 = metadata !{i32 786688, metadata !39, metadata !"mult", metadata !6, i32 6, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!53 = metadata !{i32 6, i32 12, metadata !39, null}
!54 = metadata !{i32 6, i32 16, metadata !39, null}
!55 = metadata !{i32 8, i32 15, metadata !56, null}
!56 = metadata !{i32 786443, metadata !39, i32 8, i32 11, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!57 = metadata !{i32 8, i32 30, metadata !58, null}
!58 = metadata !{i32 786443, metadata !56, i32 8, i32 29, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!59 = metadata !{i32 9, i32 20, metadata !60, null}
!60 = metadata !{i32 786443, metadata !58, i32 9, i32 16, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!61 = metadata !{i32 9, i32 35, metadata !62, null}
!62 = metadata !{i32 786443, metadata !60, i32 9, i32 34, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!63 = metadata !{i32 10, i32 1, metadata !62, null}
!64 = metadata !{i32 10, i32 13, metadata !62, null}
!65 = metadata !{i32 786688, metadata !62, metadata !"sum", metadata !6, i32 11, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!66 = metadata !{i32 11, i32 20, metadata !62, null}
!67 = metadata !{i32 11, i32 27, metadata !62, null}
!68 = metadata !{i32 12, i32 23, metadata !69, null}
!69 = metadata !{i32 786443, metadata !62, i32 12, i32 19, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 12, i32 38, metadata !71, null}
!71 = metadata !{i32 786443, metadata !69, i32 12, i32 37, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 13, i32 1, metadata !71, null}
!73 = metadata !{i32 13, i32 17, metadata !71, null}
!74 = metadata !{i32 14, i32 18, metadata !75, null}
!75 = metadata !{i32 786443, metadata !71, i32 14, i32 17, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!76 = metadata !{i32 15, i32 1, metadata !75, null}
!77 = metadata !{i32 16, i32 1, metadata !75, null}
!78 = metadata !{i32 17, i32 1, metadata !75, null}
!79 = metadata !{i32 17, i32 44, metadata !75, null}
!80 = metadata !{i32 15, i32 17, metadata !71, null}
!81 = metadata !{i32 16, i32 13, metadata !71, null}
!82 = metadata !{i32 12, i32 32, metadata !69, null}
!83 = metadata !{i32 17, i32 13, metadata !62, null}
!84 = metadata !{i32 18, i32 9, metadata !62, null}
!85 = metadata !{i32 9, i32 29, metadata !60, null}
!86 = metadata !{i32 19, i32 5, metadata !58, null}
!87 = metadata !{i32 8, i32 24, metadata !56, null}
!88 = metadata !{i32 20, i32 1, metadata !39, null}
