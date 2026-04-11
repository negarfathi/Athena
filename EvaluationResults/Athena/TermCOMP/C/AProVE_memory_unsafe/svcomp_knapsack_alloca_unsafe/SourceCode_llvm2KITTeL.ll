; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@memory3 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
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
define void @knapsack(i32 %size, i32 %val, i32 %N, i32 %cost, i32 %best, i32 %M) #0 {
knapsack_bb4:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %val}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %cost}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %best}, i64 0, metadata !69), !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !71), !dbg !72
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !76), !dbg !77
  br label %knapsack_bb5, !dbg !78

knapsack_bb5:                                     ; preds = %knapsack_bb11, %knapsack_bb4
  %j.0 = phi i32 [ 1, %knapsack_bb4 ], [ %"58", %knapsack_bb11 ]
  %"12" = icmp sle i32 %j.0, %N, !dbg !80
  br i1 %"12", label %knapsack_bb6, label %knapsack_bb12, !dbg !80

knapsack_bb6:                                     ; preds = %knapsack_bb5, %knapsack_bb10
  %i.0 = phi i32 [ %"57", %knapsack_bb10 ], [ 1, %knapsack_bb5 ]
  %"13" = icmp sle i32 %i.0, %M, !dbg !83
  br i1 %"13", label %knapsack_bb7, label %knapsack_bb11, !dbg !83

knapsack_bb7:                                     ; preds = %knapsack_bb6
  %"14" = add nsw i32 %size, %j.0, !dbg !88
  %"15" = sext i32 %"14" to i64, !dbg !88
  %"16" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"15", !dbg !88
  %"17" = load i32* %"16", align 4, !dbg !88
  %"18" = icmp sge i32 %i.0, %"17", !dbg !88
  br i1 %"18", label %knapsack_bb8, label %knapsack_bb10, !dbg !88

knapsack_bb8:                                     ; preds = %knapsack_bb7
  %"19" = add nsw i32 %cost, %i.0, !dbg !91
  %"20" = sext i32 %"19" to i64, !dbg !91
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !91
  %"22" = load i32* %"21", align 4, !dbg !91
  %"23" = add nsw i32 %size, %j.0, !dbg !91
  %"24" = sext i32 %"23" to i64, !dbg !91
  %"25" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"24", !dbg !91
  %"26" = load i32* %"25", align 4, !dbg !91
  %"27" = sub nsw i32 %i.0, %"26", !dbg !91
  %"28" = add nsw i32 %cost, %"27", !dbg !91
  %"29" = sext i32 %"28" to i64, !dbg !91
  %"30" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"29", !dbg !91
  %"31" = load i32* %"30", align 4, !dbg !91
  %"32" = add nsw i32 %val, %j.0, !dbg !91
  %"33" = sext i32 %"32" to i64, !dbg !91
  %"34" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"33", !dbg !91
  %"35" = load i32* %"34", align 4, !dbg !91
  %"36" = add nsw i32 %"31", %"35", !dbg !91
  %"37" = icmp slt i32 %"22", %"36", !dbg !91
  br i1 %"37", label %knapsack_bb9, label %knapsack_bb10, !dbg !91

knapsack_bb9:                                     ; preds = %knapsack_bb8
  %"38" = sext i32 %"23" to i64, !dbg !94
  %"39" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"38", !dbg !94
  %"40" = load i32* %"39", align 4, !dbg !94
  %"41" = sub nsw i32 %i.0, %"40", !dbg !94
  %"42" = add nsw i32 %cost, %"41", !dbg !94
  %"43" = sext i32 %"42" to i64, !dbg !94
  %"44" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"43", !dbg !94
  %"45" = load i32* %"44", align 4, !dbg !94
  %"46" = add nsw i32 %val, %j.0, !dbg !94
  %"47" = sext i32 %"46" to i64, !dbg !94
  %"48" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"47", !dbg !94
  %"49" = load i32* %"48", align 4, !dbg !94
  %"50" = add nsw i32 %"45", %"49", !dbg !94
  %"51" = add nsw i32 %cost, %i.0, !dbg !94
  %"52" = sext i32 %"51" to i64, !dbg !94
  %"53" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"52", !dbg !94
  store i32 %"50", i32* %"53", align 4, !dbg !94
  %"54" = add nsw i32 %best, %i.0, !dbg !96
  %"55" = sext i32 %"54" to i64, !dbg !96
  %"56" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"55", !dbg !96
  store i32 %j.0, i32* %"56", align 4, !dbg !96
  br label %knapsack_bb10, !dbg !97

