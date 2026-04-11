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
define i64 @read(i64 %loc, i64 %len) #0 {
read_bb5:
  call void @llvm.dbg.value(metadata !{i64 %loc}, i64 0, metadata !39), !dbg !40
  call void @llvm.dbg.value(metadata !{i64 %len}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !44), !dbg !45
  %"12" = load i64* @"'flag", align 8, !dbg !46
  %"13" = icmp eq i64 %"12", 1, !dbg !46
  br i1 %"13", label %read_bb20, label %read_wrap_around.exit2, !dbg !46

read_wrap_around.exit2:                           ; preds = %read_bb18, %read_bb17, %read_bb16, %read_bb5
  %count.0 = phi i64 [ 0, %read_bb5 ], [ %.0.i3, %read_bb16 ], [ %.0.i3, %read_bb17 ], [ %.0.i3, %read_bb18 ]
  %.06 = phi i64 [ %loc, %read_bb5 ], [ %"47", %read_bb16 ], [ %"52", %read_bb18 ], [ %"42", %read_bb17 ]
  %"14" = icmp slt i64 %.06, %len, !dbg !48
  br i1 %"14", label %read_bb6, label %read_bb20, !dbg !48

read_bb6:                                         ; preds = %read_wrap_around.exit2
  %"15" = call i64 @__VERIFIER_nondet_int(), !dbg !50
  %"16" = icmp eq i64 %"15", 0, !dbg !52
  br i1 %"16", label %read_bb20, label %read_bb7, !dbg !52

read_bb7:                                         ; preds = %read_bb6
  %"17" = icmp slt i64 %"15", 0, !dbg !54
  br i1 %"17", label %read_bb8, label %read_wrap_around.exit, !dbg !54

read_bb8:                                         ; preds = %read_bb7
  %"18" = sub nsw i64 0, %"15", !dbg !57
  %"19" = icmp sgt i64 %"18", 2147483647, !dbg !59
  br i1 %"19", label %read_bb9, label %read_bb10, !dbg !59

read_bb9:                                         ; preds = %read_bb8
  %"20" = sub nsw i64 %"18", 2147483647, !dbg !60
  %"21" = sub nsw i64 %"20", 1, !dbg !60
  %"22" = srem i64 %"21", 4294967296, !dbg !60
  %"23" = add nsw i64 -2147483648, %"22", !dbg !60
  br label %read_wrap_around.exit, !dbg !60

read_bb10:                                        ; preds = %read_bb8
  %"24" = icmp slt i64 %"18", -2147483648, !dbg !61
  br i1 %"24", label %read_bb11, label %read_wrap_around.exit, !dbg !61

read_bb11:                                        ; preds = %read_bb10
  %"25" = sub nsw i64 -2147483648, %"18", !dbg !62
  %"26" = sub nsw i64 %"25", 1, !dbg !62
  %"27" = srem i64 %"26", 4294967296, !dbg !62
  %"28" = sub nsw i64 2147483647, %"27", !dbg !62
  br label %read_wrap_around.exit, !dbg !62

read_wrap_around.exit:                            ; preds = %read_bb11, %read_bb10, %read_bb9, %read_bb7
  %num.0 = phi i64 [ %"15", %read_bb7 ], [ %"23", %read_bb9 ], [ %"28", %read_bb11 ], [ %"18", %read_bb10 ]
  %"29" = srem i64 %num.0, 1000, !dbg !63
  %"30" = add nsw i64 %count.0, 1, !dbg !64
  %"31" = icmp sgt i64 %"30", 2147483647, !dbg !65
  br i1 %"31", label %read_bb12, label %read_bb13, !dbg !65

read_bb12:                                        ; preds = %read_wrap_around.exit
  %"32" = sub nsw i64 %"30", 2147483647, !dbg !66
  %"33" = sub nsw i64 %"32", 1, !dbg !66
  %"34" = srem i64 %"33", 4294967296, !dbg !66
  %"35" = add nsw i64 -2147483648, %"34", !dbg !66
  br label %read_wrap_around.exit4, !dbg !66

