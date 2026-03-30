; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16

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
define i32 @strcspn(i32 %strSrc, i32 %str) #0 {
strcspn_bb2:
  call void @llvm.dbg.value(metadata !{i32 %strSrc}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %strSrc}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !48), !dbg !49
  br label %strcspn_bb3, !dbg !50

strcspn_bb3:                                      ; preds = %strcspn_bb9, %strcspn_bb2
  %t.0 = phi i32 [ %strSrc, %strcspn_bb2 ], [ %"27", %strcspn_bb9 ]
  %"6" = sext i32 %t.0 to i64, !dbg !51
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !51
  %"8" = load i8* %"7", align 1, !dbg !51
  %"9" = sext i8 %"8" to i32, !dbg !51
  %"10" = icmp ne i32 %"9", 0, !dbg !51
  br i1 %"10", label %strcspn_bb4, label %strcspn_bb10, !dbg !51

strcspn_bb4:                                      ; preds = %strcspn_bb3
  %"11" = sext i32 %t.0 to i64, !dbg !53
  %"12" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"11", !dbg !53
  %"13" = load i8* %"12", align 1, !dbg !53
  %"14" = sext i8 %"13" to i32, !dbg !53
  br label %strcspn_bb5, !dbg !57

strcspn_bb5:                                      ; preds = %strcspn_bb8, %strcspn_bb4
  %s.0 = phi i32 [ %str, %strcspn_bb4 ], [ %"26", %strcspn_bb8 ]
  %"15" = sext i32 %s.0 to i64, !dbg !58
  %"16" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"15", !dbg !58
  %"17" = load i8* %"16", align 1, !dbg !58
  %"18" = sext i8 %"17" to i32, !dbg !58
  %"19" = icmp ne i32 %"18", 0, !dbg !58
  br i1 %"19", label %strcspn_bb6, label %strcspn_bb9, !dbg !58

strcspn_bb6:                                      ; preds = %strcspn_bb5
  %"20" = sext i32 %s.0 to i64, !dbg !53
  %"21" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"20", !dbg !53
  %"22" = load i8* %"21", align 1, !dbg !53
  %"23" = sext i8 %"22" to i32, !dbg !53
  %"24" = icmp eq i32 %"14", %"23", !dbg !53
  br i1 %"24", label %strcspn_bb7, label %strcspn_bb8, !dbg !53

strcspn_bb7:                                      ; preds = %strcspn_bb6
  %"25" = sub nsw i32 %t.0, %strSrc, !dbg !60
  br label %strcspn_bb10, !dbg !60

strcspn_bb8:                                      ; preds = %strcspn_bb6
  %"26" = add nsw i32 %s.0, 1, !dbg !61
  br label %strcspn_bb5, !dbg !62

strcspn_bb9:                                      ; preds = %strcspn_bb5
  %"27" = add nsw i32 %t.0, 1, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !46), !dbg !47
  br label %strcspn_bb3, !dbg !64

strcspn_bb10:                                     ; preds = %strcspn_bb3, %strcspn_bb7
  %.0 = phi i32 [ %"25", %strcspn_bb7 ], [ 0, %strcspn_bb3 ]
  ret i32 %.0, !dbg !65
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  call void @llvm.dbg.value(metadata !66, i64 0, metadata !67), !dbg !69
  %"28" = load i32* @"'memory0_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !71), !dbg !72
  %"29" = load i32* @"'memory0_freeIndex", align 4, !dbg !73
  %"30" = add nsw i32 %"29", 2, !dbg !73
  store i32 %"30", i32* @"'memory0_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !74), !dbg !75
  %"31" = add nsw i32 %"28", 0, !dbg !76
  %"32" = sext i32 %"31" to i64, !dbg !76
  %"33" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"32", !dbg !76
  store i8 10, i8* %"33", align 1, !dbg !76
  %"34" = add nsw i32 %"28", 1, !dbg !77
  %"35" = sext i32 %"34" to i64, !dbg !77
  %"36" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"35", !dbg !77
  store i8 0, i8* %"36", align 1, !dbg !77
  call void @llvm.dbg.value(metadata !78, i64 0, metadata !79), !dbg !81
  %"37" = load i32* @"'memory1_freeIndex", align 4, !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !83), !dbg !84
  %"38" = load i32* @"'memory1_freeIndex", align 4, !dbg !85
  %"39" = add nsw i32 %"38", 100, !dbg !85
  store i32 %"39", i32* @"'memory1_freeIndex", align 4, !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !86), !dbg !87
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !89), !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !89), !dbg !91
  br label %main_bb12, !dbg !92

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %i.0 = phi i32 [ 0, %main_bb11 ], [ %"45", %main_bb13 ]
  %"40" = icmp slt i32 %i.0, 99, !dbg !93
  br i1 %"40", label %main_bb13, label %main_bb14, !dbg !93

