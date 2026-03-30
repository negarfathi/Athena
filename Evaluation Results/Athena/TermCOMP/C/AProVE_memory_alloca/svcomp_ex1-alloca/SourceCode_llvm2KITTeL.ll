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
define i32 @test_fun(i32 %x, i32 %y, i32 %r) #0 {
test_fun_bb3:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %r}, i64 0, metadata !55), !dbg !56
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
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !55), !dbg !56
  %"18" = sext i32 %"9" to i64, !dbg !85
  %"19" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"18", !dbg !85
  store i32 %x, i32* %"19", align 4, !dbg !85
  %"20" = sext i32 %"12" to i64, !dbg !86
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !86
  store i32 %y, i32* %"21", align 4, !dbg !86
  %"22" = sext i32 %"15" to i64, !dbg !87
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !87
  store i32 1, i32* %"23", align 4, !dbg !87
  %"24" = sext i32 %"12" to i64, !dbg !88
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !88
  %"26" = sext i32 %"15" to i64, !dbg !90
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !90
  %"28" = sext i32 %"9" to i64, !dbg !90
  %"29" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"28", !dbg !90
  %"30" = load i32* %"29", align 4, !dbg !90
  %"31" = sext i32 %"15" to i64, !dbg !90
  %"32" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"31", !dbg !90
  %"33" = sext i32 %"12" to i64, !dbg !92
  %"34" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"33", !dbg !92
  %"35" = sext i32 %"12" to i64, !dbg !92
  %"36" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"35", !dbg !92
  br label %test_fun_bb4, !dbg !93

test_fun_bb4:                                     ; preds = %test_fun_bb5, %test_fun_bb3
  %"37" = load i32* %"25", align 4, !dbg !88
  %"38" = icmp sgt i32 %"37", 0, !dbg !88
  br i1 %"38", label %test_fun_bb5, label %test_fun_bb6, !dbg !88

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"39" = load i32* %"27", align 4, !dbg !90
  %"40" = mul nsw i32 %"39", %"30", !dbg !90
  store i32 %"40", i32* %"32", align 4, !dbg !90
  %"41" = load i32* %"34", align 4, !dbg !92
  %"42" = sub nsw i32 %"41", 1, !dbg !92
  store i32 %"42", i32* %"36", align 4, !dbg !92
  br label %test_fun_bb4, !dbg !94

test_fun_bb6:                                     ; preds = %test_fun_bb4
  %"43" = sext i32 %"15" to i64, !dbg !95
  %"44" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"43", !dbg !95
  %"45" = load i32* %"44", align 4, !dbg !95
  ret i32 %"45", !dbg !95
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"46" = call i32 @__VERIFIER_nondet_int(), !dbg !96
  %"47" = call i32 @__VERIFIER_nondet_int(), !dbg !97
  %"48" = call i32 @__VERIFIER_nondet_int(), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !99), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"47"}, i64 0, metadata !102), !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !104), !dbg !105
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !106), !dbg !108
  %"49" = load i32* @"'memory2_freeIndex", align 4, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !110), !dbg !111
  %"50" = load i32* @"'memory2_freeIndex", align 4, !dbg !112
  %"51" = add nsw i32 %"50", 1, !dbg !112
  store i32 %"51", i32* @"'memory2_freeIndex", align 4, !dbg !112
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !115), !dbg !117
  %"52" = load i32* @"'memory1_freeIndex", align 4, !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !119), !dbg !120
  %"53" = load i32* @"'memory1_freeIndex", align 4, !dbg !121
  %"54" = add nsw i32 %"53", 1, !dbg !121
  store i32 %"54", i32* @"'memory1_freeIndex", align 4, !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !122), !dbg !123
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !124), !dbg !126
  %"55" = load i32* @"'memory0_freeIndex", align 4, !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !128), !dbg !129
  %"56" = load i32* @"'memory0_freeIndex", align 4, !dbg !130
  %"57" = add nsw i32 %"56", 1, !dbg !130
  store i32 %"57", i32* @"'memory0_freeIndex", align 4, !dbg !130
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !131), !dbg !132
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !104), !dbg !105
  %"58" = sext i32 %"49" to i64, !dbg !133
  %"59" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"58", !dbg !133
  store i32 %"46", i32* %"59", align 4, !dbg !133
  %"60" = sext i32 %"52" to i64, !dbg !134
  %"61" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"60", !dbg !134
  store i32 %"47", i32* %"61", align 4, !dbg !134
  %"62" = sext i32 %"55" to i64, !dbg !135
  %"63" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"62", !dbg !135
  store i32 1, i32* %"63", align 4, !dbg !135
  %"64" = sext i32 %"52" to i64, !dbg !136
  %"65" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"64", !dbg !136
  %"66" = sext i32 %"55" to i64, !dbg !137
  %"67" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"66", !dbg !137
  %"68" = sext i32 %"49" to i64, !dbg !137
  %"69" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"68", !dbg !137
  %"70" = load i32* %"69", align 4, !dbg !137
  %"71" = sext i32 %"55" to i64, !dbg !137
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !137
  %"73" = sext i32 %"52" to i64, !dbg !138
  %"74" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"73", !dbg !138
  %"75" = sext i32 %"52" to i64, !dbg !138
  %"76" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"75", !dbg !138
  br label %main_bb8, !dbg !139

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %"77" = load i32* %"65", align 4, !dbg !136
  %"78" = icmp sgt i32 %"77", 0, !dbg !136
  br i1 %"78", label %main_bb9, label %main_test_fun.exit, !dbg !136

