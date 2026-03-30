; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
__VERIFIER_assert_bb0:
  call void @llvm.dbg.value(metadata !{i32 %cond}, i64 0, metadata !15), !dbg !16
  %"0" = icmp ne i32 %cond, 0, !dbg !17
  br i1 %"0", label %__VERIFIER_assert_bb1, label %__VERIFIER_assert_bb2, !dbg !17

__VERIFIER_assert_bb1:                            ; preds = %__VERIFIER_assert_bb0
  ret void, !dbg !19

__VERIFIER_assert_bb2:                            ; preds = %__VERIFIER_assert_bb0
  call void (...)* @__VERIFIER_error() #3, !dbg !21
  unreachable, !dbg !21
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %a1 = alloca [100000 x i32], align 16
  %a2 = alloca [100000 x i32], align 16
  %a3 = alloca [100000 x i32], align 16
  %a4 = alloca [100000 x i32], align 16
  %a5 = alloca [100000 x i32], align 16
  %a6 = alloca [100000 x i32], align 16
  %a7 = alloca [100000 x i32], align 16
  %a8 = alloca [100000 x i32], align 16
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a1}, metadata !24), !dbg !28
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a2}, metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a3}, metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a4}, metadata !33), !dbg !34
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a5}, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a6}, metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a7}, metadata !39), !dbg !40
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a8}, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !44), !dbg !45
  br label %main_bb4, !dbg !46

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"7", %main_bb5 ]
  %"1" = icmp slt i32 %i.0, 100000, !dbg !48
  br i1 %"1", label %main_bb5, label %main_bb6, !dbg !48

main_bb5:                                         ; preds = %main_bb4
  %"2" = sext i32 %i.0 to i64, !dbg !51
  %"3" = getelementptr inbounds [100000 x i32]* %a1, i32 0, i64 %"2", !dbg !51
  %"4" = load i32* %"3", align 4, !dbg !51
  %"5" = sext i32 %i.0 to i64, !dbg !51
  %"6" = getelementptr inbounds [100000 x i32]* %a2, i32 0, i64 %"5", !dbg !51
  store i32 %"4", i32* %"6", align 4, !dbg !51
  %"7" = add nsw i32 %i.0, 1, !dbg !53
  br label %main_bb4, !dbg !53

main_bb6:                                         ; preds = %main_bb4, %main_bb7
  %i.1 = phi i32 [ %"14", %main_bb7 ], [ 0, %main_bb4 ]
  %"8" = icmp slt i32 %i.1, 100000, !dbg !54
  br i1 %"8", label %main_bb7, label %main_bb8, !dbg !54

main_bb7:                                         ; preds = %main_bb6
  %"9" = sext i32 %i.1 to i64, !dbg !58
  %"10" = getelementptr inbounds [100000 x i32]* %a2, i32 0, i64 %"9", !dbg !58
  %"11" = load i32* %"10", align 4, !dbg !58
  %"12" = sext i32 %i.1 to i64, !dbg !58
  %"13" = getelementptr inbounds [100000 x i32]* %a3, i32 0, i64 %"12", !dbg !58
  store i32 %"11", i32* %"13", align 4, !dbg !58
  %"14" = add nsw i32 %i.1, 1, !dbg !60
  br label %main_bb6, !dbg !60

main_bb8:                                         ; preds = %main_bb6, %main_bb9
  %i.2 = phi i32 [ %"21", %main_bb9 ], [ 0, %main_bb6 ]
  %"15" = icmp slt i32 %i.2, 100000, !dbg !61
  br i1 %"15", label %main_bb9, label %main_bb10, !dbg !61

main_bb9:                                         ; preds = %main_bb8
  %"16" = sext i32 %i.2 to i64, !dbg !65
  %"17" = getelementptr inbounds [100000 x i32]* %a3, i32 0, i64 %"16", !dbg !65
  %"18" = load i32* %"17", align 4, !dbg !65
  %"19" = sext i32 %i.2 to i64, !dbg !65
  %"20" = getelementptr inbounds [100000 x i32]* %a4, i32 0, i64 %"19", !dbg !65
  store i32 %"18", i32* %"20", align 4, !dbg !65
  %"21" = add nsw i32 %i.2, 1, !dbg !67
  br label %main_bb8, !dbg !67

main_bb10:                                        ; preds = %main_bb8, %main_bb11
  %i.3 = phi i32 [ %"28", %main_bb11 ], [ 0, %main_bb8 ]
  %"22" = icmp slt i32 %i.3, 100000, !dbg !68
  br i1 %"22", label %main_bb11, label %main_bb12, !dbg !68

