; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z, i32 %flag) #0 {
test_fun_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %flag}, i64 0, metadata !21), !dbg !22
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !24), !dbg !25
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !21), !dbg !22
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !24), !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !21), !dbg !22
  br label %test_fun_bb1, !dbg !27

test_fun_bb1:                                     ; preds = %test_fun_bb6, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"9", %test_fun_bb6 ]
  %.01 = phi i32 [ 1, %test_fun_bb0 ], [ %.23, %test_fun_bb6 ]
  %.0 = phi i32 [ %y, %test_fun_bb0 ], [ %.2, %test_fun_bb6 ]
  %"0" = icmp slt i32 %.0, %z, !dbg !28
  %"1" = icmp sgt i32 %.01, 0, !dbg !30
  %. = select i1 %"0", i1 %"1", i1 false, !dbg !28
  br i1 %., label %test_fun_bb2, label %test_fun_bb7, !dbg !32

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = icmp sgt i32 %.0, 0, !dbg !34
  %"3" = icmp sgt i32 %x, 1, !dbg !37
  %or.cond = and i1 %"2", %"3", !dbg !34
  br i1 %or.cond, label %test_fun_bb3, label %test_fun_bb4, !dbg !34

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"4" = mul nsw i32 %x, %.0, !dbg !39
  br label %test_fun_bb6, !dbg !41

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"5" = icmp sgt i32 %.0, 0, !dbg !42
  %"6" = icmp slt i32 %x, -1, !dbg !45
  %or.cond4 = and i1 %"5", %"6", !dbg !42
  br i1 %or.cond4, label %test_fun_bb5, label %test_fun_bb6, !dbg !42

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"7" = sub nsw i32 0, %x, !dbg !47
  %"8" = mul nsw i32 %"7", %.0, !dbg !47
  br label %test_fun_bb6, !dbg !49

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb4, %test_fun_bb3
  %.23 = phi i32 [ %.01, %test_fun_bb3 ], [ %.01, %test_fun_bb5 ], [ 0, %test_fun_bb4 ]
  %.2 = phi i32 [ %"4", %test_fun_bb3 ], [ %"8", %test_fun_bb5 ], [ %.0, %test_fun_bb4 ]
  %"9" = add nsw i32 %c.0, 1, !dbg !50
  br label %test_fun_bb1, !dbg !51

test_fun_bb7:                                     ; preds = %test_fun_bb1
  ret i32 %c.0, !dbg !52
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !53
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !54
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !55
  %"13" = call i32 @__VERIFIER_nondet_int(), !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !57), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !64), !dbg !65
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !26, i64 0, metadata !64), !dbg !65
  call void @llvm.dbg.value(metadata !23, i64 0, metadata !64), !dbg !65
  br label %main_bb9, !dbg !68

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %c.0.i = phi i32 [ 0, %main_bb8 ], [ %"23", %main_bb14 ], !dbg !58
  %.01.i = phi i32 [ 1, %main_bb8 ], [ %.23.i, %main_bb14 ], !dbg !58
  %.0.i = phi i32 [ %"11", %main_bb8 ], [ %.2.i, %main_bb14 ], !dbg !58
  %"14" = icmp slt i32 %.0.i, %"12", !dbg !69
  %"15" = icmp sgt i32 %.01.i, 0, !dbg !70
  %..i = select i1 %"14", i1 %"15", i1 false, !dbg !69
  br i1 %..i, label %main_bb10, label %main_test_fun.exit, !dbg !71

main_bb10:                                        ; preds = %main_bb9
  %"16" = icmp sgt i32 %.0.i, 0, !dbg !72
  %"17" = icmp sgt i32 %"10", 1, !dbg !73
  %or.cond.i = and i1 %"16", %"17", !dbg !72
  br i1 %or.cond.i, label %main_bb11, label %main_bb12, !dbg !72

main_bb11:                                        ; preds = %main_bb10
  %"18" = mul nsw i32 %"10", %.0.i, !dbg !74
  br label %main_bb14, !dbg !75

main_bb12:                                        ; preds = %main_bb10
  %"19" = icmp sgt i32 %.0.i, 0, !dbg !76
  %"20" = icmp slt i32 %"10", -1, !dbg !77
  %or.cond4.i = and i1 %"19", %"20", !dbg !76
  br i1 %or.cond4.i, label %main_bb13, label %main_bb14, !dbg !76

main_bb13:                                        ; preds = %main_bb12
  %"21" = sub nsw i32 0, %"10", !dbg !78
  %"22" = mul nsw i32 %"21", %.0.i, !dbg !78
  br label %main_bb14, !dbg !79

