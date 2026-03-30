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
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb3:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !58), !dbg !60
  %"9" = load i32* @"'memory2_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !62), !dbg !63
  %"10" = load i32* @"'memory2_freeIndex", align 4, !dbg !64
  %"11" = add nsw i32 %"10", 1, !dbg !64
  store i32 %"11", i32* @"'memory2_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !67), !dbg !69
  %"12" = load i32* @"'memory1_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !71), !dbg !72
  %"13" = load i32* @"'memory1_freeIndex", align 4, !dbg !73
  %"14" = add nsw i32 %"13", 1, !dbg !73
  store i32 %"14", i32* @"'memory1_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !76), !dbg !78
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !80), !dbg !81
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !82
  %"17" = add nsw i32 %"16", 1, !dbg !82
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !83), !dbg !84
  %"18" = sext i32 %"9" to i64, !dbg !85
  %"19" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"18", !dbg !85
  store i32 %x, i32* %"19", align 4, !dbg !85
  %"20" = sext i32 %"12" to i64, !dbg !86
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !86
  store i32 %y, i32* %"21", align 4, !dbg !86
  %"22" = sext i32 %"15" to i64, !dbg !87
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !87
  store i32 %z, i32* %"23", align 4, !dbg !87
  %"24" = sext i32 %"12" to i64, !dbg !88
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !88
  %"26" = load i32* %"25", align 4, !dbg !88
  %"27" = icmp sle i32 %"26", 0, !dbg !88
  br i1 %"27", label %test_fun_bb4, label %test_fun_bb5, !dbg !88

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"28" = sext i32 %"15" to i64, !dbg !90
  %"29" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"28", !dbg !90
  %"30" = load i32* %"29", align 4, !dbg !90
  br label %test_fun_bb11, !dbg !90

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"31" = sext i32 %"9" to i64, !dbg !92
  %"32" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"31", !dbg !92
  %"33" = load i32* %"32", align 4, !dbg !92
  %"34" = sext i32 %"15" to i64, !dbg !92
  %"35" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"34", !dbg !92
  %"36" = sext i32 %"12" to i64, !dbg !94
  %"37" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"36", !dbg !94
  %"38" = load i32* %"37", align 4, !dbg !94
  %"39" = sext i32 %"15" to i64, !dbg !97
  %"40" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"39", !dbg !97
  %"41" = sext i32 %"12" to i64, !dbg !97
  %"42" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"41", !dbg !97
  %"43" = load i32* %"42", align 4, !dbg !97
  %"44" = sext i32 %"15" to i64, !dbg !97
  %"45" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"44", !dbg !97
  br label %test_fun_bb6, !dbg !98

test_fun_bb6:                                     ; preds = %test_fun_bb9, %test_fun_bb5
  %"46" = load i32* %"35", align 4, !dbg !92
  %"47" = icmp sge i32 %"33", %"46", !dbg !92
  br i1 %"47", label %test_fun_bb7, label %test_fun_bb10, !dbg !92

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"48" = icmp sle i32 %"38", 0, !dbg !94
  br i1 %"48", label %test_fun_bb8, label %test_fun_bb9, !dbg !94

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"49" = sext i32 %"15" to i64, !dbg !99
  %"50" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"49", !dbg !99
  %"51" = load i32* %"50", align 4, !dbg !99
  br label %test_fun_bb11, !dbg !99

test_fun_bb9:                                     ; preds = %test_fun_bb7
  %"52" = load i32* %"40", align 4, !dbg !97
  %"53" = add nsw i32 %"52", %"43", !dbg !97
  store i32 %"53", i32* %"45", align 4, !dbg !97
  br label %test_fun_bb6, !dbg !101

test_fun_bb10:                                    ; preds = %test_fun_bb6
  %"54" = sext i32 %"15" to i64, !dbg !102
  %"55" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"54", !dbg !102
  %"56" = load i32* %"55", align 4, !dbg !102
  br label %test_fun_bb11, !dbg !102

