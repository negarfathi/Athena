; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i64] zeroinitializer, align 16
@memory0 = common global [100000 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !33), !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !35), !dbg !36
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !37
  %"1" = add nsw i64 %"0", 1, !dbg !37
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !38), !dbg !39
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !40
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !40

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !42
  %"4" = sub nsw i64 %"3", 1, !dbg !42
  %"5" = srem i64 %"4", %"1", !dbg !42
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !42
  br label %wrap_around_bb4, !dbg !42

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !44
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !44

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !46
  %"9" = sub nsw i64 %"8", 1, !dbg !46
  %"10" = srem i64 %"9", %"1", !dbg !46
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !46
  br label %wrap_around_bb4, !dbg !46

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !48
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !49), !dbg !50
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !52), !dbg !53
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !54
  %"14" = add nsw i32 %"13", %size, !dbg !54
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !54
  ret i32 %"12", !dbg !55
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb6:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !56), !dbg !57
  %"15" = load i32* @"'memory1_freeIndex", align 4, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !59), !dbg !60
  %"16" = load i32* @"'memory1_freeIndex", align 4, !dbg !61
  %"17" = add nsw i32 %"16", %size, !dbg !61
  store i32 %"17", i32* @"'memory1_freeIndex", align 4, !dbg !61
  ret i32 %"15", !dbg !62
}

; Function Attrs: nounwind uwtable
define i64 @strcspn(i32 %strSrc, i32 %str) #0 {
strcspn_bb7:
  call void @llvm.dbg.value(metadata !{i32 %strSrc}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %strSrc}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !69), !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !69), !dbg !70
  br label %strcspn_bb8, !dbg !71

strcspn_bb8:                                      ; preds = %strcspn_bb14, %strcspn_bb7
  %t.0 = phi i32 [ %strSrc, %strcspn_bb7 ], [ %"36", %strcspn_bb14 ]
  %"18" = sext i32 %t.0 to i64, !dbg !72
  %"19" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"18", !dbg !72
  %"20" = load i64* %"19", align 8, !dbg !72
  %"21" = icmp ne i64 %"20", 0, !dbg !72
  br i1 %"21", label %strcspn_bb9, label %strcspn_bb15, !dbg !72

strcspn_bb9:                                      ; preds = %strcspn_bb8
  %"22" = sext i32 %t.0 to i64, !dbg !74
  %"23" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"22", !dbg !74
  %"24" = load i64* %"23", align 8, !dbg !74
  br label %strcspn_bb10, !dbg !78

strcspn_bb10:                                     ; preds = %strcspn_bb13, %strcspn_bb9
  %s.0 = phi i32 [ %str, %strcspn_bb9 ], [ %"35", %strcspn_bb13 ]
  %"25" = sext i32 %s.0 to i64, !dbg !79
  %"26" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"25", !dbg !79
  %"27" = load i64* %"26", align 8, !dbg !79
  %"28" = icmp ne i64 %"27", 0, !dbg !79
  br i1 %"28", label %strcspn_bb11, label %strcspn_bb14, !dbg !79

strcspn_bb11:                                     ; preds = %strcspn_bb10
  %"29" = sext i32 %s.0 to i64, !dbg !74
  %"30" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"29", !dbg !74
  %"31" = load i64* %"30", align 8, !dbg !74
  %"32" = icmp eq i64 %"24", %"31", !dbg !74
  br i1 %"32", label %strcspn_bb12, label %strcspn_bb13, !dbg !74

strcspn_bb12:                                     ; preds = %strcspn_bb11
  %"33" = sub nsw i32 %t.0, %strSrc, !dbg !81
  %"34" = sext i32 %"33" to i64, !dbg !81
  br label %strcspn_bb15, !dbg !81

strcspn_bb13:                                     ; preds = %strcspn_bb11
  %"35" = add nsw i32 %s.0, 1, !dbg !83
  br label %strcspn_bb10, !dbg !84

