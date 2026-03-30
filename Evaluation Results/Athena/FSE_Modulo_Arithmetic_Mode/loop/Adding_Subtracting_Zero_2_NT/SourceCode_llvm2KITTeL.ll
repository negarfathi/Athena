; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i64 0, align 8

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !21), !dbg !22
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !23), !dbg !24
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !25), !dbg !26
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !27
  %"1" = add nsw i64 %"0", 1, !dbg !27
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !28), !dbg !29
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !30
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !30

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !32
  %"4" = sub nsw i64 %"3", 1, !dbg !32
  %"5" = srem i64 %"4", %"1", !dbg !32
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !32
  br label %wrap_around_bb4, !dbg !32

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !34
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !34

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !36
  %"9" = sub nsw i64 %"8", 1, !dbg !36
  %"10" = srem i64 %"9", %"1", !dbg !36
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !36
  br label %wrap_around_bb4, !dbg !36

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @ff_subtitles_next_line() #0 {
ff_subtitles_next_line_bb5:
  %"12" = call i64 @__VERIFIER_nondet_int(), !dbg !39
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !40), !dbg !41
  %"13" = srem i64 %"12", 1000, !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !40), !dbg !41
  %"14" = load i64* @"'flag", align 8, !dbg !54
  %"15" = icmp eq i64 %"14", 1, !dbg !54
  br i1 %"15", label %ff_subtitles_next_line_wrap_around.exit, label %ff_subtitles_next_line_bb6, !dbg !54

ff_subtitles_next_line_bb6:                       ; preds = %ff_subtitles_next_line_bb5
  %"16" = icmp eq i64 %"13", 0, !dbg !56
  br i1 %"16", label %ff_subtitles_next_line_bb7, label %ff_subtitles_next_line_bb8, !dbg !56

ff_subtitles_next_line_bb7:                       ; preds = %ff_subtitles_next_line_bb6
  store i64 1, i64* @"'flag", align 8, !dbg !58
  br label %ff_subtitles_next_line_wrap_around.exit, !dbg !60

ff_subtitles_next_line_bb8:                       ; preds = %ff_subtitles_next_line_bb6
  %"17" = icmp slt i64 %"13", 0, !dbg !61
  br i1 %"17", label %ff_subtitles_next_line_bb9, label %ff_subtitles_next_line_wrap_around.exit, !dbg !61

ff_subtitles_next_line_bb9:                       ; preds = %ff_subtitles_next_line_bb8
  %"18" = sub nsw i64 0, %"13", !dbg !63
  call void @llvm.dbg.value(metadata !{i64 %"18"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !69), !dbg !70
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !71), !dbg !72
  %"19" = icmp sgt i64 %"18", 2147483647, !dbg !73
  br i1 %"19", label %ff_subtitles_next_line_bb10, label %ff_subtitles_next_line_bb11, !dbg !73

ff_subtitles_next_line_bb10:                      ; preds = %ff_subtitles_next_line_bb9
  %"20" = sub nsw i64 %"18", 2147483647, !dbg !74
  %"21" = sub nsw i64 %"20", 1, !dbg !74
  %"22" = srem i64 %"21", 4294967296, !dbg !74
  %"23" = add nsw i64 -2147483648, %"22", !dbg !74
  br label %ff_subtitles_next_line_wrap_around.exit, !dbg !74

ff_subtitles_next_line_bb11:                      ; preds = %ff_subtitles_next_line_bb9
  %"24" = icmp slt i64 %"18", -2147483648, !dbg !75
  br i1 %"24", label %ff_subtitles_next_line_bb12, label %ff_subtitles_next_line_wrap_around.exit, !dbg !75

ff_subtitles_next_line_bb12:                      ; preds = %ff_subtitles_next_line_bb11
  %"25" = sub nsw i64 -2147483648, %"18", !dbg !76
  %"26" = sub nsw i64 %"25", 1, !dbg !76
  %"27" = srem i64 %"26", 4294967296, !dbg !76
  %"28" = sub nsw i64 2147483647, %"27", !dbg !76
  br label %ff_subtitles_next_line_wrap_around.exit, !dbg !76

