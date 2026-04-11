; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !20), !dbg !21
  br label %test_fun_bb1, !dbg !23

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %c.1, %test_fun_bb5 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %"5", %test_fun_bb5 ]
  %"0" = icmp sge i32 %.0, 0, !dbg !24
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb6, !dbg !24

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"1" = add nsw i32 %.0, 1, !dbg !26
  br label %test_fun_bb3, !dbg !28

test_fun_bb3:                                     ; preds = %test_fun_bb4, %test_fun_bb2
  %c.1 = phi i32 [ %c.0, %test_fun_bb2 ], [ %"4", %test_fun_bb4 ]
  %.01 = phi i32 [ 1, %test_fun_bb2 ], [ %"3", %test_fun_bb4 ]
  %"2" = icmp sgt i32 %"1", %.01, !dbg !29
  br i1 %"2", label %test_fun_bb4, label %test_fun_bb5, !dbg !29

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"3" = add nsw i32 %.01, 1, !dbg !31
  %"4" = add nsw i32 %c.1, 1, !dbg !33
  br label %test_fun_bb3, !dbg !34

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"5" = sub nsw i32 %"1", 2, !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !15), !dbg !16
  br label %test_fun_bb1, !dbg !36

test_fun_bb6:                                     ; preds = %test_fun_bb1
  ret i32 %c.0, !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !38
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !22, i64 0, metadata !43), !dbg !44
  br label %main_bb8, !dbg !47

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %c.0.i = phi i32 [ 0, %main_bb7 ], [ %c.1.i, %main_bb12 ], !dbg !41
  %.0.i = phi i32 [ %"6", %main_bb7 ], [ %"13", %main_bb12 ], !dbg !41
  %"8" = icmp sge i32 %.0.i, 0, !dbg !48
  br i1 %"8", label %main_bb9, label %main_test_fun.exit, !dbg !48

main_bb9:                                         ; preds = %main_bb8
  %"9" = add nsw i32 %.0.i, 1, !dbg !49
  br label %main_bb10, !dbg !50

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %c.1.i = phi i32 [ %c.0.i, %main_bb9 ], [ %"12", %main_bb11 ], !dbg !41
  %.01.i = phi i32 [ 1, %main_bb9 ], [ %"11", %main_bb11 ], !dbg !41
  %"10" = icmp sgt i32 %"9", %.01.i, !dbg !51
  br i1 %"10", label %main_bb11, label %main_bb12, !dbg !51

main_bb11:                                        ; preds = %main_bb10
  %"11" = add nsw i32 %.01.i, 1, !dbg !52
  %"12" = add nsw i32 %c.1.i, 1, !dbg !53
  br label %main_bb10, !dbg !54

main_bb12:                                        ; preds = %main_bb10
  %"13" = sub nsw i32 %"9", 2, !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !40), !dbg !42
  br label %main_bb8, !dbg !56

main_test_fun.exit:                               ; preds = %main_bb8
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @test_fun, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [test_fun]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 18, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [main]
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
!22 = metadata !{i32 1}
!23 = metadata !{i32 6, i32 5, metadata !4, null}
!24 = metadata !{i32 6, i32 5, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 7, i32 9, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 9, i32 9, metadata !27, null}
!29 = metadata !{i32 9, i32 9, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !27, i32 9, i32 9, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 10, i32 13, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !27, i32 9, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 11, i32 13, metadata !32, null}
!34 = metadata !{i32 12, i32 9, metadata !32, null}
!35 = metadata !{i32 13, i32 9, metadata !27, null}
!36 = metadata !{i32 14, i32 5, metadata !27, null}
!37 = metadata !{i32 15, i32 5, metadata !4, null}
!38 = metadata !{i32 19, i32 21, metadata !9, null}
!39 = metadata !{i32 19, i32 46, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [x] [line 3]
!41 = metadata !{i32 19, i32 12, metadata !9, null}
!42 = metadata !{i32 3, i32 18, metadata !4, metadata !41}
!43 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !41} ; [ DW_TAG_arg_variable ] [y] [line 3]
!44 = metadata !{i32 3, i32 25, metadata !4, metadata !41}
!45 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [c] [line 5]
!46 = metadata !{i32 5, i32 9, metadata !4, metadata !41}
!47 = metadata !{i32 6, i32 5, metadata !4, metadata !41}
!48 = metadata !{i32 6, i32 5, metadata !25, metadata !41}
!49 = metadata !{i32 7, i32 9, metadata !27, metadata !41}
!50 = metadata !{i32 9, i32 9, metadata !27, metadata !41}
!51 = metadata !{i32 9, i32 9, metadata !30, metadata !41}
!52 = metadata !{i32 10, i32 13, metadata !32, metadata !41}
!53 = metadata !{i32 11, i32 13, metadata !32, metadata !41}
!54 = metadata !{i32 12, i32 9, metadata !32, metadata !41}
!55 = metadata !{i32 13, i32 9, metadata !27, metadata !41}
!56 = metadata !{i32 14, i32 5, metadata !27, metadata !41}