strcspn_bb14:                                     ; preds = %strcspn_bb10
  %"36" = add nsw i32 %t.0, 1, !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !67), !dbg !68
  br label %strcspn_bb8, !dbg !86

strcspn_bb15:                                     ; preds = %strcspn_bb8, %strcspn_bb12
  %.0 = phi i64 [ %"34", %strcspn_bb12 ], [ 0, %strcspn_bb8 ]
  ret i64 %.0, !dbg !87
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !89), !dbg !91
  %"37" = load i32* @"'memory0_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !93), !dbg !94
  %"38" = load i32* @"'memory0_freeIndex", align 4, !dbg !95
  %"39" = add nsw i32 %"38", 2, !dbg !95
  store i32 %"39", i32* @"'memory0_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !96), !dbg !97
  %"40" = add nsw i32 %"37", 0, !dbg !98
  %"41" = sext i32 %"40" to i64, !dbg !98
  %"42" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"41", !dbg !98
  store i64 10, i64* %"42", align 8, !dbg !98
  %"43" = add nsw i32 %"37", 1, !dbg !99
  %"44" = sext i32 %"43" to i64, !dbg !99
  %"45" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"44", !dbg !99
  store i64 0, i64* %"45", align 8, !dbg !99
  call void @llvm.dbg.value(metadata !100, i64 0, metadata !101), !dbg !103
  %"46" = load i32* @"'memory1_freeIndex", align 4, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !105), !dbg !106
  %"47" = load i32* @"'memory1_freeIndex", align 4, !dbg !107
  %"48" = add nsw i32 %"47", 100, !dbg !107
  store i32 %"48", i32* @"'memory1_freeIndex", align 4, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !110, i64 0, metadata !111), !dbg !113
  %"49" = sext i32 %"46" to i64, !dbg !114
  call void @llvm.dbg.value(metadata !{i64 %"54"}, i64 0, metadata !116), !dbg !118
  call void @llvm.dbg.value(metadata !119, i64 0, metadata !120), !dbg !121
  call void @llvm.dbg.value(metadata !122, i64 0, metadata !123), !dbg !124
  call void @llvm.dbg.value(metadata !125, i64 0, metadata !126), !dbg !127
  br label %main_wrap_around.exit, !dbg !128

main_wrap_around.exit:                            ; preds = %main_bb20, %main_bb19, %main_bb18, %main_bb16
  %i.0 = phi i64 [ 0, %main_bb16 ], [ %"59", %main_bb18 ], [ %"64", %main_bb20 ], [ %"54", %main_bb19 ]
  %"50" = icmp slt i64 %i.0, 99, !dbg !129
  br i1 %"50", label %main_bb17, label %main_bb21, !dbg !129

main_bb17:                                        ; preds = %main_wrap_around.exit
  %"51" = call i64 @__VERIFIER_nondet_char(), !dbg !114
  %"52" = add nsw i64 %"49", %i.0, !dbg !114
  %"53" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"52", !dbg !114
  store i64 %"51", i64* %"53", align 8, !dbg !114
  %"54" = add nsw i64 %i.0, 1, !dbg !117
  %"55" = icmp sgt i64 %"54", 2147483647, !dbg !132
  br i1 %"55", label %main_bb18, label %main_bb19, !dbg !132

main_bb18:                                        ; preds = %main_bb17
  %"56" = sub nsw i64 %"54", 2147483647, !dbg !133
  %"57" = sub nsw i64 %"56", 1, !dbg !133
  %"58" = srem i64 %"57", 4294967296, !dbg !133
  %"59" = add nsw i64 -2147483648, %"58", !dbg !133
  br label %main_wrap_around.exit, !dbg !133

main_bb19:                                        ; preds = %main_bb17
  %"60" = icmp slt i64 %"54", -2147483648, !dbg !134
  br i1 %"60", label %main_bb20, label %main_wrap_around.exit, !dbg !134