test_fun_bb11:                                    ; preds = %test_fun_bb10, %test_fun_bb8, %test_fun_bb4
  %.0 = phi i32 [ %"30", %test_fun_bb4 ], [ %"51", %test_fun_bb8 ], [ %"56", %test_fun_bb10 ]
  ret i32 %.0, !dbg !103
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"57" = call i32 @__VERIFIER_nondet_int(), !dbg !104
  %"58" = call i32 @__VERIFIER_nondet_int(), !dbg !105
  %"59" = call i32 @__VERIFIER_nondet_int(), !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !107), !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !110), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !112), !dbg !113
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !114), !dbg !116
  %"60" = load i32* @"'memory2_freeIndex", align 4, !dbg !117
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !118), !dbg !119
  %"61" = load i32* @"'memory2_freeIndex", align 4, !dbg !120
  %"62" = add nsw i32 %"61", 1, !dbg !120
  store i32 %"62", i32* @"'memory2_freeIndex", align 4, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !121), !dbg !122
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !123), !dbg !125
  %"63" = load i32* @"'memory1_freeIndex", align 4, !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !127), !dbg !128
  %"64" = load i32* @"'memory1_freeIndex", align 4, !dbg !129
  %"65" = add nsw i32 %"64", 1, !dbg !129
  store i32 %"65", i32* @"'memory1_freeIndex", align 4, !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !130), !dbg !131
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !132), !dbg !134
  %"66" = load i32* @"'memory0_freeIndex", align 4, !dbg !135
  call void @llvm.dbg.value(metadata !{i32 %"66"}, i64 0, metadata !136), !dbg !137
  %"67" = load i32* @"'memory0_freeIndex", align 4, !dbg !138
  %"68" = add nsw i32 %"67", 1, !dbg !138
  store i32 %"68", i32* @"'memory0_freeIndex", align 4, !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %"66"}, i64 0, metadata !139), !dbg !140
  %"69" = sext i32 %"60" to i64, !dbg !141
  %"70" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"69", !dbg !141
  store i32 %"57", i32* %"70", align 4, !dbg !141
  %"71" = sext i32 %"63" to i64, !dbg !142
  %"72" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"71", !dbg !142
  store i32 %"58", i32* %"72", align 4, !dbg !142
  %"73" = sext i32 %"66" to i64, !dbg !143
  %"74" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"73", !dbg !143
  store i32 %"59", i32* %"74", align 4, !dbg !143
  %"75" = sext i32 %"63" to i64, !dbg !144
  %"76" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"75", !dbg !144
  %"77" = load i32* %"76", align 4, !dbg !144
  %"78" = icmp sle i32 %"77", 0, !dbg !144
  br i1 %"78", label %main_bb13, label %main_bb14, !dbg !144

main_bb13:                                        ; preds = %main_bb12
  %"79" = sext i32 %"66" to i64, !dbg !145
  %"80" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"79", !dbg !145
  %"81" = load i32* %"80", align 4, !dbg !145
  br label %main_test_fun.exit, !dbg !145

main_bb14:                                        ; preds = %main_bb12
  %"82" = sext i32 %"60" to i64, !dbg !146
  %"83" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"82", !dbg !146
  %"84" = load i32* %"83", align 4, !dbg !146
  %"85" = sext i32 %"66" to i64, !dbg !146
  %"86" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"85", !dbg !146
  %"87" = sext i32 %"63" to i64, !dbg !147
  %"88" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"87", !dbg !147
  %"89" = load i32* %"88", align 4, !dbg !147
  %"90" = sext i32 %"66" to i64, !dbg !148
  %"91" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"90", !dbg !148
  %"92" = sext i32 %"63" to i64, !dbg !148
  %"93" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"92", !dbg !148
  %"94" = load i32* %"93", align 4, !dbg !148
  %"95" = sext i32 %"66" to i64, !dbg !148
  %"96" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"95", !dbg !148
  br label %main_bb15, !dbg !149

main_bb15:                                        ; preds = %main_bb18, %main_bb14
  %"97" = load i32* %"86", align 4, !dbg !146
  %"98" = icmp sge i32 %"84", %"97", !dbg !146
  br i1 %"98", label %main_bb16, label %main_bb19, !dbg !146