read_bb13:                                        ; preds = %read_wrap_around.exit
  %"36" = icmp slt i64 %"30", -2147483648, !dbg !67
  br i1 %"36", label %read_bb14, label %read_wrap_around.exit4, !dbg !67

read_bb14:                                        ; preds = %read_bb13
  %"37" = sub nsw i64 -2147483648, %"30", !dbg !68
  %"38" = sub nsw i64 %"37", 1, !dbg !68
  %"39" = srem i64 %"38", 4294967296, !dbg !68
  %"40" = sub nsw i64 2147483647, %"39", !dbg !68
  br label %read_wrap_around.exit4, !dbg !68

read_wrap_around.exit4:                           ; preds = %read_bb12, %read_bb13, %read_bb14
  %.0.i3 = phi i64 [ %"35", %read_bb12 ], [ %"40", %read_bb14 ], [ %"30", %read_bb13 ], !dbg !64
  %"41" = icmp slt i64 %"29", 995, !dbg !69
  br i1 %"41", label %read_bb15, label %read_bb19, !dbg !69

read_bb15:                                        ; preds = %read_wrap_around.exit4
  %"42" = add nsw i64 %.06, 1, !dbg !71
  %"43" = icmp sgt i64 %"42", 2147483647, !dbg !73
  br i1 %"43", label %read_bb16, label %read_bb17, !dbg !73

read_bb16:                                        ; preds = %read_bb15
  %"44" = sub nsw i64 %"42", 2147483647, !dbg !74
  %"45" = sub nsw i64 %"44", 1, !dbg !74
  %"46" = srem i64 %"45", 4294967296, !dbg !74
  %"47" = add nsw i64 -2147483648, %"46", !dbg !74
  br label %read_wrap_around.exit2, !dbg !74

read_bb17:                                        ; preds = %read_bb15
  %"48" = icmp slt i64 %"42", -2147483648, !dbg !75
  br i1 %"48", label %read_bb18, label %read_wrap_around.exit2, !dbg !75

read_bb18:                                        ; preds = %read_bb17
  %"49" = sub nsw i64 -2147483648, %"42", !dbg !76
  %"50" = sub nsw i64 %"49", 1, !dbg !76
  %"51" = srem i64 %"50", 4294967296, !dbg !76
  %"52" = sub nsw i64 2147483647, %"51", !dbg !76
  br label %read_wrap_around.exit2, !dbg !76

read_bb19:                                        ; preds = %read_wrap_around.exit4
  store i64 1, i64* @"'flag", align 8, !dbg !77
  br label %read_bb20, !dbg !79

read_bb20:                                        ; preds = %read_wrap_around.exit2, %read_bb6, %read_bb5, %read_bb19
  %.0 = phi i64 [ %.0.i3, %read_bb19 ], [ 0, %read_bb5 ], [ -1, %read_bb6 ], [ %count.0, %read_wrap_around.exit2 ]
  ret i64 %.0, !dbg !80
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb21:
  %"53" = call i64 @__VERIFIER_nondet_int(), !dbg !81
  call void @llvm.dbg.value(metadata !{i64 %"53"}, i64 0, metadata !82), !dbg !83
  %"54" = icmp sle i64 %"53", 0, !dbg !84
  br i1 %"54", label %main_bb44, label %main_wrap_around.exit3, !dbg !84

main_wrap_around.exit3:                           ; preds = %main_bb43, %main_bb42, %main_bb41, %main_bb21
  %buf.0 = phi i64 [ 0, %main_bb21 ], [ %"114", %main_bb41 ], [ %"119", %main_bb43 ], [ %"109", %main_bb42 ]
  %count.0 = phi i64 [ %"53", %main_bb21 ], [ %.0.i1, %main_bb41 ], [ %.0.i1, %main_bb42 ], [ %.0.i1, %main_bb43 ]
  %"55" = icmp sgt i64 %count.0, 0, !dbg !86
  br i1 %"55", label %main_bb22, label %main_bb44, !dbg !86

