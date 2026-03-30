; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i64 0, align 8
@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !29), !dbg !30
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !33), !dbg !34
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !35
  %"1" = add nsw i64 %"0", 1, !dbg !35
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !36), !dbg !37
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !38
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !38

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !40
  %"4" = sub nsw i64 %"3", 1, !dbg !40
  %"5" = srem i64 %"4", %"1", !dbg !40
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !40
  br label %wrap_around_bb4, !dbg !40

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !42
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !42

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !44
  %"9" = sub nsw i64 %"8", 1, !dbg !44
  %"10" = srem i64 %"9", %"1", !dbg !44
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !44
  br label %wrap_around_bb4, !dbg !44

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !46
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !47), !dbg !48
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !50), !dbg !51
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !52
  %"14" = add nsw i32 %"13", %size, !dbg !52
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !52
  ret i32 %"12", !dbg !53
}

; Function Attrs: nounwind uwtable
define i64 @fopen_or_warn() #0 {
fopen_or_warn_bb6:
  %"15" = load i64* @"'flag", align 8, !dbg !54
  %"16" = add nsw i64 %"15", 1, !dbg !54
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !64), !dbg !65
  %"17" = icmp sgt i64 %"16", 2147483647, !dbg !66
  br i1 %"17", label %fopen_or_warn_bb7, label %fopen_or_warn_bb8, !dbg !66

fopen_or_warn_bb7:                                ; preds = %fopen_or_warn_bb6
  %"18" = sub nsw i64 %"16", 2147483647, !dbg !67
  %"19" = sub nsw i64 %"18", 1, !dbg !67
  %"20" = srem i64 %"19", 4294967296, !dbg !67
  %"21" = add nsw i64 -2147483648, %"20", !dbg !67
  br label %fopen_or_warn_wrap_around.exit, !dbg !67

fopen_or_warn_bb8:                                ; preds = %fopen_or_warn_bb6
  %"22" = icmp slt i64 %"16", -2147483648, !dbg !68
  br i1 %"22", label %fopen_or_warn_bb9, label %fopen_or_warn_wrap_around.exit, !dbg !68

fopen_or_warn_bb9:                                ; preds = %fopen_or_warn_bb8
  %"23" = sub nsw i64 -2147483648, %"16", !dbg !69
  %"24" = sub nsw i64 %"23", 1, !dbg !69
  %"25" = srem i64 %"24", 4294967296, !dbg !69
  %"26" = sub nsw i64 2147483647, %"25", !dbg !69
  br label %fopen_or_warn_wrap_around.exit, !dbg !69

fopen_or_warn_wrap_around.exit:                   ; preds = %fopen_or_warn_bb7, %fopen_or_warn_bb8, %fopen_or_warn_bb9
  %.0.i = phi i64 [ %"21", %fopen_or_warn_bb7 ], [ %"26", %fopen_or_warn_bb9 ], [ %"16", %fopen_or_warn_bb8 ], !dbg !54
  store i64 %.0.i, i64* @"'flag", align 8, !dbg !54
  %"27" = load i64* @"'flag", align 8, !dbg !70
  %"28" = icmp sgt i64 %"27", 10, !dbg !70
  br i1 %"28", label %fopen_or_warn_bb11, label %fopen_or_warn_bb10, !dbg !70

fopen_or_warn_bb10:                               ; preds = %fopen_or_warn_wrap_around.exit
  %"29" = call i64 @__VERIFIER_nondet_int(), !dbg !72
  call void @llvm.dbg.value(metadata !{i64 %"29"}, i64 0, metadata !73), !dbg !74
  %"30" = icmp sge i64 %"29", 0, !dbg !75
  %. = select i1 %"30", i64 0, i64 %"29", !dbg !77
  br label %fopen_or_warn_bb11, !dbg !77

fopen_or_warn_bb11:                               ; preds = %fopen_or_warn_bb10, %fopen_or_warn_wrap_around.exit
  %.0 = phi i64 [ 0, %fopen_or_warn_wrap_around.exit ], [ %., %fopen_or_warn_bb10 ]
  ret i64 %.0, !dbg !79
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"31" = call i64 @__VERIFIER_nondet_int(), !dbg !80
  call void @llvm.dbg.value(metadata !{i64 %"31"}, i64 0, metadata !81), !dbg !82
  %"32" = icmp sle i64 %"31", 0, !dbg !83
  br i1 %"32", label %main_bb34, label %main_bb13, !dbg !83

