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
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !29
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !31), !dbg !32
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  %"2" = add nsw i32 %"1", %size, !dbg !33
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !33
  ret i32 %"0", !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !35), !dbg !36
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !38), !dbg !39
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !40
  %"5" = add nsw i32 %"4", %size, !dbg !40
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !40
  ret i32 %"3", !dbg !41
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !42), !dbg !43
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !45), !dbg !46
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !47
  %"8" = add nsw i32 %"7", %size, !dbg !47
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !47
  ret i32 %"6", !dbg !48
}

; Function Attrs: nounwind uwtable
define i32 @f(i32 %a) #0 {
f_bb3:
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !54
  %"9" = load i32* @"'memory2_freeIndex", align 4, !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !56), !dbg !57
  %"10" = load i32* @"'memory2_freeIndex", align 4, !dbg !58
  %"11" = add nsw i32 %"10", 1, !dbg !58
  store i32 %"11", i32* @"'memory2_freeIndex", align 4, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !59), !dbg !60
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !61), !dbg !63
  %"12" = load i32* @"'memory1_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !65), !dbg !66
  %"13" = load i32* @"'memory1_freeIndex", align 4, !dbg !67
  %"14" = add nsw i32 %"13", 1, !dbg !67
  store i32 %"14", i32* @"'memory1_freeIndex", align 4, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !70), !dbg !72
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !74), !dbg !75
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !76
  %"17" = add nsw i32 %"16", 1, !dbg !76
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !77), !dbg !78
  %"18" = sext i32 %"9" to i64, !dbg !79
  %"19" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"18", !dbg !79
  store i32 %a, i32* %"19", align 4, !dbg !79
  %"20" = sext i32 %"12" to i64, !dbg !80
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !80
  store i32 0, i32* %"21", align 4, !dbg !80
  %"22" = sext i32 %"15" to i64, !dbg !81
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !81
  store i32 0, i32* %"23", align 4, !dbg !81
  %"24" = sext i32 %"9" to i64, !dbg !82
  %"25" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"24", !dbg !82
  %"26" = sext i32 %"9" to i64, !dbg !84
  %"27" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"26", !dbg !84
  %"28" = sext i32 %"12" to i64, !dbg !84
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !84
  %"30" = sext i32 %"12" to i64, !dbg !86
  %"31" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"30", !dbg !86
  %"32" = sext i32 %"9" to i64, !dbg !88
  %"33" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"32", !dbg !88
  %"34" = sext i32 %"9" to i64, !dbg !88
  %"35" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"34", !dbg !88
  %"36" = sext i32 %"15" to i64, !dbg !90
  %"37" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"36", !dbg !90
  %"38" = sext i32 %"9" to i64, !dbg !91
  %"39" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"38", !dbg !91
  %"40" = sext i32 %"9" to i64, !dbg !91
  %"41" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"40", !dbg !91
  br label %f_bb4, !dbg !92

f_bb4:                                            ; preds = %f_bb8, %f_bb3
  %"42" = load i32* %"25", align 4, !dbg !82
  %"43" = icmp sgt i32 %"42", 1, !dbg !82
  br i1 %"43", label %f_bb5, label %f_bb9, !dbg !82

f_bb5:                                            ; preds = %f_bb4
  %"44" = load i32* %"27", align 4, !dbg !84
  %"45" = srem i32 %"44", 2, !dbg !84
  store i32 %"45", i32* %"29", align 4, !dbg !84
  %"46" = load i32* %"31", align 4, !dbg !86
  %"47" = icmp eq i32 %"46", 0, !dbg !86
  br i1 %"47", label %f_bb6, label %f_bb7, !dbg !86

f_bb6:                                            ; preds = %f_bb5
  %"48" = load i32* %"33", align 4, !dbg !88
  %"49" = sdiv i32 %"48", 2, !dbg !88
  store i32 %"49", i32* %"35", align 4, !dbg !88
  br label %f_bb8, !dbg !88

f_bb7:                                            ; preds = %f_bb5
  %"50" = load i32* %"39", align 4, !dbg !91
  %"51" = sub nsw i32 %"50", 1, !dbg !91
  store i32 %"51", i32* %"41", align 4, !dbg !91
  br label %f_bb8

