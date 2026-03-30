; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !27), !dbg !28
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !30), !dbg !31
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  %"2" = add nsw i32 %"1", %size, !dbg !32
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !32
  ret i32 %"0", !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !35
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !37), !dbg !38
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  %"5" = add nsw i32 %"4", %size, !dbg !39
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !39
  ret i32 %"3", !dbg !40
}

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb2:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !46), !dbg !48
  %"6" = load i32* @"'memory1_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !50), !dbg !51
  %"7" = load i32* @"'memory1_freeIndex", align 4, !dbg !52
  %"8" = add nsw i32 %"7", 1, !dbg !52
  store i32 %"8", i32* @"'memory1_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !55), !dbg !57
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !59), !dbg !60
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !61
  %"11" = add nsw i32 %"10", 1, !dbg !61
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !62), !dbg !63
  %"12" = sext i32 %"6" to i64, !dbg !64
  %"13" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"12", !dbg !64
  store i32 %x, i32* %"13", align 4, !dbg !64
  %"14" = sext i32 %"9" to i64, !dbg !65
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !65
  store i32 %y, i32* %"15", align 4, !dbg !65
  %"16" = sext i32 %"6" to i64, !dbg !66
  %"17" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"16", !dbg !66
  %"18" = sext i32 %"9" to i64, !dbg !68
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !68
  %"20" = sext i32 %"6" to i64, !dbg !70
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !70
  %"22" = sext i32 %"9" to i64, !dbg !70
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !70
  %"24" = sext i32 %"6" to i64, !dbg !73
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !73
  %"26" = sext i32 %"6" to i64, !dbg !76
  %"27" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"26", !dbg !76
  %"28" = sext i32 %"6" to i64, !dbg !76
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !76
  %"30" = sext i32 %"9" to i64, !dbg !78
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !78
  %"32" = sext i32 %"9" to i64, !dbg !81
  %"33" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"32", !dbg !81
  %"34" = sext i32 %"9" to i64, !dbg !81
  %"35" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"34", !dbg !81
  br label %test_fun_bb3, !dbg !83

test_fun_bb3:                                     ; preds = %test_fun_bb6, %test_fun_bb8, %test_fun_bb2
  %"36" = load i32* %"17", align 4, !dbg !66
  %"37" = icmp sgt i32 %"36", 0, !dbg !66
  br i1 %"37", label %test_fun_bb4, label %test_fun_.critedge, !dbg !66

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"38" = load i32* %"19", align 4, !dbg !68
  %"39" = icmp sgt i32 %"38", 0, !dbg !68
  br i1 %"39", label %test_fun_bb5, label %test_fun_.critedge, !dbg !84

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"40" = load i32* %"21", align 4, !dbg !70
  %"41" = load i32* %"23", align 4, !dbg !70
  %"42" = icmp sgt i32 %"40", %"41", !dbg !70
  br i1 %"42", label %test_fun_bb6, label %test_fun_bb8, !dbg !70

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb7
  %"43" = load i32* %"25", align 4, !dbg !73
  %"44" = icmp sgt i32 %"43", 0, !dbg !73
  br i1 %"44", label %test_fun_bb7, label %test_fun_bb3, !dbg !73

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"45" = load i32* %"27", align 4, !dbg !76
  %"46" = sub nsw i32 %"45", 1, !dbg !76
  store i32 %"46", i32* %"29", align 4, !dbg !76
  br label %test_fun_bb6, !dbg !86

test_fun_bb8:                                     ; preds = %test_fun_bb5, %test_fun_bb9
  %"47" = load i32* %"31", align 4, !dbg !78
  %"48" = icmp sgt i32 %"47", 0, !dbg !78
  br i1 %"48", label %test_fun_bb9, label %test_fun_bb3, !dbg !78

test_fun_bb9:                                     ; preds = %test_fun_bb8
  %"49" = load i32* %"33", align 4, !dbg !81
  %"50" = sub nsw i32 %"49", 1, !dbg !81
  store i32 %"50", i32* %"35", align 4, !dbg !81
  br label %test_fun_bb8, !dbg !87