main_bb11:                                        ; preds = %main_bb10
  %"23" = sext i32 %i.3 to i64, !dbg !72
  %"24" = getelementptr inbounds [100000 x i32]* %a4, i32 0, i64 %"23", !dbg !72
  %"25" = load i32* %"24", align 4, !dbg !72
  %"26" = sext i32 %i.3 to i64, !dbg !72
  %"27" = getelementptr inbounds [100000 x i32]* %a5, i32 0, i64 %"26", !dbg !72
  store i32 %"25", i32* %"27", align 4, !dbg !72
  %"28" = add nsw i32 %i.3, 1, !dbg !74
  br label %main_bb10, !dbg !74

main_bb12:                                        ; preds = %main_bb10, %main_bb13
  %i.4 = phi i32 [ %"35", %main_bb13 ], [ 0, %main_bb10 ]
  %"29" = icmp slt i32 %i.4, 100000, !dbg !75
  br i1 %"29", label %main_bb13, label %main_bb14, !dbg !75

main_bb13:                                        ; preds = %main_bb12
  %"30" = sext i32 %i.4 to i64, !dbg !79
  %"31" = getelementptr inbounds [100000 x i32]* %a5, i32 0, i64 %"30", !dbg !79
  %"32" = load i32* %"31", align 4, !dbg !79
  %"33" = sext i32 %i.4 to i64, !dbg !79
  %"34" = getelementptr inbounds [100000 x i32]* %a6, i32 0, i64 %"33", !dbg !79
  store i32 %"32", i32* %"34", align 4, !dbg !79
  %"35" = add nsw i32 %i.4, 1, !dbg !81
  br label %main_bb12, !dbg !81

main_bb14:                                        ; preds = %main_bb12, %main_bb15
  %i.5 = phi i32 [ %"42", %main_bb15 ], [ 0, %main_bb12 ]
  %"36" = icmp slt i32 %i.5, 100000, !dbg !82
  br i1 %"36", label %main_bb15, label %main_bb16, !dbg !82

main_bb15:                                        ; preds = %main_bb14
  %"37" = sext i32 %i.5 to i64, !dbg !86
  %"38" = getelementptr inbounds [100000 x i32]* %a6, i32 0, i64 %"37", !dbg !86
  %"39" = load i32* %"38", align 4, !dbg !86
  %"40" = sext i32 %i.5 to i64, !dbg !86
  %"41" = getelementptr inbounds [100000 x i32]* %a7, i32 0, i64 %"40", !dbg !86
  store i32 %"39", i32* %"41", align 4, !dbg !86
  %"42" = add nsw i32 %i.5, 1, !dbg !88
  br label %main_bb14, !dbg !88

main_bb16:                                        ; preds = %main_bb14, %main_bb17
  %i.6 = phi i32 [ %"49", %main_bb17 ], [ 0, %main_bb14 ]
  %"43" = icmp slt i32 %i.6, 100000, !dbg !89
  br i1 %"43", label %main_bb17, label %main_bb18, !dbg !89

main_bb17:                                        ; preds = %main_bb16
  %"44" = sext i32 %i.6 to i64, !dbg !93
  %"45" = getelementptr inbounds [100000 x i32]* %a7, i32 0, i64 %"44", !dbg !93
  %"46" = load i32* %"45", align 4, !dbg !93
  %"47" = sext i32 %i.6 to i64, !dbg !93
  %"48" = getelementptr inbounds [100000 x i32]* %a8, i32 0, i64 %"47", !dbg !93
  store i32 %"46", i32* %"48", align 4, !dbg !93
  %"49" = add nsw i32 %i.6, 1, !dbg !95
  br label %main_bb16, !dbg !95

main_bb18:                                        ; preds = %main_bb16, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"58", %main___VERIFIER_assert.exit ], [ 0, %main_bb16 ]
  %"50" = icmp slt i32 %x.0, 100000, !dbg !96
  br i1 %"50", label %main_bb19, label %main_bb21, !dbg !96

main_bb19:                                        ; preds = %main_bb18
  %"51" = sext i32 %x.0 to i64, !dbg !100
  %"52" = getelementptr inbounds [100000 x i32]* %a1, i32 0, i64 %"51", !dbg !100
  %"53" = load i32* %"52", align 4, !dbg !100
  %"54" = sext i32 %x.0 to i64, !dbg !100
  %"55" = getelementptr inbounds [100000 x i32]* %a8, i32 0, i64 %"54", !dbg !100
  %"56" = load i32* %"55", align 4, !dbg !100
  %"57" = icmp eq i32 %"53", %"56", !dbg !100
  br i1 %"57", label %main___VERIFIER_assert.exit, label %main_bb20, !dbg !102

main___VERIFIER_assert.exit:                      ; preds = %main_bb19
  %"58" = add nsw i32 %x.0, 1, !dbg !103
  br label %main_bb18, !dbg !103