f_bb8:                                            ; preds = %f_bb7, %f_bb6
  %"52" = load i32* %"37", align 4, !dbg !90
  %"53" = add nsw i32 %"52", 1, !dbg !90
  store i32 %"53", i32* %"37", align 4, !dbg !90
  br label %f_bb4, !dbg !93

f_bb9:                                            ; preds = %f_bb4
  %"54" = sext i32 %"15" to i64, !dbg !94
  %"55" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"54", !dbg !94
  %"56" = load i32* %"55", align 4, !dbg !94
  ret i32 %"56", !dbg !94
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"57" = call i32 @__VERIFIER_nondet_int(), !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !96), !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !98), !dbg !100
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !101), !dbg !103
  %"58" = load i32* @"'memory2_freeIndex", align 4, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !105), !dbg !106
  %"59" = load i32* @"'memory2_freeIndex", align 4, !dbg !107
  %"60" = add nsw i32 %"59", 1, !dbg !107
  store i32 %"60", i32* @"'memory2_freeIndex", align 4, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !110), !dbg !112
  %"61" = load i32* @"'memory1_freeIndex", align 4, !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !114), !dbg !115
  %"62" = load i32* @"'memory1_freeIndex", align 4, !dbg !116
  %"63" = add nsw i32 %"62", 1, !dbg !116
  store i32 %"63", i32* @"'memory1_freeIndex", align 4, !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"61"}, i64 0, metadata !117), !dbg !118
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !119), !dbg !121
  %"64" = load i32* @"'memory0_freeIndex", align 4, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !123), !dbg !124
  %"65" = load i32* @"'memory0_freeIndex", align 4, !dbg !125
  %"66" = add nsw i32 %"65", 1, !dbg !125
  store i32 %"66", i32* @"'memory0_freeIndex", align 4, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !126), !dbg !127
  %"67" = sext i32 %"58" to i64, !dbg !128
  %"68" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"67", !dbg !128
  store i32 %"57", i32* %"68", align 4, !dbg !128
  %"69" = sext i32 %"61" to i64, !dbg !129
  %"70" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"69", !dbg !129
  store i32 0, i32* %"70", align 4, !dbg !129
  %"71" = sext i32 %"64" to i64, !dbg !130
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !130
  store i32 0, i32* %"72", align 4, !dbg !130
  %"73" = sext i32 %"58" to i64, !dbg !131
  %"74" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"73", !dbg !131
  %"75" = sext i32 %"58" to i64, !dbg !132
  %"76" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"75", !dbg !132
  %"77" = sext i32 %"61" to i64, !dbg !132
  %"78" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"77", !dbg !132
  %"79" = sext i32 %"61" to i64, !dbg !133
  %"80" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"79", !dbg !133
  %"81" = sext i32 %"58" to i64, !dbg !134
  %"82" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"81", !dbg !134
  %"83" = sext i32 %"58" to i64, !dbg !134
  %"84" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"83", !dbg !134
  %"85" = sext i32 %"64" to i64, !dbg !135
  %"86" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"85", !dbg !135
  %"87" = sext i32 %"58" to i64, !dbg !136
  %"88" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"87", !dbg !136
  %"89" = sext i32 %"58" to i64, !dbg !136
  %"90" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"89", !dbg !136
  br label %main_bb11, !dbg !137

main_bb11:                                        ; preds = %main_bb15, %main_bb10
  %"91" = load i32* %"74", align 4, !dbg !131
  %"92" = icmp sgt i32 %"91", 1, !dbg !131
  br i1 %"92", label %main_bb12, label %main_f.exit, !dbg !131

main_bb12:                                        ; preds = %main_bb11
  %"93" = load i32* %"76", align 4, !dbg !132
  %"94" = srem i32 %"93", 2, !dbg !132
  store i32 %"94", i32* %"78", align 4, !dbg !132
  %"95" = load i32* %"80", align 4, !dbg !133
  %"96" = icmp eq i32 %"95", 0, !dbg !133
  br i1 %"96", label %main_bb13, label %main_bb14, !dbg !133

main_bb13:                                        ; preds = %main_bb12
  %"97" = load i32* %"82", align 4, !dbg !134
  %"98" = sdiv i32 %"97", 2, !dbg !134
  store i32 %"98", i32* %"84", align 4, !dbg !134
  br label %main_bb15, !dbg !134

