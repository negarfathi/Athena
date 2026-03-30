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
define i64 @mdb_cursor_get() #0 {
mdb_cursor_get_bb5:
  %"12" = call i64 @__VERIFIER_nondet_int(), !dbg !39
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !40), !dbg !41
  %"13" = load i64* @"'flag", align 8, !dbg !42
  %"14" = add nsw i64 %"13", 1, !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %"14"}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !53
  %"15" = icmp sgt i64 %"14", 2147483647, !dbg !54
  br i1 %"15", label %mdb_cursor_get_bb6, label %mdb_cursor_get_bb7, !dbg !54

mdb_cursor_get_bb6:                               ; preds = %mdb_cursor_get_bb5
  %"16" = sub nsw i64 %"14", 2147483647, !dbg !55
  %"17" = sub nsw i64 %"16", 1, !dbg !55
  %"18" = srem i64 %"17", 4294967296, !dbg !55
  %"19" = add nsw i64 -2147483648, %"18", !dbg !55
  br label %mdb_cursor_get_wrap_around.exit, !dbg !55

mdb_cursor_get_bb7:                               ; preds = %mdb_cursor_get_bb5
  %"20" = icmp slt i64 %"14", -2147483648, !dbg !56
  br i1 %"20", label %mdb_cursor_get_bb8, label %mdb_cursor_get_wrap_around.exit, !dbg !56

mdb_cursor_get_bb8:                               ; preds = %mdb_cursor_get_bb7
  %"21" = sub nsw i64 -2147483648, %"14", !dbg !57
  %"22" = sub nsw i64 %"21", 1, !dbg !57
  %"23" = srem i64 %"22", 4294967296, !dbg !57
  %"24" = sub nsw i64 2147483647, %"23", !dbg !57
  br label %mdb_cursor_get_wrap_around.exit, !dbg !57

mdb_cursor_get_wrap_around.exit:                  ; preds = %mdb_cursor_get_bb6, %mdb_cursor_get_bb7, %mdb_cursor_get_bb8
  %.0.i = phi i64 [ %"19", %mdb_cursor_get_bb6 ], [ %"24", %mdb_cursor_get_bb8 ], [ %"14", %mdb_cursor_get_bb7 ], !dbg !42
  store i64 %.0.i, i64* @"'flag", align 8, !dbg !42
  %"25" = load i64* @"'flag", align 8, !dbg !58
  %"26" = icmp sgt i64 %"25", 1000, !dbg !58
  br i1 %"26", label %mdb_cursor_get_bb10, label %mdb_cursor_get_bb9, !dbg !58

mdb_cursor_get_bb9:                               ; preds = %mdb_cursor_get_wrap_around.exit
  %"27" = icmp sge i64 %"12", 0, !dbg !60
  %. = select i1 %"27", i64 0, i64 1, !dbg !62
  br label %mdb_cursor_get_bb10, !dbg !62

mdb_cursor_get_bb10:                              ; preds = %mdb_cursor_get_bb9, %mdb_cursor_get_wrap_around.exit
  %.0 = phi i64 [ 1, %mdb_cursor_get_wrap_around.exit ], [ %., %mdb_cursor_get_bb9 ]
  ret i64 %.0, !dbg !64
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"28" = call i64 @__VERIFIER_nondet_int() #3, !dbg !65
  call void @llvm.dbg.value(metadata !{i64 %"28"}, i64 0, metadata !67) #3, !dbg !68
  %"29" = load i64* @"'flag", align 8, !dbg !69
  %"30" = add nsw i64 %"29", 1, !dbg !69
  call void @llvm.dbg.value(metadata !{i64 %"30"}, i64 0, metadata !70) #3, !dbg !71
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !72) #3, !dbg !73
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !74) #3, !dbg !75
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !76) #3, !dbg !77
  %"31" = icmp sgt i64 %"30", 2147483647, !dbg !78
  br i1 %"31", label %main_bb12, label %main_bb13, !dbg !78

main_bb12:                                        ; preds = %main_bb11
  %"32" = sub nsw i64 %"30", 2147483647, !dbg !79
  %"33" = sub nsw i64 %"32", 1, !dbg !79
  %"34" = srem i64 %"33", 4294967296, !dbg !79
  %"35" = add nsw i64 -2147483648, %"34", !dbg !79
  br label %main_wrap_around.exit.i, !dbg !79

main_bb13:                                        ; preds = %main_bb11
  %"36" = icmp slt i64 %"30", -2147483648, !dbg !80
  br i1 %"36", label %main_bb14, label %main_wrap_around.exit.i, !dbg !80