knapsack_bb10:                                    ; preds = %knapsack_bb7, %knapsack_bb9, %knapsack_bb8
  %"57" = add nsw i32 %i.0, 1, !dbg !98
  br label %knapsack_bb6, !dbg !98

knapsack_bb11:                                    ; preds = %knapsack_bb6
  %"58" = add nsw i32 %j.0, 1, !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !74), !dbg !75
  br label %knapsack_bb5, !dbg !99

knapsack_bb12:                                    ; preds = %knapsack_bb5
  ret void, !dbg !100
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb13:
  %"59" = call i32 @__VERIFIER_nondet_int(), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !102), !dbg !103
  %"60" = call i32 @__VERIFIER_nondet_int(), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !105), !dbg !106
  %"61" = icmp slt i32 %"59", 1, !dbg !107
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !102), !dbg !103
  %. = select i1 %"61", i32 1, i32 %"59", !dbg !107
  %"62" = icmp slt i32 %"60", 1, !dbg !109
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !105), !dbg !106
  %M.0 = select i1 %"62", i32 1, i32 %"60", !dbg !109
  %"63" = mul nsw i32 %., 1, !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !112), !dbg !113
  %"64" = load i32* @"'memory3_freeIndex", align 4, !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !115), !dbg !116
  %"65" = load i32* @"'memory3_freeIndex", align 4, !dbg !117
  %"66" = add nsw i32 %"65", %"63", !dbg !117
  store i32 %"66", i32* @"'memory3_freeIndex", align 4, !dbg !117
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !118), !dbg !119
  %"67" = mul nsw i32 %., 1, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !121), !dbg !122
  %"68" = load i32* @"'memory2_freeIndex", align 4, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !124), !dbg !125
  %"69" = load i32* @"'memory2_freeIndex", align 4, !dbg !126
  %"70" = add nsw i32 %"69", %"67", !dbg !126
  store i32 %"70", i32* @"'memory2_freeIndex", align 4, !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !127), !dbg !128
  %"71" = mul nsw i32 %M.0, 1, !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"71"}, i64 0, metadata !130), !dbg !131
  %"72" = load i32* @"'memory1_freeIndex", align 4, !dbg !132
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !133), !dbg !134
  %"73" = load i32* @"'memory1_freeIndex", align 4, !dbg !135
  %"74" = add nsw i32 %"73", %"71", !dbg !135
  store i32 %"74", i32* @"'memory1_freeIndex", align 4, !dbg !135
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !136), !dbg !137
  %"75" = mul nsw i32 %M.0, 1, !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !139), !dbg !140
  %"76" = load i32* @"'memory0_freeIndex", align 4, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !142), !dbg !143
  %"77" = load i32* @"'memory0_freeIndex", align 4, !dbg !144
  %"78" = add nsw i32 %"77", %"75", !dbg !144
  store i32 %"78", i32* @"'memory0_freeIndex", align 4, !dbg !144
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !145), !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !147), !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !150), !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !152), !dbg !153
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !154), !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !156), !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %M.0}, i64 0, metadata !158), !dbg !159
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !160), !dbg !161
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !162), !dbg !163
  br label %main_bb14, !dbg !164

main_bb14:                                        ; preds = %main_bb20, %main_bb13
  %j.0.i = phi i32 [ 1, %main_bb13 ], [ %"125", %main_bb20 ], !dbg !148
  %"79" = icmp sle i32 %j.0.i, %., !dbg !165
  br i1 %"79", label %main_bb15, label %main_knapsack.exit, !dbg !165

main_bb15:                                        ; preds = %main_bb19, %main_bb14
  %i.0.i = phi i32 [ %"124", %main_bb19 ], [ 1, %main_bb14 ], !dbg !148
  %"80" = icmp sle i32 %i.0.i, %M.0, !dbg !166
  br i1 %"80", label %main_bb16, label %main_bb20, !dbg !166

