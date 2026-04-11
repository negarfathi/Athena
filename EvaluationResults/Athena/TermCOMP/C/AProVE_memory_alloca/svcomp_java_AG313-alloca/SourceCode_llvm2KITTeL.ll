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
define i32 @quot(i32 %x, i32 %y) #0 {
quot_bb3:
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
  %"26" = load i32* %"25", align 4, !dbg !86
  %"27" = icmp eq i32 %"26", 0, !dbg !86
  br i1 %"27", label %quot_bb8, label %quot_bb4, !dbg !86

quot_bb4:                                         ; preds = %quot_bb3
  %"28" = sext i32 %"9" to i64, !dbg !88
  %"29" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"28", !dbg !88
  %"30" = sext i32 %"12" to i64, !dbg !90
  %"31" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"30", !dbg !90
  %"32" = load i32* %"31", align 4, !dbg !90
  %"33" = sext i32 %"15" to i64, !dbg !92
  %"34" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"33", !dbg !92
  %"35" = sext i32 %"9" to i64, !dbg !94
  %"36" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"35", !dbg !94
  %"37" = sext i32 %"12" to i64, !dbg !94
  %"38" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"37", !dbg !94
  %"39" = load i32* %"38", align 4, !dbg !94
  %"40" = sext i32 %"9" to i64, !dbg !94
  %"41" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"40", !dbg !94
  br label %quot_bb5, !dbg !95

quot_bb5:                                         ; preds = %quot_bb6, %quot_bb4
  %"42" = load i32* %"29", align 4, !dbg !88
  %"43" = icmp sgt i32 %"42", 0, !dbg !88
  %"44" = icmp sgt i32 %"32", 0, !dbg !90
  %. = select i1 %"43", i1 %"44", i1 false, !dbg !88
  br i1 %., label %quot_bb6, label %quot_bb7, !dbg !96

quot_bb6:                                         ; preds = %quot_bb5
  %"45" = load i32* %"34", align 4, !dbg !92
  %"46" = add nsw i32 %"45", 1, !dbg !92
  store i32 %"46", i32* %"34", align 4, !dbg !92
  %"47" = load i32* %"36", align 4, !dbg !94
  %"48" = sub nsw i32 %"47", 1, !dbg !94
  %"49" = sub nsw i32 %"39", 1, !dbg !94
  %"50" = sub nsw i32 %"48", %"49", !dbg !94
  store i32 %"50", i32* %"41", align 4, !dbg !94
  br label %quot_bb5, !dbg !98

quot_bb7:                                         ; preds = %quot_bb5
  %"51" = sext i32 %"15" to i64, !dbg !99
  %"52" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"51", !dbg !99
  %"53" = load i32* %"52", align 4, !dbg !99
  br label %quot_bb8, !dbg !99

quot_bb8:                                         ; preds = %quot_bb3, %quot_bb7
  %.0 = phi i32 [ %"53", %quot_bb7 ], [ 0, %quot_bb3 ]
  ret i32 %.0, !dbg !100
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"54" = call i32 @__VERIFIER_nondet_int(), !dbg !101
  %"55" = call i32 @__VERIFIER_nondet_int(), !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !103), !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !106), !dbg !107
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !108), !dbg !110
  %"56" = load i32* @"'memory2_freeIndex", align 4, !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !112), !dbg !113
  %"57" = load i32* @"'memory2_freeIndex", align 4, !dbg !114
  %"58" = add nsw i32 %"57", 1, !dbg !114
  store i32 %"58", i32* @"'memory2_freeIndex", align 4, !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !117), !dbg !119
  %"59" = load i32* @"'memory1_freeIndex", align 4, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !121), !dbg !122
  %"60" = load i32* @"'memory1_freeIndex", align 4, !dbg !123
  %"61" = add nsw i32 %"60", 1, !dbg !123
  store i32 %"61", i32* @"'memory1_freeIndex", align 4, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !124), !dbg !125
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !126), !dbg !128
  %"62" = load i32* @"'memory0_freeIndex", align 4, !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"62"}, i64 0, metadata !130), !dbg !131
  %"63" = load i32* @"'memory0_freeIndex", align 4, !dbg !132
  %"64" = add nsw i32 %"63", 1, !dbg !132
  store i32 %"64", i32* @"'memory0_freeIndex", align 4, !dbg !132
  call void @llvm.dbg.value(metadata !{i32 %"62"}, i64 0, metadata !133), !dbg !134
  %"65" = sext i32 %"56" to i64, !dbg !135
  %"66" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"65", !dbg !135
  store i32 %"54", i32* %"66", align 4, !dbg !135
  %"67" = sext i32 %"59" to i64, !dbg !136
  %"68" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"67", !dbg !136
  store i32 %"55", i32* %"68", align 4, !dbg !136
  %"69" = sext i32 %"62" to i64, !dbg !137
  %"70" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"69", !dbg !137
  store i32 0, i32* %"70", align 4, !dbg !137
  %"71" = sext i32 %"56" to i64, !dbg !138
  %"72" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"71", !dbg !138
  %"73" = load i32* %"72", align 4, !dbg !138
  %"74" = icmp eq i32 %"73", 0, !dbg !138
  br i1 %"74", label %main_quot.exit, label %main_bb10, !dbg !138

