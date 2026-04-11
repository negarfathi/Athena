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
define i32 @cstrcat(i32 %s1, i32 %s2) #0 {
cstrcat_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !46), !dbg !47
  br label %cstrcat_bb3, !dbg !48

cstrcat_bb3:                                      ; preds = %cstrcat_bb4, %cstrcat_bb2
  %s.0 = phi i32 [ %s1, %cstrcat_bb2 ], [ %"11", %cstrcat_bb4 ]
  %"6" = sext i32 %s.0 to i64, !dbg !49
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !49
  %"8" = load i8* %"7", align 1, !dbg !49
  %"9" = sext i8 %"8" to i32, !dbg !49
  %"10" = icmp ne i32 %"9", 0, !dbg !49
  br i1 %"10", label %cstrcat_bb4, label %cstrcat_bb5, !dbg !49

cstrcat_bb4:                                      ; preds = %cstrcat_bb3
  %"11" = add nsw i32 %s.0, 1, !dbg !51
  br label %cstrcat_bb3, !dbg !51

cstrcat_bb5:                                      ; preds = %cstrcat_bb5, %cstrcat_bb3
  %s.1 = phi i32 [ %s.0, %cstrcat_bb3 ], [ %"16", %cstrcat_bb5 ]
  %.0 = phi i32 [ %s2, %cstrcat_bb3 ], [ %"12", %cstrcat_bb5 ]
  %"12" = add nsw i32 %.0, 1, !dbg !52
  %"13" = sext i32 %.0 to i64, !dbg !52
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !52
  %"15" = load i8* %"14", align 1, !dbg !52
  %"16" = add nsw i32 %s.1, 1, !dbg !52
  %"17" = sext i32 %s.1 to i64, !dbg !52
  %"18" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"17", !dbg !52
  store i8 %"15", i8* %"18", align 1, !dbg !52
  %"19" = sext i8 %"15" to i32, !dbg !52
  %"20" = icmp ne i32 %"19", 0, !dbg !52
  br i1 %"20", label %cstrcat_bb5, label %cstrcat_bb6, !dbg !52

cstrcat_bb6:                                      ; preds = %cstrcat_bb5
  ret i32 %s1, !dbg !55
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"21" = call i32 @__VERIFIER_nondet_int(), !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !57), !dbg !58
  %"22" = call i32 @__VERIFIER_nondet_int(), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !60), !dbg !61
  %"23" = call i32 @__VERIFIER_nondet_int(), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !63), !dbg !64
  %"24" = icmp slt i32 %"21", 1, !dbg !65
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !57), !dbg !58
  %. = select i1 %"24", i32 1, i32 %"21", !dbg !65
  %"25" = icmp slt i32 %"22", 2, !dbg !68
  call void @llvm.dbg.value(metadata !70, i64 0, metadata !60), !dbg !61
  %length2.0 = select i1 %"25", i32 2, i32 %"22", !dbg !68
  %"26" = icmp slt i32 %"23", 1, !dbg !71
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !63), !dbg !64
  %.1 = select i1 %"26", i32 1, i32 %"23", !dbg !71
  %"27" = sub nsw i32 %length2.0, %.1, !dbg !73
  %"28" = icmp slt i32 %"27", %., !dbg !73
  %"29" = icmp sgt i32 %.1, %length2.0, !dbg !75
  %or.cond = or i1 %"28", %"29", !dbg !73
  br i1 %or.cond, label %main_cstrcat.exit, label %main_bb8, !dbg !73

main_bb8:                                         ; preds = %main_bb7
  %"30" = mul nsw i32 %., 1, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !78), !dbg !79
  %"31" = load i32* @"'memory0_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !81), !dbg !82
  %"32" = load i32* @"'memory0_freeIndex", align 4, !dbg !83
  %"33" = add nsw i32 %"32", %"30", !dbg !83
  store i32 %"33", i32* @"'memory0_freeIndex", align 4, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !84), !dbg !85
  %"34" = mul nsw i32 %length2.0, 1, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !87), !dbg !88
  %"35" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !90), !dbg !91
  %"36" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"37" = add nsw i32 %"36", %"34", !dbg !92
  store i32 %"37", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !93), !dbg !94
  %"38" = sub nsw i32 %., 1, !dbg !95
  %"39" = add nsw i32 %"31", %"38", !dbg !95
  %"40" = sext i32 %"39" to i64, !dbg !95
  %"41" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"40", !dbg !95
  store i8 0, i8* %"41", align 1, !dbg !95
  %"42" = sub nsw i32 %.1, 1, !dbg !96
  %"43" = add nsw i32 %"35", %"42", !dbg !96
  %"44" = sext i32 %"43" to i64, !dbg !96
  %"45" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"44", !dbg !96
  store i8 0, i8* %"45", align 1, !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !97), !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !102), !dbg !103
  br label %main_bb9, !dbg !104

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %s.0.i = phi i32 [ %"35", %main_bb8 ], [ %"51", %main_bb10 ], !dbg !98
  %"46" = sext i32 %s.0.i to i64, !dbg !105
  %"47" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"46", !dbg !105
  %"48" = load i8* %"47", align 1, !dbg !105
  %"49" = sext i8 %"48" to i32, !dbg !105
  %"50" = icmp ne i32 %"49", 0, !dbg !105
  br i1 %"50", label %main_bb10, label %main_bb11, !dbg !105

