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
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb4:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !68), !dbg !70
  %"12" = load i32* @"'memory3_freeIndex", align 4, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !72), !dbg !73
  %"13" = load i32* @"'memory3_freeIndex", align 4, !dbg !74
  %"14" = add nsw i32 %"13", 1, !dbg !74
  store i32 %"14", i32* @"'memory3_freeIndex", align 4, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !75), !dbg !76
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !77), !dbg !79
  %"15" = load i32* @"'memory2_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !81), !dbg !82
  %"16" = load i32* @"'memory2_freeIndex", align 4, !dbg !83
  %"17" = add nsw i32 %"16", 1, !dbg !83
  store i32 %"17", i32* @"'memory2_freeIndex", align 4, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !86), !dbg !88
  %"18" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !90), !dbg !91
  %"19" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"20" = add nsw i32 %"19", 1, !dbg !92
  store i32 %"20", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !93), !dbg !94
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !95), !dbg !97
  %"21" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !99), !dbg !100
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"23" = add nsw i32 %"22", 1, !dbg !101
  store i32 %"23", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !102), !dbg !103
  %"24" = sext i32 %"12" to i64, !dbg !104
  %"25" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"24", !dbg !104
  store i32 %x, i32* %"25", align 4, !dbg !104
  %"26" = sext i32 %"15" to i64, !dbg !105
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !105
  store i32 %y, i32* %"27", align 4, !dbg !105
  %"28" = sext i32 %"18" to i64, !dbg !106
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !106
  store i32 %z, i32* %"29", align 4, !dbg !106
  %"30" = sext i32 %"21" to i64, !dbg !107
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !107
  store i32 0, i32* %"31", align 4, !dbg !107
  %"32" = sext i32 %"12" to i64, !dbg !108
  %"33" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"32", !dbg !108
  %"34" = sext i32 %"18" to i64, !dbg !108
  %"35" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"34", !dbg !108
  %"36" = load i32* %"35", align 4, !dbg !108
  %"37" = sext i32 %"15" to i64, !dbg !110
  %"38" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"37", !dbg !110
  %"39" = sext i32 %"18" to i64, !dbg !110
  %"40" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"39", !dbg !110
  %"41" = load i32* %"40", align 4, !dbg !110
  %"42" = sext i32 %"15" to i64, !dbg !113
  %"43" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"42", !dbg !113
  %"44" = sext i32 %"15" to i64, !dbg !113
  %"45" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"44", !dbg !113
  %"46" = sext i32 %"21" to i64, !dbg !115
  %"47" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"46", !dbg !115
  %"48" = sext i32 %"21" to i64, !dbg !115
  %"49" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"48", !dbg !115
  br label %test_fun_bb5, !dbg !116

test_fun_bb5:                                     ; preds = %test_fun_bb8, %test_fun_bb4
  %"50" = load i32* %"33", align 4, !dbg !108
  %"51" = icmp sgt i32 %"50", %"36", !dbg !108
  br i1 %"51", label %test_fun_bb6, label %test_fun_bb9, !dbg !108

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb7
  %"52" = load i32* %"38", align 4, !dbg !110
  %"53" = icmp sgt i32 %"52", %"41", !dbg !110
  br i1 %"53", label %test_fun_bb7, label %test_fun_bb8, !dbg !110

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"54" = load i32* %"43", align 4, !dbg !113
  %"55" = sub nsw i32 %"54", 1, !dbg !113
  store i32 %"55", i32* %"45", align 4, !dbg !113
  %"56" = load i32* %"47", align 4, !dbg !115
  %"57" = add nsw i32 %"56", 1, !dbg !115
  store i32 %"57", i32* %"49", align 4, !dbg !115
  br label %test_fun_bb6, !dbg !117

