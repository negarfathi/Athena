; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !30), !dbg !31
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !33), !dbg !34
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  %"2" = add nsw i32 %"1", %size, !dbg !35
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !35
  ret i32 %"0", !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !38
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !40), !dbg !41
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  %"5" = add nsw i32 %"4", %size, !dbg !42
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !42
  ret i32 %"3", !dbg !43
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !44), !dbg !45
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !47), !dbg !48
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !49
  %"8" = add nsw i32 %"7", %size, !dbg !49
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !49
  ret i32 %"6", !dbg !50
}

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb3:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !56), !dbg !58
  %"9" = load i32* @"'memory2_freeIndex", align 4, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !60), !dbg !61
  %"10" = load i32* @"'memory2_freeIndex", align 4, !dbg !62
  %"11" = add nsw i32 %"10", 1, !dbg !62
  store i32 %"11", i32* @"'memory2_freeIndex", align 4, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !63), !dbg !64
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !65), !dbg !67
  %"12" = load i32* @"'memory1_freeIndex", align 4, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !69), !dbg !70
  %"13" = load i32* @"'memory1_freeIndex", align 4, !dbg !71
  %"14" = add nsw i32 %"13", 1, !dbg !71
  store i32 %"14", i32* @"'memory1_freeIndex", align 4, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !74), !dbg !76
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !78), !dbg !79
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !80
  %"17" = add nsw i32 %"16", 1, !dbg !80
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !81), !dbg !82
  %"18" = sext i32 %"9" to i64, !dbg !83
  %"19" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"18", !dbg !83
  store i32 %x, i32* %"19", align 4, !dbg !83
  %"20" = sext i32 %"12" to i64, !dbg !84
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !84
  store i32 %y, i32* %"21", align 4, !dbg !84
  %"22" = sext i32 %"15" to i64, !dbg !85
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !85
  store i32 0, i32* %"23", align 4, !dbg !85
  %"24" = sext i32 %"9" to i64, !dbg !86
  %"25" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"24", !dbg !86
  %"26" = load i32* %"25", align 4, !dbg !86
  %"27" = icmp sle i32 %"26", 0, !dbg !86
  br i1 %"27", label %test_fun_bb5, label %test_fun_bb4, !dbg !86

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"28" = sext i32 %"12" to i64, !dbg !88
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !88
  %"30" = load i32* %"29", align 4, !dbg !88
  %"31" = icmp sle i32 %"30", 0, !dbg !88
  br i1 %"31", label %test_fun_bb5, label %test_fun_bb6, !dbg !88

test_fun_bb5:                                     ; preds = %test_fun_bb4, %test_fun_bb3
  %"32" = sext i32 %"9" to i64, !dbg !90
  %"33" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"32", !dbg !90
  %"34" = load i32* %"33", align 4, !dbg !90
  %"35" = sext i32 %"12" to i64, !dbg !90
  %"36" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"35", !dbg !90
  %"37" = load i32* %"36", align 4, !dbg !90
  %"38" = add nsw i32 %"34", %"37", !dbg !90
  br label %test_fun_bb15, !dbg !90

test_fun_bb6:                                     ; preds = %test_fun_bb4
  %"39" = sext i32 %"9" to i64, !dbg !92
  %"40" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"39", !dbg !92
  %"41" = sext i32 %"9" to i64, !dbg !94
  %"42" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"41", !dbg !94
  %"43" = sext i32 %"12" to i64, !dbg !94
  %"44" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"43", !dbg !94
  %"45" = load i32* %"44", align 4, !dbg !94
  %"46" = sext i32 %"12" to i64, !dbg !97
  %"47" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"46", !dbg !97
  %"48" = load i32* %"47", align 4, !dbg !97
  %"49" = sext i32 %"9" to i64, !dbg !97
  %"50" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"49", !dbg !97
  %"51" = sext i32 %"15" to i64, !dbg !99
  %"52" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"51", !dbg !99
  %"53" = sext i32 %"15" to i64, !dbg !99
  %"54" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"53", !dbg !99
  %"55" = sext i32 %"9" to i64, !dbg !100
  %"56" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"55", !dbg !100
  %"57" = sext i32 %"9" to i64, !dbg !103
  %"58" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"57", !dbg !103
  %"59" = sext i32 %"9" to i64, !dbg !103
  %"60" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"59", !dbg !103
  br label %test_fun_bb7, !dbg !104

