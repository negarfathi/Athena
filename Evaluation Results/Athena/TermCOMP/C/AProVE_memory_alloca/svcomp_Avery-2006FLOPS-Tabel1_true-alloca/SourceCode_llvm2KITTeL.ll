; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@memory3 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !33), !dbg !34
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !36), !dbg !37
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !38
  %"2" = add nsw i32 %"1", %size, !dbg !38
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !38
  ret i32 %"0", !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !40), !dbg !41
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !43), !dbg !44
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !45
  %"5" = add nsw i32 %"4", %size, !dbg !45
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !45
  ret i32 %"3", !dbg !46
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !47), !dbg !48
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !50), !dbg !51
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !52
  %"8" = add nsw i32 %"7", %size, !dbg !52
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !52
  ret i32 %"6", !dbg !53
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !54), !dbg !55
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !57), !dbg !58
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !59
  %"11" = add nsw i32 %"10", %size, !dbg !59
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !59
  ret i32 %"9", !dbg !60
}

; Function Attrs: nounwind uwtable
define i32 @subxy(i32 %x, i32 %y) #0 {
subxy_bb4:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !66), !dbg !68
  %"12" = load i32* @"'memory3_freeIndex", align 4, !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !70), !dbg !71
  %"13" = load i32* @"'memory3_freeIndex", align 4, !dbg !72
  %"14" = add nsw i32 %"13", 1, !dbg !72
  store i32 %"14", i32* @"'memory3_freeIndex", align 4, !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !73), !dbg !74
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !75), !dbg !77
  %"15" = load i32* @"'memory2_freeIndex", align 4, !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !79), !dbg !80
  %"16" = load i32* @"'memory2_freeIndex", align 4, !dbg !81
  %"17" = add nsw i32 %"16", 1, !dbg !81
  store i32 %"17", i32* @"'memory2_freeIndex", align 4, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !82), !dbg !83
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !84), !dbg !86
  %"18" = load i32* @"'memory1_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !88), !dbg !89
  %"19" = load i32* @"'memory1_freeIndex", align 4, !dbg !90
  %"20" = add nsw i32 %"19", 1, !dbg !90
  store i32 %"20", i32* @"'memory1_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !91), !dbg !92
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !93), !dbg !95
  %"21" = load i32* @"'memory0_freeIndex", align 4, !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !97), !dbg !98
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !99
  %"23" = add nsw i32 %"22", 1, !dbg !99
  store i32 %"23", i32* @"'memory0_freeIndex", align 4, !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !100), !dbg !101
  %"24" = sext i32 %"12" to i64, !dbg !102
  %"25" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"24", !dbg !102
  store i32 %x, i32* %"25", align 4, !dbg !102
  %"26" = sext i32 %"15" to i64, !dbg !103
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !103
  store i32 %y, i32* %"27", align 4, !dbg !103
  %"28" = sext i32 %"18" to i64, !dbg !104
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !104
  store i32 0, i32* %"29", align 4, !dbg !104
  %"30" = sext i32 %"12" to i64, !dbg !105
  %"31" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"30", !dbg !105
  %"32" = load i32* %"31", align 4, !dbg !105
  %"33" = sext i32 %"21" to i64, !dbg !105
  %"34" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"33", !dbg !105
  store i32 %"32", i32* %"34", align 4, !dbg !105
  %"35" = sext i32 %"15" to i64, !dbg !106
  %"36" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"35", !dbg !106
  %"37" = load i32* %"36", align 4, !dbg !106
  %"38" = icmp sle i32 %"37", 0, !dbg !106
  br i1 %"38", label %subxy_bb13, label %subxy_bb5, !dbg !106

subxy_bb5:                                        ; preds = %subxy_bb4
  %"39" = sext i32 %"12" to i64, !dbg !108
  %"40" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"39", !dbg !108
  %"41" = load i32* %"40", align 4, !dbg !108
  %"42" = icmp sle i32 %"41", 0, !dbg !108
  br i1 %"42", label %subxy_bb13, label %subxy_bb6, !dbg !108