test_fun_bb8:                                     ; preds = %test_fun_bb6
  %"58" = sext i32 %"21" to i64, !dbg !118
  %"59" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"58", !dbg !118
  %"60" = load i32* %"59", align 4, !dbg !118
  %"61" = add nsw i32 %"60", 1, !dbg !118
  %"62" = sext i32 %"21" to i64, !dbg !118
  %"63" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"62", !dbg !118
  store i32 %"61", i32* %"63", align 4, !dbg !118
  %"64" = sext i32 %"12" to i64, !dbg !119
  %"65" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"64", !dbg !119
  %"66" = load i32* %"65", align 4, !dbg !119
  %"67" = sub nsw i32 %"66", 1, !dbg !119
  %"68" = sext i32 %"12" to i64, !dbg !119
  %"69" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"68", !dbg !119
  store i32 %"67", i32* %"69", align 4, !dbg !119
  br label %test_fun_bb5, !dbg !120

test_fun_bb9:                                     ; preds = %test_fun_bb5
  %"70" = sext i32 %"21" to i64, !dbg !121
  %"71" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"70", !dbg !121
  %"72" = load i32* %"71", align 4, !dbg !121
  ret i32 %"72", !dbg !121
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"73" = call i32 @__VERIFIER_nondet_int(), !dbg !122
  %"74" = call i32 @__VERIFIER_nondet_int(), !dbg !123
  %"75" = call i32 @__VERIFIER_nondet_int(), !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !125), !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !128), !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !132), !dbg !134
  %"76" = load i32* @"'memory3_freeIndex", align 4, !dbg !135
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !136), !dbg !137
  %"77" = load i32* @"'memory3_freeIndex", align 4, !dbg !138
  %"78" = add nsw i32 %"77", 1, !dbg !138
  store i32 %"78", i32* @"'memory3_freeIndex", align 4, !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !139), !dbg !140
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !141), !dbg !143
  %"79" = load i32* @"'memory2_freeIndex", align 4, !dbg !144
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !145), !dbg !146
  %"80" = load i32* @"'memory2_freeIndex", align 4, !dbg !147
  %"81" = add nsw i32 %"80", 1, !dbg !147
  store i32 %"81", i32* @"'memory2_freeIndex", align 4, !dbg !147
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !148), !dbg !149
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !150), !dbg !152
  %"82" = load i32* @"'memory1_freeIndex", align 4, !dbg !153
  call void @llvm.dbg.value(metadata !{i32 %"82"}, i64 0, metadata !154), !dbg !155
  %"83" = load i32* @"'memory1_freeIndex", align 4, !dbg !156
  %"84" = add nsw i32 %"83", 1, !dbg !156
  store i32 %"84", i32* @"'memory1_freeIndex", align 4, !dbg !156
  call void @llvm.dbg.value(metadata !{i32 %"82"}, i64 0, metadata !157), !dbg !158
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !159), !dbg !161
  %"85" = load i32* @"'memory0_freeIndex", align 4, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %"85"}, i64 0, metadata !163), !dbg !164
  %"86" = load i32* @"'memory0_freeIndex", align 4, !dbg !165
  %"87" = add nsw i32 %"86", 1, !dbg !165
  store i32 %"87", i32* @"'memory0_freeIndex", align 4, !dbg !165
  call void @llvm.dbg.value(metadata !{i32 %"85"}, i64 0, metadata !166), !dbg !167
  %"88" = sext i32 %"76" to i64, !dbg !168
  %"89" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"88", !dbg !168
  store i32 %"73", i32* %"89", align 4, !dbg !168
  %"90" = sext i32 %"79" to i64, !dbg !169
  %"91" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"90", !dbg !169
  store i32 %"74", i32* %"91", align 4, !dbg !169
  %"92" = sext i32 %"82" to i64, !dbg !170
  %"93" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"92", !dbg !170
  store i32 %"75", i32* %"93", align 4, !dbg !170
  %"94" = sext i32 %"85" to i64, !dbg !171
  %"95" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"94", !dbg !171
  store i32 0, i32* %"95", align 4, !dbg !171
  %"96" = sext i32 %"76" to i64, !dbg !172
  %"97" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"96", !dbg !172
  %"98" = sext i32 %"82" to i64, !dbg !172
  %"99" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"98", !dbg !172
  %"100" = load i32* %"99", align 4, !dbg !172
  %"101" = sext i32 %"79" to i64, !dbg !173
  %"102" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"101", !dbg !173
  %"103" = sext i32 %"82" to i64, !dbg !173
  %"104" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"103", !dbg !173
  %"105" = load i32* %"104", align 4, !dbg !173
  %"106" = sext i32 %"79" to i64, !dbg !174
  %"107" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"106", !dbg !174
  %"108" = sext i32 %"79" to i64, !dbg !174
  %"109" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"108", !dbg !174
  %"110" = sext i32 %"85" to i64, !dbg !175
  %"111" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"110", !dbg !175
  %"112" = sext i32 %"85" to i64, !dbg !175
  %"113" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"112", !dbg !175
  br label %main_bb11, !dbg !176

