; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %y1, i32 %y2) #0 {
gcd_bb0:
  call void @llvm.dbg.value(metadata !{i32 %y1}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y2}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !17), !dbg !18
  br label %gcd_bb1, !dbg !19

gcd_bb1:                                          ; preds = %gcd_bb2, %gcd_bb0
  %.01 = phi i32 [ %y2, %gcd_bb0 ], [ %.12, %gcd_bb2 ]
  %.0 = phi i32 [ %y1, %gcd_bb0 ], [ %.1, %gcd_bb2 ]
  %"0" = icmp ne i32 %.0, %.01, !dbg !20
  br i1 %"0", label %gcd_bb2, label %gcd_bb3, !dbg !20

gcd_bb2:                                          ; preds = %gcd_bb1
  %"1" = icmp sgt i32 %.0, %.01, !dbg !22
  %"2" = sub nsw i32 %.0, %.01, !dbg !25
  %"3" = sub nsw i32 %.01, %.0, !dbg !27
  %.12 = select i1 %"1", i32 %.01, i32 %"3", !dbg !22
  %.1 = select i1 %"1", i32 %"2", i32 %.0, !dbg !22
  br label %gcd_bb1, !dbg !22

gcd_bb3:                                          ; preds = %gcd_bb1
  ret i32 %.0, !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !31), !dbg !32
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !34), !dbg !35
  %"6" = icmp sgt i32 %"4", 0, !dbg !36
  %"7" = icmp sgt i32 %"5", 0, !dbg !38
  %or.cond = and i1 %"6", %"7", !dbg !36
  br i1 %or.cond, label %main_bb5, label %main_gcd.exit, !dbg !36

main_bb5:                                         ; preds = %main_bb4, %main_bb6
  %.01.i = phi i32 [ %.12.i, %main_bb6 ], [ %"5", %main_bb4 ], !dbg !40
  %.0.i = phi i32 [ %.1.i, %main_bb6 ], [ %"4", %main_bb4 ], !dbg !40
  %"8" = icmp ne i32 %.0.i, %.01.i, !dbg !42
  br i1 %"8", label %main_bb6, label %main_gcd.exit, !dbg !42

main_bb6:                                         ; preds = %main_bb5
  %"9" = icmp sgt i32 %.0.i, %.01.i, !dbg !43
  %"10" = sub nsw i32 %.0.i, %.01.i, !dbg !44
  %"11" = sub nsw i32 %.01.i, %.0.i, !dbg !45
  %.12.i = select i1 %"9", i32 %.01.i, i32 %"11", !dbg !43
  %.1.i = select i1 %"9", i32 %"10", i32 %.0.i, !dbg !43
  br label %main_bb5, !dbg !43

main_gcd.exit:                                    ; preds = %main_bb5, %main_bb4
  ret i32 0, !dbg !46
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gcd", metadata !"gcd", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @gcd, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [gcd]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 24, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"y1", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 13]
!16 = metadata !{i32 13, i32 13, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y2", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 13]
!18 = metadata !{i32 13, i32 21, metadata !4, null}
!19 = metadata !{i32 14, i32 2, metadata !4, null}
!20 = metadata !{i32 14, i32 2, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 2, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 15, i32 7, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !24, i32 15, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 16, i32 4, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !23, i32 15, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 18, i32 4, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !23, i32 17, i32 10, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 21, i32 2, metadata !4, null}
!30 = metadata !{i32 25, i32 11, metadata !9, null}
!31 = metadata !{i32 786688, metadata !9, metadata !"y1", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y1] [line 25]
!32 = metadata !{i32 25, i32 6, metadata !9, null}
!33 = metadata !{i32 26, i32 11, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"y2", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y2] [line 26]
!35 = metadata !{i32 26, i32 6, metadata !9, null}
!36 = metadata !{i32 27, i32 6, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 27, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 27, i32 6, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 27, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 28, i32 3, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !37, i32 27, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 14, i32 2, metadata !21, metadata !40}
!43 = metadata !{i32 15, i32 7, metadata !23, metadata !40}
!44 = metadata !{i32 16, i32 4, metadata !26, metadata !40}
!45 = metadata !{i32 18, i32 4, metadata !28, metadata !40}
!46 = metadata !{i32 30, i32 2, metadata !9, null}

