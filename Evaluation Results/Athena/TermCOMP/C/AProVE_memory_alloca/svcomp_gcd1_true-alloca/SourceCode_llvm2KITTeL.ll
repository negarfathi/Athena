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
define i32 @gcd(i32 %x, i32 %y) #0 {
gcd_bb3:
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
  %"22" = sext i32 %"9" to i64, !dbg !85
  %"23" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"22", !dbg !85
  %"24" = load i32* %"23", align 4, !dbg !85
  %"25" = icmp slt i32 %"24", 0, !dbg !85
  br i1 %"25", label %gcd_bb4, label %gcd_bb5, !dbg !85

gcd_bb4:                                          ; preds = %gcd_bb3
  %"26" = sext i32 %"9" to i64, !dbg !87
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !87
  %"28" = load i32* %"27", align 4, !dbg !87
  %"29" = sub nsw i32 0, %"28", !dbg !87
  %"30" = sext i32 %"9" to i64, !dbg !87
  %"31" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"30", !dbg !87
  store i32 %"29", i32* %"31", align 4, !dbg !87
  br label %gcd_bb5, !dbg !87

gcd_bb5:                                          ; preds = %gcd_bb4, %gcd_bb3
  %"32" = sext i32 %"12" to i64, !dbg !89
  %"33" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"32", !dbg !89
  %"34" = load i32* %"33", align 4, !dbg !89
  %"35" = icmp slt i32 %"34", 0, !dbg !89
  br i1 %"35", label %gcd_bb6, label %gcd_bb7, !dbg !89

gcd_bb6:                                          ; preds = %gcd_bb5
  %"36" = sext i32 %"12" to i64, !dbg !91
  %"37" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"36", !dbg !91
  %"38" = load i32* %"37", align 4, !dbg !91
  %"39" = sub nsw i32 0, %"38", !dbg !91
  %"40" = sext i32 %"12" to i64, !dbg !91
  %"41" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"40", !dbg !91
  store i32 %"39", i32* %"41", align 4, !dbg !91
  br label %gcd_bb7, !dbg !91

gcd_bb7:                                          ; preds = %gcd_bb6, %gcd_bb5
  %"42" = sext i32 %"12" to i64, !dbg !93
  %"43" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"42", !dbg !93
  %"44" = sext i32 %"9" to i64, !dbg !95
  %"45" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"44", !dbg !95
  %"46" = sext i32 %"15" to i64, !dbg !95
  %"47" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"46", !dbg !95
  %"48" = sext i32 %"15" to i64, !dbg !97
  %"49" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"48", !dbg !97
  %"50" = sext i32 %"12" to i64, !dbg !97
  %"51" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"50", !dbg !97
  %"52" = sext i32 %"15" to i64, !dbg !99
  %"53" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"52", !dbg !99
  %"54" = sext i32 %"12" to i64, !dbg !99
  %"55" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"54", !dbg !99
  %"56" = sext i32 %"15" to i64, !dbg !99
  %"57" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"56", !dbg !99
  br label %gcd_bb8, !dbg !100

gcd_bb8:                                          ; preds = %gcd_bb12, %gcd_bb7
  %"58" = load i32* %"43", align 4, !dbg !93
  %"59" = icmp sgt i32 %"58", 0, !dbg !93
  br i1 %"59", label %gcd_bb9, label %gcd_bb13, !dbg !93

gcd_bb9:                                          ; preds = %gcd_bb8
  %"60" = load i32* %"45", align 4, !dbg !95
  store i32 %"60", i32* %"47", align 4, !dbg !95
  %"61" = load i32* %"51", align 4, !dbg !97
  %"62" = load i32* %"55", align 4, !dbg !99
  br label %gcd_bb10, !dbg !101

gcd_bb10:                                         ; preds = %gcd_bb11, %gcd_bb9
  %"63" = load i32* %"49", align 4, !dbg !97
  %"64" = icmp sge i32 %"63", %"61", !dbg !97
  br i1 %"64", label %gcd_bb11, label %gcd_bb12, !dbg !97

