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
  %"26" = sext i32 %"9" to i64, !dbg !88
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !88
  %"28" = sext i32 %"12" to i64, !dbg !88
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !88
  %"30" = load i32* %"29", align 4, !dbg !88
  %"31" = sext i32 %"9" to i64, !dbg !90
  %"32" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"31", !dbg !90
  %"33" = sext i32 %"9" to i64, !dbg !90
  %"34" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"33", !dbg !90
  %"35" = sext i32 %"9" to i64, !dbg !90
  %"36" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"35", !dbg !90
  %"37" = sext i32 %"15" to i64, !dbg !92
  %"38" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"37", !dbg !92
  %"39" = sext i32 %"15" to i64, !dbg !92
  %"40" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"39", !dbg !92
  br label %test_fun_bb4, !dbg !93

test_fun_bb4:                                     ; preds = %test_fun_bb6, %test_fun_bb3
  %"41" = load i32* %"25", align 4, !dbg !86
  %"42" = icmp sgt i32 %"41", 1, !dbg !86
  br i1 %"42", label %test_fun_bb5, label %test_fun_.critedge, !dbg !86

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"43" = load i32* %"27", align 4, !dbg !88
  %"44" = icmp slt i32 %"43", %"30", !dbg !88
  br i1 %"44", label %test_fun_bb6, label %test_fun_.critedge, !dbg !94

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"45" = load i32* %"32", align 4, !dbg !90
  %"46" = load i32* %"34", align 4, !dbg !90
  %"47" = mul nsw i32 %"45", %"46", !dbg !90
  store i32 %"47", i32* %"36", align 4, !dbg !90
  %"48" = load i32* %"38", align 4, !dbg !92
  %"49" = add nsw i32 %"48", 1, !dbg !92
  store i32 %"49", i32* %"40", align 4, !dbg !92
  br label %test_fun_bb4, !dbg !96

test_fun_.critedge:                               ; preds = %test_fun_bb4, %test_fun_bb5
  %"50" = sext i32 %"15" to i64, !dbg !97
  %"51" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"50", !dbg !97
  %"52" = load i32* %"51", align 4, !dbg !97
  ret i32 %"52", !dbg !97
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"53" = call i32 @__VERIFIER_nondet_int(), !dbg !98
  %"54" = call i32 @__VERIFIER_nondet_int(), !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !100), !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !105), !dbg !107
  %"55" = load i32* @"'memory2_freeIndex", align 4, !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !109), !dbg !110
  %"56" = load i32* @"'memory2_freeIndex", align 4, !dbg !111
  %"57" = add nsw i32 %"56", 1, !dbg !111
  store i32 %"57", i32* @"'memory2_freeIndex", align 4, !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !112), !dbg !113
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !114), !dbg !116
  %"58" = load i32* @"'memory1_freeIndex", align 4, !dbg !117
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !118), !dbg !119
  %"59" = load i32* @"'memory1_freeIndex", align 4, !dbg !120
  %"60" = add nsw i32 %"59", 1, !dbg !120
  store i32 %"60", i32* @"'memory1_freeIndex", align 4, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !121), !dbg !122
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !123), !dbg !125
  %"61" = load i32* @"'memory0_freeIndex", align 4, !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !127), !dbg !128
  %"62" = load i32* @"'memory0_freeIndex", align 4, !dbg !129
  %"63" = add nsw i32 %"62", 1, !dbg !129
  store i32 %"63", i32* @"'memory0_freeIndex", align 4, !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !130), !dbg !131
  %"64" = sext i32 %"55" to i64, !dbg !132
  %"65" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"64", !dbg !132
  store i32 %"53", i32* %"65", align 4, !dbg !132
  %"66" = sext i32 %"58" to i64, !dbg !133
  %"67" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"66", !dbg !133
  store i32 %"54", i32* %"67", align 4, !dbg !133
  %"68" = sext i32 %"61" to i64, !dbg !134
  %"69" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"68", !dbg !134
  store i32 0, i32* %"69", align 4, !dbg !134
  %"70" = sext i32 %"55" to i64, !dbg !135
  %"71" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"70", !dbg !135
  %"72" = sext i32 %"55" to i64, !dbg !136
  %"73" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"72", !dbg !136
  %"74" = sext i32 %"58" to i64, !dbg !136
  %"75" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"74", !dbg !136
  %"76" = load i32* %"75", align 4, !dbg !136
  %"77" = sext i32 %"55" to i64, !dbg !137
  %"78" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"77", !dbg !137
  %"79" = sext i32 %"55" to i64, !dbg !137
  %"80" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"79", !dbg !137
  %"81" = sext i32 %"55" to i64, !dbg !137
  %"82" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"81", !dbg !137
  %"83" = sext i32 %"61" to i64, !dbg !138
  %"84" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"83", !dbg !138
  %"85" = sext i32 %"61" to i64, !dbg !138
  %"86" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"85", !dbg !138
  br label %main_bb8, !dbg !139