main_bb20:                                        ; preds = %main_bb19
  %"61" = sub nsw i64 -2147483648, %"54", !dbg !135
  %"62" = sub nsw i64 %"61", 1, !dbg !135
  %"63" = srem i64 %"62", 4294967296, !dbg !135
  %"64" = sub nsw i64 2147483647, %"63", !dbg !135
  br label %main_wrap_around.exit, !dbg !135

main_bb21:                                        ; preds = %main_wrap_around.exit
  %"65" = add nsw i32 %"46", 99, !dbg !136
  %"66" = sext i32 %"65" to i64, !dbg !136
  %"67" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"66", !dbg !136
  store i64 0, i64* %"67", align 8, !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !137), !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !139), !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !143), !dbg !144
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !145), !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !147), !dbg !148
  br label %main_bb22, !dbg !149

main_bb22:                                        ; preds = %main_strcspn.exit, %main_bb21
  %p.0 = phi i32 [ %"46", %main_bb21 ], [ %., %main_strcspn.exit ]
  %"68" = sext i32 %p.0 to i64, !dbg !150
  %"69" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"68", !dbg !150
  %"70" = load i64* %"69", align 8, !dbg !150
  %"71" = icmp ne i64 %"70", 0, !dbg !150
  br i1 %"71", label %main_bb23, label %main_bb30, !dbg !150

main_bb23:                                        ; preds = %main_bb22, %main_bb29
  %t.0.i = phi i32 [ %"90", %main_bb29 ], [ %p.0, %main_bb22 ], !dbg !140
  %"72" = sext i32 %t.0.i to i64, !dbg !152
  %"73" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"72", !dbg !152
  %"74" = load i64* %"73", align 8, !dbg !152
  %"75" = icmp ne i64 %"74", 0, !dbg !152
  br i1 %"75", label %main_bb24, label %main_strcspn.exit, !dbg !152

main_bb24:                                        ; preds = %main_bb23
  %"76" = sext i32 %t.0.i to i64, !dbg !153
  %"77" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"76", !dbg !153
  %"78" = load i64* %"77", align 8, !dbg !153
  br label %main_bb25, !dbg !154

main_bb25:                                        ; preds = %main_bb28, %main_bb24
  %s.0.i = phi i32 [ %"37", %main_bb24 ], [ %"89", %main_bb28 ], !dbg !140
  %"79" = sext i32 %s.0.i to i64, !dbg !155
  %"80" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"79", !dbg !155
  %"81" = load i64* %"80", align 8, !dbg !155
  %"82" = icmp ne i64 %"81", 0, !dbg !155
  br i1 %"82", label %main_bb26, label %main_bb29, !dbg !155

main_bb26:                                        ; preds = %main_bb25
  %"83" = sext i32 %s.0.i to i64, !dbg !153
  %"84" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"83", !dbg !153
  %"85" = load i64* %"84", align 8, !dbg !153
  %"86" = icmp eq i64 %"78", %"85", !dbg !153
  br i1 %"86", label %main_bb27, label %main_bb28, !dbg !153

main_bb27:                                        ; preds = %main_bb26
  %"87" = sub nsw i32 %t.0.i, %p.0, !dbg !156
  %"88" = sext i32 %"87" to i64, !dbg !156
  br label %main_strcspn.exit, !dbg !156

main_bb28:                                        ; preds = %main_bb26
  %"89" = add nsw i32 %s.0.i, 1, !dbg !157
  br label %main_bb25, !dbg !158

main_bb29:                                        ; preds = %main_bb25
  %"90" = add nsw i32 %t.0.i, 1, !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %"90"}, i64 0, metadata !145), !dbg !146
  br label %main_bb23, !dbg !160