main_bb20:                                        ; preds = %main_bb19
  call void (...)* @__VERIFIER_error() #4, !dbg !104
  unreachable, !dbg !104

main_bb21:                                        ; preds = %main_bb18
  ret i32 0, !dbg !105
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_assert", metadata !"__VERIFIER_assert", metadata !"", i32 2, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @__VERIFIER_assert, null, null, metadata !2, i32 2} ; [ DW_TAG_subprogram ] [line 2] [def] [__VERIFIER_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 3, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 3} ; [ DW_TAG_subprogram ] [line 3] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"cond", metadata !5, i32 16777218, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cond] [line 2]
!16 = metadata !{i32 2, i32 28, metadata !4, null}
!17 = metadata !{i32 2, i32 39, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 2, i32 39, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!19 = metadata !{i32 2, i32 79, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 2, i32 79, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 2, i32 57, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !23, i32 2, i32 57, i32 3, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 786443, metadata !1, metadata !18, i32 2, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786688, metadata !9, metadata !"a1", metadata !5, i32 4, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a1] [line 4]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!28 = metadata !{i32 4, i32 7, metadata !9, null}
!29 = metadata !{i32 786688, metadata !9, metadata !"a2", metadata !5, i32 5, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 5]
!30 = metadata !{i32 5, i32 7, metadata !9, null}
!31 = metadata !{i32 786688, metadata !9, metadata !"a3", metadata !5, i32 6, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a3] [line 6]
!32 = metadata !{i32 6, i32 7, metadata !9, null}
!33 = metadata !{i32 786688, metadata !9, metadata !"a4", metadata !5, i32 7, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a4] [line 7]
!34 = metadata !{i32 7, i32 7, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"a5", metadata !5, i32 8, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a5] [line 8]
!36 = metadata !{i32 8, i32 7, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!37 = metadata !{i32 786688, metadata !9, metadata !"a6", metadata !5, i32 9, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a6] [line 9]
!38 = metadata !{i32 9, i32 7, metadata !9, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"a7", metadata !5, i32 10, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a7] [line 10]
!40 = metadata !{i32 10, i32 7, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"a8", metadata !5, i32 11, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a8] [line 11]
!42 = metadata !{i32 11, i32 7, metadata !9, null}
!43 = metadata !{i32 0}
!44 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!45 = metadata !{i32 12, i32 7, metadata !9, null}
!46 = metadata !{i32 13, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 13, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 13, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 13, i32 9, i32 2, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 786443, metadata !1, metadata !47, i32 13, i32 9, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 14, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !47, i32 13, i32 36, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 13, i32 30, metadata !47, null}
!54 = metadata !{i32 16, i32 9, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 16, i32 9, i32 2, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 16, i32 9, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !9, i32 16, i32 3, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 17, i32 5, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !57, i32 16, i32 36, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 16, i32 30, metadata !57, null}
!61 = metadata !{i32 19, i32 9, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 19, i32 9, i32 2, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 19, i32 9, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !9, i32 19, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 20, i32 5, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !64, i32 19, i32 36, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 19, i32 30, metadata !64, null}
!68 = metadata !{i32 22, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 22, i32 9, i32 2, i32 28} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 786443, metadata !1, metadata !71, i32 22, i32 9, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 23, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !71, i32 22, i32 36, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 22, i32 30, metadata !71, null}
!75 = metadata !{i32 25, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 25, i32 9, i32 2, i32 30} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 25, i32 9, i32 1, i32 29} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 3, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 26, i32 5, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 25, i32 36, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 25, i32 30, metadata !78, null}
!82 = metadata !{i32 28, i32 9, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !84, i32 28, i32 9, i32 2, i32 32} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 28, i32 9, i32 1, i32 31} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 3, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 29, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 28, i32 36, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 28, i32 30, metadata !85, null}
!89 = metadata !{i32 31, i32 9, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !91, i32 31, i32 9, i32 2, i32 34} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 31, i32 9, i32 1, i32 33} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 3, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 32, i32 5, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !92, i32 31, i32 36, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 31, i32 30, metadata !92, null}
!96 = metadata !{i32 35, i32 9, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 35, i32 9, i32 2, i32 36} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!98 = metadata !{i32 786443, metadata !1, metadata !99, i32 35, i32 9, i32 1, i32 35} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 786443, metadata !1, metadata !9, i32 35, i32 3, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!100 = metadata !{i32 36, i32 5, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !99, i32 35, i32 36, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 2, i32 39, metadata !18, metadata !100}
!103 = metadata !{i32 35, i32 30, metadata !99, null}
!104 = metadata !{i32 2, i32 57, metadata !22, metadata !100}
!105 = metadata !{i32 38, i32 3, metadata !9, null}

