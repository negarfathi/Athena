; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@memory3 = common global [100000 x i32] zeroinitializer, align 16
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16

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
define i32 @lis(i32 %a, i32 %N) #0 {
lis_bb4:
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !66), !dbg !67
  %"12" = mul nsw i32 1, %N, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !69), !dbg !70
  %"13" = load i32* @"'memory3_freeIndex", align 4, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !72), !dbg !73
  %"14" = load i32* @"'memory3_freeIndex", align 4, !dbg !74
  %"15" = add nsw i32 %"14", %"12", !dbg !74
  store i32 %"15", i32* @"'memory3_freeIndex", align 4, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !75), !dbg !76
  %"16" = mul nsw i32 1, %N, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !78), !dbg !79
  %"17" = load i32* @"'memory2_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !81), !dbg !82
  %"18" = load i32* @"'memory2_freeIndex", align 4, !dbg !83
  %"19" = add nsw i32 %"18", %"16", !dbg !83
  store i32 %"19", i32* @"'memory2_freeIndex", align 4, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !86), !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !86), !dbg !87
  br label %lis_bb5, !dbg !88

lis_bb5:                                          ; preds = %lis_bb6, %lis_bb4
  %i.0 = phi i32 [ 0, %lis_bb4 ], [ %"27", %lis_bb6 ]
  %"20" = icmp slt i32 %i.0, %N, !dbg !90
  br i1 %"20", label %lis_bb6, label %lis_bb7, !dbg !90

lis_bb6:                                          ; preds = %lis_bb5
  %"21" = add nsw i32 %"13", %i.0, !dbg !93
  %"22" = sext i32 %"21" to i64, !dbg !93
  %"23" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"22", !dbg !93
  store i32 1, i32* %"23", align 4, !dbg !93
  %"24" = add nsw i32 %"17", %i.0, !dbg !93
  %"25" = sext i32 %"24" to i64, !dbg !93
  %"26" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"25", !dbg !93
  store i32 %i.0, i32* %"26", align 4, !dbg !93
  %"27" = add nsw i32 %i.0, 1, !dbg !94
  br label %lis_bb5, !dbg !94

lis_bb7:                                          ; preds = %lis_bb5, %lis_bb13
  %i.1 = phi i32 [ %"60", %lis_bb13 ], [ 1, %lis_bb5 ]
  %"28" = icmp slt i32 %i.1, %N, !dbg !95
  br i1 %"28", label %lis_bb8, label %lis_bb14, !dbg !95

lis_bb8:                                          ; preds = %lis_bb7, %lis_bb12
  %j.0 = phi i32 [ %"59", %lis_bb12 ], [ 0, %lis_bb7 ]
  %"29" = icmp slt i32 %j.0, %i.1, !dbg !99
  br i1 %"29", label %lis_bb9, label %lis_bb13, !dbg !99

lis_bb9:                                          ; preds = %lis_bb8
  %"30" = add nsw i32 %a, %i.1, !dbg !103
  %"31" = sext i32 %"30" to i64, !dbg !103
  %"32" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"31", !dbg !103
  %"33" = load i32* %"32", align 4, !dbg !103
  %"34" = add nsw i32 %a, %j.0, !dbg !103
  %"35" = sext i32 %"34" to i64, !dbg !103
  %"36" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"35", !dbg !103
  %"37" = load i32* %"36", align 4, !dbg !103
  %"38" = icmp sgt i32 %"33", %"37", !dbg !103
  br i1 %"38", label %lis_bb10, label %lis_bb12, !dbg !103

lis_bb10:                                         ; preds = %lis_bb9
  %"39" = add nsw i32 %"13", %i.1, !dbg !105
  %"40" = sext i32 %"39" to i64, !dbg !105
  %"41" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"40", !dbg !105
  %"42" = load i32* %"41", align 4, !dbg !105
  %"43" = add nsw i32 %"13", %j.0, !dbg !105
  %"44" = sext i32 %"43" to i64, !dbg !105
  %"45" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"44", !dbg !105
  %"46" = load i32* %"45", align 4, !dbg !105
  %"47" = add nsw i32 %"46", 1, !dbg !105
  %"48" = icmp slt i32 %"42", %"47", !dbg !105
  br i1 %"48", label %lis_bb11, label %lis_bb12, !dbg !105