main_bb10:                                        ; preds = %main_bb9
  %"75" = sext i32 %"56" to i64, !dbg !139
  %"76" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"75", !dbg !139
  %"77" = sext i32 %"59" to i64, !dbg !140
  %"78" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"77", !dbg !140
  %"79" = load i32* %"78", align 4, !dbg !140
  %"80" = sext i32 %"62" to i64, !dbg !141
  %"81" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"80", !dbg !141
  %"82" = sext i32 %"56" to i64, !dbg !142
  %"83" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"82", !dbg !142
  %"84" = sext i32 %"59" to i64, !dbg !142
  %"85" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"84", !dbg !142
  %"86" = load i32* %"85", align 4, !dbg !142
  %"87" = sext i32 %"56" to i64, !dbg !142
  %"88" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"87", !dbg !142
  br label %main_bb11, !dbg !143

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %"89" = load i32* %"76", align 4, !dbg !139
  %"90" = icmp sgt i32 %"89", 0, !dbg !139
  %"91" = icmp sgt i32 %"79", 0, !dbg !140
  %..i = select i1 %"90", i1 %"91", i1 false, !dbg !139
  br i1 %..i, label %main_bb12, label %main_bb13, !dbg !144

main_bb12:                                        ; preds = %main_bb11
  %"92" = load i32* %"81", align 4, !dbg !141
  %"93" = add nsw i32 %"92", 1, !dbg !141
  store i32 %"93", i32* %"81", align 4, !dbg !141
  %"94" = load i32* %"83", align 4, !dbg !142
  %"95" = sub nsw i32 %"94", 1, !dbg !142
  %"96" = sub nsw i32 %"86", 1, !dbg !142
  %"97" = sub nsw i32 %"95", %"96", !dbg !142
  store i32 %"97", i32* %"88", align 4, !dbg !142
  br label %main_bb11, !dbg !145

main_bb13:                                        ; preds = %main_bb11
  %"98" = sext i32 %"62" to i64, !dbg !146
  %"99" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"98", !dbg !146
  %"100" = load i32* %"99", align 4, !dbg !146
  br label %main_quot.exit, !dbg !146

