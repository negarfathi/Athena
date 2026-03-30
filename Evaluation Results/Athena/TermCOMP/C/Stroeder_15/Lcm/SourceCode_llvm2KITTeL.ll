; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !12), !dbg !13
  %"1" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !14), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !16), !dbg !17
  br label %main_bb1, !dbg !20

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %am.0 = phi i32 [ %"0", %main_bb0 ], [ %am.1, %main_bb2 ]
  %bm.0 = phi i32 [ %"1", %main_bb0 ], [ %bm.1, %main_bb2 ]
  %"2" = icmp ne i32 %am.0, %bm.0, !dbg !21
  br i1 %"2", label %main_bb2, label %main_bb3, !dbg !21

main_bb2:                                         ; preds = %main_bb1
  %"3" = icmp sgt i32 %am.0, %bm.0, !dbg !23
  %"4" = add nsw i32 %bm.0, %"1", !dbg !26
  %"5" = add nsw i32 %am.0, %"0", !dbg !28
  %am.1 = select i1 %"3", i32 %am.0, i32 %"5", !dbg !23
  %bm.1 = select i1 %"3", i32 %"4", i32 %bm.0, !dbg !23
  br label %main_bb1, !dbg !23

main_bb3:                                         ; preds = %main_bb1
  ret i32 0, !dbg !30
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
!12 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 6]
!13 = metadata !{i32 6, i32 9, metadata !4, null}
!14 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 7]
!15 = metadata !{i32 7, i32 9, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"am", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [am] [line 8]
!17 = metadata !{i32 8, i32 9, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!18 = metadata !{i32 786688, metadata !4, metadata !"bm", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bm] [line 9]
!19 = metadata !{i32 9, i32 9, metadata !4, null}
!20 = metadata !{i32 13, i32 5, metadata !4, null}
!21 = metadata !{i32 13, i32 5, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 14, i32 13, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !25, i32 14, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 22, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 15, i32 13, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !24, i32 14, i32 22, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 17, i32 13, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !24, i32 16, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 21, i32 5, metadata !4, null}