test_fun_bb7:                                     ; preds = %test_fun_bb13, %test_fun_bb6
  %"61" = load i32* %"40", align 4, !dbg !92
  %"62" = icmp eq i32 %"61", 0, !dbg !92
  %"63" = xor i1 %"62", true, !dbg !92
  br i1 %"63", label %test_fun_bb8, label %test_fun_bb14, !dbg !92

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"64" = load i32* %"42", align 4, !dbg !94
  %"65" = icmp sgt i32 %"64", %"45", !dbg !94
  br i1 %"65", label %test_fun_bb9, label %test_fun_bb10, !dbg !94

test_fun_bb9:                                     ; preds = %test_fun_bb8
  store i32 %"48", i32* %"50", align 4, !dbg !97
  br label %test_fun_bb13, !dbg !105

test_fun_bb10:                                    ; preds = %test_fun_bb8
  %"66" = load i32* %"56", align 4, !dbg !100
  %"67" = icmp sle i32 %"66", 0, !dbg !100
  br i1 %"67", label %test_fun_bb11, label %test_fun_bb12, !dbg !100

test_fun_bb11:                                    ; preds = %test_fun_bb10
  %"68" = sext i32 %"9" to i64, !dbg !106
  %"69" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"68", !dbg !106
  %"70" = load i32* %"69", align 4, !dbg !106
  br label %test_fun_bb15, !dbg !106

test_fun_bb12:                                    ; preds = %test_fun_bb10
  %"71" = load i32* %"58", align 4, !dbg !103
  %"72" = sub nsw i32 %"71", 1, !dbg !103
  store i32 %"72", i32* %"60", align 4, !dbg !103
  br label %test_fun_bb13

test_fun_bb13:                                    ; preds = %test_fun_bb12, %test_fun_bb9
  %"73" = load i32* %"52", align 4, !dbg !99
  %"74" = add nsw i32 %"73", 1, !dbg !99
  store i32 %"74", i32* %"54", align 4, !dbg !99
  br label %test_fun_bb7, !dbg !108

test_fun_bb14:                                    ; preds = %test_fun_bb7
  %"75" = sext i32 %"15" to i64, !dbg !109
  %"76" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"75", !dbg !109
  %"77" = load i32* %"76", align 4, !dbg !109
  br label %test_fun_bb15, !dbg !109

test_fun_bb15:                                    ; preds = %test_fun_bb14, %test_fun_bb11, %test_fun_bb5
  %.0 = phi i32 [ %"38", %test_fun_bb5 ], [ %"70", %test_fun_bb11 ], [ %"77", %test_fun_bb14 ]
  ret i32 %.0, !dbg !110
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  %"78" = call i32 @__VERIFIER_nondet_int(), !dbg !111
  %"79" = call i32 @__VERIFIER_nondet_int(), !dbg !112
  call void @llvm.dbg.value(metadata !{i32 %"78"}, i64 0, metadata !113), !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !116), !dbg !117
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !118), !dbg !120
  %"80" = load i32* @"'memory2_freeIndex", align 4, !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !122), !dbg !123
  %"81" = load i32* @"'memory2_freeIndex", align 4, !dbg !124
  %"82" = add nsw i32 %"81", 1, !dbg !124
  store i32 %"82", i32* @"'memory2_freeIndex", align 4, !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !125), !dbg !126
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !127), !dbg !129
  %"83" = load i32* @"'memory1_freeIndex", align 4, !dbg !130
  call void @llvm.dbg.value(metadata !{i32 %"83"}, i64 0, metadata !131), !dbg !132
  %"84" = load i32* @"'memory1_freeIndex", align 4, !dbg !133
  %"85" = add nsw i32 %"84", 1, !dbg !133
  store i32 %"85", i32* @"'memory1_freeIndex", align 4, !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %"83"}, i64 0, metadata !134), !dbg !135
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !136), !dbg !138
  %"86" = load i32* @"'memory0_freeIndex", align 4, !dbg !139
  call void @llvm.dbg.value(metadata !{i32 %"86"}, i64 0, metadata !140), !dbg !141
  %"87" = load i32* @"'memory0_freeIndex", align 4, !dbg !142
  %"88" = add nsw i32 %"87", 1, !dbg !142
  store i32 %"88", i32* @"'memory0_freeIndex", align 4, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %"86"}, i64 0, metadata !143), !dbg !144
  %"89" = sext i32 %"80" to i64, !dbg !145
  %"90" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"89", !dbg !145
  store i32 %"78", i32* %"90", align 4, !dbg !145
  %"91" = sext i32 %"83" to i64, !dbg !146
  %"92" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"91", !dbg !146
  store i32 %"79", i32* %"92", align 4, !dbg !146
  %"93" = sext i32 %"86" to i64, !dbg !147
  %"94" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"93", !dbg !147
  store i32 0, i32* %"94", align 4, !dbg !147
  %"95" = sext i32 %"80" to i64, !dbg !148
  %"96" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"95", !dbg !148
  %"97" = load i32* %"96", align 4, !dbg !148
  %"98" = icmp sle i32 %"97", 0, !dbg !148
  br i1 %"98", label %main_bb18, label %main_bb17, !dbg !148