subxy_bb6:                                        ; preds = %subxy_bb5
  %"43" = sext i32 %"21" to i64, !dbg !110
  %"44" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"43", !dbg !110
  %"45" = sext i32 %"21" to i64, !dbg !112
  %"46" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"45", !dbg !112
  %"47" = sext i32 %"18" to i64, !dbg !114
  %"48" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"47", !dbg !114
  br label %subxy_bb7, !dbg !115

subxy_bb7:                                        ; preds = %subxy_bb8, %subxy_bb6
  %"49" = load i32* %"44", align 4, !dbg !110
  %"50" = icmp sgt i32 %"49", 0, !dbg !110
  br i1 %"50", label %subxy_bb8, label %subxy_bb9, !dbg !110

subxy_bb8:                                        ; preds = %subxy_bb7
  %"51" = load i32* %"46", align 4, !dbg !112
  %"52" = add nsw i32 %"51", -1, !dbg !112
  store i32 %"52", i32* %"46", align 4, !dbg !112
  %"53" = load i32* %"48", align 4, !dbg !114
  %"54" = add nsw i32 %"53", 1, !dbg !114
  store i32 %"54", i32* %"48", align 4, !dbg !114
  br label %subxy_bb7, !dbg !116

subxy_bb9:                                        ; preds = %subxy_bb7
  %"55" = sext i32 %"21" to i64, !dbg !117
  %"56" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"55", !dbg !117
  %"57" = sext i32 %"15" to i64, !dbg !117
  %"58" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"57", !dbg !117
  %"59" = load i32* %"58", align 4, !dbg !117
  %"60" = sext i32 %"21" to i64, !dbg !119
  %"61" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"60", !dbg !119
  %"62" = sext i32 %"18" to i64, !dbg !121
  %"63" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"62", !dbg !121
  br label %subxy_bb10, !dbg !122

subxy_bb10:                                       ; preds = %subxy_bb11, %subxy_bb9
  %"64" = load i32* %"56", align 4, !dbg !117
  %"65" = icmp slt i32 %"64", %"59", !dbg !117
  br i1 %"65", label %subxy_bb11, label %subxy_bb12, !dbg !117

subxy_bb11:                                       ; preds = %subxy_bb10
  %"66" = load i32* %"61", align 4, !dbg !119
  %"67" = add nsw i32 %"66", 1, !dbg !119
  store i32 %"67", i32* %"61", align 4, !dbg !119
  %"68" = load i32* %"63", align 4, !dbg !121
  %"69" = add nsw i32 %"68", -1, !dbg !121
  store i32 %"69", i32* %"63", align 4, !dbg !121
  br label %subxy_bb10, !dbg !123

subxy_bb12:                                       ; preds = %subxy_bb10
  %"70" = sext i32 %"18" to i64, !dbg !124
  %"71" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"70", !dbg !124
  %"72" = load i32* %"71", align 4, !dbg !124
  br label %subxy_bb13, !dbg !124