main_bb16:                                        ; preds = %main_bb15
  %"81" = add nsw i32 %"64", %j.0.i, !dbg !167
  %"82" = sext i32 %"81" to i64, !dbg !167
  %"83" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"82", !dbg !167
  %"84" = load i32* %"83", align 4, !dbg !167
  %"85" = icmp sge i32 %i.0.i, %"84", !dbg !167
  br i1 %"85", label %main_bb17, label %main_bb19, !dbg !167

main_bb17:                                        ; preds = %main_bb16
  %"86" = add nsw i32 %"72", %i.0.i, !dbg !168
  %"87" = sext i32 %"86" to i64, !dbg !168
  %"88" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"87", !dbg !168
  %"89" = load i32* %"88", align 4, !dbg !168
  %"90" = add nsw i32 %"64", %j.0.i, !dbg !168
  %"91" = sext i32 %"90" to i64, !dbg !168
  %"92" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"91", !dbg !168
  %"93" = load i32* %"92", align 4, !dbg !168
  %"94" = sub nsw i32 %i.0.i, %"93", !dbg !168
  %"95" = add nsw i32 %"72", %"94", !dbg !168
  %"96" = sext i32 %"95" to i64, !dbg !168
  %"97" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"96", !dbg !168
  %"98" = load i32* %"97", align 4, !dbg !168
  %"99" = add nsw i32 %"68", %j.0.i, !dbg !168
  %"100" = sext i32 %"99" to i64, !dbg !168
  %"101" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"100", !dbg !168
  %"102" = load i32* %"101", align 4, !dbg !168
  %"103" = add nsw i32 %"98", %"102", !dbg !168
  %"104" = icmp slt i32 %"89", %"103", !dbg !168
  br i1 %"104", label %main_bb18, label %main_bb19, !dbg !168

main_bb18:                                        ; preds = %main_bb17
  %"105" = sext i32 %"90" to i64, !dbg !169
  %"106" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"105", !dbg !169
  %"107" = load i32* %"106", align 4, !dbg !169
  %"108" = sub nsw i32 %i.0.i, %"107", !dbg !169
  %"109" = add nsw i32 %"72", %"108", !dbg !169
  %"110" = sext i32 %"109" to i64, !dbg !169
  %"111" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"110", !dbg !169
  %"112" = load i32* %"111", align 4, !dbg !169
  %"113" = add nsw i32 %"68", %j.0.i, !dbg !169
  %"114" = sext i32 %"113" to i64, !dbg !169
  %"115" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"114", !dbg !169
  %"116" = load i32* %"115", align 4, !dbg !169
  %"117" = add nsw i32 %"112", %"116", !dbg !169
  %"118" = add nsw i32 %"72", %i.0.i, !dbg !169
  %"119" = sext i32 %"118" to i64, !dbg !169
  %"120" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"119", !dbg !169
  store i32 %"117", i32* %"120", align 4, !dbg !169
  %"121" = add nsw i32 %"76", %i.0.i, !dbg !170
  %"122" = sext i32 %"121" to i64, !dbg !170
  %"123" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"122", !dbg !170
  store i32 %j.0.i, i32* %"123", align 4, !dbg !170
  br label %main_bb19, !dbg !171

main_bb19:                                        ; preds = %main_bb18, %main_bb17, %main_bb16
  %"124" = add nsw i32 %i.0.i, 1, !dbg !172
  br label %main_bb15, !dbg !172

main_bb20:                                        ; preds = %main_bb15
  %"125" = add nsw i32 %j.0.i, 1, !dbg !173
  call void @llvm.dbg.value(metadata !{i32 %"125"}, i64 0, metadata !160), !dbg !161
  br label %main_bb14, !dbg !173

