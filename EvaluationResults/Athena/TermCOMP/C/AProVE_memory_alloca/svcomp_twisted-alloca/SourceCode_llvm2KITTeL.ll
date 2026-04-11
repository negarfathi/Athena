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
define i32 @f(i32 %k, i32 %l) #0 {
f_bb4:
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %l}, i64 0, metadata !63), !dbg !64
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
  store i32 %k, i32* %"25", align 4, !dbg !102
  %"26" = sext i32 %"15" to i64, !dbg !103
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !103
  store i32 %l, i32* %"27", align 4, !dbg !103
  %"28" = sext i32 %"18" to i64, !dbg !104
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !104
  store i32 0, i32* %"29", align 4, !dbg !104
  %"30" = sext i32 %"21" to i64, !dbg !105
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !105
  store i32 0, i32* %"31", align 4, !dbg !105
  %"32" = sext i32 %"18" to i64, !dbg !106
  %"33" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"32", !dbg !106
  %"34" = sext i32 %"12" to i64, !dbg !106
  %"35" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"34", !dbg !106
  %"36" = load i32* %"35", align 4, !dbg !106
  %"37" = sext i32 %"18" to i64, !dbg !108
  %"38" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"37", !dbg !108
  %"39" = sext i32 %"18" to i64, !dbg !110
  %"40" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"39", !dbg !110
  br label %f_bb5, !dbg !105

f_bb5:                                            ; preds = %f_bb9, %f_bb6, %f_bb4
  %"41" = load i32* %"33", align 4, !dbg !106
  %"42" = icmp slt i32 %"41", %"36", !dbg !106
  br i1 %"42", label %f_bb6, label %f_bb7, !dbg !106

f_bb6:                                            ; preds = %f_bb5
  %"43" = load i32* %"38", align 4, !dbg !108
  %"44" = add nsw i32 %"43", 1, !dbg !108
  store i32 %"44", i32* %"38", align 4, !dbg !108
  %"45" = load i32* %"40", align 4, !dbg !110
  %"46" = srem i32 %"45", 2, !dbg !110
  %"47" = icmp ne i32 %"46", 0, !dbg !110
  br i1 %"47", label %f_bb5, label %f_bb7, !dbg !110

f_bb7:                                            ; preds = %f_bb5, %f_bb6
  %"48" = sext i32 %"21" to i64, !dbg !112
  %"49" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"48", !dbg !112
  %"50" = sext i32 %"21" to i64, !dbg !114
  %"51" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"50", !dbg !114
  %"52" = sext i32 %"18" to i64, !dbg !116
  %"53" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"52", !dbg !116
  %"54" = load i32* %"53", align 4, !dbg !116
  %"55" = srem i32 %"54", 2, !dbg !116
  br label %f_bb8, !dbg !118

f_bb8:                                            ; preds = %f_bb9, %f_bb7
  %"56" = load i32* %"49", align 4, !dbg !112
  %"57" = icmp slt i32 %"56", 1, !dbg !112
  br i1 %"57", label %f_bb9, label %f_bb10, !dbg !112

f_bb9:                                            ; preds = %f_bb8
  %"58" = load i32* %"51", align 4, !dbg !114
  %"59" = add nsw i32 %"58", 1, !dbg !114
  store i32 %"59", i32* %"51", align 4, !dbg !114
  %"60" = icmp ne i32 %"55", 0, !dbg !116
  br i1 %"60", label %f_bb8, label %f_bb5, !dbg !116

