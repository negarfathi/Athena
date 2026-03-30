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
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !18), !dbg !19
  br label %main_bb1, !dbg !24

main_bb1:                                         ; preds = %main_NewDefault, %main_bb2, %main_bb5, %main_bb7, %main_bb6, %main_bb4, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"1", %main_bb4 ], [ %"1", %main_bb6 ], [ %"1", %main_NewDefault ], [ %"1", %main_bb7 ], [ %"1", %main_bb5 ], [ %"1", %main_bb2 ]
  %y.0 = phi i32 [ 0, %main_bb0 ], [ %y.0, %main_bb2 ], [ %y.0, %main_bb4 ], [ %y.0, %main_bb5 ], [ %"7", %main_bb6 ], [ %"8", %main_bb7 ], [ %y.0, %main_NewDefault ]
  %x.0 = phi i32 [ 0, %main_bb0 ], [ %x.0, %main_bb2 ], [ %"5", %main_bb4 ], [ %"6", %main_bb5 ], [ %x.0, %main_bb7 ], [ %x.0, %main_NewDefault ], [ %x.0, %main_bb6 ]
  %"0" = icmp slt i32 %i.0, 10, !dbg !25
  br i1 %"0", label %main_bb2, label %main_bb8, !dbg !25

main_bb2:                                         ; preds = %main_bb1
  %"1" = add nsw i32 %i.0, 1, !dbg !27
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !29
  %"3" = icmp sge i32 %"2", 0, !dbg !30
  %"4" = icmp sle i32 %"2", 3, !dbg !32
  %or.cond = and i1 %"3", %"4", !dbg !30
  br i1 %or.cond, label %main_bb3, label %main_bb1, !dbg !30

main_bb3:                                         ; preds = %main_bb2
  br label %main_NodeBlock5

main_NodeBlock5:                                  ; preds = %main_bb3
  %Pivot6 = icmp slt i32 %"2", 2
  br i1 %Pivot6, label %main_NodeBlock, label %main_NodeBlock3

main_NodeBlock:                                   ; preds = %main_NodeBlock5
  %Pivot = icmp slt i32 %"2", 1
  br i1 %Pivot, label %main_LeafBlock, label %main_bb5

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"2", 0
  br i1 %SwitchLeaf, label %main_bb4, label %main_NewDefault

main_bb4:                                         ; preds = %main_LeafBlock
  %"5" = add nsw i32 %x.0, 1, !dbg !34
  br label %main_bb1, !dbg !38

main_bb5:                                         ; preds = %main_NodeBlock
  %"6" = sub nsw i32 %x.0, 1, !dbg !39
  br label %main_bb1, !dbg !43

main_NodeBlock3:                                  ; preds = %main_NodeBlock5
  %Pivot4 = icmp slt i32 %"2", 3
  br i1 %Pivot4, label %main_bb6, label %main_LeafBlock1

main_bb6:                                         ; preds = %main_NodeBlock3
  %"7" = add nsw i32 %y.0, 1, !dbg !44
  br label %main_bb1, !dbg !48

main_LeafBlock1:                                  ; preds = %main_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %"2", 3
  br i1 %SwitchLeaf2, label %main_bb7, label %main_NewDefault

main_bb7:                                         ; preds = %main_LeafBlock1
  %"8" = sub nsw i32 %y.0, 1, !dbg !49
  br label %main_bb1, !dbg !53

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb1
  ret i32 0, !dbg !54
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
!12 = metadata !{i32 10}
!13 = metadata !{i32 786688, metadata !4, metadata !"N", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 14]
!14 = metadata !{i32 14, i32 9, metadata !4, null}
!15 = metadata !{i32 0}
!16 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!17 = metadata !{i32 14, i32 12, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 14]
!19 = metadata !{i32 14, i32 15, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 14]
!21 = metadata !{i32 14, i32 18, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"r", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 14]
!23 = metadata !{i32 14, i32 21, metadata !4, null}
!24 = metadata !{i32 19, i32 2, metadata !4, null}
!25 = metadata !{i32 19, i32 2, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 2, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 20, i32 3, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 21, i32 7, metadata !28, null}
!30 = metadata !{i32 22, i32 7, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !28, i32 22, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 22, i32 7, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 22, i32 7, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 24, i32 5, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !36, i32 23, i32 16, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 23, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786443, metadata !1, metadata !31, i32 22, i32 25, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 25, i32 4, metadata !35, null}
!39 = metadata !{i32 26, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 25, i32 24, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 25, i32 16, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !36, i32 25, i32 11, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 27, i32 4, metadata !40, null}
!44 = metadata !{i32 28, i32 5, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 27, i32 24, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 27, i32 16, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786443, metadata !1, metadata !41, i32 27, i32 11, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 29, i32 4, metadata !45, null}
!49 = metadata !{i32 30, i32 5, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 29, i32 24, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 786443, metadata !1, metadata !52, i32 29, i32 16, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 786443, metadata !1, metadata !46, i32 29, i32 11, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 31, i32 13, metadata !50, null}
!54 = metadata !{i32 34, i32 2, metadata !4, null}

