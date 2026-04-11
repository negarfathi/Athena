; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !15, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !20), !dbg !21
  br label %main_bb1, !dbg !22

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %b.0 = phi i32 [ 1, %main_bb0 ], [ %b.2, %main_bb2 ]
  %a.0 = phi i32 [ 1, %main_bb0 ], [ %.1, %main_bb2 ]
  %c.0 = phi i32 [ 1, %main_bb0 ], [ %c.1, %main_bb2 ]
  %"0" = mul nsw i32 %a.0, %a.0, !dbg !23
  %"1" = mul nsw i32 %"0", %a.0, !dbg !23
  %"2" = mul nsw i32 %b.0, %b.0, !dbg !23
  %"3" = mul nsw i32 %"2", %b.0, !dbg !23
  %"4" = mul nsw i32 %c.0, %c.0, !dbg !23
  %"5" = mul nsw i32 %"4", %c.0, !dbg !23
  %"6" = add nsw i32 %"3", %"5", !dbg !23
  %"7" = icmp ne i32 %"1", %"6", !dbg !23
  %"8" = icmp sle i32 %c.0, 1000, !dbg !25
  %. = select i1 %"7", i1 %"8", i1 false, !dbg !23
  br i1 %., label %main_bb2, label %main_bb3, !dbg !27

main_bb2:                                         ; preds = %main_bb1
  %"9" = add nsw i32 %a.0, 1, !dbg !29
  %"10" = icmp sgt i32 %"9", 1000, !dbg !31
  %"11" = add nsw i32 %b.0, 1, !dbg !33
  %.b.0 = select i1 %"10", i32 %"11", i32 %b.0, !dbg !31
  %.1 = select i1 %"10", i32 1, i32 %"9", !dbg !31
  %"12" = icmp sgt i32 %.b.0, 1000, !dbg !35
  %"13" = add nsw i32 %c.0, 1, !dbg !37
  %b.2 = select i1 %"12", i32 1, i32 %.b.0, !dbg !35
  %c.1 = select i1 %"12", i32 %"13", i32 %c.0, !dbg !35
  br label %main_bb1, !dbg !35

main_bb3:                                         ; preds = %main_bb1
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 1000}
!13 = metadata !{i32 786688, metadata !4, metadata !"MAX", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MAX] [line 6]
!14 = metadata !{i32 6, i32 9, metadata !4, null}
!15 = metadata !{i32 1}
!16 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 7]
!17 = metadata !{i32 7, i32 9, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 7]
!19 = metadata !{i32 7, i32 12, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 7]
!21 = metadata !{i32 7, i32 15, metadata !4, null}
!22 = metadata !{i32 12, i32 5, metadata !4, null}
!23 = metadata !{i32 12, i32 5, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 12, i32 5, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 5, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 12, i32 5, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 5, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 13, i32 9, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 56, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 14, i32 13, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 14, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 16, i32 13, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !32, i32 14, i32 20, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 18, i32 13, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !30, i32 18, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 20, i32 13, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !36, i32 18, i32 20, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 23, i32 5, metadata !4, null}

