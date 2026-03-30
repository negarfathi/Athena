; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !18), !dbg !19
  br label %main_bb1, !dbg !20

main_bb1:                                         ; preds = %main_bb1, %main_bb0
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %"1", %main_bb1 ]
  %"1" = add nsw i32 %i.0, 1, !dbg !21
  br label %main_bb1, !dbg !23
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
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !7, metadata !8, metadata !7, metadata !7, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{metadata !3}
!3 = metadata !{i32 786436, metadata !1, null, metadata !"", i32 1, i64 32, i64 32, i32 0, i32 0, null, metadata !4, i32 0, null, null, null} ; [ DW_TAG_enumeration_type ] [line 1, size 32, align 32, offset 0] [def] [from ]
!4 = metadata !{metadata !5, metadata !6}
!5 = metadata !{i32 786472, metadata !"false", i64 0} ; [ DW_TAG_enumerator ] [false :: 0]
!6 = metadata !{i32 786472, metadata !"true", i64 1} ; [ DW_TAG_enumerator ] [true :: 1]
!7 = metadata !{}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 786478, metadata !1, metadata !10, metadata !"main", metadata !"main", metadata !"", i32 5, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !7, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [main]
!10 = metadata !{i32 786473, metadata !1}         ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!15 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!16 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!17 = metadata !{i32 7, i32 9, metadata !9, null}
!18 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !10, i32 6, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!19 = metadata !{i32 6, i32 9, metadata !9, null}
!20 = metadata !{i32 9, i32 5, metadata !9, null}
!21 = metadata !{i32 10, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !9, i32 9, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 11, i32 5, metadata !22, null}

