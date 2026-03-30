; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@"'memory4_freeIndex" = global i32 1, align 4
@"'memory5_freeIndex" = global i32 1, align 4
@"'memory6_freeIndex" = global i32 1, align 4
@memory5 = common global [100000 x i8] zeroinitializer, align 16
@memory6 = common global [100000 x i8] zeroinitializer, align 16
@memory4 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory2 = common global [100000 x i8] zeroinitializer, align 16
@memory3 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !43), !dbg !44
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !46), !dbg !47
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !48
  %"2" = add nsw i32 %"1", %size, !dbg !48
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !48
  ret i32 %"0", !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !50), !dbg !51
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !53), !dbg !54
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !55
  %"5" = add nsw i32 %"4", %size, !dbg !55
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !55
  ret i32 %"3", !dbg !56
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !57), !dbg !58
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !60), !dbg !61
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !62
  %"8" = add nsw i32 %"7", %size, !dbg !62
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !62
  ret i32 %"6", !dbg !63
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !64), !dbg !65
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !67), !dbg !68
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !69
  %"11" = add nsw i32 %"10", %size, !dbg !69
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !69
  ret i32 %"9", !dbg !70
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory4(i32 %size) #0 {
allocate_memory4_bb4:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !71), !dbg !72
  %"12" = load i32* @"'memory4_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !74), !dbg !75
  %"13" = load i32* @"'memory4_freeIndex", align 4, !dbg !76
  %"14" = add nsw i32 %"13", %size, !dbg !76
  store i32 %"14", i32* @"'memory4_freeIndex", align 4, !dbg !76
  ret i32 %"12", !dbg !77
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory5(i32 %size) #0 {
allocate_memory5_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !78), !dbg !79
  %"15" = load i32* @"'memory5_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !81), !dbg !82
  %"16" = load i32* @"'memory5_freeIndex", align 4, !dbg !83
  %"17" = add nsw i32 %"16", %size, !dbg !83
  store i32 %"17", i32* @"'memory5_freeIndex", align 4, !dbg !83
  ret i32 %"15", !dbg !84
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory6(i32 %size) #0 {
allocate_memory6_bb6:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !85), !dbg !86
  %"18" = load i32* @"'memory6_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !88), !dbg !89
  %"19" = load i32* @"'memory6_freeIndex", align 4, !dbg !90
  %"20" = add nsw i32 %"19", %size, !dbg !90
  store i32 %"20", i32* @"'memory6_freeIndex", align 4, !dbg !90
  ret i32 %"18", !dbg !91
}

; Function Attrs: nounwind uwtable
define i32 @cstrncpy(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncpy_bb7:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !92), !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !94), !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !96), !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !98), !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !96), !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !98), !dbg !99
  br label %cstrncpy_bb8, !dbg !102

cstrncpy_bb8:                                     ; preds = %cstrncpy_bb9, %cstrncpy_bb7
  %src.0 = phi i32 [ %s2, %cstrncpy_bb7 ], [ %"23", %cstrncpy_bb9 ]
  %dst.0 = phi i32 [ %s1, %cstrncpy_bb7 ], [ %"27", %cstrncpy_bb9 ]
  %.0 = phi i32 [ %n, %cstrncpy_bb7 ], [ %"22", %cstrncpy_bb9 ]
  %"21" = icmp sgt i32 %.0, 0, !dbg !103
  br i1 %"21", label %cstrncpy_bb9, label %cstrncpy_bb12, !dbg !103

cstrncpy_bb9:                                     ; preds = %cstrncpy_bb8
  %"22" = add nsw i32 %.0, -1, !dbg !105
  %"23" = add nsw i32 %src.0, 1, !dbg !107
  %"24" = sext i32 %src.0 to i64, !dbg !107
  %"25" = getelementptr inbounds [100000 x i8]* @memory5, i32 0, i64 %"24", !dbg !107
  %"26" = load i8* %"25", align 1, !dbg !107
  %"27" = add nsw i32 %dst.0, 1, !dbg !107
  %"28" = sext i32 %dst.0 to i64, !dbg !107
  %"29" = getelementptr inbounds [100000 x i8]* @memory6, i32 0, i64 %"28", !dbg !107
  store i8 %"26", i8* %"29", align 1, !dbg !107
  %"30" = sext i8 %"26" to i32, !dbg !107
  %"31" = icmp eq i32 %"30", 0, !dbg !107
  br i1 %"31", label %cstrncpy_bb10, label %cstrncpy_bb8, !dbg !107

