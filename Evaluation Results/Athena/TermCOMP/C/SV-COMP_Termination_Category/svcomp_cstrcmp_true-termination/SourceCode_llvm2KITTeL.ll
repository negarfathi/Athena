; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !26), !dbg !27
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !29), !dbg !30
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !31
  %"2" = add nsw i32 %"1", %size, !dbg !31
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !31
  ret i32 %"0", !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb1:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !34), !dbg !35
  %"4" = icmp slt i32 %"3", 1, !dbg !36
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !34), !dbg !35
  %. = select i1 %"4", i32 1, i32 %"3", !dbg !36
  %"5" = mul nsw i32 %., 1, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !40), !dbg !41
  %"6" = load i32* @"'memory0_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !43), !dbg !44
  %"7" = load i32* @"'memory0_freeIndex", align 4, !dbg !45
  %"8" = add nsw i32 %"7", %"5", !dbg !45
  store i32 %"8", i32* @"'memory0_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  %"9" = sub nsw i32 %., 1, !dbg !48
  %"10" = add nsw i32 %"6", %"9", !dbg !48
  %"11" = sext i32 %"10" to i64, !dbg !48
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !48
  store i8 0, i8* %"12", align 1, !dbg !48
  ret i32 %"6", !dbg !49
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @cstrcmp(i32 %s1, i32 %s2) #0 {
cstrcmp_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !52), !dbg !53
  br label %cstrcmp_bb3, !dbg !54

cstrcmp_bb3:                                      ; preds = %cstrcmp_bb5, %cstrcmp_bb2
  %.01 = phi i32 [ %s2, %cstrcmp_bb2 ], [ %"28", %cstrcmp_bb5 ]
  %.0 = phi i32 [ %s1, %cstrcmp_bb2 ], [ %"27", %cstrcmp_bb5 ]
  %"13" = sext i32 %.0 to i64, !dbg !55
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !55
  %"15" = load i8* %"14", align 1, !dbg !55
  %"16" = sext i8 %"15" to i32, !dbg !55
  %"17" = icmp ne i32 %"16", 0, !dbg !55
  br i1 %"17", label %cstrcmp_bb4, label %cstrcmp_.critedge, !dbg !55

cstrcmp_bb4:                                      ; preds = %cstrcmp_bb3
  %"18" = sext i32 %.0 to i64, !dbg !57
  %"19" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"18", !dbg !57
  %"20" = load i8* %"19", align 1, !dbg !57
  %"21" = sext i8 %"20" to i32, !dbg !57
  %"22" = sext i32 %.01 to i64, !dbg !57
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !57
  %"24" = load i8* %"23", align 1, !dbg !57
  %"25" = sext i8 %"24" to i32, !dbg !57
  %"26" = icmp eq i32 %"21", %"25", !dbg !57
  br i1 %"26", label %cstrcmp_bb5, label %cstrcmp_.critedge, !dbg !59

cstrcmp_bb5:                                      ; preds = %cstrcmp_bb4
  %"27" = add nsw i32 %.0, 1, !dbg !61
  %"28" = add nsw i32 %.01, 1, !dbg !63
  br label %cstrcmp_bb3, !dbg !64

cstrcmp_.critedge:                                ; preds = %cstrcmp_bb3, %cstrcmp_bb4
  %"29" = sext i32 %.0 to i64, !dbg !65
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !65
  %"31" = load i8* %"30", align 1, !dbg !65
  call void @llvm.dbg.value(metadata !{i8 %"31"}, i64 0, metadata !66), !dbg !68
  %"32" = sext i32 %.01 to i64, !dbg !69
  %"33" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"32", !dbg !69
  %"34" = load i8* %"33", align 1, !dbg !69
  call void @llvm.dbg.value(metadata !{i8 %"34"}, i64 0, metadata !70), !dbg !71
  %"35" = zext i8 %"31" to i32, !dbg !72
  %"36" = zext i8 %"34" to i32, !dbg !72
  %"37" = icmp slt i32 %"35", %"36", !dbg !72
  br i1 %"37", label %cstrcmp_bb7, label %cstrcmp_bb6, !dbg !72