main_strcspn.exit:                                ; preds = %main_bb23, %main_bb27
  %.0.i = phi i64 [ %"88", %main_bb27 ], [ 0, %main_bb23 ], !dbg !140
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !161), !dbg !162
  %"91" = sext i32 %p.0 to i64, !dbg !163
  %"92" = add nsw i64 %"91", %.0.i, !dbg !163
  %"93" = trunc i64 %"92" to i32, !dbg !163
  call void @llvm.dbg.value(metadata !{i32 %"93"}, i64 0, metadata !137), !dbg !138
  %"94" = sext i32 %"93" to i64, !dbg !164
  %"95" = getelementptr inbounds [100000 x i64]* @memory1, i32 0, i64 %"94", !dbg !164
  %"96" = load i64* %"95", align 8, !dbg !164
  %"97" = icmp ne i64 %"96", 0, !dbg !164
  %"98" = add nsw i32 %"93", 1, !dbg !166
  call void @llvm.dbg.value(metadata !{i32 %"98"}, i64 0, metadata !137), !dbg !138
  %. = select i1 %"97", i32 %"98", i32 %"93", !dbg !164
  br label %main_bb22, !dbg !168

main_bb30:                                        ; preds = %main_bb22
  ret i32 0, !dbg !169
}

declare i64 @__VERIFIER_nondet_char() #2

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !20, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !14, metadata !17}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 25, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 25] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 34, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 34] [def] [allocate_memory1]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strcspn", metadata !"strcspn", metadata !"", i32 40, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32)* @strcspn, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 40] [def] [scope 41] [strcspn]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8, metadata !12, metadata !12}
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 59, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 60} ; [ DW_TAG_subprogram ] [line 59] [def] [scope 60] [main]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !12}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !27}
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 14, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 14] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 33, metadata !12, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 33] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 13, metadata !24, i32 0, i32 1, [100000 x i64]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 13] [def]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 64, i32 0, i32 0, metadata !8, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 64, offset 0] [from long long int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 32, metadata !24, i32 0, i32 1, [100000 x i64]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 32] [def]
!28 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!29 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!30 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!31 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 15]
!32 = metadata !{i32 15, i32 33, metadata !4, null}
!33 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!34 = metadata !{i32 15, i32 50, metadata !4, null}
!35 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!36 = metadata !{i32 15, i32 73, metadata !4, null}
!37 = metadata !{i32 16, i32 5, metadata !4, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 16]
!39 = metadata !{i32 16, i32 15, metadata !4, null}
!40 = metadata !{i32 17, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 18, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !41, i32 17, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 20, i32 14, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !41, i32 20, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 21, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !45, i32 20, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 24, i32 1, metadata !4, null}
!49 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777241, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 25]
!50 = metadata !{i32 25, i32 26, metadata !9, null}
!51 = metadata !{i32 26, i32 4, metadata !9, null}
!52 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 26, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 26]
!53 = metadata !{i32 26, i32 8, metadata !9, null}
!54 = metadata !{i32 27, i32 4, metadata !9, null}
!55 = metadata !{i32 28, i32 4, metadata !9, null}
!56 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777250, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 34]
!57 = metadata !{i32 34, i32 26, metadata !13, null}
!58 = metadata !{i32 35, i32 4, metadata !13, null}
!59 = metadata !{i32 786688, metadata !13, metadata !"allocatedIndex", metadata !5, i32 35, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 35]
!60 = metadata !{i32 35, i32 8, metadata !13, null}
!61 = metadata !{i32 36, i32 4, metadata !13, null}
!62 = metadata !{i32 37, i32 4, metadata !13, null}
!63 = metadata !{i32 786689, metadata !14, metadata !"strSrc", metadata !5, i32 16777256, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [strSrc] [line 40]
!64 = metadata !{i32 40, i32 23, metadata !14, null}
!65 = metadata !{i32 786689, metadata !14, metadata !"str", metadata !5, i32 33554472, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 40]
!66 = metadata !{i32 40, i32 35, metadata !14, null}
!67 = metadata !{i32 786688, metadata !14, metadata !"t", metadata !5, i32 43, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [t] [line 43]
!68 = metadata !{i32 43, i32 9, metadata !14, null}
!69 = metadata !{i32 786688, metadata !14, metadata !"s", metadata !5, i32 42, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 42]
!70 = metadata !{i32 42, i32 9, metadata !14, null}
!71 = metadata !{i32 44, i32 5, metadata !14, null}
!72 = metadata !{i32 44, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !14, i32 44, i32 5, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 49, i32 17, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !76, i32 49, i32 17, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 48, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 786443, metadata !1, metadata !14, i32 45, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 47, i32 9, metadata !77, null}
!79 = metadata !{i32 47, i32 9, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !77, i32 47, i32 9, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 51, i32 13, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !75, i32 50, i32 1, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 53, i32 13, metadata !76, null}
!84 = metadata !{i32 54, i32 9, metadata !76, null}
!85 = metadata !{i32 55, i32 9, metadata !77, null}
!86 = metadata !{i32 56, i32 5, metadata !77, null}
!87 = metadata !{i32 58, i32 1, metadata !14, null} ; [ DW_TAG_imported_module ]
!88 = metadata !{i32 2}
!89 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777241, metadata !12, i32 0, metadata !90} ; [ DW_TAG_arg_variable ] [size] [line 25]
!90 = metadata !{i32 61, i32 21, metadata !17, null}
!91 = metadata !{i32 25, i32 26, metadata !9, metadata !90}
!92 = metadata !{i32 26, i32 4, metadata !9, metadata !90}
!93 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 26, metadata !12, i32 0, metadata !90} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 26]
!94 = metadata !{i32 26, i32 8, metadata !9, metadata !90}
!95 = metadata !{i32 27, i32 4, metadata !9, metadata !90}
!96 = metadata !{i32 786688, metadata !17, metadata !"newLine_index", metadata !5, i32 61, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newLine_index] [line 61]
!97 = metadata !{i32 61, i32 5, metadata !17, null}
!98 = metadata !{i32 62, i32 1, metadata !17, null}
!99 = metadata !{i32 63, i32 1, metadata !17, null}
!100 = metadata !{i32 100}
!101 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777250, metadata !12, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [size] [line 34]
!102 = metadata !{i32 64, i32 21, metadata !17, null}
!103 = metadata !{i32 34, i32 26, metadata !13, metadata !102}
!104 = metadata !{i32 35, i32 4, metadata !13, metadata !102}
!105 = metadata !{i32 786688, metadata !13, metadata !"allocatedIndex", metadata !5, i32 35, metadata !12, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 35]
!106 = metadata !{i32 35, i32 8, metadata !13, metadata !102}
!107 = metadata !{i32 36, i32 4, metadata !13, metadata !102}
!108 = metadata !{i32 786688, metadata !17, metadata !"buf_index", metadata !5, i32 64, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buf_index] [line 64]
!109 = metadata !{i32 64, i32 9, metadata !17, null}
!110 = metadata !{i64 0}
!111 = metadata !{i32 786688, metadata !112, metadata !"i", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 65]
!112 = metadata !{i32 786443, metadata !1, metadata !17, i32 65, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!113 = metadata !{i32 65, i32 20, metadata !112, null}
!114 = metadata !{i32 67, i32 36, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !112, i32 66, i32 1, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777231, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [value] [line 15]
!117 = metadata !{i32 65, i32 42, metadata !112, null}
!118 = metadata !{i32 15, i32 33, metadata !4, metadata !117}
!119 = metadata !{i64 -2147483648}
!120 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554447, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [lower_bound] [line 15]
!121 = metadata !{i32 15, i32 50, metadata !4, metadata !117}
!122 = metadata !{i64 2147483647}
!123 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331663, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [upper_bound] [line 15]
!124 = metadata !{i32 15, i32 73, metadata !4, metadata !117}
!125 = metadata !{i64 4294967296}
!126 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 16, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [range] [line 16]
!127 = metadata !{i32 16, i32 15, metadata !4, metadata !117}
!128 = metadata !{i32 65, i32 10, metadata !112, null}
!129 = metadata !{i32 65, i32 10, metadata !130, null}
!130 = metadata !{i32 786443, metadata !1, metadata !131, i32 65, i32 10, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!131 = metadata !{i32 786443, metadata !1, metadata !112, i32 65, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!132 = metadata !{i32 17, i32 9, metadata !41, metadata !117}
!133 = metadata !{i32 18, i32 9, metadata !43, metadata !117}
!134 = metadata !{i32 20, i32 14, metadata !45, metadata !117}
!135 = metadata !{i32 21, i32 9, metadata !47, metadata !117}
!136 = metadata !{i32 69, i32 5, metadata !17, null}
!137 = metadata !{i32 786688, metadata !17, metadata !"p", metadata !5, i32 70, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 70]
!138 = metadata !{i32 70, i32 9, metadata !17, null}
!139 = metadata !{i32 786689, metadata !14, metadata !"strSrc", metadata !5, i32 16777256, metadata !12, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [strSrc] [line 40]
!140 = metadata !{i32 73, i32 25, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !17, i32 72, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!142 = metadata !{i32 40, i32 23, metadata !14, metadata !140}
!143 = metadata !{i32 786689, metadata !14, metadata !"str", metadata !5, i32 33554472, metadata !12, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [str] [line 40]
!144 = metadata !{i32 40, i32 35, metadata !14, metadata !140}
!145 = metadata !{i32 786688, metadata !14, metadata !"t", metadata !5, i32 43, metadata !12, i32 0, metadata !140} ; [ DW_TAG_auto_variable ] [t] [line 43]
!146 = metadata !{i32 43, i32 9, metadata !14, metadata !140}
!147 = metadata !{i32 786688, metadata !14, metadata !"s", metadata !5, i32 42, metadata !12, i32 0, metadata !140} ; [ DW_TAG_auto_variable ] [s] [line 42]
!148 = metadata !{i32 42, i32 9, metadata !14, metadata !140}
!149 = metadata !{i32 71, i32 5, metadata !17, null}
!150 = metadata !{i32 71, i32 5, metadata !151, null}
!151 = metadata !{i32 786443, metadata !1, metadata !17, i32 71, i32 5, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!152 = metadata !{i32 44, i32 5, metadata !73, metadata !140}
!153 = metadata !{i32 49, i32 17, metadata !75, metadata !140}
!154 = metadata !{i32 47, i32 9, metadata !77, metadata !140}
!155 = metadata !{i32 47, i32 9, metadata !80, metadata !140}
!156 = metadata !{i32 51, i32 13, metadata !82, metadata !140}
!157 = metadata !{i32 53, i32 13, metadata !76, metadata !140}
!158 = metadata !{i32 54, i32 9, metadata !76, metadata !140}
!159 = metadata !{i32 55, i32 9, metadata !77, metadata !140}
!160 = metadata !{i32 56, i32 5, metadata !77, metadata !140}
!161 = metadata !{i32 786688, metadata !141, metadata !"len", metadata !5, i32 73, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 73]
!162 = metadata !{i32 73, i32 19, metadata !141, null}
!163 = metadata !{i32 74, i32 9, metadata !141, null}
!164 = metadata !{i32 75, i32 13, metadata !165, null}
!165 = metadata !{i32 786443, metadata !1, metadata !141, i32 75, i32 13, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!166 = metadata !{i32 77, i32 13, metadata !167, null}
!167 = metadata !{i32 786443, metadata !1, metadata !165, i32 76, i32 1, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!168 = metadata !{i32 79, i32 5, metadata !141, null}
!169 = metadata !{i32 80, i32 5, metadata !17, null}

