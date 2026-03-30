; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %x, i32 %y) #0 {
gcd_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  %"0" = icmp slt i32 %x, 0, !dbg !19
  %"1" = sub nsw i32 0, %x, !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !15), !dbg !16
  %.x = select i1 %"0", i32 %"1", i32 %x, !dbg !19
  %"2" = icmp slt i32 %y, 0, !dbg !23
  %"3" = sub nsw i32 0, %y, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !17), !dbg !18
  %.01 = select i1 %"2", i32 %"3", i32 %y, !dbg !23
  br label %gcd_bb1, !dbg !23

gcd_bb1:                                          ; preds = %gcd_bb2, %gcd_bb0
  %.12 = phi i32 [ %.01, %gcd_bb0 ], [ %r.0, %gcd_bb2 ]
  %.1 = phi i32 [ %.x, %gcd_bb0 ], [ %.12, %gcd_bb2 ]
  %"4" = icmp sgt i32 %.12, 0, !dbg !27
  br i1 %"4", label %gcd_bb2, label %gcd_bb4, !dbg !27

gcd_bb2:                                          ; preds = %gcd_bb1, %gcd_bb3
  %r.0 = phi i32 [ %"6", %gcd_bb3 ], [ %.1, %gcd_bb1 ]
  %"5" = icmp sge i32 %r.0, %.12, !dbg !29
  br i1 %"5", label %gcd_bb3, label %gcd_bb1, !dbg !29

gcd_bb3:                                          ; preds = %gcd_bb2
  %"6" = sub nsw i32 %r.0, %.12, !dbg !32
  br label %gcd_bb2, !dbg !32

gcd_bb4:                                          ; preds = %gcd_bb1
  ret i32 %.1, !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !35), !dbg !36
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !43), !dbg !44
  %"9" = icmp slt i32 %"7", 0, !dbg !45
  %"10" = sub nsw i32 0, %"7", !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !40), !dbg !42
  %.x.i = select i1 %"9", i32 %"10", i32 %"7", !dbg !45
  %"11" = icmp slt i32 %"8", 0, !dbg !47
  %"12" = sub nsw i32 0, %"8", !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !43), !dbg !44
  %.01.i = select i1 %"11", i32 %"12", i32 %"8", !dbg !47
  br label %main_bb6, !dbg !47

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %.12.i = phi i32 [ %.01.i, %main_bb5 ], [ %r.0.i, %main_bb7 ], !dbg !41
  %.1.i = phi i32 [ %.x.i, %main_bb5 ], [ %.12.i, %main_bb7 ], !dbg !41
  %"13" = icmp sgt i32 %.12.i, 0, !dbg !49
  br i1 %"13", label %main_bb7, label %main_gcd.exit, !dbg !49

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %r.0.i = phi i32 [ %"15", %main_bb8 ], [ %.1.i, %main_bb6 ], !dbg !41
  %"14" = icmp sge i32 %r.0.i, %.12.i, !dbg !50
  br i1 %"14", label %main_bb8, label %main_bb6, !dbg !50

main_bb8:                                         ; preds = %main_bb7
  %"15" = sub nsw i32 %r.0.i, %.12.i, !dbg !51
  br label %main_bb7, !dbg !51

main_gcd.exit:                                    ; preds = %main_bb6
  ret i32 0, !dbg !52
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gcd", metadata !"gcd", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @gcd, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [gcd]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 29, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 11]
!16 = metadata !{i32 11, i32 13, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 11]
!18 = metadata !{i32 11, i32 20, metadata !4, null}
!19 = metadata !{i32 15, i32 6, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 15, i32 11, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !20, i32 15, i32 11, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 16, i32 6, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 6, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 16, i32 11, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 16, i32 11, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 17, i32 2, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 2, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 20, i32 3, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 20, i32 3, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 21, i32 4, metadata !31, null}
!33 = metadata !{i32 26, i32 2, metadata !4, null}
!34 = metadata !{i32 33, i32 6, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 31]
!36 = metadata !{i32 31, i32 6, metadata !9, null}
!37 = metadata !{i32 34, i32 6, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"y", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 31]
!39 = metadata !{i32 31, i32 8, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777227, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [x] [line 11]
!41 = metadata !{i32 36, i32 2, metadata !9, null}
!42 = metadata !{i32 11, i32 13, metadata !4, metadata !41}
!43 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554443, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [y] [line 11]
!44 = metadata !{i32 11, i32 20, metadata !4, metadata !41}
!45 = metadata !{i32 15, i32 6, metadata !20, metadata !41}
!46 = metadata !{i32 15, i32 11, metadata !22, metadata !41}
!47 = metadata !{i32 16, i32 6, metadata !24, metadata !41}
!48 = metadata !{i32 16, i32 11, metadata !26, metadata !41}
!49 = metadata !{i32 17, i32 2, metadata !28, metadata !41}
!50 = metadata !{i32 20, i32 3, metadata !30, metadata !41}
!51 = metadata !{i32 21, i32 4, metadata !31, metadata !41}
!52 = metadata !{i32 37, i32 1, metadata !9, null}