cstrcmp_bb6:                                      ; preds = %cstrcmp_.critedge
  %"38" = zext i8 %"31" to i32, !dbg !73
  %"39" = zext i8 %"34" to i32, !dbg !73
  %"40" = icmp sgt i32 %"38", %"39", !dbg !73
  %"41" = zext i1 %"40" to i32, !dbg !73
  br label %cstrcmp_bb7, !dbg !73

cstrcmp_bb7:                                      ; preds = %cstrcmp_.critedge, %cstrcmp_bb6
  %"42" = phi i32 [ %"41", %cstrcmp_bb6 ], [ -1, %cstrcmp_.critedge ], !dbg !72
  ret i32 %"42", !dbg !75
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"43" = call i32 @__VERIFIER_nondet_int() #3, !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !80) #3, !dbg !81
  %"44" = icmp slt i32 %"43", 1, !dbg !82
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !80) #3, !dbg !81
  %..i = select i1 %"44", i32 1, i32 %"43", !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !83) #3, !dbg !85
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !87) #3, !dbg !88
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !89
  %"47" = add nsw i32 %"46", %..i, !dbg !89
  store i32 %"47", i32* @"'memory0_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !90) #3, !dbg !91
  %"48" = sub nsw i32 %..i, 1, !dbg !92
  %"49" = add nsw i32 %"45", %"48", !dbg !92
  %"50" = sext i32 %"49" to i64, !dbg !92
  %"51" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"50", !dbg !92
  store i8 0, i8* %"51", align 1, !dbg !92
  %"52" = call i32 @__VERIFIER_nondet_int() #3, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !95) #3, !dbg !96
  %"53" = icmp slt i32 %"52", 1, !dbg !97
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !95) #3, !dbg !96
  %..i1 = select i1 %"53", i32 1, i32 %"52", !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %..i1}, i64 0, metadata !98) #3, !dbg !100
  %"54" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !102) #3, !dbg !103
  %"55" = load i32* @"'memory0_freeIndex", align 4, !dbg !104
  %"56" = add nsw i32 %"55", %..i1, !dbg !104
  store i32 %"56", i32* @"'memory0_freeIndex", align 4, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !105) #3, !dbg !106
  %"57" = sub nsw i32 %..i1, 1, !dbg !107
  %"58" = add nsw i32 %"54", %"57", !dbg !107
  %"59" = sext i32 %"58" to i64, !dbg !107
  %"60" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"59", !dbg !107
  store i8 0, i8* %"60", align 1, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !108), !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !111), !dbg !112
  br label %main_bb9, !dbg !113

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %.01.i = phi i32 [ %"54", %main_bb8 ], [ %"76", %main_bb11 ], !dbg !109
  %.0.i = phi i32 [ %"45", %main_bb8 ], [ %"75", %main_bb11 ], !dbg !109
  %"61" = sext i32 %.0.i to i64, !dbg !114
  %"62" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"61", !dbg !114
  %"63" = load i8* %"62", align 1, !dbg !114
  %"64" = sext i8 %"63" to i32, !dbg !114
  %"65" = icmp ne i32 %"64", 0, !dbg !114
  br i1 %"65", label %main_bb10, label %main_.critedge.i, !dbg !114

main_bb10:                                        ; preds = %main_bb9
  %"66" = sext i32 %.0.i to i64, !dbg !115
  %"67" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"66", !dbg !115
  %"68" = load i8* %"67", align 1, !dbg !115
  %"69" = sext i8 %"68" to i32, !dbg !115
  %"70" = sext i32 %.01.i to i64, !dbg !115
  %"71" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"70", !dbg !115
  %"72" = load i8* %"71", align 1, !dbg !115
  %"73" = sext i8 %"72" to i32, !dbg !115
  %"74" = icmp eq i32 %"69", %"73", !dbg !115
  br i1 %"74", label %main_bb11, label %main_.critedge.i, !dbg !116

