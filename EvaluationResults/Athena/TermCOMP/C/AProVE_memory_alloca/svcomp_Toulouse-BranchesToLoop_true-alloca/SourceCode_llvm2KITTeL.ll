; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@"'memory4_freeIndex" = global i32 1, align 4
@memory4 = common global [100000 x i32] zeroinitializer, align 16
@memory3 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !33), !dbg !34
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !36), !dbg !37
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !38
  %"2" = add nsw i32 %"1", %size, !dbg !38
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !38
  ret i32 %"0", !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !40), !dbg !41
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !43), !dbg !44
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !45
  %"5" = add nsw i32 %"4", %size, !dbg !45
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !45
  ret i32 %"3", !dbg !46
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !47), !dbg !48
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !50), !dbg !51
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !52
  %"8" = add nsw i32 %"7", %size, !dbg !52
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !52
  ret i32 %"6", !dbg !53
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !54), !dbg !55
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !57), !dbg !58
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !59
  %"11" = add nsw i32 %"10", %size, !dbg !59
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !59
  ret i32 %"9", !dbg !60
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory4(i32 %size) #0 {
allocate_memory4_bb4:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !61), !dbg !62
  %"12" = load i32* @"'memory4_freeIndex", align 4, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !64), !dbg !65
  %"13" = load i32* @"'memory4_freeIndex", align 4, !dbg !66
  %"14" = add nsw i32 %"13", %size, !dbg !66
  store i32 %"14", i32* @"'memory4_freeIndex", align 4, !dbg !66
  ret i32 %"12", !dbg !67
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  call void @llvm.dbg.value(metadata !68, i64 0, metadata !69), !dbg !71
  %"15" = load i32* @"'memory4_freeIndex", align 4, !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !73), !dbg !74
  %"16" = load i32* @"'memory4_freeIndex", align 4, !dbg !75
  %"17" = add nsw i32 %"16", 1, !dbg !75
  store i32 %"17", i32* @"'memory4_freeIndex", align 4, !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !68, i64 0, metadata !78), !dbg !80
  %"18" = load i32* @"'memory3_freeIndex", align 4, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !82), !dbg !83
  %"19" = load i32* @"'memory3_freeIndex", align 4, !dbg !84
  %"20" = add nsw i32 %"19", 1, !dbg !84
  store i32 %"20", i32* @"'memory3_freeIndex", align 4, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !85), !dbg !86
  call void @llvm.dbg.value(metadata !68, i64 0, metadata !87), !dbg !89
  %"21" = load i32* @"'memory2_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !91), !dbg !92
  %"22" = load i32* @"'memory2_freeIndex", align 4, !dbg !93
  %"23" = add nsw i32 %"22", 1, !dbg !93
  store i32 %"23", i32* @"'memory2_freeIndex", align 4, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !94), !dbg !95
  call void @llvm.dbg.value(metadata !68, i64 0, metadata !96), !dbg !98
  %"24" = load i32* @"'memory1_freeIndex", align 4, !dbg !99
  %"25" = add nsw i32 %"24", 1, !dbg !99
  store i32 %"25", i32* @"'memory1_freeIndex", align 4, !dbg !99
  call void @llvm.dbg.value(metadata !68, i64 0, metadata !100), !dbg !102
  %"26" = load i32* @"'memory0_freeIndex", align 4, !dbg !103
  %"27" = add nsw i32 %"26", 1, !dbg !103
  store i32 %"27", i32* @"'memory0_freeIndex", align 4, !dbg !103
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !104
  %"29" = icmp ne i32 %"28", 0, !dbg !104
  %"30" = sext i32 %"15" to i64, !dbg !106
  %"31" = getelementptr inbounds [100000 x i32]* @memory4, i32 0, i64 %"30", !dbg !106
  br i1 %"29", label %main_bb6, label %main_bb7, !dbg !104

main_bb6:                                         ; preds = %main_bb5
  store i32 1, i32* %"31", align 4, !dbg !106
  br label %main_bb8, !dbg !108

