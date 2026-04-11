; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !29
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !31), !dbg !32
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  %"2" = add nsw i32 %"1", %size, !dbg !33
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !33
  ret i32 %"0", !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !35), !dbg !36
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !38), !dbg !39
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !40
  %"5" = add nsw i32 %"4", %size, !dbg !40
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !40
  ret i32 %"3", !dbg !41
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !42), !dbg !43
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !45), !dbg !46
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !47
  %"8" = add nsw i32 %"7", %size, !dbg !47
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !47
  ret i32 %"6", !dbg !48
}

; Function Attrs: nounwind uwtable
define i32 @iterate(i32 %bound) #0 {
iterate_bb3:
  call void @llvm.dbg.value(metadata !{i32 %bound}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !54
  %"9" = load i32* @"'memory2_freeIndex", align 4, !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !56), !dbg !57
  %"10" = load i32* @"'memory2_freeIndex", align 4, !dbg !58
  %"11" = add nsw i32 %"10", 1, !dbg !58
  store i32 %"11", i32* @"'memory2_freeIndex", align 4, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !59), !dbg !60
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !61), !dbg !63
  %"12" = load i32* @"'memory1_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !65), !dbg !66
  %"13" = load i32* @"'memory1_freeIndex", align 4, !dbg !67
  %"14" = add nsw i32 %"13", 1, !dbg !67
  store i32 %"14", i32* @"'memory1_freeIndex", align 4, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !70), !dbg !72
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !74), !dbg !75
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !76
  %"17" = add nsw i32 %"16", 1, !dbg !76
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !77), !dbg !78
  %"18" = sext i32 %"9" to i64, !dbg !79
  %"19" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"18", !dbg !79
  store i32 %bound, i32* %"19", align 4, !dbg !79
  %"20" = sext i32 %"15" to i64, !dbg !80
  %"21" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"20", !dbg !80
  store i32 0, i32* %"21", align 4, !dbg !80
  %"22" = sext i32 %"12" to i64, !dbg !81
  %"23" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"22", !dbg !81
  store i32 0, i32* %"23", align 4, !dbg !81
  %"24" = sext i32 %"12" to i64, !dbg !83
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !83
  %"26" = sext i32 %"9" to i64, !dbg !83
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !83
  %"28" = load i32* %"27", align 4, !dbg !83
  %"29" = sext i32 %"12" to i64, !dbg !86
  %"30" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"29", !dbg !86
  %"31" = sext i32 %"15" to i64, !dbg !86
  %"32" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"31", !dbg !86
  %"33" = sext i32 %"12" to i64, !dbg !88
  %"34" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"33", !dbg !88
  br label %iterate_bb4, !dbg !81

iterate_bb4:                                      ; preds = %iterate_bb5, %iterate_bb3
  %"35" = load i32* %"25", align 4, !dbg !83
  %"36" = icmp slt i32 %"35", %"28", !dbg !83
  br i1 %"36", label %iterate_bb5, label %iterate_bb6, !dbg !83

iterate_bb5:                                      ; preds = %iterate_bb4
  %"37" = load i32* %"30", align 4, !dbg !86
  %"38" = load i32* %"32", align 4, !dbg !86
  %"39" = add nsw i32 %"38", %"37", !dbg !86
  store i32 %"39", i32* %"32", align 4, !dbg !86
  %"40" = load i32* %"34", align 4, !dbg !88
  %"41" = add nsw i32 %"40", 1, !dbg !88
  store i32 %"41", i32* %"34", align 4, !dbg !88
  br label %iterate_bb4, !dbg !88

