; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !27), !dbg !28
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !30), !dbg !31
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  %"2" = add nsw i32 %"1", %size, !dbg !32
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !32
  ret i32 %"0", !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !35
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !37), !dbg !38
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  %"5" = add nsw i32 %"4", %size, !dbg !39
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !39
  ret i32 %"3", !dbg !40
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !41), !dbg !42
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !44), !dbg !45
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !46
  %"8" = add nsw i32 %"7", %size, !dbg !46
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !46
  ret i32 %"6", !dbg !47
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !49), !dbg !51
  %"9" = load i32* @"'memory2_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !53), !dbg !54
  %"10" = load i32* @"'memory2_freeIndex", align 4, !dbg !55
  %"11" = add nsw i32 %"10", 1, !dbg !55
  store i32 %"11", i32* @"'memory2_freeIndex", align 4, !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !58), !dbg !60
  %"12" = load i32* @"'memory1_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !62), !dbg !63
  %"13" = load i32* @"'memory1_freeIndex", align 4, !dbg !64
  %"14" = add nsw i32 %"13", 1, !dbg !64
  store i32 %"14", i32* @"'memory1_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !67), !dbg !69
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !71), !dbg !72
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !73
  %"17" = add nsw i32 %"16", 1, !dbg !73
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !74), !dbg !75
  %"18" = sext i32 %"15" to i64, !dbg !76
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !76
  store i32 0, i32* %"19", align 4, !dbg !76
  %"20" = sext i32 %"9" to i64, !dbg !77
  %"21" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"20", !dbg !77
  store i32 0, i32* %"21", align 4, !dbg !77
  %"22" = sext i32 %"9" to i64, !dbg !79
  %"23" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"22", !dbg !79
  %"24" = sext i32 %"15" to i64, !dbg !82
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !82
  %"26" = sext i32 %"15" to i64, !dbg !82
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !82
  %"28" = sext i32 %"9" to i64, !dbg !84
  %"29" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"28", !dbg !84
  br label %main_bb4, !dbg !77

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %"30" = load i32* %"23", align 4, !dbg !79
  %"31" = icmp slt i32 %"30", 100, !dbg !79
  br i1 %"31", label %main_bb5, label %main_bb6, !dbg !79

main_bb5:                                         ; preds = %main_bb4
  %"32" = load i32* %"25", align 4, !dbg !82
  %"33" = add nsw i32 %"32", 1, !dbg !82
  store i32 %"33", i32* %"27", align 4, !dbg !82
  %"34" = load i32* %"29", align 4, !dbg !84
  %"35" = add nsw i32 %"34", 1, !dbg !84
  store i32 %"35", i32* %"29", align 4, !dbg !84
  br label %main_bb4, !dbg !84

main_bb6:                                         ; preds = %main_bb4
  %"36" = sext i32 %"12" to i64, !dbg !86
  %"37" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"36", !dbg !86
  store i32 5, i32* %"37", align 4, !dbg !86
  %"38" = sext i32 %"12" to i64, !dbg !88
  %"39" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"38", !dbg !88
  %"40" = sext i32 %"15" to i64, !dbg !91
  %"41" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"40", !dbg !91
  %"42" = sext i32 %"15" to i64, !dbg !91
  %"43" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"42", !dbg !91
  %"44" = sext i32 %"12" to i64, !dbg !93
  %"45" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"44", !dbg !93
  br label %main_bb7, !dbg !86

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %"46" = load i32* %"39", align 4, !dbg !88
  %"47" = icmp slt i32 %"46", 21, !dbg !88
  br i1 %"47", label %main_bb8, label %main_bb9, !dbg !88

main_bb8:                                         ; preds = %main_bb7
  %"48" = load i32* %"41", align 4, !dbg !91
  %"49" = add nsw i32 %"48", 1, !dbg !91
  store i32 %"49", i32* %"43", align 4, !dbg !91
  %"50" = load i32* %"45", align 4, !dbg !93
  %"51" = add nsw i32 %"50", 3, !dbg !93
  store i32 %"51", i32* %"45", align 4, !dbg !93
  br label %main_bb7, !dbg !93

