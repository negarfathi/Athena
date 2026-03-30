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
define i32 @f(i32 %x, i32 %y) #0 {
f_bb4:
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
  store i32 1, i32* %"29", align 4, !dbg !104
  %"30" = sext i32 %"21" to i64, !dbg !105
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !105
  store i32 0, i32* %"31", align 4, !dbg !105
  %"32" = sext i32 %"18" to i64, !dbg !106
  %"33" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"32", !dbg !106
  %"34" = sext i32 %"12" to i64, !dbg !108
  %"35" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"34", !dbg !108
  %"36" = sext i32 %"15" to i64, !dbg !108
  %"37" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"36", !dbg !108
  %"38" = load i32* %"37", align 4, !dbg !108
  %"39" = sext i32 %"18" to i64, !dbg !108
  %"40" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"39", !dbg !108
  %"41" = sext i32 %"21" to i64, !dbg !110
  %"42" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"41", !dbg !110
  %"43" = sext i32 %"21" to i64, !dbg !110
  %"44" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"43", !dbg !110
  br label %f_bb5, !dbg !111

f_bb5:                                            ; preds = %f_bb6, %f_bb4
  %"45" = load i32* %"33", align 4, !dbg !106
  %"46" = icmp ne i32 %"45", 0, !dbg !106
  br i1 %"46", label %f_bb6, label %f_bb7, !dbg !106

f_bb6:                                            ; preds = %f_bb5
  %"47" = load i32* %"35", align 4, !dbg !108
  %"48" = add nsw i32 %"47", 1, !dbg !108
  store i32 %"48", i32* %"35", align 4, !dbg !108
  %"49" = icmp slt i32 %"47", %"38", !dbg !108
  %"50" = zext i1 %"49" to i32, !dbg !108
  store i32 %"50", i32* %"40", align 4, !dbg !108
  %"51" = load i32* %"42", align 4, !dbg !110
  %"52" = add nsw i32 %"51", 1, !dbg !110
  store i32 %"52", i32* %"44", align 4, !dbg !110
  br label %f_bb5, !dbg !112

f_bb7:                                            ; preds = %f_bb5
  %"53" = sext i32 %"21" to i64, !dbg !113
  %"54" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"53", !dbg !113
  %"55" = load i32* %"54", align 4, !dbg !113
  ret i32 %"55", !dbg !113
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"56" = call i32 @__VERIFIER_nondet_int(), !dbg !114
  %"57" = call i32 @__VERIFIER_nondet_int(), !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !116), !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !119), !dbg !120
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !121), !dbg !123
  %"58" = load i32* @"'memory3_freeIndex", align 4, !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !125), !dbg !126
  %"59" = load i32* @"'memory3_freeIndex", align 4, !dbg !127
  %"60" = add nsw i32 %"59", 1, !dbg !127
  store i32 %"60", i32* @"'memory3_freeIndex", align 4, !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !128), !dbg !129
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !130), !dbg !132
  %"61" = load i32* @"'memory2_freeIndex", align 4, !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !134), !dbg !135
  %"62" = load i32* @"'memory2_freeIndex", align 4, !dbg !136
  %"63" = add nsw i32 %"62", 1, !dbg !136
  store i32 %"63", i32* @"'memory2_freeIndex", align 4, !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !137), !dbg !138
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !139), !dbg !141
  %"64" = load i32* @"'memory1_freeIndex", align 4, !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !143), !dbg !144
  %"65" = load i32* @"'memory1_freeIndex", align 4, !dbg !145
  %"66" = add nsw i32 %"65", 1, !dbg !145
  store i32 %"66", i32* @"'memory1_freeIndex", align 4, !dbg !145
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !146), !dbg !147
  call void @llvm.dbg.value(metadata !65, i64 0, metadata !148), !dbg !150
  %"67" = load i32* @"'memory0_freeIndex", align 4, !dbg !151
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !152), !dbg !153
  %"68" = load i32* @"'memory0_freeIndex", align 4, !dbg !154
  %"69" = add nsw i32 %"68", 1, !dbg !154
  store i32 %"69", i32* @"'memory0_freeIndex", align 4, !dbg !154
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !155), !dbg !156
  %"70" = sext i32 %"58" to i64, !dbg !157
  %"71" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"70", !dbg !157
  store i32 %"56", i32* %"71", align 4, !dbg !157
  %"72" = sext i32 %"61" to i64, !dbg !158
  %"73" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"72", !dbg !158
  store i32 %"57", i32* %"73", align 4, !dbg !158
  %"74" = sext i32 %"64" to i64, !dbg !159
  %"75" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"74", !dbg !159
  store i32 1, i32* %"75", align 4, !dbg !159
  %"76" = sext i32 %"67" to i64, !dbg !160
  %"77" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"76", !dbg !160
  store i32 0, i32* %"77", align 4, !dbg !160
  %"78" = sext i32 %"64" to i64, !dbg !161
  %"79" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"78", !dbg !161
  %"80" = sext i32 %"58" to i64, !dbg !162
  %"81" = getelementptr inbounds [100000 x i32]* @memory3, i32 0, i64 %"80", !dbg !162
  %"82" = sext i32 %"61" to i64, !dbg !162
  %"83" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"82", !dbg !162
  %"84" = load i32* %"83", align 4, !dbg !162
  %"85" = sext i32 %"64" to i64, !dbg !162
  %"86" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"85", !dbg !162
  %"87" = sext i32 %"67" to i64, !dbg !163
  %"88" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"87", !dbg !163
  %"89" = sext i32 %"67" to i64, !dbg !163
  %"90" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"89", !dbg !163
  br label %main_bb9, !dbg !164

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %"91" = load i32* %"79", align 4, !dbg !161
  %"92" = icmp ne i32 %"91", 0, !dbg !161
  br i1 %"92", label %main_bb10, label %main_f.exit, !dbg !161