cstrncpy_bb10:                                    ; preds = %cstrncpy_bb9, %cstrncpy_bb11
  %us.0 = phi i32 [ %"34", %cstrncpy_bb11 ], [ %"27", %cstrncpy_bb9 ]
  %n2.0 = phi i32 [ %"32", %cstrncpy_bb11 ], [ %"22", %cstrncpy_bb9 ]
  %"32" = add nsw i32 %n2.0, -1, !dbg !109
  %"33" = icmp ne i32 %n2.0, 0, !dbg !109
  br i1 %"33", label %cstrncpy_bb11, label %cstrncpy_bb12, !dbg !109

cstrncpy_bb11:                                    ; preds = %cstrncpy_bb10
  %"34" = add nsw i32 %us.0, 1, !dbg !112
  %"35" = sext i32 %us.0 to i64, !dbg !112
  %"36" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"35", !dbg !112
  store i8 0, i8* %"36", align 1, !dbg !112
  br label %cstrncpy_bb10, !dbg !112

cstrncpy_bb12:                                    ; preds = %cstrncpy_bb10, %cstrncpy_bb8
  ret i32 %s1, !dbg !113
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb13:
  %"37" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !114), !dbg !115
  %"38" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !116), !dbg !117
  %"39" = call i32 @__VERIFIER_nondet_int(), !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !119), !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !121), !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !124), !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !126), !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !128), !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !130), !dbg !131
  br label %main_bb14, !dbg !132

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %src.0.i = phi i32 [ %"38", %main_bb13 ], [ %"42", %main_bb15 ], !dbg !122
  %dst.0.i = phi i32 [ %"37", %main_bb13 ], [ %"46", %main_bb15 ], !dbg !122
  %.0.i = phi i32 [ %"39", %main_bb13 ], [ %"41", %main_bb15 ], !dbg !122
  %"40" = icmp sgt i32 %.0.i, 0, !dbg !133
  br i1 %"40", label %main_bb15, label %main_cstrncpy.exit, !dbg !133

main_bb15:                                        ; preds = %main_bb14
  %"41" = add nsw i32 %.0.i, -1, !dbg !134
  %"42" = add nsw i32 %src.0.i, 1, !dbg !135
  %"43" = sext i32 %src.0.i to i64, !dbg !135
  %"44" = getelementptr inbounds [100000 x i8]* @memory5, i32 0, i64 %"43", !dbg !135
  %"45" = load i8* %"44", align 1, !dbg !135
  %"46" = add nsw i32 %dst.0.i, 1, !dbg !135
  %"47" = sext i32 %dst.0.i to i64, !dbg !135
  %"48" = getelementptr inbounds [100000 x i8]* @memory6, i32 0, i64 %"47", !dbg !135
  store i8 %"45", i8* %"48", align 1, !dbg !135
  %"49" = sext i8 %"45" to i32, !dbg !135
  %"50" = icmp eq i32 %"49", 0, !dbg !135
  br i1 %"50", label %main_bb16, label %main_bb14, !dbg !135

main_bb16:                                        ; preds = %main_bb17, %main_bb15
  %us.0.i = phi i32 [ %"53", %main_bb17 ], [ %"46", %main_bb15 ], !dbg !122
  %n2.0.i = phi i32 [ %"51", %main_bb17 ], [ %"41", %main_bb15 ], !dbg !122
  %"51" = add nsw i32 %n2.0.i, -1, !dbg !136
  %"52" = icmp ne i32 %n2.0.i, 0, !dbg !136
  br i1 %"52", label %main_bb17, label %main_cstrncpy.exit, !dbg !136

main_bb17:                                        ; preds = %main_bb16
  %"53" = add nsw i32 %us.0.i, 1, !dbg !137
  %"54" = sext i32 %us.0.i to i64, !dbg !137
  %"55" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"54", !dbg !137
  store i8 0, i8* %"55", align 1, !dbg !137
  br label %main_bb16, !dbg !137

