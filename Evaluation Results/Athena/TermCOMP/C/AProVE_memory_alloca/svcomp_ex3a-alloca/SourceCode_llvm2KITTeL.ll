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
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !25), !dbg !26
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !28), !dbg !29
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  %"2" = add nsw i32 %"1", %size, !dbg !30
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !30
  ret i32 %"0", !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !32), !dbg !33
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !35), !dbg !36
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !37
  %"5" = add nsw i32 %"4", %size, !dbg !37
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !37
  ret i32 %"3", !dbg !38
}

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x) #0 {
test_fun_bb2:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !39), !dbg !40
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !42), !dbg !44
  %"6" = load i32* @"'memory1_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  %"7" = load i32* @"'memory1_freeIndex", align 4, !dbg !48
  %"8" = add nsw i32 %"7", 1, !dbg !48
  store i32 %"8", i32* @"'memory1_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !51), !dbg !53
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !55), !dbg !56
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !57
  %"11" = add nsw i32 %"10", 1, !dbg !57
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !58), !dbg !59
  %"12" = sext i32 %"6" to i64, !dbg !60
  %"13" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"12", !dbg !60
  store i32 %x, i32* %"13", align 4, !dbg !60
  %"14" = sext i32 %"9" to i64, !dbg !61
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !61
  store i32 0, i32* %"15", align 4, !dbg !61
  %"16" = sext i32 %"6" to i64, !dbg !62
  %"17" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"16", !dbg !62
  %"18" = sext i32 %"6" to i64, !dbg !64
  %"19" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"18", !dbg !64
  %"20" = sext i32 %"6" to i64, !dbg !66
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !66
  %"22" = sext i32 %"6" to i64, !dbg !66
  %"23" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"22", !dbg !66
  %"24" = sext i32 %"6" to i64, !dbg !66
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !66
  %"26" = sext i32 %"9" to i64, !dbg !68
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !68
  %"28" = sext i32 %"9" to i64, !dbg !68
  %"29" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"28", !dbg !68
  br label %test_fun_bb3, !dbg !69

test_fun_bb3:                                     ; preds = %test_fun_bb5, %test_fun_bb2
  %"30" = load i32* %"17", align 4, !dbg !62
  %"31" = icmp sgt i32 %"30", 1, !dbg !62
  br i1 %"31", label %test_fun_bb4, label %test_fun_.critedge, !dbg !62

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"32" = load i32* %"19", align 4, !dbg !64
  %"33" = icmp slt i32 %"32", 100, !dbg !64
  br i1 %"33", label %test_fun_bb5, label %test_fun_.critedge, !dbg !70

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"34" = load i32* %"21", align 4, !dbg !66
  %"35" = load i32* %"23", align 4, !dbg !66
  %"36" = mul nsw i32 %"34", %"35", !dbg !66
  store i32 %"36", i32* %"25", align 4, !dbg !66
  %"37" = load i32* %"27", align 4, !dbg !68
  %"38" = add nsw i32 %"37", 1, !dbg !68
  store i32 %"38", i32* %"29", align 4, !dbg !68
  br label %test_fun_bb3, !dbg !72