main_bb8:                                         ; preds = %main_bb10, %main_bb7
  %"87" = load i32* %"71", align 4, !dbg !135
  %"88" = icmp sgt i32 %"87", 1, !dbg !135
  br i1 %"88", label %main_bb9, label %main_test_fun.exit, !dbg !135

main_bb9:                                         ; preds = %main_bb8
  %"89" = load i32* %"73", align 4, !dbg !136
  %"90" = icmp slt i32 %"89", %"76", !dbg !136
  br i1 %"90", label %main_bb10, label %main_test_fun.exit, !dbg !140

main_bb10:                                        ; preds = %main_bb9
  %"91" = load i32* %"78", align 4, !dbg !137
  %"92" = load i32* %"80", align 4, !dbg !137
  %"93" = mul nsw i32 %"91", %"92", !dbg !137
  store i32 %"93", i32* %"82", align 4, !dbg !137
  %"94" = load i32* %"84", align 4, !dbg !138
  %"95" = add nsw i32 %"94", 1, !dbg !138
  store i32 %"95", i32* %"86", align 4, !dbg !138
  br label %main_bb8, !dbg !141

main_test_fun.exit:                               ; preds = %main_bb8, %main_bb9
  %"96" = sext i32 %"61" to i64, !dbg !142
  %"97" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"96", !dbg !142
  %"98" = load i32* %"97", align 4, !dbg !142
  ret i32 %"98", !dbg !101
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
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 47, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 47] [def] [main]
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
!88 = metadata !{i32 40, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 41, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 71, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 42, i32 9, metadata !91, null}
!93 = metadata !{i32 40, i32 5, metadata !11, null}
!94 = metadata !{i32 40, i32 5, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 43, i32 5, metadata !91, null}
!97 = metadata !{i32 44, i32 5, metadata !11, null}
!98 = metadata !{i32 48, i32 19, metadata !14, null}
!99 = metadata !{i32 48, i32 43, metadata !14, null}
!100 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [x] [line 32]
!101 = metadata !{i32 48, i32 10, metadata !14, null}
!102 = metadata !{i32 32, i32 18, metadata !11, metadata !101}
!103 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [y] [line 32]
!104 = metadata !{i32 32, i32 25, metadata !11, metadata !101}
!105 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [size] [line 26]
!106 = metadata !{i32 34, i32 17, metadata !11, metadata !101}
!107 = metadata !{i32 26, i32 26, metadata !10, metadata !106}
!108 = metadata !{i32 27, i32 4, metadata !10, metadata !106}
!109 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!110 = metadata !{i32 27, i32 8, metadata !10, metadata !106}
!111 = metadata !{i32 28, i32 4, metadata !10, metadata !106}
!112 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!113 = metadata !{i32 34, i32 9, metadata !11, metadata !101}
!114 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [size] [line 17]
!115 = metadata !{i32 35, i32 17, metadata !11, metadata !101}
!116 = metadata !{i32 17, i32 26, metadata !9, metadata !115}
!117 = metadata !{i32 18, i32 4, metadata !9, metadata !115}
!118 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !115} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!119 = metadata !{i32 18, i32 8, metadata !9, metadata !115}
!120 = metadata !{i32 19, i32 4, metadata !9, metadata !115}
!121 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!122 = metadata !{i32 35, i32 9, metadata !11, metadata !101}
!123 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !124} ; [ DW_TAG_arg_variable ] [size] [line 8]
!124 = metadata !{i32 36, i32 13, metadata !11, metadata !101}
!125 = metadata !{i32 8, i32 26, metadata !4, metadata !124} ; [ DW_TAG_imported_declaration ]
!126 = metadata !{i32 9, i32 4, metadata !4, metadata !124}
!127 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !124} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!128 = metadata !{i32 9, i32 8, metadata !4, metadata !124}
!129 = metadata !{i32 10, i32 4, metadata !4, metadata !124}
!130 = metadata !{i32 786688, metadata !11, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [c] [line 36]
!131 = metadata !{i32 36, i32 9, metadata !11, metadata !101}
!132 = metadata !{i32 37, i32 5, metadata !11, metadata !101}
!133 = metadata !{i32 38, i32 5, metadata !11, metadata !101}
!134 = metadata !{i32 39, i32 5, metadata !11, metadata !101}
!135 = metadata !{i32 40, i32 5, metadata !87, metadata !101}
!136 = metadata !{i32 40, i32 5, metadata !89, metadata !101}
!137 = metadata !{i32 41, i32 9, metadata !91, metadata !101}
!138 = metadata !{i32 42, i32 9, metadata !91, metadata !101}
!139 = metadata !{i32 40, i32 5, metadata !11, metadata !101}
!140 = metadata !{i32 40, i32 5, metadata !95, metadata !101}
!141 = metadata !{i32 43, i32 5, metadata !91, metadata !101}
!142 = metadata !{i32 44, i32 5, metadata !11, metadata !101}

