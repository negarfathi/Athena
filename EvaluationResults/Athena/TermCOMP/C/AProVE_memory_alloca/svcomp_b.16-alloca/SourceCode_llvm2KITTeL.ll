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
  %"26" = sext i32 %"12" to i64, !dbg !88
  %"27" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"26", !dbg !88
  %"28" = sext i32 %"12" to i64, !dbg !91
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !91
  %"30" = sext i32 %"12" to i64, !dbg !91
  %"31" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"30", !dbg !91
  %"32" = sext i32 %"15" to i64, !dbg !93
  %"33" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"32", !dbg !93
  %"34" = sext i32 %"15" to i64, !dbg !93
  %"35" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"34", !dbg !93
  br label %test_fun_bb4, !dbg !94

test_fun_bb4:                                     ; preds = %test_fun_bb7, %test_fun_bb3
  %"36" = load i32* %"25", align 4, !dbg !86
  %"37" = icmp sgt i32 %"36", 0, !dbg !86
  br i1 %"37", label %test_fun_bb5, label %test_fun_bb8, !dbg !86

test_fun_bb5:                                     ; preds = %test_fun_bb4, %test_fun_bb6
  %"38" = load i32* %"27", align 4, !dbg !88
  %"39" = icmp sgt i32 %"38", 0, !dbg !88
  br i1 %"39", label %test_fun_bb6, label %test_fun_bb7, !dbg !88

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"40" = load i32* %"29", align 4, !dbg !91
  %"41" = sub nsw i32 %"40", 1, !dbg !91
  store i32 %"41", i32* %"31", align 4, !dbg !91
  %"42" = load i32* %"33", align 4, !dbg !93
  %"43" = add nsw i32 %"42", 1, !dbg !93
  store i32 %"43", i32* %"35", align 4, !dbg !93
  br label %test_fun_bb5, !dbg !95

test_fun_bb7:                                     ; preds = %test_fun_bb5
  %"44" = sext i32 %"9" to i64, !dbg !96
  %"45" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"44", !dbg !96
  %"46" = load i32* %"45", align 4, !dbg !96
  %"47" = sub nsw i32 %"46", 1, !dbg !96
  %"48" = sext i32 %"9" to i64, !dbg !96
  %"49" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"48", !dbg !96
  store i32 %"47", i32* %"49", align 4, !dbg !96
  %"50" = sext i32 %"15" to i64, !dbg !97
  %"51" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"50", !dbg !97
  %"52" = load i32* %"51", align 4, !dbg !97
  %"53" = add nsw i32 %"52", 1, !dbg !97
  %"54" = sext i32 %"15" to i64, !dbg !97
  %"55" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"54", !dbg !97
  store i32 %"53", i32* %"55", align 4, !dbg !97
  br label %test_fun_bb4, !dbg !98

