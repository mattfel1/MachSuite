; ModuleID = '/local/ssd/home/mattfel/machsuite/gemm/ncubed/gemm_hls/solution/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@outer_middle_str = internal unnamed_addr constant [13 x i8] c"outer_middle\00"
@gemm_str = internal unnamed_addr constant [5 x i8] c"gemm\00"
@p_str6 = private unnamed_addr constant [4 x i8] c"Mul\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [7 x i8] c"middle\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @gemm([4096 x double]* %m1, [4096 x double]* %m2, [4096 x double]* %prod) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x double]* %m1) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x double]* %m2) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap([4096 x double]* %prod) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @gemm_str) nounwind
  br label %1

; <label>:1                                       ; preds = %0, %.reset
  %indvar_flatten = phi i13 [ 0, %0 ], [ %indvar_flatten_next, %.reset ]
  %i = phi i7 [ 0, %0 ], [ %i_col_mid2_v_v, %.reset ]
  %j = phi i7 [ 0, %0 ], [ %j_1, %.reset ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.reset:                                           ; preds = %1
  call void (...)* @_ssdm_op_SpecLoopName([13 x i8]* @outer_middle_str)
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) nounwind
  %exitcond = icmp eq i7 %j, -64
  %j_mid2 = select i1 %exitcond, i7 0, i7 %j
  %i_s = add i7 1, %i
  %i_col_mid2_v_v = select i1 %exitcond, i7 %i_s, i7 %i
  %tmp_2 = trunc i7 %i_col_mid2_v_v to i6
  %i_col_mid2 = call i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6 %tmp_2, i6 0)
  %tmp_mid2 = zext i12 %i_col_mid2 to i64
  %tmp_4_1_mid2_v = or i12 %i_col_mid2, 1
  %tmp_4_1_mid2 = zext i12 %tmp_4_1_mid2_v to i64
  %tmp_4_2_mid2_v = or i12 %i_col_mid2, 2
  %tmp_4_2_mid2 = zext i12 %tmp_4_2_mid2_v to i64
  %tmp_4_3_mid2_v = or i12 %i_col_mid2, 3
  %tmp_4_3_mid2 = zext i12 %tmp_4_3_mid2_v to i64
  %tmp_4_4_mid2_v = or i12 %i_col_mid2, 4
  %tmp_4_4_mid2 = zext i12 %tmp_4_4_mid2_v to i64
  %tmp_4_5_mid2_v = or i12 %i_col_mid2, 5
  %tmp_4_5_mid2 = zext i12 %tmp_4_5_mid2_v to i64
  %tmp_4_6_mid2_v = or i12 %i_col_mid2, 6
  %tmp_4_6_mid2 = zext i12 %tmp_4_6_mid2_v to i64
  %tmp_4_7_mid2_v = or i12 %i_col_mid2, 7
  %tmp_4_7_mid2 = zext i12 %tmp_4_7_mid2_v to i64
  %tmp_4_8_mid2_v = or i12 %i_col_mid2, 8
  %tmp_4_8_mid2 = zext i12 %tmp_4_8_mid2_v to i64
  %tmp_4_9_mid2_v = or i12 %i_col_mid2, 9
  %tmp_4_9_mid2 = zext i12 %tmp_4_9_mid2_v to i64
  %tmp_4_mid2_v = or i12 %i_col_mid2, 10
  %tmp_4_mid2 = zext i12 %tmp_4_mid2_v to i64
  %tmp_4_10_mid2_v = or i12 %i_col_mid2, 11
  %tmp_4_10_mid2 = zext i12 %tmp_4_10_mid2_v to i64
  %tmp_4_11_mid2_v = or i12 %i_col_mid2, 12
  %tmp_4_11_mid2 = zext i12 %tmp_4_11_mid2_v to i64
  %tmp_4_12_mid2_v = or i12 %i_col_mid2, 13
  %tmp_4_12_mid2 = zext i12 %tmp_4_12_mid2_v to i64
  %tmp_4_13_mid2_v = or i12 %i_col_mid2, 14
  %tmp_4_13_mid2 = zext i12 %tmp_4_13_mid2_v to i64
  %tmp_4_14_mid2_v = or i12 %i_col_mid2, 15
  %tmp_4_14_mid2 = zext i12 %tmp_4_14_mid2_v to i64
  %tmp_4_15_mid2_v = or i12 %i_col_mid2, 16
  %tmp_4_15_mid2 = zext i12 %tmp_4_15_mid2_v to i64
  %tmp_4_16_mid2_v = or i12 %i_col_mid2, 17
  %tmp_4_16_mid2 = zext i12 %tmp_4_16_mid2_v to i64
  %tmp_4_17_mid2_v = or i12 %i_col_mid2, 18
  %tmp_4_17_mid2 = zext i12 %tmp_4_17_mid2_v to i64
  %tmp_4_18_mid2_v = or i12 %i_col_mid2, 19
  %tmp_4_18_mid2 = zext i12 %tmp_4_18_mid2_v to i64
  %tmp_4_19_mid2_v = or i12 %i_col_mid2, 20
  %tmp_4_19_mid2 = zext i12 %tmp_4_19_mid2_v to i64
  %tmp_4_20_mid2_v = or i12 %i_col_mid2, 21
  %tmp_4_20_mid2 = zext i12 %tmp_4_20_mid2_v to i64
  %tmp_4_21_mid2_v = or i12 %i_col_mid2, 22
  %tmp_4_21_mid2 = zext i12 %tmp_4_21_mid2_v to i64
  %tmp_4_22_mid2_v = or i12 %i_col_mid2, 23
  %tmp_4_22_mid2 = zext i12 %tmp_4_22_mid2_v to i64
  %tmp_4_23_mid2_v = or i12 %i_col_mid2, 24
  %tmp_4_23_mid2 = zext i12 %tmp_4_23_mid2_v to i64
  %tmp_4_24_mid2_v = or i12 %i_col_mid2, 25
  %tmp_4_24_mid2 = zext i12 %tmp_4_24_mid2_v to i64
  %tmp_4_25_mid2_v = or i12 %i_col_mid2, 26
  %tmp_4_25_mid2 = zext i12 %tmp_4_25_mid2_v to i64
  %tmp_4_26_mid2_v = or i12 %i_col_mid2, 27
  %tmp_4_26_mid2 = zext i12 %tmp_4_26_mid2_v to i64
  %tmp_4_27_mid2_v = or i12 %i_col_mid2, 28
  %tmp_4_27_mid2 = zext i12 %tmp_4_27_mid2_v to i64
  %tmp_4_28_mid2_v = or i12 %i_col_mid2, 29
  %tmp_4_28_mid2 = zext i12 %tmp_4_28_mid2_v to i64
  %tmp_4_29_mid2_v = or i12 %i_col_mid2, 30
  %tmp_4_29_mid2 = zext i12 %tmp_4_29_mid2_v to i64
  %tmp_4_30_mid2_v = or i12 %i_col_mid2, 31
  %tmp_4_30_mid2 = zext i12 %tmp_4_30_mid2_v to i64
  %tmp_4_31_mid2_v = or i12 %i_col_mid2, 32
  %tmp_4_31_mid2 = zext i12 %tmp_4_31_mid2_v to i64
  %tmp_4_32_mid2_v = or i12 %i_col_mid2, 33
  %tmp_4_32_mid2 = zext i12 %tmp_4_32_mid2_v to i64
  %tmp_4_33_mid2_v = or i12 %i_col_mid2, 34
  %tmp_4_33_mid2 = zext i12 %tmp_4_33_mid2_v to i64
  %tmp_4_34_mid2_v = or i12 %i_col_mid2, 35
  %tmp_4_34_mid2 = zext i12 %tmp_4_34_mid2_v to i64
  %tmp_4_35_mid2_v = or i12 %i_col_mid2, 36
  %tmp_4_35_mid2 = zext i12 %tmp_4_35_mid2_v to i64
  %tmp_4_36_mid2_v = or i12 %i_col_mid2, 37
  %tmp_4_36_mid2 = zext i12 %tmp_4_36_mid2_v to i64
  %tmp_4_37_mid2_v = or i12 %i_col_mid2, 38
  %tmp_4_37_mid2 = zext i12 %tmp_4_37_mid2_v to i64
  %tmp_4_38_mid2_v = or i12 %i_col_mid2, 39
  %tmp_4_38_mid2 = zext i12 %tmp_4_38_mid2_v to i64
  %tmp_4_39_mid2_v = or i12 %i_col_mid2, 40
  %tmp_4_39_mid2 = zext i12 %tmp_4_39_mid2_v to i64
  %tmp_4_40_mid2_v = or i12 %i_col_mid2, 41
  %tmp_4_40_mid2 = zext i12 %tmp_4_40_mid2_v to i64
  %tmp_4_41_mid2_v = or i12 %i_col_mid2, 42
  %tmp_4_41_mid2 = zext i12 %tmp_4_41_mid2_v to i64
  %tmp_4_42_mid2_v = or i12 %i_col_mid2, 43
  %tmp_4_42_mid2 = zext i12 %tmp_4_42_mid2_v to i64
  %tmp_4_43_mid2_v = or i12 %i_col_mid2, 44
  %tmp_4_43_mid2 = zext i12 %tmp_4_43_mid2_v to i64
  %tmp_4_44_mid2_v = or i12 %i_col_mid2, 45
  %tmp_4_44_mid2 = zext i12 %tmp_4_44_mid2_v to i64
  %tmp_4_45_mid2_v = or i12 %i_col_mid2, 46
  %tmp_4_45_mid2 = zext i12 %tmp_4_45_mid2_v to i64
  %tmp_4_46_mid2_v = or i12 %i_col_mid2, 47
  %tmp_4_46_mid2 = zext i12 %tmp_4_46_mid2_v to i64
  %tmp_4_47_mid2_v = or i12 %i_col_mid2, 48
  %tmp_4_47_mid2 = zext i12 %tmp_4_47_mid2_v to i64
  %tmp_4_48_mid2_v = or i12 %i_col_mid2, 49
  %tmp_4_48_mid2 = zext i12 %tmp_4_48_mid2_v to i64
  %tmp_4_49_mid2_v = or i12 %i_col_mid2, 50
  %tmp_4_49_mid2 = zext i12 %tmp_4_49_mid2_v to i64
  %tmp_4_50_mid2_v = or i12 %i_col_mid2, 51
  %tmp_4_50_mid2 = zext i12 %tmp_4_50_mid2_v to i64
  %tmp_4_51_mid2_v = or i12 %i_col_mid2, 52
  %tmp_4_51_mid2 = zext i12 %tmp_4_51_mid2_v to i64
  %tmp_4_52_mid2_v = or i12 %i_col_mid2, 53
  %tmp_4_52_mid2 = zext i12 %tmp_4_52_mid2_v to i64
  %tmp_4_53_mid2_v = or i12 %i_col_mid2, 54
  %tmp_4_53_mid2 = zext i12 %tmp_4_53_mid2_v to i64
  %tmp_4_54_mid2_v = or i12 %i_col_mid2, 55
  %tmp_4_54_mid2 = zext i12 %tmp_4_54_mid2_v to i64
  %tmp_4_55_mid2_v = or i12 %i_col_mid2, 56
  %tmp_4_55_mid2 = zext i12 %tmp_4_55_mid2_v to i64
  %tmp_4_56_mid2_v = or i12 %i_col_mid2, 57
  %tmp_4_56_mid2 = zext i12 %tmp_4_56_mid2_v to i64
  %tmp_4_57_mid2_v = or i12 %i_col_mid2, 58
  %tmp_4_57_mid2 = zext i12 %tmp_4_57_mid2_v to i64
  %tmp_4_58_mid2_v = or i12 %i_col_mid2, 59
  %tmp_4_58_mid2 = zext i12 %tmp_4_58_mid2_v to i64
  %tmp_4_59_mid2_v = or i12 %i_col_mid2, 60
  %tmp_4_59_mid2 = zext i12 %tmp_4_59_mid2_v to i64
  %tmp_4_60_mid2_v = or i12 %i_col_mid2, 61
  %tmp_4_60_mid2 = zext i12 %tmp_4_60_mid2_v to i64
  %tmp_4_61_mid2_v = or i12 %i_col_mid2, 62
  %tmp_4_61_mid2 = zext i12 %tmp_4_61_mid2_v to i64
  %tmp_4_62_mid2_v = or i12 %i_col_mid2, 63
  %tmp_4_62_mid2 = zext i12 %tmp_4_62_mid2_v to i64
  %j_cast5 = zext i7 %j_mid2 to i12
  %j_cast5_cast2 = zext i7 %j_mid2 to i9
  %j_cast5_cast3 = zext i7 %j_mid2 to i10
  %j_cast5_cast = zext i7 %j_mid2 to i11
  call void (...)* @_ssdm_op_SpecLoopName([7 x i8]* @p_str1) nounwind
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([7 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_4 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_mid2
  %m1_load = load double* %m1_addr, align 8
  %tmp_6 = zext i7 %j_mid2 to i64
  %m2_addr = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6
  %m2_load = load double* %m2_addr, align 8
  %mult = fmul double %m1_load, %m2_load
  call void (...)* @_ssdm_op_SpecFUCore(double %mult, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_2 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_4) nounwind
  %sum_1 = fadd double %mult, 0.000000e+00
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_1 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_1_mid2
  %m1_load_1 = load double* %m1_addr_1, align 8
  %tmp_5_1 = xor i7 %j_mid2, -64
  %tmp_6_1 = zext i7 %tmp_5_1 to i64
  %m2_addr_1 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_1
  %m2_load_1 = load double* %m2_addr_1, align 8
  %mult_1 = fmul double %m1_load_1, %m2_load_1
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_1, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_5) nounwind
  %sum_1_1 = fadd double %sum_1, %mult_1
  %tmp_7 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_2 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_2_mid2
  %m1_load_2 = load double* %m1_addr_2, align 8
  %tmp_5_s = call i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1 true, i7 %j_mid2)
  %tmp_6_2 = zext i8 %tmp_5_s to i64
  %m2_addr_2 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_2
  %m2_load_2 = load double* %m2_addr_2, align 8
  %mult_2 = fmul double %m1_load_2, %m2_load_2
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_2, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_4 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_7) nounwind
  %sum_1_2 = fadd double %sum_1_1, %mult_2
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_3 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_3_mid2
  %m1_load_3 = load double* %m1_addr_3, align 8
  %tmp_5_3_cast = sext i7 %tmp_5_1 to i8
  %tmp_6_3 = zext i8 %tmp_5_3_cast to i64
  %m2_addr_3 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_3
  %m2_load_3 = load double* %m2_addr_3, align 8
  %mult_3 = fmul double %m1_load_3, %m2_load_3
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_3, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_8) nounwind
  %sum_1_3 = fadd double %sum_1_2, %mult_3
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_4 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_4_mid2
  %m1_load_4 = load double* %m1_addr_4, align 8
  %tmp_5_2 = call i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2 -2, i7 %j_mid2)
  %tmp_6_4 = zext i9 %tmp_5_2 to i64
  %m2_addr_4 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_4
  %m2_load_4 = load double* %m2_addr_4, align 8
  %mult_4 = fmul double %m1_load_4, %m2_load_4
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_4, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_9) nounwind
  %sum_1_4 = fadd double %sum_1_3, %mult_4
  %tmp_s = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_5 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_5_mid2
  %m1_load_5 = load double* %m1_addr_5, align 8
  %tmp_5_5 = add i9 -192, %j_cast5_cast2
  %tmp_6_5 = zext i9 %tmp_5_5 to i64
  %m2_addr_5 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_5
  %m2_load_5 = load double* %m2_addr_5, align 8
  %mult_5 = fmul double %m1_load_5, %m2_load_5
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_5, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_s) nounwind
  %sum_1_5 = fadd double %sum_1_4, %mult_5
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_6 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_6_mid2
  %m1_load_6 = load double* %m1_addr_6, align 8
  %tmp_5_6_cast = sext i8 %tmp_5_s to i9
  %tmp_6_6 = zext i9 %tmp_5_6_cast to i64
  %m2_addr_6 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_6
  %m2_load_6 = load double* %m2_addr_6, align 8
  %mult_6 = fmul double %m1_load_6, %m2_load_6
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_6, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_8 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_10) nounwind
  %sum_1_6 = fadd double %sum_1_5, %mult_6
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_7 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_7_mid2
  %m1_load_7 = load double* %m1_addr_7, align 8
  %tmp_5_7_cast = sext i7 %tmp_5_1 to i9
  %tmp_6_7 = zext i9 %tmp_5_7_cast to i64
  %m2_addr_7 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_7
  %m2_load_7 = load double* %m2_addr_7, align 8
  %mult_7 = fmul double %m1_load_7, %m2_load_7
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_7, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_11) nounwind
  %sum_1_7 = fadd double %sum_1_6, %mult_7
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_8 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_8_mid2
  %m1_load_8 = load double* %m1_addr_8, align 8
  %tmp_5_6 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 -4, i7 %j_mid2)
  %tmp_6_8 = zext i10 %tmp_5_6 to i64
  %m2_addr_8 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_8
  %m2_load_8 = load double* %m2_addr_8, align 8
  %mult_8 = fmul double %m1_load_8, %m2_load_8
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_8, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_10 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_12) nounwind
  %sum_1_8 = fadd double %sum_1_7, %mult_8
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_9 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_9_mid2
  %m1_load_9 = load double* %m1_addr_9, align 8
  %tmp_5_9 = add i10 -448, %j_cast5_cast3
  %tmp_6_9 = zext i10 %tmp_5_9 to i64
  %m2_addr_9 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_9
  %m2_load_9 = load double* %m2_addr_9, align 8
  %mult_9 = fmul double %m1_load_9, %m2_load_9
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_9, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_13) nounwind
  %sum_1_9 = fadd double %sum_1_8, %mult_9
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_10 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_mid2
  %m1_load_10 = load double* %m1_addr_10, align 8
  %tmp_5_8 = call i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3 -3, i7 %j_mid2)
  %tmp_6_s = zext i10 %tmp_5_8 to i64
  %m2_addr_10 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_s
  %m2_load_10 = load double* %m2_addr_10, align 8
  %mult_s = fmul double %m1_load_10, %m2_load_10
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_s, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_14) nounwind
  %sum_1_s = fadd double %sum_1_9, %mult_s
  %tmp_15 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_11 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_10_mid2
  %m1_load_11 = load double* %m1_addr_11, align 8
  %tmp_5_3 = add i10 -320, %j_cast5_cast3
  %tmp_6_10 = zext i10 %tmp_5_3 to i64
  %m2_addr_11 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_10
  %m2_load_11 = load double* %m2_addr_11, align 8
  %mult_10 = fmul double %m1_load_11, %m2_load_11
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_10, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_15) nounwind
  %sum_1_10 = fadd double %sum_1_s, %mult_10
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_12 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_11_mid2
  %m1_load_12 = load double* %m1_addr_12, align 8
  %tmp_5_11_cast = sext i9 %tmp_5_2 to i10
  %tmp_6_11 = zext i10 %tmp_5_11_cast to i64
  %m2_addr_12 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_11
  %m2_load_12 = load double* %m2_addr_12, align 8
  %mult_11 = fmul double %m1_load_12, %m2_load_12
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_11, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_14 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_16) nounwind
  %sum_1_11 = fadd double %sum_1_10, %mult_11
  %tmp_17 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_13 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_12_mid2
  %m1_load_13 = load double* %m1_addr_13, align 8
  %tmp_5_12_cast = sext i9 %tmp_5_5 to i10
  %tmp_6_12 = zext i10 %tmp_5_12_cast to i64
  %m2_addr_13 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_12
  %m2_load_13 = load double* %m2_addr_13, align 8
  %mult_12 = fmul double %m1_load_13, %m2_load_13
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_12, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_15 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_17) nounwind
  %sum_1_12 = fadd double %sum_1_11, %mult_12
  %tmp_18 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_14 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_13_mid2
  %m1_load_14 = load double* %m1_addr_14, align 8
  %tmp_5_13_cast = sext i8 %tmp_5_s to i10
  %tmp_6_13 = zext i10 %tmp_5_13_cast to i64
  %m2_addr_14 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_13
  %m2_load_14 = load double* %m2_addr_14, align 8
  %mult_13 = fmul double %m1_load_14, %m2_load_14
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_13, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_16 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_18) nounwind
  %sum_1_13 = fadd double %sum_1_12, %mult_13
  %tmp_19 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_15 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_14_mid2
  %m1_load_15 = load double* %m1_addr_15, align 8
  %tmp_5_14_cast = sext i7 %tmp_5_1 to i10
  %tmp_6_14 = zext i10 %tmp_5_14_cast to i64
  %m2_addr_15 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_14
  %m2_load_15 = load double* %m2_addr_15, align 8
  %mult_14 = fmul double %m1_load_15, %m2_load_15
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_14, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_17 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_19) nounwind
  %sum_1_14 = fadd double %sum_1_13, %mult_14
  %tmp_20 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_16 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_15_mid2
  %m1_load_16 = load double* %m1_addr_16, align 8
  %tmp_5_4 = call i11 @_ssdm_op_BitConcatenate.i11.i4.i7(i4 -8, i7 %j_mid2)
  %tmp_6_15 = zext i11 %tmp_5_4 to i64
  %m2_addr_16 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_15
  %m2_load_16 = load double* %m2_addr_16, align 8
  %mult_15 = fmul double %m1_load_16, %m2_load_16
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_15, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_18 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_20) nounwind
  %sum_1_15 = fadd double %sum_1_14, %mult_15
  %tmp_21 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_17 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_16_mid2
  %m1_load_17 = load double* %m1_addr_17, align 8
  %tmp_5_7 = add i11 -960, %j_cast5_cast
  %tmp_6_16 = zext i11 %tmp_5_7 to i64
  %m2_addr_17 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_16
  %m2_load_17 = load double* %m2_addr_17, align 8
  %mult_16 = fmul double %m1_load_17, %m2_load_17
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_16, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_19 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_21) nounwind
  %sum_1_16 = fadd double %sum_1_15, %mult_16
  %tmp_22 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_18 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_17_mid2
  %m1_load_18 = load double* %m1_addr_18, align 8
  %tmp_5_10 = call i11 @_ssdm_op_BitConcatenate.i11.i4.i7(i4 -7, i7 %j_mid2)
  %tmp_6_17 = zext i11 %tmp_5_10 to i64
  %m2_addr_18 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_17
  %m2_load_18 = load double* %m2_addr_18, align 8
  %mult_17 = fmul double %m1_load_18, %m2_load_18
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_17, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_20 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_22) nounwind
  %sum_1_17 = fadd double %sum_1_16, %mult_17
  %tmp_23 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_19 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_18_mid2
  %m1_load_19 = load double* %m1_addr_19, align 8
  %tmp_5_11 = add i11 -832, %j_cast5_cast
  %tmp_6_18 = zext i11 %tmp_5_11 to i64
  %m2_addr_19 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_18
  %m2_load_19 = load double* %m2_addr_19, align 8
  %mult_18 = fmul double %m1_load_19, %m2_load_19
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_18, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_21 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_23) nounwind
  %sum_1_18 = fadd double %sum_1_17, %mult_18
  %tmp_24 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_20 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_19_mid2
  %m1_load_20 = load double* %m1_addr_20, align 8
  %tmp_5_12 = call i11 @_ssdm_op_BitConcatenate.i11.i4.i7(i4 -6, i7 %j_mid2)
  %tmp_6_19 = zext i11 %tmp_5_12 to i64
  %m2_addr_20 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_19
  %m2_load_20 = load double* %m2_addr_20, align 8
  %mult_19 = fmul double %m1_load_20, %m2_load_20
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_19, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_22 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_24) nounwind
  %sum_1_19 = fadd double %sum_1_18, %mult_19
  %tmp_25 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_21 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_20_mid2
  %m1_load_21 = load double* %m1_addr_21, align 8
  %tmp_5_13 = add i11 -704, %j_cast5_cast
  %tmp_6_20 = zext i11 %tmp_5_13 to i64
  %m2_addr_21 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_20
  %m2_load_21 = load double* %m2_addr_21, align 8
  %mult_20 = fmul double %m1_load_21, %m2_load_21
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_20, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_23 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_25) nounwind
  %sum_1_20 = fadd double %sum_1_19, %mult_20
  %tmp_26 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_22 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_21_mid2
  %m1_load_22 = load double* %m1_addr_22, align 8
  %tmp_5_14 = call i11 @_ssdm_op_BitConcatenate.i11.i4.i7(i4 -5, i7 %j_mid2)
  %tmp_6_21 = zext i11 %tmp_5_14 to i64
  %m2_addr_22 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_21
  %m2_load_22 = load double* %m2_addr_22, align 8
  %mult_21 = fmul double %m1_load_22, %m2_load_22
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_21, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_24 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_26) nounwind
  %sum_1_21 = fadd double %sum_1_20, %mult_21
  %tmp_27 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_23 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_22_mid2
  %m1_load_23 = load double* %m1_addr_23, align 8
  %tmp_5_15 = add i11 -576, %j_cast5_cast
  %tmp_6_22 = zext i11 %tmp_5_15 to i64
  %m2_addr_23 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_22
  %m2_load_23 = load double* %m2_addr_23, align 8
  %mult_22 = fmul double %m1_load_23, %m2_load_23
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_22, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_25 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_27) nounwind
  %sum_1_22 = fadd double %sum_1_21, %mult_22
  %tmp_28 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_24 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_23_mid2
  %m1_load_24 = load double* %m1_addr_24, align 8
  %tmp_5_23_cast = sext i10 %tmp_5_6 to i11
  %tmp_6_23 = zext i11 %tmp_5_23_cast to i64
  %m2_addr_24 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_23
  %m2_load_24 = load double* %m2_addr_24, align 8
  %mult_23 = fmul double %m1_load_24, %m2_load_24
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_23, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_26 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_28) nounwind
  %sum_1_23 = fadd double %sum_1_22, %mult_23
  %tmp_29 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_25 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_24_mid2
  %m1_load_25 = load double* %m1_addr_25, align 8
  %tmp_5_24_cast = sext i10 %tmp_5_9 to i11
  %tmp_6_24 = zext i11 %tmp_5_24_cast to i64
  %m2_addr_25 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_24
  %m2_load_25 = load double* %m2_addr_25, align 8
  %mult_24 = fmul double %m1_load_25, %m2_load_25
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_24, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_27 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_29) nounwind
  %sum_1_24 = fadd double %sum_1_23, %mult_24
  %tmp_30 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_26 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_25_mid2
  %m1_load_26 = load double* %m1_addr_26, align 8
  %tmp_5_25_cast = sext i10 %tmp_5_8 to i11
  %tmp_6_25 = zext i11 %tmp_5_25_cast to i64
  %m2_addr_26 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_25
  %m2_load_26 = load double* %m2_addr_26, align 8
  %mult_25 = fmul double %m1_load_26, %m2_load_26
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_25, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_28 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_30) nounwind
  %sum_1_25 = fadd double %sum_1_24, %mult_25
  %tmp_31 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_27 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_26_mid2
  %m1_load_27 = load double* %m1_addr_27, align 8
  %tmp_5_26_cast = sext i10 %tmp_5_3 to i11
  %tmp_6_26 = zext i11 %tmp_5_26_cast to i64
  %m2_addr_27 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_26
  %m2_load_27 = load double* %m2_addr_27, align 8
  %mult_26 = fmul double %m1_load_27, %m2_load_27
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_26, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_29 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_31) nounwind
  %sum_1_26 = fadd double %sum_1_25, %mult_26
  %tmp_32 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_28 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_27_mid2
  %m1_load_28 = load double* %m1_addr_28, align 8
  %tmp_5_27_cast = sext i9 %tmp_5_2 to i11
  %tmp_6_27 = zext i11 %tmp_5_27_cast to i64
  %m2_addr_28 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_27
  %m2_load_28 = load double* %m2_addr_28, align 8
  %mult_27 = fmul double %m1_load_28, %m2_load_28
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_27, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_30 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_32) nounwind
  %sum_1_27 = fadd double %sum_1_26, %mult_27
  %tmp_33 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_29 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_28_mid2
  %m1_load_29 = load double* %m1_addr_29, align 8
  %tmp_5_28_cast = sext i9 %tmp_5_5 to i11
  %tmp_6_28 = zext i11 %tmp_5_28_cast to i64
  %m2_addr_29 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_28
  %m2_load_29 = load double* %m2_addr_29, align 8
  %mult_28 = fmul double %m1_load_29, %m2_load_29
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_28, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_31 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_33) nounwind
  %sum_1_28 = fadd double %sum_1_27, %mult_28
  %tmp_34 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_30 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_29_mid2
  %m1_load_30 = load double* %m1_addr_30, align 8
  %tmp_5_29_cast = sext i8 %tmp_5_s to i11
  %tmp_6_29 = zext i11 %tmp_5_29_cast to i64
  %m2_addr_30 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_29
  %m2_load_30 = load double* %m2_addr_30, align 8
  %mult_29 = fmul double %m1_load_30, %m2_load_30
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_29, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_32 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_34) nounwind
  %sum_1_29 = fadd double %sum_1_28, %mult_29
  %tmp_35 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_31 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_30_mid2
  %m1_load_31 = load double* %m1_addr_31, align 8
  %tmp_5_30_cast = sext i7 %tmp_5_1 to i11
  %tmp_6_30 = zext i11 %tmp_5_30_cast to i64
  %m2_addr_31 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_30
  %m2_load_31 = load double* %m2_addr_31, align 8
  %mult_30 = fmul double %m1_load_31, %m2_load_31
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_30, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_33 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_35) nounwind
  %sum_1_30 = fadd double %sum_1_29, %mult_30
  %tmp_36 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_32 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_31_mid2
  %m1_load_32 = load double* %m1_addr_32, align 8
  %tmp_5_16 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -16, i7 %j_mid2)
  %tmp_6_31 = zext i12 %tmp_5_16 to i64
  %m2_addr_32 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_31
  %m2_load_32 = load double* %m2_addr_32, align 8
  %mult_31 = fmul double %m1_load_32, %m2_load_32
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_31, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_34 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_36) nounwind
  %sum_1_31 = fadd double %sum_1_30, %mult_31
  %tmp_37 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_33 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_32_mid2
  %m1_load_33 = load double* %m1_addr_33, align 8
  %tmp_5_17 = add i12 -1984, %j_cast5
  %tmp_6_32 = zext i12 %tmp_5_17 to i64
  %m2_addr_33 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_32
  %m2_load_33 = load double* %m2_addr_33, align 8
  %mult_32 = fmul double %m1_load_33, %m2_load_33
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_32, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_35 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_37) nounwind
  %sum_1_32 = fadd double %sum_1_31, %mult_32
  %tmp_38 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_34 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_33_mid2
  %m1_load_34 = load double* %m1_addr_34, align 8
  %tmp_5_18 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -15, i7 %j_mid2)
  %tmp_6_33 = zext i12 %tmp_5_18 to i64
  %m2_addr_34 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_33
  %m2_load_34 = load double* %m2_addr_34, align 8
  %mult_33 = fmul double %m1_load_34, %m2_load_34
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_33, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_36 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_38) nounwind
  %sum_1_33 = fadd double %sum_1_32, %mult_33
  %tmp_39 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_35 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_34_mid2
  %m1_load_35 = load double* %m1_addr_35, align 8
  %tmp_5_19 = add i12 -1856, %j_cast5
  %tmp_6_34 = zext i12 %tmp_5_19 to i64
  %m2_addr_35 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_34
  %m2_load_35 = load double* %m2_addr_35, align 8
  %mult_34 = fmul double %m1_load_35, %m2_load_35
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_34, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_37 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_39) nounwind
  %sum_1_34 = fadd double %sum_1_33, %mult_34
  %tmp_40 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_36 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_35_mid2
  %m1_load_36 = load double* %m1_addr_36, align 8
  %tmp_5_20 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -14, i7 %j_mid2)
  %tmp_6_35 = zext i12 %tmp_5_20 to i64
  %m2_addr_36 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_35
  %m2_load_36 = load double* %m2_addr_36, align 8
  %mult_35 = fmul double %m1_load_36, %m2_load_36
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_35, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_38 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_40) nounwind
  %sum_1_35 = fadd double %sum_1_34, %mult_35
  %tmp_41 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_37 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_36_mid2
  %m1_load_37 = load double* %m1_addr_37, align 8
  %tmp_5_21 = add i12 -1728, %j_cast5
  %tmp_6_36 = zext i12 %tmp_5_21 to i64
  %m2_addr_37 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_36
  %m2_load_37 = load double* %m2_addr_37, align 8
  %mult_36 = fmul double %m1_load_37, %m2_load_37
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_36, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_39 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_41) nounwind
  %sum_1_36 = fadd double %sum_1_35, %mult_36
  %tmp_42 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_38 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_37_mid2
  %m1_load_38 = load double* %m1_addr_38, align 8
  %tmp_5_22 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -13, i7 %j_mid2)
  %tmp_6_37 = zext i12 %tmp_5_22 to i64
  %m2_addr_38 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_37
  %m2_load_38 = load double* %m2_addr_38, align 8
  %mult_37 = fmul double %m1_load_38, %m2_load_38
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_37, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_40 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_42) nounwind
  %sum_1_37 = fadd double %sum_1_36, %mult_37
  %tmp_43 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_39 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_38_mid2
  %m1_load_39 = load double* %m1_addr_39, align 8
  %tmp_5_23 = add i12 -1600, %j_cast5
  %tmp_6_38 = zext i12 %tmp_5_23 to i64
  %m2_addr_39 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_38
  %m2_load_39 = load double* %m2_addr_39, align 8
  %mult_38 = fmul double %m1_load_39, %m2_load_39
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_38, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_41 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_43) nounwind
  %sum_1_38 = fadd double %sum_1_37, %mult_38
  %tmp_44 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_40 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_39_mid2
  %m1_load_40 = load double* %m1_addr_40, align 8
  %tmp_5_24 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -12, i7 %j_mid2)
  %tmp_6_39 = zext i12 %tmp_5_24 to i64
  %m2_addr_40 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_39
  %m2_load_40 = load double* %m2_addr_40, align 8
  %mult_39 = fmul double %m1_load_40, %m2_load_40
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_39, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_42 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_44) nounwind
  %sum_1_39 = fadd double %sum_1_38, %mult_39
  %tmp_45 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_41 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_40_mid2
  %m1_load_41 = load double* %m1_addr_41, align 8
  %tmp_5_25 = add i12 -1472, %j_cast5
  %tmp_6_40 = zext i12 %tmp_5_25 to i64
  %m2_addr_41 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_40
  %m2_load_41 = load double* %m2_addr_41, align 8
  %mult_40 = fmul double %m1_load_41, %m2_load_41
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_40, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_43 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_45) nounwind
  %sum_1_40 = fadd double %sum_1_39, %mult_40
  %tmp_46 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_42 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_41_mid2
  %m1_load_42 = load double* %m1_addr_42, align 8
  %tmp_5_26 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -11, i7 %j_mid2)
  %tmp_6_41 = zext i12 %tmp_5_26 to i64
  %m2_addr_42 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_41
  %m2_load_42 = load double* %m2_addr_42, align 8
  %mult_41 = fmul double %m1_load_42, %m2_load_42
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_41, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_44 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_46) nounwind
  %sum_1_41 = fadd double %sum_1_40, %mult_41
  %tmp_47 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_43 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_42_mid2
  %m1_load_43 = load double* %m1_addr_43, align 8
  %tmp_5_27 = add i12 -1344, %j_cast5
  %tmp_6_42 = zext i12 %tmp_5_27 to i64
  %m2_addr_43 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_42
  %m2_load_43 = load double* %m2_addr_43, align 8
  %mult_42 = fmul double %m1_load_43, %m2_load_43
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_42, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_45 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_47) nounwind
  %sum_1_42 = fadd double %sum_1_41, %mult_42
  %tmp_48 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_44 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_43_mid2
  %m1_load_44 = load double* %m1_addr_44, align 8
  %tmp_5_28 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -10, i7 %j_mid2)
  %tmp_6_43 = zext i12 %tmp_5_28 to i64
  %m2_addr_44 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_43
  %m2_load_44 = load double* %m2_addr_44, align 8
  %mult_43 = fmul double %m1_load_44, %m2_load_44
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_43, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_46 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_48) nounwind
  %sum_1_43 = fadd double %sum_1_42, %mult_43
  %tmp_49 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_45 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_44_mid2
  %m1_load_45 = load double* %m1_addr_45, align 8
  %tmp_5_29 = add i12 -1216, %j_cast5
  %tmp_6_44 = zext i12 %tmp_5_29 to i64
  %m2_addr_45 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_44
  %m2_load_45 = load double* %m2_addr_45, align 8
  %mult_44 = fmul double %m1_load_45, %m2_load_45
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_44, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_47 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_49) nounwind
  %sum_1_44 = fadd double %sum_1_43, %mult_44
  %tmp_50 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_46 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_45_mid2
  %m1_load_46 = load double* %m1_addr_46, align 8
  %tmp_5_30 = call i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5 -9, i7 %j_mid2)
  %tmp_6_45 = zext i12 %tmp_5_30 to i64
  %m2_addr_46 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_45
  %m2_load_46 = load double* %m2_addr_46, align 8
  %mult_45 = fmul double %m1_load_46, %m2_load_46
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_45, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_48 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_50) nounwind
  %sum_1_45 = fadd double %sum_1_44, %mult_45
  %tmp_51 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_47 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_46_mid2
  %m1_load_47 = load double* %m1_addr_47, align 8
  %tmp_5_31 = add i12 -1088, %j_cast5
  %tmp_6_46 = zext i12 %tmp_5_31 to i64
  %m2_addr_47 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_46
  %m2_load_47 = load double* %m2_addr_47, align 8
  %mult_46 = fmul double %m1_load_47, %m2_load_47
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_46, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_49 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_51) nounwind
  %sum_1_46 = fadd double %sum_1_45, %mult_46
  %tmp_52 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_48 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_47_mid2
  %m1_load_48 = load double* %m1_addr_48, align 8
  %tmp_5_47_cast = sext i11 %tmp_5_4 to i12
  %tmp_6_47 = zext i12 %tmp_5_47_cast to i64
  %m2_addr_48 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_47
  %m2_load_48 = load double* %m2_addr_48, align 8
  %mult_47 = fmul double %m1_load_48, %m2_load_48
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_47, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_50 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_52) nounwind
  %sum_1_47 = fadd double %sum_1_46, %mult_47
  %tmp_53 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_49 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_48_mid2
  %m1_load_49 = load double* %m1_addr_49, align 8
  %tmp_5_48_cast = sext i11 %tmp_5_7 to i12
  %tmp_6_48 = zext i12 %tmp_5_48_cast to i64
  %m2_addr_49 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_48
  %m2_load_49 = load double* %m2_addr_49, align 8
  %mult_48 = fmul double %m1_load_49, %m2_load_49
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_48, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_51 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_53) nounwind
  %sum_1_48 = fadd double %sum_1_47, %mult_48
  %tmp_54 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_50 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_49_mid2
  %m1_load_50 = load double* %m1_addr_50, align 8
  %tmp_5_49_cast = sext i11 %tmp_5_10 to i12
  %tmp_6_49 = zext i12 %tmp_5_49_cast to i64
  %m2_addr_50 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_49
  %m2_load_50 = load double* %m2_addr_50, align 8
  %mult_49 = fmul double %m1_load_50, %m2_load_50
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_49, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_52 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_54) nounwind
  %sum_1_49 = fadd double %sum_1_48, %mult_49
  %tmp_55 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_51 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_50_mid2
  %m1_load_51 = load double* %m1_addr_51, align 8
  %tmp_5_50_cast = sext i11 %tmp_5_11 to i12
  %tmp_6_50 = zext i12 %tmp_5_50_cast to i64
  %m2_addr_51 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_50
  %m2_load_51 = load double* %m2_addr_51, align 8
  %mult_50 = fmul double %m1_load_51, %m2_load_51
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_50, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_53 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_55) nounwind
  %sum_1_50 = fadd double %sum_1_49, %mult_50
  %tmp_56 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_52 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_51_mid2
  %m1_load_52 = load double* %m1_addr_52, align 8
  %tmp_5_51_cast = sext i11 %tmp_5_12 to i12
  %tmp_6_51 = zext i12 %tmp_5_51_cast to i64
  %m2_addr_52 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_51
  %m2_load_52 = load double* %m2_addr_52, align 8
  %mult_51 = fmul double %m1_load_52, %m2_load_52
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_51, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_54 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_56) nounwind
  %sum_1_51 = fadd double %sum_1_50, %mult_51
  %tmp_57 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_53 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_52_mid2
  %m1_load_53 = load double* %m1_addr_53, align 8
  %tmp_5_52_cast = sext i11 %tmp_5_13 to i12
  %tmp_6_52 = zext i12 %tmp_5_52_cast to i64
  %m2_addr_53 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_52
  %m2_load_53 = load double* %m2_addr_53, align 8
  %mult_52 = fmul double %m1_load_53, %m2_load_53
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_52, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_55 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_57) nounwind
  %sum_1_52 = fadd double %sum_1_51, %mult_52
  %tmp_58 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_54 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_53_mid2
  %m1_load_54 = load double* %m1_addr_54, align 8
  %tmp_5_53_cast = sext i11 %tmp_5_14 to i12
  %tmp_6_53 = zext i12 %tmp_5_53_cast to i64
  %m2_addr_54 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_53
  %m2_load_54 = load double* %m2_addr_54, align 8
  %mult_53 = fmul double %m1_load_54, %m2_load_54
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_53, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_56 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_58) nounwind
  %sum_1_53 = fadd double %sum_1_52, %mult_53
  %tmp_59 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_55 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_54_mid2
  %m1_load_55 = load double* %m1_addr_55, align 8
  %tmp_5_54_cast = sext i11 %tmp_5_15 to i12
  %tmp_6_54 = zext i12 %tmp_5_54_cast to i64
  %m2_addr_55 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_54
  %m2_load_55 = load double* %m2_addr_55, align 8
  %mult_54 = fmul double %m1_load_55, %m2_load_55
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_54, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_57 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_59) nounwind
  %sum_1_54 = fadd double %sum_1_53, %mult_54
  %tmp_60 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_56 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_55_mid2
  %m1_load_56 = load double* %m1_addr_56, align 8
  %tmp_5_55_cast = sext i10 %tmp_5_6 to i12
  %tmp_6_55 = zext i12 %tmp_5_55_cast to i64
  %m2_addr_56 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_55
  %m2_load_56 = load double* %m2_addr_56, align 8
  %mult_55 = fmul double %m1_load_56, %m2_load_56
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_55, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_58 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_60) nounwind
  %sum_1_55 = fadd double %sum_1_54, %mult_55
  %tmp_61 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_57 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_56_mid2
  %m1_load_57 = load double* %m1_addr_57, align 8
  %tmp_5_56_cast = sext i10 %tmp_5_9 to i12
  %tmp_6_56 = zext i12 %tmp_5_56_cast to i64
  %m2_addr_57 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_56
  %m2_load_57 = load double* %m2_addr_57, align 8
  %mult_56 = fmul double %m1_load_57, %m2_load_57
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_56, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_59 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_61) nounwind
  %sum_1_56 = fadd double %sum_1_55, %mult_56
  %tmp_62 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_58 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_57_mid2
  %m1_load_58 = load double* %m1_addr_58, align 8
  %tmp_5_57_cast = sext i10 %tmp_5_8 to i12
  %tmp_6_57 = zext i12 %tmp_5_57_cast to i64
  %m2_addr_58 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_57
  %m2_load_58 = load double* %m2_addr_58, align 8
  %mult_57 = fmul double %m1_load_58, %m2_load_58
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_57, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_60 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_62) nounwind
  %sum_1_57 = fadd double %sum_1_56, %mult_57
  %tmp_63 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_59 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_58_mid2
  %m1_load_59 = load double* %m1_addr_59, align 8
  %tmp_5_58_cast = sext i10 %tmp_5_3 to i12
  %tmp_6_58 = zext i12 %tmp_5_58_cast to i64
  %m2_addr_59 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_58
  %m2_load_59 = load double* %m2_addr_59, align 8
  %mult_58 = fmul double %m1_load_59, %m2_load_59
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_58, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_61 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_63) nounwind
  %sum_1_58 = fadd double %sum_1_57, %mult_58
  %tmp_64 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_60 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_59_mid2
  %m1_load_60 = load double* %m1_addr_60, align 8
  %tmp_5_59_cast = sext i9 %tmp_5_2 to i12
  %tmp_6_59 = zext i12 %tmp_5_59_cast to i64
  %m2_addr_60 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_59
  %m2_load_60 = load double* %m2_addr_60, align 8
  %mult_59 = fmul double %m1_load_60, %m2_load_60
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_59, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_62 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_64) nounwind
  %sum_1_59 = fadd double %sum_1_58, %mult_59
  %tmp_65 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_61 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_60_mid2
  %m1_load_61 = load double* %m1_addr_61, align 8
  %tmp_5_60_cast9 = sext i9 %tmp_5_5 to i12
  %tmp_6_60 = zext i12 %tmp_5_60_cast9 to i64
  %m2_addr_61 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_60
  %m2_load_61 = load double* %m2_addr_61, align 8
  %mult_60 = fmul double %m1_load_61, %m2_load_61
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_60, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_63 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_65) nounwind
  %sum_1_60 = fadd double %sum_1_59, %mult_60
  %tmp_66 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_62 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_61_mid2
  %m1_load_62 = load double* %m1_addr_62, align 8
  %tmp_5_61_cast8 = sext i8 %tmp_5_s to i12
  %tmp_6_61 = zext i12 %tmp_5_61_cast8 to i64
  %m2_addr_62 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_61
  %m2_load_62 = load double* %m2_addr_62, align 8
  %mult_61 = fmul double %m1_load_62, %m2_load_62
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_61, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_64 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_66) nounwind
  %sum_1_61 = fadd double %sum_1_60, %mult_61
  %tmp_67 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4) nounwind
  %m1_addr_63 = getelementptr [4096 x double]* %m1, i64 0, i64 %tmp_4_62_mid2
  %m1_load_63 = load double* %m1_addr_63, align 8
  %tmp_5_62_cast7 = sext i7 %tmp_5_1 to i12
  %tmp_6_62 = zext i12 %tmp_5_62_cast7 to i64
  %m2_addr_63 = getelementptr [4096 x double]* %m2, i64 0, i64 %tmp_6_62
  %m2_load_63 = load double* %m2_addr_63, align 8
  %mult_62 = fmul double %m1_load_63, %m2_load_63
  call void (...)* @_ssdm_op_SpecFUCore(double %mult_62, [1 x i8]* @p_str2, [4 x i8]* @p_str6, [1 x i8]* @p_str2, i32 -1, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %empty_65 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_67) nounwind
  %sum_1_62 = fadd double %sum_1_61, %mult_62
  %tmp = add i12 %j_cast5, %i_col_mid2
  %tmp_1 = zext i12 %tmp to i64
  %prod_addr = getelementptr [4096 x double]* %prod, i64 0, i64 %tmp_1
  store double %sum_1_62, double* %prod_addr, align 8
  %empty_66 = call i32 (...)* @_ssdm_op_SpecRegionEnd([7 x i8]* @p_str1, i32 %tmp_3) nounwind
  %j_1 = add i7 1, %j_mid2
  br label %1

