; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@memory3 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !30), !dbg !31
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !33), !dbg !34
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  %"2" = add nsw i32 %"1", %size, !dbg !35
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !35
  ret i32 %"0", !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !38
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !40), !dbg !41
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  %"5" = add nsw i32 %"4", %size, !dbg !42
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !42
  ret i32 %"3", !dbg !43
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !44), !dbg !45
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !47), !dbg !48
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !49
  %"8" = add nsw i32 %"7", %size, !dbg !49
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !49
  ret i32 %"6", !dbg !50
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !51), !dbg !52
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !54), !dbg !55
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !56
  %"11" = add nsw i32 %"10", %size, !dbg !56
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !56
  ret i32 %"9", !dbg !57
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !59), !dbg !61
  %"12" = load i32* @"'memory3_freeIndex", align 4, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !63), !dbg !64
  %"13" = load i32* @"'memory3_freeIndex", align 4, !dbg !65
  %"14" = add nsw i32 %"13", 1, !dbg !65
  store i32 %"14", i32* @"'memory3_freeIndex", align 4, !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !68), !dbg !70
  %"15" = load i32* @"'memory2_freeIndex", align 4, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !72), !dbg !73
  %"16" = load i32* @"'memory2_freeIndex", align 4, !dbg !74
  %"17" = add nsw i32 %"16", 1, !dbg !74
  store i32 %"17", i32* @"'memory2_freeIndex", align 4, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !75), !dbg !76
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !77), !dbg !79
  %"18" = load i32* @"'memory1_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !81), !dbg !82
  %"19" = load i32* @"'memory1_freeIndex", align 4, !dbg !83
  %"20" = add nsw i32 %"19", 1, !dbg !83
  store i32 %"20", i32* @"'memory1_freeIndex", align 4, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !86), !dbg !88
  %"21" = load i32* @"'memory0_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !90), !dbg !91
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !92
  %"23" = add nsw i32 %"22", 1, !dbg !92
  store i32 %"23", i32* @"'memory0_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !93), !dbg !94
  %"24" = sext i32 %"12" to i64, !dbg !95
  %"25" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"24", !dbg !95
  store i32 1000, i32* %"25", align 4, !dbg !95
  %"26" = sext i32 %"15" to i64, !dbg !96
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !96
  store i32 1, i32* %"27", align 4, !dbg !96
  %"28" = sext i32 %"18" to i64, !dbg !97
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !97
  store i32 1, i32* %"29", align 4, !dbg !97
  %"30" = sext i32 %"21" to i64, !dbg !98
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !98
  store i32 1, i32* %"31", align 4, !dbg !98
  %"32" = sext i32 %"15" to i64, !dbg !99
  %"33" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"32", !dbg !99
  %"34" = sext i32 %"15" to i64, !dbg !99
  %"35" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"34", !dbg !99
  %"36" = sext i32 %"15" to i64, !dbg !99
  %"37" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"36", !dbg !99
  %"38" = sext i32 %"18" to i64, !dbg !99
  %"39" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"38", !dbg !99
  %"40" = sext i32 %"18" to i64, !dbg !99
  %"41" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"40", !dbg !99
  %"42" = sext i32 %"18" to i64, !dbg !99
  %"43" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"42", !dbg !99
  %"44" = sext i32 %"21" to i64, !dbg !99
  %"45" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"44", !dbg !99
  %"46" = sext i32 %"21" to i64, !dbg !99
  %"47" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"46", !dbg !99
  %"48" = sext i32 %"21" to i64, !dbg !99
  %"49" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"48", !dbg !99
  %"50" = sext i32 %"15" to i64, !dbg !102
  %"51" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"50", !dbg !102
  %"52" = sext i32 %"15" to i64, !dbg !103
  %"53" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"52", !dbg !103
  %"54" = sext i32 %"12" to i64, !dbg !103
  %"55" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"54", !dbg !103
  %"56" = load i32* %"55", align 4, !dbg !103
  %"57" = sext i32 %"15" to i64, !dbg !105
  %"58" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"57", !dbg !105
  %"59" = sext i32 %"18" to i64, !dbg !107
  %"60" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"59", !dbg !107
  %"61" = sext i32 %"18" to i64, !dbg !108
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !108
  %"63" = sext i32 %"12" to i64, !dbg !108
  %"64" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"63", !dbg !108
  %"65" = load i32* %"64", align 4, !dbg !108
  %"66" = sext i32 %"18" to i64, !dbg !110
  %"67" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"66", !dbg !110
  %"68" = sext i32 %"21" to i64, !dbg !112
  %"69" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"68", !dbg !112
  %"70" = sext i32 %"21" to i64, !dbg !113
  %"71" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"70", !dbg !113
  %"72" = sext i32 %"12" to i64, !dbg !113
  %"73" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"72", !dbg !113
  %"74" = load i32* %"73", align 4, !dbg !113
  br label %main_bb5, !dbg !115