main_bb11:                                        ; preds = %main_bb10
  %"75" = add nsw i32 %.0.i, 1, !dbg !117
  %"76" = add nsw i32 %.01.i, 1, !dbg !118
  br label %main_bb9, !dbg !119

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"77" = sext i32 %.0.i to i64, !dbg !120
  %"78" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"77", !dbg !120
  %"79" = load i8* %"78", align 1, !dbg !120
  call void @llvm.dbg.value(metadata !{i8 %"79"}, i64 0, metadata !121), !dbg !122
  %"80" = sext i32 %.01.i to i64, !dbg !123
  %"81" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"80", !dbg !123
  %"82" = load i8* %"81", align 1, !dbg !123
  call void @llvm.dbg.value(metadata !{i8 %"82"}, i64 0, metadata !124), !dbg !125
  %"83" = zext i8 %"79" to i32, !dbg !126
  %"84" = zext i8 %"82" to i32, !dbg !126
  %"85" = icmp slt i32 %"83", %"84", !dbg !126
  br i1 %"85", label %main_cstrcmp.exit, label %main_bb12, !dbg !126

main_bb12:                                        ; preds = %main_.critedge.i
  %"86" = zext i8 %"79" to i32, !dbg !127
  %"87" = zext i8 %"82" to i32, !dbg !127
  %"88" = icmp sgt i32 %"86", %"87", !dbg !127
  %"89" = zext i1 %"88" to i32, !dbg !127
  br label %main_cstrcmp.exit, !dbg !127

