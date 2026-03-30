; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !13), !dbg !14
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !13), !dbg !14
  br label %main_bb1, !dbg !20

main_bb1:                                         ; preds = %main_bb6, %main_bb0
  %y.0 = phi i32 [ 0, %main_bb0 ], [ %"10", %main_bb6 ]
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %x.1, %main_bb6 ]
  %"1" = icmp sge i32 %x.0, 0, !dbg !21
  %"2" = icmp sge i32 %y.0, 0, !dbg !23
  %. = select i1 %"1", i1 %"2", i1 false, !dbg !21
  br i1 %., label %main_bb2, label %main_bb7, !dbg !25

main_bb2:                                         ; preds = %main_bb1
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !27
  %"4" = icmp ne i32 %"3", 0, !dbg !27
  br i1 %"4", label %main_bb3, label %main_bb6, !dbg !27

main_bb3:                                         ; preds = %main_bb2, %main_bb5
  %y.1 = phi i32 [ %"8", %main_bb5 ], [ %y.0, %main_bb2 ]
  %"5" = icmp sle i32 %y.1, %"0", !dbg !30
  br i1 %"5", label %main_bb4, label %main_.critedge, !dbg !30

main_bb4:                                         ; preds = %main_bb3
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  %"7" = icmp ne i32 %"6", 0, !dbg !33
  br i1 %"7", label %main_bb5, label %main_.critedge, !dbg !35

main_bb5:                                         ; preds = %main_bb4
  %"8" = add nsw i32 %y.1, 1, !dbg !37
  br label %main_bb3, !dbg !39

main_.critedge:                                   ; preds = %main_bb3, %main_bb4
  %"9" = sub nsw i32 %x.0, 1, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !18), !dbg !19
  br label %main_bb6, !dbg !41

main_bb6:                                         ; preds = %main_.critedge, %main_bb2
  %y.2 = phi i32 [ %y.1, %main_.critedge ], [ %y.0, %main_bb2 ]
  %x.1 = phi i32 [ %"9", %main_.critedge ], [ %x.0, %main_bb2 ]
  %"10" = sub nsw i32 %y.2, 1, !dbg !42
  br label %main_bb1, !dbg !43

main_bb7:                                         ; preds = %main_bb1
  ret i32 0, !dbg !44
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 0}
!13 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 14]
!14 = metadata !{i32 14, i32 12, metadata !4, null}
!15 = metadata !{i32 16, i32 9, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"m", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 14]
!17 = metadata !{i32 14, i32 15, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!19 = metadata !{i32 14, i32 9, metadata !4, null}
!20 = metadata !{i32 18, i32 2, metadata !4, null}
!21 = metadata !{i32 18, i32 2, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 2, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 18, i32 2, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 2, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 18, i32 2, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 2, i32 3, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 19, i32 7, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !29, i32 19, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 20, i32 4, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !32, i32 20, i32 4, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 786443, metadata !1, metadata !28, i32 19, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 20, i32 21, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !32, i32 20, i32 21, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 20, i32 21, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !32, i32 20, i32 21, i32 3, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 21, i32 5, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !32, i32 20, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 22, i32 4, metadata !38, null}
!40 = metadata !{i32 23, i32 4, metadata !32, null}
!41 = metadata !{i32 24, i32 3, metadata !32, null}
!42 = metadata !{i32 25, i32 3, metadata !29, null}
!43 = metadata !{i32 26, i32 2, metadata !29, null}
!44 = metadata !{i32 27, i32 2, metadata !4, null}

