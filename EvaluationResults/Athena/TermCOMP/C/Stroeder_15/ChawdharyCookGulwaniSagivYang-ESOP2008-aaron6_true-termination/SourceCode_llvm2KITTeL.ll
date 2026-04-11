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
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !22), !dbg !23
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !25), !dbg !26
  %"5" = add nsw i32 %"0", %"2", !dbg !27
  %"6" = icmp sge i32 %"5", 0, !dbg !27
  br i1 %"6", label %main_bb1, label %main_.critedge, !dbg !27

main_bb1:                                         ; preds = %main_bb4, %main_bb3, %main_bb0
  %ty.0 = phi i32 [ %"3", %main_bb0 ], [ %y.0, %main_bb4 ], [ %ty.0, %main_bb3 ]
  %y.0 = phi i32 [ %"2", %main_bb0 ], [ %"18", %main_bb4 ], [ %y.0, %main_bb3 ]
  %tx.0 = phi i32 [ %"1", %main_bb0 ], [ %x.0, %main_bb3 ], [ %x.0, %main_bb4 ]
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %"17", %main_bb4 ], [ %"17", %main_bb3 ]
  %"7" = icmp sle i32 %x.0, %"4", !dbg !29
  br i1 %"7", label %main_bb2, label %main_.critedge, !dbg !29

main_bb2:                                         ; preds = %main_bb1
  %"8" = mul nsw i32 2, %tx.0, !dbg !32
  %"9" = add nsw i32 %"8", %y.0, !dbg !32
  %"10" = icmp sge i32 %x.0, %"9", !dbg !32
  %"11" = add nsw i32 %ty.0, 1
  %"12" = icmp sge i32 %y.0, %"11", !dbg !34
  %or.cond = and i1 %"10", %"12", !dbg !32
  %"13" = add nsw i32 %tx.0, 1
  %"14" = icmp sge i32 %x.0, %"13", !dbg !36
  %or.cond4 = and i1 %or.cond, %"14", !dbg !32
  br i1 %or.cond4, label %main_bb3, label %main_.critedge, !dbg !32

main_bb3:                                         ; preds = %main_bb2
  %"15" = call i32 @__VERIFIER_nondet_int(), !dbg !38
  %"16" = icmp ne i32 %"15", 0, !dbg !38
  %"17" = call i32 @__VERIFIER_nondet_int(), !dbg !41
  br i1 %"16", label %main_bb4, label %main_bb1, !dbg !38

main_bb4:                                         ; preds = %main_bb3
  %"18" = call i32 @__VERIFIER_nondet_int(), !dbg !43
  br label %main_bb1, !dbg !44

main_.critedge:                                   ; preds = %main_bb2, %main_bb1, %main_bb0
  ret i32 0, !dbg !45
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
!12 = metadata !{i32 15, i32 6, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!14 = metadata !{i32 14, i32 9, metadata !4, null}
!15 = metadata !{i32 16, i32 7, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"tx", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tx] [line 14]
!17 = metadata !{i32 14, i32 12, metadata !4, null}
!18 = metadata !{i32 17, i32 6, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 14]
!20 = metadata !{i32 14, i32 16, metadata !4, null}
!21 = metadata !{i32 18, i32 7, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"ty", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ty] [line 14]
!23 = metadata !{i32 14, i32 19, metadata !4, null}
!24 = metadata !{i32 19, i32 6, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"n", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 14]
!26 = metadata !{i32 14, i32 23, metadata !4, null}
!27 = metadata !{i32 20, i32 6, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 21, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 21, i32 3, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786443, metadata !1, metadata !28, i32 20, i32 18, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 21, i32 3, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 21, i32 3, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 21, i32 3, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !31, i32 21, i32 3, i32 4, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 21, i32 3, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !31, i32 21, i32 3, i32 6, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 22, i32 8, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 22, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 786443, metadata !1, metadata !31, i32 21, i32 67, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 25, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !39, i32 22, i32 38, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 26, i32 9, metadata !42, null}
!44 = metadata !{i32 27, i32 4, metadata !42, null}
!45 = metadata !{i32 33, i32 2, metadata !4, null}

