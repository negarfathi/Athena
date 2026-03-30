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
  %a = alloca [100000 x i32], align 16
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %a}, metadata !24), !dbg !28
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !33), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !36), !dbg !40
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !33), !dbg !35
  br label %main_bb4, !dbg !41

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %swapped.0 = phi i32 [ 1, %main_bb3 ], [ %swapped.1, %main_bb5 ]
  %"1" = icmp ne i32 %swapped.0, 0, !dbg !42
  br i1 %"1", label %main_bb5, label %main_bb9, !dbg !42

main_bb5:                                         ; preds = %main_bb4, %main_bb8
  %i.0 = phi i32 [ %"23", %main_bb8 ], [ 1, %main_bb4 ]
  %swapped.1 = phi i32 [ %swapped.2, %main_bb8 ], [ 0, %main_bb4 ]
  %"2" = icmp slt i32 %i.0, 100000, !dbg !44
  br i1 %"2", label %main_bb6, label %main_bb4, !dbg !44

main_bb6:                                         ; preds = %main_bb5
  %"3" = sub nsw i32 %i.0, 1, !dbg !46
  %"4" = sext i32 %"3" to i64, !dbg !46
  %"5" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"4", !dbg !46
  %"6" = load i32* %"5", align 4, !dbg !46
  %"7" = sext i32 %i.0 to i64, !dbg !46
  %"8" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"7", !dbg !46
  %"9" = load i32* %"8", align 4, !dbg !46
  %"10" = icmp sgt i32 %"6", %"9", !dbg !46
  br i1 %"10", label %main_bb7, label %main_bb8, !dbg !46

main_bb7:                                         ; preds = %main_bb6
  %"11" = sext i32 %i.0 to i64, !dbg !47
  %"12" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"11", !dbg !47
  %"13" = load i32* %"12", align 4, !dbg !47
  %"14" = sub nsw i32 %i.0, 1, !dbg !48
  %"15" = sext i32 %"14" to i64, !dbg !48
  %"16" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"15", !dbg !48
  %"17" = load i32* %"16", align 4, !dbg !48
  %"18" = sext i32 %i.0 to i64, !dbg !48
  %"19" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"18", !dbg !48
  store i32 %"17", i32* %"19", align 4, !dbg !48
  %"20" = sub nsw i32 %i.0, 1, !dbg !49
  %"21" = sext i32 %"20" to i64, !dbg !49
  %"22" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"21", !dbg !49
  store i32 %"13", i32* %"22", align 4, !dbg !49
  br label %main_bb8, !dbg !50

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %swapped.2 = phi i32 [ 1, %main_bb7 ], [ %swapped.1, %main_bb6 ]
  %"23" = add nsw i32 %i.0, 1, !dbg !51
  br label %main_bb5, !dbg !52

main_bb9:                                         ; preds = %main_bb4, %main_bb14
  %x.0 = phi i32 [ %"35", %main_bb14 ], [ 0, %main_bb4 ]
  %"24" = icmp slt i32 %x.0, 100000, !dbg !53
  br i1 %"24", label %main_bb10, label %main_bb15, !dbg !53

main_bb10:                                        ; preds = %main_bb9
  %"25" = add nsw i32 %x.0, 1, !dbg !57
  %"26" = sext i32 %x.0 to i64, !dbg !60
  %"27" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"26", !dbg !60
  %"28" = load i32* %"27", align 4, !dbg !60
  br label %main_bb11, !dbg !57

main_bb11:                                        ; preds = %main___VERIFIER_assert.exit, %main_bb10
  %y.0 = phi i32 [ %"25", %main_bb10 ], [ %"34", %main___VERIFIER_assert.exit ]
  %"29" = icmp slt i32 %y.0, 100000, !dbg !62
  br i1 %"29", label %main_bb12, label %main_bb14, !dbg !62

main_bb12:                                        ; preds = %main_bb11
  %"30" = sext i32 %y.0 to i64, !dbg !60
  %"31" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"30", !dbg !60
  %"32" = load i32* %"31", align 4, !dbg !60
  %"33" = icmp sle i32 %"28", %"32", !dbg !60
  br i1 %"33", label %main___VERIFIER_assert.exit, label %main_bb13, !dbg !65

main___VERIFIER_assert.exit:                      ; preds = %main_bb12
  %"34" = add nsw i32 %y.0, 1, !dbg !66
  br label %main_bb11, !dbg !66

main_bb13:                                        ; preds = %main_bb12
  call void (...)* @__VERIFIER_error() #4, !dbg !67
  unreachable, !dbg !67

main_bb14:                                        ; preds = %main_bb11
  %"35" = add nsw i32 %x.0, 1, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !69), !dbg !70
  br label %main_bb9, !dbg !68

main_bb15:                                        ; preds = %main_bb9
  ret i32 0, !dbg !71
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
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 2, i32 79, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 2, i32 57, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !23, i32 2, i32 57, i32 3, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 786443, metadata !1, metadata !18, i32 2, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786688, metadata !9, metadata !"a", metadata !5, i32 4, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 4]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!28 = metadata !{i32 4, i32 7, metadata !9, null}
!29 = metadata !{i32 1}
!30 = metadata !{i32 786688, metadata !9, metadata !"swapped", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [swapped] [line 5]
!31 = metadata !{i32 5, i32 7, metadata !9, null}
!32 = metadata !{i32 0}
!33 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 8]
!34 = metadata !{i32 786443, metadata !1, metadata !9, i32 6, i32 21, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 8, i32 9, metadata !34, null} ; [ DW_TAG_imported_declaration ]
!36 = metadata !{i32 786688, metadata !37, metadata !"t", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 11]
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 10, i32 30, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 10, i32 12, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 786443, metadata !1, metadata !34, i32 9, i32 26, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 11, i32 13, metadata !37, null}
!41 = metadata !{i32 6, i32 3, metadata !9, null}
!42 = metadata !{i32 6, i32 3, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !9, i32 6, i32 3, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 9, i32 5, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !34, i32 9, i32 5, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 10, i32 12, metadata !38, null}
!47 = metadata !{i32 11, i32 9, metadata !37, null}
!48 = metadata !{i32 12, i32 9, metadata !37, null}
!49 = metadata !{i32 13, i32 9, metadata !37, null}
!50 = metadata !{i32 15, i32 7, metadata !37, null}
!51 = metadata !{i32 16, i32 7, metadata !39, null}
!52 = metadata !{i32 17, i32 5, metadata !39, null}
!53 = metadata !{i32 21, i32 9, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 21, i32 9, i32 2, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 21, i32 9, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 22, i32 11, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 22, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 786443, metadata !1, metadata !56, i32 21, i32 36, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 23, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 22, i32 40, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 22, i32 11, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 22, i32 11, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !58, i32 22, i32 11, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 2, i32 39, metadata !18, metadata !60}
!66 = metadata !{i32 22, i32 34, metadata !58, null}
!67 = metadata !{i32 2, i32 57, metadata !22, metadata !60}
!68 = metadata !{i32 21, i32 30, metadata !56, null}
!69 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 19]
!70 = metadata !{i32 19, i32 7, metadata !9, null}
!71 = metadata !{i32 26, i32 3, metadata !9, null}

