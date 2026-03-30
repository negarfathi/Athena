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
  %"24" = sext i32 %"9" to i64, !dbg !72
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !72
  %"26" = sext i32 %"9" to i64, !dbg !75
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !75
  %"28" = sext i32 %"9" to i64, !dbg !75
  %"29" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"28", !dbg !75
  br label %test_fun_bb3, !dbg !76

test_fun_bb3:                                     ; preds = %test_fun_bb9, %test_fun_bb2
  %"30" = load i32* %"17", align 4, !dbg !66
  %"31" = icmp sge i32 %"30", 0, !dbg !66
  br i1 %"31", label %test_fun_bb4, label %test_fun_bb10, !dbg !66

test_fun_bb4:                                     ; preds = %test_fun_bb3
  store i32 1, i32* %"19", align 4, !dbg !68
  %"32" = load i32* %"21", align 4, !dbg !70
  br label %test_fun_bb5, !dbg !77

test_fun_bb5:                                     ; preds = %test_fun_bb8, %test_fun_bb4
  %"33" = load i32* %"23", align 4, !dbg !70
  %"34" = icmp sgt i32 %"32", %"33", !dbg !70
  br i1 %"34", label %test_fun_bb6, label %test_fun_bb9, !dbg !70

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"35" = load i32* %"25", align 4, !dbg !72
  %"36" = icmp sle i32 %"35", 0, !dbg !72
  br i1 %"36", label %test_fun_bb7, label %test_fun_bb8, !dbg !72

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"37" = sext i32 %"6" to i64, !dbg !78
  %"38" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"37", !dbg !78
  %"39" = load i32* %"38", align 4, !dbg !78
  br label %test_fun_bb11, !dbg !78

test_fun_bb8:                                     ; preds = %test_fun_bb6
  %"40" = load i32* %"27", align 4, !dbg !75
  %"41" = mul nsw i32 2, %"40", !dbg !75
  store i32 %"41", i32* %"29", align 4, !dbg !75
  br label %test_fun_bb5, !dbg !80

test_fun_bb9:                                     ; preds = %test_fun_bb5
  %"42" = sext i32 %"6" to i64, !dbg !81
  %"43" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"42", !dbg !81
  %"44" = load i32* %"43", align 4, !dbg !81
  %"45" = sub nsw i32 %"44", 1, !dbg !81
  %"46" = sext i32 %"6" to i64, !dbg !81
  %"47" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"46", !dbg !81
  store i32 %"45", i32* %"47", align 4, !dbg !81
  br label %test_fun_bb3, !dbg !82

test_fun_bb10:                                    ; preds = %test_fun_bb3
  %"48" = sext i32 %"9" to i64, !dbg !83
  %"49" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"48", !dbg !83
  %"50" = load i32* %"49", align 4, !dbg !83
  br label %test_fun_bb11, !dbg !83

