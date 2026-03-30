; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @foo() #0 {
foo_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !13
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !14), !dbg !15
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !16
  %"2" = icmp ne i32 %"1", 0, !dbg !16
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  %"4" = icmp ne i32 %"3", 0, !dbg !18
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !21
  %"6" = icmp ne i32 %"5", 0, !dbg !21
  br i1 %"2", label %foo_bb1, label %foo_bb4, !dbg !16

foo_bb1:                                          ; preds = %foo_bb0
  br i1 %"4", label %foo_bb2, label %foo_bb3, !dbg !18

foo_bb2:                                          ; preds = %foo_bb1
  %. = select i1 %"6", i32 0, i32 1, !dbg !24
  br label %foo_bb7, !dbg !26

foo_bb3:                                          ; preds = %foo_bb1
  %.1 = select i1 %"6", i32 2, i32 3, !dbg !27
  br label %foo_bb7

foo_bb4:                                          ; preds = %foo_bb0
  br i1 %"4", label %foo_bb5, label %foo_bb6, !dbg !31

foo_bb5:                                          ; preds = %foo_bb4
  %.2 = select i1 %"6", i32 4, i32 5, !dbg !34
  br label %foo_bb7, !dbg !38

foo_bb6:                                          ; preds = %foo_bb4
  %.3 = select i1 %"6", i32 6, i32 7, !dbg !39
  br label %foo_bb7

foo_bb7:                                          ; preds = %foo_bb5, %foo_bb6, %foo_bb2, %foo_bb3
  %y.6 = phi i32 [ %., %foo_bb2 ], [ %.1, %foo_bb3 ], [ %.2, %foo_bb5 ], [ %.3, %foo_bb6 ]
  ret i32 %y.6, !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !45), !dbg !46
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !48), !dbg !49
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !50
  %"9" = icmp ne i32 %"8", 0, !dbg !50
  %"10" = sub nsw i32 1, 1, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !45), !dbg !46
  %. = select i1 %"9", i32 %"10", i32 1, !dbg !50
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !54
  %"12" = icmp ne i32 %"11", 0, !dbg !54
  br i1 %"12", label %main_foo.exit, label %main_bb9, !dbg !54

main_foo.exit:                                    ; preds = %main_bb8
  %"13" = call i32 @__VERIFIER_nondet_int() #3, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !59) #3, !dbg !60
  %"14" = call i32 @__VERIFIER_nondet_int() #3, !dbg !61
  %"15" = call i32 @__VERIFIER_nondet_int() #3, !dbg !62
  %"16" = call i32 @__VERIFIER_nondet_int() #3, !dbg !63
  br label %main_bb9, !dbg !64

main_bb9:                                         ; preds = %main_foo.exit, %main_bb8
  %"17" = call i32 @__VERIFIER_nondet_int(), !dbg !65
  %"18" = icmp ne i32 %"17", 0, !dbg !65
  br i1 %"18", label %main_foo.exit6, label %main_bb10, !dbg !65

main_foo.exit6:                                   ; preds = %main_bb9
  %"19" = call i32 @__VERIFIER_nondet_int() #3, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !70) #3, !dbg !71
  %"20" = call i32 @__VERIFIER_nondet_int() #3, !dbg !72
  %"21" = call i32 @__VERIFIER_nondet_int() #3, !dbg !73
  %"22" = call i32 @__VERIFIER_nondet_int() #3, !dbg !74
  br label %main_bb10, !dbg !75

main_bb10:                                        ; preds = %main_foo.exit6, %main_bb9
  %"23" = call i32 @__VERIFIER_nondet_int(), !dbg !76
  %"24" = icmp ne i32 %"23", 0, !dbg !76
  br i1 %"24", label %main_foo.exit12, label %main_bb11, !dbg !76

main_foo.exit12:                                  ; preds = %main_bb10
  %"25" = call i32 @__VERIFIER_nondet_int() #3, !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !81) #3, !dbg !82
  %"26" = call i32 @__VERIFIER_nondet_int() #3, !dbg !83
  %"27" = call i32 @__VERIFIER_nondet_int() #3, !dbg !84
  %"28" = call i32 @__VERIFIER_nondet_int() #3, !dbg !85
  br label %main_bb11, !dbg !86

main_bb11:                                        ; preds = %main_foo.exit12, %main_bb10
  %"29" = call i32 @__VERIFIER_nondet_int(), !dbg !87
  %"30" = icmp ne i32 %"29", 0, !dbg !87
  br i1 %"30", label %main_foo.exit18, label %main_bb12, !dbg !87

main_foo.exit18:                                  ; preds = %main_bb11
  %"31" = call i32 @__VERIFIER_nondet_int() #3, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !92) #3, !dbg !93
  %"32" = call i32 @__VERIFIER_nondet_int() #3, !dbg !94
  %"33" = call i32 @__VERIFIER_nondet_int() #3, !dbg !95
  %"34" = call i32 @__VERIFIER_nondet_int() #3, !dbg !96
  br label %main_bb12, !dbg !97

main_bb12:                                        ; preds = %main_foo.exit18, %main_bb11
  %"35" = call i32 @__VERIFIER_nondet_int(), !dbg !98
  %"36" = icmp ne i32 %"35", 0, !dbg !98
  %"37" = sub nsw i32 %., 1, !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !45), !dbg !46
  %.. = select i1 %"36", i32 %"37", i32 %., !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !48), !dbg !49
  br label %main_bb13, !dbg !102

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %x.0 = phi i32 [ %"7", %main_bb12 ], [ %"39", %main_bb14 ]
  %"38" = icmp sgt i32 %x.0, 0, !dbg !103
  br i1 %"38", label %main_bb14, label %main_bb15, !dbg !103