test_fun_.critedge:                               ; preds = %test_fun_bb3, %test_fun_bb4
  %"51" = sext i32 %"6" to i64, !dbg !88
  %"52" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"51", !dbg !88
  %"53" = load i32* %"52", align 4, !dbg !88
  %"54" = sext i32 %"9" to i64, !dbg !88
  %"55" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"54", !dbg !88
  %"56" = load i32* %"55", align 4, !dbg !88
  %"57" = add nsw i32 %"53", %"56", !dbg !88
  ret i32 %"57", !dbg !88
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"58" = call i32 @__VERIFIER_nondet_int(), !dbg !89
  %"59" = call i32 @__VERIFIER_nondet_int(), !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !91), !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !94), !dbg !95
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !96), !dbg !98
  %"60" = load i32* @"'memory1_freeIndex", align 4, !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !100), !dbg !101
  %"61" = load i32* @"'memory1_freeIndex", align 4, !dbg !102
  %"62" = add nsw i32 %"61", 1, !dbg !102
  store i32 %"62", i32* @"'memory1_freeIndex", align 4, !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !105), !dbg !107
  %"63" = load i32* @"'memory0_freeIndex", align 4, !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !109), !dbg !110
  %"64" = load i32* @"'memory0_freeIndex", align 4, !dbg !111
  %"65" = add nsw i32 %"64", 1, !dbg !111
  store i32 %"65", i32* @"'memory0_freeIndex", align 4, !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !112), !dbg !113
  %"66" = sext i32 %"60" to i64, !dbg !114
  %"67" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"66", !dbg !114
  store i32 %"58", i32* %"67", align 4, !dbg !114
  %"68" = sext i32 %"63" to i64, !dbg !115
  %"69" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"68", !dbg !115
  store i32 %"59", i32* %"69", align 4, !dbg !115
  %"70" = sext i32 %"60" to i64, !dbg !116
  %"71" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"70", !dbg !116
  %"72" = sext i32 %"63" to i64, !dbg !117
  %"73" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"72", !dbg !117
  %"74" = sext i32 %"60" to i64, !dbg !118
  %"75" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"74", !dbg !118
  %"76" = sext i32 %"63" to i64, !dbg !118
  %"77" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"76", !dbg !118
  %"78" = sext i32 %"60" to i64, !dbg !119
  %"79" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"78", !dbg !119
  %"80" = sext i32 %"60" to i64, !dbg !120
  %"81" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"80", !dbg !120
  %"82" = sext i32 %"60" to i64, !dbg !120
  %"83" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"82", !dbg !120
  %"84" = sext i32 %"63" to i64, !dbg !121
  %"85" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"84", !dbg !121
  %"86" = sext i32 %"63" to i64, !dbg !122
  %"87" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"86", !dbg !122
  %"88" = sext i32 %"63" to i64, !dbg !122
  %"89" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"88", !dbg !122
  br label %main_bb11, !dbg !123

main_bb11:                                        ; preds = %main_bb16, %main_bb14, %main_bb10
  %"90" = load i32* %"71", align 4, !dbg !116
  %"91" = icmp sgt i32 %"90", 0, !dbg !116
  br i1 %"91", label %main_bb12, label %main_test_fun.exit, !dbg !116

main_bb12:                                        ; preds = %main_bb11
  %"92" = load i32* %"73", align 4, !dbg !117
  %"93" = icmp sgt i32 %"92", 0, !dbg !117
  br i1 %"93", label %main_bb13, label %main_test_fun.exit, !dbg !124

main_bb13:                                        ; preds = %main_bb12
  %"94" = load i32* %"75", align 4, !dbg !118
  %"95" = load i32* %"77", align 4, !dbg !118
  %"96" = icmp sgt i32 %"94", %"95", !dbg !118
  br i1 %"96", label %main_bb14, label %main_bb16, !dbg !118

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %"97" = load i32* %"79", align 4, !dbg !119
  %"98" = icmp sgt i32 %"97", 0, !dbg !119
  br i1 %"98", label %main_bb15, label %main_bb11, !dbg !119