main_bb14:                                        ; preds = %main_bb13
  %"37" = sub nsw i64 -2147483648, %"30", !dbg !81
  %"38" = sub nsw i64 %"37", 1, !dbg !81
  %"39" = srem i64 %"38", 4294967296, !dbg !81
  %"40" = sub nsw i64 2147483647, %"39", !dbg !81
  br label %main_wrap_around.exit.i, !dbg !81

main_wrap_around.exit.i:                          ; preds = %main_bb14, %main_bb13, %main_bb12
  %.0.i.i = phi i64 [ %"35", %main_bb12 ], [ %"40", %main_bb14 ], [ %"30", %main_bb13 ], !dbg !69
  store i64 %.0.i.i, i64* @"'flag", align 8, !dbg !69
  %"41" = load i64* @"'flag", align 8, !dbg !82
  %"42" = icmp sgt i64 %"41", 1000, !dbg !82
  br i1 %"42", label %main_mdb_cursor_get.exit, label %main_bb15, !dbg !82

main_bb15:                                        ; preds = %main_wrap_around.exit.i
  %"43" = icmp sge i64 %"28", 0, !dbg !83
  %..i = select i1 %"43", i64 0, i64 1, !dbg !84
  br label %main_mdb_cursor_get.exit, !dbg !84

main_mdb_cursor_get.exit:                         ; preds = %main_wrap_around.exit.i, %main_bb15
  %.0.i = phi i64 [ 1, %main_wrap_around.exit.i ], [ %..i, %main_bb15 ], !dbg !66
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !85), !dbg !86
  %"44" = call i64 @__VERIFIER_nondet_int(), !dbg !87
  call void @llvm.dbg.value(metadata !{i64 %"44"}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i64 %"47"}, i64 0, metadata !90) #3, !dbg !95
  call void @llvm.dbg.value(metadata !{i64 %"49"}, i64 0, metadata !96) #3, !dbg !98
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !99) #3, !dbg !100
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !101) #3, !dbg !102
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !103) #3, !dbg !104
  call void @llvm.dbg.value(metadata !{i64 %"47"}, i64 0, metadata !105) #3, !dbg !107
  call void @llvm.dbg.value(metadata !{i64 %"49"}, i64 0, metadata !108) #3, !dbg !110
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !111) #3, !dbg !112
  call void @llvm.dbg.value(metadata !48, i64 0, metadata !113) #3, !dbg !114
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !115) #3, !dbg !116
  br label %main_mdb_cursor_get.exit5, !dbg !117

main_mdb_cursor_get.exit5:                        ; preds = %main_bb26, %main_wrap_around.exit.i7, %main_bb21, %main_wrap_around.exit.i2, %main_mdb_cursor_get.exit
  %rc.0 = phi i64 [ %.0.i, %main_mdb_cursor_get.exit ], [ 1, %main_wrap_around.exit.i2 ], [ %..i3, %main_bb21 ], [ 1, %main_wrap_around.exit.i7 ], [ %..i8, %main_bb26 ]
  %"45" = icmp eq i64 %rc.0, 0, !dbg !118
  br i1 %"45", label %main_bb16, label %main_bb27, !dbg !118

main_bb16:                                        ; preds = %main_mdb_cursor_get.exit5
  %"46" = icmp sle i64 %"44", 0, !dbg !120
  %"47" = call i64 @__VERIFIER_nondet_int() #3, !dbg !121
  %"48" = load i64* @"'flag", align 8, !dbg !97
  %"49" = add nsw i64 %"48", 1, !dbg !97
  %"50" = icmp sgt i64 %"49", 2147483647, !dbg !122
  br i1 %"46", label %main_bb17, label %main_bb22, !dbg !120

main_bb17:                                        ; preds = %main_bb16
  br i1 %"50", label %main_bb18, label %main_bb19, !dbg !122

main_bb18:                                        ; preds = %main_bb17
  %"51" = sub nsw i64 %"49", 2147483647, !dbg !123
  %"52" = sub nsw i64 %"51", 1, !dbg !123
  %"53" = srem i64 %"52", 4294967296, !dbg !123
  %"54" = add nsw i64 -2147483648, %"53", !dbg !123
  br label %main_wrap_around.exit.i2, !dbg !123

main_bb19:                                        ; preds = %main_bb17
  %"55" = icmp slt i64 %"49", -2147483648, !dbg !124
  br i1 %"55", label %main_bb20, label %main_wrap_around.exit.i2, !dbg !124