ff_subtitles_next_line_wrap_around.exit:          ; preds = %ff_subtitles_next_line_bb8, %ff_subtitles_next_line_bb12, %ff_subtitles_next_line_bb11, %ff_subtitles_next_line_bb10, %ff_subtitles_next_line_bb5, %ff_subtitles_next_line_bb7
  %.0 = phi i64 [ 0, %ff_subtitles_next_line_bb7 ], [ 0, %ff_subtitles_next_line_bb5 ], [ %"23", %ff_subtitles_next_line_bb10 ], [ %"28", %ff_subtitles_next_line_bb12 ], [ %"18", %ff_subtitles_next_line_bb11 ], [ %"13", %ff_subtitles_next_line_bb8 ]
  ret i64 %.0, !dbg !77
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb13:
  %"29" = call i64 @__VERIFIER_nondet_int(), !dbg !78
  call void @llvm.dbg.value(metadata !{i64 %"29"}, i64 0, metadata !79), !dbg !80
  %"30" = call i64 @__VERIFIER_nondet_int(), !dbg !81
  call void @llvm.dbg.value(metadata !{i64 %"30"}, i64 0, metadata !82), !dbg !83
  %"31" = icmp slt i64 %"29", 0, !dbg !84
  %"32" = icmp slt i64 %"30", 0, !dbg !86
  %or.cond = or i1 %"31", %"32", !dbg !84
  br i1 %or.cond, label %main_bb29, label %main_bb14, !dbg !84

main_bb14:                                        ; preds = %main_wrap_around.exit3, %main_bb13
  %b.0 = phi i64 [ %"29", %main_bb13 ], [ %.0.i1, %main_wrap_around.exit3 ]
  %"33" = icmp slt i64 %b.0, %"30", !dbg !88
  br i1 %"33", label %main_bb15, label %main_bb29, !dbg !88

main_bb15:                                        ; preds = %main_bb14
  %"34" = call i64 @__VERIFIER_nondet_int() #3, !dbg !90
  %"35" = srem i64 %"34", 1000, !dbg !93
  %"36" = load i64* @"'flag", align 8, !dbg !94
  %"37" = icmp eq i64 %"36", 1, !dbg !94
  br i1 %"37", label %main_ff_subtitles_next_line.exit, label %main_bb16, !dbg !94

main_bb16:                                        ; preds = %main_bb15
  %"38" = icmp eq i64 %"35", 0, !dbg !95
  br i1 %"38", label %main_bb17, label %main_bb18, !dbg !95

main_bb17:                                        ; preds = %main_bb16
  store i64 1, i64* @"'flag", align 8, !dbg !96
  br label %main_ff_subtitles_next_line.exit, !dbg !97

main_bb18:                                        ; preds = %main_bb16
  %"39" = icmp slt i64 %"35", 0, !dbg !98
  br i1 %"39", label %main_bb19, label %main_ff_subtitles_next_line.exit, !dbg !98

main_bb19:                                        ; preds = %main_bb18
  %"40" = sub nsw i64 0, %"35", !dbg !99
  %"41" = icmp sgt i64 %"40", 2147483647, !dbg !100
  br i1 %"41", label %main_bb20, label %main_bb21, !dbg !100

main_bb20:                                        ; preds = %main_bb19
  %"42" = sub nsw i64 %"40", 2147483647, !dbg !101
  %"43" = sub nsw i64 %"42", 1, !dbg !101
  %"44" = srem i64 %"43", 4294967296, !dbg !101
  %"45" = add nsw i64 -2147483648, %"44", !dbg !101
  br label %main_ff_subtitles_next_line.exit, !dbg !101

main_bb21:                                        ; preds = %main_bb19
  %"46" = icmp slt i64 %"40", -2147483648, !dbg !102
  br i1 %"46", label %main_bb22, label %main_ff_subtitles_next_line.exit, !dbg !102

main_bb22:                                        ; preds = %main_bb21
  %"47" = sub nsw i64 -2147483648, %"40", !dbg !103
  %"48" = sub nsw i64 %"47", 1, !dbg !103
  %"49" = srem i64 %"48", 4294967296, !dbg !103
  %"50" = sub nsw i64 2147483647, %"49", !dbg !103
  br label %main_ff_subtitles_next_line.exit, !dbg !103

main_ff_subtitles_next_line.exit:                 ; preds = %main_bb15, %main_bb17, %main_bb18, %main_bb20, %main_bb21, %main_bb22
  %.0.i = phi i64 [ 0, %main_bb17 ], [ 0, %main_bb15 ], [ %"45", %main_bb20 ], [ %"50", %main_bb22 ], [ %"40", %main_bb21 ], [ %"35", %main_bb18 ], !dbg !91
  %"51" = add nsw i64 %b.0, %.0.i, !dbg !91
  %"52" = icmp sgt i64 %"51", 2147483647, !dbg !104
  br i1 %"52", label %main_bb23, label %main_bb24, !dbg !104

