; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @absMathInteger(i32 %i) #0 {
absMathInteger_bb0:
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !15), !dbg !16
  %"0" = icmp sge i32 %i, 0, !dbg !17
  %"1" = sub nsw i32 0, %i, !dbg !19
  %.0 = select i1 %"0", i32 %i, i32 %"1", !dbg !17
  ret i32 %.0, !dbg !21
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !22
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !23), !dbg !24
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !26), !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !28), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !23), !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !34), !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !26), !dbg !27
  br label %main_bb2, !dbg !39

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %j.0 = phi i32 [ %"3", %main_bb1 ], [ %"14", %main_bb3 ]
  %i.0 = phi i32 [ %"2", %main_bb1 ], [ %"9", %main_bb3 ]
  %"4" = sub nsw i32 %i.0, %j.0, !dbg !40
  %"5" = icmp sge i32 %"4", 1, !dbg !40
  br i1 %"5", label %main_bb3, label %main_bb4, !dbg !40

main_bb3:                                         ; preds = %main_bb2
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !42
  %"7" = icmp sge i32 %"6", 0, !dbg !43
  %"8" = sub nsw i32 0, %"6", !dbg !44
  %.0.i = select i1 %"7", i32 %"6", i32 %"8", !dbg !43
  %"9" = sub nsw i32 %i.0, %.0.i, !dbg !45
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !46
  %"11" = icmp sge i32 %"10", 0, !dbg !47
  %"12" = sub nsw i32 0, %"10", !dbg !48
  %.0.i1 = select i1 %"11", i32 %"10", i32 %"12", !dbg !47
  %"13" = add nsw i32 %.0.i1, 1, !dbg !35
  %"14" = add nsw i32 %j.0, %"13", !dbg !49
  br label %main_bb2, !dbg !50

main_bb4:                                         ; preds = %main_bb2
  ret i32 0, !dbg !51
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"absMathInteger", metadata !"absMathInteger", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @absMathInteger, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [absMathInteger]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [i] [line 14]
!16 = metadata !{i32 14, i32 24, metadata !4, null}
!17 = metadata !{i32 15, i32 6, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!19 = metadata !{i32 18, i32 3, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !18, i32 17, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 20, i32 1, metadata !4, null}
!22 = metadata !{i32 23, i32 10, metadata !9, null}
!23 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 23]
!24 = metadata !{i32 23, i32 6, metadata !9, null}
!25 = metadata !{i32 24, i32 10, metadata !9, null}
!26 = metadata !{i32 786688, metadata !9, metadata !"j", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 24]
!27 = metadata !{i32 24, i32 6, metadata !9, null}
!28 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777230, metadata !8, i32 0, metadata !29} ; [ DW_TAG_arg_variable ] [i] [line 14]
!29 = metadata !{i32 26, i32 19, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 21, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 14, i32 24, metadata !4, metadata !29}
!32 = metadata !{i32 786688, metadata !30, metadata !"nondetNat", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetNat] [line 26]
!33 = metadata !{i32 26, i32 7, metadata !30, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"i", metadata !5, i32 16777230, metadata !8, i32 0, metadata !35} ; [ DW_TAG_arg_variable ] [i] [line 14]
!35 = metadata !{i32 28, i32 19, metadata !30, null}
!36 = metadata !{i32 14, i32 24, metadata !4, metadata !35}
!37 = metadata !{i32 786688, metadata !30, metadata !"nondetPos", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetPos] [line 28]
!38 = metadata !{i32 28, i32 7, metadata !30, null}
!39 = metadata !{i32 25, i32 2, metadata !9, null}
!40 = metadata !{i32 25, i32 2, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 2, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 26, i32 34, metadata !30, null}
!43 = metadata !{i32 15, i32 6, metadata !18, metadata !29}
!44 = metadata !{i32 18, i32 3, metadata !20, metadata !29}
!45 = metadata !{i32 27, i32 3, metadata !30, null}
!46 = metadata !{i32 28, i32 34, metadata !30, null}
!47 = metadata !{i32 15, i32 6, metadata !18, metadata !35}
!48 = metadata !{i32 18, i32 3, metadata !20, metadata !35}
!49 = metadata !{i32 29, i32 3, metadata !30, null}
!50 = metadata !{i32 30, i32 2, metadata !30, null}
!51 = metadata !{i32 31, i32 2, metadata !9, null}