main_bb20:                                        ; preds = %main_bb19
  %"56" = sub nsw i64 -2147483648, %"49", !dbg !125
  %"57" = sub nsw i64 %"56", 1, !dbg !125
  %"58" = srem i64 %"57", 4294967296, !dbg !125
  %"59" = sub nsw i64 2147483647, %"58", !dbg !125
  br label %main_wrap_around.exit.i2, !dbg !125

main_wrap_around.exit.i2:                         ; preds = %main_bb20, %main_bb19, %main_bb18
  %.0.i.i1 = phi i64 [ %"54", %main_bb18 ], [ %"59", %main_bb20 ], [ %"49", %main_bb19 ], !dbg !97
  store i64 %.0.i.i1, i64* @"'flag", align 8, !dbg !97
  %"60" = load i64* @"'flag", align 8, !dbg !126
  %"61" = icmp sgt i64 %"60", 1000, !dbg !126
  br i1 %"61", label %main_mdb_cursor_get.exit5, label %main_bb21, !dbg !126

main_bb21:                                        ; preds = %main_wrap_around.exit.i2
  %"62" = icmp sge i64 %"47", 0, !dbg !127
  %..i3 = select i1 %"62", i64 0, i64 1, !dbg !128
  br label %main_mdb_cursor_get.exit5, !dbg !128

main_bb22:                                        ; preds = %main_bb16
  br i1 %"50", label %main_bb23, label %main_bb24, !dbg !129

main_bb23:                                        ; preds = %main_bb22
  %"63" = sub nsw i64 %"49", 2147483647, !dbg !130
  %"64" = sub nsw i64 %"63", 1, !dbg !130
  %"65" = srem i64 %"64", 4294967296, !dbg !130
  %"66" = add nsw i64 -2147483648, %"65", !dbg !130
  br label %main_wrap_around.exit.i7, !dbg !130

main_bb24:                                        ; preds = %main_bb22
  %"67" = icmp slt i64 %"49", -2147483648, !dbg !131
  br i1 %"67", label %main_bb25, label %main_wrap_around.exit.i7, !dbg !131

main_bb25:                                        ; preds = %main_bb24
  %"68" = sub nsw i64 -2147483648, %"49", !dbg !132
  %"69" = sub nsw i64 %"68", 1, !dbg !132
  %"70" = srem i64 %"69", 4294967296, !dbg !132
  %"71" = sub nsw i64 2147483647, %"70", !dbg !132
  br label %main_wrap_around.exit.i7, !dbg !132

main_wrap_around.exit.i7:                         ; preds = %main_bb25, %main_bb24, %main_bb23
  %.0.i.i6 = phi i64 [ %"66", %main_bb23 ], [ %"71", %main_bb25 ], [ %"49", %main_bb24 ], !dbg !109
  store i64 %.0.i.i6, i64* @"'flag", align 8, !dbg !109
  %"72" = load i64* @"'flag", align 8, !dbg !133
  %"73" = icmp sgt i64 %"72", 1000, !dbg !133
  br i1 %"73", label %main_mdb_cursor_get.exit5, label %main_bb26, !dbg !133

main_bb26:                                        ; preds = %main_wrap_around.exit.i7
  %"74" = icmp sge i64 %"47", 0, !dbg !134
  %..i8 = select i1 %"74", i64 0, i64 1, !dbg !135
  br label %main_mdb_cursor_get.exit5, !dbg !135

