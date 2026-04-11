; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !15), !dbg !16
  br label %main_bb1, !dbg !17

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"2", %main_bb2 ]
  %c.0 = phi i32 [ 0, %main_bb0 ], [ %"1", %main_bb2 ]
  %"0" = icmp slt i32 %i.0, 100, !dbg !19
  br i1 %"0", label %main_bb2, label %main_bb3, !dbg !19

main_bb2:                                         ; preds = %main_bb1
  %"1" = add nsw i32 %c.0, 1, !dbg !22
  %"2" = add nsw i32 %i.0, 1, !dbg !24
  br label %main_bb1, !dbg !24

main_bb3:                                         ; preds = %main_bb1, %main_bb4
  %j.0 = phi i32 [ %"5", %main_bb4 ], [ 5, %main_bb1 ]
  %c.1 = phi i32 [ %"4", %main_bb4 ], [ %c.0, %main_bb1 ]
  %"3" = icmp slt i32 %j.0, 21, !dbg !26
  br i1 %"3", label %main_bb4, label %main_bb5, !dbg !26

main_bb4:                                         ; preds = %main_bb3
  %"4" = add nsw i32 %c.1, 1, !dbg !30
  %"5" = add nsw i32 %j.0, 3, !dbg !32
  br label %main_bb3, !dbg !32

main_bb5:                                         ; preds = %main_bb3
  ret i32 %c.1, !dbg !34
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 1} ; [ DW_TAG_subprogram ] [line 1] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 0}
!13 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3]
!14 = metadata !{i32 3, i32 9, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 2, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 2]
!16 = metadata !{i32 2, i32 9, metadata !4, null}
!17 = metadata !{i32 4, i32 10, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 4, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!19 = metadata !{i32 4, i32 10, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !21, i32 4, i32 10, i32 4, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 786443, metadata !1, metadata !18, i32 4, i32 10, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 4, i32 31, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !18, i32 4, i32 31, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 4, i32 26, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !18, i32 4, i32 26, i32 3, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 5, i32 10, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !28, i32 5, i32 10, i32 4, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 786443, metadata !1, metadata !29, i32 5, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 5, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 5, i32 33, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !29, i32 5, i32 33, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 5, i32 25, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !29, i32 5, i32 25, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 6, i32 5, metadata !4, null}