main_quot.exit:                                   ; preds = %main_bb9, %main_bb13
  %.0.i = phi i32 [ %"100", %main_bb13 ], [ 0, %main_bb9 ], !dbg !104
  ret i32 %.0.i, !dbg !104
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
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"quot", metadata !"quot", metadata !"", i32 32, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @quot, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [quot]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !8}
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
!52 = metadata !{i32 32, i32 14, metadata !11, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 32]
!54 = metadata !{i32 32, i32 21, metadata !11, null}
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
!81 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 36]
!82 = metadata !{i32 36, i32 9, metadata !11, null}
!83 = metadata !{i32 37, i32 5, metadata !11, null}
!84 = metadata !{i32 38, i32 5, metadata !11, null}
!85 = metadata !{i32 39, i32 5, metadata !11, null}
!86 = metadata !{i32 40, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 41, i32 5, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 5, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 41, i32 5, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 5, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 42, i32 9, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 58, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 43, i32 9, metadata !93, null}
!95 = metadata !{i32 41, i32 5, metadata !11, null}
!96 = metadata !{i32 41, i32 5, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 5, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!98 = metadata !{i32 44, i32 5, metadata !93, null}
!99 = metadata !{i32 45, i32 5, metadata !11, null}
!100 = metadata !{i32 46, i32 1, metadata !11, null}
!101 = metadata !{i32 49, i32 15, metadata !14, null}
!102 = metadata !{i32 49, i32 39, metadata !14, null}
!103 = metadata !{i32 786689, metadata !11, metadata !"x", metadata !5, i32 16777248, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [x] [line 32]
!104 = metadata !{i32 49, i32 10, metadata !14, null}
!105 = metadata !{i32 32, i32 14, metadata !11, metadata !104}
!106 = metadata !{i32 786689, metadata !11, metadata !"y", metadata !5, i32 33554464, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [y] [line 32]
!107 = metadata !{i32 32, i32 21, metadata !11, metadata !104}
!108 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [size] [line 26]
!109 = metadata !{i32 34, i32 17, metadata !11, metadata !104}
!110 = metadata !{i32 26, i32 26, metadata !10, metadata !109}
!111 = metadata !{i32 27, i32 4, metadata !10, metadata !109}
!112 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!113 = metadata !{i32 27, i32 8, metadata !10, metadata !109}
!114 = metadata !{i32 28, i32 4, metadata !10, metadata !109}
!115 = metadata !{i32 786688, metadata !11, metadata !"x_ref", metadata !5, i32 34, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [x_ref] [line 34]
!116 = metadata !{i32 34, i32 9, metadata !11, metadata !104}
!117 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !118} ; [ DW_TAG_arg_variable ] [size] [line 17]
!118 = metadata !{i32 35, i32 17, metadata !11, metadata !104}
!119 = metadata !{i32 17, i32 26, metadata !9, metadata !118}
!120 = metadata !{i32 18, i32 4, metadata !9, metadata !118}
!121 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !118} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!122 = metadata !{i32 18, i32 8, metadata !9, metadata !118}
!123 = metadata !{i32 19, i32 4, metadata !9, metadata !118}
!124 = metadata !{i32 786688, metadata !11, metadata !"y_ref", metadata !5, i32 35, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [y_ref] [line 35]
!125 = metadata !{i32 35, i32 9, metadata !11, metadata !104}
!126 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !127} ; [ DW_TAG_arg_variable ] [size] [line 8]
!127 = metadata !{i32 36, i32 13, metadata !11, metadata !104}
!128 = metadata !{i32 8, i32 26, metadata !4, metadata !127} ; [ DW_TAG_imported_declaration ]
!129 = metadata !{i32 9, i32 4, metadata !4, metadata !127}
!130 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !127} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!131 = metadata !{i32 9, i32 8, metadata !4, metadata !127}
!132 = metadata !{i32 10, i32 4, metadata !4, metadata !127}
!133 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 36, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [i] [line 36]
!134 = metadata !{i32 36, i32 9, metadata !11, metadata !104}
!135 = metadata !{i32 37, i32 5, metadata !11, metadata !104}
!136 = metadata !{i32 38, i32 5, metadata !11, metadata !104}
!137 = metadata !{i32 39, i32 5, metadata !11, metadata !104}
!138 = metadata !{i32 40, i32 9, metadata !87, metadata !104}
!139 = metadata !{i32 41, i32 5, metadata !89, metadata !104}
!140 = metadata !{i32 41, i32 5, metadata !91, metadata !104}
!141 = metadata !{i32 42, i32 9, metadata !93, metadata !104}
!142 = metadata !{i32 43, i32 9, metadata !93, metadata !104}
!143 = metadata !{i32 41, i32 5, metadata !11, metadata !104}
!144 = metadata !{i32 41, i32 5, metadata !97, metadata !104}
!145 = metadata !{i32 44, i32 5, metadata !93, metadata !104}
!146 = metadata !{i32 45, i32 5, metadata !11, metadata !104}