iterate_bb6:                                      ; preds = %iterate_bb4
  %"42" = sext i32 %"15" to i64, !dbg !89
  %"43" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"42", !dbg !89
  %"44" = load i32* %"43", align 4, !dbg !89
  ret i32 %"44", !dbg !89
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"45" = call i32 @__VERIFIER_nondet_int(), !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !91), !dbg !93
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !94), !dbg !96
  %"46" = load i32* @"'memory2_freeIndex", align 4, !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !98), !dbg !99
  %"47" = load i32* @"'memory2_freeIndex", align 4, !dbg !100
  %"48" = add nsw i32 %"47", 1, !dbg !100
  store i32 %"48", i32* @"'memory2_freeIndex", align 4, !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !101), !dbg !102
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !103), !dbg !105
  %"49" = load i32* @"'memory1_freeIndex", align 4, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !107), !dbg !108
  %"50" = load i32* @"'memory1_freeIndex", align 4, !dbg !109
  %"51" = add nsw i32 %"50", 1, !dbg !109
  store i32 %"51", i32* @"'memory1_freeIndex", align 4, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !110), !dbg !111
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !112), !dbg !114
  %"52" = load i32* @"'memory0_freeIndex", align 4, !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !116), !dbg !117
  %"53" = load i32* @"'memory0_freeIndex", align 4, !dbg !118
  %"54" = add nsw i32 %"53", 1, !dbg !118
  store i32 %"54", i32* @"'memory0_freeIndex", align 4, !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !119), !dbg !120
  %"55" = sext i32 %"46" to i64, !dbg !121
  %"56" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"55", !dbg !121
  store i32 %"45", i32* %"56", align 4, !dbg !121
  %"57" = sext i32 %"52" to i64, !dbg !122
  %"58" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"57", !dbg !122
  store i32 0, i32* %"58", align 4, !dbg !122
  %"59" = sext i32 %"49" to i64, !dbg !123
  %"60" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"59", !dbg !123
  store i32 0, i32* %"60", align 4, !dbg !123
  %"61" = sext i32 %"49" to i64, !dbg !124
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !124
  %"63" = sext i32 %"46" to i64, !dbg !124
  %"64" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"63", !dbg !124
  %"65" = load i32* %"64", align 4, !dbg !124
  %"66" = sext i32 %"49" to i64, !dbg !125
  %"67" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"66", !dbg !125
  %"68" = sext i32 %"52" to i64, !dbg !125
  %"69" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"68", !dbg !125
  %"70" = sext i32 %"49" to i64, !dbg !126
  %"71" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"70", !dbg !126
  br label %main_bb8, !dbg !123

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %"72" = load i32* %"62", align 4, !dbg !124
  %"73" = icmp slt i32 %"72", %"65", !dbg !124
  br i1 %"73", label %main_bb9, label %main_iterate.exit, !dbg !124

main_bb9:                                         ; preds = %main_bb8
  %"74" = load i32* %"67", align 4, !dbg !125
  %"75" = load i32* %"69", align 4, !dbg !125
  %"76" = add nsw i32 %"75", %"74", !dbg !125
  store i32 %"76", i32* %"69", align 4, !dbg !125
  %"77" = load i32* %"71", align 4, !dbg !126
  %"78" = add nsw i32 %"77", 1, !dbg !126
  store i32 %"78", i32* %"71", align 4, !dbg !126
  br label %main_bb8, !dbg !126

