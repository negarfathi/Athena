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
  %"34" = load i32* %"33", align 4, !dbg !108
  %"35" = sext i32 %"15" to i64, !dbg !108
  %"36" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"35", !dbg !108
  %"37" = sext i32 %"12" to i64, !dbg !110
  %"38" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"37", !dbg !110
  %"39" = load i32* %"38", align 4, !dbg !110
  %"40" = sext i32 %"18" to i64, !dbg !110
  %"41" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"40", !dbg !110
  %"42" = sext i32 %"15" to i64, !dbg !112
  %"43" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"42", !dbg !112
  %"44" = sext i32 %"15" to i64, !dbg !112
  %"45" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"44", !dbg !112
  %"46" = sext i32 %"18" to i64, !dbg !114
  %"47" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"46", !dbg !114
  %"48" = sext i32 %"18" to i64, !dbg !114
  %"49" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"48", !dbg !114
  %"50" = sext i32 %"21" to i64, !dbg !115
  %"51" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"50", !dbg !115
  %"52" = sext i32 %"21" to i64, !dbg !115
  %"53" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"52", !dbg !115
  br label %test_fun_bb5, !dbg !116

test_fun_bb5:                                     ; preds = %test_fun_bb7, %test_fun_bb4
  %"54" = load i32* %"36", align 4, !dbg !108
  %"55" = icmp sgt i32 %"34", %"54", !dbg !108
  br i1 %"55", label %test_fun_bb6, label %test_fun_.critedge, !dbg !108

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"56" = load i32* %"41", align 4, !dbg !110
  %"57" = icmp sgt i32 %"39", %"56", !dbg !110
  br i1 %"57", label %test_fun_bb7, label %test_fun_.critedge, !dbg !117

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"58" = load i32* %"43", align 4, !dbg !112
  %"59" = add nsw i32 %"58", 1, !dbg !112
  store i32 %"59", i32* %"45", align 4, !dbg !112
  %"60" = load i32* %"47", align 4, !dbg !114
  %"61" = add nsw i32 %"60", 1, !dbg !114
  store i32 %"61", i32* %"49", align 4, !dbg !114
  %"62" = load i32* %"51", align 4, !dbg !115
  %"63" = add nsw i32 %"62", 1, !dbg !115
  store i32 %"63", i32* %"53", align 4, !dbg !115
  br label %test_fun_bb5, !dbg !119