gcd_bb11:                                         ; preds = %gcd_bb10
  %"65" = load i32* %"53", align 4, !dbg !99
  %"66" = sub nsw i32 %"65", %"62", !dbg !99
  store i32 %"66", i32* %"57", align 4, !dbg !99
  br label %gcd_bb10, !dbg !99

gcd_bb12:                                         ; preds = %gcd_bb10
  %"67" = sext i32 %"12" to i64, !dbg !102
  %"68" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"67", !dbg !102
  %"69" = load i32* %"68", align 4, !dbg !102
  %"70" = sext i32 %"9" to i64, !dbg !102
  %"71" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"70", !dbg !102
  store i32 %"69", i32* %"71", align 4, !dbg !102
  %"72" = sext i32 %"15" to i64, !dbg !103
  %"73" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"72", !dbg !103
  %"74" = load i32* %"73", align 4, !dbg !103
  %"75" = sext i32 %"12" to i64, !dbg !103
  %"76" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"75", !dbg !103
  store i32 %"74", i32* %"76", align 4, !dbg !103
  br label %gcd_bb8, !dbg !104

gcd_bb13:                                         ; preds = %gcd_bb8
  %"77" = sext i32 %"9" to i64, !dbg !105
  %"78" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"77", !dbg !105
  %"79" = load i32* %"78", align 4, !dbg !105
  ret i32 %"79", !dbg !105
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb14:
  %"80" = call i32 @__VERIFIER_nondet_int(), !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !107), !dbg !108
  %"81" = call i32 @__VERIFIER_nondet_int(), !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !110), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"80"}, i64 0, metadata !112), !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !117), !dbg !119
  %"82" = load i32* @"'memory2_freeIndex", align 4, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"82"}, i64 0, metadata !121), !dbg !122
  %"83" = load i32* @"'memory2_freeIndex", align 4, !dbg !123
  %"84" = add nsw i32 %"83", 1, !dbg !123
  store i32 %"84", i32* @"'memory2_freeIndex", align 4, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"82"}, i64 0, metadata !124), !dbg !125
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !126), !dbg !128
  %"85" = load i32* @"'memory1_freeIndex", align 4, !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"85"}, i64 0, metadata !130), !dbg !131
  %"86" = load i32* @"'memory1_freeIndex", align 4, !dbg !132
  %"87" = add nsw i32 %"86", 1, !dbg !132
  store i32 %"87", i32* @"'memory1_freeIndex", align 4, !dbg !132
  call void @llvm.dbg.value(metadata !{i32 %"85"}, i64 0, metadata !133), !dbg !134
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !135), !dbg !137
  %"88" = load i32* @"'memory0_freeIndex", align 4, !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %"88"}, i64 0, metadata !139), !dbg !140
  %"89" = load i32* @"'memory0_freeIndex", align 4, !dbg !141
  %"90" = add nsw i32 %"89", 1, !dbg !141
  store i32 %"90", i32* @"'memory0_freeIndex", align 4, !dbg !141
  call void @llvm.dbg.value(metadata !{i32 %"88"}, i64 0, metadata !142), !dbg !143
  %"91" = sext i32 %"82" to i64, !dbg !144
  %"92" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"91", !dbg !144
  store i32 %"80", i32* %"92", align 4, !dbg !144
  %"93" = sext i32 %"85" to i64, !dbg !145
  %"94" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"93", !dbg !145
  store i32 %"81", i32* %"94", align 4, !dbg !145
  %"95" = sext i32 %"82" to i64, !dbg !146
  %"96" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"95", !dbg !146
  %"97" = load i32* %"96", align 4, !dbg !146
  %"98" = icmp slt i32 %"97", 0, !dbg !146
  br i1 %"98", label %main_bb15, label %main_bb16, !dbg !146