main_cstrcmp.exit:                                ; preds = %main_.critedge.i, %main_bb12
  %"90" = phi i32 [ %"89", %main_bb12 ], [ -1, %main_.critedge.i ], !dbg !126
  ret i32 %"90", !dbg !109
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_nondet_String", metadata !"__VERIFIER_nondet_String", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__VERIFIER_nondet_String, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [__VERIFIER_nondet_String]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcmp", metadata !"cstrcmp", metadata !"", i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcmp, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [cstrcmp]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 50, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 50} ; [ DW_TAG_subprogram ] [line 50] [def] [main]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !19, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !20, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!27 = metadata !{i32 13, i32 26, metadata !4, null}
!28 = metadata !{i32 14, i32 4, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!30 = metadata !{i32 14, i32 8, metadata !4, null}
!31 = metadata !{i32 15, i32 4, metadata !4, null}
!32 = metadata !{i32 16, i32 4, metadata !4, null}
!33 = metadata !{i32 20, i32 18, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 20]
!35 = metadata !{i32 20, i32 9, metadata !9, null}
!36 = metadata !{i32 21, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 1}
!39 = metadata !{i32 24, i32 24, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [size] [line 13]
!41 = metadata !{i32 13, i32 26, metadata !4, metadata !39}
!42 = metadata !{i32 14, i32 4, metadata !4, metadata !39}
!43 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!44 = metadata !{i32 14, i32 8, metadata !4, metadata !39}
!45 = metadata !{i32 15, i32 4, metadata !4, metadata !39}
!46 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!47 = metadata !{i32 24, i32 9, metadata !9, null}
!48 = metadata !{i32 25, i32 5, metadata !9, null}
!49 = metadata !{i32 26, i32 5, metadata !9, null}
!50 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 33]
!51 = metadata !{i32 33, i32 19, metadata !12, null}
!52 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554465, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 33]
!53 = metadata !{i32 33, i32 27, metadata !12, null}
!54 = metadata !{i32 39, i32 6, metadata !12, null}
!55 = metadata !{i32 39, i32 6, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 6, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 39, i32 6, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 6, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 39, i32 6, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 6, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 40, i32 10, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 64, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 41, i32 10, metadata !62, null}
!64 = metadata !{i32 42, i32 6, metadata !62, null}
!65 = metadata !{i32 45, i32 6, metadata !12, null}
!66 = metadata !{i32 786688, metadata !12, metadata !"uc1", metadata !5, i32 35, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc1] [line 35]
!67 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!68 = metadata !{i32 35, i32 20, metadata !12, null}
!69 = metadata !{i32 46, i32 6, metadata !12, null}
!70 = metadata !{i32 786688, metadata !12, metadata !"uc2", metadata !5, i32 35, metadata !67, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc2] [line 35]
!71 = metadata !{i32 35, i32 25, metadata !12, null}
!72 = metadata !{i32 47, i32 6, metadata !12, null}
!73 = metadata !{i32 47, i32 6, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !12, i32 47, i32 6, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 47, i32 6, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 47, i32 6, i32 4, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 786443, metadata !1, metadata !12, i32 47, i32 6, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 20, i32 18, metadata !9, metadata !79}
!79 = metadata !{i32 51, i32 20, metadata !15, null}
!80 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [length] [line 20]
!81 = metadata !{i32 20, i32 9, metadata !9, metadata !79}
!82 = metadata !{i32 21, i32 9, metadata !37, metadata !79}
!83 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [size] [line 13]
!84 = metadata !{i32 24, i32 24, metadata !9, metadata !79}
!85 = metadata !{i32 13, i32 26, metadata !4, metadata !84}
!86 = metadata !{i32 14, i32 4, metadata !4, metadata !84}
!87 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!88 = metadata !{i32 14, i32 8, metadata !4, metadata !84}
!89 = metadata !{i32 15, i32 4, metadata !4, metadata !84}
!90 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!91 = metadata !{i32 24, i32 9, metadata !9, metadata !79}
!92 = metadata !{i32 25, i32 5, metadata !9, metadata !79}
!93 = metadata !{i32 20, i32 18, metadata !9, metadata !94}
!94 = metadata !{i32 51, i32 47, metadata !15, null}
!95 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !94} ; [ DW_TAG_auto_variable ] [length] [line 20]
!96 = metadata !{i32 20, i32 9, metadata !9, metadata !94}
!97 = metadata !{i32 21, i32 9, metadata !37, metadata !94}
!98 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [size] [line 13]
!99 = metadata !{i32 24, i32 24, metadata !9, metadata !94}
!100 = metadata !{i32 13, i32 26, metadata !4, metadata !99}
!101 = metadata !{i32 14, i32 4, metadata !4, metadata !99}
!102 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!103 = metadata !{i32 14, i32 8, metadata !4, metadata !99}
!104 = metadata !{i32 15, i32 4, metadata !4, metadata !99}
!105 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !94} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!106 = metadata !{i32 24, i32 9, metadata !9, metadata !94}
!107 = metadata !{i32 25, i32 5, metadata !9, metadata !94}
!108 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777249, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [s1] [line 33]
!109 = metadata !{i32 51, i32 12, metadata !15, null}
!110 = metadata !{i32 33, i32 19, metadata !12, metadata !109}
!111 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554465, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [s2] [line 33]
!112 = metadata !{i32 33, i32 27, metadata !12, metadata !109}
!113 = metadata !{i32 39, i32 6, metadata !12, metadata !109}
!114 = metadata !{i32 39, i32 6, metadata !56, metadata !109}
!115 = metadata !{i32 39, i32 6, metadata !58, metadata !109}
!116 = metadata !{i32 39, i32 6, metadata !60, metadata !109}
!117 = metadata !{i32 40, i32 10, metadata !62, metadata !109}
!118 = metadata !{i32 41, i32 10, metadata !62, metadata !109}
!119 = metadata !{i32 42, i32 6, metadata !62, metadata !109}
!120 = metadata !{i32 45, i32 6, metadata !12, metadata !109}
!121 = metadata !{i32 786688, metadata !12, metadata !"uc1", metadata !5, i32 35, metadata !67, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [uc1] [line 35]
!122 = metadata !{i32 35, i32 20, metadata !12, metadata !109}
!123 = metadata !{i32 46, i32 6, metadata !12, metadata !109}
!124 = metadata !{i32 786688, metadata !12, metadata !"uc2", metadata !5, i32 35, metadata !67, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [uc2] [line 35]
!125 = metadata !{i32 35, i32 25, metadata !12, metadata !109}
!126 = metadata !{i32 47, i32 6, metadata !12, metadata !109}
!127 = metadata !{i32 47, i32 6, metadata !74, metadata !109}

