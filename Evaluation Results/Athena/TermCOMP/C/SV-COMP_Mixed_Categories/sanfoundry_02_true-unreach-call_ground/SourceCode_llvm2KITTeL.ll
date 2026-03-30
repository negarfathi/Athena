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
  %array = alloca [100000 x i32], align 16
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %array}, metadata !24), !dbg !28
  %"1" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 0, !dbg !29
  %"2" = load i32* %"1", align 4, !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !30), !dbg !31
  %"3" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 1, !dbg !32
  %"4" = load i32* %"3", align 4, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !33), !dbg !34
  %"5" = icmp slt i32 %"2", %"4", !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !33), !dbg !34
  %. = select i1 %"5", i32 %"2", i32 %"4", !dbg !35
  %.2 = select i1 %"5", i32 %"4", i32 %"2", !dbg !35
  call void @llvm.dbg.value(metadata !39, i64 0, metadata !40), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %largest1.1}, i64 0, metadata !33), !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !40), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !33), !dbg !34
  br label %main_bb4, !dbg !42

main_bb4:                                         ; preds = %main_bb8, %main_bb3
  %largest2.1 = phi i32 [ %., %main_bb3 ], [ %largest2.3, %main_bb8 ]
  %largest1.1 = phi i32 [ %.2, %main_bb3 ], [ %largest1.2, %main_bb8 ]
  %i.0 = phi i32 [ 2, %main_bb3 ], [ %"18", %main_bb8 ]
  %"6" = icmp slt i32 %i.0, 100000, !dbg !44
  br i1 %"6", label %main_bb5, label %main_bb9, !dbg !44

main_bb5:                                         ; preds = %main_bb4
  %"7" = sext i32 %i.0 to i64, !dbg !47
  %"8" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"7", !dbg !47
  %"9" = load i32* %"8", align 4, !dbg !47
  %"10" = icmp sge i32 %"9", %largest1.1, !dbg !47
  %"11" = sext i32 %i.0 to i64, !dbg !50
  %"12" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"11", !dbg !50
  %"13" = load i32* %"12", align 4, !dbg !50
  br i1 %"10", label %main_bb8, label %main_bb6, !dbg !47

main_bb6:                                         ; preds = %main_bb5
  %"14" = icmp sgt i32 %"13", %largest2.1, !dbg !52
  br i1 %"14", label %main_bb7, label %main_bb8, !dbg !52

main_bb7:                                         ; preds = %main_bb6
  %"15" = sext i32 %i.0 to i64, !dbg !54
  %"16" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"15", !dbg !54
  %"17" = load i32* %"16", align 4, !dbg !54
  br label %main_bb8, !dbg !56

main_bb8:                                         ; preds = %main_bb5, %main_bb7, %main_bb6
  %largest2.3 = phi i32 [ %largest1.1, %main_bb5 ], [ %"17", %main_bb7 ], [ %largest2.1, %main_bb6 ]
  %largest1.2 = phi i32 [ %"13", %main_bb5 ], [ %largest1.1, %main_bb7 ], [ %largest1.1, %main_bb6 ]
  %"18" = add nsw i32 %i.0, 1, !dbg !57
  br label %main_bb4, !dbg !57

main_bb9:                                         ; preds = %main_bb4, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"24", %main___VERIFIER_assert.exit ], [ 0, %main_bb4 ]
  %"19" = icmp slt i32 %x.0, 100000, !dbg !58
  br i1 %"19", label %main_bb10, label %main_bb12, !dbg !58

main_bb10:                                        ; preds = %main_bb9
  %"20" = sext i32 %x.0 to i64, !dbg !62
  %"21" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"20", !dbg !62
  %"22" = load i32* %"21", align 4, !dbg !62
  %"23" = icmp sle i32 %"22", %largest1.1, !dbg !62
  br i1 %"23", label %main___VERIFIER_assert.exit, label %main_bb11, !dbg !64

main___VERIFIER_assert.exit:                      ; preds = %main_bb10
  %"24" = add nsw i32 %x.0, 1, !dbg !65
  br label %main_bb9, !dbg !65

main_bb11:                                        ; preds = %main_bb10
  call void (...)* @__VERIFIER_error() #4, !dbg !66
  unreachable, !dbg !66