main_bb23:                                        ; preds = %main_ff_subtitles_next_line.exit
  %"53" = sub nsw i64 %"51", 2147483647, !dbg !106
  %"54" = sub nsw i64 %"53", 1, !dbg !106
  %"55" = srem i64 %"54", 4294967296, !dbg !106
  %"56" = add nsw i64 -2147483648, %"55", !dbg !106
  br label %main_wrap_around.exit, !dbg !106

main_bb24:                                        ; preds = %main_ff_subtitles_next_line.exit
  %"57" = icmp slt i64 %"51", -2147483648, !dbg !107
  br i1 %"57", label %main_bb25, label %main_wrap_around.exit, !dbg !107

main_bb25:                                        ; preds = %main_bb24
  %"58" = sub nsw i64 -2147483648, %"51", !dbg !108
  %"59" = sub nsw i64 %"58", 1, !dbg !108
  %"60" = srem i64 %"59", 4294967296, !dbg !108
  %"61" = sub nsw i64 2147483647, %"60", !dbg !108
  br label %main_wrap_around.exit, !dbg !108

main_wrap_around.exit:                            ; preds = %main_bb23, %main_bb24, %main_bb25
  %.0.i1 = phi i64 [ %"56", %main_bb23 ], [ %"61", %main_bb25 ], [ %"51", %main_bb24 ], !dbg !105
  %"62" = sub nsw i64 %"30", 4, !dbg !109
  %"63" = icmp sgt i64 %"62", 2147483647, !dbg !111
  br i1 %"63", label %main_bb26, label %main_bb27, !dbg !111

main_bb26:                                        ; preds = %main_wrap_around.exit
  %"64" = sub nsw i64 %"62", 2147483647, !dbg !112
  %"65" = sub nsw i64 %"64", 1, !dbg !112
  %"66" = srem i64 %"65", 4294967296, !dbg !112
  %"67" = add nsw i64 -2147483648, %"66", !dbg !112
  br label %main_wrap_around.exit3, !dbg !112

main_bb27:                                        ; preds = %main_wrap_around.exit
  %"68" = icmp slt i64 %"62", -2147483648, !dbg !113
  br i1 %"68", label %main_bb28, label %main_wrap_around.exit3, !dbg !113

main_bb28:                                        ; preds = %main_bb27
  %"69" = sub nsw i64 -2147483648, %"62", !dbg !114
  %"70" = sub nsw i64 %"69", 1, !dbg !114
  %"71" = srem i64 %"70", 4294967296, !dbg !114
  %"72" = sub nsw i64 2147483647, %"71", !dbg !114
  br label %main_wrap_around.exit3, !dbg !114

main_wrap_around.exit3:                           ; preds = %main_bb26, %main_bb27, %main_bb28
  %.0.i2 = phi i64 [ %"67", %main_bb26 ], [ %"72", %main_bb28 ], [ %"62", %main_bb27 ], !dbg !109
  %"73" = icmp sge i64 %.0.i1, %.0.i2, !dbg !109
  br i1 %"73", label %main_bb29, label %main_bb14, !dbg !109

