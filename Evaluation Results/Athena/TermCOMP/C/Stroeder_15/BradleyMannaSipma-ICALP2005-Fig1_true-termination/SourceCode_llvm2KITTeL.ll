; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !16), !dbg !17
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !19), !dbg !20
  %"3" = icmp slt i32 %"2", 536870912, !dbg !21
  %"4" = icmp slt i32 %"0", 536870912, !dbg !23
  %or.cond = and i1 %"3", %"4", !dbg !21
  %"5" = icmp slt i32 %"1", 536870912, !dbg !25
  %or.cond1 = and i1 %or.cond, %"5", !dbg !21
  %"6" = icmp sge i32 %"0", -1073741824, !dbg !27
  %or.cond2 = and i1 %or.cond1, %"6", !dbg !21
  %"7" = add nsw i32 %"0", %"1"
  %"8" = icmp sge i32 %"7", 0, !dbg !29
  %or.cond4 = and i1 %or.cond2, %"8", !dbg !21
  br i1 %or.cond4, label %main_bb1, label %main_bb5, !dbg !21

main_bb1:                                         ; preds = %main_bb0, %main_bb3, %main_bb4
  %y.0 = phi i32 [ %"14", %main_bb3 ], [ %y.0, %main_bb4 ], [ %"1", %main_bb0 ]
  %x.0 = phi i32 [ %"13", %main_bb3 ], [ %"15", %main_bb4 ], [ %"0", %main_bb0 ]
  %"9" = icmp sle i32 %x.0, %"2", !dbg !32
  br i1 %"9", label %main_bb2, label %main_bb5, !dbg !32

main_bb2:                                         ; preds = %main_bb1
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  %"11" = icmp ne i32 %"10", 0, !dbg !35
  br i1 %"11", label %main_bb3, label %main_bb4, !dbg !35

main_bb3:                                         ; preds = %main_bb2
  %"12" = mul nsw i32 2, %x.0, !dbg !38
  %"13" = add nsw i32 %"12", %y.0, !dbg !38
  %"14" = add nsw i32 %y.0, 1, !dbg !40
  br label %main_bb1, !dbg !41

main_bb4:                                         ; preds = %main_bb2
  %"15" = add nsw i32 %x.0, 1, !dbg !42
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1, %main_bb0
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 16, i32 6, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 15]
!14 = metadata !{i32 15, i32 9, metadata !4, null}
!15 = metadata !{i32 17, i32 6, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 15]
!17 = metadata !{i32 15, i32 12, metadata !4, null}
!18 = metadata !{i32 18, i32 6, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"N", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 15]
!20 = metadata !{i32 15, i32 15, metadata !4, null}
!21 = metadata !{i32 21, i32 6, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 21, i32 6, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 6, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 21, i32 6, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 6, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 21, i32 6, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 6, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 22, i32 10, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 22, i32 10, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 23, i32 7, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 23, i32 7, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 786443, metadata !1, metadata !30, i32 22, i32 22, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 24, i32 12, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 24, i32 12, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786443, metadata !1, metadata !34, i32 23, i32 22, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 25, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !36, i32 24, i32 42, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 26, i32 9, metadata !39, null}
!41 = metadata !{i32 27, i32 8, metadata !39, null}
!42 = metadata !{i32 28, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !36, i32 27, i32 15, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 33, i32 2, metadata !4, null}

