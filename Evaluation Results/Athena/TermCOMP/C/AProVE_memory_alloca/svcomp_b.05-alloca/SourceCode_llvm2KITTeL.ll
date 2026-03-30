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
define i32 @test_fun(i32 %x, i32 %tmp) #0 {
test_fun_bb2:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %tmp}, i64 0, metadata !43), !dbg !44
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
  store i32 %tmp, i32* %"15", align 4, !dbg !65
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !66
  %"17" = sext i32 %"9" to i64, !dbg !66
  %"18" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"17", !dbg !66
  store i32 %"16", i32* %"18", align 4, !dbg !66
  %"19" = sext i32 %"6" to i64, !dbg !67
  %"20" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"19", !dbg !67
  %"21" = sext i32 %"9" to i64, !dbg !69
  %"22" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"21", !dbg !69
  %"23" = sext i32 %"6" to i64, !dbg !71
  %"24" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"23", !dbg !71
  %"25" = sext i32 %"6" to i64, !dbg !71
  %"26" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"25", !dbg !71
  %"27" = sext i32 %"9" to i64, !dbg !73
  %"28" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"27", !dbg !73
  br label %test_fun_bb3, !dbg !74

test_fun_bb3:                                     ; preds = %test_fun_bb5, %test_fun_bb2
  %"29" = load i32* %"20", align 4, !dbg !67
  %"30" = icmp sgt i32 %"29", 0, !dbg !67
  br i1 %"30", label %test_fun_bb4, label %test_fun_.critedge, !dbg !67

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"31" = load i32* %"22", align 4, !dbg !69
  %"32" = mul nsw i32 2, %"31", !dbg !69
  %"33" = icmp eq i32 %x, %"32", !dbg !69
  br i1 %"33", label %test_fun_bb5, label %test_fun_.critedge, !dbg !75

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"34" = load i32* %"24", align 4, !dbg !71
  %"35" = sub nsw i32 %"34", 1, !dbg !71
  store i32 %"35", i32* %"26", align 4, !dbg !71
  %"36" = call i32 @__VERIFIER_nondet_int(), !dbg !73
  store i32 %"36", i32* %"28", align 4, !dbg !73
  br label %test_fun_bb3, !dbg !77

test_fun_.critedge:                               ; preds = %test_fun_bb3, %test_fun_bb4
  %"37" = sext i32 %"6" to i64, !dbg !78
  %"38" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"37", !dbg !78
  %"39" = load i32* %"38", align 4, !dbg !78
  ret i32 %"39", !dbg !78
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"40" = call i32 @__VERIFIER_nondet_int(), !dbg !79
  %"41" = call i32 @__VERIFIER_nondet_int(), !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !81) #3, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !84) #3, !dbg !85
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !86) #3, !dbg !88
  %"42" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !90) #3, !dbg !91
  %"43" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"44" = add nsw i32 %"43", 1, !dbg !92
  store i32 %"44", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !93) #3, !dbg !94
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !95) #3, !dbg !97
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !99) #3, !dbg !100
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"47" = add nsw i32 %"46", 1, !dbg !101
  store i32 %"47", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !102) #3, !dbg !103
  %"48" = sext i32 %"42" to i64, !dbg !104
  %"49" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"48", !dbg !104
  store i32 %"40", i32* %"49", align 4, !dbg !104
  %"50" = sext i32 %"45" to i64, !dbg !105
  %"51" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"50", !dbg !105
  store i32 %"41", i32* %"51", align 4, !dbg !105
  %"52" = call i32 @__VERIFIER_nondet_int() #3, !dbg !106
  %"53" = sext i32 %"45" to i64, !dbg !106
  %"54" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"53", !dbg !106
  store i32 %"52", i32* %"54", align 4, !dbg !106
  %"55" = sext i32 %"42" to i64, !dbg !107
  %"56" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"55", !dbg !107
  %"57" = sext i32 %"45" to i64, !dbg !108
  %"58" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"57", !dbg !108
  %"59" = sext i32 %"42" to i64, !dbg !109
  %"60" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"59", !dbg !109
  %"61" = sext i32 %"42" to i64, !dbg !109
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !109
  %"63" = sext i32 %"45" to i64, !dbg !110
  %"64" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"63", !dbg !110
  br label %main_bb7, !dbg !111

main_bb7:                                         ; preds = %main_bb9, %main_bb6
  %"65" = load i32* %"56", align 4, !dbg !107
  %"66" = icmp sgt i32 %"65", 0, !dbg !107
  br i1 %"66", label %main_bb8, label %main_test_fun.exit, !dbg !107

main_bb8:                                         ; preds = %main_bb7
  %"67" = load i32* %"58", align 4, !dbg !108
  %"68" = mul nsw i32 2, %"67", !dbg !108
  %"69" = icmp eq i32 %"40", %"68", !dbg !108
  br i1 %"69", label %main_bb9, label %main_test_fun.exit, !dbg !112

