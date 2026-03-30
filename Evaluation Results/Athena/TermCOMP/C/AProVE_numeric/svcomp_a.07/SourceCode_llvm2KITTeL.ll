; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !22), !dbg !23
  br label %test_fun_bb1, !dbg !24

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"4", %test_fun_bb2 ]
  %.01 = phi i32 [ %z, %test_fun_bb0 ], [ %"3", %test_fun_bb2 ]
  %.0 = phi i32 [ %y, %test_fun_bb0 ], [ %"2", %test_fun_bb2 ]
  %"0" = icmp sgt i32 %x, %.0, !dbg !25
  %"1" = icmp sgt i32 %x, %.01, !dbg !27
  %. = select i1 %"0", i1 %"1", i1 false, !dbg !25
  br i1 %., label %test_fun_bb2, label %test_fun_bb3, !dbg !29

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = add nsw i32 %.0, 1, !dbg !31
  %"3" = add nsw i32 %.01, 1, !dbg !33
  %"4" = add nsw i32 %c.0, 1, !dbg !34
  br label %test_fun_bb1, !dbg !35

test_fun_bb3:                                     ; preds = %test_fun_bb1
  ret i32 %c.0, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !37
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !38
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !47), !dbg !48
  br label %main_bb5, !dbg !49

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %c.0.i = phi i32 [ 0, %main_bb4 ], [ %"12", %main_bb6 ], !dbg !41
  %.01.i = phi i32 [ %"7", %main_bb4 ], [ %"11", %main_bb6 ], !dbg !41
  %.0.i = phi i32 [ %"6", %main_bb4 ], [ %"10", %main_bb6 ], !dbg !41
  %"8" = icmp sgt i32 %"5", %.0.i, !dbg !50
  %"9" = icmp sgt i32 %"5", %.01.i, !dbg !51
  %..i = select i1 %"8", i1 %"9", i1 false, !dbg !50
  br i1 %..i, label %main_bb6, label %main_test_fun.exit, !dbg !52

main_bb6:                                         ; preds = %main_bb5
  %"10" = add nsw i32 %.0.i, 1, !dbg !53
  %"11" = add nsw i32 %.01.i, 1, !dbg !54
  %"12" = add nsw i32 %c.0.i, 1, !dbg !55
  br label %main_bb5, !dbg !56

main_test_fun.exit:                               ; preds = %main_bb5
  ret i32 %c.0.i, !dbg !41
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 14, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 3]
!16 = metadata !{i32 3, i32 18, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 3]
!18 = metadata !{i32 3, i32 25, metadata !4, null}
!19 = metadata !{i32 786689, metadata !4, metadata !"z", metadata !5, i32 50331651, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 3]
!20 = metadata !{i32 3, i32 32, metadata !4, null}
!21 = metadata !{i32 0}
!22 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 5]
!23 = metadata !{i32 5, i32 9, metadata !4, null}
!24 = metadata !{i32 6, i32 5, metadata !4, null}
!25 = metadata !{i32 6, i32 5, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 6, i32 5, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 6, i32 5, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 7, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 8, i32 9, metadata !32, null} ; [ DW_TAG_imported_declaration ]
!34 = metadata !{i32 9, i32 9, metadata !32, null}
!35 = metadata !{i32 10, i32 5, metadata !32, null}
!36 = metadata !{i32 11, i32 5, metadata !4, null}
!37 = metadata !{i32 15, i32 21, metadata !9, null}
!38 = metadata !{i32 15, i32 46, metadata !9, null}
!39 = metadata !{i32 15, i32 71, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [x] [line 3]
!41 = metadata !{i32 15, i32 12, metadata !9, null}
!42 = metadata !{i32 3, i32 18, metadata !4, metadata !41}
!43 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [y] [line 3]
!44 = metadata !{i32 3, i32 25, metadata !4, metadata !41}
!45 = metadata !{i32 786689, metadata !4, metadata !"z", metadata !5, i32 50331651, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [z] [line 3]
!46 = metadata !{i32 3, i32 32, metadata !4, metadata !41}
!47 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [c] [line 5]
!48 = metadata !{i32 5, i32 9, metadata !4, metadata !41}
!49 = metadata !{i32 6, i32 5, metadata !4, metadata !41}
!50 = metadata !{i32 6, i32 5, metadata !26, metadata !41}
!51 = metadata !{i32 6, i32 5, metadata !28, metadata !41}
!52 = metadata !{i32 6, i32 5, metadata !30, metadata !41}
!53 = metadata !{i32 7, i32 9, metadata !32, metadata !41}
!54 = metadata !{i32 8, i32 9, metadata !32, metadata !41} ; [ DW_TAG_imported_declaration ]
!55 = metadata !{i32 9, i32 9, metadata !32, metadata !41}
!56 = metadata !{i32 10, i32 5, metadata !32, metadata !41}

