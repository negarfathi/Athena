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
  %"26" = sext i32 %"12" to i64, !dbg !86
  %"27" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"26", !dbg !86
  %"28" = sext i32 %"9" to i64, !dbg !88
  %"29" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"28", !dbg !88
  %"30" = sext i32 %"12" to i64, !dbg !88
  %"31" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"30", !dbg !88
  %"32" = sext i32 %"9" to i64, !dbg !91
  %"33" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"32", !dbg !91
  %"34" = sext i32 %"9" to i64, !dbg !91
  %"35" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"34", !dbg !91
  %"36" = sext i32 %"15" to i64, !dbg !93
  %"37" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"36", !dbg !93
  %"38" = sext i32 %"15" to i64, !dbg !93
  %"39" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"38", !dbg !93
  %"40" = sext i32 %"9" to i64, !dbg !94
  %"41" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"40", !dbg !94
  %"42" = sext i32 %"12" to i64, !dbg !94
  %"43" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"42", !dbg !94
  %"44" = sext i32 %"9" to i64, !dbg !97
  %"45" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"44", !dbg !97
  %"46" = sext i32 %"9" to i64, !dbg !97
  %"47" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"46", !dbg !97
  %"48" = sext i32 %"12" to i64, !dbg !99
  %"49" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"48", !dbg !99
  %"50" = sext i32 %"12" to i64, !dbg !99
  %"51" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"50", !dbg !99
  br label %test_fun_bb4, !dbg !101

test_fun_bb4:                                     ; preds = %test_fun_bb10, %test_fun_bb3
  %"52" = load i32* %"25", align 4, !dbg !86
  %"53" = load i32* %"27", align 4, !dbg !86
  %"54" = add nsw i32 %"52", %"53", !dbg !86
  %"55" = icmp sgt i32 %"54", 0, !dbg !86
  br i1 %"55", label %test_fun_bb5, label %test_fun_bb11, !dbg !86

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"56" = load i32* %"29", align 4, !dbg !88
  %"57" = load i32* %"31", align 4, !dbg !88
  %"58" = icmp sgt i32 %"56", %"57", !dbg !88
  br i1 %"58", label %test_fun_bb6, label %test_fun_bb7, !dbg !88

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"59" = load i32* %"33", align 4, !dbg !91
  %"60" = sub nsw i32 %"59", 1, !dbg !91
  store i32 %"60", i32* %"35", align 4, !dbg !91
  br label %test_fun_bb10, !dbg !102

test_fun_bb7:                                     ; preds = %test_fun_bb5
  %"61" = load i32* %"41", align 4, !dbg !94
  %"62" = load i32* %"43", align 4, !dbg !94
  %"63" = icmp eq i32 %"61", %"62", !dbg !94
  br i1 %"63", label %test_fun_bb8, label %test_fun_bb9, !dbg !94

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"64" = load i32* %"45", align 4, !dbg !97
  %"65" = sub nsw i32 %"64", 1, !dbg !97
  store i32 %"65", i32* %"47", align 4, !dbg !97
  br label %test_fun_bb10, !dbg !103

test_fun_bb9:                                     ; preds = %test_fun_bb7
  %"66" = load i32* %"49", align 4, !dbg !99
  %"67" = sub nsw i32 %"66", 1, !dbg !99
  store i32 %"67", i32* %"51", align 4, !dbg !99
  br label %test_fun_bb10

test_fun_bb10:                                    ; preds = %test_fun_bb8, %test_fun_bb9, %test_fun_bb6
  %"68" = load i32* %"37", align 4, !dbg !93
  %"69" = add nsw i32 %"68", 1, !dbg !93
  store i32 %"69", i32* %"39", align 4, !dbg !93
  br label %test_fun_bb4, !dbg !104