lis_bb11:                                         ; preds = %lis_bb10
  %"49" = sext i32 %"43" to i64, !dbg !107
  %"50" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"49", !dbg !107
  %"51" = load i32* %"50", align 4, !dbg !107
  %"52" = add nsw i32 %"51", 1, !dbg !107
  %"53" = add nsw i32 %"13", %i.1, !dbg !107
  %"54" = sext i32 %"53" to i64, !dbg !107
  %"55" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"54", !dbg !107
  store i32 %"52", i32* %"55", align 4, !dbg !107
  %"56" = add nsw i32 %"17", %i.1, !dbg !107
  %"57" = sext i32 %"56" to i64, !dbg !107
  %"58" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"57", !dbg !107
  store i32 %j.0, i32* %"58", align 4, !dbg !107
  br label %lis_bb12, !dbg !107

lis_bb12:                                         ; preds = %lis_bb9, %lis_bb10, %lis_bb11
  %"59" = add nsw i32 %j.0, 1, !dbg !108
  br label %lis_bb8, !dbg !108

lis_bb13:                                         ; preds = %lis_bb8
  %"60" = add nsw i32 %i.1, 1, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !86), !dbg !87
  br label %lis_bb7, !dbg !109

lis_bb14:                                         ; preds = %lis_bb7, %lis_bb17
  %max.0 = phi i32 [ %max.1, %lis_bb17 ], [ 0, %lis_bb7 ]
  %i.2 = phi i32 [ %"70", %lis_bb17 ], [ 0, %lis_bb7 ]
  %"61" = icmp slt i32 %i.2, %N, !dbg !110
  br i1 %"61", label %lis_bb15, label %lis_bb18, !dbg !110

lis_bb15:                                         ; preds = %lis_bb14
  %"62" = add nsw i32 %"13", %i.2, !dbg !114
  %"63" = sext i32 %"62" to i64, !dbg !114
  %"64" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"63", !dbg !114
  %"65" = load i32* %"64", align 4, !dbg !114
  %"66" = icmp slt i32 %max.0, %"65", !dbg !114
  br i1 %"66", label %lis_bb16, label %lis_bb17, !dbg !114

lis_bb16:                                         ; preds = %lis_bb15
  %"67" = sext i32 %"62" to i64, !dbg !116
  %"68" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"67", !dbg !116
  %"69" = load i32* %"68", align 4, !dbg !116
  br label %lis_bb17, !dbg !116

lis_bb17:                                         ; preds = %lis_bb15, %lis_bb16
  %max.1 = phi i32 [ %"69", %lis_bb16 ], [ %max.0, %lis_bb15 ]
  %"70" = add nsw i32 %i.2, 1, !dbg !117
  br label %lis_bb14, !dbg !117

lis_bb18:                                         ; preds = %lis_bb14
  ret i32 %max.0, !dbg !118
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb19:
  %"71" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"71"}, i64 0, metadata !119), !dbg !120
  %"72" = call i32 @__VERIFIER_nondet_int(), !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !122), !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"71"}, i64 0, metadata !124), !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !127), !dbg !128
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !129), !dbg !130
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !131), !dbg !133
  %"73" = load i32* @"'memory3_freeIndex", align 4, !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !135), !dbg !136
  %"74" = load i32* @"'memory3_freeIndex", align 4, !dbg !137
  %"75" = add nsw i32 %"74", %"72", !dbg !137
  store i32 %"75", i32* @"'memory3_freeIndex", align 4, !dbg !137
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !138), !dbg !139
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !140), !dbg !142
  %"76" = load i32* @"'memory2_freeIndex", align 4, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !144), !dbg !145
  %"77" = load i32* @"'memory2_freeIndex", align 4, !dbg !146
  %"78" = add nsw i32 %"77", %"72", !dbg !146
  store i32 %"78", i32* @"'memory2_freeIndex", align 4, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !147), !dbg !148
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !149), !dbg !150
  br label %main_bb20, !dbg !151