f_bb10:                                           ; preds = %f_bb8
  %"61" = sext i32 %"18" to i64, !dbg !119
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !119
  %"63" = load i32* %"62", align 4, !dbg !119
  %"64" = sext i32 %"21" to i64, !dbg !119
  %"65" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"64", !dbg !119
  %"66" = load i32* %"65", align 4, !dbg !119
  %"67" = add nsw i32 %"63", %"66", !dbg !119
  ret i32 %"67", !dbg !119
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"68" = call i32 @__VERIFIER_nondet_int(), !dbg !120
  %"69" = call i32 @__VERIFIER_nondet_int(), !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !122), !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"69"}, i64 0, metadata !125), !dbg !126
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !127), !dbg !129
  %"70" = load i32* @"'memory3_freeIndex", align 4, !dbg !130
  call void @llvm.dbg.value(metadata !{i32 %"70"}, i64 0, metadata !131), !dbg !132
  %"71" = load i32* @"'memory3_freeIndex", align 4, !dbg !133
  %"72" = add nsw i32 %"71", 1, !dbg !133
  store i32 %"72", i32* @"'memory3_freeIndex", align 4, !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %"70"}, i64 0, metadata !134), !dbg !135
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !136), !dbg !138
  %"73" = load i32* @"'memory2_freeIndex", align 4, !dbg !139
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !140), !dbg !141
  %"74" = load i32* @"'memory2_freeIndex", align 4, !dbg !142
  %"75" = add nsw i32 %"74", 1, !dbg !142
  store i32 %"75", i32* @"'memory2_freeIndex", align 4, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !143), !dbg !144
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !145), !dbg !147
  %"76" = load i32* @"'memory1_freeIndex", align 4, !dbg !148
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !149), !dbg !150
  %"77" = load i32* @"'memory1_freeIndex", align 4, !dbg !151
  %"78" = add nsw i32 %"77", 1, !dbg !151
  store i32 %"78", i32* @"'memory1_freeIndex", align 4, !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %"76"}, i64 0, metadata !152), !dbg !153
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !154), !dbg !156
  %"79" = load i32* @"'memory0_freeIndex", align 4, !dbg !157
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !158), !dbg !159
  %"80" = load i32* @"'memory0_freeIndex", align 4, !dbg !160
  %"81" = add nsw i32 %"80", 1, !dbg !160
  store i32 %"81", i32* @"'memory0_freeIndex", align 4, !dbg !160
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !161), !dbg !162
  %"82" = sext i32 %"70" to i64, !dbg !163
  %"83" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"82", !dbg !163
  store i32 %"68", i32* %"83", align 4, !dbg !163
  %"84" = sext i32 %"73" to i64, !dbg !164
  %"85" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"84", !dbg !164
  store i32 %"69", i32* %"85", align 4, !dbg !164
  %"86" = sext i32 %"76" to i64, !dbg !165
  %"87" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"86", !dbg !165
  store i32 0, i32* %"87", align 4, !dbg !165
  %"88" = sext i32 %"79" to i64, !dbg !166
  %"89" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"88", !dbg !166
  store i32 0, i32* %"89", align 4, !dbg !166
  %"90" = sext i32 %"76" to i64, !dbg !167
  %"91" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"90", !dbg !167
  %"92" = sext i32 %"70" to i64, !dbg !167
  %"93" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"92", !dbg !167
  %"94" = load i32* %"93", align 4, !dbg !167
  %"95" = sext i32 %"76" to i64, !dbg !168
  %"96" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"95", !dbg !168
  %"97" = sext i32 %"76" to i64, !dbg !169
  %"98" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"97", !dbg !169
  %"99" = sext i32 %"79" to i64, !dbg !170
  %"100" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"99", !dbg !170
  %"101" = sext i32 %"79" to i64, !dbg !171
  %"102" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"101", !dbg !171
  %"103" = sext i32 %"76" to i64, !dbg !172
  %"104" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"103", !dbg !172
  br label %main_bb12, !dbg !166

main_bb12:                                        ; preds = %main_bb16, %main_bb13, %main_bb11
  %"105" = load i32* %"91", align 4, !dbg !167
  %"106" = icmp slt i32 %"105", %"94", !dbg !167
  br i1 %"106", label %main_bb13, label %main_bb14, !dbg !167

main_bb13:                                        ; preds = %main_bb12
  %"107" = load i32* %"96", align 4, !dbg !168
  %"108" = add nsw i32 %"107", 1, !dbg !168
  store i32 %"108", i32* %"96", align 4, !dbg !168
  %"109" = load i32* %"98", align 4, !dbg !169
  %"110" = srem i32 %"109", 2, !dbg !169
  %"111" = icmp ne i32 %"110", 0, !dbg !169
  br i1 %"111", label %main_bb12, label %main_bb14, !dbg !169

main_bb14:                                        ; preds = %main_bb13, %main_bb12
  %"112" = load i32* %"104", align 4, !dbg !172
  %"113" = srem i32 %"112", 2, !dbg !172
  br label %main_bb15, !dbg !173

main_bb15:                                        ; preds = %main_bb16, %main_bb14
  %"114" = load i32* %"100", align 4, !dbg !170
  %"115" = icmp slt i32 %"114", 1, !dbg !170
  br i1 %"115", label %main_bb16, label %main_f.exit, !dbg !170

main_bb16:                                        ; preds = %main_bb15
  %"116" = load i32* %"102", align 4, !dbg !171
  %"117" = add nsw i32 %"116", 1, !dbg !171
  store i32 %"117", i32* %"102", align 4, !dbg !171
  %"118" = icmp ne i32 %"113", 0, !dbg !172
  br i1 %"118", label %main_bb15, label %main_bb12, !dbg !172

