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
  %"34" = sext i32 %"15" to i64, !dbg !108
  %"35" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"34", !dbg !108
  %"36" = sext i32 %"12" to i64, !dbg !110
  %"37" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"36", !dbg !110
  %"38" = sext i32 %"18" to i64, !dbg !110
  %"39" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"38", !dbg !110
  %"40" = load i32* %"39", align 4, !dbg !110
  %"41" = sext i32 %"15" to i64, !dbg !112
  %"42" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"41", !dbg !112
  %"43" = sext i32 %"18" to i64, !dbg !112
  %"44" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"43", !dbg !112
  %"45" = load i32* %"44", align 4, !dbg !112
  %"46" = sext i32 %"12" to i64, !dbg !115
  %"47" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"46", !dbg !115
  %"48" = sext i32 %"12" to i64, !dbg !115
  %"49" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"48", !dbg !115
  %"50" = sext i32 %"15" to i64, !dbg !117
  %"51" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"50", !dbg !117
  %"52" = sext i32 %"15" to i64, !dbg !117
  %"53" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"52", !dbg !117
  %"54" = sext i32 %"21" to i64, !dbg !118
  %"55" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"54", !dbg !118
  %"56" = sext i32 %"21" to i64, !dbg !118
  %"57" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"56", !dbg !118
  br label %test_fun_bb5, !dbg !119

test_fun_bb5:                                     ; preds = %test_fun_bb7, %test_fun_bb4
  %"58" = load i32* %"33", align 4, !dbg !108
  %"59" = load i32* %"35", align 4, !dbg !108
  %"60" = icmp eq i32 %"58", %"59", !dbg !108
  br i1 %"60", label %test_fun_bb6, label %test_fun_.critedge, !dbg !108

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"61" = load i32* %"37", align 4, !dbg !110
  %"62" = icmp sgt i32 %"61", %"40", !dbg !110
  br i1 %"62", label %test_fun_bb7, label %test_fun_.critedge, !dbg !120

test_fun_bb7:                                     ; preds = %test_fun_bb6, %test_fun_bb8
  %"63" = load i32* %"42", align 4, !dbg !112
  %"64" = icmp sgt i32 %"63", %"45", !dbg !112
  br i1 %"64", label %test_fun_bb8, label %test_fun_bb5, !dbg !112

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"65" = load i32* %"47", align 4, !dbg !115
  %"66" = sub nsw i32 %"65", 1, !dbg !115
  store i32 %"66", i32* %"49", align 4, !dbg !115
  %"67" = load i32* %"51", align 4, !dbg !117
  %"68" = sub nsw i32 %"67", 1, !dbg !117
  store i32 %"68", i32* %"53", align 4, !dbg !117
  %"69" = load i32* %"55", align 4, !dbg !118
  %"70" = add nsw i32 %"69", 1, !dbg !118
  store i32 %"70", i32* %"57", align 4, !dbg !118
  br label %test_fun_bb7, !dbg !122