main_bb10:                                        ; preds = %main_bb9
  %"51" = add nsw i32 %s.0.i, 1, !dbg !106
  br label %main_bb9, !dbg !106

main_bb11:                                        ; preds = %main_bb11, %main_bb9
  %s.1.i = phi i32 [ %s.0.i, %main_bb9 ], [ %"56", %main_bb11 ], !dbg !98
  %.0.i = phi i32 [ %"31", %main_bb9 ], [ %"52", %main_bb11 ], !dbg !98
  %"52" = add nsw i32 %.0.i, 1, !dbg !107
  %"53" = sext i32 %.0.i to i64, !dbg !107
  %"54" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"53", !dbg !107
  %"55" = load i8* %"54", align 1, !dbg !107
  %"56" = add nsw i32 %s.1.i, 1, !dbg !107
  %"57" = sext i32 %s.1.i to i64, !dbg !107
  %"58" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"57", !dbg !107
  store i8 %"55", i8* %"58", align 1, !dbg !107
  %"59" = sext i8 %"55" to i32, !dbg !107
  %"60" = icmp ne i32 %"59", 0, !dbg !107
  br i1 %"60", label %main_bb11, label %main_cstrcat.exit, !dbg !107

main_cstrcat.exit:                                ; preds = %main_bb11, %main_bb7
  ret i32 0, !dbg !108
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcat", metadata !"cstrcat", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcat, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [cstrcat]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 36, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 36] [def] [main]
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
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!43 = metadata !{i32 23, i32 18, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!45 = metadata !{i32 23, i32 26, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 25]
!47 = metadata !{i32 25, i32 10, metadata !10, null}
!48 = metadata !{i32 27, i32 6, metadata !10, null}
!49 = metadata !{i32 27, i32 6, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !10, i32 27, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 28, i32 10, metadata !10, null}
!52 = metadata !{i32 30, i32 6, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !54, i32 30, i32 6, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 6, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 33, i32 6, metadata !10, null}
!56 = metadata !{i32 37, i32 19, metadata !13, null}
!57 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 37]
!58 = metadata !{i32 37, i32 9, metadata !13, null}
!59 = metadata !{i32 38, i32 19, metadata !13, null}
!60 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 38]
!61 = metadata !{i32 38, i32 9, metadata !13, null}
!62 = metadata !{i32 39, i32 19, metadata !13, null}
!63 = metadata !{i32 786688, metadata !13, metadata !"length3", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length3] [line 39]
!64 = metadata !{i32 39, i32 9, metadata !13, null}
!65 = metadata !{i32 40, i32 9, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !13, i32 40, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 1}
!68 = metadata !{i32 43, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !13, i32 43, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 2}
!71 = metadata !{i32 46, i32 9, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !13, i32 46, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 49, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !13, i32 49, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 49, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 49, i32 9, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 50, i32 25, metadata !13, null}
!78 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !77} ; [ DW_TAG_arg_variable ] [size] [line 8]
!79 = metadata !{i32 8, i32 26, metadata !4, metadata !77} ; [ DW_TAG_imported_declaration ]
!80 = metadata !{i32 9, i32 4, metadata !4, metadata !77}
!81 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !77} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!82 = metadata !{i32 9, i32 8, metadata !4, metadata !77}
!83 = metadata !{i32 10, i32 4, metadata !4, metadata !77}
!84 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 50]
!85 = metadata !{i32 50, i32 9, metadata !13, null}
!86 = metadata !{i32 51, i32 25, metadata !13, null}
!87 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !86} ; [ DW_TAG_arg_variable ] [size] [line 17]
!88 = metadata !{i32 17, i32 26, metadata !9, metadata !86}
!89 = metadata !{i32 18, i32 4, metadata !9, metadata !86}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!91 = metadata !{i32 18, i32 8, metadata !9, metadata !86}
!92 = metadata !{i32 19, i32 4, metadata !9, metadata !86}
!93 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 51]
!94 = metadata !{i32 51, i32 9, metadata !13, null}
!95 = metadata !{i32 52, i32 5, metadata !13, null}
!96 = metadata !{i32 53, i32 5, metadata !13, null}
!97 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!98 = metadata !{i32 54, i32 5, metadata !13, null}
!99 = metadata !{i32 23, i32 18, metadata !10, metadata !98}
!100 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!101 = metadata !{i32 23, i32 26, metadata !10, metadata !98}
!102 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 25, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [s] [line 25]
!103 = metadata !{i32 25, i32 10, metadata !10, metadata !98}
!104 = metadata !{i32 27, i32 6, metadata !10, metadata !98}
!105 = metadata !{i32 27, i32 6, metadata !50, metadata !98}
!106 = metadata !{i32 28, i32 10, metadata !10, metadata !98}
!107 = metadata !{i32 30, i32 6, metadata !53, metadata !98}
!108 = metadata !{i32 56, i32 1, metadata !13, null}