main_bb9:                                         ; preds = %main_bb8
  %"79" = load i32* %"67", align 4, !dbg !137
  %"80" = mul nsw i32 %"79", %"70", !dbg !137
  store i32 %"80", i32* %"72", align 4, !dbg !137
  %"81" = load i32* %"74", align 4, !dbg !138
  %"82" = sub nsw i32 %"81", 1, !dbg !138
  store i32 %"82", i32* %"76", align 4, !dbg !138
  br label %main_bb8, !dbg !140

main_test_fun.exit:                               ; preds = %main_bb8
  %"83" = sext i32 %"55" to i64, !dbg !141
  %"84" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"83", !dbg !141
  %"85" = load i32* %"84", align 4, !dbg !141
  ret i32 %"85", !dbg !100
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
!55 = metadata !{i32 786689, metadata !11, metadata !"r", metadata !5, i32 50331680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [r] [line 32]
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
!83 = metadata !{i32 786688, metadata !11, metadata !"r_ref", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r_ref] [line 36]
!84 = metadata !{i32 36, i32 9, metadata !11, null}
!85 = metadata !{i32 38, i32 5, metadata !11, null}
!86 = metadata !{i32 39, i32 5, metadata !11, null}
!87 = metadata !{i32 40, i32 5, metadata !11, null}
!88 = metadata !{i32 41, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 5, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 42, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 43, i32 9, metadata !91, null}
!93 = metadata !{i32 41, i32 5, metadata !11, null}
!94 = metadata !{i32 44, i32 5, metadata !91, null}
!95 = metadata !{i32 45, i32 5, metadata !11, null}
!96 = metadata !{i32 49, i32 19, metadata !14, null}
!97 = metadata !{i32 49, i32 43, metadata !14, null}
!98 = metadata !{i32 49, i32 67, metadata !14, null}
!99 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [x] [line 32]
!100 = metadata !{i32 49, i32 10, metadata !14, null}
!101 = metadata !{i32 32, i32 18, metadata !11, metadata !100}
!102 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [y] [line 32]
!103 = metadata !{i32 32, i32 25, metadata !11, metadata !100}
!104 = metadata !{i32 786689, metadata !11, metadata !"r", metadata !5, i32 50331680, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [r] [line 32]
!105 = metadata !{i32 32, i32 32, metadata !11, metadata !100}
!106 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !107} ; [ DW_TAG_arg_variable ] [size] [line 26]
!107 = metadata !{i32 34, i32 17, metadata !11, metadata !100}
!108 = metadata !{i32 26, i32 26, metadata !10, metadata !107}
!109 = metadata !{i32 27, i32 4, metadata !10, metadata !107}
!110 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !107} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!111 = metadata !{i32 27, i32 8, metadata !10, metadata !107}
!112 = metadata !{i32 28, i32 4, metadata !10, metadata !107}
!113 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!114 = metadata !{i32 34, i32 9, metadata !11, metadata !100}
!115 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !116} ; [ DW_TAG_arg_variable ] [size] [line 17]
!116 = metadata !{i32 35, i32 17, metadata !11, metadata !100}
!117 = metadata !{i32 17, i32 26, metadata !9, metadata !116}
!118 = metadata !{i32 18, i32 4, metadata !9, metadata !116}
!119 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !116} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!120 = metadata !{i32 18, i32 8, metadata !9, metadata !116}
!121 = metadata !{i32 19, i32 4, metadata !9, metadata !116}
!122 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!123 = metadata !{i32 35, i32 9, metadata !11, metadata !100}
!124 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [size] [line 8]
!125 = metadata !{i32 36, i32 17, metadata !11, metadata !100}
!126 = metadata !{i32 8, i32 26, metadata !4, metadata !125} ; [ DW_TAG_imported_declaration ]
!127 = metadata !{i32 9, i32 4, metadata !4, metadata !125}
!128 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!129 = metadata !{i32 9, i32 8, metadata !4, metadata !125}
!130 = metadata !{i32 10, i32 4, metadata !4, metadata !125}
!131 = metadata !{i32 786688, metadata !11, metadata !"r_ref", metadata !5, i32 36, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [r_ref] [line 36]
!132 = metadata !{i32 36, i32 9, metadata !11, metadata !100}
!133 = metadata !{i32 38, i32 5, metadata !11, metadata !100}
!134 = metadata !{i32 39, i32 5, metadata !11, metadata !100}
!135 = metadata !{i32 40, i32 5, metadata !11, metadata !100}
!136 = metadata !{i32 41, i32 5, metadata !89, metadata !100}
!137 = metadata !{i32 42, i32 9, metadata !91, metadata !100}
!138 = metadata !{i32 43, i32 9, metadata !91, metadata !100}
!139 = metadata !{i32 41, i32 5, metadata !11, metadata !100}
!140 = metadata !{i32 44, i32 5, metadata !91, metadata !100}
!141 = metadata !{i32 45, i32 5, metadata !11, metadata !100}