test_fun_bb8:                                     ; preds = %test_fun_bb4
  %"56" = sext i32 %"15" to i64, !dbg !99
  %"57" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"56", !dbg !99
  %"58" = load i32* %"57", align 4, !dbg !99
  ret i32 %"58", !dbg !99
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"59" = call i32 @__VERIFIER_nondet_int(), !dbg !100
  %"60" = call i32 @__VERIFIER_nondet_int(), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !102), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !105), !dbg !106
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !107), !dbg !109
  %"61" = load i32* @"'memory2_freeIndex", align 4, !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !111), !dbg !112
  %"62" = load i32* @"'memory2_freeIndex", align 4, !dbg !113
  %"63" = add nsw i32 %"62", 1, !dbg !113
  store i32 %"63", i32* @"'memory2_freeIndex", align 4, !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !114), !dbg !115
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !116), !dbg !118
  %"64" = load i32* @"'memory1_freeIndex", align 4, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !120), !dbg !121
  %"65" = load i32* @"'memory1_freeIndex", align 4, !dbg !122
  %"66" = add nsw i32 %"65", 1, !dbg !122
  store i32 %"66", i32* @"'memory1_freeIndex", align 4, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !123), !dbg !124
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !125), !dbg !127
  %"67" = load i32* @"'memory0_freeIndex", align 4, !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !129), !dbg !130
  %"68" = load i32* @"'memory0_freeIndex", align 4, !dbg !131
  %"69" = add nsw i32 %"68", 1, !dbg !131
  store i32 %"69", i32* @"'memory0_freeIndex", align 4, !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !132), !dbg !133
  %"70" = sext i32 %"61" to i64, !dbg !134
  %"71" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"70", !dbg !134
  store i32 %"59", i32* %"71", align 4, !dbg !134
  %"72" = sext i32 %"64" to i64, !dbg !135
  %"73" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"72", !dbg !135
  store i32 %"60", i32* %"73", align 4, !dbg !135
  %"74" = sext i32 %"67" to i64, !dbg !136
  %"75" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"74", !dbg !136
  store i32 0, i32* %"75", align 4, !dbg !136
  %"76" = sext i32 %"61" to i64, !dbg !137
  %"77" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"76", !dbg !137
  %"78" = sext i32 %"64" to i64, !dbg !138
  %"79" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"78", !dbg !138
  %"80" = sext i32 %"64" to i64, !dbg !139
  %"81" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"80", !dbg !139
  %"82" = sext i32 %"64" to i64, !dbg !139
  %"83" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"82", !dbg !139
  %"84" = sext i32 %"67" to i64, !dbg !140
  %"85" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"84", !dbg !140
  %"86" = sext i32 %"67" to i64, !dbg !140
  %"87" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"86", !dbg !140
  br label %main_bb10, !dbg !141

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %"88" = load i32* %"77", align 4, !dbg !137
  %"89" = icmp sgt i32 %"88", 0, !dbg !137
  br i1 %"89", label %main_bb11, label %main_test_fun.exit, !dbg !137

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %"90" = load i32* %"79", align 4, !dbg !138
  %"91" = icmp sgt i32 %"90", 0, !dbg !138
  br i1 %"91", label %main_bb12, label %main_bb13, !dbg !138

main_bb12:                                        ; preds = %main_bb11
  %"92" = load i32* %"81", align 4, !dbg !139
  %"93" = sub nsw i32 %"92", 1, !dbg !139
  store i32 %"93", i32* %"83", align 4, !dbg !139
  %"94" = load i32* %"85", align 4, !dbg !140
  %"95" = add nsw i32 %"94", 1, !dbg !140
  store i32 %"95", i32* %"87", align 4, !dbg !140
  br label %main_bb11, !dbg !142

main_bb13:                                        ; preds = %main_bb11
  %"96" = sext i32 %"61" to i64, !dbg !143
  %"97" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"96", !dbg !143
  %"98" = load i32* %"97", align 4, !dbg !143
  %"99" = sub nsw i32 %"98", 1, !dbg !143
  %"100" = sext i32 %"61" to i64, !dbg !143
  %"101" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"100", !dbg !143
  store i32 %"99", i32* %"101", align 4, !dbg !143
  %"102" = sext i32 %"67" to i64, !dbg !144
  %"103" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"102", !dbg !144
  %"104" = load i32* %"103", align 4, !dbg !144
  %"105" = add nsw i32 %"104", 1, !dbg !144
  %"106" = sext i32 %"67" to i64, !dbg !144
  %"107" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"106", !dbg !144
  store i32 %"105", i32* %"107", align 4, !dbg !144
  br label %main_bb10, !dbg !145