subxy_bb13:                                       ; preds = %subxy_bb4, %subxy_bb5, %subxy_bb12
  %.0 = phi i32 [ %"72", %subxy_bb12 ], [ 0, %subxy_bb5 ], [ 0, %subxy_bb4 ]
  ret i32 %.0, !dbg !125
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb14:
  %"73" = call i32 @__VERIFIER_nondet_int(), !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !127), !dbg !128
  %"74" = call i32 @__VERIFIER_nondet_int(), !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !132), !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !135), !dbg !136
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !137), !dbg !139
  %"75" = load i32* @"'memory3_freeIndex", align 4, !dbg !140
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !141), !dbg !142
  %"76" = load i32* @"'memory3_freeIndex", align 4, !dbg !143
  %"77" = add nsw i32 %"76", 1, !dbg !143
  store i32 %"77", i32* @"'memory3_freeIndex", align 4, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !144), !dbg !145
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !146), !dbg !148
  %"78" = load i32* @"'memory2_freeIndex", align 4, !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %"78"}, i64 0, metadata !150), !dbg !151
  %"79" = load i32* @"'memory2_freeIndex", align 4, !dbg !152
  %"80" = add nsw i32 %"79", 1, !dbg !152
  store i32 %"80", i32* @"'memory2_freeIndex", align 4, !dbg !152
  call void @llvm.dbg.value(metadata !{i32 %"78"}, i64 0, metadata !153), !dbg !154
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !155), !dbg !157
  %"81" = load i32* @"'memory1_freeIndex", align 4, !dbg !158
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !159), !dbg !160
  %"82" = load i32* @"'memory1_freeIndex", align 4, !dbg !161
  %"83" = add nsw i32 %"82", 1, !dbg !161
  store i32 %"83", i32* @"'memory1_freeIndex", align 4, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !162), !dbg !163
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !164), !dbg !166
  %"84" = load i32* @"'memory0_freeIndex", align 4, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %"84"}, i64 0, metadata !168), !dbg !169
  %"85" = load i32* @"'memory0_freeIndex", align 4, !dbg !170
  %"86" = add nsw i32 %"85", 1, !dbg !170
  store i32 %"86", i32* @"'memory0_freeIndex", align 4, !dbg !170
  call void @llvm.dbg.value(metadata !{i32 %"84"}, i64 0, metadata !171), !dbg !172
  %"87" = sext i32 %"75" to i64, !dbg !173
  %"88" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"87", !dbg !173
  store i32 %"73", i32* %"88", align 4, !dbg !173
  %"89" = sext i32 %"78" to i64, !dbg !174
  %"90" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"89", !dbg !174
  store i32 %"74", i32* %"90", align 4, !dbg !174
  %"91" = sext i32 %"81" to i64, !dbg !175
  %"92" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"91", !dbg !175
  store i32 0, i32* %"92", align 4, !dbg !175
  %"93" = sext i32 %"75" to i64, !dbg !176
  %"94" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"93", !dbg !176
  %"95" = load i32* %"94", align 4, !dbg !176
  %"96" = sext i32 %"84" to i64, !dbg !176
  %"97" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"96", !dbg !176
  store i32 %"95", i32* %"97", align 4, !dbg !176
  %"98" = sext i32 %"78" to i64, !dbg !177
  %"99" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"98", !dbg !177
  %"100" = load i32* %"99", align 4, !dbg !177
  %"101" = icmp sle i32 %"100", 0, !dbg !177
  br i1 %"101", label %main_subxy.exit, label %main_bb15, !dbg !177

main_bb15:                                        ; preds = %main_bb14
  %"102" = sext i32 %"75" to i64, !dbg !178
  %"103" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"102", !dbg !178
  %"104" = load i32* %"103", align 4, !dbg !178
  %"105" = icmp sle i32 %"104", 0, !dbg !178
  br i1 %"105", label %main_subxy.exit, label %main_bb16, !dbg !178

main_bb16:                                        ; preds = %main_bb15
  %"106" = sext i32 %"84" to i64, !dbg !179
  %"107" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"106", !dbg !179
  %"108" = sext i32 %"84" to i64, !dbg !180
  %"109" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"108", !dbg !180
  %"110" = sext i32 %"81" to i64, !dbg !181
  %"111" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"110", !dbg !181
  br label %main_bb17, !dbg !182

main_bb17:                                        ; preds = %main_bb18, %main_bb16
  %"112" = load i32* %"107", align 4, !dbg !179
  %"113" = icmp sgt i32 %"112", 0, !dbg !179
  br i1 %"113", label %main_bb18, label %main_bb19, !dbg !179

main_bb18:                                        ; preds = %main_bb17
  %"114" = load i32* %"109", align 4, !dbg !180
  %"115" = add nsw i32 %"114", -1, !dbg !180
  store i32 %"115", i32* %"109", align 4, !dbg !180
  %"116" = load i32* %"111", align 4, !dbg !181
  %"117" = add nsw i32 %"116", 1, !dbg !181
  store i32 %"117", i32* %"111", align 4, !dbg !181
  br label %main_bb17, !dbg !183

