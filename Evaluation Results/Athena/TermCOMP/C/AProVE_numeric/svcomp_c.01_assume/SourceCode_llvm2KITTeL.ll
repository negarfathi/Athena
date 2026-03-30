; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !17), !dbg !18
  br label %test_fun_bb1, !dbg !20

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %.02 = phi i32 [ %y, %test_fun_bb0 ], [ %.1, %test_fun_bb5 ]
  %.01 = phi i32 [ %x, %test_fun_bb0 ], [ %"4", %test_fun_bb5 ]
  %"0" = icmp sge i32 %.01, 0, !dbg !21
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb6, !dbg !21

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb4
  %.1 = phi i32 [ %"3", %test_fun_bb4 ], [ 1, %test_fun_bb1 ]
  %"1" = icmp sgt i32 %.01, %.1, !dbg !23
  br i1 %"1", label %test_fun_bb3, label %test_fun_bb5, !dbg !23

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"2" = icmp sle i32 %.1, 0, !dbg !26
  br i1 %"2", label %test_fun_bb6, label %test_fun_bb4, !dbg !26

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"3" = mul nsw i32 2, %.1, !dbg !29
  br label %test_fun_bb2, !dbg !30

test_fun_bb5:                                     ; preds = %test_fun_bb2
  %"4" = sub nsw i32 %.01, 1, !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !15), !dbg !16
  br label %test_fun_bb1, !dbg !32

test_fun_bb6:                                     ; preds = %test_fun_bb1, %test_fun_bb3
  %.0 = phi i32 [ %.01, %test_fun_bb3 ], [ %.02, %test_fun_bb1 ]
  ret i32 %.0, !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !34
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !36), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !39), !dbg !40
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !39), !dbg !40
  br label %main_bb8, !dbg !41

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %.02.i = phi i32 [ %"6", %main_bb7 ], [ %.1.i, %main_bb12 ], !dbg !37
  %.01.i = phi i32 [ %"5", %main_bb7 ], [ %"11", %main_bb12 ], !dbg !37
  %"7" = icmp sge i32 %.01.i, 0, !dbg !42
  br i1 %"7", label %main_bb9, label %main_test_fun.exit, !dbg !42

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %.1.i = phi i32 [ %"10", %main_bb11 ], [ 1, %main_bb8 ], !dbg !37
  %"8" = icmp sgt i32 %.01.i, %.1.i, !dbg !43
  br i1 %"8", label %main_bb10, label %main_bb12, !dbg !43

main_bb10:                                        ; preds = %main_bb9
  %"9" = icmp sle i32 %.1.i, 0, !dbg !44
  br i1 %"9", label %main_test_fun.exit, label %main_bb11, !dbg !44

main_bb11:                                        ; preds = %main_bb10
  %"10" = mul nsw i32 2, %.1.i, !dbg !45
  br label %main_bb9, !dbg !46

main_bb12:                                        ; preds = %main_bb9
  %"11" = sub nsw i32 %.01.i, 1, !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !36), !dbg !38
  br label %main_bb8, !dbg !48

main_test_fun.exit:                               ; preds = %main_bb8, %main_bb10
  %.0.i = phi i32 [ %.01.i, %main_bb10 ], [ %.02.i, %main_bb8 ], !dbg !37
  ret i32 %.0.i, !dbg !37
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @test_fun, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [test_fun]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 3]
!16 = metadata !{i32 3, i32 18, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 3]
!18 = metadata !{i32 3, i32 25, metadata !4, null}
!19 = metadata !{i32 1}
!20 = metadata !{i32 5, i32 5, metadata !4, null}
!21 = metadata !{i32 5, i32 5, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 5, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 7, i32 9, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !25, i32 7, i32 9, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 5, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 8, i32 9, metadata !27, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 786443, metadata !1, metadata !28, i32 8, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 786443, metadata !1, metadata !25, i32 7, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 12, i32 13, metadata !28, null}
!30 = metadata !{i32 13, i32 9, metadata !28, null}
!31 = metadata !{i32 14, i32 9, metadata !25, null}
!32 = metadata !{i32 15, i32 5, metadata !25, null}
!33 = metadata !{i32 17, i32 1, metadata !4, null}
!34 = metadata !{i32 20, i32 21, metadata !9, null}
!35 = metadata !{i32 20, i32 46, metadata !9, null}
!36 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !37} ; [ DW_TAG_arg_variable ] [x] [line 3]
!37 = metadata !{i32 20, i32 12, metadata !9, null}
!38 = metadata !{i32 3, i32 18, metadata !4, metadata !37}
!39 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !37} ; [ DW_TAG_arg_variable ] [y] [line 3]
!40 = metadata !{i32 3, i32 25, metadata !4, metadata !37}
!41 = metadata !{i32 5, i32 5, metadata !4, metadata !37}
!42 = metadata !{i32 5, i32 5, metadata !22, metadata !37}
!43 = metadata !{i32 7, i32 9, metadata !24, metadata !37}
!44 = metadata !{i32 8, i32 9, metadata !27, metadata !37} ; [ DW_TAG_imported_declaration ]
!45 = metadata !{i32 12, i32 13, metadata !28, metadata !37}
!46 = metadata !{i32 13, i32 9, metadata !28, metadata !37}
!47 = metadata !{i32 14, i32 9, metadata !25, metadata !37}
!48 = metadata !{i32 15, i32 5, metadata !25, metadata !37}