main_cstrncpy.exit:                               ; preds = %main_bb14, %main_bb16
  ret i32 0, !dbg !138
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!40, !41}
!llvm.ident = !{!42}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !21, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !18}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory4", metadata !"allocate_memory4", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory4, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 42] [def] [allocate_memory4]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory5", metadata !"allocate_memory5", metadata !"", i32 51, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory5, null, null, metadata !2, i32 51} ; [ DW_TAG_subprogram ] [line 51] [def] [allocate_memory5]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory6", metadata !"allocate_memory6", metadata !"", i32 60, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory6, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 60] [def] [allocate_memory6]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncpy", metadata !"cstrncpy", metadata !"", i32 66, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncpy, null, null, metadata !2, i32 67} ; [ DW_TAG_subprogram ] [line 66] [def] [scope 67] [cstrncpy]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 89, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 89} ; [ DW_TAG_subprogram ] [line 89] [def] [main]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !8}
!21 = metadata !{metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39}
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 5] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 14] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 23] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 32, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 32] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory4_freeIndex", metadata !"memory4_freeIndex", metadata !"", metadata !5, i32 41, metadata !8, i32 0, i32 1, i32* @"'memory4_freeIndex", null} ; [ DW_TAG_variable ] [memory4_freeIndex] [line 41] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory5_freeIndex", metadata !"memory5_freeIndex", metadata !"", metadata !5, i32 50, metadata !8, i32 0, i32 1, i32* @"'memory5_freeIndex", null} ; [ DW_TAG_variable ] [memory5_freeIndex] [line 50] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory6_freeIndex", metadata !"memory6_freeIndex", metadata !"", metadata !5, i32 59, metadata !8, i32 0, i32 1, i32* @"'memory6_freeIndex", null} ; [ DW_TAG_variable ] [memory6_freeIndex] [line 59] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 4, metadata !30, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 4] [def]
!30 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !31, metadata !32, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!31 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!32 = metadata !{metadata !33}
!33 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!34 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 13, metadata !30, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 13] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 22, metadata !30, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 22] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 31, metadata !30, i32 0, i32 1, [100000 x i8]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 31] [def]
!37 = metadata !{i32 786484, i32 0, null, metadata !"memory4", metadata !"memory4", metadata !"", metadata !5, i32 40, metadata !30, i32 0, i32 1, [100000 x i8]* @memory4, null} ; [ DW_TAG_variable ] [memory4] [line 40] [def]
!38 = metadata !{i32 786484, i32 0, null, metadata !"memory5", metadata !"memory5", metadata !"", metadata !5, i32 49, metadata !30, i32 0, i32 1, [100000 x i8]* @memory5, null} ; [ DW_TAG_variable ] [memory5] [line 49] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"memory6", metadata !"memory6", metadata !"", metadata !5, i32 58, metadata !30, i32 0, i32 1, [100000 x i8]* @memory6, null} ; [ DW_TAG_variable ] [memory6] [line 58] [def]
!40 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!41 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!42 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!43 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 6]
!44 = metadata !{i32 6, i32 26, metadata !4, null}
!45 = metadata !{i32 7, i32 4, metadata !4, null}
!46 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!47 = metadata !{i32 7, i32 8, metadata !4, null}
!48 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!49 = metadata !{i32 9, i32 4, metadata !4, null}
!50 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!51 = metadata !{i32 15, i32 26, metadata !9, null}
!52 = metadata !{i32 16, i32 4, metadata !9, null}
!53 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!54 = metadata !{i32 16, i32 8, metadata !9, null}
!55 = metadata !{i32 17, i32 4, metadata !9, null}
!56 = metadata !{i32 18, i32 4, metadata !9, null}
!57 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!58 = metadata !{i32 24, i32 26, metadata !10, null}
!59 = metadata !{i32 25, i32 4, metadata !10, null}
!60 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!61 = metadata !{i32 25, i32 8, metadata !10, null}
!62 = metadata !{i32 26, i32 4, metadata !10, null}
!63 = metadata !{i32 27, i32 4, metadata !10, null}
!64 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 33]
!65 = metadata !{i32 33, i32 26, metadata !11, null}
!66 = metadata !{i32 34, i32 4, metadata !11, null}
!67 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 34]
!68 = metadata !{i32 34, i32 8, metadata !11, null}
!69 = metadata !{i32 35, i32 4, metadata !11, null}
!70 = metadata !{i32 36, i32 4, metadata !11, null}
!71 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 42]
!72 = metadata !{i32 42, i32 26, metadata !12, null}
!73 = metadata !{i32 43, i32 4, metadata !12, null}
!74 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 43]
!75 = metadata !{i32 43, i32 8, metadata !12, null}
!76 = metadata !{i32 44, i32 4, metadata !12, null}
!77 = metadata !{i32 45, i32 4, metadata !12, null}
!78 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777267, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 51]
!79 = metadata !{i32 51, i32 26, metadata !13, null}
!80 = metadata !{i32 52, i32 4, metadata !13, null}
!81 = metadata !{i32 786688, metadata !13, metadata !"allocatedIndex", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 52]
!82 = metadata !{i32 52, i32 8, metadata !13, null}
!83 = metadata !{i32 53, i32 4, metadata !13, null}
!84 = metadata !{i32 54, i32 4, metadata !13, null}
!85 = metadata !{i32 786689, metadata !14, metadata !"size", metadata !5, i32 16777276, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 60]
!86 = metadata !{i32 60, i32 26, metadata !14, null}
!87 = metadata !{i32 61, i32 4, metadata !14, null}
!88 = metadata !{i32 786688, metadata !14, metadata !"allocatedIndex", metadata !5, i32 61, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 61]
!89 = metadata !{i32 61, i32 8, metadata !14, null}
!90 = metadata !{i32 62, i32 4, metadata !14, null}
!91 = metadata !{i32 63, i32 4, metadata !14, null}
!92 = metadata !{i32 786689, metadata !15, metadata !"s1", metadata !5, i32 16777282, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 66]
!93 = metadata !{i32 66, i32 19, metadata !15, null}
!94 = metadata !{i32 786689, metadata !15, metadata !"s2", metadata !5, i32 33554498, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 66]
!95 = metadata !{i32 66, i32 27, metadata !15, null}
!96 = metadata !{i32 786689, metadata !15, metadata !"n", metadata !5, i32 50331714, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 66]
!97 = metadata !{i32 66, i32 35, metadata !15, null}
!98 = metadata !{i32 786688, metadata !15, metadata !"dst", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 68]
!99 = metadata !{i32 68, i32 10, metadata !15, null}
!100 = metadata !{i32 786688, metadata !15, metadata !"src", metadata !5, i32 69, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 69]
!101 = metadata !{i32 69, i32 10, metadata !15, null}
!102 = metadata !{i32 73, i32 6, metadata !15, null}
!103 = metadata !{i32 73, i32 6, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !15, i32 73, i32 6, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!105 = metadata !{i32 74, i32 10, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !15, i32 73, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 75, i32 14, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !106, i32 75, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!109 = metadata !{i32 81, i32 14, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !111, i32 81, i32 14, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!111 = metadata !{i32 786443, metadata !1, metadata !108, i32 75, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 82, i32 18, metadata !111, null}
!113 = metadata !{i32 86, i32 6, metadata !15, null}
!114 = metadata !{i32 786688, metadata !18, metadata !"s1", metadata !5, i32 90, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 90]
!115 = metadata !{i32 90, i32 7, metadata !18, null}
!116 = metadata !{i32 786688, metadata !18, metadata !"s2", metadata !5, i32 91, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 91]
!117 = metadata !{i32 91, i32 7, metadata !18, null}
!118 = metadata !{i32 92, i32 11, metadata !18, null}
!119 = metadata !{i32 786688, metadata !18, metadata !"n", metadata !5, i32 92, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 92]
!120 = metadata !{i32 92, i32 7, metadata !18, null}
!121 = metadata !{i32 786689, metadata !15, metadata !"s1", metadata !5, i32 16777282, metadata !8, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [s1] [line 66]
!122 = metadata !{i32 93, i32 3, metadata !18, null}
!123 = metadata !{i32 66, i32 19, metadata !15, metadata !122}
!124 = metadata !{i32 786689, metadata !15, metadata !"s2", metadata !5, i32 33554498, metadata !8, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [s2] [line 66]
!125 = metadata !{i32 66, i32 27, metadata !15, metadata !122}
!126 = metadata !{i32 786689, metadata !15, metadata !"n", metadata !5, i32 50331714, metadata !8, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [n] [line 66]
!127 = metadata !{i32 66, i32 35, metadata !15, metadata !122}
!128 = metadata !{i32 786688, metadata !15, metadata !"dst", metadata !5, i32 68, metadata !8, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [dst] [line 68]
!129 = metadata !{i32 68, i32 10, metadata !15, metadata !122}
!130 = metadata !{i32 786688, metadata !15, metadata !"src", metadata !5, i32 69, metadata !8, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [src] [line 69]
!131 = metadata !{i32 69, i32 10, metadata !15, metadata !122}
!132 = metadata !{i32 73, i32 6, metadata !15, metadata !122}
!133 = metadata !{i32 73, i32 6, metadata !104, metadata !122}
!134 = metadata !{i32 74, i32 10, metadata !106, metadata !122}
!135 = metadata !{i32 75, i32 14, metadata !108, metadata !122}
!136 = metadata !{i32 81, i32 14, metadata !110, metadata !122}
!137 = metadata !{i32 82, i32 18, metadata !111, metadata !122}
!138 = metadata !{i32 94, i32 3, metadata !18, null}

