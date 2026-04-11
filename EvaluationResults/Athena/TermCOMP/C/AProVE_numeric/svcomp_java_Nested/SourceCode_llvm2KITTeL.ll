; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !18), !dbg !19
  br label %main_bb1, !dbg !20

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"5", %main_bb4 ]
  %c.0 = phi i32 [ 0, %main_bb0 ], [ %c.1, %main_bb4 ]
  %"0" = icmp slt i32 %i.0, 10, !dbg !22
  br i1 %"0", label %main_bb2, label %main_bb5, !dbg !22

main_bb2:                                         ; preds = %main_bb1, %main_bb3
  %j.0 = phi i32 [ %"4", %main_bb3 ], [ 3, %main_bb1 ]
  %c.1 = phi i32 [ %"3", %main_bb3 ], [ %c.0, %main_bb1 ]
  %"1" = icmp slt i32 %j.0, 12, !dbg !25
  br i1 %"1", label %main_bb3, label %main_bb4, !dbg !25

main_bb3:                                         ; preds = %main_bb2
  %"2" = sub nsw i32 %j.0, 1, !dbg !29
  %"3" = add nsw i32 %c.1, 1, !dbg !31
  %"4" = add nsw i32 %"2", 2, !dbg !32
  br label %main_bb2, !dbg !32

main_bb4:                                         ; preds = %main_bb2
  %"5" = add nsw i32 %i.0, 1, !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !15), !dbg !16
  br label %main_bb1, !dbg !33

main_bb5:                                         ; preds = %main_bb1
  ret i32 %c.0, !dbg !34
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
!17 = metadata !{i32 3}
!18 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 2, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 2]
!19 = metadata !{i32 2, i32 12, metadata !4, null}
!20 = metadata !{i32 4, i32 10, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 4, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 4, i32 10, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !24, i32 4, i32 10, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786443, metadata !1, metadata !21, i32 4, i32 10, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 5, i32 14, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !27, i32 5, i32 14, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 786443, metadata !1, metadata !28, i32 5, i32 14, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 786443, metadata !1, metadata !21, i32 5, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 6, i32 13, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 5, i32 37, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 7, i32 13, metadata !30, null}
!32 = metadata !{i32 5, i32 29, metadata !28, null}
!33 = metadata !{i32 4, i32 25, metadata !21, null}
!34 = metadata !{i32 9, i32 5, metadata !4, null}