main_bb15:                                        ; preds = %main_bb14
  %"99" = sext i32 %"82" to i64, !dbg !147
  %"100" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"99", !dbg !147
  %"101" = load i32* %"100", align 4, !dbg !147
  %"102" = sub nsw i32 0, %"101", !dbg !147
  %"103" = sext i32 %"82" to i64, !dbg !147
  %"104" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"103", !dbg !147
  store i32 %"102", i32* %"104", align 4, !dbg !147
  br label %main_bb16, !dbg !147

main_bb16:                                        ; preds = %main_bb15, %main_bb14
  %"105" = sext i32 %"85" to i64, !dbg !148
  %"106" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"105", !dbg !148
  %"107" = load i32* %"106", align 4, !dbg !148
  %"108" = icmp slt i32 %"107", 0, !dbg !148
  br i1 %"108", label %main_bb17, label %main_bb18, !dbg !148

main_bb17:                                        ; preds = %main_bb16
  %"109" = sext i32 %"85" to i64, !dbg !149
  %"110" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"109", !dbg !149
  %"111" = load i32* %"110", align 4, !dbg !149
  %"112" = sub nsw i32 0, %"111", !dbg !149
  %"113" = sext i32 %"85" to i64, !dbg !149
  %"114" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"113", !dbg !149
  store i32 %"112", i32* %"114", align 4, !dbg !149
  br label %main_bb18, !dbg !149

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %"115" = sext i32 %"85" to i64, !dbg !150
  %"116" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"115", !dbg !150
  %"117" = sext i32 %"82" to i64, !dbg !151
  %"118" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"117", !dbg !151
  %"119" = sext i32 %"88" to i64, !dbg !151
  %"120" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"119", !dbg !151
  %"121" = sext i32 %"88" to i64, !dbg !152
  %"122" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"121", !dbg !152
  %"123" = sext i32 %"85" to i64, !dbg !152
  %"124" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"123", !dbg !152
  %"125" = sext i32 %"88" to i64, !dbg !153
  %"126" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"125", !dbg !153
  %"127" = sext i32 %"85" to i64, !dbg !153
  %"128" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"127", !dbg !153
  %"129" = sext i32 %"88" to i64, !dbg !153
  %"130" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"129", !dbg !153
  br label %main_bb19, !dbg !154

main_bb19:                                        ; preds = %main_bb23, %main_bb18
  %"131" = load i32* %"116", align 4, !dbg !150
  %"132" = icmp sgt i32 %"131", 0, !dbg !150
  br i1 %"132", label %main_bb20, label %main_gcd.exit, !dbg !150

main_bb20:                                        ; preds = %main_bb19
  %"133" = load i32* %"118", align 4, !dbg !151
  store i32 %"133", i32* %"120", align 4, !dbg !151
  %"134" = load i32* %"124", align 4, !dbg !152
  %"135" = load i32* %"128", align 4, !dbg !153
  br label %main_bb21, !dbg !155

main_bb21:                                        ; preds = %main_bb22, %main_bb20
  %"136" = load i32* %"122", align 4, !dbg !152
  %"137" = icmp sge i32 %"136", %"134", !dbg !152
  br i1 %"137", label %main_bb22, label %main_bb23, !dbg !152

main_bb22:                                        ; preds = %main_bb21
  %"138" = load i32* %"126", align 4, !dbg !153
  %"139" = sub nsw i32 %"138", %"135", !dbg !153
  store i32 %"139", i32* %"130", align 4, !dbg !153
  br label %main_bb21, !dbg !153

main_bb23:                                        ; preds = %main_bb21
  %"140" = sext i32 %"85" to i64, !dbg !156
  %"141" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"140", !dbg !156
  %"142" = load i32* %"141", align 4, !dbg !156
  %"143" = sext i32 %"82" to i64, !dbg !156
  %"144" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"143", !dbg !156
  store i32 %"142", i32* %"144", align 4, !dbg !156
  %"145" = sext i32 %"88" to i64, !dbg !157
  %"146" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"145", !dbg !157
  %"147" = load i32* %"146", align 4, !dbg !157
  %"148" = sext i32 %"85" to i64, !dbg !157
  %"149" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"148", !dbg !157
  store i32 %"147", i32* %"149", align 4, !dbg !157
  br label %main_bb19, !dbg !158