main_bb13:                                        ; preds = %main_bb12
  %"33" = trunc i64 %"31" to i32, !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !86), !dbg !87
  %"34" = load i32* @"'memory0_freeIndex", align 4, !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !89), !dbg !90
  %"35" = load i32* @"'memory0_freeIndex", align 4, !dbg !91
  %"36" = add nsw i32 %"35", %"33", !dbg !91
  store i32 %"36", i32* @"'memory0_freeIndex", align 4, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !92), !dbg !93
  call void @llvm.dbg.value(metadata !94, i64 0, metadata !95), !dbg !97
  call void @llvm.dbg.value(metadata !{i64 %"38"}, i64 0, metadata !98), !dbg !100
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !101), !dbg !102
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !105), !dbg !106
  %"37" = sext i32 %"34" to i64, !dbg !107
  call void @llvm.dbg.value(metadata !{i64 %"53"}, i64 0, metadata !109), !dbg !111
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !112), !dbg !113
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !114), !dbg !115
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !116), !dbg !117
  br label %main_wrap_around.exit5, !dbg !118

main_wrap_around.exit5:                           ; preds = %main_bb20, %main_bb19, %main_bb18, %main_bb13
  %i.0 = phi i64 [ 0, %main_bb13 ], [ %"58", %main_bb18 ], [ %"63", %main_bb20 ], [ %"53", %main_bb19 ]
  %"38" = sub nsw i64 %"31", 1, !dbg !99
  %"39" = icmp sgt i64 %"38", 2147483647, !dbg !119
  br i1 %"39", label %main_bb14, label %main_bb15, !dbg !119

main_bb14:                                        ; preds = %main_wrap_around.exit5
  %"40" = sub nsw i64 %"38", 2147483647, !dbg !120
  %"41" = sub nsw i64 %"40", 1, !dbg !120
  %"42" = srem i64 %"41", 4294967296, !dbg !120
  %"43" = add nsw i64 -2147483648, %"42", !dbg !120
  br label %main_wrap_around.exit3, !dbg !120

main_bb15:                                        ; preds = %main_wrap_around.exit5
  %"44" = icmp slt i64 %"38", -2147483648, !dbg !121
  br i1 %"44", label %main_bb16, label %main_wrap_around.exit3, !dbg !121

main_bb16:                                        ; preds = %main_bb15
  %"45" = sub nsw i64 -2147483648, %"38", !dbg !122
  %"46" = sub nsw i64 %"45", 1, !dbg !122
  %"47" = srem i64 %"46", 4294967296, !dbg !122
  %"48" = sub nsw i64 2147483647, %"47", !dbg !122
  br label %main_wrap_around.exit3, !dbg !122

main_wrap_around.exit3:                           ; preds = %main_bb14, %main_bb15, %main_bb16
  %.0.i2 = phi i64 [ %"43", %main_bb14 ], [ %"48", %main_bb16 ], [ %"38", %main_bb15 ], !dbg !99
  %"49" = icmp slt i64 %i.0, %.0.i2, !dbg !99
  br i1 %"49", label %main_bb17, label %main_bb21, !dbg !99

main_bb17:                                        ; preds = %main_wrap_around.exit3
  %"50" = call i64 @__VERIFIER_nondet_int(), !dbg !107
  %"51" = add nsw i64 %"37", %i.0, !dbg !107
  %"52" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"51", !dbg !107
  store i64 %"50", i64* %"52", align 8, !dbg !107
  %"53" = add nsw i64 %i.0, 1, !dbg !110
  %"54" = icmp sgt i64 %"53", 2147483647, !dbg !123
  br i1 %"54", label %main_bb18, label %main_bb19, !dbg !123

main_bb18:                                        ; preds = %main_bb17
  %"55" = sub nsw i64 %"53", 2147483647, !dbg !124
  %"56" = sub nsw i64 %"55", 1, !dbg !124
  %"57" = srem i64 %"56", 4294967296, !dbg !124
  %"58" = add nsw i64 -2147483648, %"57", !dbg !124
  br label %main_wrap_around.exit5, !dbg !124