main_bb19:                                        ; preds = %main_bb17
  %"118" = sext i32 %"84" to i64, !dbg !184
  %"119" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"118", !dbg !184
  %"120" = sext i32 %"78" to i64, !dbg !184
  %"121" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"120", !dbg !184
  %"122" = load i32* %"121", align 4, !dbg !184
  %"123" = sext i32 %"84" to i64, !dbg !185
  %"124" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"123", !dbg !185
  %"125" = sext i32 %"81" to i64, !dbg !186
  %"126" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"125", !dbg !186
  br label %main_bb20, !dbg !187

main_bb20:                                        ; preds = %main_bb21, %main_bb19
  %"127" = load i32* %"119", align 4, !dbg !184
  %"128" = icmp slt i32 %"127", %"122", !dbg !184
  br i1 %"128", label %main_bb21, label %main_subxy.exit, !dbg !184

main_bb21:                                        ; preds = %main_bb20
  %"129" = load i32* %"124", align 4, !dbg !185
  %"130" = add nsw i32 %"129", 1, !dbg !185
  store i32 %"130", i32* %"124", align 4, !dbg !185
  %"131" = load i32* %"126", align 4, !dbg !186
  %"132" = add nsw i32 %"131", -1, !dbg !186
  store i32 %"132", i32* %"126", align 4, !dbg !186
  br label %main_bb20, !dbg !188