test_fun_bb11:                                    ; preds = %test_fun_bb4
  %"70" = sext i32 %"15" to i64, !dbg !105
  %"71" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"70", !dbg !105
  %"72" = load i32* %"71", align 4, !dbg !105
  ret i32 %"72", !dbg !105
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"73" = call i32 @__VERIFIER_nondet_int(), !dbg !106
  %"74" = call i32 @__VERIFIER_nondet_int(), !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !108), !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !111), !dbg !112
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !113), !dbg !115
  %"75" = load i32* @"'memory2_freeIndex", align 4, !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !117), !dbg !118
  %"76" = load i32* @"'memory2_freeIndex", align 4, !dbg !119
  %"77" = add nsw i32 %"76", 1, !dbg !119
  store i32 %"77", i32* @"'memory2_freeIndex", align 4, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %"75"}, i64 0, metadata !120), !dbg !121
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !122), !dbg !124
  %"78" = load i32* @"'memory1_freeIndex", align 4, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"78"}, i64 0, metadata !126), !dbg !127
  %"79" = load i32* @"'memory1_freeIndex", align 4, !dbg !128
  %"80" = add nsw i32 %"79", 1, !dbg !128
  store i32 %"80", i32* @"'memory1_freeIndex", align 4, !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"78"}, i64 0, metadata !129), !dbg !130
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !131), !dbg !133
  %"81" = load i32* @"'memory0_freeIndex", align 4, !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !135), !dbg !136
  %"82" = load i32* @"'memory0_freeIndex", align 4, !dbg !137
  %"83" = add nsw i32 %"82", 1, !dbg !137
  store i32 %"83", i32* @"'memory0_freeIndex", align 4, !dbg !137
  call void @llvm.dbg.value(metadata !{i32 %"81"}, i64 0, metadata !138), !dbg !139
  %"84" = sext i32 %"75" to i64, !dbg !140
  %"85" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"84", !dbg !140
  store i32 %"73", i32* %"85", align 4, !dbg !140
  %"86" = sext i32 %"78" to i64, !dbg !141
  %"87" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"86", !dbg !141
  store i32 %"74", i32* %"87", align 4, !dbg !141
  %"88" = sext i32 %"81" to i64, !dbg !142
  %"89" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"88", !dbg !142
  store i32 0, i32* %"89", align 4, !dbg !142
  %"90" = sext i32 %"75" to i64, !dbg !143
  %"91" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"90", !dbg !143
  %"92" = sext i32 %"78" to i64, !dbg !143
  %"93" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"92", !dbg !143
  %"94" = sext i32 %"75" to i64, !dbg !144
  %"95" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"94", !dbg !144
  %"96" = sext i32 %"78" to i64, !dbg !144
  %"97" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"96", !dbg !144
  %"98" = sext i32 %"75" to i64, !dbg !145
  %"99" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"98", !dbg !145
  %"100" = sext i32 %"75" to i64, !dbg !145
  %"101" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"100", !dbg !145
  %"102" = sext i32 %"81" to i64, !dbg !146
  %"103" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"102", !dbg !146
  %"104" = sext i32 %"81" to i64, !dbg !146
  %"105" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"104", !dbg !146
  %"106" = sext i32 %"75" to i64, !dbg !147
  %"107" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"106", !dbg !147
  %"108" = sext i32 %"78" to i64, !dbg !147
  %"109" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"108", !dbg !147
  %"110" = sext i32 %"75" to i64, !dbg !148
  %"111" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"110", !dbg !148
  %"112" = sext i32 %"75" to i64, !dbg !148
  %"113" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"112", !dbg !148
  %"114" = sext i32 %"78" to i64, !dbg !149
  %"115" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"114", !dbg !149
  %"116" = sext i32 %"78" to i64, !dbg !149
  %"117" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"116", !dbg !149
  br label %main_bb13, !dbg !150

main_bb13:                                        ; preds = %main_bb19, %main_bb12
  %"118" = load i32* %"91", align 4, !dbg !143
  %"119" = load i32* %"93", align 4, !dbg !143
  %"120" = add nsw i32 %"118", %"119", !dbg !143
  %"121" = icmp sgt i32 %"120", 0, !dbg !143
  br i1 %"121", label %main_bb14, label %main_test_fun.exit, !dbg !143

main_bb14:                                        ; preds = %main_bb13
  %"122" = load i32* %"95", align 4, !dbg !144
  %"123" = load i32* %"97", align 4, !dbg !144
  %"124" = icmp sgt i32 %"122", %"123", !dbg !144
  br i1 %"124", label %main_bb15, label %main_bb16, !dbg !144

main_bb15:                                        ; preds = %main_bb14
  %"125" = load i32* %"99", align 4, !dbg !145
  %"126" = sub nsw i32 %"125", 1, !dbg !145
  store i32 %"126", i32* %"101", align 4, !dbg !145
  br label %main_bb19, !dbg !151

main_bb16:                                        ; preds = %main_bb14
  %"127" = load i32* %"107", align 4, !dbg !147
  %"128" = load i32* %"109", align 4, !dbg !147
  %"129" = icmp eq i32 %"127", %"128", !dbg !147
  br i1 %"129", label %main_bb17, label %main_bb18, !dbg !147

main_bb17:                                        ; preds = %main_bb16
  %"130" = load i32* %"111", align 4, !dbg !148
  %"131" = sub nsw i32 %"130", 1, !dbg !148
  store i32 %"131", i32* %"113", align 4, !dbg !148
  br label %main_bb19, !dbg !152

main_bb18:                                        ; preds = %main_bb16
  %"132" = load i32* %"115", align 4, !dbg !149
  %"133" = sub nsw i32 %"132", 1, !dbg !149
  store i32 %"133", i32* %"117", align 4, !dbg !149
  br label %main_bb19, !dbg !109