main_bb10:                                        ; preds = %main_bb9
  %"93" = load i32* %"81", align 4, !dbg !162
  %"94" = add nsw i32 %"93", 1, !dbg !162
  store i32 %"94", i32* %"81", align 4, !dbg !162
  %"95" = icmp slt i32 %"93", %"84", !dbg !162
  %"96" = zext i1 %"95" to i32, !dbg !162
  store i32 %"96", i32* %"86", align 4, !dbg !162
  %"97" = load i32* %"88", align 4, !dbg !163
  %"98" = add nsw i32 %"97", 1, !dbg !163
  store i32 %"98", i32* %"90", align 4, !dbg !163
  br label %main_bb9, !dbg !165

main_f.exit:                                      ; preds = %main_bb9
  %"99" = sext i32 %"67" to i64, !dbg !166
  %"100" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"99", !dbg !166
  %"101" = load i32* %"100", align 4, !dbg !166
  ret i32 %"101", !dbg !117
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
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 58, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 58] [def] [main]
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
!62 = metadata !{i32 41, i32 11, metadata !12, null}
!63 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 41]
!64 = metadata !{i32 41, i32 18, metadata !12, null}
!65 = metadata !{i32 1}
!66 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !67} ; [ DW_TAG_arg_variable ] [size] [line 35]
!67 = metadata !{i32 43, i32 17, metadata !12, null}
!68 = metadata !{i32 35, i32 26, metadata !11, metadata !67}
!69 = metadata !{i32 36, i32 4, metadata !11, metadata !67}
!70 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !67} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!71 = metadata !{i32 36, i32 8, metadata !11, metadata !67}
!72 = metadata !{i32 37, i32 4, metadata !11, metadata !67}
!73 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!74 = metadata !{i32 43, i32 9, metadata !12, null}
!75 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [size] [line 26]
!76 = metadata !{i32 44, i32 17, metadata !12, null}
!77 = metadata !{i32 26, i32 26, metadata !10, metadata !76}
!78 = metadata !{i32 27, i32 4, metadata !10, metadata !76}
!79 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!80 = metadata !{i32 27, i32 8, metadata !10, metadata !76}
!81 = metadata !{i32 28, i32 4, metadata !10, metadata !76}
!82 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!83 = metadata !{i32 44, i32 9, metadata !12, null}
!84 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [size] [line 17]
!85 = metadata !{i32 45, i32 16, metadata !12, null}
!86 = metadata !{i32 17, i32 26, metadata !9, metadata !85}
!87 = metadata !{i32 18, i32 4, metadata !9, metadata !85}
!88 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!89 = metadata !{i32 18, i32 8, metadata !9, metadata !85}
!90 = metadata !{i32 19, i32 4, metadata !9, metadata !85}
!91 = metadata !{i32 786688, metadata !12, metadata !"flag", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [flag] [line 45]
!92 = metadata !{i32 45, i32 9, metadata !12, null}
!93 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [size] [line 8]
!94 = metadata !{i32 46, i32 13, metadata !12, null}
!95 = metadata !{i32 8, i32 26, metadata !4, metadata !94} ; [ DW_TAG_imported_declaration ]
!96 = metadata !{i32 9, i32 4, metadata !4, metadata !94}
!97 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !94} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!98 = metadata !{i32 9, i32 8, metadata !4, metadata !94}
!99 = metadata !{i32 10, i32 4, metadata !4, metadata !94}
!100 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 46]
!101 = metadata !{i32 46, i32 9, metadata !12, null}
!102 = metadata !{i32 47, i32 5, metadata !12, null}
!103 = metadata !{i32 48, i32 5, metadata !12, null}
!104 = metadata !{i32 49, i32 5, metadata !12, null}
!105 = metadata !{i32 50, i32 5, metadata !12, null}
!106 = metadata !{i32 51, i32 5, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!108 = metadata !{i32 52, i32 9, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !12, i32 51, i32 27, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!110 = metadata !{i32 53, i32 9, metadata !109, null}
!111 = metadata !{i32 51, i32 5, metadata !12, null}
!112 = metadata !{i32 54, i32 5, metadata !109, null}
!113 = metadata !{i32 55, i32 5, metadata !12, null}
!114 = metadata !{i32 59, i32 12, metadata !15, null}
!115 = metadata !{i32 59, i32 36, metadata !15, null}
!116 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777257, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [x] [line 41]
!117 = metadata !{i32 59, i32 10, metadata !15, null}
!118 = metadata !{i32 41, i32 11, metadata !12, metadata !117}
!119 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554473, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [y] [line 41]
!120 = metadata !{i32 41, i32 18, metadata !12, metadata !117}
!121 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777251, metadata !8, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [size] [line 35]
!122 = metadata !{i32 43, i32 17, metadata !12, metadata !117}
!123 = metadata !{i32 35, i32 26, metadata !11, metadata !122}
!124 = metadata !{i32 36, i32 4, metadata !11, metadata !122}
!125 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 36, metadata !8, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 36]
!126 = metadata !{i32 36, i32 8, metadata !11, metadata !122}
!127 = metadata !{i32 37, i32 4, metadata !11, metadata !122}
!128 = metadata !{i32 786688, metadata !12, metadata !"x_ref", metadata !5, i32 43, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [x_ref] [line 43]
!129 = metadata !{i32 43, i32 9, metadata !12, metadata !117}
!130 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !131} ; [ DW_TAG_arg_variable ] [size] [line 26]
!131 = metadata !{i32 44, i32 17, metadata !12, metadata !117}
!132 = metadata !{i32 26, i32 26, metadata !10, metadata !131}
!133 = metadata !{i32 27, i32 4, metadata !10, metadata !131}
!134 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !131} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!135 = metadata !{i32 27, i32 8, metadata !10, metadata !131}
!136 = metadata !{i32 28, i32 4, metadata !10, metadata !131}
!137 = metadata !{i32 786688, metadata !12, metadata !"y_ref", metadata !5, i32 44, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [y_ref] [line 44]
!138 = metadata !{i32 44, i32 9, metadata !12, metadata !117}
!139 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [size] [line 17]
!140 = metadata !{i32 45, i32 16, metadata !12, metadata !117}
!141 = metadata !{i32 17, i32 26, metadata !9, metadata !140}
!142 = metadata !{i32 18, i32 4, metadata !9, metadata !140}
!143 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !140} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!144 = metadata !{i32 18, i32 8, metadata !9, metadata !140}
!145 = metadata !{i32 19, i32 4, metadata !9, metadata !140}
!146 = metadata !{i32 786688, metadata !12, metadata !"flag", metadata !5, i32 45, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [flag] [line 45]
!147 = metadata !{i32 45, i32 9, metadata !12, metadata !117}
!148 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [size] [line 8]
!149 = metadata !{i32 46, i32 13, metadata !12, metadata !117}
!150 = metadata !{i32 8, i32 26, metadata !4, metadata !149} ; [ DW_TAG_imported_declaration ]
!151 = metadata !{i32 9, i32 4, metadata !4, metadata !149}
!152 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !149} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!153 = metadata !{i32 9, i32 8, metadata !4, metadata !149}
!154 = metadata !{i32 10, i32 4, metadata !4, metadata !149}
!155 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 46, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [c] [line 46]
!156 = metadata !{i32 46, i32 9, metadata !12, metadata !117}
!157 = metadata !{i32 47, i32 5, metadata !12, metadata !117}
!158 = metadata !{i32 48, i32 5, metadata !12, metadata !117}
!159 = metadata !{i32 49, i32 5, metadata !12, metadata !117}
!160 = metadata !{i32 50, i32 5, metadata !12, metadata !117}
!161 = metadata !{i32 51, i32 5, metadata !107, metadata !117}
!162 = metadata !{i32 52, i32 9, metadata !109, metadata !117}
!163 = metadata !{i32 53, i32 9, metadata !109, metadata !117}
!164 = metadata !{i32 51, i32 5, metadata !12, metadata !117}
!165 = metadata !{i32 54, i32 5, metadata !109, metadata !117}
!166 = metadata !{i32 55, i32 5, metadata !12, metadata !117}