test_fun_.critedge:                               ; preds = %test_fun_bb5, %test_fun_bb6
  %"71" = sext i32 %"21" to i64, !dbg !123
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !123
  %"73" = load i32* %"72", align 4, !dbg !123
  ret i32 %"73", !dbg !123
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"74" = call i32 @__VERIFIER_nondet_int(), !dbg !124
  %"75" = call i32 @__VERIFIER_nondet_int(), !dbg !125
  %"76" = call i32 @__VERIFIER_nondet_int(), !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !127), !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !132), !dbg !133
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !134), !dbg !136
  %"77" = load i32* @"'memory3_freeIndex", align 4, !dbg !137
  call void @llvm.dbg.value(metadata !{i32 %"77"}, i64 0, metadata !138), !dbg !139
  %"78" = load i32* @"'memory3_freeIndex", align 4, !dbg !140
  %"79" = add nsw i32 %"78", 1, !dbg !140
  store i32 %"79", i32* @"'memory3_freeIndex", align 4, !dbg !140
  call void @llvm.dbg.value(metadata !{i32 %"77"}, i64 0, metadata !141), !dbg !142
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !143), !dbg !145
  %"80" = load i32* @"'memory2_freeIndex", align 4, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !147), !dbg !148
  %"81" = load i32* @"'memory2_freeIndex", align 4, !dbg !149
  %"82" = add nsw i32 %"81", 1, !dbg !149
  store i32 %"82", i32* @"'memory2_freeIndex", align 4, !dbg !149
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !150), !dbg !151
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !152), !dbg !154
  %"83" = load i32* @"'memory1_freeIndex", align 4, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %"83"}, i64 0, metadata !156), !dbg !157
  %"84" = load i32* @"'memory1_freeIndex", align 4, !dbg !158
  %"85" = add nsw i32 %"84", 1, !dbg !158
  store i32 %"85", i32* @"'memory1_freeIndex", align 4, !dbg !158
  call void @llvm.dbg.value(metadata !{i32 %"83"}, i64 0, metadata !159), !dbg !160
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !161), !dbg !163
  %"86" = load i32* @"'memory0_freeIndex", align 4, !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %"86"}, i64 0, metadata !165), !dbg !166
  %"87" = load i32* @"'memory0_freeIndex", align 4, !dbg !167
  %"88" = add nsw i32 %"87", 1, !dbg !167
  store i32 %"88", i32* @"'memory0_freeIndex", align 4, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %"86"}, i64 0, metadata !168), !dbg !169
  %"89" = sext i32 %"77" to i64, !dbg !170
  %"90" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"89", !dbg !170
  store i32 %"74", i32* %"90", align 4, !dbg !170
  %"91" = sext i32 %"80" to i64, !dbg !171
  %"92" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"91", !dbg !171
  store i32 %"75", i32* %"92", align 4, !dbg !171
  %"93" = sext i32 %"83" to i64, !dbg !172
  %"94" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"93", !dbg !172
  store i32 %"76", i32* %"94", align 4, !dbg !172
  %"95" = sext i32 %"86" to i64, !dbg !173
  %"96" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"95", !dbg !173
  store i32 0, i32* %"96", align 4, !dbg !173
  %"97" = sext i32 %"77" to i64, !dbg !174
  %"98" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"97", !dbg !174
  %"99" = sext i32 %"80" to i64, !dbg !174
  %"100" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"99", !dbg !174
  %"101" = sext i32 %"77" to i64, !dbg !175
  %"102" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"101", !dbg !175
  %"103" = sext i32 %"83" to i64, !dbg !175
  %"104" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"103", !dbg !175
  %"105" = load i32* %"104", align 4, !dbg !175
  %"106" = sext i32 %"80" to i64, !dbg !176
  %"107" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"106", !dbg !176
  %"108" = sext i32 %"83" to i64, !dbg !176
  %"109" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"108", !dbg !176
  %"110" = load i32* %"109", align 4, !dbg !176
  %"111" = sext i32 %"77" to i64, !dbg !177
  %"112" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"111", !dbg !177
  %"113" = sext i32 %"77" to i64, !dbg !177
  %"114" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"113", !dbg !177
  %"115" = sext i32 %"80" to i64, !dbg !178
  %"116" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"115", !dbg !178
  %"117" = sext i32 %"80" to i64, !dbg !178
  %"118" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"117", !dbg !178
  %"119" = sext i32 %"86" to i64, !dbg !179
  %"120" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"119", !dbg !179
  %"121" = sext i32 %"86" to i64, !dbg !179
  %"122" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"121", !dbg !179
  br label %main_bb10, !dbg !180

main_bb10:                                        ; preds = %main_bb12, %main_bb9
  %"123" = load i32* %"98", align 4, !dbg !174
  %"124" = load i32* %"100", align 4, !dbg !174
  %"125" = icmp eq i32 %"123", %"124", !dbg !174
  br i1 %"125", label %main_bb11, label %main_test_fun.exit, !dbg !174

main_bb11:                                        ; preds = %main_bb10
  %"126" = load i32* %"102", align 4, !dbg !175
  %"127" = icmp sgt i32 %"126", %"105", !dbg !175
  br i1 %"127", label %main_bb12, label %main_test_fun.exit, !dbg !181

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %"128" = load i32* %"107", align 4, !dbg !176
  %"129" = icmp sgt i32 %"128", %"110", !dbg !176
  br i1 %"129", label %main_bb13, label %main_bb10, !dbg !176

main_bb13:                                        ; preds = %main_bb12
  %"130" = load i32* %"112", align 4, !dbg !177
  %"131" = sub nsw i32 %"130", 1, !dbg !177
  store i32 %"131", i32* %"114", align 4, !dbg !177
  %"132" = load i32* %"116", align 4, !dbg !178
  %"133" = sub nsw i32 %"132", 1, !dbg !178
  store i32 %"133", i32* %"118", align 4, !dbg !178
  %"134" = load i32* %"120", align 4, !dbg !179
  %"135" = add nsw i32 %"134", 1, !dbg !179
  store i32 %"135", i32* %"122", align 4, !dbg !179
  br label %main_bb12, !dbg !182