main_test_fun.exit:                               ; preds = %main_bb10
  %"108" = sext i32 %"67" to i64, !dbg !146
  %"109" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"108", !dbg !146
  %"110" = load i32* %"109", align 4, !dbg !146
  ret i32 %"110", !dbg !103
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
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 51, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 51} ; [ DW_TAG_subprogram ] [line 51] [def] [main]
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
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 41, i32 9, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !90, i32 41, i32 9, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 42, i32 13, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !90, i32 41, i32 36, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 43, i32 13, metadata !92, null}
!94 = metadata !{i32 40, i32 5, metadata !11, null}
!95 = metadata !{i32 44, i32 9, metadata !92, null}
!96 = metadata !{i32 45, i32 9, metadata !90, null}
!97 = metadata !{i32 46, i32 9, metadata !90, null}
!98 = metadata !{i32 47, i32 5, metadata !90, null}
!99 = metadata !{i32 48, i32 5, metadata !11, null}
!100 = metadata !{i32 52, i32 19, metadata !14, null}
!101 = metadata !{i32 52, i32 43, metadata !14, null}
!102 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [x] [line 32]
!103 = metadata !{i32 52, i32 10, metadata !14, null}
!104 = metadata !{i32 32, i32 18, metadata !11, metadata !103}
!105 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [y] [line 32]
!106 = metadata !{i32 32, i32 25, metadata !11, metadata !103}
!107 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [size] [line 26]
!108 = metadata !{i32 34, i32 17, metadata !11, metadata !103}
!109 = metadata !{i32 26, i32 26, metadata !10, metadata !108}
!110 = metadata !{i32 27, i32 4, metadata !10, metadata !108}
!111 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!112 = metadata !{i32 27, i32 8, metadata !10, metadata !108}
!113 = metadata !{i32 28, i32 4, metadata !10, metadata !108}
!114 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!115 = metadata !{i32 34, i32 9, metadata !11, metadata !103}
!116 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !117} ; [ DW_TAG_arg_variable ] [size] [line 17]
!117 = metadata !{i32 35, i32 17, metadata !11, metadata !103}
!118 = metadata !{i32 17, i32 26, metadata !9, metadata !117}
!119 = metadata !{i32 18, i32 4, metadata !9, metadata !117}
!120 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !117} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!121 = metadata !{i32 18, i32 8, metadata !9, metadata !117}
!122 = metadata !{i32 19, i32 4, metadata !9, metadata !117}
!123 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!124 = metadata !{i32 35, i32 9, metadata !11, metadata !103}
!125 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !126} ; [ DW_TAG_arg_variable ] [size] [line 8]
!126 = metadata !{i32 36, i32 13, metadata !11, metadata !103}
!127 = metadata !{i32 8, i32 26, metadata !4, metadata !126} ; [ DW_TAG_imported_declaration ]
!128 = metadata !{i32 9, i32 4, metadata !4, metadata !126}
!129 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !126} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!130 = metadata !{i32 9, i32 8, metadata !4, metadata !126}
!131 = metadata !{i32 10, i32 4, metadata !4, metadata !126}
!132 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [c] [line 36]
!133 = metadata !{i32 36, i32 9, metadata !11, metadata !103}
!134 = metadata !{i32 37, i32 5, metadata !11, metadata !103}
!135 = metadata !{i32 38, i32 5, metadata !11, metadata !103}
!136 = metadata !{i32 39, i32 5, metadata !11, metadata !103}
!137 = metadata !{i32 40, i32 5, metadata !87, metadata !103}
!138 = metadata !{i32 41, i32 9, metadata !89, metadata !103}
!139 = metadata !{i32 42, i32 13, metadata !92, metadata !103}
!140 = metadata !{i32 43, i32 13, metadata !92, metadata !103}
!141 = metadata !{i32 40, i32 5, metadata !11, metadata !103}
!142 = metadata !{i32 44, i32 9, metadata !92, metadata !103}
!143 = metadata !{i32 45, i32 9, metadata !90, metadata !103}
!144 = metadata !{i32 46, i32 9, metadata !90, metadata !103}
!145 = metadata !{i32 47, i32 5, metadata !90, metadata !103}
!146 = metadata !{i32 48, i32 5, metadata !11, metadata !103}