main_bb7:                                         ; preds = %main_bb5
  store i32 -1, i32* %"31", align 4, !dbg !109
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %"32" = sext i32 %"18" to i64, !dbg !111
  %"33" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"32", !dbg !111
  %"34" = sext i32 %"21" to i64, !dbg !113
  %"35" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"34", !dbg !113
  %"36" = sext i32 %"18" to i64, !dbg !115
  %"37" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"36", !dbg !115
  %"38" = sext i32 %"15" to i64, !dbg !115
  %"39" = getelementptr inbounds [100000 x i32]* @memory4, i32 0, i64 %"38", !dbg !115
  %"40" = load i32* %"39", align 4, !dbg !115
  %"41" = sext i32 %"18" to i64, !dbg !115
  %"42" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"41", !dbg !115
  %"43" = sext i32 %"21" to i64, !dbg !117
  %"44" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"43", !dbg !117
  %"45" = sext i32 %"15" to i64, !dbg !117
  %"46" = getelementptr inbounds [100000 x i32]* @memory4, i32 0, i64 %"45", !dbg !117
  %"47" = load i32* %"46", align 4, !dbg !117
  %"48" = sext i32 %"21" to i64, !dbg !117
  %"49" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"48", !dbg !117
  br label %main_bb9, !dbg !118

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %"50" = load i32* %"33", align 4, !dbg !111
  %"51" = icmp slt i32 %"50", 100, !dbg !111
  br i1 %"51", label %main_bb10, label %main_.critedge, !dbg !111

main_bb10:                                        ; preds = %main_bb9
  %"52" = load i32* %"35", align 4, !dbg !113
  %"53" = icmp slt i32 %"52", 100, !dbg !113
  br i1 %"53", label %main_bb11, label %main_.critedge, !dbg !119

main_bb11:                                        ; preds = %main_bb10
  %"54" = load i32* %"37", align 4, !dbg !115
  %"55" = add nsw i32 %"54", %"40", !dbg !115
  store i32 %"55", i32* %"42", align 4, !dbg !115
  %"56" = load i32* %"44", align 4, !dbg !117
  %"57" = sub nsw i32 %"56", %"47", !dbg !117
  store i32 %"57", i32* %"49", align 4, !dbg !117
  br label %main_bb9, !dbg !121