main_bb11:                                        ; preds = %main_bb14, %main_bb10
  %"114" = load i32* %"97", align 4, !dbg !172
  %"115" = icmp sgt i32 %"114", %"100", !dbg !172
  br i1 %"115", label %main_bb12, label %main_test_fun.exit, !dbg !172

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %"116" = load i32* %"102", align 4, !dbg !173
  %"117" = icmp sgt i32 %"116", %"105", !dbg !173
  br i1 %"117", label %main_bb13, label %main_bb14, !dbg !173

main_bb13:                                        ; preds = %main_bb12
  %"118" = load i32* %"107", align 4, !dbg !174
  %"119" = sub nsw i32 %"118", 1, !dbg !174
  store i32 %"119", i32* %"109", align 4, !dbg !174
  %"120" = load i32* %"111", align 4, !dbg !175
  %"121" = add nsw i32 %"120", 1, !dbg !175
  store i32 %"121", i32* %"113", align 4, !dbg !175
  br label %main_bb12, !dbg !177

main_bb14:                                        ; preds = %main_bb12
  %"122" = sext i32 %"85" to i64, !dbg !178
  %"123" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"122", !dbg !178
  %"124" = load i32* %"123", align 4, !dbg !178
  %"125" = add nsw i32 %"124", 1, !dbg !178
  %"126" = sext i32 %"85" to i64, !dbg !178
  %"127" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"126", !dbg !178
  store i32 %"125", i32* %"127", align 4, !dbg !178
  %"128" = sext i32 %"76" to i64, !dbg !179
  %"129" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"128", !dbg !179
  %"130" = load i32* %"129", align 4, !dbg !179
  %"131" = sub nsw i32 %"130", 1, !dbg !179
  %"132" = sext i32 %"76" to i64, !dbg !179
  %"133" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"132", !dbg !179
  store i32 %"131", i32* %"133", align 4, !dbg !179
  br label %main_bb11, !dbg !180