test_fun_.critedge:                               ; preds = %test_fun_bb3, %test_fun_bb4
  %"39" = sext i32 %"9" to i64, !dbg !73
  %"40" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"39", !dbg !73
  %"41" = load i32* %"40", align 4, !dbg !73
  ret i32 %"41", !dbg !73
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"42" = call i32 @__VERIFIER_nondet_int(), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !75), !dbg !77
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !78), !dbg !80
  %"43" = load i32* @"'memory1_freeIndex", align 4, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !82), !dbg !83
  %"44" = load i32* @"'memory1_freeIndex", align 4, !dbg !84
  %"45" = add nsw i32 %"44", 1, !dbg !84
  store i32 %"45", i32* @"'memory1_freeIndex", align 4, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !85), !dbg !86
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !87), !dbg !89
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !91), !dbg !92
  %"47" = load i32* @"'memory0_freeIndex", align 4, !dbg !93
  %"48" = add nsw i32 %"47", 1, !dbg !93
  store i32 %"48", i32* @"'memory0_freeIndex", align 4, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !94), !dbg !95
  %"49" = sext i32 %"43" to i64, !dbg !96
  %"50" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"49", !dbg !96
  store i32 %"42", i32* %"50", align 4, !dbg !96
  %"51" = sext i32 %"46" to i64, !dbg !97
  %"52" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"51", !dbg !97
  store i32 0, i32* %"52", align 4, !dbg !97
  %"53" = sext i32 %"43" to i64, !dbg !98
  %"54" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"53", !dbg !98
  %"55" = sext i32 %"43" to i64, !dbg !99
  %"56" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"55", !dbg !99
  %"57" = sext i32 %"43" to i64, !dbg !100
  %"58" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"57", !dbg !100
  %"59" = sext i32 %"43" to i64, !dbg !100
  %"60" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"59", !dbg !100
  %"61" = sext i32 %"43" to i64, !dbg !100
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !100
  %"63" = sext i32 %"46" to i64, !dbg !101
  %"64" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"63", !dbg !101
  %"65" = sext i32 %"46" to i64, !dbg !101
  %"66" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"65", !dbg !101
  br label %main_bb7, !dbg !102

main_bb7:                                         ; preds = %main_bb9, %main_bb6
  %"67" = load i32* %"54", align 4, !dbg !98
  %"68" = icmp sgt i32 %"67", 1, !dbg !98
  br i1 %"68", label %main_bb8, label %main_test_fun.exit, !dbg !98

main_bb8:                                         ; preds = %main_bb7
  %"69" = load i32* %"56", align 4, !dbg !99
  %"70" = icmp slt i32 %"69", 100, !dbg !99
  br i1 %"70", label %main_bb9, label %main_test_fun.exit, !dbg !103

main_bb9:                                         ; preds = %main_bb8
  %"71" = load i32* %"58", align 4, !dbg !100
  %"72" = load i32* %"60", align 4, !dbg !100
  %"73" = mul nsw i32 %"71", %"72", !dbg !100
  store i32 %"73", i32* %"62", align 4, !dbg !100
  %"74" = load i32* %"64", align 4, !dbg !101
  %"75" = add nsw i32 %"74", 1, !dbg !101
  store i32 %"75", i32* %"66", align 4, !dbg !101
  br label %main_bb7, !dbg !104