main_bb13:                                        ; preds = %main_bb12
  %"41" = call signext i8 @__VERIFIER_nondet_char(), !dbg !96
  %"42" = add nsw i32 %"37", %i.0, !dbg !96
  %"43" = sext i32 %"42" to i64, !dbg !96
  %"44" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"43", !dbg !96
  store i8 %"41", i8* %"44", align 1, !dbg !96
  %"45" = add nsw i32 %i.0, 1, !dbg !97
  br label %main_bb12, !dbg !97

main_bb14:                                        ; preds = %main_bb12
  %"46" = add nsw i32 %"37", 99, !dbg !98
  %"47" = sext i32 %"46" to i64, !dbg !98
  %"48" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"47", !dbg !98
  store i8 0, i8* %"48", align 1, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !99), !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !101), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !105), !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !107), !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !109), !dbg !110
  br label %main_bb15, !dbg !111

main_bb15:                                        ; preds = %main_strcspn.exit, %main_bb14
  %p.0 = phi i32 [ %"37", %main_bb14 ], [ %"75", %main_strcspn.exit ]
  %"49" = sext i32 %p.0 to i64, !dbg !112
  %"50" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"49", !dbg !112
  %"51" = load i8* %"50", align 1, !dbg !112
  %"52" = icmp ne i8 %"51", 0, !dbg !112
  br i1 %"52", label %main_bb16, label %main_bb23, !dbg !112

main_bb16:                                        ; preds = %main_bb15, %main_bb22
  %t.0.i = phi i32 [ %"74", %main_bb22 ], [ %p.0, %main_bb15 ], !dbg !102
  %"53" = sext i32 %t.0.i to i64, !dbg !114
  %"54" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"53", !dbg !114
  %"55" = load i8* %"54", align 1, !dbg !114
  %"56" = sext i8 %"55" to i32, !dbg !114
  %"57" = icmp ne i32 %"56", 0, !dbg !114
  br i1 %"57", label %main_bb17, label %main_strcspn.exit, !dbg !114

main_bb17:                                        ; preds = %main_bb16
  %"58" = sext i32 %t.0.i to i64, !dbg !115
  %"59" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"58", !dbg !115
  %"60" = load i8* %"59", align 1, !dbg !115
  %"61" = sext i8 %"60" to i32, !dbg !115
  br label %main_bb18, !dbg !116

main_bb18:                                        ; preds = %main_bb21, %main_bb17
  %s.0.i = phi i32 [ %"28", %main_bb17 ], [ %"73", %main_bb21 ], !dbg !102
  %"62" = sext i32 %s.0.i to i64, !dbg !117
  %"63" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"62", !dbg !117
  %"64" = load i8* %"63", align 1, !dbg !117
  %"65" = sext i8 %"64" to i32, !dbg !117
  %"66" = icmp ne i32 %"65", 0, !dbg !117
  br i1 %"66", label %main_bb19, label %main_bb22, !dbg !117

