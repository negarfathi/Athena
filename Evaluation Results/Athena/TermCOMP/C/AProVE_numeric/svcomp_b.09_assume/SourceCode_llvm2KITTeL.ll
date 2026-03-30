; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !20), !dbg !21
  %"0" = icmp sle i32 %x, 0, !dbg !22
  %"1" = icmp sle i32 %y, 0, !dbg !24
  %or.cond = or i1 %"0", %"1", !dbg !22
  br i1 %or.cond, label %test_fun_bb1, label %test_fun_bb2, !dbg !22

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"2" = add nsw i32 %x, %y, !dbg !26
  br label %test_fun_bb7, !dbg !26

test_fun_bb2:                                     ; preds = %test_fun_bb0, %test_fun_bb6
  %c.0 = phi i32 [ %"8", %test_fun_bb6 ], [ 0, %test_fun_bb0 ]
  %.01 = phi i32 [ %.1, %test_fun_bb6 ], [ %x, %test_fun_bb0 ]
  %"3" = icmp eq i32 %.01, 0, !dbg !28
  %"4" = xor i1 %"3", true, !dbg !28
  br i1 %"4", label %test_fun_bb3, label %test_fun_bb7, !dbg !28

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"5" = icmp sgt i32 %.01, %y, !dbg !30
  br i1 %"5", label %test_fun_bb6, label %test_fun_bb4, !dbg !30

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"6" = icmp sle i32 %.01, 0, !dbg !33
  br i1 %"6", label %test_fun_bb7, label %test_fun_bb5, !dbg !33

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"7" = sub nsw i32 %.01, 1, !dbg !36
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb3, %test_fun_bb5
  %.1 = phi i32 [ %"7", %test_fun_bb5 ], [ %y, %test_fun_bb3 ]
  %"8" = add nsw i32 %c.0, 1, !dbg !37
  br label %test_fun_bb2, !dbg !38

test_fun_bb7:                                     ; preds = %test_fun_bb2, %test_fun_bb4, %test_fun_bb1
  %.0 = phi i32 [ %"2", %test_fun_bb1 ], [ %.01, %test_fun_bb4 ], [ %c.0, %test_fun_bb2 ]
  ret i32 %.0, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !40
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !42), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !47), !dbg !48
  %"11" = icmp sle i32 %"9", 0, !dbg !49
  %"12" = icmp sle i32 %"10", 0, !dbg !50
  %or.cond.i = or i1 %"11", %"12", !dbg !49
  br i1 %or.cond.i, label %main_bb9, label %main_bb10, !dbg !49

main_bb9:                                         ; preds = %main_bb8
  %"13" = add nsw i32 %"9", %"10", !dbg !51
  br label %main_test_fun.exit, !dbg !51

main_bb10:                                        ; preds = %main_bb14, %main_bb8
  %c.0.i = phi i32 [ %"19", %main_bb14 ], [ 0, %main_bb8 ], !dbg !43
  %.01.i = phi i32 [ %.1.i, %main_bb14 ], [ %"9", %main_bb8 ], !dbg !43
  %"14" = icmp eq i32 %.01.i, 0, !dbg !52
  %"15" = xor i1 %"14", true, !dbg !52
  br i1 %"15", label %main_bb11, label %main_test_fun.exit, !dbg !52

main_bb11:                                        ; preds = %main_bb10
  %"16" = icmp sgt i32 %.01.i, %"10", !dbg !53
  br i1 %"16", label %main_bb14, label %main_bb12, !dbg !53

main_bb12:                                        ; preds = %main_bb11
  %"17" = icmp sle i32 %.01.i, 0, !dbg !54
  br i1 %"17", label %main_test_fun.exit, label %main_bb13, !dbg !54

main_bb13:                                        ; preds = %main_bb12
  %"18" = sub nsw i32 %.01.i, 1, !dbg !55
  br label %main_bb14, !dbg !43

main_bb14:                                        ; preds = %main_bb13, %main_bb11
  %.1.i = phi i32 [ %"18", %main_bb13 ], [ %"10", %main_bb11 ], !dbg !43
  %"19" = add nsw i32 %c.0.i, 1, !dbg !56
  br label %main_bb10, !dbg !57

main_test_fun.exit:                               ; preds = %main_bb9, %main_bb10, %main_bb12
  %.0.i = phi i32 [ %"13", %main_bb9 ], [ %.01.i, %main_bb12 ], [ %c.0.i, %main_bb10 ], !dbg !43
  ret i32 %.0.i, !dbg !43
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 3]
!16 = metadata !{i32 3, i32 18, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 3]
!18 = metadata !{i32 3, i32 25, metadata !4, null}
!19 = metadata !{i32 0}
!20 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 5]
!21 = metadata !{i32 5, i32 9, metadata !4, null}
!22 = metadata !{i32 6, i32 8, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 8, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 6, i32 8, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 6, i32 8, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 8, i32 8, metadata !27, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 786443, metadata !1, metadata !23, i32 6, i32 26, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 10, i32 5, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 11, i32 13, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !32, i32 11, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 10, i32 23, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 14, i32 9, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !35, i32 14, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 786443, metadata !1, metadata !31, i32 13, i32 16, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 18, i32 13, metadata !35, null}
!37 = metadata !{i32 20, i32 9, metadata !32, null}
!38 = metadata !{i32 21, i32 5, metadata !32, null}
!39 = metadata !{i32 23, i32 1, metadata !4, null}
!40 = metadata !{i32 26, i32 21, metadata !9, null}
!41 = metadata !{i32 26, i32 46, metadata !9, null}
!42 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !43} ; [ DW_TAG_arg_variable ] [x] [line 3]
!43 = metadata !{i32 26, i32 12, metadata !9, null}
!44 = metadata !{i32 3, i32 18, metadata !4, metadata !43}
!45 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !43} ; [ DW_TAG_arg_variable ] [y] [line 3]
!46 = metadata !{i32 3, i32 25, metadata !4, metadata !43}
!47 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, metadata !43} ; [ DW_TAG_auto_variable ] [c] [line 5]
!48 = metadata !{i32 5, i32 9, metadata !4, metadata !43}
!49 = metadata !{i32 6, i32 8, metadata !23, metadata !43}
!50 = metadata !{i32 6, i32 8, metadata !25, metadata !43}
!51 = metadata !{i32 8, i32 8, metadata !27, metadata !43} ; [ DW_TAG_imported_declaration ]
!52 = metadata !{i32 10, i32 5, metadata !29, metadata !43}
!53 = metadata !{i32 11, i32 13, metadata !31, metadata !43}
!54 = metadata !{i32 14, i32 9, metadata !34, metadata !43}
!55 = metadata !{i32 18, i32 13, metadata !35, metadata !43}
!56 = metadata !{i32 20, i32 9, metadata !32, metadata !43}
!57 = metadata !{i32 21, i32 5, metadata !32, metadata !43}