main_test_fun.exit:                               ; preds = %main_bb11
  %"134" = sext i32 %"85" to i64, !dbg !181
  %"135" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"134", !dbg !181
  %"136" = load i32* %"135", align 4, !dbg !181
  ret i32 %"136", !dbg !126
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
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 41, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @test_fun, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [test_fun]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 62, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 62} ; [ DW_TAG_subprogram ] [line 62] [def] [main]
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
!62 = metadata !{i32 41, i32 18, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 41]
!64 = metadata !{i32 41, i32 25, metadata !12, null}
!65 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !5, i32 50331689, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 41]
!66 = metadata !{i32 41, i32 32, metadata !12, null}
!67 = metadata !{i32 1}
!68 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [size] [line 35]
!69 = metadata !{i32 43, i32 17, metadata !12, null}
!70 = metadata !{i32 35, i32 26, metadata !11, metadata !69}
!71 = metadata !{i32 36, i32 4, metadata !11, metadata !69}
!72 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!73 = metadata !{i32 36, i32 8, metadata !11, metadata !69}
!74 = metadata !{i32 37, i32 4, metadata !11, metadata !69}
!75 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!76 = metadata !{i32 43, i32 9, metadata !12, null}
!77 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !78} ; [ DW_TAG_arg_variable ] [size] [line 26]
!78 = metadata !{i32 44, i32 17, metadata !12, null}
!79 = metadata !{i32 26, i32 26, metadata !10, metadata !78}
!80 = metadata !{i32 27, i32 4, metadata !10, metadata !78}
!81 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !78} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!82 = metadata !{i32 27, i32 8, metadata !10, metadata !78}
!83 = metadata !{i32 28, i32 4, metadata !10, metadata !78}
!84 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!85 = metadata !{i32 44, i32 9, metadata !12, null}
!86 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [size] [line 17]
!87 = metadata !{i32 45, i32 17, metadata !12, null}
!88 = metadata !{i32 17, i32 26, metadata !9, metadata !87}
!89 = metadata !{i32 18, i32 4, metadata !9, metadata !87}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !87} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!91 = metadata !{i32 18, i32 8, metadata !9, metadata !87}
!92 = metadata !{i32 19, i32 4, metadata !9, metadata !87}
!93 = metadata !{i32 786688, metadata !12, metadata !"z_ref", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z_ref] [line 45]
!94 = metadata !{i32 45, i32 9, metadata !12, null}
!95 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [size] [line 8]
!96 = metadata !{i32 46, i32 13, metadata !12, null}
!97 = metadata !{i32 8, i32 26, metadata !4, metadata !96} ; [ DW_TAG_imported_declaration ]
!98 = metadata !{i32 9, i32 4, metadata !4, metadata !96}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!100 = metadata !{i32 9, i32 8, metadata !4, metadata !96}
!101 = metadata !{i32 10, i32 4, metadata !4, metadata !96}
!102 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 46]
!103 = metadata !{i32 46, i32 9, metadata !12, null}
!104 = metadata !{i32 47, i32 5, metadata !12, null}
!105 = metadata !{i32 48, i32 5, metadata !12, null}
!106 = metadata !{i32 49, i32 5, metadata !12, null}
!107 = metadata !{i32 50, i32 5, metadata !12, null}
!108 = metadata !{i32 51, i32 5, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 52, i32 9, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !112, i32 52, i32 9, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 45, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!113 = metadata !{i32 53, i32 13, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !112, i32 52, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!115 = metadata !{i32 54, i32 13, metadata !114, null}
!116 = metadata !{i32 51, i32 5, metadata !12, null}
!117 = metadata !{i32 55, i32 9, metadata !114, null}
!118 = metadata !{i32 56, i32 9, metadata !112, null}
!119 = metadata !{i32 57, i32 9, metadata !112, null}
!120 = metadata !{i32 58, i32 5, metadata !112, null} ; [ DW_TAG_imported_module ]
!121 = metadata !{i32 59, i32 5, metadata !12, null}
!122 = metadata !{i32 63, i32 19, metadata !15, null}
!123 = metadata !{i32 63, i32 43, metadata !15, null}
!124 = metadata !{i32 63, i32 67, metadata !15, null}
!125 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, metadata !126} ; [ DW_TAG_arg_variable ] [x] [line 41]
!126 = metadata !{i32 63, i32 10, metadata !15, null}
!127 = metadata !{i32 41, i32 18, metadata !12, metadata !126}
!128 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, metadata !126} ; [ DW_TAG_arg_variable ] [y] [line 41]
!129 = metadata !{i32 41, i32 25, metadata !12, metadata !126}
!130 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !5, i32 50331689, metadata !8, i32 0, metadata !126} ; [ DW_TAG_arg_variable ] [z] [line 41]
!131 = metadata !{i32 41, i32 32, metadata !12, metadata !126}
!132 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [size] [line 35]
!133 = metadata !{i32 43, i32 17, metadata !12, metadata !126}
!134 = metadata !{i32 35, i32 26, metadata !11, metadata !133}
!135 = metadata !{i32 36, i32 4, metadata !11, metadata !133}
!136 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!137 = metadata !{i32 36, i32 8, metadata !11, metadata !133}
!138 = metadata !{i32 37, i32 4, metadata !11, metadata !133}
!139 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!140 = metadata !{i32 43, i32 9, metadata !12, metadata !126}
!141 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !142} ; [ DW_TAG_arg_variable ] [size] [line 26]
!142 = metadata !{i32 44, i32 17, metadata !12, metadata !126}
!143 = metadata !{i32 26, i32 26, metadata !10, metadata !142}
!144 = metadata !{i32 27, i32 4, metadata !10, metadata !142}
!145 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !142} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!146 = metadata !{i32 27, i32 8, metadata !10, metadata !142}
!147 = metadata !{i32 28, i32 4, metadata !10, metadata !142}
!148 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!149 = metadata !{i32 44, i32 9, metadata !12, metadata !126}
!150 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !151} ; [ DW_TAG_arg_variable ] [size] [line 17]
!151 = metadata !{i32 45, i32 17, metadata !12, metadata !126}
!152 = metadata !{i32 17, i32 26, metadata !9, metadata !151}
!153 = metadata !{i32 18, i32 4, metadata !9, metadata !151}
!154 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !151} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!155 = metadata !{i32 18, i32 8, metadata !9, metadata !151}
!156 = metadata !{i32 19, i32 4, metadata !9, metadata !151}
!157 = metadata !{i32 786688, metadata !12, metadata !"z_ref", metadata !5, i32 45, metadata !8, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [z_ref] [line 45]
!158 = metadata !{i32 45, i32 9, metadata !12, metadata !126}
!159 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !160} ; [ DW_TAG_arg_variable ] [size] [line 8]
!160 = metadata !{i32 46, i32 13, metadata !12, metadata !126}
!161 = metadata !{i32 8, i32 26, metadata !4, metadata !160} ; [ DW_TAG_imported_declaration ]
!162 = metadata !{i32 9, i32 4, metadata !4, metadata !160}
!163 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !160} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!164 = metadata !{i32 9, i32 8, metadata !4, metadata !160}
!165 = metadata !{i32 10, i32 4, metadata !4, metadata !160}
!166 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [c] [line 46]
!167 = metadata !{i32 46, i32 9, metadata !12, metadata !126}
!168 = metadata !{i32 47, i32 5, metadata !12, metadata !126}
!169 = metadata !{i32 48, i32 5, metadata !12, metadata !126}
!170 = metadata !{i32 49, i32 5, metadata !12, metadata !126}
!171 = metadata !{i32 50, i32 5, metadata !12, metadata !126}
!172 = metadata !{i32 51, i32 5, metadata !109, metadata !126}
!173 = metadata !{i32 52, i32 9, metadata !111, metadata !126}
!174 = metadata !{i32 53, i32 13, metadata !114, metadata !126}
!175 = metadata !{i32 54, i32 13, metadata !114, metadata !126}
!176 = metadata !{i32 51, i32 5, metadata !12, metadata !126}
!177 = metadata !{i32 55, i32 9, metadata !114, metadata !126}
!178 = metadata !{i32 56, i32 9, metadata !112, metadata !126}
!179 = metadata !{i32 57, i32 9, metadata !112, metadata !126}
!180 = metadata !{i32 58, i32 5, metadata !112, metadata !126} ; [ DW_TAG_imported_module ]
!181 = metadata !{i32 59, i32 5, metadata !12, metadata !126}