main_f.exit:                                      ; preds = %main_bb15
  %"119" = sext i32 %"76" to i64, !dbg !174
  %"120" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"119", !dbg !174
  %"121" = load i32* %"120", align 4, !dbg !174
  %"122" = sext i32 %"79" to i64, !dbg !174
  %"123" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"122", !dbg !174
  %"124" = load i32* %"123", align 4, !dbg !174
  %"125" = add nsw i32 %"121", %"124", !dbg !174
  ret i32 %"125", !dbg !123
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
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 41, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @f, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [f]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 68, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 68} ; [ DW_TAG_subprogram ] [line 68] [def] [main]
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
!61 = metadata !{i32 786689, metadata !12, metadata !"k", metadata !5, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 41]
!62 = metadata !{i32 41, i32 11, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"l", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 41]
!64 = metadata !{i32 41, i32 18, metadata !12, null}
!65 = metadata !{i32 1}
!66 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !67} ; [ DW_TAG_arg_variable ] [size] [line 35]
!67 = metadata !{i32 43, i32 17, metadata !12, null}
!68 = metadata !{i32 35, i32 26, metadata !11, metadata !67}
!69 = metadata !{i32 36, i32 4, metadata !11, metadata !67}
!70 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !67} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!71 = metadata !{i32 36, i32 8, metadata !11, metadata !67}
!72 = metadata !{i32 37, i32 4, metadata !11, metadata !67}
!73 = metadata !{i32 786688, metadata !12, metadata !"k_ref", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k_ref] [line 43]
!74 = metadata !{i32 43, i32 9, metadata !12, null}
!75 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [size] [line 26]
!76 = metadata !{i32 44, i32 17, metadata !12, null}
!77 = metadata !{i32 26, i32 26, metadata !10, metadata !76}
!78 = metadata !{i32 27, i32 4, metadata !10, metadata !76}
!79 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!80 = metadata !{i32 27, i32 8, metadata !10, metadata !76}
!81 = metadata !{i32 28, i32 4, metadata !10, metadata !76}
!82 = metadata !{i32 786688, metadata !12, metadata !"l_ref", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l_ref] [line 44]
!83 = metadata !{i32 44, i32 9, metadata !12, null}
!84 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [size] [line 17]
!85 = metadata !{i32 45, i32 13, metadata !12, null}
!86 = metadata !{i32 17, i32 26, metadata !9, metadata !85}
!87 = metadata !{i32 18, i32 4, metadata !9, metadata !85}
!88 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!89 = metadata !{i32 18, i32 8, metadata !9, metadata !85}
!90 = metadata !{i32 19, i32 4, metadata !9, metadata !85}
!91 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 45]
!92 = metadata !{i32 45, i32 9, metadata !12, null}
!93 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [size] [line 8]
!94 = metadata !{i32 46, i32 13, metadata !12, null}
!95 = metadata !{i32 8, i32 26, metadata !4, metadata !94} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 9, i32 4, metadata !4, metadata !94}
!97 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !94} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!98 = metadata !{i32 9, i32 8, metadata !4, metadata !94}
!99 = metadata !{i32 10, i32 4, metadata !4, metadata !94}
!100 = metadata !{i32 786688, metadata !12, metadata !"j", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 46]
!101 = metadata !{i32 46, i32 9, metadata !12, null}
!102 = metadata !{i32 47, i32 5, metadata !12, null}
!103 = metadata !{i32 48, i32 5, metadata !12, null}
!104 = metadata !{i32 49, i32 5, metadata !12, null}
!105 = metadata !{i32 50, i32 5, metadata !12, null}
!106 = metadata !{i32 51, i32 5, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!108 = metadata !{i32 52, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 41, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 53, i32 13, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !109, i32 53, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 58, i32 5, metadata !113, null} ; [ DW_TAG_imported_module ]
!113 = metadata !{i32 786443, metadata !1, metadata !12, i32 58, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!114 = metadata !{i32 59, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !12, i32 58, i32 28, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 60, i32 13, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !115, i32 60, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!118 = metadata !{i32 58, i32 5, metadata !12, null} ; [ DW_TAG_imported_module ]
!119 = metadata !{i32 65, i32 5, metadata !12, null}
!120 = metadata !{i32 69, i32 12, metadata !15, null}
!121 = metadata !{i32 69, i32 36, metadata !15, null}
!122 = metadata !{i32 786689, metadata !12, metadata !"k", metadata !5, i32 16777257, metadata !8, i32 0, metadata !123} ; [ DW_TAG_arg_variable ] [k] [line 41]
!123 = metadata !{i32 69, i32 10, metadata !15, null}
!124 = metadata !{i32 41, i32 11, metadata !12, metadata !123}
!125 = metadata !{i32 786689, metadata !12, metadata !"l", metadata !5, i32 33554473, metadata !8, i32 0, metadata !123} ; [ DW_TAG_arg_variable ] [l] [line 41]
!126 = metadata !{i32 41, i32 18, metadata !12, metadata !123}
!127 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [size] [line 35]
!128 = metadata !{i32 43, i32 17, metadata !12, metadata !123}
!129 = metadata !{i32 35, i32 26, metadata !11, metadata !128}
!130 = metadata !{i32 36, i32 4, metadata !11, metadata !128}
!131 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!132 = metadata !{i32 36, i32 8, metadata !11, metadata !128}
!133 = metadata !{i32 37, i32 4, metadata !11, metadata !128}
!134 = metadata !{i32 786688, metadata !12, metadata !"k_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !123} ; [ DW_TAG_auto_variable ] [k_ref] [line 43]
!135 = metadata !{i32 43, i32 9, metadata !12, metadata !123}
!136 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !137} ; [ DW_TAG_arg_variable ] [size] [line 26]
!137 = metadata !{i32 44, i32 17, metadata !12, metadata !123}
!138 = metadata !{i32 26, i32 26, metadata !10, metadata !137}
!139 = metadata !{i32 27, i32 4, metadata !10, metadata !137}
!140 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !137} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!141 = metadata !{i32 27, i32 8, metadata !10, metadata !137}
!142 = metadata !{i32 28, i32 4, metadata !10, metadata !137}
!143 = metadata !{i32 786688, metadata !12, metadata !"l_ref", metadata !5, i32 44, metadata !8, i32 0, metadata !123} ; [ DW_TAG_auto_variable ] [l_ref] [line 44]
!144 = metadata !{i32 44, i32 9, metadata !12, metadata !123}
!145 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !146} ; [ DW_TAG_arg_variable ] [size] [line 17]
!146 = metadata !{i32 45, i32 13, metadata !12, metadata !123}
!147 = metadata !{i32 17, i32 26, metadata !9, metadata !146}
!148 = metadata !{i32 18, i32 4, metadata !9, metadata !146}
!149 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !146} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!150 = metadata !{i32 18, i32 8, metadata !9, metadata !146}
!151 = metadata !{i32 19, i32 4, metadata !9, metadata !146}
!152 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 45, metadata !8, i32 0, metadata !123} ; [ DW_TAG_auto_variable ] [i] [line 45]
!153 = metadata !{i32 45, i32 9, metadata !12, metadata !123}
!154 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !155} ; [ DW_TAG_arg_variable ] [size] [line 8]
!155 = metadata !{i32 46, i32 13, metadata !12, metadata !123}
!156 = metadata !{i32 8, i32 26, metadata !4, metadata !155} ; [ DW_TAG_imported_declaration ]
!157 = metadata !{i32 9, i32 4, metadata !4, metadata !155}
!158 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !155} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!159 = metadata !{i32 9, i32 8, metadata !4, metadata !155}
!160 = metadata !{i32 10, i32 4, metadata !4, metadata !155}
!161 = metadata !{i32 786688, metadata !12, metadata !"j", metadata !5, i32 46, metadata !8, i32 0, metadata !123} ; [ DW_TAG_auto_variable ] [j] [line 46]
!162 = metadata !{i32 46, i32 9, metadata !12, metadata !123}
!163 = metadata !{i32 47, i32 5, metadata !12, metadata !123}
!164 = metadata !{i32 48, i32 5, metadata !12, metadata !123}
!165 = metadata !{i32 49, i32 5, metadata !12, metadata !123}
!166 = metadata !{i32 50, i32 5, metadata !12, metadata !123}
!167 = metadata !{i32 51, i32 5, metadata !107, metadata !123}
!168 = metadata !{i32 52, i32 9, metadata !109, metadata !123}
!169 = metadata !{i32 53, i32 13, metadata !111, metadata !123}
!170 = metadata !{i32 58, i32 5, metadata !113, metadata !123} ; [ DW_TAG_imported_module ]
!171 = metadata !{i32 59, i32 9, metadata !115, metadata !123}
!172 = metadata !{i32 60, i32 13, metadata !117, metadata !123}
!173 = metadata !{i32 58, i32 5, metadata !12, metadata !123} ; [ DW_TAG_imported_module ]
!174 = metadata !{i32 65, i32 5, metadata !12, metadata !123}