main_bb14:                                        ; preds = %main_bb12
  %"99" = load i32* %"88", align 4, !dbg !136
  %"100" = sub nsw i32 %"99", 1, !dbg !136
  store i32 %"100", i32* %"90", align 4, !dbg !136
  br label %main_bb15, !dbg !99

main_bb15:                                        ; preds = %main_bb14, %main_bb13
  %"101" = load i32* %"86", align 4, !dbg !135
  %"102" = add nsw i32 %"101", 1, !dbg !135
  store i32 %"102", i32* %"86", align 4, !dbg !135
  br label %main_bb11, !dbg !138

main_f.exit:                                      ; preds = %main_bb11
  %"103" = sext i32 %"64" to i64, !dbg !139
  %"104" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"103", !dbg !139
  %"105" = load i32* %"104", align 4, !dbg !139
  call void @llvm.dbg.value(metadata !{i32 %"105"}, i64 0, metadata !140), !dbg !141
  ret i32 %"105", !dbg !142
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @f, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [f]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 48, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !23, metadata !24}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !20, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!29 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!30 = metadata !{i32 9, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!32 = metadata !{i32 9, i32 8, metadata !4, null}
!33 = metadata !{i32 10, i32 4, metadata !4, null}
!34 = metadata !{i32 11, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!36 = metadata !{i32 17, i32 26, metadata !9, null}
!37 = metadata !{i32 18, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!39 = metadata !{i32 18, i32 8, metadata !9, null}
!40 = metadata !{i32 19, i32 4, metadata !9, null}
!41 = metadata !{i32 20, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!43 = metadata !{i32 26, i32 26, metadata !10, null}
!44 = metadata !{i32 27, i32 4, metadata !10, null}
!45 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!46 = metadata !{i32 27, i32 8, metadata !10, null}
!47 = metadata !{i32 28, i32 4, metadata !10, null}
!48 = metadata !{i32 29, i32 4, metadata !10, null}
!49 = metadata !{i32 786689, metadata !11, metadata !"a", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 32]
!50 = metadata !{i32 32, i32 11, metadata !11, null}
!51 = metadata !{i32 1}
!52 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !53} ; [ DW_TAG_arg_variable ] [size] [line 26]
!53 = metadata !{i32 33, i32 17, metadata !11, null}
!54 = metadata !{i32 26, i32 26, metadata !10, metadata !53}
!55 = metadata !{i32 27, i32 4, metadata !10, metadata !53}
!56 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !53} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!57 = metadata !{i32 27, i32 8, metadata !10, metadata !53}
!58 = metadata !{i32 28, i32 4, metadata !10, metadata !53}
!59 = metadata !{i32 786688, metadata !11, metadata !"a_ref", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a_ref] [line 33]
!60 = metadata !{i32 33, i32 9, metadata !11, null}
!61 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [size] [line 17]
!62 = metadata !{i32 34, i32 15, metadata !11, null}
!63 = metadata !{i32 17, i32 26, metadata !9, metadata !62}
!64 = metadata !{i32 18, i32 4, metadata !9, metadata !62}
!65 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !62} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!66 = metadata !{i32 18, i32 8, metadata !9, metadata !62}
!67 = metadata !{i32 19, i32 4, metadata !9, metadata !62}
!68 = metadata !{i32 786688, metadata !11, metadata !"tmp", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 34]
!69 = metadata !{i32 34, i32 9, metadata !11, null}
!70 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !71} ; [ DW_TAG_arg_variable ] [size] [line 8]
!71 = metadata !{i32 35, i32 17, metadata !11, null}
!72 = metadata !{i32 8, i32 26, metadata !4, metadata !71} ; [ DW_TAG_imported_declaration ]
!73 = metadata !{i32 9, i32 4, metadata !4, metadata !71}
!74 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !71} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!75 = metadata !{i32 9, i32 8, metadata !4, metadata !71}
!76 = metadata !{i32 10, i32 4, metadata !4, metadata !71}
!77 = metadata !{i32 786688, metadata !11, metadata !"count", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 35]
!78 = metadata !{i32 35, i32 9, metadata !11, null}
!79 = metadata !{i32 36, i32 5, metadata !11, null}
!80 = metadata !{i32 37, i32 5, metadata !11, null}
!81 = metadata !{i32 38, i32 5, metadata !11, null}
!82 = metadata !{i32 39, i32 5, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !11, i32 39, i32 5, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 40, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !11, i32 39, i32 32, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 41, i32 13, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 41, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 41, i32 32, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !87, i32 41, i32 32, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 43, i32 9, metadata !85, null}
!91 = metadata !{i32 42, i32 14, metadata !87, null}
!92 = metadata !{i32 39, i32 5, metadata !11, null}
!93 = metadata !{i32 44, i32 5, metadata !85, null}
!94 = metadata !{i32 45, i32 5, metadata !11, null}
!95 = metadata !{i32 49, i32 13, metadata !12, null}
!96 = metadata !{i32 786688, metadata !12, metadata !"x", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 49]
!97 = metadata !{i32 49, i32 9, metadata !12, null}
!98 = metadata !{i32 786689, metadata !11, metadata !"a", metadata !5, i32 16777248, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [a] [line 32]
!99 = metadata !{i32 50, i32 17, metadata !12, null}
!100 = metadata !{i32 32, i32 11, metadata !11, metadata !99}
!101 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [size] [line 26]
!102 = metadata !{i32 33, i32 17, metadata !11, metadata !99}
!103 = metadata !{i32 26, i32 26, metadata !10, metadata !102}
!104 = metadata !{i32 27, i32 4, metadata !10, metadata !102}
!105 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!106 = metadata !{i32 27, i32 8, metadata !10, metadata !102}
!107 = metadata !{i32 28, i32 4, metadata !10, metadata !102}
!108 = metadata !{i32 786688, metadata !11, metadata !"a_ref", metadata !5, i32 33, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [a_ref] [line 33]
!109 = metadata !{i32 33, i32 9, metadata !11, metadata !99}
!110 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !111} ; [ DW_TAG_arg_variable ] [size] [line 17]
!111 = metadata !{i32 34, i32 15, metadata !11, metadata !99}
!112 = metadata !{i32 17, i32 26, metadata !9, metadata !111}
!113 = metadata !{i32 18, i32 4, metadata !9, metadata !111}
!114 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !111} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!115 = metadata !{i32 18, i32 8, metadata !9, metadata !111}
!116 = metadata !{i32 19, i32 4, metadata !9, metadata !111}
!117 = metadata !{i32 786688, metadata !11, metadata !"tmp", metadata !5, i32 34, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [tmp] [line 34]
!118 = metadata !{i32 34, i32 9, metadata !11, metadata !99}
!119 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !120} ; [ DW_TAG_arg_variable ] [size] [line 8]
!120 = metadata !{i32 35, i32 17, metadata !11, metadata !99}
!121 = metadata !{i32 8, i32 26, metadata !4, metadata !120} ; [ DW_TAG_imported_declaration ]
!122 = metadata !{i32 9, i32 4, metadata !4, metadata !120}
!123 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !120} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!124 = metadata !{i32 9, i32 8, metadata !4, metadata !120}
!125 = metadata !{i32 10, i32 4, metadata !4, metadata !120}
!126 = metadata !{i32 786688, metadata !11, metadata !"count", metadata !5, i32 35, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [count] [line 35]
!127 = metadata !{i32 35, i32 9, metadata !11, metadata !99}
!128 = metadata !{i32 36, i32 5, metadata !11, metadata !99}
!129 = metadata !{i32 37, i32 5, metadata !11, metadata !99}
!130 = metadata !{i32 38, i32 5, metadata !11, metadata !99}
!131 = metadata !{i32 39, i32 5, metadata !83, metadata !99}
!132 = metadata !{i32 40, i32 9, metadata !85, metadata !99}
!133 = metadata !{i32 41, i32 13, metadata !87, metadata !99}
!134 = metadata !{i32 41, i32 32, metadata !89, metadata !99}
!135 = metadata !{i32 43, i32 9, metadata !85, metadata !99}
!136 = metadata !{i32 42, i32 14, metadata !87, metadata !99}
!137 = metadata !{i32 39, i32 5, metadata !11, metadata !99}
!138 = metadata !{i32 44, i32 5, metadata !85, metadata !99}
!139 = metadata !{i32 45, i32 5, metadata !11, metadata !99}
!140 = metadata !{i32 786688, metadata !12, metadata !"count", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 50]
!141 = metadata !{i32 50, i32 9, metadata !12, null}
!142 = metadata !{i32 51, i32 5, metadata !12, null}