main_bb5:                                         ; preds = %main_bb10, %main_bb4
  %"75" = load i32* %"33", align 4, !dbg !99
  %"76" = load i32* %"35", align 4, !dbg !99
  %"77" = mul nsw i32 %"75", %"76", !dbg !99
  %"78" = load i32* %"37", align 4, !dbg !99
  %"79" = mul nsw i32 %"77", %"78", !dbg !99
  %"80" = load i32* %"39", align 4, !dbg !99
  %"81" = load i32* %"41", align 4, !dbg !99
  %"82" = mul nsw i32 %"80", %"81", !dbg !99
  %"83" = load i32* %"43", align 4, !dbg !99
  %"84" = mul nsw i32 %"82", %"83", !dbg !99
  %"85" = load i32* %"45", align 4, !dbg !99
  %"86" = load i32* %"47", align 4, !dbg !99
  %"87" = mul nsw i32 %"85", %"86", !dbg !99
  %"88" = load i32* %"49", align 4, !dbg !99
  %"89" = mul nsw i32 %"87", %"88", !dbg !99
  %"90" = add nsw i32 %"84", %"89", !dbg !99
  %"91" = icmp eq i32 %"79", %"90", !dbg !99
  br i1 %"91", label %main_bb11, label %main_bb6, !dbg !99

main_bb6:                                         ; preds = %main_bb5
  %"92" = load i32* %"51", align 4, !dbg !102
  %"93" = add nsw i32 %"92", 1, !dbg !102
  store i32 %"93", i32* %"51", align 4, !dbg !102
  %"94" = load i32* %"53", align 4, !dbg !103
  %"95" = icmp sgt i32 %"94", %"56", !dbg !103
  br i1 %"95", label %main_bb7, label %main_bb8, !dbg !103

main_bb7:                                         ; preds = %main_bb6
  store i32 1, i32* %"58", align 4, !dbg !105
  %"96" = load i32* %"60", align 4, !dbg !107
  %"97" = add nsw i32 %"96", 1, !dbg !107
  store i32 %"97", i32* %"60", align 4, !dbg !107
  br label %main_bb8, !dbg !116

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %"98" = load i32* %"62", align 4, !dbg !108
  %"99" = icmp sgt i32 %"98", %"65", !dbg !108
  br i1 %"99", label %main_bb9, label %main_bb10, !dbg !108

main_bb9:                                         ; preds = %main_bb8
  store i32 1, i32* %"67", align 4, !dbg !110
  %"100" = load i32* %"69", align 4, !dbg !112
  %"101" = add nsw i32 %"100", 1, !dbg !112
  store i32 %"101", i32* %"69", align 4, !dbg !112
  br label %main_bb10, !dbg !117

main_bb10:                                        ; preds = %main_bb9, %main_bb8
  %"102" = load i32* %"71", align 4, !dbg !113
  %"103" = icmp sgt i32 %"102", %"74", !dbg !113
  br i1 %"103", label %main_bb11, label %main_bb5, !dbg !113