main_bb9:                                         ; preds = %main_bb7
  %"52" = sext i32 %"15" to i64, !dbg !95
  %"53" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"52", !dbg !95
  %"54" = load i32* %"53", align 4, !dbg !95
  ret i32 %"54", !dbg !95
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 30, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [main]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8}
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !18, metadata !22, metadata !23}
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 5] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 14] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 23] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 4, metadata !19, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 4] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 13, metadata !19, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 13] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 22, metadata !19, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 22] [def]
!24 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!25 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!26 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!27 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 6]
!28 = metadata !{i32 6, i32 26, metadata !4, null}
!29 = metadata !{i32 7, i32 4, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!31 = metadata !{i32 7, i32 8, metadata !4, null}
!32 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!33 = metadata !{i32 9, i32 4, metadata !4, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!35 = metadata !{i32 15, i32 26, metadata !9, null}
!36 = metadata !{i32 16, i32 4, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!38 = metadata !{i32 16, i32 8, metadata !9, null}
!39 = metadata !{i32 17, i32 4, metadata !9, null}
!40 = metadata !{i32 18, i32 4, metadata !9, null}
!41 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!42 = metadata !{i32 24, i32 26, metadata !10, null}
!43 = metadata !{i32 25, i32 4, metadata !10, null}
!44 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!45 = metadata !{i32 25, i32 8, metadata !10, null}
!46 = metadata !{i32 26, i32 4, metadata !10, null}
!47 = metadata !{i32 27, i32 4, metadata !10, null}
!48 = metadata !{i32 1}
!49 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, metadata !50} ; [ DW_TAG_arg_variable ] [size] [line 24]
!50 = metadata !{i32 32, i32 13, metadata !11, null}
!51 = metadata !{i32 24, i32 26, metadata !10, metadata !50}
!52 = metadata !{i32 25, i32 4, metadata !10, metadata !50}
!53 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, metadata !50} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!54 = metadata !{i32 25, i32 8, metadata !10, metadata !50}
!55 = metadata !{i32 26, i32 4, metadata !10, metadata !50}
!56 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 32]
!57 = metadata !{i32 32, i32 9, metadata !11, null}
!58 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [size] [line 15]
!59 = metadata !{i32 33, i32 13, metadata !11, null}
!60 = metadata !{i32 15, i32 26, metadata !9, metadata !59}
!61 = metadata !{i32 16, i32 4, metadata !9, metadata !59}
!62 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!63 = metadata !{i32 16, i32 8, metadata !9, metadata !59}
!64 = metadata !{i32 17, i32 4, metadata !9, metadata !59}
!65 = metadata !{i32 786688, metadata !11, metadata !"j", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 33]
!66 = metadata !{i32 33, i32 9, metadata !11, null}
!67 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [size] [line 6]
!68 = metadata !{i32 34, i32 13, metadata !11, null}
!69 = metadata !{i32 6, i32 26, metadata !4, metadata !68}
!70 = metadata !{i32 7, i32 4, metadata !4, metadata !68}
!71 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!72 = metadata !{i32 7, i32 8, metadata !4, metadata !68}
!73 = metadata !{i32 8, i32 4, metadata !4, metadata !68} ; [ DW_TAG_imported_declaration ]
!74 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 34]
!75 = metadata !{i32 34, i32 9, metadata !11, null}
!76 = metadata !{i32 35, i32 5, metadata !11, null}
!77 = metadata !{i32 36, i32 10, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !11, i32 36, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 36, i32 10, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !81, i32 36, i32 10, i32 4, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 786443, metadata !1, metadata !78, i32 36, i32 10, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 36, i32 60, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !78, i32 36, i32 60, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 36, i32 44, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !78, i32 36, i32 44, i32 3, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 37, i32 10, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 37, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 37, i32 10, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 37, i32 10, i32 4, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 786443, metadata !1, metadata !87, i32 37, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 37, i32 60, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !87, i32 37, i32 60, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 37, i32 43, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !87, i32 37, i32 43, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 38, i32 5, metadata !11, null}

