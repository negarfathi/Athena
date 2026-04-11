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
define i32 @cstrcat(i32 %s, i32 %append) #0 {
cstrcat_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %append}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !42), !dbg !43
  br label %cstrcat_bb3, !dbg !48

cstrcat_bb3:                                      ; preds = %cstrcat_bb4, %cstrcat_bb2
  %.0 = phi i32 [ %s, %cstrcat_bb2 ], [ %"10", %cstrcat_bb4 ]
  %"6" = sext i32 %.0 to i64, !dbg !50
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !50
  %"8" = load i8* %"7", align 1, !dbg !50
  %"9" = icmp ne i8 %"8", 0, !dbg !50
  br i1 %"9", label %cstrcat_bb4, label %cstrcat_bb5, !dbg !50

cstrcat_bb4:                                      ; preds = %cstrcat_bb3
  %"10" = add nsw i32 %.0, 1, !dbg !53
  br label %cstrcat_bb3, !dbg !53

cstrcat_bb5:                                      ; preds = %cstrcat_bb5, %cstrcat_bb3
  %.01 = phi i32 [ %append, %cstrcat_bb3 ], [ %"11", %cstrcat_bb5 ]
  %.1 = phi i32 [ %.0, %cstrcat_bb3 ], [ %"15", %cstrcat_bb5 ]
  %"11" = add nsw i32 %.01, 1, !dbg !55
  %"12" = sext i32 %.01 to i64, !dbg !55
  %"13" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"12", !dbg !55
  %"14" = load i8* %"13", align 1, !dbg !55
  %"15" = add nsw i32 %.1, 1, !dbg !55
  %"16" = sext i32 %.1 to i64, !dbg !55
  %"17" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"16", !dbg !55
  store i8 %"14", i8* %"17", align 1, !dbg !55
  %"18" = sext i8 %"14" to i32, !dbg !55
  %"19" = icmp ne i32 %"18", 0, !dbg !55
  br i1 %"19", label %cstrcat_bb5, label %cstrcat_bb6, !dbg !55

cstrcat_bb6:                                      ; preds = %cstrcat_bb5
  ret i32 %s, !dbg !58
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"20" = call i32 @__VERIFIER_nondet_int(), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !60), !dbg !61
  %"21" = call i32 @__VERIFIER_nondet_int(), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !63), !dbg !64
  %"22" = call i32 @__VERIFIER_nondet_int(), !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !66), !dbg !67
  %"23" = icmp slt i32 %"20", 1, !dbg !68
  call void @llvm.dbg.value(metadata !70, i64 0, metadata !60), !dbg !61
  %. = select i1 %"23", i32 1, i32 %"20", !dbg !68
  %"24" = icmp slt i32 %"21", 2, !dbg !71
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !63), !dbg !64
  %length2.0 = select i1 %"24", i32 2, i32 %"21", !dbg !71
  %"25" = icmp slt i32 %"22", 1, !dbg !74
  call void @llvm.dbg.value(metadata !70, i64 0, metadata !66), !dbg !67
  %.1 = select i1 %"25", i32 1, i32 %"22", !dbg !74
  %"26" = sub nsw i32 %length2.0, %.1, !dbg !76
  %"27" = icmp slt i32 %"26", %., !dbg !76
  %"28" = icmp sgt i32 %.1, %length2.0, !dbg !78
  %or.cond = or i1 %"27", %"28", !dbg !76
  br i1 %or.cond, label %main_cstrcat.exit, label %main_bb8, !dbg !76

main_bb8:                                         ; preds = %main_bb7
  %"29" = mul nsw i32 %., 1, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !81), !dbg !82
  %"30" = load i32* @"'memory0_freeIndex", align 4, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !84), !dbg !85
  %"31" = load i32* @"'memory0_freeIndex", align 4, !dbg !86
  %"32" = add nsw i32 %"31", %"29", !dbg !86
  store i32 %"32", i32* @"'memory0_freeIndex", align 4, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !87), !dbg !88
  %"33" = mul nsw i32 %length2.0, 1, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !90), !dbg !91
  %"34" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !93), !dbg !94
  %"35" = load i32* @"'memory1_freeIndex", align 4, !dbg !95
  %"36" = add nsw i32 %"35", %"33", !dbg !95
  store i32 %"36", i32* @"'memory1_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !96), !dbg !97
  %"37" = sub nsw i32 %., 1, !dbg !98
  %"38" = add nsw i32 %"30", %"37", !dbg !98
  %"39" = sext i32 %"38" to i64, !dbg !98
  %"40" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"39", !dbg !98
  store i8 0, i8* %"40", align 1, !dbg !98
  %"41" = sub nsw i32 %.1, 1, !dbg !99
  %"42" = add nsw i32 %"34", %"41", !dbg !99
  %"43" = sext i32 %"42" to i64, !dbg !99
  %"44" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"43", !dbg !99
  store i8 0, i8* %"44", align 1, !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !100), !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !105), !dbg !106
  br label %main_bb9, !dbg !107

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %.0.i = phi i32 [ %"34", %main_bb8 ], [ %"49", %main_bb10 ], !dbg !101
  %"45" = sext i32 %.0.i to i64, !dbg !108
  %"46" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"45", !dbg !108
  %"47" = load i8* %"46", align 1, !dbg !108
  %"48" = icmp ne i8 %"47", 0, !dbg !108
  br i1 %"48", label %main_bb10, label %main_bb11, !dbg !108