main_bb12:                                        ; preds = %main_bb9, %main___VERIFIER_assert.exit1
  %x.1 = phi i32 [ %"34", %main___VERIFIER_assert.exit1 ], [ 0, %main_bb9 ]
  %"25" = icmp slt i32 %x.1, 100000, !dbg !67
  br i1 %"25", label %main_bb13, label %main_bb16, !dbg !67

main_bb13:                                        ; preds = %main_bb12
  %"26" = sext i32 %x.1 to i64, !dbg !71
  %"27" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"26", !dbg !71
  %"28" = load i32* %"27", align 4, !dbg !71
  %"29" = icmp sle i32 %"28", %largest2.1, !dbg !71
  br i1 %"29", label %main___VERIFIER_assert.exit1, label %main_bb14, !dbg !71

main_bb14:                                        ; preds = %main_bb13
  %"30" = sext i32 %x.1 to i64, !dbg !73
  %"31" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"30", !dbg !73
  %"32" = load i32* %"31", align 4, !dbg !73
  %"33" = icmp eq i32 %"32", %largest1.1, !dbg !73
  br i1 %"33", label %main___VERIFIER_assert.exit1, label %main_bb15, !dbg !75

main___VERIFIER_assert.exit1:                     ; preds = %main_bb14, %main_bb13
  %"34" = add nsw i32 %x.1, 1, !dbg !79
  br label %main_bb12, !dbg !79

main_bb15:                                        ; preds = %main_bb14
  call void (...)* @__VERIFIER_error() #4, !dbg !80
  unreachable, !dbg !80

main_bb16:                                        ; preds = %main_bb12
  ret i32 0, !dbg !81
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 3, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [main]
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
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 2, i32 79, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 2, i32 57, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !23, i32 2, i32 57, i32 3, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 786443, metadata !1, metadata !18, i32 2, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786688, metadata !9, metadata !"array", metadata !5, i32 5, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array] [line 5]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!28 = metadata !{i32 5, i32 9, metadata !9, null}
!29 = metadata !{i32 10, i32 5, metadata !9, null}
!30 = metadata !{i32 786688, metadata !9, metadata !"largest1", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largest1] [line 7]
!31 = metadata !{i32 7, i32 9, metadata !9, null}
!32 = metadata !{i32 11, i32 5, metadata !9, null}
!33 = metadata !{i32 786688, metadata !9, metadata !"largest2", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [largest2] [line 8]
!34 = metadata !{i32 8, i32 9, metadata !9, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 12, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !9, i32 12, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786688, metadata !9, metadata !"temp", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 9]
!38 = metadata !{i32 9, i32 9, metadata !9, null}
!39 = metadata !{i32 2}
!40 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!41 = metadata !{i32 6, i32 9, metadata !9, null}
!42 = metadata !{i32 18, i32 10, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 18, i32 10, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 18, i32 10, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !43, i32 18, i32 10, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 20, i32 13, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 20, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 786443, metadata !1, metadata !43, i32 19, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 23, i32 13, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !48, i32 21, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 25, i32 18, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !48, i32 25, i32 18, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 27, i32 13, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 26, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 28, i32 9, metadata !55, null}
!57 = metadata !{i32 18, i32 29, metadata !43, null}
!58 = metadata !{i32 31, i32 10, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !60, i32 31, i32 10, i32 2, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 31, i32 10, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 32, i32 7, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 31, i32 37, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 2, i32 39, metadata !18, metadata !62}
!65 = metadata !{i32 31, i32 31, metadata !61, null}
!66 = metadata !{i32 2, i32 57, metadata !22, metadata !62}
!67 = metadata !{i32 34, i32 10, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !69, i32 34, i32 10, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 34, i32 10, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 786443, metadata !1, metadata !9, i32 34, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 35, i32 7, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !70, i32 34, i32 37, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 35, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !72, i32 35, i32 7, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 2, i32 39, metadata !18, metadata !76}
!76 = metadata !{i32 35, i32 7, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 35, i32 7, i32 3, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 786443, metadata !1, metadata !72, i32 35, i32 7, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 34, i32 31, metadata !70, null}
!80 = metadata !{i32 2, i32 57, metadata !22, metadata !76}
!81 = metadata !{i32 37, i32 3, metadata !9, null}