test_fun_.critedge:                               ; preds = %test_fun_bb5, %test_fun_bb6
  %"64" = sext i32 %"21" to i64, !dbg !120
  %"65" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"64", !dbg !120
  %"66" = load i32* %"65", align 4, !dbg !120
  ret i32 %"66", !dbg !120
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"67" = call i32 @__VERIFIER_nondet_int(), !dbg !121
  %"68" = call i32 @__VERIFIER_nondet_int(), !dbg !122
  %"69" = call i32 @__VERIFIER_nondet_int(), !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !124), !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !127), !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"69"}, i64 0, metadata !129), !dbg !130
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !131), !dbg !133
  %"70" = load i32* @"'memory3_freeIndex", align 4, !dbg !134
  call void @llvm.dbg.value(metadata !{i32 %"70"}, i64 0, metadata !135), !dbg !136
  %"71" = load i32* @"'memory3_freeIndex", align 4, !dbg !137
  %"72" = add nsw i32 %"71", 1, !dbg !137
  store i32 %"72", i32* @"'memory3_freeIndex", align 4, !dbg !137
  call void @llvm.dbg.value(metadata !{i32 %"70"}, i64 0, metadata !138), !dbg !139
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !140), !dbg !142
  %"73" = load i32* @"'memory2_freeIndex", align 4, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !144), !dbg !145
  %"74" = load i32* @"'memory2_freeIndex", align 4, !dbg !146
  %"75" = add nsw i32 %"74", 1, !dbg !146
  store i32 %"75", i32* @"'memory2_freeIndex", align 4, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !147), !dbg !148
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !149), !dbg !151
  %"76" = load i32* @"'memory1_freeIndex", align 4, !dbg !152
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !153), !dbg !154
  %"77" = load i32* @"'memory1_freeIndex", align 4, !dbg !155
  %"78" = add nsw i32 %"77", 1, !dbg !155
  store i32 %"78", i32* @"'memory1_freeIndex", align 4, !dbg !155
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !156), !dbg !157
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !158), !dbg !160
  %"79" = load i32* @"'memory0_freeIndex", align 4, !dbg !161
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !162), !dbg !163
  %"80" = load i32* @"'memory0_freeIndex", align 4, !dbg !164
  %"81" = add nsw i32 %"80", 1, !dbg !164
  store i32 %"81", i32* @"'memory0_freeIndex", align 4, !dbg !164
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !165), !dbg !166
  %"82" = sext i32 %"70" to i64, !dbg !167
  %"83" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"82", !dbg !167
  store i32 %"67", i32* %"83", align 4, !dbg !167
  %"84" = sext i32 %"73" to i64, !dbg !168
  %"85" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"84", !dbg !168
  store i32 %"68", i32* %"85", align 4, !dbg !168
  %"86" = sext i32 %"76" to i64, !dbg !169
  %"87" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"86", !dbg !169
  store i32 %"69", i32* %"87", align 4, !dbg !169
  %"88" = sext i32 %"79" to i64, !dbg !170
  %"89" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"88", !dbg !170
  store i32 0, i32* %"89", align 4, !dbg !170
  %"90" = sext i32 %"70" to i64, !dbg !171
  %"91" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"90", !dbg !171
  %"92" = load i32* %"91", align 4, !dbg !171
  %"93" = sext i32 %"73" to i64, !dbg !171
  %"94" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"93", !dbg !171
  %"95" = sext i32 %"70" to i64, !dbg !172
  %"96" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"95", !dbg !172
  %"97" = load i32* %"96", align 4, !dbg !172
  %"98" = sext i32 %"76" to i64, !dbg !172
  %"99" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"98", !dbg !172
  %"100" = sext i32 %"73" to i64, !dbg !173
  %"101" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"100", !dbg !173
  %"102" = sext i32 %"73" to i64, !dbg !173
  %"103" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"102", !dbg !173
  %"104" = sext i32 %"76" to i64, !dbg !174
  %"105" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"104", !dbg !174
  %"106" = sext i32 %"76" to i64, !dbg !174
  %"107" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"106", !dbg !174
  %"108" = sext i32 %"79" to i64, !dbg !175
  %"109" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"108", !dbg !175
  %"110" = sext i32 %"79" to i64, !dbg !175
  %"111" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"110", !dbg !175
  br label %main_bb9, !dbg !176

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %"112" = load i32* %"94", align 4, !dbg !171
  %"113" = icmp sgt i32 %"92", %"112", !dbg !171
  br i1 %"113", label %main_bb10, label %main_test_fun.exit, !dbg !171

main_bb10:                                        ; preds = %main_bb9
  %"114" = load i32* %"99", align 4, !dbg !172
  %"115" = icmp sgt i32 %"97", %"114", !dbg !172
  br i1 %"115", label %main_bb11, label %main_test_fun.exit, !dbg !177

main_bb11:                                        ; preds = %main_bb10
  %"116" = load i32* %"101", align 4, !dbg !173
  %"117" = add nsw i32 %"116", 1, !dbg !173
  store i32 %"117", i32* %"103", align 4, !dbg !173
  %"118" = load i32* %"105", align 4, !dbg !174
  %"119" = add nsw i32 %"118", 1, !dbg !174
  store i32 %"119", i32* %"107", align 4, !dbg !174
  %"120" = load i32* %"109", align 4, !dbg !175
  %"121" = add nsw i32 %"120", 1, !dbg !175
  store i32 %"121", i32* %"111", align 4, !dbg !175
  br label %main_bb9, !dbg !178

