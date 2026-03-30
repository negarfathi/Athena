; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @iterate(i32 %bound) #0 {
iterate_bb0:
  call void @llvm.dbg.value(metadata !{i32 %bound}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !20), !dbg !21
  br label %iterate_bb1, !dbg !22

iterate_bb1:                                      ; preds = %iterate_bb2, %iterate_bb0
  %sum.0 = phi i32 [ 0, %iterate_bb0 ], [ %"1", %iterate_bb2 ]
  %i.0 = phi i32 [ 0, %iterate_bb0 ], [ %"2", %iterate_bb2 ]
  %"0" = icmp slt i32 %i.0, %bound, !dbg !24
  br i1 %"0", label %iterate_bb2, label %iterate_bb3, !dbg !24

iterate_bb2:                                      ; preds = %iterate_bb1
  %"1" = add nsw i32 %sum.0, %i.0, !dbg !27
  %"2" = add nsw i32 %i.0, 1, !dbg !29
  br label %iterate_bb1, !dbg !29

iterate_bb3:                                      ; preds = %iterate_bb1
  ret i32 %sum.0, !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !32), !dbg !34
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !37), !dbg !38
  br label %main_bb5, !dbg !39

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %sum.0.i = phi i32 [ 0, %main_bb4 ], [ %"5", %main_bb6 ], !dbg !33
  %i.0.i = phi i32 [ 0, %main_bb4 ], [ %"6", %main_bb6 ], !dbg !33
  %"4" = icmp slt i32 %i.0.i, %"3", !dbg !40
  br i1 %"4", label %main_bb6, label %main_iterate.exit, !dbg !40

main_bb6:                                         ; preds = %main_bb5
  %"5" = add nsw i32 %sum.0.i, %i.0.i, !dbg !41
  %"6" = add nsw i32 %i.0.i, 1, !dbg !42
  br label %main_bb5, !dbg !42

main_iterate.exit:                                ; preds = %main_bb5
  ret i32 %sum.0.i, !dbg !33
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"iterate", metadata !"iterate", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @iterate, null, null, metadata !2, i32 3} ; [ DW_TAG_subprogram ] [line 3] [def] [iterate]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 12, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"bound", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bound] [line 3]
!16 = metadata !{i32 3, i32 17, metadata !4, null}
!17 = metadata !{i32 0}
!18 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 5]
!19 = metadata !{i32 5, i32 7, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 4, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 4]
!21 = metadata !{i32 4, i32 7, metadata !4, null}
!22 = metadata !{i32 6, i32 7, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 6, i32 7, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !26, i32 6, i32 7, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 786443, metadata !1, metadata !23, i32 6, i32 7, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 7, i32 5, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !23, i32 6, i32 26, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 6, i32 21, metadata !23, null}
!30 = metadata !{i32 9, i32 3, metadata !4, null}
!31 = metadata !{i32 13, i32 20, metadata !9, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"bound", metadata !5, i32 16777219, metadata !8, i32 0, metadata !33} ; [ DW_TAG_arg_variable ] [bound] [line 3]
!33 = metadata !{i32 13, i32 12, metadata !9, null}
!34 = metadata !{i32 3, i32 17, metadata !4, metadata !33}
!35 = metadata !{i32 786688, metadata !4, metadata !"sum", metadata !5, i32 5, metadata !8, i32 0, metadata !33} ; [ DW_TAG_auto_variable ] [sum] [line 5]
!36 = metadata !{i32 5, i32 7, metadata !4, metadata !33}
!37 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 4, metadata !8, i32 0, metadata !33} ; [ DW_TAG_auto_variable ] [i] [line 4]
!38 = metadata !{i32 4, i32 7, metadata !4, metadata !33}
!39 = metadata !{i32 6, i32 7, metadata !23, metadata !33}
!40 = metadata !{i32 6, i32 7, metadata !25, metadata !33}
!41 = metadata !{i32 7, i32 5, metadata !28, metadata !33}
!42 = metadata !{i32 6, i32 21, metadata !23, metadata !33}