main_iterate.exit:                                ; preds = %main_bb8
  %"79" = sext i32 %"52" to i64, !dbg !127
  %"80" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"79", !dbg !127
  %"81" = load i32* %"80", align 4, !dbg !127
  ret i32 %"81", !dbg !92
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"iterate", metadata !"iterate", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @iterate, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [iterate]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 45, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 45} ; [ DW_TAG_subprogram ] [line 45] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !23, metadata !24}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !20, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!29 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!30 = metadata !{i32 9, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!32 = metadata !{i32 9, i32 8, metadata !4, null}
!33 = metadata !{i32 10, i32 4, metadata !4, null}
!34 = metadata !{i32 11, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!36 = metadata !{i32 17, i32 26, metadata !9, null}
!37 = metadata !{i32 18, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!39 = metadata !{i32 18, i32 8, metadata !9, null}
!40 = metadata !{i32 19, i32 4, metadata !9, null}
!41 = metadata !{i32 20, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!43 = metadata !{i32 26, i32 26, metadata !10, null}
!44 = metadata !{i32 27, i32 4, metadata !10, null}
!45 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!46 = metadata !{i32 27, i32 8, metadata !10, null}
!47 = metadata !{i32 28, i32 4, metadata !10, null}
!48 = metadata !{i32 29, i32 4, metadata !10, null}
!49 = metadata !{i32 786689, metadata !11, metadata !"bound", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bound] [line 32]
!50 = metadata !{i32 32, i32 17, metadata !11, null}
!51 = metadata !{i32 1}
!52 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !53} ; [ DW_TAG_arg_variable ] [size] [line 26]
!53 = metadata !{i32 34, i32 21, metadata !11, null}
!54 = metadata !{i32 26, i32 26, metadata !10, metadata !53}
!55 = metadata !{i32 27, i32 4, metadata !10, metadata !53}
!56 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !53} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!57 = metadata !{i32 27, i32 8, metadata !10, metadata !53}
!58 = metadata !{i32 28, i32 4, metadata !10, metadata !53}
!59 = metadata !{i32 786688, metadata !11, metadata !"bound_ref", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound_ref] [line 34]
!60 = metadata !{i32 34, i32 9, metadata !11, null}
!61 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [size] [line 17]
!62 = metadata !{i32 35, i32 13, metadata !11, null}
!63 = metadata !{i32 17, i32 26, metadata !9, metadata !62}
!64 = metadata !{i32 18, i32 4, metadata !9, metadata !62}
!65 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !62} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!66 = metadata !{i32 18, i32 8, metadata !9, metadata !62}
!67 = metadata !{i32 19, i32 4, metadata !9, metadata !62}
!68 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 35]
!69 = metadata !{i32 35, i32 9, metadata !11, null}
!70 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !71} ; [ DW_TAG_arg_variable ] [size] [line 8]
!71 = metadata !{i32 36, i32 15, metadata !11, null}
!72 = metadata !{i32 8, i32 26, metadata !4, metadata !71} ; [ DW_TAG_imported_declaration ]
!73 = metadata !{i32 9, i32 4, metadata !4, metadata !71}
!74 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !71} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!75 = metadata !{i32 9, i32 8, metadata !4, metadata !71}
!76 = metadata !{i32 10, i32 4, metadata !4, metadata !71}
!77 = metadata !{i32 786688, metadata !11, metadata !"sum", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 36]
!78 = metadata !{i32 36, i32 9, metadata !11, null}
!79 = metadata !{i32 37, i32 5, metadata !11, null}
!80 = metadata !{i32 38, i32 5, metadata !11, null}
!81 = metadata !{i32 39, i32 10, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !11, i32 39, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 39, i32 10, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 39, i32 10, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 786443, metadata !1, metadata !82, i32 39, i32 10, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 40, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !82, i32 39, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 39, i32 59, metadata !82, null}
!89 = metadata !{i32 42, i32 5, metadata !11, null}
!90 = metadata !{i32 46, i32 18, metadata !12, null}
!91 = metadata !{i32 786689, metadata !11, metadata !"bound", metadata !5, i32 16777248, metadata !8, i32 0, metadata !92} ; [ DW_TAG_arg_variable ] [bound] [line 32]
!92 = metadata !{i32 46, i32 10, metadata !12, null}
!93 = metadata !{i32 32, i32 17, metadata !11, metadata !92}
!94 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [size] [line 26]
!95 = metadata !{i32 34, i32 21, metadata !11, metadata !92}
!96 = metadata !{i32 26, i32 26, metadata !10, metadata !95}
!97 = metadata !{i32 27, i32 4, metadata !10, metadata !95}
!98 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!99 = metadata !{i32 27, i32 8, metadata !10, metadata !95}
!100 = metadata !{i32 28, i32 4, metadata !10, metadata !95}
!101 = metadata !{i32 786688, metadata !11, metadata !"bound_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [bound_ref] [line 34]
!102 = metadata !{i32 34, i32 9, metadata !11, metadata !92}
!103 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [size] [line 17]
!104 = metadata !{i32 35, i32 13, metadata !11, metadata !92}
!105 = metadata !{i32 17, i32 26, metadata !9, metadata !104}
!106 = metadata !{i32 18, i32 4, metadata !9, metadata !104}
!107 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!108 = metadata !{i32 18, i32 8, metadata !9, metadata !104}
!109 = metadata !{i32 19, i32 4, metadata !9, metadata !104}
!110 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 35, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [i] [line 35]
!111 = metadata !{i32 35, i32 9, metadata !11, metadata !92}
!112 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !113} ; [ DW_TAG_arg_variable ] [size] [line 8]
!113 = metadata !{i32 36, i32 15, metadata !11, metadata !92}
!114 = metadata !{i32 8, i32 26, metadata !4, metadata !113} ; [ DW_TAG_imported_declaration ]
!115 = metadata !{i32 9, i32 4, metadata !4, metadata !113}
!116 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !113} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!117 = metadata !{i32 9, i32 8, metadata !4, metadata !113}
!118 = metadata !{i32 10, i32 4, metadata !4, metadata !113}
!119 = metadata !{i32 786688, metadata !11, metadata !"sum", metadata !5, i32 36, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [sum] [line 36]
!120 = metadata !{i32 36, i32 9, metadata !11, metadata !92}
!121 = metadata !{i32 37, i32 5, metadata !11, metadata !92}
!122 = metadata !{i32 38, i32 5, metadata !11, metadata !92}
!123 = metadata !{i32 39, i32 10, metadata !82, metadata !92}
!124 = metadata !{i32 39, i32 10, metadata !84, metadata !92}
!125 = metadata !{i32 40, i32 9, metadata !87, metadata !92}
!126 = metadata !{i32 39, i32 59, metadata !82, metadata !92}
!127 = metadata !{i32 42, i32 5, metadata !11, metadata !92}