main_test_fun.exit:                               ; preds = %main_bb10, %main_bb11
  %"136" = sext i32 %"86" to i64, !dbg !183
  %"137" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"136", !dbg !183
  %"138" = load i32* %"137", align 4, !dbg !183
  ret i32 %"138", !dbg !128
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
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 61, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 61} ; [ DW_TAG_subprogram ] [line 61] [def] [main]
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
!110 = metadata !{i32 51, i32 5, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 52, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !114, i32 52, i32 9, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 85, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!115 = metadata !{i32 53, i32 13, metadata !116, null}
!116 = metadata !{i32 786443, metadata !1, metadata !114, i32 52, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!117 = metadata !{i32 54, i32 13, metadata !116, null}
!118 = metadata !{i32 55, i32 13, metadata !116, null}
!119 = metadata !{i32 51, i32 5, metadata !12, null}
!120 = metadata !{i32 51, i32 5, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 3, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!122 = metadata !{i32 56, i32 9, metadata !116, null}
!123 = metadata !{i32 58, i32 5, metadata !12, null} ; [ DW_TAG_imported_module ]
!124 = metadata !{i32 62, i32 19, metadata !15, null}
!125 = metadata !{i32 62, i32 43, metadata !15, null}
!126 = metadata !{i32 62, i32 67, metadata !15, null}
!127 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [x] [line 41]
!128 = metadata !{i32 62, i32 10, metadata !15, null}
!129 = metadata !{i32 41, i32 18, metadata !12, metadata !128}
!130 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [y] [line 41]
!131 = metadata !{i32 41, i32 25, metadata !12, metadata !128}
!132 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !5, i32 50331689, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [z] [line 41]
!133 = metadata !{i32 41, i32 32, metadata !12, metadata !128}
!134 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [size] [line 35]
!135 = metadata !{i32 43, i32 17, metadata !12, metadata !128}
!136 = metadata !{i32 35, i32 26, metadata !11, metadata !135}
!137 = metadata !{i32 36, i32 4, metadata !11, metadata !135}
!138 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!139 = metadata !{i32 36, i32 8, metadata !11, metadata !135}
!140 = metadata !{i32 37, i32 4, metadata !11, metadata !135}
!141 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!142 = metadata !{i32 43, i32 9, metadata !12, metadata !128}
!143 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !144} ; [ DW_TAG_arg_variable ] [size] [line 26]
!144 = metadata !{i32 44, i32 17, metadata !12, metadata !128}
!145 = metadata !{i32 26, i32 26, metadata !10, metadata !144}
!146 = metadata !{i32 27, i32 4, metadata !10, metadata !144}
!147 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !144} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!148 = metadata !{i32 27, i32 8, metadata !10, metadata !144}
!149 = metadata !{i32 28, i32 4, metadata !10, metadata !144}
!150 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!151 = metadata !{i32 44, i32 9, metadata !12, metadata !128}
!152 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !153} ; [ DW_TAG_arg_variable ] [size] [line 17]
!153 = metadata !{i32 45, i32 17, metadata !12, metadata !128}
!154 = metadata !{i32 17, i32 26, metadata !9, metadata !153}
!155 = metadata !{i32 18, i32 4, metadata !9, metadata !153}
!156 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !153} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!157 = metadata !{i32 18, i32 8, metadata !9, metadata !153}
!158 = metadata !{i32 19, i32 4, metadata !9, metadata !153}
!159 = metadata !{i32 786688, metadata !12, metadata !"z_ref", metadata !5, i32 45, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [z_ref] [line 45]
!160 = metadata !{i32 45, i32 9, metadata !12, metadata !128}
!161 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !162} ; [ DW_TAG_arg_variable ] [size] [line 8]
!162 = metadata !{i32 46, i32 13, metadata !12, metadata !128}
!163 = metadata !{i32 8, i32 26, metadata !4, metadata !162} ; [ DW_TAG_imported_declaration ]
!164 = metadata !{i32 9, i32 4, metadata !4, metadata !162}
!165 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !162} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!166 = metadata !{i32 9, i32 8, metadata !4, metadata !162}
!167 = metadata !{i32 10, i32 4, metadata !4, metadata !162}
!168 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [c] [line 46]
!169 = metadata !{i32 46, i32 9, metadata !12, metadata !128}
!170 = metadata !{i32 47, i32 5, metadata !12, metadata !128}
!171 = metadata !{i32 48, i32 5, metadata !12, metadata !128}
!172 = metadata !{i32 49, i32 5, metadata !12, metadata !128}
!173 = metadata !{i32 50, i32 5, metadata !12, metadata !128}
!174 = metadata !{i32 51, i32 5, metadata !109, metadata !128}
!175 = metadata !{i32 51, i32 5, metadata !111, metadata !128}
!176 = metadata !{i32 52, i32 9, metadata !113, metadata !128}
!177 = metadata !{i32 53, i32 13, metadata !116, metadata !128}
!178 = metadata !{i32 54, i32 13, metadata !116, metadata !128}
!179 = metadata !{i32 55, i32 13, metadata !116, metadata !128}
!180 = metadata !{i32 51, i32 5, metadata !12, metadata !128}
!181 = metadata !{i32 51, i32 5, metadata !121, metadata !128}
!182 = metadata !{i32 56, i32 9, metadata !116, metadata !128}
!183 = metadata !{i32 58, i32 5, metadata !12, metadata !128} ; [ DW_TAG_imported_module ]