main_bb29:                                        ; preds = %main_bb14, %main_wrap_around.exit3, %main_bb13
  ret i32 0, !dbg !115
}

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ff_subtitles_next_line", metadata !"ff_subtitles_next_line", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @ff_subtitles_next_line, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [ff_subtitles_next_line]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 43, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i64* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 11] [def]
!18 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!19 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!20 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 12]
!22 = metadata !{i32 12, i32 33, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!24 = metadata !{i32 12, i32 50, metadata !4, null}
!25 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!26 = metadata !{i32 12, i32 73, metadata !4, null}
!27 = metadata !{i32 13, i32 5, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 13]
!29 = metadata !{i32 13, i32 15, metadata !4, null}
!30 = metadata !{i32 14, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 15, i32 9, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 14, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 17, i32 14, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !31, i32 17, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 18, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !35, i32 17, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 21, i32 1, metadata !4, null}
!39 = metadata !{i32 24, i32 19, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!41 = metadata !{i32 24, i32 15, metadata !9, null}
!42 = metadata !{i32 25, i32 9, metadata !9, null}
!43 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !42} ; [ DW_TAG_arg_variable ] [value] [line 12]
!44 = metadata !{i32 12, i32 33, metadata !4, metadata !42}
!45 = metadata !{i64 -2147483648}
!46 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !42} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!47 = metadata !{i32 12, i32 50, metadata !4, metadata !42}
!48 = metadata !{i64 2147483647}
!49 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !42} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!50 = metadata !{i32 12, i32 73, metadata !4, metadata !42}
!51 = metadata !{i64 4294967296}
!52 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !42} ; [ DW_TAG_auto_variable ] [range] [line 13]
!53 = metadata !{i32 13, i32 15, metadata !4, metadata !42}
!54 = metadata !{i32 26, i32 9, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 30, i32 9, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !9, i32 30, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 32, i32 9, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !57, i32 31, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 33, i32 9, metadata !59, null}
!61 = metadata !{i32 35, i32 14, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !57, i32 35, i32 14, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 37, i32 12, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !62, i32 36, i32 1, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !63} ; [ DW_TAG_arg_variable ] [value] [line 12]
!66 = metadata !{i32 12, i32 33, metadata !4, metadata !63}
!67 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !63} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!68 = metadata !{i32 12, i32 50, metadata !4, metadata !63}
!69 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !63} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!70 = metadata !{i32 12, i32 73, metadata !4, metadata !63}
!71 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !63} ; [ DW_TAG_auto_variable ] [range] [line 13]
!72 = metadata !{i32 13, i32 15, metadata !4, metadata !63}
!73 = metadata !{i32 14, i32 9, metadata !31, metadata !63}
!74 = metadata !{i32 15, i32 9, metadata !33, metadata !63}
!75 = metadata !{i32 17, i32 14, metadata !35, metadata !63}
!76 = metadata !{i32 18, i32 9, metadata !37, metadata !63}
!77 = metadata !{i32 41, i32 1, metadata !9, null}
!78 = metadata !{i32 45, i32 19, metadata !12, null}
!79 = metadata !{i32 786688, metadata !12, metadata !"b", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 45]
!80 = metadata !{i32 45, i32 15, metadata !12, null}
!81 = metadata !{i32 46, i32 21, metadata !12, null}
!82 = metadata !{i32 786688, metadata !12, metadata !"end", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 46]
!83 = metadata !{i32 46, i32 15, metadata !12, null}
!84 = metadata !{i32 47, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !12, i32 47, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 47, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 47, i32 9, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 51, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 24, i32 19, metadata !9, metadata !91}
!91 = metadata !{i32 53, i32 30, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !12, i32 52, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 25, i32 9, metadata !9, metadata !91}
!94 = metadata !{i32 26, i32 9, metadata !55, metadata !91}
!95 = metadata !{i32 30, i32 9, metadata !57, metadata !91}
!96 = metadata !{i32 32, i32 9, metadata !59, metadata !91}
!97 = metadata !{i32 33, i32 9, metadata !59, metadata !91}
!98 = metadata !{i32 35, i32 14, metadata !62, metadata !91}
!99 = metadata !{i32 37, i32 12, metadata !64, metadata !91}
!100 = metadata !{i32 14, i32 9, metadata !31, metadata !99}
!101 = metadata !{i32 15, i32 9, metadata !33, metadata !99}
!102 = metadata !{i32 17, i32 14, metadata !35, metadata !99}
!103 = metadata !{i32 18, i32 9, metadata !37, metadata !99}
!104 = metadata !{i32 14, i32 9, metadata !31, metadata !105}
!105 = metadata !{i32 53, i32 13, metadata !92, null}
!106 = metadata !{i32 15, i32 9, metadata !33, metadata !105}
!107 = metadata !{i32 17, i32 14, metadata !35, metadata !105}
!108 = metadata !{i32 18, i32 9, metadata !37, metadata !105}
!109 = metadata !{i32 54, i32 18, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !92, i32 54, i32 13, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!111 = metadata !{i32 14, i32 9, metadata !31, metadata !109}
!112 = metadata !{i32 15, i32 9, metadata !33, metadata !109}
!113 = metadata !{i32 17, i32 14, metadata !35, metadata !109}
!114 = metadata !{i32 18, i32 9, metadata !37, metadata !109}
!115 = metadata !{i32 60, i32 1, metadata !12, null}