main_bb22:                                        ; preds = %main_wrap_around.exit3
  %"56" = load i64* @"'flag", align 8, !dbg !88
  %"57" = icmp eq i64 %"56", 1, !dbg !88
  br i1 %"57", label %main_read.exit, label %main_wrap_around.exit2.i, !dbg !88

main_wrap_around.exit2.i:                         ; preds = %main_bb35, %main_bb34, %main_bb33, %main_bb22
  %count.0.i = phi i64 [ 0, %main_bb22 ], [ %.0.i3.i, %main_bb33 ], [ %.0.i3.i, %main_bb34 ], [ %.0.i3.i, %main_bb35 ], !dbg !89
  %.06.i = phi i64 [ %buf.0, %main_bb22 ], [ %"91", %main_bb33 ], [ %"96", %main_bb35 ], [ %"86", %main_bb34 ], !dbg !89
  %"58" = icmp slt i64 %.06.i, %count.0, !dbg !91
  br i1 %"58", label %main_bb23, label %main_read.exit, !dbg !91

main_bb23:                                        ; preds = %main_wrap_around.exit2.i
  %"59" = call i64 @__VERIFIER_nondet_int() #3, !dbg !92
  %"60" = icmp eq i64 %"59", 0, !dbg !93
  br i1 %"60", label %main_read.exit, label %main_bb24, !dbg !93

main_bb24:                                        ; preds = %main_bb23
  %"61" = icmp slt i64 %"59", 0, !dbg !94
  br i1 %"61", label %main_bb25, label %main_wrap_around.exit.i, !dbg !94

main_bb25:                                        ; preds = %main_bb24
  %"62" = sub nsw i64 0, %"59", !dbg !95
  %"63" = icmp sgt i64 %"62", 2147483647, !dbg !96
  br i1 %"63", label %main_bb26, label %main_bb27, !dbg !96

main_bb26:                                        ; preds = %main_bb25
  %"64" = sub nsw i64 %"62", 2147483647, !dbg !97
  %"65" = sub nsw i64 %"64", 1, !dbg !97
  %"66" = srem i64 %"65", 4294967296, !dbg !97
  %"67" = add nsw i64 -2147483648, %"66", !dbg !97
  br label %main_wrap_around.exit.i, !dbg !97

main_bb27:                                        ; preds = %main_bb25
  %"68" = icmp slt i64 %"62", -2147483648, !dbg !98
  br i1 %"68", label %main_bb28, label %main_wrap_around.exit.i, !dbg !98

main_bb28:                                        ; preds = %main_bb27
  %"69" = sub nsw i64 -2147483648, %"62", !dbg !99
  %"70" = sub nsw i64 %"69", 1, !dbg !99
  %"71" = srem i64 %"70", 4294967296, !dbg !99
  %"72" = sub nsw i64 2147483647, %"71", !dbg !99
  br label %main_wrap_around.exit.i, !dbg !99

main_wrap_around.exit.i:                          ; preds = %main_bb28, %main_bb27, %main_bb26, %main_bb24
  %num.0.i = phi i64 [ %"59", %main_bb24 ], [ %"67", %main_bb26 ], [ %"72", %main_bb28 ], [ %"62", %main_bb27 ], !dbg !89
  %"73" = srem i64 %num.0.i, 1000, !dbg !100
  %"74" = add nsw i64 %count.0.i, 1, !dbg !101
  %"75" = icmp sgt i64 %"74", 2147483647, !dbg !102
  br i1 %"75", label %main_bb29, label %main_bb30, !dbg !102

main_bb29:                                        ; preds = %main_wrap_around.exit.i
  %"76" = sub nsw i64 %"74", 2147483647, !dbg !103
  %"77" = sub nsw i64 %"76", 1, !dbg !103
  %"78" = srem i64 %"77", 4294967296, !dbg !103
  %"79" = add nsw i64 -2147483648, %"78", !dbg !103
  br label %main_wrap_around.exit4.i, !dbg !103