main_bb27:                                        ; preds = %main_mdb_cursor_get.exit5
  ret i32 0, !dbg !136
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mdb_cursor_get", metadata !"mdb_cursor_get", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @mdb_cursor_get, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [mdb_cursor_get]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 38, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [main]
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
!39 = metadata !{i32 24, i32 20, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!41 = metadata !{i32 24, i32 15, metadata !9, null}
!42 = metadata !{i32 25, i32 13, metadata !9, null}
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
!54 = metadata !{i32 14, i32 9, metadata !31, metadata !42}
!55 = metadata !{i32 15, i32 9, metadata !33, metadata !42}
!56 = metadata !{i32 17, i32 14, metadata !35, metadata !42}
!57 = metadata !{i32 18, i32 9, metadata !37, metadata !42}
!58 = metadata !{i32 26, i32 9, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 30, i32 9, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !9, i32 30, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 32, i32 9, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 31, i32 1, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 36, i32 1, metadata !9, null}
!65 = metadata !{i32 24, i32 20, metadata !9, metadata !66}
!66 = metadata !{i32 41, i32 10, metadata !12, null}
!67 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, metadata !66} ; [ DW_TAG_auto_variable ] [i] [line 24]
!68 = metadata !{i32 24, i32 15, metadata !9, metadata !66}
!69 = metadata !{i32 25, i32 13, metadata !9, metadata !66}
!70 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [value] [line 12]
!71 = metadata !{i32 12, i32 33, metadata !4, metadata !69}
!72 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!73 = metadata !{i32 12, i32 50, metadata !4, metadata !69}
!74 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!75 = metadata !{i32 12, i32 73, metadata !4, metadata !69}
!76 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [range] [line 13]
!77 = metadata !{i32 13, i32 15, metadata !4, metadata !69}
!78 = metadata !{i32 14, i32 9, metadata !31, metadata !69}
!79 = metadata !{i32 15, i32 9, metadata !33, metadata !69}
!80 = metadata !{i32 17, i32 14, metadata !35, metadata !69}
!81 = metadata !{i32 18, i32 9, metadata !37, metadata !69}
!82 = metadata !{i32 26, i32 9, metadata !59, metadata !66}
!83 = metadata !{i32 30, i32 9, metadata !61, metadata !66}
!84 = metadata !{i32 32, i32 9, metadata !63, metadata !66}
!85 = metadata !{i32 786688, metadata !12, metadata !"rc", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 40]
!86 = metadata !{i32 40, i32 15, metadata !12, null}
!87 = metadata !{i32 42, i32 30, metadata !12, null}
!88 = metadata !{i32 786688, metadata !12, metadata !"dval_mv_size", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dval_mv_size] [line 42]
!89 = metadata !{i32 42, i32 15, metadata !12, null}
!90 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, metadata !91} ; [ DW_TAG_auto_variable ] [i] [line 24]
!91 = metadata !{i32 47, i32 18, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 46, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 786443, metadata !1, metadata !94, i32 45, i32 13, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 786443, metadata !1, metadata !12, i32 44, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 24, i32 15, metadata !9, metadata !91}
!96 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [value] [line 12]
!97 = metadata !{i32 25, i32 13, metadata !9, metadata !91}
!98 = metadata !{i32 12, i32 33, metadata !4, metadata !97}
!99 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!100 = metadata !{i32 12, i32 50, metadata !4, metadata !97}
!101 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!102 = metadata !{i32 12, i32 73, metadata !4, metadata !97}
!103 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !97} ; [ DW_TAG_auto_variable ] [range] [line 13]
!104 = metadata !{i32 13, i32 15, metadata !4, metadata !97}
!105 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [i] [line 24]
!106 = metadata !{i32 50, i32 14, metadata !94, null}
!107 = metadata !{i32 24, i32 15, metadata !9, metadata !106}
!108 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [value] [line 12]
!109 = metadata !{i32 25, i32 13, metadata !9, metadata !106}
!110 = metadata !{i32 12, i32 33, metadata !4, metadata !109}
!111 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!112 = metadata !{i32 12, i32 50, metadata !4, metadata !109}
!113 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!114 = metadata !{i32 12, i32 73, metadata !4, metadata !109}
!115 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [range] [line 13]
!116 = metadata !{i32 13, i32 15, metadata !4, metadata !109}
!117 = metadata !{i32 43, i32 5, metadata !12, null}
!118 = metadata !{i32 43, i32 5, metadata !119, null}
!119 = metadata !{i32 786443, metadata !1, metadata !12, i32 43, i32 5, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!120 = metadata !{i32 45, i32 13, metadata !93, null}
!121 = metadata !{i32 24, i32 20, metadata !9, metadata !91}
!122 = metadata !{i32 14, i32 9, metadata !31, metadata !97}
!123 = metadata !{i32 15, i32 9, metadata !33, metadata !97}
!124 = metadata !{i32 17, i32 14, metadata !35, metadata !97}
!125 = metadata !{i32 18, i32 9, metadata !37, metadata !97}
!126 = metadata !{i32 26, i32 9, metadata !59, metadata !91}
!127 = metadata !{i32 30, i32 9, metadata !61, metadata !91}
!128 = metadata !{i32 32, i32 9, metadata !63, metadata !91}
!129 = metadata !{i32 14, i32 9, metadata !31, metadata !109}
!130 = metadata !{i32 15, i32 9, metadata !33, metadata !109}
!131 = metadata !{i32 17, i32 14, metadata !35, metadata !109}
!132 = metadata !{i32 18, i32 9, metadata !37, metadata !109}
!133 = metadata !{i32 26, i32 9, metadata !59, metadata !106}
!134 = metadata !{i32 30, i32 9, metadata !61, metadata !106}
!135 = metadata !{i32 32, i32 9, metadata !63, metadata !106}
!136 = metadata !{i32 52, i32 5, metadata !12, null}

