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
  %"18" = load i32* %"17", align 4, !dbg !66
  %"19" = icmp sle i32 %"18", 0, !dbg !66
  br i1 %"19", label %test_fun_bb3, label %test_fun_bb4, !dbg !66

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"20" = sext i32 %"9" to i64, !dbg !68
  %"21" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"20", !dbg !68
  %"22" = load i32* %"21", align 4, !dbg !68
  br label %test_fun_bb10, !dbg !68

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"23" = sext i32 %"6" to i64, !dbg !70
  %"24" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"23", !dbg !70
  %"25" = load i32* %"24", align 4, !dbg !70
  %"26" = sext i32 %"9" to i64, !dbg !70
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !70
  %"28" = sext i32 %"6" to i64, !dbg !72
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !72
  %"30" = load i32* %"29", align 4, !dbg !72
  %"31" = sext i32 %"9" to i64, !dbg !75
  %"32" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"31", !dbg !75
  %"33" = sext i32 %"6" to i64, !dbg !75
  %"34" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"33", !dbg !75
  %"35" = load i32* %"34", align 4, !dbg !75
  %"36" = sext i32 %"9" to i64, !dbg !75
  %"37" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"36", !dbg !75
  br label %test_fun_bb5, !dbg !76

test_fun_bb5:                                     ; preds = %test_fun_bb8, %test_fun_bb4
  %"38" = load i32* %"27", align 4, !dbg !70
  %"39" = icmp sgt i32 %"25", %"38", !dbg !70
  br i1 %"39", label %test_fun_bb6, label %test_fun_bb9, !dbg !70

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"40" = icmp sle i32 %"30", 0, !dbg !72
  br i1 %"40", label %test_fun_bb7, label %test_fun_bb8, !dbg !72

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"41" = sext i32 %"9" to i64, !dbg !77
  %"42" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"41", !dbg !77
  %"43" = load i32* %"42", align 4, !dbg !77
  br label %test_fun_bb10, !dbg !77

test_fun_bb8:                                     ; preds = %test_fun_bb6
  %"44" = load i32* %"32", align 4, !dbg !75
  %"45" = add nsw i32 %"44", %"35", !dbg !75
  store i32 %"45", i32* %"37", align 4, !dbg !75
  br label %test_fun_bb5, !dbg !79

test_fun_bb9:                                     ; preds = %test_fun_bb5
  %"46" = sext i32 %"9" to i64, !dbg !80
  %"47" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"46", !dbg !80
  %"48" = load i32* %"47", align 4, !dbg !80
  br label %test_fun_bb10, !dbg !80

test_fun_bb10:                                    ; preds = %test_fun_bb9, %test_fun_bb7, %test_fun_bb3
  %.0 = phi i32 [ %"22", %test_fun_bb3 ], [ %"43", %test_fun_bb7 ], [ %"48", %test_fun_bb9 ]
  ret i32 %.0, !dbg !81
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"49" = call i32 @__VERIFIER_nondet_int(), !dbg !82
  %"50" = call i32 @__VERIFIER_nondet_int(), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !84), !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"50"}, i64 0, metadata !87), !dbg !88
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !89), !dbg !91
  %"51" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !93), !dbg !94
  %"52" = load i32* @"'memory1_freeIndex", align 4, !dbg !95
  %"53" = add nsw i32 %"52", 1, !dbg !95
  store i32 %"53", i32* @"'memory1_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !96), !dbg !97
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !98), !dbg !100
  %"54" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !102), !dbg !103
  %"55" = load i32* @"'memory0_freeIndex", align 4, !dbg !104
  %"56" = add nsw i32 %"55", 1, !dbg !104
  store i32 %"56", i32* @"'memory0_freeIndex", align 4, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !105), !dbg !106
  %"57" = sext i32 %"51" to i64, !dbg !107
  %"58" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"57", !dbg !107
  store i32 %"49", i32* %"58", align 4, !dbg !107
  %"59" = sext i32 %"54" to i64, !dbg !108
  %"60" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"59", !dbg !108
  store i32 %"50", i32* %"60", align 4, !dbg !108
  %"61" = sext i32 %"51" to i64, !dbg !109
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !109
  %"63" = load i32* %"62", align 4, !dbg !109
  %"64" = icmp sle i32 %"63", 0, !dbg !109
  br i1 %"64", label %main_bb12, label %main_bb13, !dbg !109

main_bb12:                                        ; preds = %main_bb11
  %"65" = sext i32 %"54" to i64, !dbg !110
  %"66" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"65", !dbg !110
  %"67" = load i32* %"66", align 4, !dbg !110
  br label %main_test_fun.exit, !dbg !110

main_bb13:                                        ; preds = %main_bb11
  %"68" = sext i32 %"51" to i64, !dbg !111
  %"69" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"68", !dbg !111
  %"70" = load i32* %"69", align 4, !dbg !111
  %"71" = sext i32 %"54" to i64, !dbg !111
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !111
  %"73" = sext i32 %"51" to i64, !dbg !112
  %"74" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"73", !dbg !112
  %"75" = load i32* %"74", align 4, !dbg !112
  %"76" = sext i32 %"54" to i64, !dbg !113
  %"77" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"76", !dbg !113
  %"78" = sext i32 %"51" to i64, !dbg !113
  %"79" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"78", !dbg !113
  %"80" = load i32* %"79", align 4, !dbg !113
  %"81" = sext i32 %"54" to i64, !dbg !113
  %"82" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"81", !dbg !113
  br label %main_bb14, !dbg !114

