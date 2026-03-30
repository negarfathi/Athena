; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'x" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @foo() #0 {
foo_bb0:
  %"0" = load i32* @"'x", align 4, !dbg !17
  %"1" = add nsw i32 %"0", -1, !dbg !17
  store i32 %"1", i32* @"'x", align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !19
  store i32 %"2", i32* @"'x", align 4, !dbg !19
  br label %main_bb2, !dbg !20

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %"3" = load i32* @"'x", align 4, !dbg !21
  %"4" = icmp sgt i32 %"3", 0, !dbg !21
  br i1 %"4", label %main_bb3, label %main_bb4, !dbg !21

main_bb3:                                         ; preds = %main_bb2
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !23
  %"6" = load i32* @"'x", align 4, !dbg !26
  %"7" = add nsw i32 %"6", -1, !dbg !26
  store i32 %"7", i32* @"'x", align 4, !dbg !26
  br label %main_bb2, !dbg !29

main_bb4:                                         ; preds = %main_bb2
  ret i32 0, !dbg !30
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"foo", metadata !"foo", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @foo, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [foo]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !9, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [main]
!9 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !10, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786484, i32 0, null, metadata !"x", metadata !"x", metadata !"", metadata !5, i32 12, metadata !11, i32 0, i32 1, i32* @"'x", null} ; [ DW_TAG_variable ] [x] [line 12] [def]
!14 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!15 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!16 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!17 = metadata !{i32 15, i32 2, metadata !4, null}
!18 = metadata !{i32 16, i32 1, metadata !4, null}
!19 = metadata !{i32 20, i32 6, metadata !8, null}
!20 = metadata !{i32 22, i32 2, metadata !8, null}
!21 = metadata !{i32 22, i32 2, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !8, i32 22, i32 2, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 23, i32 7, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !25, i32 23, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 786443, metadata !1, metadata !8, i32 22, i32 16, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 15, i32 2, metadata !4, metadata !27}
!27 = metadata !{i32 24, i32 4, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !24, i32 23, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 28, i32 2, metadata !25, null}
!30 = metadata !{i32 29, i32 2, metadata !8, null}