main_test_fun.exit:                               ; preds = %main_bb9, %main_bb10
  %"122" = sext i32 %"79" to i64, !dbg !179
  %"123" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"122", !dbg !179
  %"124" = load i32* %"123", align 4, !dbg !179
  ret i32 %"124", !dbg !125
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
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 59, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [main]
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
!109 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 51, i32 5, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 52, i32 9, metadata !113, null}
!113 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 84, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 53, i32 9, metadata !113, null}
!115 = metadata !{i32 54, i32 9, metadata !113, null}
!116 = metadata !{i32 51, i32 5, metadata !12, null}
!117 = metadata !{i32 51, i32 5, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!119 = metadata !{i32 55, i32 5, metadata !113, null}
!120 = metadata !{i32 56, i32 5, metadata !12, null}
!121 = metadata !{i32 60, i32 19, metadata !15, null}
!122 = metadata !{i32 60, i32 43, metadata !15, null}
!123 = metadata !{i32 60, i32 67, metadata !15, null}
!124 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [x] [line 41]
!125 = metadata !{i32 60, i32 10, metadata !15, null}
!126 = metadata !{i32 41, i32 18, metadata !12, metadata !125}
!127 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [y] [line 41]
!128 = metadata !{i32 41, i32 25, metadata !12, metadata !125}
!129 = metadata !{i32 786689, metadata !12, metadata !"z", metadata !5, i32 50331689, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [z] [line 41]
!130 = metadata !{i32 41, i32 32, metadata !12, metadata !125}
!131 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !132} ; [ DW_TAG_arg_variable ] [size] [line 35]
!132 = metadata !{i32 43, i32 17, metadata !12, metadata !125}
!133 = metadata !{i32 35, i32 26, metadata !11, metadata !132}
!134 = metadata !{i32 36, i32 4, metadata !11, metadata !132}
!135 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !132} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!136 = metadata !{i32 36, i32 8, metadata !11, metadata !132}
!137 = metadata !{i32 37, i32 4, metadata !11, metadata !132}
!138 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!139 = metadata !{i32 43, i32 9, metadata !12, metadata !125}
!140 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !141} ; [ DW_TAG_arg_variable ] [size] [line 26]
!141 = metadata !{i32 44, i32 17, metadata !12, metadata !125}
!142 = metadata !{i32 26, i32 26, metadata !10, metadata !141}
!143 = metadata !{i32 27, i32 4, metadata !10, metadata !141}
!144 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !141} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!145 = metadata !{i32 27, i32 8, metadata !10, metadata !141}
!146 = metadata !{i32 28, i32 4, metadata !10, metadata !141}
!147 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!148 = metadata !{i32 44, i32 9, metadata !12, metadata !125}
!149 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !150} ; [ DW_TAG_arg_variable ] [size] [line 17]
!150 = metadata !{i32 45, i32 17, metadata !12, metadata !125}
!151 = metadata !{i32 17, i32 26, metadata !9, metadata !150}
!152 = metadata !{i32 18, i32 4, metadata !9, metadata !150}
!153 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !150} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!154 = metadata !{i32 18, i32 8, metadata !9, metadata !150}
!155 = metadata !{i32 19, i32 4, metadata !9, metadata !150}
!156 = metadata !{i32 786688, metadata !12, metadata !"z_ref", metadata !5, i32 45, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [z_ref] [line 45]
!157 = metadata !{i32 45, i32 9, metadata !12, metadata !125}
!158 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !159} ; [ DW_TAG_arg_variable ] [size] [line 8]
!159 = metadata !{i32 46, i32 13, metadata !12, metadata !125}
!160 = metadata !{i32 8, i32 26, metadata !4, metadata !159} ; [ DW_TAG_imported_declaration ]
!161 = metadata !{i32 9, i32 4, metadata !4, metadata !159}
!162 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !159} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!163 = metadata !{i32 9, i32 8, metadata !4, metadata !159}
!164 = metadata !{i32 10, i32 4, metadata !4, metadata !159}
!165 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [c] [line 46]
!166 = metadata !{i32 46, i32 9, metadata !12, metadata !125}
!167 = metadata !{i32 47, i32 5, metadata !12, metadata !125}
!168 = metadata !{i32 48, i32 5, metadata !12, metadata !125}
!169 = metadata !{i32 49, i32 5, metadata !12, metadata !125}
!170 = metadata !{i32 50, i32 5, metadata !12, metadata !125}
!171 = metadata !{i32 51, i32 5, metadata !109, metadata !125}
!172 = metadata !{i32 51, i32 5, metadata !111, metadata !125}
!173 = metadata !{i32 52, i32 9, metadata !113, metadata !125}
!174 = metadata !{i32 53, i32 9, metadata !113, metadata !125}
!175 = metadata !{i32 54, i32 9, metadata !113, metadata !125}
!176 = metadata !{i32 51, i32 5, metadata !12, metadata !125}
!177 = metadata !{i32 51, i32 5, metadata !118, metadata !125}
!178 = metadata !{i32 55, i32 5, metadata !113, metadata !125}
!179 = metadata !{i32 56, i32 5, metadata !12, metadata !125}