; <label>:2                                       ; preds = %1
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecFUCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare i6 @_ssdm_op_PartSelect.i6.i7.i32.i32(i7, i32, i32) nounwind readnone

define weak i9 @_ssdm_op_BitConcatenate.i9.i2.i7(i2, i7) nounwind readnone {
entry:
  %empty = zext i2 %0 to i9
  %empty_67 = zext i7 %1 to i9
  %empty_68 = shl i9 %empty, 7
  %empty_69 = or i9 %empty_68, %empty_67
  ret i9 %empty_69
}

define weak i8 @_ssdm_op_BitConcatenate.i8.i1.i7(i1, i7) nounwind readnone {
entry:
  %empty = zext i1 %0 to i8
  %empty_70 = zext i7 %1 to i8
  %empty_71 = shl i8 %empty, 7
  %empty_72 = or i8 %empty_71, %empty_70
  ret i8 %empty_72
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i6.i6(i6, i6) nounwind readnone {
entry:
  %empty = zext i6 %0 to i12
  %empty_73 = zext i6 %1 to i12
  %empty_74 = shl i12 %empty, 6
  %empty_75 = or i12 %empty_74, %empty_73
  ret i12 %empty_75
}

define weak i12 @_ssdm_op_BitConcatenate.i12.i5.i7(i5, i7) nounwind readnone {
entry:
  %empty = zext i5 %0 to i12
  %empty_76 = zext i7 %1 to i12
  %empty_77 = shl i12 %empty, 7
  %empty_78 = or i12 %empty_77, %empty_76
  ret i12 %empty_78
}

define weak i11 @_ssdm_op_BitConcatenate.i11.i4.i7(i4, i7) nounwind readnone {
entry:
  %empty = zext i4 %0 to i11
  %empty_79 = zext i7 %1 to i11
  %empty_80 = shl i11 %empty, 7
  %empty_81 = or i11 %empty_80, %empty_79
  ret i11 %empty_81
}

define weak i10 @_ssdm_op_BitConcatenate.i10.i3.i7(i3, i7) nounwind readnone {
entry:
  %empty = zext i3 %0 to i10
  %empty_82 = zext i7 %1 to i10
  %empty_83 = shl i10 %empty, 7
  %empty_84 = or i10 %empty_83, %empty_82
  ret i10 %empty_84
}

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"double*", metadata !"double*", metadata !"double*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"m1", metadata !"m2", metadata !"prod"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 63, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"m1", metadata !11, metadata !"double", i32 0, i32 63}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 4095, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 63, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"m2", metadata !11, metadata !"double", i32 0, i32 63}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 63, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"prod", metadata !11, metadata !"double", i32 0, i32 63}