main_bb20:                                        ; preds = %main_bb21, %main_bb19
  %i.0.i = phi i32 [ 0, %main_bb19 ], [ %"86", %main_bb21 ], !dbg !125
  %"79" = icmp slt i32 %i.0.i, %"72", !dbg !152
  br i1 %"79", label %main_bb21, label %main_bb22, !dbg !152

main_bb21:                                        ; preds = %main_bb20
  %"80" = add nsw i32 %"73", %i.0.i, !dbg !153
  %"81" = sext i32 %"80" to i64, !dbg !153
  %"82" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"81", !dbg !153
  store i32 1, i32* %"82", align 4, !dbg !153
  %"83" = add nsw i32 %"76", %i.0.i, !dbg !153
  %"84" = sext i32 %"83" to i64, !dbg !153
  %"85" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"84", !dbg !153
  store i32 %i.0.i, i32* %"85", align 4, !dbg !153
  %"86" = add nsw i32 %i.0.i, 1, !dbg !154
  br label %main_bb20, !dbg !154

main_bb22:                                        ; preds = %main_bb28, %main_bb20
  %i.1.i = phi i32 [ %"119", %main_bb28 ], [ 1, %main_bb20 ], !dbg !125
  %"87" = icmp slt i32 %i.1.i, %"72", !dbg !155
  br i1 %"87", label %main_bb23, label %main_bb29, !dbg !155

main_bb23:                                        ; preds = %main_bb27, %main_bb22
  %j.0.i = phi i32 [ %"118", %main_bb27 ], [ 0, %main_bb22 ], !dbg !125
  %"88" = icmp slt i32 %j.0.i, %i.1.i, !dbg !156
  br i1 %"88", label %main_bb24, label %main_bb28, !dbg !156

main_bb24:                                        ; preds = %main_bb23
  %"89" = add nsw i32 %"71", %i.1.i, !dbg !157
  %"90" = sext i32 %"89" to i64, !dbg !157
  %"91" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"90", !dbg !157
  %"92" = load i32* %"91", align 4, !dbg !157
  %"93" = add nsw i32 %"71", %j.0.i, !dbg !157
  %"94" = sext i32 %"93" to i64, !dbg !157
  %"95" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"94", !dbg !157
  %"96" = load i32* %"95", align 4, !dbg !157
  %"97" = icmp sgt i32 %"92", %"96", !dbg !157
  br i1 %"97", label %main_bb25, label %main_bb27, !dbg !157

main_bb25:                                        ; preds = %main_bb24
  %"98" = add nsw i32 %"73", %i.1.i, !dbg !158
  %"99" = sext i32 %"98" to i64, !dbg !158
  %"100" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"99", !dbg !158
  %"101" = load i32* %"100", align 4, !dbg !158
  %"102" = add nsw i32 %"73", %j.0.i, !dbg !158
  %"103" = sext i32 %"102" to i64, !dbg !158
  %"104" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"103", !dbg !158
  %"105" = load i32* %"104", align 4, !dbg !158
  %"106" = add nsw i32 %"105", 1, !dbg !158
  %"107" = icmp slt i32 %"101", %"106", !dbg !158
  br i1 %"107", label %main_bb26, label %main_bb27, !dbg !158

main_bb26:                                        ; preds = %main_bb25
  %"108" = sext i32 %"102" to i64, !dbg !159
  %"109" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"108", !dbg !159
  %"110" = load i32* %"109", align 4, !dbg !159
  %"111" = add nsw i32 %"110", 1, !dbg !159
  %"112" = add nsw i32 %"73", %i.1.i, !dbg !159
  %"113" = sext i32 %"112" to i64, !dbg !159
  %"114" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"113", !dbg !159
  store i32 %"111", i32* %"114", align 4, !dbg !159
  %"115" = add nsw i32 %"76", %i.1.i, !dbg !159
  %"116" = sext i32 %"115" to i64, !dbg !159
  %"117" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"116", !dbg !159
  store i32 %j.0.i, i32* %"117", align 4, !dbg !159
  br label %main_bb27, !dbg !159