main_bb16:                                        ; preds = %main_bb15
  %"99" = icmp sle i32 %"89", 0, !dbg !147
  br i1 %"99", label %main_bb17, label %main_bb18, !dbg !147

main_bb17:                                        ; preds = %main_bb16
  %"100" = sext i32 %"66" to i64, !dbg !150
  %"101" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"100", !dbg !150
  %"102" = load i32* %"101", align 4, !dbg !150
  br label %main_test_fun.exit, !dbg !150

main_bb18:                                        ; preds = %main_bb16
  %"103" = load i32* %"91", align 4, !dbg !148
  %"104" = add nsw i32 %"103", %"94", !dbg !148
  store i32 %"104", i32* %"96", align 4, !dbg !148
  br label %main_bb15, !dbg !151

main_bb19:                                        ; preds = %main_bb15
  %"105" = sext i32 %"66" to i64, !dbg !152
  %"106" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"105", !dbg !152
  %"107" = load i32* %"106", align 4, !dbg !152
  br label %main_test_fun.exit, !dbg !152

main_test_fun.exit:                               ; preds = %main_bb13, %main_bb17, %main_bb19
  %.0.i = phi i32 [ %"81", %main_bb13 ], [ %"102", %main_bb17 ], [ %"107", %main_bb19 ], !dbg !108
  ret i32 %.0.i, !dbg !108
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
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 32, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @test_fun, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [test_fun]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 54, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] [line 54] [def] [main]
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
!55 = metadata !{i32 786689, metadata !11, metadata !"z", metadata !5, i32 50331680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 32]
!56 = metadata !{i32 32, i32 32, metadata !11, null}
!57 = metadata !{i32 1}
!58 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [size] [line 26]
!59 = metadata !{i32 34, i32 17, metadata !11, null}
!60 = metadata !{i32 26, i32 26, metadata !10, metadata !59}
!61 = metadata !{i32 27, i32 4, metadata !10, metadata !59}
!62 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!63 = metadata !{i32 27, i32 8, metadata !10, metadata !59}
!64 = metadata !{i32 28, i32 4, metadata !10, metadata !59}
!65 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!66 = metadata !{i32 34, i32 9, metadata !11, null}
!67 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [size] [line 17]
!68 = metadata !{i32 35, i32 17, metadata !11, null}
!69 = metadata !{i32 17, i32 26, metadata !9, metadata !68}
!70 = metadata !{i32 18, i32 4, metadata !9, metadata !68}
!71 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!72 = metadata !{i32 18, i32 8, metadata !9, metadata !68}
!73 = metadata !{i32 19, i32 4, metadata !9, metadata !68}
!74 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!75 = metadata !{i32 35, i32 9, metadata !11, null}
!76 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !77} ; [ DW_TAG_arg_variable ] [size] [line 8]
!77 = metadata !{i32 36, i32 17, metadata !11, null}
!78 = metadata !{i32 8, i32 26, metadata !4, metadata !77} ; [ DW_TAG_imported_declaration ]
!79 = metadata !{i32 9, i32 4, metadata !4, metadata !77}
!80 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !77} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!81 = metadata !{i32 9, i32 8, metadata !4, metadata !77}
!82 = metadata !{i32 10, i32 4, metadata !4, metadata !77}
!83 = metadata !{i32 786688, metadata !11, metadata !"z_ref", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z_ref] [line 36]
!84 = metadata !{i32 36, i32 9, metadata !11, null}
!85 = metadata !{i32 37, i32 5, metadata !11, null}
!86 = metadata !{i32 38, i32 5, metadata !11, null}
!87 = metadata !{i32 39, i32 5, metadata !11, null}
!88 = metadata !{i32 40, i32 8, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 8, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 42, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !89, i32 40, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 44, i32 5, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !11, i32 44, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 45, i32 12, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !96, i32 45, i32 12, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 786443, metadata !1, metadata !11, i32 44, i32 46, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 49, i32 9, metadata !96, null}
!98 = metadata !{i32 44, i32 5, metadata !11, null}
!99 = metadata !{i32 47, i32 13, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !95, i32 45, i32 33, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!101 = metadata !{i32 50, i32 5, metadata !96, null}
!102 = metadata !{i32 51, i32 5, metadata !11, null}
!103 = metadata !{i32 52, i32 1, metadata !11, null}
!104 = metadata !{i32 55, i32 19, metadata !14, null}
!105 = metadata !{i32 55, i32 43, metadata !14, null}
!106 = metadata !{i32 55, i32 67, metadata !14, null}
!107 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [x] [line 32]
!108 = metadata !{i32 55, i32 10, metadata !14, null}
!109 = metadata !{i32 32, i32 18, metadata !11, metadata !108}
!110 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [y] [line 32]
!111 = metadata !{i32 32, i32 25, metadata !11, metadata !108}
!112 = metadata !{i32 786689, metadata !11, metadata !"z", metadata !5, i32 50331680, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [z] [line 32]
!113 = metadata !{i32 32, i32 32, metadata !11, metadata !108}
!114 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [size] [line 26]
!115 = metadata !{i32 34, i32 17, metadata !11, metadata !108}
!116 = metadata !{i32 26, i32 26, metadata !10, metadata !115}
!117 = metadata !{i32 27, i32 4, metadata !10, metadata !115}
!118 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !115} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!119 = metadata !{i32 27, i32 8, metadata !10, metadata !115}
!120 = metadata !{i32 28, i32 4, metadata !10, metadata !115}
!121 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!122 = metadata !{i32 34, i32 9, metadata !11, metadata !108}
!123 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !124} ; [ DW_TAG_arg_variable ] [size] [line 17]
!124 = metadata !{i32 35, i32 17, metadata !11, metadata !108}
!125 = metadata !{i32 17, i32 26, metadata !9, metadata !124}
!126 = metadata !{i32 18, i32 4, metadata !9, metadata !124}
!127 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !124} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!128 = metadata !{i32 18, i32 8, metadata !9, metadata !124}
!129 = metadata !{i32 19, i32 4, metadata !9, metadata !124}
!130 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!131 = metadata !{i32 35, i32 9, metadata !11, metadata !108}
!132 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !133} ; [ DW_TAG_arg_variable ] [size] [line 8]
!133 = metadata !{i32 36, i32 17, metadata !11, metadata !108}
!134 = metadata !{i32 8, i32 26, metadata !4, metadata !133} ; [ DW_TAG_imported_declaration ]
!135 = metadata !{i32 9, i32 4, metadata !4, metadata !133}
!136 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!137 = metadata !{i32 9, i32 8, metadata !4, metadata !133}
!138 = metadata !{i32 10, i32 4, metadata !4, metadata !133}
!139 = metadata !{i32 786688, metadata !11, metadata !"z_ref", metadata !5, i32 36, metadata !8, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [z_ref] [line 36]
!140 = metadata !{i32 36, i32 9, metadata !11, metadata !108}
!141 = metadata !{i32 37, i32 5, metadata !11, metadata !108}
!142 = metadata !{i32 38, i32 5, metadata !11, metadata !108}
!143 = metadata !{i32 39, i32 5, metadata !11, metadata !108}
!144 = metadata !{i32 40, i32 8, metadata !89, metadata !108}
!145 = metadata !{i32 42, i32 9, metadata !91, metadata !108}
!146 = metadata !{i32 44, i32 5, metadata !93, metadata !108}
!147 = metadata !{i32 45, i32 12, metadata !95, metadata !108}
!148 = metadata !{i32 49, i32 9, metadata !96, metadata !108}
!149 = metadata !{i32 44, i32 5, metadata !11, metadata !108}
!150 = metadata !{i32 47, i32 13, metadata !100, metadata !108}
!151 = metadata !{i32 50, i32 5, metadata !96, metadata !108}
!152 = metadata !{i32 51, i32 5, metadata !11, metadata !108}