main_bb30:                                        ; preds = %main_wrap_around.exit.i
  %"80" = icmp slt i64 %"74", -2147483648, !dbg !104
  br i1 %"80", label %main_bb31, label %main_wrap_around.exit4.i, !dbg !104

main_bb31:                                        ; preds = %main_bb30
  %"81" = sub nsw i64 -2147483648, %"74", !dbg !105
  %"82" = sub nsw i64 %"81", 1, !dbg !105
  %"83" = srem i64 %"82", 4294967296, !dbg !105
  %"84" = sub nsw i64 2147483647, %"83", !dbg !105
  br label %main_wrap_around.exit4.i, !dbg !105

main_wrap_around.exit4.i:                         ; preds = %main_bb31, %main_bb30, %main_bb29
  %.0.i3.i = phi i64 [ %"79", %main_bb29 ], [ %"84", %main_bb31 ], [ %"74", %main_bb30 ], !dbg !101
  %"85" = icmp slt i64 %"73", 995, !dbg !106
  br i1 %"85", label %main_bb32, label %main_bb36, !dbg !106

main_bb32:                                        ; preds = %main_wrap_around.exit4.i
  %"86" = add nsw i64 %.06.i, 1, !dbg !107
  %"87" = icmp sgt i64 %"86", 2147483647, !dbg !108
  br i1 %"87", label %main_bb33, label %main_bb34, !dbg !108

main_bb33:                                        ; preds = %main_bb32
  %"88" = sub nsw i64 %"86", 2147483647, !dbg !109
  %"89" = sub nsw i64 %"88", 1, !dbg !109
  %"90" = srem i64 %"89", 4294967296, !dbg !109
  %"91" = add nsw i64 -2147483648, %"90", !dbg !109
  br label %main_wrap_around.exit2.i, !dbg !109

main_bb34:                                        ; preds = %main_bb32
  %"92" = icmp slt i64 %"86", -2147483648, !dbg !110
  br i1 %"92", label %main_bb35, label %main_wrap_around.exit2.i, !dbg !110

main_bb35:                                        ; preds = %main_bb34
  %"93" = sub nsw i64 -2147483648, %"86", !dbg !111
  %"94" = sub nsw i64 %"93", 1, !dbg !111
  %"95" = srem i64 %"94", 4294967296, !dbg !111
  %"96" = sub nsw i64 2147483647, %"95", !dbg !111
  br label %main_wrap_around.exit2.i, !dbg !111

main_bb36:                                        ; preds = %main_wrap_around.exit4.i
  store i64 1, i64* @"'flag", align 8, !dbg !112
  br label %main_read.exit, !dbg !113

main_read.exit:                                   ; preds = %main_bb22, %main_wrap_around.exit2.i, %main_bb23, %main_bb36
  %.0.i = phi i64 [ %.0.i3.i, %main_bb36 ], [ 0, %main_bb22 ], [ -1, %main_bb23 ], [ %count.0.i, %main_wrap_around.exit2.i ], !dbg !89
  %"97" = icmp slt i64 %.0.i, 0, !dbg !114
  br i1 %"97", label %main_bb44, label %main_bb37, !dbg !114

main_bb37:                                        ; preds = %main_read.exit
  %"98" = sub nsw i64 %count.0, %.0.i, !dbg !116
  %"99" = icmp sgt i64 %"98", 2147483647, !dbg !117
  br i1 %"99", label %main_bb38, label %main_bb39, !dbg !117

main_bb38:                                        ; preds = %main_bb37
  %"100" = sub nsw i64 %"98", 2147483647, !dbg !118
  %"101" = sub nsw i64 %"100", 1, !dbg !118
  %"102" = srem i64 %"101", 4294967296, !dbg !118
  %"103" = add nsw i64 -2147483648, %"102", !dbg !118
  br label %main_wrap_around.exit, !dbg !118