main_gcd.exit:                                    ; preds = %main_bb19
  ret i32 0, !dbg !159
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
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gcd", metadata !"gcd", metadata !"", i32 32, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @gcd, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [gcd]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !8}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 52, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [main]
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
!52 = metadata !{i32 32, i32 13, metadata !11, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 32]
!54 = metadata !{i32 32, i32 20, metadata !11, null}
!55 = metadata !{i32 1}
!56 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !57} ; [ DW_TAG_arg_variable ] [size] [line 26]
!57 = metadata !{i32 33, i32 17, metadata !11, null}
!58 = metadata !{i32 26, i32 26, metadata !10, metadata !57}
!59 = metadata !{i32 27, i32 4, metadata !10, metadata !57}
!60 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !57} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!61 = metadata !{i32 27, i32 8, metadata !10, metadata !57}
!62 = metadata !{i32 28, i32 4, metadata !10, metadata !57}
!63 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 33]
!64 = metadata !{i32 33, i32 9, metadata !11, null}
!65 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !66} ; [ DW_TAG_arg_variable ] [size] [line 17]
!66 = metadata !{i32 34, i32 17, metadata !11, null}
!67 = metadata !{i32 17, i32 26, metadata !9, metadata !66}
!68 = metadata !{i32 18, i32 4, metadata !9, metadata !66}
!69 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !66} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!70 = metadata !{i32 18, i32 8, metadata !9, metadata !66}
!71 = metadata !{i32 19, i32 4, metadata !9, metadata !66}
!72 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 34]
!73 = metadata !{i32 34, i32 9, metadata !11, null}
!74 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [size] [line 8]
!75 = metadata !{i32 35, i32 13, metadata !11, null}
!76 = metadata !{i32 8, i32 26, metadata !4, metadata !75} ; [ DW_TAG_imported_declaration ]
!77 = metadata !{i32 9, i32 4, metadata !4, metadata !75}
!78 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!79 = metadata !{i32 9, i32 8, metadata !4, metadata !75}
!80 = metadata !{i32 10, i32 4, metadata !4, metadata !75}
!81 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 35]
!82 = metadata !{i32 35, i32 9, metadata !11, null}
!83 = metadata !{i32 36, i32 5, metadata !11, null}
!84 = metadata !{i32 37, i32 5, metadata !11, null}
!85 = metadata !{i32 38, i32 9, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !11, i32 38, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!87 = metadata !{i32 38, i32 29, metadata !88, null}
!88 = metadata !{i32 786443, metadata !1, metadata !86, i32 38, i32 29, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!89 = metadata !{i32 39, i32 9, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !11, i32 39, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 39, i32 29, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !90, i32 39, i32 29, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 40, i32 5, metadata !94, null}
!94 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 42, i32 9, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 43, i32 9, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !96, i32 43, i32 9, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 44, i32 13, metadata !96, null}
!100 = metadata !{i32 40, i32 5, metadata !11, null}
!101 = metadata !{i32 43, i32 9, metadata !96, null}
!102 = metadata !{i32 46, i32 9, metadata !96, null}
!103 = metadata !{i32 47, i32 9, metadata !96, null}
!104 = metadata !{i32 48, i32 5, metadata !96, null}
!105 = metadata !{i32 49, i32 5, metadata !11, null}
!106 = metadata !{i32 54, i32 9, metadata !14, null}
!107 = metadata !{i32 786688, metadata !14, metadata !"x", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 53]
!108 = metadata !{i32 53, i32 9, metadata !14, null}
!109 = metadata !{i32 55, i32 9, metadata !14, null}
!110 = metadata !{i32 786688, metadata !14, metadata !"y", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 53]
!111 = metadata !{i32 53, i32 11, metadata !14, null}
!112 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !113} ; [ DW_TAG_arg_variable ] [x] [line 32]
!113 = metadata !{i32 56, i32 5, metadata !14, null}
!114 = metadata !{i32 32, i32 13, metadata !11, metadata !113}
!115 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !113} ; [ DW_TAG_arg_variable ] [y] [line 32]
!116 = metadata !{i32 32, i32 20, metadata !11, metadata !113}
!117 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !118} ; [ DW_TAG_arg_variable ] [size] [line 26]
!118 = metadata !{i32 33, i32 17, metadata !11, metadata !113}
!119 = metadata !{i32 26, i32 26, metadata !10, metadata !118}
!120 = metadata !{i32 27, i32 4, metadata !10, metadata !118}
!121 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !118} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!122 = metadata !{i32 27, i32 8, metadata !10, metadata !118}
!123 = metadata !{i32 28, i32 4, metadata !10, metadata !118}
!124 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 33, metadata !8, i32 0, metadata !113} ; [ DW_TAG_auto_variable ] [x_ref] [line 33]
!125 = metadata !{i32 33, i32 9, metadata !11, metadata !113}
!126 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !127} ; [ DW_TAG_arg_variable ] [size] [line 17]
!127 = metadata !{i32 34, i32 17, metadata !11, metadata !113}
!128 = metadata !{i32 17, i32 26, metadata !9, metadata !127}
!129 = metadata !{i32 18, i32 4, metadata !9, metadata !127}
!130 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!131 = metadata !{i32 18, i32 8, metadata !9, metadata !127}
!132 = metadata !{i32 19, i32 4, metadata !9, metadata !127}
!133 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !113} ; [ DW_TAG_auto_variable ] [y_ref] [line 34]
!134 = metadata !{i32 34, i32 9, metadata !11, metadata !113}
!135 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !136} ; [ DW_TAG_arg_variable ] [size] [line 8]
!136 = metadata !{i32 35, i32 13, metadata !11, metadata !113}
!137 = metadata !{i32 8, i32 26, metadata !4, metadata !136} ; [ DW_TAG_imported_declaration ]
!138 = metadata !{i32 9, i32 4, metadata !4, metadata !136}
!139 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !136} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!140 = metadata !{i32 9, i32 8, metadata !4, metadata !136}
!141 = metadata !{i32 10, i32 4, metadata !4, metadata !136}
!142 = metadata !{i32 786688, metadata !11, metadata !"r", metadata !5, i32 35, metadata !8, i32 0, metadata !113} ; [ DW_TAG_auto_variable ] [r] [line 35]
!143 = metadata !{i32 35, i32 9, metadata !11, metadata !113}
!144 = metadata !{i32 36, i32 5, metadata !11, metadata !113}
!145 = metadata !{i32 37, i32 5, metadata !11, metadata !113}
!146 = metadata !{i32 38, i32 9, metadata !86, metadata !113}
!147 = metadata !{i32 38, i32 29, metadata !88, metadata !113}
!148 = metadata !{i32 39, i32 9, metadata !90, metadata !113}
!149 = metadata !{i32 39, i32 29, metadata !92, metadata !113}
!150 = metadata !{i32 40, i32 5, metadata !94, metadata !113}
!151 = metadata !{i32 42, i32 9, metadata !96, metadata !113}
!152 = metadata !{i32 43, i32 9, metadata !98, metadata !113}
!153 = metadata !{i32 44, i32 13, metadata !96, metadata !113}
!154 = metadata !{i32 40, i32 5, metadata !11, metadata !113}
!155 = metadata !{i32 43, i32 9, metadata !96, metadata !113}
!156 = metadata !{i32 46, i32 9, metadata !96, metadata !113}
!157 = metadata !{i32 47, i32 9, metadata !96, metadata !113}
!158 = metadata !{i32 48, i32 5, metadata !96, metadata !113}
!159 = metadata !{i32 57, i32 1, metadata !14, null}