main_bb19:                                        ; preds = %main_bb18
  %"67" = sext i32 %s.0.i to i64, !dbg !115
  %"68" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"67", !dbg !115
  %"69" = load i8* %"68", align 1, !dbg !115
  %"70" = sext i8 %"69" to i32, !dbg !115
  %"71" = icmp eq i32 %"61", %"70", !dbg !115
  br i1 %"71", label %main_bb20, label %main_bb21, !dbg !115

main_bb20:                                        ; preds = %main_bb19
  %"72" = sub nsw i32 %t.0.i, %p.0, !dbg !118
  br label %main_strcspn.exit, !dbg !118

main_bb21:                                        ; preds = %main_bb19
  %"73" = add nsw i32 %s.0.i, 1, !dbg !119
  br label %main_bb18, !dbg !120

main_bb22:                                        ; preds = %main_bb18
  %"74" = add nsw i32 %t.0.i, 1, !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !107), !dbg !108
  br label %main_bb16, !dbg !122

main_strcspn.exit:                                ; preds = %main_bb16, %main_bb20
  %.0.i = phi i32 [ %"72", %main_bb20 ], [ 0, %main_bb16 ], !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !123), !dbg !124
  %"75" = add nsw i32 %p.0, %.0.i, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !99), !dbg !100
  br label %main_bb15, !dbg !126

main_bb23:                                        ; preds = %main_bb15
  ret i32 0, !dbg !127
}