main_.critedge:                                   ; preds = %main_bb9, %main_bb10
  ret i32 0, !dbg !122
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31}
!llvm.ident = !{!32}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 35] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory4", metadata !"allocate_memory4", metadata !"", i32 44, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory4, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [allocate_memory4]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 50, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 50} ; [ DW_TAG_subprogram ] [line 50] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !26, metadata !27, metadata !28, metadata !29}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 34, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 34] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory4_freeIndex", metadata !"memory4_freeIndex", metadata !"", metadata !5, i32 43, metadata !8, i32 0, i32 1, i32* @"'memory4_freeIndex", null} ; [ DW_TAG_variable ] [memory4_freeIndex] [line 43] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !23, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !24, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !23, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !23, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 33, metadata !23, i32 0, i32 1, [100000 x i32]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 33] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"memory4", metadata !"memory4", metadata !"", metadata !5, i32 42, metadata !23, i32 0, i32 1, [100000 x i32]* @memory4, null} ; [ DW_TAG_variable ] [memory4] [line 42] [def]
!30 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!31 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!32 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!33 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!34 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 9, i32 4, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!37 = metadata !{i32 9, i32 8, metadata !4, null}
!38 = metadata !{i32 10, i32 4, metadata !4, null}
!39 = metadata !{i32 11, i32 4, metadata !4, null}
!40 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!41 = metadata !{i32 17, i32 26, metadata !9, null}
!42 = metadata !{i32 18, i32 4, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!44 = metadata !{i32 18, i32 8, metadata !9, null}
!45 = metadata !{i32 19, i32 4, metadata !9, null}
!46 = metadata !{i32 20, i32 4, metadata !9, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!48 = metadata !{i32 26, i32 26, metadata !10, null}
!49 = metadata !{i32 27, i32 4, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!51 = metadata !{i32 27, i32 8, metadata !10, null}
!52 = metadata !{i32 28, i32 4, metadata !10, null}
!53 = metadata !{i32 29, i32 4, metadata !10, null}
!54 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 35]
!55 = metadata !{i32 35, i32 26, metadata !11, null}
!56 = metadata !{i32 36, i32 4, metadata !11, null}
!57 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!58 = metadata !{i32 36, i32 8, metadata !11, null}
!59 = metadata !{i32 37, i32 4, metadata !11, null}
!60 = metadata !{i32 38, i32 4, metadata !11, null}
!61 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777260, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 44]
!62 = metadata !{i32 44, i32 26, metadata !12, null}
!63 = metadata !{i32 45, i32 4, metadata !12, null}
!64 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 45]
!65 = metadata !{i32 45, i32 8, metadata !12, null}
!66 = metadata !{i32 46, i32 4, metadata !12, null}
!67 = metadata !{i32 47, i32 4, metadata !12, null}
!68 = metadata !{i32 1}
!69 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777260, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [size] [line 44]
!70 = metadata !{i32 51, i32 13, metadata !13, null}
!71 = metadata !{i32 44, i32 26, metadata !12, metadata !70}
!72 = metadata !{i32 45, i32 4, metadata !12, metadata !70}
!73 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 45, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 45]
!74 = metadata !{i32 45, i32 8, metadata !12, metadata !70}
!75 = metadata !{i32 46, i32 4, metadata !12, metadata !70}
!76 = metadata !{i32 786688, metadata !13, metadata !"x", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 51]
!77 = metadata !{i32 51, i32 9, metadata !13, null}
!78 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !79} ; [ DW_TAG_arg_variable ] [size] [line 35]
!79 = metadata !{i32 52, i32 13, metadata !13, null}
!80 = metadata !{i32 35, i32 26, metadata !11, metadata !79}
!81 = metadata !{i32 36, i32 4, metadata !11, metadata !79}
!82 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!83 = metadata !{i32 36, i32 8, metadata !11, metadata !79}
!84 = metadata !{i32 37, i32 4, metadata !11, metadata !79}
!85 = metadata !{i32 786688, metadata !13, metadata !"y", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 52]
!86 = metadata !{i32 52, i32 9, metadata !13, null}
!87 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !88} ; [ DW_TAG_arg_variable ] [size] [line 26]
!88 = metadata !{i32 53, i32 13, metadata !13, null}
!89 = metadata !{i32 26, i32 26, metadata !10, metadata !88}
!90 = metadata !{i32 27, i32 4, metadata !10, metadata !88}
!91 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !88} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!92 = metadata !{i32 27, i32 8, metadata !10, metadata !88}
!93 = metadata !{i32 28, i32 4, metadata !10, metadata !88}
!94 = metadata !{i32 786688, metadata !13, metadata !"z", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 53]
!95 = metadata !{i32 53, i32 9, metadata !13, null}
!96 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [size] [line 17]
!97 = metadata !{i32 54, i32 13, metadata !13, null}
!98 = metadata !{i32 17, i32 26, metadata !9, metadata !97}
!99 = metadata !{i32 19, i32 4, metadata !9, metadata !97}
!100 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [size] [line 8]
!101 = metadata !{i32 55, i32 13, metadata !13, null}
!102 = metadata !{i32 8, i32 26, metadata !4, metadata !101} ; [ DW_TAG_imported_declaration ]
!103 = metadata !{i32 10, i32 4, metadata !4, metadata !101}
!104 = metadata !{i32 56, i32 9, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !13, i32 56, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!106 = metadata !{i32 57, i32 9, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !105, i32 56, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!108 = metadata !{i32 58, i32 5, metadata !107, null} ; [ DW_TAG_imported_module ]
!109 = metadata !{i32 59, i32 9, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !105, i32 58, i32 12, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!111 = metadata !{i32 61, i32 5, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!113 = metadata !{i32 61, i32 5, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 5, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!115 = metadata !{i32 62, i32 9, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!117 = metadata !{i32 63, i32 9, metadata !116, null}
!118 = metadata !{i32 61, i32 5, metadata !13, null}
!119 = metadata !{i32 61, i32 5, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 5, i32 3, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!121 = metadata !{i32 64, i32 5, metadata !116, null}
!122 = metadata !{i32 65, i32 5, metadata !13, null}