main_bb17:                                        ; preds = %main_bb16
  %"99" = sext i32 %"83" to i64, !dbg !149
  %"100" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"99", !dbg !149
  %"101" = load i32* %"100", align 4, !dbg !149
  %"102" = icmp sle i32 %"101", 0, !dbg !149
  br i1 %"102", label %main_bb18, label %main_bb19, !dbg !149

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %"103" = sext i32 %"80" to i64, !dbg !150
  %"104" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"103", !dbg !150
  %"105" = load i32* %"104", align 4, !dbg !150
  %"106" = sext i32 %"83" to i64, !dbg !150
  %"107" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"106", !dbg !150
  %"108" = load i32* %"107", align 4, !dbg !150
  %"109" = add nsw i32 %"105", %"108", !dbg !150
  br label %main_test_fun.exit, !dbg !150

main_bb19:                                        ; preds = %main_bb17
  %"110" = sext i32 %"80" to i64, !dbg !151
  %"111" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"110", !dbg !151
  %"112" = sext i32 %"80" to i64, !dbg !152
  %"113" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"112", !dbg !152
  %"114" = sext i32 %"83" to i64, !dbg !152
  %"115" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"114", !dbg !152
  %"116" = load i32* %"115", align 4, !dbg !152
  %"117" = sext i32 %"83" to i64, !dbg !153
  %"118" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"117", !dbg !153
  %"119" = load i32* %"118", align 4, !dbg !153
  %"120" = sext i32 %"80" to i64, !dbg !153
  %"121" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"120", !dbg !153
  %"122" = sext i32 %"86" to i64, !dbg !154
  %"123" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"122", !dbg !154
  %"124" = sext i32 %"86" to i64, !dbg !154
  %"125" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"124", !dbg !154
  %"126" = sext i32 %"80" to i64, !dbg !155
  %"127" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"126", !dbg !155
  %"128" = sext i32 %"80" to i64, !dbg !156
  %"129" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"128", !dbg !156
  %"130" = sext i32 %"80" to i64, !dbg !156
  %"131" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"130", !dbg !156
  br label %main_bb20, !dbg !157

main_bb20:                                        ; preds = %main_bb26, %main_bb19
  %"132" = load i32* %"111", align 4, !dbg !151
  %"133" = icmp eq i32 %"132", 0, !dbg !151
  %"134" = xor i1 %"133", true, !dbg !151
  br i1 %"134", label %main_bb21, label %main_bb27, !dbg !151

main_bb21:                                        ; preds = %main_bb20
  %"135" = load i32* %"113", align 4, !dbg !152
  %"136" = icmp sgt i32 %"135", %"116", !dbg !152
  br i1 %"136", label %main_bb22, label %main_bb23, !dbg !152

main_bb22:                                        ; preds = %main_bb21
  store i32 %"119", i32* %"121", align 4, !dbg !153
  br label %main_bb26, !dbg !158

main_bb23:                                        ; preds = %main_bb21
  %"137" = load i32* %"127", align 4, !dbg !155
  %"138" = icmp sle i32 %"137", 0, !dbg !155
  br i1 %"138", label %main_bb24, label %main_bb25, !dbg !155

main_bb24:                                        ; preds = %main_bb23
  %"139" = sext i32 %"80" to i64, !dbg !159
  %"140" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"139", !dbg !159
  %"141" = load i32* %"140", align 4, !dbg !159
  br label %main_test_fun.exit, !dbg !159

main_bb25:                                        ; preds = %main_bb23
  %"142" = load i32* %"129", align 4, !dbg !156
  %"143" = sub nsw i32 %"142", 1, !dbg !156
  store i32 %"143", i32* %"131", align 4, !dbg !156
  br label %main_bb26, !dbg !114