test_fun_bb11:                                    ; preds = %test_fun_bb10, %test_fun_bb7
  %.0 = phi i32 [ %"39", %test_fun_bb7 ], [ %"50", %test_fun_bb10 ]
  ret i32 %.0, !dbg !84
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"51" = call i32 @__VERIFIER_nondet_int(), !dbg !85
  %"52" = call i32 @__VERIFIER_nondet_int(), !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !87), !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !90), !dbg !91
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !92), !dbg !94
  %"53" = load i32* @"'memory1_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !96), !dbg !97
  %"54" = load i32* @"'memory1_freeIndex", align 4, !dbg !98
  %"55" = add nsw i32 %"54", 1, !dbg !98
  store i32 %"55", i32* @"'memory1_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !99), !dbg !100
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !101), !dbg !103
  %"56" = load i32* @"'memory0_freeIndex", align 4, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !105), !dbg !106
  %"57" = load i32* @"'memory0_freeIndex", align 4, !dbg !107
  %"58" = add nsw i32 %"57", 1, !dbg !107
  store i32 %"58", i32* @"'memory0_freeIndex", align 4, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !108), !dbg !109
  %"59" = sext i32 %"53" to i64, !dbg !110
  %"60" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"59", !dbg !110
  store i32 %"51", i32* %"60", align 4, !dbg !110
  %"61" = sext i32 %"56" to i64, !dbg !111
  %"62" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"61", !dbg !111
  store i32 %"52", i32* %"62", align 4, !dbg !111
  %"63" = sext i32 %"53" to i64, !dbg !112
  %"64" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"63", !dbg !112
  %"65" = sext i32 %"56" to i64, !dbg !113
  %"66" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"65", !dbg !113
  %"67" = sext i32 %"53" to i64, !dbg !114
  %"68" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"67", !dbg !114
  %"69" = sext i32 %"56" to i64, !dbg !114
  %"70" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"69", !dbg !114
  %"71" = sext i32 %"56" to i64, !dbg !115
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !115
  %"73" = sext i32 %"56" to i64, !dbg !116
  %"74" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"73", !dbg !116
  %"75" = sext i32 %"56" to i64, !dbg !116
  %"76" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"75", !dbg !116
  br label %main_bb13, !dbg !117

main_bb13:                                        ; preds = %main_bb19, %main_bb12
  %"77" = load i32* %"64", align 4, !dbg !112
  %"78" = icmp sge i32 %"77", 0, !dbg !112
  br i1 %"78", label %main_bb14, label %main_bb20, !dbg !112

main_bb14:                                        ; preds = %main_bb13
  store i32 1, i32* %"66", align 4, !dbg !113
  %"79" = load i32* %"68", align 4, !dbg !114
  br label %main_bb15, !dbg !118

main_bb15:                                        ; preds = %main_bb18, %main_bb14
  %"80" = load i32* %"70", align 4, !dbg !114
  %"81" = icmp sgt i32 %"79", %"80", !dbg !114
  br i1 %"81", label %main_bb16, label %main_bb19, !dbg !114

main_bb16:                                        ; preds = %main_bb15
  %"82" = load i32* %"72", align 4, !dbg !115
  %"83" = icmp sle i32 %"82", 0, !dbg !115
  br i1 %"83", label %main_bb17, label %main_bb18, !dbg !115

main_bb17:                                        ; preds = %main_bb16
  %"84" = sext i32 %"53" to i64, !dbg !119
  %"85" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"84", !dbg !119
  %"86" = load i32* %"85", align 4, !dbg !119
  br label %main_test_fun.exit, !dbg !119

main_bb18:                                        ; preds = %main_bb16
  %"87" = load i32* %"74", align 4, !dbg !116
  %"88" = mul nsw i32 2, %"87", !dbg !116
  store i32 %"88", i32* %"76", align 4, !dbg !116
  br label %main_bb15, !dbg !120

main_bb19:                                        ; preds = %main_bb15
  %"89" = sext i32 %"53" to i64, !dbg !121
  %"90" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"89", !dbg !121
  %"91" = load i32* %"90", align 4, !dbg !121
  %"92" = sub nsw i32 %"91", 1, !dbg !121
  %"93" = sext i32 %"53" to i64, !dbg !121
  %"94" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"93", !dbg !121
  store i32 %"92", i32* %"94", align 4, !dbg !121
  br label %main_bb13, !dbg !122

main_bb20:                                        ; preds = %main_bb13
  %"95" = sext i32 %"56" to i64, !dbg !123
  %"96" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"95", !dbg !123
  %"97" = load i32* %"96", align 4, !dbg !123
  br label %main_test_fun.exit, !dbg !123