main_bb9:                                         ; preds = %main_bb8
  %"70" = load i32* %"60", align 4, !dbg !109
  %"71" = sub nsw i32 %"70", 1, !dbg !109
  store i32 %"71", i32* %"62", align 4, !dbg !109
  %"72" = call i32 @__VERIFIER_nondet_int() #3, !dbg !110
  store i32 %"72", i32* %"64", align 4, !dbg !110
  br label %main_bb7, !dbg !113

main_test_fun.exit:                               ; preds = %main_bb7, %main_bb8
  %"73" = sext i32 %"42" to i64, !dbg !114
  %"74" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"73", !dbg !114
  %"75" = load i32* %"74", align 4, !dbg !114
  ret i32 %"75", !dbg !82
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

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
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 37, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [main]
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
!43 = metadata !{i32 786689, metadata !10, metadata !"tmp", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tmp] [line 23]
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
!56 = metadata !{i32 26, i32 19, metadata !10, null}
!57 = metadata !{i32 8, i32 26, metadata !4, metadata !56} ; [ DW_TAG_imported_declaration ]
!58 = metadata !{i32 9, i32 4, metadata !4, metadata !56}
!59 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !56} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!60 = metadata !{i32 9, i32 8, metadata !4, metadata !56}
!61 = metadata !{i32 10, i32 4, metadata !4, metadata !56}
!62 = metadata !{i32 786688, metadata !10, metadata !"tmp_ref", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ref] [line 26]
!63 = metadata !{i32 26, i32 9, metadata !10, null}
!64 = metadata !{i32 27, i32 5, metadata !10, null}
!65 = metadata !{i32 28, i32 5, metadata !10, null}
!66 = metadata !{i32 29, i32 24, metadata !10, null}
!67 = metadata !{i32 30, i32 5, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 30, i32 5, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 5, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 31, i32 9, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 65, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 32, i32 28, metadata !72, null}
!74 = metadata !{i32 30, i32 5, metadata !10, null}
!75 = metadata !{i32 30, i32 5, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 5, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 33, i32 5, metadata !72, null}
!78 = metadata !{i32 34, i32 5, metadata !10, null}
!79 = metadata !{i32 38, i32 19, metadata !13, null}
!80 = metadata !{i32 38, i32 43, metadata !13, null}
!81 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, metadata !82} ; [ DW_TAG_arg_variable ] [x] [line 23]
!82 = metadata !{i32 38, i32 10, metadata !13, null}
!83 = metadata !{i32 23, i32 18, metadata !10, metadata !82}
!84 = metadata !{i32 786689, metadata !10, metadata !"tmp", metadata !5, i32 33554455, metadata !8, i32 0, metadata !82} ; [ DW_TAG_arg_variable ] [tmp] [line 23]
!85 = metadata !{i32 23, i32 25, metadata !10, metadata !82}
!86 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [size] [line 17]
!87 = metadata !{i32 25, i32 17, metadata !10, metadata !82}
!88 = metadata !{i32 17, i32 26, metadata !9, metadata !87}
!89 = metadata !{i32 18, i32 4, metadata !9, metadata !87}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !87} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!91 = metadata !{i32 18, i32 8, metadata !9, metadata !87}
!92 = metadata !{i32 19, i32 4, metadata !9, metadata !87}
!93 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !82} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!94 = metadata !{i32 25, i32 9, metadata !10, metadata !82}
!95 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [size] [line 8]
!96 = metadata !{i32 26, i32 19, metadata !10, metadata !82}
!97 = metadata !{i32 8, i32 26, metadata !4, metadata !96} ; [ DW_TAG_imported_declaration ]
!98 = metadata !{i32 9, i32 4, metadata !4, metadata !96}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!100 = metadata !{i32 9, i32 8, metadata !4, metadata !96}
!101 = metadata !{i32 10, i32 4, metadata !4, metadata !96}
!102 = metadata !{i32 786688, metadata !10, metadata !"tmp_ref", metadata !5, i32 26, metadata !8, i32 0, metadata !82} ; [ DW_TAG_auto_variable ] [tmp_ref] [line 26]
!103 = metadata !{i32 26, i32 9, metadata !10, metadata !82}
!104 = metadata !{i32 27, i32 5, metadata !10, metadata !82}
!105 = metadata !{i32 28, i32 5, metadata !10, metadata !82}
!106 = metadata !{i32 29, i32 24, metadata !10, metadata !82}
!107 = metadata !{i32 30, i32 5, metadata !68, metadata !82}
!108 = metadata !{i32 30, i32 5, metadata !70, metadata !82}
!109 = metadata !{i32 31, i32 9, metadata !72, metadata !82}
!110 = metadata !{i32 32, i32 28, metadata !72, metadata !82}
!111 = metadata !{i32 30, i32 5, metadata !10, metadata !82}
!112 = metadata !{i32 30, i32 5, metadata !76, metadata !82}
!113 = metadata !{i32 33, i32 5, metadata !72, metadata !82}
!114 = metadata !{i32 34, i32 5, metadata !10, metadata !82}