main_bb14:                                        ; preds = %main_bb13
  %"39" = sub nsw i32 %x.0, %.., !dbg !105
  br label %main_bb13, !dbg !107

main_bb15:                                        ; preds = %main_bb13
  ret i32 0, !dbg !108
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"foo", metadata !"foo", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @foo, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [foo]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 52, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [main]
!10 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!11 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!12 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!13 = metadata !{i32 18, i32 10, metadata !4, null}
!14 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 18]
!15 = metadata !{i32 18, i32 6, metadata !4, null}
!16 = metadata !{i32 19, i32 6, metadata !17, null}
!17 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!18 = metadata !{i32 20, i32 7, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !20, i32 20, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 786443, metadata !1, metadata !17, i32 19, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 21, i32 8, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !23, i32 21, i32 8, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 786443, metadata !1, metadata !19, i32 20, i32 32, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 23, i32 4, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 33, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 26, i32 3, metadata !23, null}
!27 = metadata !{i32 29, i32 4, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !29, i32 27, i32 33, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 786443, metadata !1, metadata !30, i32 27, i32 8, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 786443, metadata !1, metadata !19, i32 26, i32 10, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 34, i32 7, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !33, i32 34, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 786443, metadata !1, metadata !17, i32 33, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 37, i32 4, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !36, i32 35, i32 33, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 35, i32 8, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786443, metadata !1, metadata !32, i32 34, i32 32, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 40, i32 3, metadata !37, null}
!39 = metadata !{i32 43, i32 4, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 41, i32 33, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 41, i32 8, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !32, i32 40, i32 10, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 48, i32 2, metadata !4, null}
!44 = metadata !{i32 1}
!45 = metadata !{i32 786688, metadata !9, metadata !"d", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 53]
!46 = metadata !{i32 53, i32 6, metadata !9, null}
!47 = metadata !{i32 54, i32 10, metadata !9, null}
!48 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 54, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 54]
!49 = metadata !{i32 54, i32 6, metadata !9, null}
!50 = metadata !{i32 56, i32 6, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !9, i32 56, i32 6, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 57, i32 3, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 56, i32 31, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 61, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !9, i32 61, i32 6, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 18, i32 10, metadata !4, metadata !57}
!57 = metadata !{i32 62, i32 3, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !55, i32 61, i32 31, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 18, metadata !8, i32 0, metadata !57} ; [ DW_TAG_auto_variable ] [y] [line 18]
!60 = metadata !{i32 18, i32 6, metadata !4, metadata !57}
!61 = metadata !{i32 19, i32 6, metadata !17, metadata !57}
!62 = metadata !{i32 20, i32 7, metadata !19, metadata !57}
!63 = metadata !{i32 21, i32 8, metadata !22, metadata !57}
!64 = metadata !{i32 63, i32 2, metadata !58, null}
!65 = metadata !{i32 64, i32 6, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !9, i32 64, i32 6, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 18, i32 10, metadata !4, metadata !68}
!68 = metadata !{i32 65, i32 3, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !66, i32 64, i32 31, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 18, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [y] [line 18]
!71 = metadata !{i32 18, i32 6, metadata !4, metadata !68}
!72 = metadata !{i32 19, i32 6, metadata !17, metadata !68}
!73 = metadata !{i32 20, i32 7, metadata !19, metadata !68}
!74 = metadata !{i32 21, i32 8, metadata !22, metadata !68}
!75 = metadata !{i32 66, i32 2, metadata !69, null}
!76 = metadata !{i32 67, i32 6, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !9, i32 67, i32 6, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 18, i32 10, metadata !4, metadata !79}
!79 = metadata !{i32 68, i32 3, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !77, i32 67, i32 31, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 18, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [y] [line 18]
!82 = metadata !{i32 18, i32 6, metadata !4, metadata !79}
!83 = metadata !{i32 19, i32 6, metadata !17, metadata !79}
!84 = metadata !{i32 20, i32 7, metadata !19, metadata !79}
!85 = metadata !{i32 21, i32 8, metadata !22, metadata !79}
!86 = metadata !{i32 69, i32 2, metadata !80, null}
!87 = metadata !{i32 70, i32 6, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !9, i32 70, i32 6, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!89 = metadata !{i32 18, i32 10, metadata !4, metadata !90}
!90 = metadata !{i32 71, i32 3, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !88, i32 70, i32 31, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 18, metadata !8, i32 0, metadata !90} ; [ DW_TAG_auto_variable ] [y] [line 18]
!93 = metadata !{i32 18, i32 6, metadata !4, metadata !90}
!94 = metadata !{i32 19, i32 6, metadata !17, metadata !90}
!95 = metadata !{i32 20, i32 7, metadata !19, metadata !90}
!96 = metadata !{i32 21, i32 8, metadata !22, metadata !90}
!97 = metadata !{i32 72, i32 2, metadata !91, null}
!98 = metadata !{i32 76, i32 6, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !9, i32 76, i32 6, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!100 = metadata !{i32 77, i32 3, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !99, i32 76, i32 31, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 80, i32 2, metadata !9, null}
!103 = metadata !{i32 80, i32 2, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !9, i32 80, i32 2, i32 1, i32 34} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!105 = metadata !{i32 81, i32 3, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !9, i32 80, i32 16, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 82, i32 2, metadata !106, null}
!108 = metadata !{i32 83, i32 2, metadata !9, null}

