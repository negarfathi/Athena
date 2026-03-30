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
  %"30" = sext i32 %"9" to i64, !dbg !88
  %"31" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"30", !dbg !88
  %"32" = sext i32 %"12" to i64, !dbg !90
  %"33" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"32", !dbg !90
  %"34" = sext i32 %"12" to i64, !dbg !90
  %"35" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"34", !dbg !90
  %"36" = sext i32 %"15" to i64, !dbg !91
  %"37" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"36", !dbg !91
  %"38" = sext i32 %"15" to i64, !dbg !91
  %"39" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"38", !dbg !91
  br label %test_fun_bb4, !dbg !92

test_fun_bb4:                                     ; preds = %test_fun_bb5, %test_fun_bb3
  %"40" = load i32* %"25", align 4, !dbg !86
  %"41" = load i32* %"27", align 4, !dbg !86
  %"42" = icmp sgt i32 %"40", %"41", !dbg !86
  br i1 %"42", label %test_fun_bb5, label %test_fun_bb6, !dbg !86

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"43" = load i32* %"29", align 4, !dbg !88
  %"44" = sub nsw i32 %"43", 1, !dbg !88
  store i32 %"44", i32* %"31", align 4, !dbg !88
  %"45" = load i32* %"33", align 4, !dbg !90
  %"46" = add nsw i32 %"45", 1, !dbg !90
  store i32 %"46", i32* %"35", align 4, !dbg !90
  %"47" = load i32* %"37", align 4, !dbg !91
  %"48" = add nsw i32 %"47", 1, !dbg !91
  store i32 %"48", i32* %"39", align 4, !dbg !91
  br label %test_fun_bb4, !dbg !93

test_fun_bb6:                                     ; preds = %test_fun_bb4
  %"49" = sext i32 %"15" to i64, !dbg !94
  %"50" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"49", !dbg !94
  %"51" = load i32* %"50", align 4, !dbg !94
  ret i32 %"51", !dbg !94
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"52" = call i32 @__VERIFIER_nondet_int(), !dbg !95
  %"53" = call i32 @__VERIFIER_nondet_int(), !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !97), !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !102), !dbg !104
  %"54" = load i32* @"'memory2_freeIndex", align 4, !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !106), !dbg !107
  %"55" = load i32* @"'memory2_freeIndex", align 4, !dbg !108
  %"56" = add nsw i32 %"55", 1, !dbg !108
  store i32 %"56", i32* @"'memory2_freeIndex", align 4, !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !109), !dbg !110
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !111), !dbg !113
  %"57" = load i32* @"'memory1_freeIndex", align 4, !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !115), !dbg !116
  %"58" = load i32* @"'memory1_freeIndex", align 4, !dbg !117
  %"59" = add nsw i32 %"58", 1, !dbg !117
  store i32 %"59", i32* @"'memory1_freeIndex", align 4, !dbg !117
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !118), !dbg !119
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !120), !dbg !122
  %"60" = load i32* @"'memory0_freeIndex", align 4, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !124), !dbg !125
  %"61" = load i32* @"'memory0_freeIndex", align 4, !dbg !126
  %"62" = add nsw i32 %"61", 1, !dbg !126
  store i32 %"62", i32* @"'memory0_freeIndex", align 4, !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !127), !dbg !128
  %"63" = sext i32 %"54" to i64, !dbg !129
  %"64" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"63", !dbg !129
  store i32 %"52", i32* %"64", align 4, !dbg !129
  %"65" = sext i32 %"57" to i64, !dbg !130
  %"66" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"65", !dbg !130
  store i32 %"53", i32* %"66", align 4, !dbg !130
  %"67" = sext i32 %"60" to i64, !dbg !131
  %"68" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"67", !dbg !131
  store i32 0, i32* %"68", align 4, !dbg !131
  %"69" = sext i32 %"54" to i64, !dbg !132
  %"70" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"69", !dbg !132
  %"71" = sext i32 %"57" to i64, !dbg !132
  %"72" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"71", !dbg !132
  %"73" = sext i32 %"54" to i64, !dbg !133
  %"74" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"73", !dbg !133
  %"75" = sext i32 %"54" to i64, !dbg !133
  %"76" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"75", !dbg !133
  %"77" = sext i32 %"57" to i64, !dbg !134
  %"78" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"77", !dbg !134
  %"79" = sext i32 %"57" to i64, !dbg !134
  %"80" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"79", !dbg !134
  %"81" = sext i32 %"60" to i64, !dbg !135
  %"82" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"81", !dbg !135
  %"83" = sext i32 %"60" to i64, !dbg !135
  %"84" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"83", !dbg !135
  br label %main_bb8, !dbg !136

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %"85" = load i32* %"70", align 4, !dbg !132
  %"86" = load i32* %"72", align 4, !dbg !132
  %"87" = icmp sgt i32 %"85", %"86", !dbg !132
  br i1 %"87", label %main_bb9, label %main_test_fun.exit, !dbg !132