declare signext i8 @__VERIFIER_nondet_char() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strcspn", metadata !"strcspn", metadata !"", i32 29, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @strcspn, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [strcspn]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 46, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 13, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 13] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 22, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 22] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 12, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 12] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 21, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 21] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 14]
!29 = metadata !{i32 14, i32 26, metadata !4, null}
!30 = metadata !{i32 15, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!32 = metadata !{i32 15, i32 8, metadata !4, null}
!33 = metadata !{i32 16, i32 4, metadata !4, null}
!34 = metadata !{i32 17, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 23]
!36 = metadata !{i32 23, i32 26, metadata !9, null}
!37 = metadata !{i32 24, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 24]
!39 = metadata !{i32 24, i32 8, metadata !9, null}
!40 = metadata !{i32 25, i32 4, metadata !9, null}
!41 = metadata !{i32 26, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"strSrc", metadata !5, i32 16777245, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strSrc] [line 29]
!43 = metadata !{i32 29, i32 17, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"str", metadata !5, i32 33554461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 29]
!45 = metadata !{i32 29, i32 29, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"t", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 32]
!47 = metadata !{i32 32, i32 9, metadata !10, null}
!48 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 31]
!49 = metadata !{i32 31, i32 9, metadata !10, null}
!50 = metadata !{i32 33, i32 5, metadata !10, null}
!51 = metadata !{i32 33, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 38, i32 17, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 38, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 37, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 36, i32 9, metadata !56, null}
!58 = metadata !{i32 36, i32 9, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !56, i32 36, i32 9, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 39, i32 13, metadata !54, null}
!61 = metadata !{i32 40, i32 13, metadata !55, null}
!62 = metadata !{i32 41, i32 9, metadata !55, null}
!63 = metadata !{i32 42, i32 9, metadata !56, null}
!64 = metadata !{i32 43, i32 5, metadata !56, null}
!65 = metadata !{i32 45, i32 1, metadata !10, null}
!66 = metadata !{i32 2}
!67 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [size] [line 14]
!68 = metadata !{i32 48, i32 21, metadata !13, null}
!69 = metadata !{i32 14, i32 26, metadata !4, metadata !68}
!70 = metadata !{i32 15, i32 4, metadata !4, metadata !68}
!71 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!72 = metadata !{i32 15, i32 8, metadata !4, metadata !68}
!73 = metadata !{i32 16, i32 4, metadata !4, metadata !68}
!74 = metadata !{i32 786688, metadata !13, metadata !"newLine_index", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newLine_index] [line 48]
!75 = metadata !{i32 48, i32 5, metadata !13, null}
!76 = metadata !{i32 49, i32 1, metadata !13, null}
!77 = metadata !{i32 50, i32 1, metadata !13, null}
!78 = metadata !{i32 100}
!79 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777239, metadata !8, i32 0, metadata !80} ; [ DW_TAG_arg_variable ] [size] [line 23]
!80 = metadata !{i32 51, i32 21, metadata !13, null}
!81 = metadata !{i32 23, i32 26, metadata !9, metadata !80}
!82 = metadata !{i32 24, i32 4, metadata !9, metadata !80}
!83 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 24, metadata !8, i32 0, metadata !80} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 24]
!84 = metadata !{i32 24, i32 8, metadata !9, metadata !80}
!85 = metadata !{i32 25, i32 4, metadata !9, metadata !80}
!86 = metadata !{i32 786688, metadata !13, metadata !"buf_index", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf_index] [line 51]
!87 = metadata !{i32 51, i32 9, metadata !13, null}
!88 = metadata !{i32 0}
!89 = metadata !{i32 786688, metadata !90, metadata !"i", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 52]
!90 = metadata !{i32 786443, metadata !1, metadata !13, i32 52, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 52, i32 14, metadata !90, null}
!92 = metadata !{i32 52, i32 10, metadata !90, null}
!93 = metadata !{i32 52, i32 10, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 52, i32 10, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 786443, metadata !1, metadata !90, i32 52, i32 10, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 53, i32 36, metadata !90, null}
!97 = metadata !{i32 52, i32 31, metadata !90, null}
!98 = metadata !{i32 54, i32 5, metadata !13, null}
!99 = metadata !{i32 786688, metadata !13, metadata !"p", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 55]
!100 = metadata !{i32 55, i32 9, metadata !13, null}
!101 = metadata !{i32 786689, metadata !10, metadata !"strSrc", metadata !5, i32 16777245, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [strSrc] [line 29]
!102 = metadata !{i32 58, i32 19, metadata !103, null} ; [ DW_TAG_imported_module ]
!103 = metadata !{i32 786443, metadata !1, metadata !13, i32 57, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!104 = metadata !{i32 29, i32 17, metadata !10, metadata !102}
!105 = metadata !{i32 786689, metadata !10, metadata !"str", metadata !5, i32 33554461, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [str] [line 29]
!106 = metadata !{i32 29, i32 29, metadata !10, metadata !102}
!107 = metadata !{i32 786688, metadata !10, metadata !"t", metadata !5, i32 32, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [t] [line 32]
!108 = metadata !{i32 32, i32 9, metadata !10, metadata !102}
!109 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 31, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [s] [line 31]
!110 = metadata !{i32 31, i32 9, metadata !10, metadata !102}
!111 = metadata !{i32 56, i32 5, metadata !13, null}
!112 = metadata !{i32 56, i32 5, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !13, i32 56, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 33, i32 5, metadata !52, metadata !102}
!115 = metadata !{i32 38, i32 17, metadata !54, metadata !102}
!116 = metadata !{i32 36, i32 9, metadata !56, metadata !102}
!117 = metadata !{i32 36, i32 9, metadata !59, metadata !102}
!118 = metadata !{i32 39, i32 13, metadata !54, metadata !102}
!119 = metadata !{i32 40, i32 13, metadata !55, metadata !102}
!120 = metadata !{i32 41, i32 9, metadata !55, metadata !102}
!121 = metadata !{i32 42, i32 9, metadata !56, metadata !102}
!122 = metadata !{i32 43, i32 5, metadata !56, metadata !102}
!123 = metadata !{i32 786688, metadata !103, metadata !"len", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 58]
!124 = metadata !{i32 58, i32 13, metadata !103, null} ; [ DW_TAG_imported_module ]
!125 = metadata !{i32 59, i32 9, metadata !103, null}
!126 = metadata !{i32 60, i32 5, metadata !103, null}
!127 = metadata !{i32 61, i32 5, metadata !13, null}