main_bb27:                                        ; preds = %main_bb26, %main_bb25, %main_bb24
  %"118" = add nsw i32 %j.0.i, 1, !dbg !160
  br label %main_bb23, !dbg !160

main_bb28:                                        ; preds = %main_bb23
  %"119" = add nsw i32 %i.1.i, 1, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %"119"}, i64 0, metadata !149), !dbg !150
  br label %main_bb22, !dbg !161

main_bb29:                                        ; preds = %main_bb32, %main_bb22
  %max.0.i = phi i32 [ %max.1.i, %main_bb32 ], [ 0, %main_bb22 ], !dbg !125
  %i.2.i = phi i32 [ %"129", %main_bb32 ], [ 0, %main_bb22 ], !dbg !125
  %"120" = icmp slt i32 %i.2.i, %"72", !dbg !162
  br i1 %"120", label %main_bb30, label %main_lis.exit, !dbg !162

main_bb30:                                        ; preds = %main_bb29
  %"121" = add nsw i32 %"73", %i.2.i, !dbg !163
  %"122" = sext i32 %"121" to i64, !dbg !163
  %"123" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"122", !dbg !163
  %"124" = load i32* %"123", align 4, !dbg !163
  %"125" = icmp slt i32 %max.0.i, %"124", !dbg !163
  br i1 %"125", label %main_bb31, label %main_bb32, !dbg !163

main_bb31:                                        ; preds = %main_bb30
  %"126" = sext i32 %"121" to i64, !dbg !164
  %"127" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"126", !dbg !164
  %"128" = load i32* %"127", align 4, !dbg !164
  br label %main_bb32, !dbg !164

main_bb32:                                        ; preds = %main_bb31, %main_bb30
  %max.1.i = phi i32 [ %"128", %main_bb31 ], [ %max.0.i, %main_bb30 ], !dbg !125
  %"129" = add nsw i32 %i.2.i, 1, !dbg !165
  br label %main_bb29, !dbg !165