main_bb9:                                         ; preds = %main_bb8
  %"88" = load i32* %"74", align 4, !dbg !133
  %"89" = sub nsw i32 %"88", 1, !dbg !133
  store i32 %"89", i32* %"76", align 4, !dbg !133
  %"90" = load i32* %"78", align 4, !dbg !134
  %"91" = add nsw i32 %"90", 1, !dbg !134
  store i32 %"91", i32* %"80", align 4, !dbg !134
  %"92" = load i32* %"82", align 4, !dbg !135
  %"93" = add nsw i32 %"92", 1, !dbg !135
  store i32 %"93", i32* %"84", align 4, !dbg !135
  br label %main_bb8, !dbg !137

main_test_fun.exit:                               ; preds = %main_bb8
  %"94" = sext i32 %"60" to i64, !dbg !138
  %"95" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"94", !dbg !138
  %"96" = load i32* %"95", align 4, !dbg !138
  ret i32 %"96", !dbg !98
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
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 48, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [main]
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
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 41, i32 9, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 45, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 42, i32 9, metadata !89, null}
!91 = metadata !{i32 43, i32 9, metadata !89, null}
!92 = metadata !{i32 40, i32 5, metadata !11, null}
!93 = metadata !{i32 44, i32 5, metadata !89, null}
!94 = metadata !{i32 45, i32 5, metadata !11, null}
!95 = metadata !{i32 49, i32 19, metadata !14, null}
!96 = metadata !{i32 49, i32 43, metadata !14, null}
!97 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [x] [line 32]
!98 = metadata !{i32 49, i32 10, metadata !14, null}
!99 = metadata !{i32 32, i32 18, metadata !11, metadata !98}
!100 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [y] [line 32]
!101 = metadata !{i32 32, i32 25, metadata !11, metadata !98}
!102 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [size] [line 26]
!103 = metadata !{i32 34, i32 17, metadata !11, metadata !98}
!104 = metadata !{i32 26, i32 26, metadata !10, metadata !103}
!105 = metadata !{i32 27, i32 4, metadata !10, metadata !103}
!106 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!107 = metadata !{i32 27, i32 8, metadata !10, metadata !103}
!108 = metadata !{i32 28, i32 4, metadata !10, metadata !103}
!109 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!110 = metadata !{i32 34, i32 9, metadata !11, metadata !98}
!111 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !112} ; [ DW_TAG_arg_variable ] [size] [line 17]
!112 = metadata !{i32 35, i32 17, metadata !11, metadata !98}
!113 = metadata !{i32 17, i32 26, metadata !9, metadata !112}
!114 = metadata !{i32 18, i32 4, metadata !9, metadata !112}
!115 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !112} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!116 = metadata !{i32 18, i32 8, metadata !9, metadata !112}
!117 = metadata !{i32 19, i32 4, metadata !9, metadata !112}
!118 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!119 = metadata !{i32 35, i32 9, metadata !11, metadata !98}
!120 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !121} ; [ DW_TAG_arg_variable ] [size] [line 8]
!121 = metadata !{i32 36, i32 13, metadata !11, metadata !98}
!122 = metadata !{i32 8, i32 26, metadata !4, metadata !121} ; [ DW_TAG_imported_declaration ]
!123 = metadata !{i32 9, i32 4, metadata !4, metadata !121}
!124 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !121} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!125 = metadata !{i32 9, i32 8, metadata !4, metadata !121}
!126 = metadata !{i32 10, i32 4, metadata !4, metadata !121}
!127 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [c] [line 36]
!128 = metadata !{i32 36, i32 9, metadata !11, metadata !98}
!129 = metadata !{i32 37, i32 5, metadata !11, metadata !98}
!130 = metadata !{i32 38, i32 5, metadata !11, metadata !98}
!131 = metadata !{i32 39, i32 5, metadata !11, metadata !98}
!132 = metadata !{i32 40, i32 5, metadata !87, metadata !98}
!133 = metadata !{i32 41, i32 9, metadata !89, metadata !98}
!134 = metadata !{i32 42, i32 9, metadata !89, metadata !98}
!135 = metadata !{i32 43, i32 9, metadata !89, metadata !98}
!136 = metadata !{i32 40, i32 5, metadata !11, metadata !98}
!137 = metadata !{i32 44, i32 5, metadata !89, metadata !98}
!138 = metadata !{i32 45, i32 5, metadata !11, metadata !98}