main_bb26:                                        ; preds = %main_bb25, %main_bb22
  %"144" = load i32* %"123", align 4, !dbg !154
  %"145" = add nsw i32 %"144", 1, !dbg !154
  store i32 %"145", i32* %"125", align 4, !dbg !154
  br label %main_bb20, !dbg !160

main_bb27:                                        ; preds = %main_bb20
  %"146" = sext i32 %"86" to i64, !dbg !161
  %"147" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"146", !dbg !161
  %"148" = load i32* %"147", align 4, !dbg !161
  br label %main_test_fun.exit, !dbg !161

main_test_fun.exit:                               ; preds = %main_bb18, %main_bb24, %main_bb27
  %.0.i = phi i32 [ %"109", %main_bb18 ], [ %"141", %main_bb24 ], [ %"148", %main_bb27 ], !dbg !114
  ret i32 %.0.i, !dbg !114
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !17, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 32, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @test_fun, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [test_fun]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !8}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 59, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8}
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !25, metadata !26}
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !22, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !22, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !22, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!31 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!32 = metadata !{i32 9, i32 4, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!34 = metadata !{i32 9, i32 8, metadata !4, null}
!35 = metadata !{i32 10, i32 4, metadata !4, null}
!36 = metadata !{i32 11, i32 4, metadata !4, null}
!37 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!38 = metadata !{i32 17, i32 26, metadata !9, null}
!39 = metadata !{i32 18, i32 4, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!41 = metadata !{i32 18, i32 8, metadata !9, null}
!42 = metadata !{i32 19, i32 4, metadata !9, null}
!43 = metadata !{i32 20, i32 4, metadata !9, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!45 = metadata !{i32 26, i32 26, metadata !10, null}
!46 = metadata !{i32 27, i32 4, metadata !10, null}
!47 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!48 = metadata !{i32 27, i32 8, metadata !10, null}
!49 = metadata !{i32 28, i32 4, metadata !10, null}
!50 = metadata !{i32 29, i32 4, metadata !10, null}
!51 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 32]
!52 = metadata !{i32 32, i32 18, metadata !11, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 32]
!54 = metadata !{i32 32, i32 25, metadata !11, null}
!55 = metadata !{i32 1}
!56 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !57} ; [ DW_TAG_arg_variable ] [size] [line 26]
!57 = metadata !{i32 34, i32 17, metadata !11, null}
!58 = metadata !{i32 26, i32 26, metadata !10, metadata !57}
!59 = metadata !{i32 27, i32 4, metadata !10, metadata !57}
!60 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !57} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!61 = metadata !{i32 27, i32 8, metadata !10, metadata !57}
!62 = metadata !{i32 28, i32 4, metadata !10, metadata !57}
!63 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!64 = metadata !{i32 34, i32 9, metadata !11, null}
!65 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !66} ; [ DW_TAG_arg_variable ] [size] [line 17]
!66 = metadata !{i32 35, i32 17, metadata !11, null}
!67 = metadata !{i32 17, i32 26, metadata !9, metadata !66}
!68 = metadata !{i32 18, i32 4, metadata !9, metadata !66}
!69 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !66} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!70 = metadata !{i32 18, i32 8, metadata !9, metadata !66}
!71 = metadata !{i32 19, i32 4, metadata !9, metadata !66}
!72 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!73 = metadata !{i32 35, i32 9, metadata !11, null}
!74 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [size] [line 8]
!75 = metadata !{i32 36, i32 13, metadata !11, null}
!76 = metadata !{i32 8, i32 26, metadata !4, metadata !75} ; [ DW_TAG_imported_declaration ]
!77 = metadata !{i32 9, i32 4, metadata !4, metadata !75}
!78 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!79 = metadata !{i32 9, i32 8, metadata !4, metadata !75}
!80 = metadata !{i32 10, i32 4, metadata !4, metadata !75}
!81 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 36]
!82 = metadata !{i32 36, i32 9, metadata !11, null}
!83 = metadata !{i32 37, i32 5, metadata !11, null}
!84 = metadata !{i32 38, i32 5, metadata !11, null}
!85 = metadata !{i32 39, i32 5, metadata !11, null}
!86 = metadata !{i32 40, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 40, i32 9, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !87, i32 40, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 42, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !87, i32 40, i32 53, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 44, i32 5, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !11, i32 44, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 45, i32 13, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !96, i32 45, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 786443, metadata !1, metadata !11, i32 44, i32 36, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 46, i32 13, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !95, i32 45, i32 46, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 54, i32 9, metadata !96, null}
!100 = metadata !{i32 48, i32 17, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !102, i32 48, i32 17, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 786443, metadata !1, metadata !95, i32 47, i32 16, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!103 = metadata !{i32 52, i32 13, metadata !102, null}
!104 = metadata !{i32 44, i32 5, metadata !11, null}
!105 = metadata !{i32 47, i32 9, metadata !98, null}
!106 = metadata !{i32 50, i32 17, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !101, i32 48, i32 38, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!108 = metadata !{i32 55, i32 5, metadata !96, null}
!109 = metadata !{i32 56, i32 5, metadata !11, null}
!110 = metadata !{i32 57, i32 1, metadata !11, null}
!111 = metadata !{i32 60, i32 19, metadata !14, null}
!112 = metadata !{i32 60, i32 43, metadata !14, null}
!113 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [x] [line 32]
!114 = metadata !{i32 60, i32 10, metadata !14, null}
!115 = metadata !{i32 32, i32 18, metadata !11, metadata !114}
!116 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [y] [line 32]
!117 = metadata !{i32 32, i32 25, metadata !11, metadata !114}
!118 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !119} ; [ DW_TAG_arg_variable ] [size] [line 26]
!119 = metadata !{i32 34, i32 17, metadata !11, metadata !114}
!120 = metadata !{i32 26, i32 26, metadata !10, metadata !119}
!121 = metadata !{i32 27, i32 4, metadata !10, metadata !119}
!122 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !119} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!123 = metadata !{i32 27, i32 8, metadata !10, metadata !119}
!124 = metadata !{i32 28, i32 4, metadata !10, metadata !119}
!125 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !114} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!126 = metadata !{i32 34, i32 9, metadata !11, metadata !114}
!127 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [size] [line 17]
!128 = metadata !{i32 35, i32 17, metadata !11, metadata !114}
!129 = metadata !{i32 17, i32 26, metadata !9, metadata !128}
!130 = metadata !{i32 18, i32 4, metadata !9, metadata !128}
!131 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!132 = metadata !{i32 18, i32 8, metadata !9, metadata !128}
!133 = metadata !{i32 19, i32 4, metadata !9, metadata !128}
!134 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !114} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!135 = metadata !{i32 35, i32 9, metadata !11, metadata !114}
!136 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !137} ; [ DW_TAG_arg_variable ] [size] [line 8]
!137 = metadata !{i32 36, i32 13, metadata !11, metadata !114}
!138 = metadata !{i32 8, i32 26, metadata !4, metadata !137} ; [ DW_TAG_imported_declaration ]
!139 = metadata !{i32 9, i32 4, metadata !4, metadata !137}
!140 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !137} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!141 = metadata !{i32 9, i32 8, metadata !4, metadata !137}
!142 = metadata !{i32 10, i32 4, metadata !4, metadata !137}
!143 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, metadata !114} ; [ DW_TAG_auto_variable ] [c] [line 36]
!144 = metadata !{i32 36, i32 9, metadata !11, metadata !114}
!145 = metadata !{i32 37, i32 5, metadata !11, metadata !114}
!146 = metadata !{i32 38, i32 5, metadata !11, metadata !114}
!147 = metadata !{i32 39, i32 5, metadata !11, metadata !114}
!148 = metadata !{i32 40, i32 9, metadata !87, metadata !114}
!149 = metadata !{i32 40, i32 9, metadata !89, metadata !114}
!150 = metadata !{i32 42, i32 9, metadata !91, metadata !114}
!151 = metadata !{i32 44, i32 5, metadata !93, metadata !114}
!152 = metadata !{i32 45, i32 13, metadata !95, metadata !114}
!153 = metadata !{i32 46, i32 13, metadata !98, metadata !114}
!154 = metadata !{i32 54, i32 9, metadata !96, metadata !114}
!155 = metadata !{i32 48, i32 17, metadata !101, metadata !114}
!156 = metadata !{i32 52, i32 13, metadata !102, metadata !114}
!157 = metadata !{i32 44, i32 5, metadata !11, metadata !114}
!158 = metadata !{i32 47, i32 9, metadata !98, metadata !114}
!159 = metadata !{i32 50, i32 17, metadata !107, metadata !114}
!160 = metadata !{i32 55, i32 5, metadata !96, metadata !114}
!161 = metadata !{i32 56, i32 5, metadata !11, metadata !114}