main_lis.exit:                                    ; preds = %main_bb29
  ret i32 %max.0.i, !dbg !125
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 38, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 38] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"lis", metadata !"lis", metadata !"", i32 44, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @lis, null, null, metadata !2, i32 45} ; [ DW_TAG_subprogram ] [line 44] [def] [scope 45] [lis]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 70, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 70} ; [ DW_TAG_subprogram ] [line 70] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !27, metadata !28, metadata !29}
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 10, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 10] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 19, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 19] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 28, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 28] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 37, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 37] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 9, metadata !24, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 9] [def]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 18, metadata !24, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 18] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 27, metadata !24, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 27] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 36, metadata !24, i32 0, i32 1, [100000 x i32]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 36] [def]
!30 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!31 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!32 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!33 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 11]
!34 = metadata !{i32 11, i32 26, metadata !4, null}
!35 = metadata !{i32 12, i32 4, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 12]
!37 = metadata !{i32 12, i32 8, metadata !4, null}
!38 = metadata !{i32 13, i32 4, metadata !4, null}
!39 = metadata !{i32 14, i32 4, metadata !4, null}
!40 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777236, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 20]
!41 = metadata !{i32 20, i32 26, metadata !9, null}
!42 = metadata !{i32 21, i32 4, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 21]
!44 = metadata !{i32 21, i32 8, metadata !9, null}
!45 = metadata !{i32 22, i32 4, metadata !9, null}
!46 = metadata !{i32 23, i32 4, metadata !9, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777245, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 29]
!48 = metadata !{i32 29, i32 26, metadata !10, null}
!49 = metadata !{i32 30, i32 4, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!51 = metadata !{i32 30, i32 8, metadata !10, null}
!52 = metadata !{i32 31, i32 4, metadata !10, null}
!53 = metadata !{i32 32, i32 4, metadata !10, null}
!54 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777254, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 38]
!55 = metadata !{i32 38, i32 26, metadata !11, null}
!56 = metadata !{i32 39, i32 4, metadata !11, null}
!57 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 39]
!58 = metadata !{i32 39, i32 8, metadata !11, null}
!59 = metadata !{i32 40, i32 4, metadata !11, null}
!60 = metadata !{i32 41, i32 4, metadata !11, null}
!61 = metadata !{i32 786689, metadata !12, metadata !"a", metadata !5, i32 16777260, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 44]
!62 = metadata !{i32 44, i32 13, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"N", metadata !5, i32 33554476, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 44]
!64 = metadata !{i32 44, i32 20, metadata !12, null}
!65 = metadata !{i32 0}
!66 = metadata !{i32 786688, metadata !12, metadata !"max", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 48]
!67 = metadata !{i32 48, i32 15, metadata !12, null}
!68 = metadata !{i32 49, i32 12, metadata !12, null}
!69 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777254, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [size] [line 38]
!70 = metadata !{i32 38, i32 26, metadata !11, metadata !68}
!71 = metadata !{i32 39, i32 4, metadata !11, metadata !68}
!72 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 39, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 39]
!73 = metadata !{i32 39, i32 8, metadata !11, metadata !68}
!74 = metadata !{i32 40, i32 4, metadata !11, metadata !68}
!75 = metadata !{i32 786688, metadata !12, metadata !"best", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [best] [line 46]
!76 = metadata !{i32 46, i32 9, metadata !12, null}
!77 = metadata !{i32 50, i32 12, metadata !12, null}
!78 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777245, metadata !8, i32 0, metadata !77} ; [ DW_TAG_arg_variable ] [size] [line 29]
!79 = metadata !{i32 29, i32 26, metadata !10, metadata !77}
!80 = metadata !{i32 30, i32 4, metadata !10, metadata !77}
!81 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 30, metadata !8, i32 0, metadata !77} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!82 = metadata !{i32 30, i32 8, metadata !10, metadata !77}
!83 = metadata !{i32 31, i32 4, metadata !10, metadata !77}
!84 = metadata !{i32 786688, metadata !12, metadata !"prev", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prev] [line 47]
!85 = metadata !{i32 47, i32 9, metadata !12, null}
!86 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 48]
!87 = metadata !{i32 48, i32 9, metadata !12, null}
!88 = metadata !{i32 52, i32 10, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !12, i32 52, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 52, i32 10, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !92, i32 52, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 786443, metadata !1, metadata !89, i32 52, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 53, i32 9, metadata !89, null}
!94 = metadata !{i32 52, i32 24, metadata !89, null}
!95 = metadata !{i32 55, i32 10, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !97, i32 55, i32 10, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 55, i32 10, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!98 = metadata !{i32 786443, metadata !1, metadata !12, i32 55, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 56, i32 14, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !101, i32 56, i32 14, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 56, i32 14, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 786443, metadata !1, metadata !98, i32 56, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!103 = metadata !{i32 57, i32 17, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !102, i32 57, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!105 = metadata !{i32 57, i32 17, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !104, i32 57, i32 17, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 58, i32 17, metadata !104, null} ; [ DW_TAG_imported_module ]
!108 = metadata !{i32 56, i32 28, metadata !102, null}
!109 = metadata !{i32 55, i32 24, metadata !98, null}
!110 = metadata !{i32 60, i32 10, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 60, i32 10, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 786443, metadata !1, metadata !113, i32 60, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!113 = metadata !{i32 786443, metadata !1, metadata !12, i32 60, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 61, i32 13, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !113, i32 61, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 62, i32 13, metadata !115, null}
!117 = metadata !{i32 60, i32 24, metadata !113, null}
!118 = metadata !{i32 67, i32 5, metadata !12, null}
!119 = metadata !{i32 786688, metadata !15, metadata !"a", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 71]
!120 = metadata !{i32 71, i32 7, metadata !15, null}
!121 = metadata !{i32 72, i32 11, metadata !15, null}
!122 = metadata !{i32 786688, metadata !15, metadata !"N", metadata !5, i32 72, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [N] [line 72]
!123 = metadata !{i32 72, i32 7, metadata !15, null}
!124 = metadata !{i32 786689, metadata !12, metadata !"a", metadata !5, i32 16777260, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [a] [line 44]
!125 = metadata !{i32 73, i32 10, metadata !15, null}
!126 = metadata !{i32 44, i32 13, metadata !12, metadata !125}
!127 = metadata !{i32 786689, metadata !12, metadata !"N", metadata !5, i32 33554476, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [N] [line 44]
!128 = metadata !{i32 44, i32 20, metadata !12, metadata !125}
!129 = metadata !{i32 786688, metadata !12, metadata !"max", metadata !5, i32 48, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [max] [line 48]
!130 = metadata !{i32 48, i32 15, metadata !12, metadata !125}
!131 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777254, metadata !8, i32 0, metadata !132} ; [ DW_TAG_arg_variable ] [size] [line 38]
!132 = metadata !{i32 49, i32 12, metadata !12, metadata !125}
!133 = metadata !{i32 38, i32 26, metadata !11, metadata !132}
!134 = metadata !{i32 39, i32 4, metadata !11, metadata !132}
!135 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 39, metadata !8, i32 0, metadata !132} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 39]
!136 = metadata !{i32 39, i32 8, metadata !11, metadata !132}
!137 = metadata !{i32 40, i32 4, metadata !11, metadata !132}
!138 = metadata !{i32 786688, metadata !12, metadata !"best", metadata !5, i32 46, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [best] [line 46]
!139 = metadata !{i32 46, i32 9, metadata !12, metadata !125}
!140 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777245, metadata !8, i32 0, metadata !141} ; [ DW_TAG_arg_variable ] [size] [line 29]
!141 = metadata !{i32 50, i32 12, metadata !12, metadata !125}
!142 = metadata !{i32 29, i32 26, metadata !10, metadata !141}
!143 = metadata !{i32 30, i32 4, metadata !10, metadata !141}
!144 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 30, metadata !8, i32 0, metadata !141} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!145 = metadata !{i32 30, i32 8, metadata !10, metadata !141}
!146 = metadata !{i32 31, i32 4, metadata !10, metadata !141}
!147 = metadata !{i32 786688, metadata !12, metadata !"prev", metadata !5, i32 47, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [prev] [line 47]
!148 = metadata !{i32 47, i32 9, metadata !12, metadata !125}
!149 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 48, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [i] [line 48]
!150 = metadata !{i32 48, i32 9, metadata !12, metadata !125}
!151 = metadata !{i32 52, i32 10, metadata !89, metadata !125}
!152 = metadata !{i32 52, i32 10, metadata !91, metadata !125}
!153 = metadata !{i32 53, i32 9, metadata !89, metadata !125}
!154 = metadata !{i32 52, i32 24, metadata !89, metadata !125}
!155 = metadata !{i32 55, i32 10, metadata !96, metadata !125}
!156 = metadata !{i32 56, i32 14, metadata !100, metadata !125}
!157 = metadata !{i32 57, i32 17, metadata !104, metadata !125}
!158 = metadata !{i32 57, i32 17, metadata !106, metadata !125}
!159 = metadata !{i32 58, i32 17, metadata !104, metadata !125} ; [ DW_TAG_imported_module ]
!160 = metadata !{i32 56, i32 28, metadata !102, metadata !125}
!161 = metadata !{i32 55, i32 24, metadata !98, metadata !125}
!162 = metadata !{i32 60, i32 10, metadata !111, metadata !125}
!163 = metadata !{i32 61, i32 13, metadata !115, metadata !125}
!164 = metadata !{i32 62, i32 13, metadata !115, metadata !125}
!165 = metadata !{i32 60, i32 24, metadata !113, metadata !125}