main_bb14:                                        ; preds = %main_bb17, %main_bb13
  %"83" = load i32* %"72", align 4, !dbg !111
  %"84" = icmp sgt i32 %"70", %"83", !dbg !111
  br i1 %"84", label %main_bb15, label %main_bb18, !dbg !111

main_bb15:                                        ; preds = %main_bb14
  %"85" = icmp sle i32 %"75", 0, !dbg !112
  br i1 %"85", label %main_bb16, label %main_bb17, !dbg !112

main_bb16:                                        ; preds = %main_bb15
  %"86" = sext i32 %"54" to i64, !dbg !115
  %"87" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"86", !dbg !115
  %"88" = load i32* %"87", align 4, !dbg !115
  br label %main_test_fun.exit, !dbg !115

main_bb17:                                        ; preds = %main_bb15
  %"89" = load i32* %"77", align 4, !dbg !113
  %"90" = add nsw i32 %"89", %"80", !dbg !113
  store i32 %"90", i32* %"82", align 4, !dbg !113
  br label %main_bb14, !dbg !116

main_bb18:                                        ; preds = %main_bb14
  %"91" = sext i32 %"54" to i64, !dbg !117
  %"92" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"91", !dbg !117
  %"93" = load i32* %"92", align 4, !dbg !117
  br label %main_test_fun.exit, !dbg !117

main_test_fun.exit:                               ; preds = %main_bb12, %main_bb16, %main_bb18
  %.0.i = phi i32 [ %"67", %main_bb12 ], [ %"88", %main_bb16 ], [ %"93", %main_bb18 ], !dbg !85
  ret i32 %.0.i, !dbg !85
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
!66 = metadata !{i32 29, i32 9, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 31, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !67, i32 29, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 33, i32 5, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 34, i32 13, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 34, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 38, i32 9, metadata !74, null}
!76 = metadata !{i32 33, i32 5, metadata !10, null}
!77 = metadata !{i32 36, i32 13, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !73, i32 34, i32 34, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 39, i32 5, metadata !74, null}
!80 = metadata !{i32 40, i32 5, metadata !10, null}
!81 = metadata !{i32 41, i32 1, metadata !10, null}
!82 = metadata !{i32 44, i32 19, metadata !13, null}
!83 = metadata !{i32 44, i32 43, metadata !13, null}
!84 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [x] [line 23]
!85 = metadata !{i32 44, i32 10, metadata !13, null}
!86 = metadata !{i32 23, i32 18, metadata !10, metadata !85}
!87 = metadata !{i32 786689, metadata !10, metadata !"y", metadata !5, i32 33554455, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [y] [line 23]
!88 = metadata !{i32 23, i32 25, metadata !10, metadata !85}
!89 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !90} ; [ DW_TAG_arg_variable ] [size] [line 17]
!90 = metadata !{i32 25, i32 17, metadata !10, metadata !85}
!91 = metadata !{i32 17, i32 26, metadata !9, metadata !90}
!92 = metadata !{i32 18, i32 4, metadata !9, metadata !90}
!93 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !90} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!94 = metadata !{i32 18, i32 8, metadata !9, metadata !90}
!95 = metadata !{i32 19, i32 4, metadata !9, metadata !90}
!96 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!97 = metadata !{i32 25, i32 9, metadata !10, metadata !85}
!98 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [size] [line 8]
!99 = metadata !{i32 26, i32 17, metadata !10, metadata !85}
!100 = metadata !{i32 8, i32 26, metadata !4, metadata !99} ; [ DW_TAG_imported_declaration ]
!101 = metadata !{i32 9, i32 4, metadata !4, metadata !99}
!102 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!103 = metadata !{i32 9, i32 8, metadata !4, metadata !99}
!104 = metadata !{i32 10, i32 4, metadata !4, metadata !99}
!105 = metadata !{i32 786688, metadata !10, metadata !"y_ref", metadata !5, i32 26, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [y_ref] [line 26]
!106 = metadata !{i32 26, i32 9, metadata !10, metadata !85}
!107 = metadata !{i32 27, i32 5, metadata !10, metadata !85}
!108 = metadata !{i32 28, i32 5, metadata !10, metadata !85}
!109 = metadata !{i32 29, i32 9, metadata !67, metadata !85}
!110 = metadata !{i32 31, i32 9, metadata !69, metadata !85}
!111 = metadata !{i32 33, i32 5, metadata !71, metadata !85}
!112 = metadata !{i32 34, i32 13, metadata !73, metadata !85}
!113 = metadata !{i32 38, i32 9, metadata !74, metadata !85}
!114 = metadata !{i32 33, i32 5, metadata !10, metadata !85}
!115 = metadata !{i32 36, i32 13, metadata !78, metadata !85}
!116 = metadata !{i32 39, i32 5, metadata !74, metadata !85}
!117 = metadata !{i32 40, i32 5, metadata !10, metadata !85}