main_bb19:                                        ; preds = %main_bb17
  %"59" = icmp slt i64 %"53", -2147483648, !dbg !125
  br i1 %"59", label %main_bb20, label %main_wrap_around.exit5, !dbg !125

main_bb20:                                        ; preds = %main_bb19
  %"60" = sub nsw i64 -2147483648, %"53", !dbg !126
  %"61" = sub nsw i64 %"60", 1, !dbg !126
  %"62" = srem i64 %"61", 4294967296, !dbg !126
  %"63" = sub nsw i64 2147483647, %"62", !dbg !126
  br label %main_wrap_around.exit5, !dbg !126

main_bb21:                                        ; preds = %main_wrap_around.exit3
  %"64" = sext i32 %"34" to i64, !dbg !127
  %"65" = sub nsw i64 %"31", 1, !dbg !127
  %"66" = add nsw i64 %"64", %"65", !dbg !127
  %"67" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"66", !dbg !127
  store i64 0, i64* %"67", align 8, !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !128), !dbg !129
  call void @llvm.dbg.value(metadata !94, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !{i64 %"68"}, i64 0, metadata !132), !dbg !135
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !136), !dbg !137
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !138), !dbg !139
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !140), !dbg !141
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !{i64 %"88"}, i64 0, metadata !142) #3, !dbg !147
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !148) #3, !dbg !149
  call void @llvm.dbg.value(metadata !60, i64 0, metadata !150) #3, !dbg !151
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !152) #3, !dbg !153
  call void @llvm.dbg.value(metadata !{i64 %.0.i1}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !{i64 %"101"}, i64 0, metadata !154) #3, !dbg !155
  br label %main_bb22, !dbg !156

main_bb22:                                        ; preds = %main_bb33, %main_bb21
  %fp.1 = phi i64 [ 0, %main_bb21 ], [ %fp.0, %main_bb33 ]
  %argv.0 = phi i32 [ %"34", %main_bb21 ], [ %"104", %main_bb33 ]
  %"68" = add nsw i64 %fp.1, 1, !dbg !133
  %"69" = icmp sgt i64 %"68", 2147483647, !dbg !157
  br i1 %"69", label %main_bb23, label %main_bb24, !dbg !157

main_bb23:                                        ; preds = %main_bb22
  %"70" = sub nsw i64 %"68", 2147483647, !dbg !158
  %"71" = sub nsw i64 %"70", 1, !dbg !158
  %"72" = srem i64 %"71", 4294967296, !dbg !158
  %"73" = add nsw i64 -2147483648, %"72", !dbg !158
  br label %main_wrap_around.exit, !dbg !158

main_bb24:                                        ; preds = %main_bb22
  %"74" = icmp slt i64 %"68", -2147483648, !dbg !159
  br i1 %"74", label %main_bb25, label %main_wrap_around.exit, !dbg !159

main_bb25:                                        ; preds = %main_bb24
  %"75" = sub nsw i64 -2147483648, %"68", !dbg !160
  %"76" = sub nsw i64 %"75", 1, !dbg !160
  %"77" = srem i64 %"76", 4294967296, !dbg !160
  %"78" = sub nsw i64 2147483647, %"77", !dbg !160
  br label %main_wrap_around.exit, !dbg !160

main_wrap_around.exit:                            ; preds = %main_bb23, %main_bb24, %main_bb25
  %.0.i = phi i64 [ %"73", %main_bb23 ], [ %"78", %main_bb25 ], [ %"68", %main_bb24 ], !dbg !133
  %"79" = sext i32 %argv.0 to i64, !dbg !161
  %"80" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"79", !dbg !161
  %"81" = sext i32 %argv.0 to i64, !dbg !163
  %"82" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"81", !dbg !163
  br label %main_bb26, !dbg !164

main_bb26:                                        ; preds = %main_fopen_or_warn.exit, %main_wrap_around.exit
  %fp.2 = phi i64 [ %.0.i, %main_wrap_around.exit ], [ %.0.i1, %main_fopen_or_warn.exit ]
  %"83" = load i64* %"80", align 8, !dbg !161
  %"84" = icmp ne i64 %"83", 0, !dbg !161
  br i1 %"84", label %main_bb27, label %main_bb34, !dbg !161

main_bb27:                                        ; preds = %main_bb26
  %"85" = load i64* %"82", align 8, !dbg !163
  %"86" = icmp sgt i64 %"85", 0, !dbg !163
  br i1 %"86", label %main_bb28, label %main_bb33, !dbg !163