main_test_fun.exit:                               ; preds = %main_bb7, %main_bb8
  %"76" = sext i32 %"46" to i64, !dbg !105
  %"77" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"76", !dbg !105
  %"78" = load i32* %"77", align 4, !dbg !105
  ret i32 %"78", !dbg !76
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @test_fun, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [test_fun]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 36, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 36} ; [ DW_TAG_subprogram ] [line 36] [def] [main]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8}
!14 = metadata !{metadata !15, metadata !16, metadata !17, metadata !21}
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !18, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !18, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!26 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 9, i32 4, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!29 = metadata !{i32 9, i32 8, metadata !4, null}
!30 = metadata !{i32 10, i32 4, metadata !4, null}
!31 = metadata !{i32 11, i32 4, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!33 = metadata !{i32 17, i32 26, metadata !9, null}
!34 = metadata !{i32 18, i32 4, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!36 = metadata !{i32 18, i32 8, metadata !9, null}
!37 = metadata !{i32 19, i32 4, metadata !9, null}
!38 = metadata !{i32 20, i32 4, metadata !9, null}
!39 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 23]
!40 = metadata !{i32 23, i32 18, metadata !10, null}
!41 = metadata !{i32 1}
!42 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !43} ; [ DW_TAG_arg_variable ] [size] [line 17]
!43 = metadata !{i32 25, i32 17, metadata !10, null}
!44 = metadata !{i32 17, i32 26, metadata !9, metadata !43}
!45 = metadata !{i32 18, i32 4, metadata !9, metadata !43}
!46 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !43} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!47 = metadata !{i32 18, i32 8, metadata !9, metadata !43}
!48 = metadata !{i32 19, i32 4, metadata !9, metadata !43}
!49 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!50 = metadata !{i32 25, i32 9, metadata !10, null}
!51 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !52} ; [ DW_TAG_arg_variable ] [size] [line 8]
!52 = metadata !{i32 26, i32 13, metadata !10, null}
!53 = metadata !{i32 8, i32 26, metadata !4, metadata !52} ; [ DW_TAG_imported_declaration ]
!54 = metadata !{i32 9, i32 4, metadata !4, metadata !52}
!55 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !52} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!56 = metadata !{i32 9, i32 8, metadata !4, metadata !52}
!57 = metadata !{i32 10, i32 4, metadata !4, metadata !52}
!58 = metadata !{i32 786688, metadata !10, metadata !"c", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 26]
!59 = metadata !{i32 26, i32 9, metadata !10, null}
!60 = metadata !{i32 27, i32 5, metadata !10, null}
!61 = metadata !{i32 28, i32 5, metadata !10, null}
!62 = metadata !{i32 29, i32 5, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 29, i32 5, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 2, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 30, i32 9, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 60, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 31, i32 9, metadata !67, null}
!69 = metadata !{i32 29, i32 5, metadata !10, null}
!70 = metadata !{i32 29, i32 5, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 32, i32 5, metadata !67, null}
!73 = metadata !{i32 33, i32 5, metadata !10, null}
!74 = metadata !{i32 37, i32 19, metadata !11, null}
!75 = metadata !{i32 786689, metadata !10, metadata !"x", metadata !5, i32 16777239, metadata !8, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [x] [line 23]
!76 = metadata !{i32 37, i32 10, metadata !11, null}
!77 = metadata !{i32 23, i32 18, metadata !10, metadata !76}
!78 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !79} ; [ DW_TAG_arg_variable ] [size] [line 17]
!79 = metadata !{i32 25, i32 17, metadata !10, metadata !76}
!80 = metadata !{i32 17, i32 26, metadata !9, metadata !79}
!81 = metadata !{i32 18, i32 4, metadata !9, metadata !79}
!82 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!83 = metadata !{i32 18, i32 8, metadata !9, metadata !79}
!84 = metadata !{i32 19, i32 4, metadata !9, metadata !79}
!85 = metadata !{i32 786688, metadata !10, metadata !"x_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [x_ref] [line 25]
!86 = metadata !{i32 25, i32 9, metadata !10, metadata !76}
!87 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !88} ; [ DW_TAG_arg_variable ] [size] [line 8]
!88 = metadata !{i32 26, i32 13, metadata !10, metadata !76}
!89 = metadata !{i32 8, i32 26, metadata !4, metadata !88} ; [ DW_TAG_imported_declaration ]
!90 = metadata !{i32 9, i32 4, metadata !4, metadata !88}
!91 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !88} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!92 = metadata !{i32 9, i32 8, metadata !4, metadata !88}
!93 = metadata !{i32 10, i32 4, metadata !4, metadata !88}
!94 = metadata !{i32 786688, metadata !10, metadata !"c", metadata !5, i32 26, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [c] [line 26]
!95 = metadata !{i32 26, i32 9, metadata !10, metadata !76}
!96 = metadata !{i32 27, i32 5, metadata !10, metadata !76}
!97 = metadata !{i32 28, i32 5, metadata !10, metadata !76}
!98 = metadata !{i32 29, i32 5, metadata !63, metadata !76}
!99 = metadata !{i32 29, i32 5, metadata !65, metadata !76}
!100 = metadata !{i32 30, i32 9, metadata !67, metadata !76}
!101 = metadata !{i32 31, i32 9, metadata !67, metadata !76}
!102 = metadata !{i32 29, i32 5, metadata !10, metadata !76}
!103 = metadata !{i32 29, i32 5, metadata !71, metadata !76}
!104 = metadata !{i32 32, i32 5, metadata !67, metadata !76}
!105 = metadata !{i32 33, i32 5, metadata !10, metadata !76}