main_bb39:                                        ; preds = %main_bb37
  %"104" = icmp slt i64 %"98", -2147483648, !dbg !119
  br i1 %"104", label %main_bb40, label %main_wrap_around.exit, !dbg !119

main_bb40:                                        ; preds = %main_bb39
  %"105" = sub nsw i64 -2147483648, %"98", !dbg !120
  %"106" = sub nsw i64 %"105", 1, !dbg !120
  %"107" = srem i64 %"106", 4294967296, !dbg !120
  %"108" = sub nsw i64 2147483647, %"107", !dbg !120
  br label %main_wrap_around.exit, !dbg !120

main_wrap_around.exit:                            ; preds = %main_bb38, %main_bb39, %main_bb40
  %.0.i1 = phi i64 [ %"103", %main_bb38 ], [ %"108", %main_bb40 ], [ %"98", %main_bb39 ], !dbg !116
  %"109" = add nsw i64 %buf.0, %.0.i, !dbg !121
  %"110" = icmp sgt i64 %"109", 2147483647, !dbg !122
  br i1 %"110", label %main_bb41, label %main_bb42, !dbg !122

main_bb41:                                        ; preds = %main_wrap_around.exit
  %"111" = sub nsw i64 %"109", 2147483647, !dbg !123
  %"112" = sub nsw i64 %"111", 1, !dbg !123
  %"113" = srem i64 %"112", 4294967296, !dbg !123
  %"114" = add nsw i64 -2147483648, %"113", !dbg !123
  br label %main_wrap_around.exit3, !dbg !123

main_bb42:                                        ; preds = %main_wrap_around.exit
  %"115" = icmp slt i64 %"109", -2147483648, !dbg !124
  br i1 %"115", label %main_bb43, label %main_wrap_around.exit3, !dbg !124

main_bb43:                                        ; preds = %main_bb42
  %"116" = sub nsw i64 -2147483648, %"109", !dbg !125
  %"117" = sub nsw i64 %"116", 1, !dbg !125
  %"118" = srem i64 %"117", 4294967296, !dbg !125
  %"119" = sub nsw i64 2147483647, %"118", !dbg !125
  br label %main_wrap_around.exit3, !dbg !125