main_subxy.exit:                                  ; preds = %main_bb20, %main_bb14, %main_bb15
  ret i32 0, !dbg !189
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!30, !31}
!llvm.ident = !{!32}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !18, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 35] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"subxy", metadata !"subxy", metadata !"", i32 41, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @subxy, null, null, metadata !2, i32 41} ; [ DW_TAG_subprogram ] [line 41] [def] [subxy]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 64, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 64} ; [ DW_TAG_subprogram ] [line 64] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !27, metadata !28, metadata !29}
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 34, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 34] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !24, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !24, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !24, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 33, metadata !24, i32 0, i32 1, [100000 x i32]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 33] [def]
!30 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!31 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!32 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!33 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!34 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!35 = metadata !{i32 9, i32 4, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!37 = metadata !{i32 9, i32 8, metadata !4, null}
!38 = metadata !{i32 10, i32 4, metadata !4, null}
!39 = metadata !{i32 11, i32 4, metadata !4, null}
!40 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!41 = metadata !{i32 17, i32 26, metadata !9, null}
!42 = metadata !{i32 18, i32 4, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!44 = metadata !{i32 18, i32 8, metadata !9, null}
!45 = metadata !{i32 19, i32 4, metadata !9, null}
!46 = metadata !{i32 20, i32 4, metadata !9, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!48 = metadata !{i32 26, i32 26, metadata !10, null}
!49 = metadata !{i32 27, i32 4, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!51 = metadata !{i32 27, i32 8, metadata !10, null}
!52 = metadata !{i32 28, i32 4, metadata !10, null}
!53 = metadata !{i32 29, i32 4, metadata !10, null}
!54 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 35]
!55 = metadata !{i32 35, i32 26, metadata !11, null}
!56 = metadata !{i32 36, i32 4, metadata !11, null}
!57 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!58 = metadata !{i32 36, i32 8, metadata !11, null}
!59 = metadata !{i32 37, i32 4, metadata !11, null}
!60 = metadata !{i32 38, i32 4, metadata !11, null}
!61 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 41]
!62 = metadata !{i32 41, i32 15, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 41]
!64 = metadata !{i32 41, i32 22, metadata !12, null}
!65 = metadata !{i32 1}
!66 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !67} ; [ DW_TAG_arg_variable ] [size] [line 35]
!67 = metadata !{i32 42, i32 17, metadata !12, null}
!68 = metadata !{i32 35, i32 26, metadata !11, metadata !67}
!69 = metadata !{i32 36, i32 4, metadata !11, metadata !67}
!70 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !67} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!71 = metadata !{i32 36, i32 8, metadata !11, metadata !67}
!72 = metadata !{i32 37, i32 4, metadata !11, metadata !67}
!73 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 42]
!74 = metadata !{i32 42, i32 9, metadata !12, null}
!75 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [size] [line 26]
!76 = metadata !{i32 43, i32 17, metadata !12, null}
!77 = metadata !{i32 26, i32 26, metadata !10, metadata !76}
!78 = metadata !{i32 27, i32 4, metadata !10, metadata !76}
!79 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!80 = metadata !{i32 27, i32 8, metadata !10, metadata !76}
!81 = metadata !{i32 28, i32 4, metadata !10, metadata !76}
!82 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 43]
!83 = metadata !{i32 43, i32 9, metadata !12, null}
!84 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [size] [line 17]
!85 = metadata !{i32 44, i32 13, metadata !12, null}
!86 = metadata !{i32 17, i32 26, metadata !9, metadata !85}
!87 = metadata !{i32 18, i32 4, metadata !9, metadata !85}
!88 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!89 = metadata !{i32 18, i32 8, metadata !9, metadata !85}
!90 = metadata !{i32 19, i32 4, metadata !9, metadata !85}
!91 = metadata !{i32 786688, metadata !12, metadata !"z", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 44]
!92 = metadata !{i32 44, i32 9, metadata !12, null}
!93 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [size] [line 8]
!94 = metadata !{i32 45, i32 13, metadata !12, null}
!95 = metadata !{i32 8, i32 26, metadata !4, metadata !94} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 9, i32 4, metadata !4, metadata !94}
!97 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !94} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!98 = metadata !{i32 9, i32 8, metadata !4, metadata !94}
!99 = metadata !{i32 10, i32 4, metadata !4, metadata !94}
!100 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!101 = metadata !{i32 45, i32 9, metadata !12, null}
!102 = metadata !{i32 46, i32 5, metadata !12, null}
!103 = metadata !{i32 47, i32 5, metadata !12, null}
!104 = metadata !{i32 48, i32 5, metadata !12, null}
!105 = metadata !{i32 49, i32 5, metadata !12, null}
!106 = metadata !{i32 50, i32 9, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !12, i32 50, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!108 = metadata !{i32 50, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !107, i32 50, i32 9, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 53, i32 5, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !12, i32 53, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 54, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !12, i32 53, i32 28, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 55, i32 9, metadata !113, null}
!115 = metadata !{i32 53, i32 5, metadata !12, null}
!116 = metadata !{i32 56, i32 5, metadata !113, null}
!117 = metadata !{i32 57, i32 5, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !12, i32 57, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!119 = metadata !{i32 58, i32 9, metadata !120, null} ; [ DW_TAG_imported_module ]
!120 = metadata !{i32 786443, metadata !1, metadata !12, i32 57, i32 41, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!121 = metadata !{i32 59, i32 9, metadata !120, null}
!122 = metadata !{i32 57, i32 5, metadata !12, null}
!123 = metadata !{i32 60, i32 5, metadata !120, null}
!124 = metadata !{i32 61, i32 5, metadata !12, null}
!125 = metadata !{i32 62, i32 1, metadata !12, null}
!126 = metadata !{i32 65, i32 13, metadata !15, null}
!127 = metadata !{i32 786688, metadata !15, metadata !"x", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 65]
!128 = metadata !{i32 65, i32 9, metadata !15, null}
!129 = metadata !{i32 66, i32 13, metadata !15, null}
!130 = metadata !{i32 786688, metadata !15, metadata !"y", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 66]
!131 = metadata !{i32 66, i32 9, metadata !15, null}
!132 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [x] [line 41]
!133 = metadata !{i32 67, i32 5, metadata !15, null}
!134 = metadata !{i32 41, i32 15, metadata !12, metadata !133}
!135 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [y] [line 41]
!136 = metadata !{i32 41, i32 22, metadata !12, metadata !133}
!137 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [size] [line 35]
!138 = metadata !{i32 42, i32 17, metadata !12, metadata !133}
!139 = metadata !{i32 35, i32 26, metadata !11, metadata !138}
!140 = metadata !{i32 36, i32 4, metadata !11, metadata !138}
!141 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !138} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!142 = metadata !{i32 36, i32 8, metadata !11, metadata !138}
!143 = metadata !{i32 37, i32 4, metadata !11, metadata !138}
!144 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 42, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [x_ref] [line 42]
!145 = metadata !{i32 42, i32 9, metadata !12, metadata !133}
!146 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !147} ; [ DW_TAG_arg_variable ] [size] [line 26]
!147 = metadata !{i32 43, i32 17, metadata !12, metadata !133}
!148 = metadata !{i32 26, i32 26, metadata !10, metadata !147}
!149 = metadata !{i32 27, i32 4, metadata !10, metadata !147}
!150 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !147} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!151 = metadata !{i32 27, i32 8, metadata !10, metadata !147}
!152 = metadata !{i32 28, i32 4, metadata !10, metadata !147}
!153 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [y_ref] [line 43]
!154 = metadata !{i32 43, i32 9, metadata !12, metadata !133}
!155 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !156} ; [ DW_TAG_arg_variable ] [size] [line 17]
!156 = metadata !{i32 44, i32 13, metadata !12, metadata !133}
!157 = metadata !{i32 17, i32 26, metadata !9, metadata !156}
!158 = metadata !{i32 18, i32 4, metadata !9, metadata !156}
!159 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !156} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!160 = metadata !{i32 18, i32 8, metadata !9, metadata !156}
!161 = metadata !{i32 19, i32 4, metadata !9, metadata !156}
!162 = metadata !{i32 786688, metadata !12, metadata !"z", metadata !5, i32 44, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [z] [line 44]
!163 = metadata !{i32 44, i32 9, metadata !12, metadata !133}
!164 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !165} ; [ DW_TAG_arg_variable ] [size] [line 8]
!165 = metadata !{i32 45, i32 13, metadata !12, metadata !133}
!166 = metadata !{i32 8, i32 26, metadata !4, metadata !165} ; [ DW_TAG_imported_declaration ]
!167 = metadata !{i32 9, i32 4, metadata !4, metadata !165}
!168 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !165} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!169 = metadata !{i32 9, i32 8, metadata !4, metadata !165}
!170 = metadata !{i32 10, i32 4, metadata !4, metadata !165}
!171 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 45, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [i] [line 45]
!172 = metadata !{i32 45, i32 9, metadata !12, metadata !133}
!173 = metadata !{i32 46, i32 5, metadata !12, metadata !133}
!174 = metadata !{i32 47, i32 5, metadata !12, metadata !133}
!175 = metadata !{i32 48, i32 5, metadata !12, metadata !133}
!176 = metadata !{i32 49, i32 5, metadata !12, metadata !133}
!177 = metadata !{i32 50, i32 9, metadata !107, metadata !133}
!178 = metadata !{i32 50, i32 9, metadata !109, metadata !133}
!179 = metadata !{i32 53, i32 5, metadata !111, metadata !133}
!180 = metadata !{i32 54, i32 9, metadata !113, metadata !133}
!181 = metadata !{i32 55, i32 9, metadata !113, metadata !133}
!182 = metadata !{i32 53, i32 5, metadata !12, metadata !133}
!183 = metadata !{i32 56, i32 5, metadata !113, metadata !133}
!184 = metadata !{i32 57, i32 5, metadata !118, metadata !133}
!185 = metadata !{i32 58, i32 9, metadata !120, metadata !133} ; [ DW_TAG_imported_module ]
!186 = metadata !{i32 59, i32 9, metadata !120, metadata !133}
!187 = metadata !{i32 57, i32 5, metadata !12, metadata !133}
!188 = metadata !{i32 60, i32 5, metadata !120, metadata !133}
!189 = metadata !{i32 68, i32 5, metadata !15, null}