main_bb10:                                        ; preds = %main_bb9
  %"49" = add nsw i32 %.0.i, 1, !dbg !109
  br label %main_bb9, !dbg !109

main_bb11:                                        ; preds = %main_bb11, %main_bb9
  %.01.i = phi i32 [ %"30", %main_bb9 ], [ %"50", %main_bb11 ], !dbg !101
  %.1.i = phi i32 [ %.0.i, %main_bb9 ], [ %"54", %main_bb11 ], !dbg !101
  %"50" = add nsw i32 %.01.i, 1, !dbg !110
  %"51" = sext i32 %.01.i to i64, !dbg !110
  %"52" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"51", !dbg !110
  %"53" = load i8* %"52", align 1, !dbg !110
  %"54" = add nsw i32 %.1.i, 1, !dbg !110
  %"55" = sext i32 %.1.i to i64, !dbg !110
  %"56" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"55", !dbg !110
  store i8 %"53", i8* %"56", align 1, !dbg !110
  %"57" = sext i8 %"53" to i32, !dbg !110
  %"58" = icmp ne i32 %"57", 0, !dbg !110
  br i1 %"58", label %main_bb11, label %main_cstrcat.exit, !dbg !110

main_cstrcat.exit:                                ; preds = %main_bb11, %main_bb7
  ret i32 0, !dbg !111
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcat", metadata !"cstrcat", metadata !"", i32 24, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcat, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [cstrcat]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 33, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
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
!42 = metadata !{i32 786689, metadata !10, metadata !"s", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 24]
!43 = metadata !{i32 24, i32 13, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"append", metadata !5, i32 33554456, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [append] [line 24]
!45 = metadata !{i32 24, i32 20, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"save", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [save] [line 26]
!47 = metadata !{i32 26, i32 6, metadata !10, null}
!48 = metadata !{i32 28, i32 2, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !10, i32 28, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 28, i32 2, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 28, i32 2, i32 4, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 786443, metadata !1, metadata !49, i32 28, i32 2, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 28, i32 21, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !49, i32 28, i32 21, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 29, i32 2, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 29, i32 2, i32 3, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 2, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 30, i32 2, metadata !10, null}
!59 = metadata !{i32 34, i32 19, metadata !13, null}
!60 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 34]
!61 = metadata !{i32 34, i32 9, metadata !13, null}
!62 = metadata !{i32 35, i32 19, metadata !13, null}
!63 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 35]
!64 = metadata !{i32 35, i32 9, metadata !13, null}
!65 = metadata !{i32 36, i32 19, metadata !13, null}
!66 = metadata !{i32 786688, metadata !13, metadata !"length3", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length3] [line 36]
!67 = metadata !{i32 36, i32 9, metadata !13, null}
!68 = metadata !{i32 37, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !13, i32 37, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 1}
!71 = metadata !{i32 40, i32 9, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !13, i32 40, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 2}
!74 = metadata !{i32 43, i32 9, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !13, i32 43, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 46, i32 9, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !13, i32 46, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 46, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !77, i32 46, i32 9, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 47, i32 25, metadata !13, null}
!81 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !80} ; [ DW_TAG_arg_variable ] [size] [line 8]
!82 = metadata !{i32 8, i32 26, metadata !4, metadata !80} ; [ DW_TAG_imported_declaration ]
!83 = metadata !{i32 9, i32 4, metadata !4, metadata !80}
!84 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !80} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!85 = metadata !{i32 9, i32 8, metadata !4, metadata !80}
!86 = metadata !{i32 10, i32 4, metadata !4, metadata !80}
!87 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 47]
!88 = metadata !{i32 47, i32 9, metadata !13, null}
!89 = metadata !{i32 48, i32 25, metadata !13, null}
!90 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [size] [line 17]
!91 = metadata !{i32 17, i32 26, metadata !9, metadata !89}
!92 = metadata !{i32 18, i32 4, metadata !9, metadata !89}
!93 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!94 = metadata !{i32 18, i32 8, metadata !9, metadata !89}
!95 = metadata !{i32 19, i32 4, metadata !9, metadata !89}
!96 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 48]
!97 = metadata !{i32 48, i32 9, metadata !13, null}
!98 = metadata !{i32 49, i32 5, metadata !13, null}
!99 = metadata !{i32 50, i32 5, metadata !13, null}
!100 = metadata !{i32 786689, metadata !10, metadata !"s", metadata !5, i32 16777240, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [s] [line 24]
!101 = metadata !{i32 51, i32 5, metadata !13, null}
!102 = metadata !{i32 24, i32 13, metadata !10, metadata !101}
!103 = metadata !{i32 786689, metadata !10, metadata !"append", metadata !5, i32 33554456, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [append] [line 24]
!104 = metadata !{i32 24, i32 20, metadata !10, metadata !101}
!105 = metadata !{i32 786688, metadata !10, metadata !"save", metadata !5, i32 26, metadata !8, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [save] [line 26]
!106 = metadata !{i32 26, i32 6, metadata !10, metadata !101}
!107 = metadata !{i32 28, i32 2, metadata !49, metadata !101}
!108 = metadata !{i32 28, i32 2, metadata !51, metadata !101}
!109 = metadata !{i32 28, i32 21, metadata !54, metadata !101}
!110 = metadata !{i32 29, i32 2, metadata !56, metadata !101}
!111 = metadata !{i32 53, i32 1, metadata !13, null}