main_knapsack.exit:                               ; preds = %main_bb14
  ret i32 0, !dbg !174
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
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"knapsack", metadata !"knapsack", metadata !"", i32 41, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32, i32)* @knapsack, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [knapsack]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 56, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 56] [def] [main]
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
!61 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 41]
!62 = metadata !{i32 41, i32 19, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"val", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [val] [line 41]
!64 = metadata !{i32 41, i32 29, metadata !12, null}
!65 = metadata !{i32 786689, metadata !12, metadata !"N", metadata !5, i32 50331689, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 41]
!66 = metadata !{i32 41, i32 38, metadata !12, null}
!67 = metadata !{i32 786689, metadata !12, metadata !"cost", metadata !5, i32 67108905, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cost] [line 41]
!68 = metadata !{i32 41, i32 45, metadata !12, null}
!69 = metadata !{i32 786689, metadata !12, metadata !"best", metadata !5, i32 83886121, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [best] [line 41]
!70 = metadata !{i32 41, i32 55, metadata !12, null}
!71 = metadata !{i32 786689, metadata !12, metadata !"M", metadata !5, i32 100663337, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 41]
!72 = metadata !{i32 41, i32 65, metadata !12, null}
!73 = metadata !{i32 1}
!74 = metadata !{i32 786688, metadata !12, metadata !"j", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 43]
!75 = metadata !{i32 43, i32 12, metadata !12, null}
!76 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 43]
!77 = metadata !{i32 43, i32 9, metadata !12, null}
!78 = metadata !{i32 44, i32 10, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !12, i32 44, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 44, i32 10, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !82, i32 44, i32 10, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 786443, metadata !1, metadata !79, i32 44, i32 10, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 45, i32 14, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 45, i32 14, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 45, i32 14, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 45, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!87 = metadata !{i32 786443, metadata !1, metadata !79, i32 44, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 46, i32 17, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 46, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 786443, metadata !1, metadata !86, i32 45, i32 34, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 47, i32 21, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 47, i32 21, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 786443, metadata !1, metadata !89, i32 46, i32 43, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 48, i32 21, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !92, i32 47, i32 107, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 49, i32 21, metadata !95, null}
!97 = metadata !{i32 50, i32 17, metadata !95, null}
!98 = metadata !{i32 45, i32 29, metadata !86, null}
!99 = metadata !{i32 44, i32 25, metadata !79, null}
!100 = metadata !{i32 54, i32 1, metadata !12, null}
!101 = metadata !{i32 57, i32 11, metadata !15, null}
!102 = metadata !{i32 786688, metadata !15, metadata !"N", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 57]
!103 = metadata !{i32 57, i32 7, metadata !15, null}
!104 = metadata !{i32 58, i32 11, metadata !15, null} ; [ DW_TAG_imported_module ]
!105 = metadata !{i32 786688, metadata !15, metadata !"M", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [M] [line 58]
!106 = metadata !{i32 58, i32 7, metadata !15, null} ; [ DW_TAG_imported_module ]
!107 = metadata !{i32 59, i32 7, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !15, i32 59, i32 7, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!109 = metadata !{i32 62, i32 7, metadata !110, null}
!110 = metadata !{i32 786443, metadata !1, metadata !15, i32 62, i32 7, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!111 = metadata !{i32 65, i32 14, metadata !15, null}
!112 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !111} ; [ DW_TAG_arg_variable ] [size] [line 35]
!113 = metadata !{i32 35, i32 26, metadata !11, metadata !111}
!114 = metadata !{i32 36, i32 4, metadata !11, metadata !111}
!115 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !111} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!116 = metadata !{i32 36, i32 8, metadata !11, metadata !111}
!117 = metadata !{i32 37, i32 4, metadata !11, metadata !111}
!118 = metadata !{i32 786688, metadata !15, metadata !"size", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 65]
!119 = metadata !{i32 65, i32 7, metadata !15, null}
!120 = metadata !{i32 66, i32 13, metadata !15, null}
!121 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !120} ; [ DW_TAG_arg_variable ] [size] [line 26]
!122 = metadata !{i32 26, i32 26, metadata !10, metadata !120}
!123 = metadata !{i32 27, i32 4, metadata !10, metadata !120}
!124 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !120} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!125 = metadata !{i32 27, i32 8, metadata !10, metadata !120}
!126 = metadata !{i32 28, i32 4, metadata !10, metadata !120}
!127 = metadata !{i32 786688, metadata !15, metadata !"val", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 66]
!128 = metadata !{i32 66, i32 7, metadata !15, null}
!129 = metadata !{i32 67, i32 14, metadata !15, null}
!130 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !129} ; [ DW_TAG_arg_variable ] [size] [line 17]
!131 = metadata !{i32 17, i32 26, metadata !9, metadata !129}
!132 = metadata !{i32 18, i32 4, metadata !9, metadata !129}
!133 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !129} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!134 = metadata !{i32 18, i32 8, metadata !9, metadata !129}
!135 = metadata !{i32 19, i32 4, metadata !9, metadata !129}
!136 = metadata !{i32 786688, metadata !15, metadata !"cost", metadata !5, i32 67, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cost] [line 67]
!137 = metadata !{i32 67, i32 7, metadata !15, null}
!138 = metadata !{i32 68, i32 14, metadata !15, null}
!139 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [size] [line 8]
!140 = metadata !{i32 8, i32 26, metadata !4, metadata !138} ; [ DW_TAG_imported_declaration ]
!141 = metadata !{i32 9, i32 4, metadata !4, metadata !138}
!142 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !138} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!143 = metadata !{i32 9, i32 8, metadata !4, metadata !138}
!144 = metadata !{i32 10, i32 4, metadata !4, metadata !138}
!145 = metadata !{i32 786688, metadata !15, metadata !"best", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 68]
!146 = metadata !{i32 68, i32 7, metadata !15, null}
!147 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777257, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [size] [line 41]
!148 = metadata !{i32 69, i32 3, metadata !15, null}
!149 = metadata !{i32 41, i32 19, metadata !12, metadata !148}
!150 = metadata !{i32 786689, metadata !12, metadata !"val", metadata !5, i32 33554473, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [val] [line 41]
!151 = metadata !{i32 41, i32 29, metadata !12, metadata !148}
!152 = metadata !{i32 786689, metadata !12, metadata !"N", metadata !5, i32 50331689, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [N] [line 41]
!153 = metadata !{i32 41, i32 38, metadata !12, metadata !148}
!154 = metadata !{i32 786689, metadata !12, metadata !"cost", metadata !5, i32 67108905, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [cost] [line 41]
!155 = metadata !{i32 41, i32 45, metadata !12, metadata !148}
!156 = metadata !{i32 786689, metadata !12, metadata !"best", metadata !5, i32 83886121, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [best] [line 41]
!157 = metadata !{i32 41, i32 55, metadata !12, metadata !148}
!158 = metadata !{i32 786689, metadata !12, metadata !"M", metadata !5, i32 100663337, metadata !8, i32 0, metadata !148} ; [ DW_TAG_arg_variable ] [M] [line 41]
!159 = metadata !{i32 41, i32 65, metadata !12, metadata !148}
!160 = metadata !{i32 786688, metadata !12, metadata !"j", metadata !5, i32 43, metadata !8, i32 0, metadata !148} ; [ DW_TAG_auto_variable ] [j] [line 43]
!161 = metadata !{i32 43, i32 12, metadata !12, metadata !148}
!162 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 43, metadata !8, i32 0, metadata !148} ; [ DW_TAG_auto_variable ] [i] [line 43]
!163 = metadata !{i32 43, i32 9, metadata !12, metadata !148}
!164 = metadata !{i32 44, i32 10, metadata !79, metadata !148}
!165 = metadata !{i32 44, i32 10, metadata !81, metadata !148}
!166 = metadata !{i32 45, i32 14, metadata !84, metadata !148}
!167 = metadata !{i32 46, i32 17, metadata !89, metadata !148}
!168 = metadata !{i32 47, i32 21, metadata !92, metadata !148}
!169 = metadata !{i32 48, i32 21, metadata !95, metadata !148}
!170 = metadata !{i32 49, i32 21, metadata !95, metadata !148}
!171 = metadata !{i32 50, i32 17, metadata !95, metadata !148}
!172 = metadata !{i32 45, i32 29, metadata !86, metadata !148}
!173 = metadata !{i32 44, i32 25, metadata !79, metadata !148}
!174 = metadata !{i32 70, i32 3, metadata !15, null}

