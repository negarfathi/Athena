; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  %"1" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !16), !dbg !17
  br label %main_bb1, !dbg !18

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %"3", %main_bb2 ]
  %y.0 = phi i32 [ %"1", %main_bb0 ], [ %"4", %main_bb2 ]
  %"2" = icmp slt i32 %x.0, 0, !dbg !19
  br i1 %"2", label %main_bb2, label %main_bb3, !dbg !19

main_bb2:                                         ; preds = %main_bb1
  %"3" = add nsw i32 %x.0, %y.0, !dbg !21
  %"4" = add nsw i32 %y.0, -1, !dbg !23
  br label %main_bb1, !dbg !24

main_bb3:                                         ; preds = %main_bb1
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int(...) #2

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 21, i32 13, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 21]
!14 = metadata !{i32 21, i32 9, metadata !4, null}
!15 = metadata !{i32 22, i32 13, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 22]
!17 = metadata !{i32 22, i32 9, metadata !4, null}
!18 = metadata !{i32 23, i32 5, metadata !4, null}
!19 = metadata !{i32 23, i32 5, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 24, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 25, i32 9, metadata !22, null}
!24 = metadata !{i32 26, i32 5, metadata !22, null}
!25 = metadata !{i32 27, i32 5, metadata !4, null}