main_bb28:                                        ; preds = %main_bb27
  %"87" = load i64* @"'flag", align 8, !dbg !143
  %"88" = add nsw i64 %"87", 1, !dbg !143
  %"89" = icmp sgt i64 %"88", 2147483647, !dbg !165
  br i1 %"89", label %main_bb29, label %main_bb30, !dbg !165

main_bb29:                                        ; preds = %main_bb28
  %"90" = sub nsw i64 %"88", 2147483647, !dbg !166
  %"91" = sub nsw i64 %"90", 1, !dbg !166
  %"92" = srem i64 %"91", 4294967296, !dbg !166
  %"93" = add nsw i64 -2147483648, %"92", !dbg !166
  br label %main_wrap_around.exit.i, !dbg !166

main_bb30:                                        ; preds = %main_bb28
  %"94" = icmp slt i64 %"88", -2147483648, !dbg !167
  br i1 %"94", label %main_bb31, label %main_wrap_around.exit.i, !dbg !167

main_bb31:                                        ; preds = %main_bb30
  %"95" = sub nsw i64 -2147483648, %"88", !dbg !168
  %"96" = sub nsw i64 %"95", 1, !dbg !168
  %"97" = srem i64 %"96", 4294967296, !dbg !168
  %"98" = sub nsw i64 2147483647, %"97", !dbg !168
  br label %main_wrap_around.exit.i, !dbg !168

main_wrap_around.exit.i:                          ; preds = %main_bb31, %main_bb30, %main_bb29
  %.0.i.i = phi i64 [ %"93", %main_bb29 ], [ %"98", %main_bb31 ], [ %"88", %main_bb30 ], !dbg !143
  store i64 %.0.i.i, i64* @"'flag", align 8, !dbg !143
  %"99" = load i64* @"'flag", align 8, !dbg !169
  %"100" = icmp sgt i64 %"99", 10, !dbg !169
  br i1 %"100", label %main_fopen_or_warn.exit, label %main_bb32, !dbg !169

main_bb32:                                        ; preds = %main_wrap_around.exit.i
  %"101" = call i64 @__VERIFIER_nondet_int() #3, !dbg !170
  %"102" = icmp sge i64 %"101", 0, !dbg !171
  %..i = select i1 %"102", i64 0, i64 %"101", !dbg !172
  br label %main_fopen_or_warn.exit, !dbg !172

main_fopen_or_warn.exit:                          ; preds = %main_wrap_around.exit.i, %main_bb32
  %.0.i1 = phi i64 [ 0, %main_wrap_around.exit.i ], [ %..i, %main_bb32 ], !dbg !144
  %"103" = icmp eq i64 %.0.i1, 0, !dbg !173
  br i1 %"103", label %main_bb26, label %main_bb33, !dbg !173

main_bb33:                                        ; preds = %main_fopen_or_warn.exit, %main_bb27
  %fp.0 = phi i64 [ %fp.2, %main_bb27 ], [ %.0.i1, %main_fopen_or_warn.exit ]
  %"104" = add nsw i32 %argv.0, 1, !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %"104"}, i64 0, metadata !128), !dbg !129
  br label %main_bb22, !dbg !175

