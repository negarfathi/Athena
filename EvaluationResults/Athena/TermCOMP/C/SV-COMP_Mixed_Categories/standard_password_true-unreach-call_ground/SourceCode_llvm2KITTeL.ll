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
  %password = alloca [100000 x i32], align 16
  %guess = alloca [100000 x i32], align 16
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %password}, metadata !24), !dbg !28
  call void @llvm.dbg.declare(metadata !{[100000 x i32]* %guess}, metadata !29), !dbg !30
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !35), !dbg !36
  br label %main_bb4, !dbg !37

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %result.0 = phi i32 [ 1, %main_bb3 ], [ %.result.0, %main_bb5 ]
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"9", %main_bb5 ]
  %"1" = icmp slt i32 %i.0, 100000, !dbg !39
  br i1 %"1", label %main_bb5, label %main_bb6, !dbg !39

main_bb5:                                         ; preds = %main_bb4
  %"2" = sext i32 %i.0 to i64, !dbg !42
  %"3" = getelementptr inbounds [100000 x i32]* %password, i32 0, i64 %"2", !dbg !42
  %"4" = load i32* %"3", align 4, !dbg !42
  %"5" = sext i32 %i.0 to i64, !dbg !42
  %"6" = getelementptr inbounds [100000 x i32]* %guess, i32 0, i64 %"5", !dbg !42
  %"7" = load i32* %"6", align 4, !dbg !42
  %"8" = icmp ne i32 %"4", %"7", !dbg !42
  %.result.0 = select i1 %"8", i32 0, i32 %result.0, !dbg !42
  %"9" = add nsw i32 %i.0, 1, !dbg !45
  br label %main_bb4, !dbg !45

main_bb6:                                         ; preds = %main_bb4
  %"10" = icmp ne i32 %result.0, 0, !dbg !46
  br i1 %"10", label %main_bb7, label %main_bb10, !dbg !46

main_bb7:                                         ; preds = %main_bb6, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"19", %main___VERIFIER_assert.exit ], [ 0, %main_bb6 ]
  %"11" = icmp slt i32 %x.0, 100000, !dbg !48
  br i1 %"11", label %main_bb8, label %main_bb10, !dbg !48

main_bb8:                                         ; preds = %main_bb7
  %"12" = sext i32 %x.0 to i64, !dbg !53
  %"13" = getelementptr inbounds [100000 x i32]* %password, i32 0, i64 %"12", !dbg !53
  %"14" = load i32* %"13", align 4, !dbg !53
  %"15" = sext i32 %x.0 to i64, !dbg !53
  %"16" = getelementptr inbounds [100000 x i32]* %guess, i32 0, i64 %"15", !dbg !53
  %"17" = load i32* %"16", align 4, !dbg !53
  %"18" = icmp eq i32 %"14", %"17", !dbg !53
  br i1 %"18", label %main___VERIFIER_assert.exit, label %main_bb9, !dbg !55

main___VERIFIER_assert.exit:                      ; preds = %main_bb8
  %"19" = add nsw i32 %x.0, 1, !dbg !56
  br label %main_bb7, !dbg !56

main_bb9:                                         ; preds = %main_bb8
  call void (...)* @__VERIFIER_error() #4, !dbg !57
  unreachable, !dbg !57

main_bb10:                                        ; preds = %main_bb7, %main_bb6
  ret i32 0, !dbg !58
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
!24 = metadata !{i32 786688, metadata !9, metadata !"password", metadata !5, i32 4, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [password] [line 4]
!25 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!28 = metadata !{i32 4, i32 7, metadata !9, null}
!29 = metadata !{i32 786688, metadata !9, metadata !"guess", metadata !5, i32 5, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [guess] [line 5]
!30 = metadata !{i32 5, i32 7, metadata !9, null}
!31 = metadata !{i32 1}
!32 = metadata !{i32 786688, metadata !9, metadata !"result", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [result] [line 7]
!33 = metadata !{i32 7, i32 7, metadata !9, null}
!34 = metadata !{i32 0}
!35 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!36 = metadata !{i32 6, i32 7, metadata !9, null}
!37 = metadata !{i32 8, i32 9, metadata !38, null} ; [ DW_TAG_imported_declaration ]
!38 = metadata !{i32 786443, metadata !1, metadata !9, i32 8, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 8, i32 9, metadata !40, null} ; [ DW_TAG_imported_declaration ]
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 8, i32 9, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !38, i32 8, i32 9, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 9, i32 10, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 9, i32 10, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 786443, metadata !1, metadata !38, i32 8, i32 36, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 8, i32 30, metadata !38, null} ; [ DW_TAG_imported_declaration ]
!46 = metadata !{i32 13, i32 8, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 13, i32 8, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 15, i32 11, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 15, i32 11, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 11, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 15, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 786443, metadata !1, metadata !47, i32 13, i32 17, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 16, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !51, i32 15, i32 38, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 2, i32 39, metadata !18, metadata !53}
!56 = metadata !{i32 15, i32 32, metadata !51, null}
!57 = metadata !{i32 2, i32 57, metadata !22, metadata !53}
!58 = metadata !{i32 19, i32 3, metadata !9, null}