main_bb14:                                        ; preds = %main_bb13, %main_bb12, %main_bb11
  %.23.i = phi i32 [ %.01.i, %main_bb11 ], [ %.01.i, %main_bb13 ], [ 0, %main_bb12 ], !dbg !58
  %.2.i = phi i32 [ %"18", %main_bb11 ], [ %"22", %main_bb13 ], [ %.0.i, %main_bb12 ], !dbg !58
  %"23" = add nsw i32 %c.0.i, 1, !dbg !80
  br label %main_bb9, !dbg !81

main_test_fun.exit:                               ; preds = %main_bb9
  ret i32 %c.0.i, !dbg !58
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32)* @test_fun, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [test_fun]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [main]
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
!21 = metadata !{i32 786689, metadata !4, metadata !"flag", metadata !5, i32 67108867, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [flag] [line 3]
!22 = metadata !{i32 3, i32 39, metadata !4, null}
!23 = metadata !{i32 0}
!24 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 5]
!25 = metadata !{i32 5, i32 9, metadata !4, null}
!26 = metadata !{i32 1}
!27 = metadata !{i32 7, i32 5, metadata !4, null}
!28 = metadata !{i32 7, i32 5, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 7, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 7, i32 5, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 7, i32 5, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 7, i32 5, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 7, i32 5, i32 3, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 8, i32 13, metadata !35, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 786443, metadata !1, metadata !36, i32 8, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 786443, metadata !1, metadata !4, i32 7, i32 35, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 8, i32 13, metadata !38, null} ; [ DW_TAG_imported_declaration ]
!38 = metadata !{i32 786443, metadata !1, metadata !35, i32 8, i32 13, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 9, i32 13, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !35, i32 8, i32 33, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 10, i32 9, metadata !40, null}
!42 = metadata !{i32 11, i32 17, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 11, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 786443, metadata !1, metadata !35, i32 10, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 11, i32 17, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !43, i32 11, i32 17, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 12, i32 17, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !43, i32 11, i32 38, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 13, i32 13, metadata !48, null}
!50 = metadata !{i32 17, i32 9, metadata !36, null}
!51 = metadata !{i32 18, i32 5, metadata !36, null}
!52 = metadata !{i32 19, i32 5, metadata !4, null}
!53 = metadata !{i32 23, i32 21, metadata !9, null}
!54 = metadata !{i32 23, i32 46, metadata !9, null}
!55 = metadata !{i32 23, i32 71, metadata !9, null}
!56 = metadata !{i32 23, i32 96, metadata !9, null}
!57 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777219, metadata !8, i32 0, metadata !58} ; [ DW_TAG_arg_variable ] [x] [line 3]
!58 = metadata !{i32 23, i32 12, metadata !9, null}
!59 = metadata !{i32 3, i32 18, metadata !4, metadata !58}
!60 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554435, metadata !8, i32 0, metadata !58} ; [ DW_TAG_arg_variable ] [y] [line 3]
!61 = metadata !{i32 3, i32 25, metadata !4, metadata !58}
!62 = metadata !{i32 786689, metadata !4, metadata !"z", metadata !5, i32 50331651, metadata !8, i32 0, metadata !58} ; [ DW_TAG_arg_variable ] [z] [line 3]
!63 = metadata !{i32 3, i32 32, metadata !4, metadata !58}
!64 = metadata !{i32 786689, metadata !4, metadata !"flag", metadata !5, i32 67108867, metadata !8, i32 0, metadata !58} ; [ DW_TAG_arg_variable ] [flag] [line 3]
!65 = metadata !{i32 3, i32 39, metadata !4, metadata !58}
!66 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 5, metadata !8, i32 0, metadata !58} ; [ DW_TAG_auto_variable ] [c] [line 5]
!67 = metadata !{i32 5, i32 9, metadata !4, metadata !58}
!68 = metadata !{i32 7, i32 5, metadata !4, metadata !58}
!69 = metadata !{i32 7, i32 5, metadata !29, metadata !58}
!70 = metadata !{i32 7, i32 5, metadata !31, metadata !58}
!71 = metadata !{i32 7, i32 5, metadata !33, metadata !58}
!72 = metadata !{i32 8, i32 13, metadata !35, metadata !58} ; [ DW_TAG_imported_declaration ]
!73 = metadata !{i32 8, i32 13, metadata !38, metadata !58} ; [ DW_TAG_imported_declaration ]
!74 = metadata !{i32 9, i32 13, metadata !40, metadata !58}
!75 = metadata !{i32 10, i32 9, metadata !40, metadata !58}
!76 = metadata !{i32 11, i32 17, metadata !43, metadata !58}
!77 = metadata !{i32 11, i32 17, metadata !46, metadata !58}
!78 = metadata !{i32 12, i32 17, metadata !48, metadata !58}
!79 = metadata !{i32 13, i32 13, metadata !48, metadata !58}
!80 = metadata !{i32 17, i32 9, metadata !36, metadata !58}
!81 = metadata !{i32 18, i32 5, metadata !36, metadata !58}