main_bb44:                                        ; preds = %main_wrap_around.exit3, %main_read.exit, %main_bb21
  ret i32 0, !dbg !126
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read", metadata !"read", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64)* @read, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [read]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 58, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 59} ; [ DW_TAG_subprogram ] [line 58] [def] [scope 59] [main]
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
!39 = metadata !{i32 786689, metadata !9, metadata !"loc", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 22]
!40 = metadata !{i32 22, i32 27, metadata !9, null}
!41 = metadata !{i32 786689, metadata !9, metadata !"len", metadata !5, i32 33554454, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 22]
!42 = metadata !{i32 22, i32 43, metadata !9, null}
!43 = metadata !{i64 0}
!44 = metadata !{i32 786688, metadata !9, metadata !"count", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 24]
!45 = metadata !{i32 24, i32 15, metadata !9, null}
!46 = metadata !{i32 25, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 29, i32 5, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !9, i32 29, i32 5, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 31, i32 26, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !9, i32 30, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 32, i32 13, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 32, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 38, i32 17, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 38, i32 17, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !53, i32 37, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 40, i32 24, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !55, i32 39, i32 1, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 14, i32 9, metadata !31, metadata !57}
!60 = metadata !{i32 15, i32 9, metadata !33, metadata !57}
!61 = metadata !{i32 17, i32 14, metadata !35, metadata !57}
!62 = metadata !{i32 18, i32 9, metadata !37, metadata !57}
!63 = metadata !{i32 42, i32 19, metadata !56, null}
!64 = metadata !{i32 43, i32 22, metadata !56, null}
!65 = metadata !{i32 14, i32 9, metadata !31, metadata !64}
!66 = metadata !{i32 15, i32 9, metadata !33, metadata !64}
!67 = metadata !{i32 17, i32 14, metadata !35, metadata !64}
!68 = metadata !{i32 18, i32 9, metadata !37, metadata !64}
!69 = metadata !{i32 44, i32 17, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !56, i32 44, i32 17, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 46, i32 24, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !70, i32 45, i32 13, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 14, i32 9, metadata !31, metadata !71}
!74 = metadata !{i32 15, i32 9, metadata !33, metadata !71}
!75 = metadata !{i32 17, i32 14, metadata !35, metadata !71}
!76 = metadata !{i32 18, i32 9, metadata !37, metadata !71}
!77 = metadata !{i32 51, i32 17, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !70, i32 50, i32 13, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 52, i32 17, metadata !78, null}
!80 = metadata !{i32 57, i32 1, metadata !9, null}
!81 = metadata !{i32 60, i32 22, metadata !12, null}
!82 = metadata !{i32 786688, metadata !12, metadata !"count", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 60]
!83 = metadata !{i32 60, i32 15, metadata !12, null}
!84 = metadata !{i32 61, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !12, i32 61, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 67, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !12, i32 67, i32 5, i32 1, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 25, i32 9, metadata !47, metadata !89}
!89 = metadata !{i32 69, i32 15, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !12, i32 68, i32 5, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 29, i32 5, metadata !49, metadata !89}
!92 = metadata !{i32 31, i32 26, metadata !51, metadata !89}
!93 = metadata !{i32 32, i32 13, metadata !53, metadata !89}
!94 = metadata !{i32 38, i32 17, metadata !55, metadata !89}
!95 = metadata !{i32 40, i32 24, metadata !58, metadata !89}
!96 = metadata !{i32 14, i32 9, metadata !31, metadata !95}
!97 = metadata !{i32 15, i32 9, metadata !33, metadata !95}
!98 = metadata !{i32 17, i32 14, metadata !35, metadata !95}
!99 = metadata !{i32 18, i32 9, metadata !37, metadata !95}
!100 = metadata !{i32 42, i32 19, metadata !56, metadata !89}
!101 = metadata !{i32 43, i32 22, metadata !56, metadata !89}
!102 = metadata !{i32 14, i32 9, metadata !31, metadata !101}
!103 = metadata !{i32 15, i32 9, metadata !33, metadata !101}
!104 = metadata !{i32 17, i32 14, metadata !35, metadata !101}
!105 = metadata !{i32 18, i32 9, metadata !37, metadata !101}
!106 = metadata !{i32 44, i32 17, metadata !70, metadata !89}
!107 = metadata !{i32 46, i32 24, metadata !72, metadata !89}
!108 = metadata !{i32 14, i32 9, metadata !31, metadata !107}
!109 = metadata !{i32 15, i32 9, metadata !33, metadata !107}
!110 = metadata !{i32 17, i32 14, metadata !35, metadata !107}
!111 = metadata !{i32 18, i32 9, metadata !37, metadata !107}
!112 = metadata !{i32 51, i32 17, metadata !78, metadata !89}
!113 = metadata !{i32 52, i32 17, metadata !78, metadata !89}
!114 = metadata !{i32 70, i32 13, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !90, i32 70, i32 13, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 74, i32 17, metadata !90, null}
!117 = metadata !{i32 14, i32 9, metadata !31, metadata !116}
!118 = metadata !{i32 15, i32 9, metadata !33, metadata !116}
!119 = metadata !{i32 17, i32 14, metadata !35, metadata !116}
!120 = metadata !{i32 18, i32 9, metadata !37, metadata !116}
!121 = metadata !{i32 75, i32 15, metadata !90, null}
!122 = metadata !{i32 14, i32 9, metadata !31, metadata !121}
!123 = metadata !{i32 15, i32 9, metadata !33, metadata !121}
!124 = metadata !{i32 17, i32 14, metadata !35, metadata !121}
!125 = metadata !{i32 18, i32 9, metadata !37, metadata !121}
!126 = metadata !{i32 78, i32 1, metadata !12, null}