main_bb19:                                        ; preds = %main_bb18, %main_bb17, %main_bb15
  %"134" = load i32* %"103", align 4, !dbg !146
  %"135" = add nsw i32 %"134", 1, !dbg !146
  store i32 %"135", i32* %"105", align 4, !dbg !146
  br label %main_bb13, !dbg !153

main_test_fun.exit:                               ; preds = %main_bb13
  %"136" = sext i32 %"81" to i64, !dbg !154
  %"137" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"136", !dbg !154
  %"138" = load i32* %"137", align 4, !dbg !154
  ret i32 %"138", !dbg !109
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
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 55, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 55} ; [ DW_TAG_subprogram ] [line 55] [def] [main]
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
!86 = metadata !{i32 40, i32 5, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 41, i32 13, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 41, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 49, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 42, i32 13, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !89, i32 41, i32 46, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 50, i32 9, metadata !90, null}
!94 = metadata !{i32 44, i32 17, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !96, i32 44, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 786443, metadata !1, metadata !89, i32 43, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 45, i32 17, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !95, i32 44, i32 51, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 47, i32 17, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !95, i32 46, i32 20, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!101 = metadata !{i32 40, i32 5, metadata !11, null}
!102 = metadata !{i32 43, i32 9, metadata !92, null}
!103 = metadata !{i32 46, i32 13, metadata !98, null}
!104 = metadata !{i32 51, i32 5, metadata !90, null}
!105 = metadata !{i32 52, i32 5, metadata !11, null}
!106 = metadata !{i32 56, i32 19, metadata !14, null}
!107 = metadata !{i32 56, i32 43, metadata !14, null}
!108 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [x] [line 32]
!109 = metadata !{i32 56, i32 10, metadata !14, null}
!110 = metadata !{i32 32, i32 18, metadata !11, metadata !109}
!111 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [y] [line 32]
!112 = metadata !{i32 32, i32 25, metadata !11, metadata !109}
!113 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [size] [line 26]
!114 = metadata !{i32 34, i32 17, metadata !11, metadata !109}
!115 = metadata !{i32 26, i32 26, metadata !10, metadata !114}
!116 = metadata !{i32 27, i32 4, metadata !10, metadata !114}
!117 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !114} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!118 = metadata !{i32 27, i32 8, metadata !10, metadata !114}
!119 = metadata !{i32 28, i32 4, metadata !10, metadata !114}
!120 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!121 = metadata !{i32 34, i32 9, metadata !11, metadata !109}
!122 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !123} ; [ DW_TAG_arg_variable ] [size] [line 17]
!123 = metadata !{i32 35, i32 17, metadata !11, metadata !109}
!124 = metadata !{i32 17, i32 26, metadata !9, metadata !123}
!125 = metadata !{i32 18, i32 4, metadata !9, metadata !123}
!126 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !123} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!127 = metadata !{i32 18, i32 8, metadata !9, metadata !123}
!128 = metadata !{i32 19, i32 4, metadata !9, metadata !123}
!129 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!130 = metadata !{i32 35, i32 9, metadata !11, metadata !109}
!131 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !132} ; [ DW_TAG_arg_variable ] [size] [line 8]
!132 = metadata !{i32 36, i32 13, metadata !11, metadata !109}
!133 = metadata !{i32 8, i32 26, metadata !4, metadata !132} ; [ DW_TAG_imported_declaration ]
!134 = metadata !{i32 9, i32 4, metadata !4, metadata !132}
!135 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !132} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!136 = metadata !{i32 9, i32 8, metadata !4, metadata !132}
!137 = metadata !{i32 10, i32 4, metadata !4, metadata !132}
!138 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [c] [line 36]
!139 = metadata !{i32 36, i32 9, metadata !11, metadata !109}
!140 = metadata !{i32 37, i32 5, metadata !11, metadata !109}
!141 = metadata !{i32 38, i32 5, metadata !11, metadata !109}
!142 = metadata !{i32 39, i32 5, metadata !11, metadata !109}
!143 = metadata !{i32 40, i32 5, metadata !87, metadata !109}
!144 = metadata !{i32 41, i32 13, metadata !89, metadata !109}
!145 = metadata !{i32 42, i32 13, metadata !92, metadata !109}
!146 = metadata !{i32 50, i32 9, metadata !90, metadata !109}
!147 = metadata !{i32 44, i32 17, metadata !95, metadata !109}
!148 = metadata !{i32 45, i32 17, metadata !98, metadata !109}
!149 = metadata !{i32 47, i32 17, metadata !100, metadata !109}
!150 = metadata !{i32 40, i32 5, metadata !11, metadata !109}
!151 = metadata !{i32 43, i32 9, metadata !92, metadata !109}
!152 = metadata !{i32 46, i32 13, metadata !98, metadata !109}
!153 = metadata !{i32 51, i32 5, metadata !90, metadata !109}
!154 = metadata !{i32 52, i32 5, metadata !11, metadata !109}