main_bb34:                                        ; preds = %main_bb26, %main_bb12
  ret i32 0, !dbg !176
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
!llvm.module.flags = !{!26, !27}
!llvm.ident = !{!28}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 25, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fopen_or_warn", metadata !"fopen_or_warn", metadata !"", i32 31, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @fopen_or_warn, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [fopen_or_warn]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 47, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 47] [def] [scope 48] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !12}
!19 = metadata !{metadata !20, metadata !21, metadata !22}
!20 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i64* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 11] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 14, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 14] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 13, metadata !23, i32 0, i32 1, [100000 x i64]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 13] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 64, i32 0, i32 0, metadata !8, metadata !24, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 64, offset 0] [from long long int]
!24 = metadata !{metadata !25}
!25 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!26 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!27 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!28 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!29 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 15]
!30 = metadata !{i32 15, i32 33, metadata !4, null}
!31 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!32 = metadata !{i32 15, i32 50, metadata !4, null}
!33 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!34 = metadata !{i32 15, i32 73, metadata !4, null}
!35 = metadata !{i32 16, i32 5, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 16]
!37 = metadata !{i32 16, i32 15, metadata !4, null}
!38 = metadata !{i32 17, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 18, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 17, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 20, i32 14, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !39, i32 20, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 21, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 20, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 24, i32 1, metadata !4, null}
!47 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777241, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 25]
!48 = metadata !{i32 25, i32 26, metadata !9, null}
!49 = metadata !{i32 26, i32 4, metadata !9, null}
!50 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 26, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 26]
!51 = metadata !{i32 26, i32 8, metadata !9, null}
!52 = metadata !{i32 27, i32 4, metadata !9, null}
!53 = metadata !{i32 28, i32 4, metadata !9, null}
!54 = metadata !{i32 34, i32 13, metadata !13, null}
!55 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [value] [line 15]
!56 = metadata !{i32 15, i32 33, metadata !4, metadata !54}
!57 = metadata !{i64 -2147483648}
!58 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!59 = metadata !{i32 15, i32 50, metadata !4, metadata !54}
!60 = metadata !{i64 2147483647}
!61 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!62 = metadata !{i32 15, i32 73, metadata !4, metadata !54}
!63 = metadata !{i64 4294967296}
!64 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !54} ; [ DW_TAG_auto_variable ] [range] [line 16]
!65 = metadata !{i32 16, i32 15, metadata !4, metadata !54}
!66 = metadata !{i32 17, i32 9, metadata !39, metadata !54}
!67 = metadata !{i32 18, i32 9, metadata !41, metadata !54}
!68 = metadata !{i32 20, i32 14, metadata !43, metadata !54}
!69 = metadata !{i32 21, i32 9, metadata !45, metadata !54}
!70 = metadata !{i32 35, i32 9, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !13, i32 35, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 39, i32 20, metadata !13, null}
!73 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 39]
!74 = metadata !{i32 39, i32 15, metadata !13, null}
!75 = metadata !{i32 40, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !13, i32 40, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 42, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !76, i32 41, i32 1, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 46, i32 1, metadata !13, null}
!80 = metadata !{i32 49, i32 21, metadata !16, null}
!81 = metadata !{i32 786688, metadata !16, metadata !"len", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 49]
!82 = metadata !{i32 49, i32 15, metadata !16, null}
!83 = metadata !{i32 50, i32 9, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !16, i32 50, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 54, i32 23, metadata !16, null}
!86 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777241, metadata !12, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [size] [line 25]
!87 = metadata !{i32 25, i32 26, metadata !9, metadata !85}
!88 = metadata !{i32 26, i32 4, metadata !9, metadata !85}
!89 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 26, metadata !12, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 26]
!90 = metadata !{i32 26, i32 8, metadata !9, metadata !85}
!91 = metadata !{i32 27, i32 4, metadata !9, metadata !85}
!92 = metadata !{i32 786688, metadata !16, metadata !"argv1_index", metadata !5, i32 54, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv1_index] [line 54]
!93 = metadata !{i32 54, i32 9, metadata !16, null}
!94 = metadata !{i64 0}
!95 = metadata !{i32 786688, metadata !96, metadata !"i", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 55]
!96 = metadata !{i32 786443, metadata !1, metadata !16, i32 55, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 55, i32 20, metadata !96, null}
!98 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [value] [line 15]
!99 = metadata !{i32 55, i32 32, metadata !96, null}
!100 = metadata !{i32 15, i32 33, metadata !4, metadata !99}
!101 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!102 = metadata !{i32 15, i32 50, metadata !4, metadata !99}
!103 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!104 = metadata !{i32 15, i32 73, metadata !4, metadata !99}
!105 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [range] [line 16]
!106 = metadata !{i32 16, i32 15, metadata !4, metadata !99}
!107 = metadata !{i32 57, i32 38, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !96, i32 56, i32 1, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!109 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [value] [line 15]
!110 = metadata !{i32 55, i32 78, metadata !96, null}
!111 = metadata !{i32 15, i32 33, metadata !4, metadata !110}
!112 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!113 = metadata !{i32 15, i32 50, metadata !4, metadata !110}
!114 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!115 = metadata !{i32 15, i32 73, metadata !4, metadata !110}
!116 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !110} ; [ DW_TAG_auto_variable ] [range] [line 16]
!117 = metadata !{i32 16, i32 15, metadata !4, metadata !110}
!118 = metadata !{i32 55, i32 10, metadata !96, null}
!119 = metadata !{i32 17, i32 9, metadata !39, metadata !99}
!120 = metadata !{i32 18, i32 9, metadata !41, metadata !99}
!121 = metadata !{i32 20, i32 14, metadata !43, metadata !99}
!122 = metadata !{i32 21, i32 9, metadata !45, metadata !99}
!123 = metadata !{i32 17, i32 9, metadata !39, metadata !110}
!124 = metadata !{i32 18, i32 9, metadata !41, metadata !110}
!125 = metadata !{i32 20, i32 14, metadata !43, metadata !110}
!126 = metadata !{i32 21, i32 9, metadata !45, metadata !110}
!127 = metadata !{i32 59, i32 5, metadata !16, null}
!128 = metadata !{i32 786688, metadata !16, metadata !"argv", metadata !5, i32 60, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 60]
!129 = metadata !{i32 60, i32 9, metadata !16, null}
!130 = metadata !{i32 786688, metadata !16, metadata !"fp", metadata !5, i32 61, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 61]
!131 = metadata !{i32 61, i32 15, metadata !16, null}
!132 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [value] [line 15]
!133 = metadata !{i32 74, i32 11, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !16, i32 63, i32 7, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!135 = metadata !{i32 15, i32 33, metadata !4, metadata !133}
!136 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!137 = metadata !{i32 15, i32 50, metadata !4, metadata !133}
!138 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!139 = metadata !{i32 15, i32 73, metadata !4, metadata !133}
!140 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [range] [line 16]
!141 = metadata !{i32 16, i32 15, metadata !4, metadata !133}
!142 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !143} ; [ DW_TAG_arg_variable ] [value] [line 15]
!143 = metadata !{i32 34, i32 13, metadata !13, metadata !144}
!144 = metadata !{i32 66, i32 18, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !146, i32 65, i32 9, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!146 = metadata !{i32 786443, metadata !1, metadata !134, i32 64, i32 13, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!147 = metadata !{i32 15, i32 33, metadata !4, metadata !143}
!148 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !143} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!149 = metadata !{i32 15, i32 50, metadata !4, metadata !143}
!150 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !143} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!151 = metadata !{i32 15, i32 73, metadata !4, metadata !143}
!152 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !143} ; [ DW_TAG_auto_variable ] [range] [line 16]
!153 = metadata !{i32 16, i32 15, metadata !4, metadata !143}
!154 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !5, i32 39, metadata !8, i32 0, metadata !144} ; [ DW_TAG_auto_variable ] [i] [line 39]
!155 = metadata !{i32 39, i32 15, metadata !13, metadata !144}
!156 = metadata !{i32 62, i32 5, metadata !16, null}
!157 = metadata !{i32 17, i32 9, metadata !39, metadata !133}
!158 = metadata !{i32 18, i32 9, metadata !41, metadata !133}
!159 = metadata !{i32 20, i32 14, metadata !43, metadata !133}
!160 = metadata !{i32 21, i32 9, metadata !45, metadata !133}
!161 = metadata !{i32 75, i32 5, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !134, i32 75, i32 5, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!163 = metadata !{i32 64, i32 13, metadata !146, null}
!164 = metadata !{i32 75, i32 5, metadata !134, null}
!165 = metadata !{i32 17, i32 9, metadata !39, metadata !143}
!166 = metadata !{i32 18, i32 9, metadata !41, metadata !143}
!167 = metadata !{i32 20, i32 14, metadata !43, metadata !143}
!168 = metadata !{i32 21, i32 9, metadata !45, metadata !143}
!169 = metadata !{i32 35, i32 9, metadata !71, metadata !144}
!170 = metadata !{i32 39, i32 20, metadata !13, metadata !144}
!171 = metadata !{i32 40, i32 9, metadata !76, metadata !144}
!172 = metadata !{i32 42, i32 9, metadata !78, metadata !144}
!173 = metadata !{i32 67, i32 17, metadata !174, null}
!174 = metadata !{i32 786443, metadata !1, metadata !145, i32 67, i32 17, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!175 = metadata !{i32 72, i32 9, metadata !134, null}
!176 = metadata !{i32 77, i32 1, metadata !16, null}

