; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %tmp) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %tmp}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %.0}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %.01}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %.0}, i64 0, metadata !17), !dbg !18
  br label %test_fun_bb1, !dbg !21

test_fun_bb1:                                     ; preds = %test_fun_bb1, %test_fun_bb0
  %.02 = phi i32 [ %tmp, %test_fun_bb0 ], [ %.0, %test_fun_bb1 ]
  %.01 = phi i32 [ %y, %test_fun_bb0 ], [ %.0, %test_fun_bb1 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.01, %test_fun_bb1 ]
  %"0" = icmp sgt i32 %.0, %.01, !dbg !22
  br i1 %"0", label %test_fun_bb1, label %test_fun_bb2, !dbg !22

test_fun_bb2:                                     ; preds = %test_fun_bb1
  ret i32 %.02, !dbg !24
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !25
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !26
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !28), !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !33), !dbg !34
  br label %main_bb4, !dbg !35

main_bb4:                                         ; preds = %main_bb4, %main_bb3
  %.02.i = phi i32 [ %"3", %main_bb3 ], [ %.0.i, %main_bb4 ], !dbg !29
  %.01.i = phi i32 [ %"2", %main_bb3 ], [ %.0.i, %main_bb4 ], !dbg !29
  %.0.i = phi i32 [ %"1", %main_bb3 ], [ %.01.i, %main_bb4 ], !dbg !29
  %"4" = icmp sgt i32 %.0.i, %.01.i, !dbg !36
  br i1 %"4", label %main_bb4, label %main_test_fun.exit, !dbg !36

main_test_fun.exit:                               ; preds = %main_bb4
  ret i32 %.02.i, !dbg !29
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @test_fun, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [test_fun]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 3]
!16 = metadata !{i32 3, i32 18, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 3]
!18 = metadata !{i32 3, i32 25, metadata !4, null}
!19 = metadata !{i32 786689, metadata !4, metadata !"tmp", metadata !5, i32 50331651, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp] [line 3]
!20 = metadata !{i32 3, i32 32, metadata !4, null}
!21 = metadata !{i32 5, i32 5, metadata !4, null}
!22 = metadata !{i32 5, i32 5, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 5, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 10, i32 5, metadata !4, null}
!25 = metadata !{i32 14, i32 21, metadata !9, null}
!26 = metadata !{i32 14, i32 46, metadata !9, null}
!27 = metadata !{i32 14, i32 71, metadata !9, null}
!28 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !29} ; [ DW_TAG_arg_variable ] [x] [line 3]
!29 = metadata !{i32 14, i32 12, metadata !9, null}
!30 = metadata !{i32 3, i32 18, metadata !4, metadata !29}
!31 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !29} ; [ DW_TAG_arg_variable ] [y] [line 3]
!32 = metadata !{i32 3, i32 25, metadata !4, metadata !29}
!33 = metadata !{i32 786689, metadata !4, metadata !"tmp", metadata !5, i32 50331651, metadata !8, i32 0, metadata !29} ; [ DW_TAG_arg_variable ] [tmp] [line 3]
!34 = metadata !{i32 3, i32 32, metadata !4, metadata !29}
!35 = metadata !{i32 5, i32 5, metadata !4, metadata !29}
!36 = metadata !{i32 5, i32 5, metadata !23, metadata !29}

