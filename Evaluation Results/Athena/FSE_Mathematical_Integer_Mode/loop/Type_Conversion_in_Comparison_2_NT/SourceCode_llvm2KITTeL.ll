; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call zeroext i8 @__VERIFIER_nondet_uchar(), !dbg !12
  call void @llvm.dbg.value(metadata !{i8 %"0"}, i64 0, metadata !13), !dbg !15
  %"1" = call signext i8 @__VERIFIER_nondet_char(), !dbg !16
  call void @llvm.dbg.value(metadata !{i8 %"1"}, i64 0, metadata !17), !dbg !19
  call void @llvm.dbg.value(metadata !{i8 %"0"}, i64 0, metadata !20), !dbg !21
  %"2" = sext i8 %"1" to i32, !dbg !22
  call void @llvm.dbg.value(metadata !{i8 %"5"}, i64 0, metadata !20), !dbg !21
  br label %main_bb1, !dbg !26

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %ac.0 = phi i8 [ %"0", %main_bb0 ], [ %"5", %main_bb2 ]
  %"3" = zext i8 %ac.0 to i32, !dbg !22
  %"4" = icmp ne i32 %"3", %"2", !dbg !22
  br i1 %"4", label %main_bb2, label %main_bb3, !dbg !22

main_bb2:                                         ; preds = %main_bb1
  %"5" = add i8 %ac.0, 1, !dbg !27
  br label %main_bb1, !dbg !27

main_bb3:                                         ; preds = %main_bb1
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare zeroext i8 @__VERIFIER_nondet_uchar() #2

declare signext i8 @__VERIFIER_nondet_char() #2

declare i32 @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 13, i32 21, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"c1", metadata !5, i32 13, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c1] [line 13]
!14 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!15 = metadata !{i32 13, i32 16, metadata !4, null}
!16 = metadata !{i32 14, i32 13, metadata !4, null}
!17 = metadata !{i32 786688, metadata !4, metadata !"c2", metadata !5, i32 14, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c2] [line 14]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{i32 14, i32 7, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"ac", metadata !5, i32 15, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ac] [line 15]
!21 = metadata !{i32 15, i32 16, metadata !4, null}
!22 = metadata !{i32 16, i32 7, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !24, i32 16, i32 7, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786443, metadata !1, metadata !25, i32 16, i32 7, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 16, i32 7, metadata !25, null}
!27 = metadata !{i32 16, i32 28, metadata !25, null}
!28 = metadata !{i32 20, i32 2, metadata !4, null}