main_test_fun.exit:                               ; preds = %main_bb17, %main_bb20
  %.0.i = phi i32 [ %"86", %main_bb17 ], [ %"97", %main_bb20 ], !dbg !88
  ret i32 %.0.i, !dbg !88
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
!67 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 30, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 31, i32 9, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !69, i32 31, i32 9, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 32, i32 17, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 32, i32 17, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 786443, metadata !1, metadata !69, i32 31, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 36, i32 13, metadata !74, null}
!76 = metadata !{i32 29, i32 5, metadata !10, null}
!77 = metadata !{i32 31, i32 9, metadata !69, null}
!78 = metadata !{i32 34, i32 17, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !73, i32 32, i32 38, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 37, i32 9, metadata !74, null}
!81 = metadata !{i32 38, i32 9, metadata !69, null}
!82 = metadata !{i32 39, i32 5, metadata !69, null}
!83 = metadata !{i32 40, i32 5, metadata !10, null}
!84 = metadata !{i32 41, i32 1, metadata !10, null}
!85 = metadata !{i32 44, i32 19, metadata !13, null}
!86 = metadata !{i32 44, i32 43, metadata !13, null}
!87 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, metadata !88} ; [ DW_TAG_arg_variable ] [x] [line 23]
!88 = metadata !{i32 44, i32 10, metadata !13, null}
!89 = metadata !{i32 23, i32 18, metadata !10, metadata !88}
!90 = metadata !{i32 786689, metadata !10, metadata !"y", metadata !5, i32 33554455, metadata !8, i32 0, metadata !88} ; [ DW_TAG_arg_variable ] [y] [line 23]
!91 = metadata !{i32 23, i32 25, metadata !10, metadata !88}
!92 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !93} ; [ DW_TAG_arg_variable ] [size] [line 17]
!93 = metadata !{i32 25, i32 17, metadata !10, metadata !88}
!94 = metadata !{i32 17, i32 26, metadata !9, metadata !93}
!95 = metadata !{i32 18, i32 4, metadata !9, metadata !93}
!96 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !93} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!97 = metadata !{i32 18, i32 8, metadata !9, metadata !93}
!98 = metadata !{i32 19, i32 4, metadata !9, metadata !93}
!99 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !88} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!100 = metadata !{i32 25, i32 9, metadata !10, metadata !88}
!101 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [size] [line 8]
!102 = metadata !{i32 26, i32 17, metadata !10, metadata !88}
!103 = metadata !{i32 8, i32 26, metadata !4, metadata !102} ; [ DW_TAG_imported_declaration ]
!104 = metadata !{i32 9, i32 4, metadata !4, metadata !102}
!105 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!106 = metadata !{i32 9, i32 8, metadata !4, metadata !102}
!107 = metadata !{i32 10, i32 4, metadata !4, metadata !102}
!108 = metadata !{i32 786688, metadata !10, metadata !"y_ref", metadata !5, i32 26, metadata !8, i32 0, metadata !88} ; [ DW_TAG_auto_variable ] [y_ref] [line 26]
!109 = metadata !{i32 26, i32 9, metadata !10, metadata !88}
!110 = metadata !{i32 27, i32 5, metadata !10, metadata !88}
!111 = metadata !{i32 28, i32 5, metadata !10, metadata !88}
!112 = metadata !{i32 29, i32 5, metadata !67, metadata !88}
!113 = metadata !{i32 30, i32 9, metadata !69, metadata !88}
!114 = metadata !{i32 31, i32 9, metadata !71, metadata !88}
!115 = metadata !{i32 32, i32 17, metadata !73, metadata !88}
!116 = metadata !{i32 36, i32 13, metadata !74, metadata !88}
!117 = metadata !{i32 29, i32 5, metadata !10, metadata !88}
!118 = metadata !{i32 31, i32 9, metadata !69, metadata !88}
!119 = metadata !{i32 34, i32 17, metadata !79, metadata !88}
!120 = metadata !{i32 37, i32 9, metadata !74, metadata !88}
!121 = metadata !{i32 38, i32 9, metadata !69, metadata !88}
!122 = metadata !{i32 39, i32 5, metadata !69, metadata !88}
!123 = metadata !{i32 40, i32 5, metadata !10, metadata !88}