main_bb15:                                        ; preds = %main_bb14
  %"99" = load i32* %"81", align 4, !dbg !120
  %"100" = sub nsw i32 %"99", 1, !dbg !120
  store i32 %"100", i32* %"83", align 4, !dbg !120
  br label %main_bb14, !dbg !125

main_bb16:                                        ; preds = %main_bb17, %main_bb13
  %"101" = load i32* %"85", align 4, !dbg !121
  %"102" = icmp sgt i32 %"101", 0, !dbg !121
  br i1 %"102", label %main_bb17, label %main_bb11, !dbg !121

main_bb17:                                        ; preds = %main_bb16
  %"103" = load i32* %"87", align 4, !dbg !122
  %"104" = sub nsw i32 %"103", 1, !dbg !122
  store i32 %"104", i32* %"89", align 4, !dbg !122
  br label %main_bb16, !dbg !126

main_test_fun.exit:                               ; preds = %main_bb11, %main_bb12
  %"105" = sext i32 %"60" to i64, !dbg !127
  %"106" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"105", !dbg !127
  %"107" = load i32* %"106", align 4, !dbg !127
  %"108" = sext i32 %"63" to i64, !dbg !127
  %"109" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"108", !dbg !127
  %"110" = load i32* %"109", align 4, !dbg !127
  %"111" = add nsw i32 %"107", %"110", !dbg !127
  ret i32 %"111", !dbg !92
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @test_fun, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [test_fun]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 43] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !23}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!24 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!25 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!26 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!27 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!28 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!29 = metadata !{i32 9, i32 4, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!31 = metadata !{i32 9, i32 8, metadata !4, null}
!32 = metadata !{i32 10, i32 4, metadata !4, null}
!33 = metadata !{i32 11, i32 4, metadata !4, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!35 = metadata !{i32 17, i32 26, metadata !9, null}
!36 = metadata !{i32 18, i32 4, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!38 = metadata !{i32 18, i32 8, metadata !9, null}
!39 = metadata !{i32 19, i32 4, metadata !9, null}
!40 = metadata !{i32 20, i32 4, metadata !9, null}
!41 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 23]
!42 = metadata !{i32 23, i32 18, metadata !10, null}
!43 = metadata !{i32 786689, metadata !10, metadata !"y", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 23]
!44 = metadata !{i32 23, i32 25, metadata !10, null}
!45 = metadata !{i32 1}
!46 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !47} ; [ DW_TAG_arg_variable ] [size] [line 17]
!47 = metadata !{i32 25, i32 17, metadata !10, null}
!48 = metadata !{i32 17, i32 26, metadata !9, metadata !47}
!49 = metadata !{i32 18, i32 4, metadata !9, metadata !47}
!50 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !47} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!51 = metadata !{i32 18, i32 8, metadata !9, metadata !47}
!52 = metadata !{i32 19, i32 4, metadata !9, metadata !47}
!53 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!54 = metadata !{i32 25, i32 9, metadata !10, null}
!55 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !56} ; [ DW_TAG_arg_variable ] [size] [line 8]
!56 = metadata !{i32 26, i32 17, metadata !10, null}
!57 = metadata !{i32 8, i32 26, metadata !4, metadata !56} ; [ DW_TAG_imported_declaration ]
!58 = metadata !{i32 9, i32 4, metadata !4, metadata !56}
!59 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !56} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!60 = metadata !{i32 9, i32 8, metadata !4, metadata !56}
!61 = metadata !{i32 10, i32 4, metadata !4, metadata !56}
!62 = metadata !{i32 786688, metadata !10, metadata !"y_ref", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y_ref] [line 26]
!63 = metadata !{i32 26, i32 9, metadata !10, null}
!64 = metadata !{i32 27, i32 5, metadata !10, null}
!65 = metadata !{i32 28, i32 5, metadata !10, null}
!66 = metadata !{i32 29, i32 5, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 29, i32 5, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 30, i32 13, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 30, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 31, i32 13, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 31, i32 13, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 786443, metadata !1, metadata !71, i32 30, i32 46, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 32, i32 17, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !75, i32 31, i32 40, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 35, i32 13, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !80, i32 35, i32 13, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 786443, metadata !1, metadata !71, i32 34, i32 16, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 36, i32 17, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !80, i32 35, i32 40, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 29, i32 5, metadata !10, null}
!84 = metadata !{i32 29, i32 5, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 33, i32 13, metadata !77, null}
!87 = metadata !{i32 37, i32 13, metadata !82, null}
!88 = metadata !{i32 40, i32 5, metadata !10, null}
!89 = metadata !{i32 44, i32 19, metadata !13, null}
!90 = metadata !{i32 44, i32 43, metadata !13, null}
!91 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, metadata !92} ; [ DW_TAG_arg_variable ] [x] [line 23]
!92 = metadata !{i32 44, i32 10, metadata !13, null}
!93 = metadata !{i32 23, i32 18, metadata !10, metadata !92}
!94 = metadata !{i32 786689, metadata !10, metadata !"y", metadata !5, i32 33554455, metadata !8, i32 0, metadata !92} ; [ DW_TAG_arg_variable ] [y] [line 23]
!95 = metadata !{i32 23, i32 25, metadata !10, metadata !92}
!96 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [size] [line 17]
!97 = metadata !{i32 25, i32 17, metadata !10, metadata !92}
!98 = metadata !{i32 17, i32 26, metadata !9, metadata !97}
!99 = metadata !{i32 18, i32 4, metadata !9, metadata !97}
!100 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !97} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!101 = metadata !{i32 18, i32 8, metadata !9, metadata !97}
!102 = metadata !{i32 19, i32 4, metadata !9, metadata !97}
!103 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!104 = metadata !{i32 25, i32 9, metadata !10, metadata !92}
!105 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [size] [line 8]
!106 = metadata !{i32 26, i32 17, metadata !10, metadata !92}
!107 = metadata !{i32 8, i32 26, metadata !4, metadata !106} ; [ DW_TAG_imported_declaration ]
!108 = metadata !{i32 9, i32 4, metadata !4, metadata !106}
!109 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!110 = metadata !{i32 9, i32 8, metadata !4, metadata !106}
!111 = metadata !{i32 10, i32 4, metadata !4, metadata !106}
!112 = metadata !{i32 786688, metadata !10, metadata !"y_ref", metadata !5, i32 26, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [y_ref] [line 26]
!113 = metadata !{i32 26, i32 9, metadata !10, metadata !92}
!114 = metadata !{i32 27, i32 5, metadata !10, metadata !92}
!115 = metadata !{i32 28, i32 5, metadata !10, metadata !92}
!116 = metadata !{i32 29, i32 5, metadata !67, metadata !92}
!117 = metadata !{i32 29, i32 5, metadata !69, metadata !92}
!118 = metadata !{i32 30, i32 13, metadata !71, metadata !92}
!119 = metadata !{i32 31, i32 13, metadata !74, metadata !92}
!120 = metadata !{i32 32, i32 17, metadata !77, metadata !92}
!121 = metadata !{i32 35, i32 13, metadata !79, metadata !92}
!122 = metadata !{i32 36, i32 17, metadata !82, metadata !92}
!123 = metadata !{i32 29, i32 5, metadata !10, metadata !92}
!124 = metadata !{i32 29, i32 5, metadata !85, metadata !92}
!125 = metadata !{i32 33, i32 13, metadata !77, metadata !92}
!126 = metadata !{i32 37, i32 13, metadata !82, metadata !92}
!127 = metadata !{i32 40, i32 5, metadata !10, metadata !92}