main_bb11:                                        ; preds = %main_bb10, %main_bb5
  %.0 = phi i32 [ 1, %main_bb5 ], [ 0, %main_bb10 ]
  ret i32 %.0, !dbg !118
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 39, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !24, metadata !25, metadata !26}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 5] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 14] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 23] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 32, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 32] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 4, metadata !21, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 4] [def]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 13, metadata !21, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 13] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 22, metadata !21, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 22] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 31, metadata !21, i32 0, i32 1, [100000 x i32]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 31] [def]
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 6]
!31 = metadata !{i32 6, i32 26, metadata !4, null}
!32 = metadata !{i32 7, i32 4, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!34 = metadata !{i32 7, i32 8, metadata !4, null}
!35 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!36 = metadata !{i32 9, i32 4, metadata !4, null}
!37 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!38 = metadata !{i32 15, i32 26, metadata !9, null}
!39 = metadata !{i32 16, i32 4, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!41 = metadata !{i32 16, i32 8, metadata !9, null}
!42 = metadata !{i32 17, i32 4, metadata !9, null}
!43 = metadata !{i32 18, i32 4, metadata !9, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!45 = metadata !{i32 24, i32 26, metadata !10, null}
!46 = metadata !{i32 25, i32 4, metadata !10, null}
!47 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!48 = metadata !{i32 25, i32 8, metadata !10, null}
!49 = metadata !{i32 26, i32 4, metadata !10, null}
!50 = metadata !{i32 27, i32 4, metadata !10, null}
!51 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 33]
!52 = metadata !{i32 33, i32 26, metadata !11, null}
!53 = metadata !{i32 34, i32 4, metadata !11, null}
!54 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 34]
!55 = metadata !{i32 34, i32 8, metadata !11, null}
!56 = metadata !{i32 35, i32 4, metadata !11, null}
!57 = metadata !{i32 36, i32 4, metadata !11, null}
!58 = metadata !{i32 1}
!59 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777249, metadata !8, i32 0, metadata !60} ; [ DW_TAG_arg_variable ] [size] [line 33]
!60 = metadata !{i32 41, i32 15, metadata !12, null}
!61 = metadata !{i32 33, i32 26, metadata !11, metadata !60}
!62 = metadata !{i32 34, i32 4, metadata !11, metadata !60}
!63 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 34, metadata !8, i32 0, metadata !60} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 34]
!64 = metadata !{i32 34, i32 8, metadata !11, metadata !60}
!65 = metadata !{i32 35, i32 4, metadata !11, metadata !60}
!66 = metadata !{i32 786688, metadata !12, metadata !"MAX", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MAX] [line 41]
!67 = metadata !{i32 41, i32 9, metadata !12, null}
!68 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [size] [line 24]
!69 = metadata !{i32 42, i32 13, metadata !12, null}
!70 = metadata !{i32 24, i32 26, metadata !10, metadata !69}
!71 = metadata !{i32 25, i32 4, metadata !10, metadata !69}
!72 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!73 = metadata !{i32 25, i32 8, metadata !10, metadata !69}
!74 = metadata !{i32 26, i32 4, metadata !10, metadata !69}
!75 = metadata !{i32 786688, metadata !12, metadata !"a", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 42]
!76 = metadata !{i32 42, i32 9, metadata !12, null}
!77 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, metadata !78} ; [ DW_TAG_arg_variable ] [size] [line 15]
!78 = metadata !{i32 43, i32 13, metadata !12, null}
!79 = metadata !{i32 15, i32 26, metadata !9, metadata !78}
!80 = metadata !{i32 16, i32 4, metadata !9, metadata !78}
!81 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, metadata !78} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!82 = metadata !{i32 16, i32 8, metadata !9, metadata !78}
!83 = metadata !{i32 17, i32 4, metadata !9, metadata !78}
!84 = metadata !{i32 786688, metadata !12, metadata !"b", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 43]
!85 = metadata !{i32 43, i32 9, metadata !12, null}
!86 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [size] [line 6]
!87 = metadata !{i32 44, i32 13, metadata !12, null}
!88 = metadata !{i32 6, i32 26, metadata !4, metadata !87}
!89 = metadata !{i32 7, i32 4, metadata !4, metadata !87}
!90 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, metadata !87} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!91 = metadata !{i32 7, i32 8, metadata !4, metadata !87}
!92 = metadata !{i32 8, i32 4, metadata !4, metadata !87} ; [ DW_TAG_imported_declaration ]
!93 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 44]
!94 = metadata !{i32 44, i32 9, metadata !12, null}
!95 = metadata !{i32 45, i32 5, metadata !12, null}
!96 = metadata !{i32 46, i32 5, metadata !12, null}
!97 = metadata !{i32 47, i32 5, metadata !12, null}
!98 = metadata !{i32 48, i32 5, metadata !12, null}
!99 = metadata !{i32 50, i32 13, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 50, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!101 = metadata !{i32 786443, metadata !1, metadata !12, i32 49, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 53, i32 9, metadata !101, null}
!103 = metadata !{i32 54, i32 13, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !101, i32 54, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!105 = metadata !{i32 55, i32 13, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !104, i32 54, i32 40, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 56, i32 13, metadata !106, null}
!108 = metadata !{i32 58, i32 13, metadata !109, null} ; [ DW_TAG_imported_module ]
!109 = metadata !{i32 786443, metadata !1, metadata !101, i32 58, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 59, i32 13, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !109, i32 58, i32 40, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 60, i32 13, metadata !111, null}
!113 = metadata !{i32 62, i32 13, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !101, i32 62, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!115 = metadata !{i32 49, i32 5, metadata !12, null}
!116 = metadata !{i32 57, i32 9, metadata !106, null}
!117 = metadata !{i32 61, i32 9, metadata !111, null}
!118 = metadata !{i32 67, i32 1, metadata !12, null}

