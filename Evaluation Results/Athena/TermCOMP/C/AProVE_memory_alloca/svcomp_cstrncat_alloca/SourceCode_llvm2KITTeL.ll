; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16

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
define i32 @cstrncat(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncat_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !48), !dbg !49
  br label %cstrncat_bb3, !dbg !50

cstrncat_bb3:                                     ; preds = %cstrncat_bb4, %cstrncat_bb2
  %s.0 = phi i32 [ %s1, %cstrncat_bb2 ], [ %"11", %cstrncat_bb4 ]
  %"6" = sext i32 %s.0 to i64, !dbg !51
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !51
  %"8" = load i8* %"7", align 1, !dbg !51
  %"9" = sext i8 %"8" to i32, !dbg !51
  %"10" = icmp ne i32 %"9", 0, !dbg !51
  br i1 %"10", label %cstrncat_bb4, label %cstrncat_bb5, !dbg !51

cstrncat_bb4:                                     ; preds = %cstrncat_bb3
  %"11" = add nsw i32 %s.0, 1, !dbg !53
  br label %cstrncat_bb3, !dbg !53

cstrncat_bb5:                                     ; preds = %cstrncat_bb3, %cstrncat_bb8
  %s.1 = phi i32 [ %"23", %cstrncat_bb8 ], [ %s.0, %cstrncat_bb3 ]
  %.01 = phi i32 [ %"22", %cstrncat_bb8 ], [ %n, %cstrncat_bb3 ]
  %.0 = phi i32 [ %.1, %cstrncat_bb8 ], [ %s2, %cstrncat_bb3 ]
  %"12" = icmp ne i32 %.01, 0, !dbg !54
  br i1 %"12", label %cstrncat_bb6, label %cstrncat_bb7, !dbg !54

cstrncat_bb6:                                     ; preds = %cstrncat_bb5
  %"13" = add nsw i32 %.0, 1, !dbg !56
  %"14" = sext i32 %.0 to i64, !dbg !56
  %"15" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"14", !dbg !56
  %"16" = load i8* %"15", align 1, !dbg !56
  %"17" = sext i32 %s.1 to i64, !dbg !56
  %"18" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"17", !dbg !56
  store i8 %"16", i8* %"18", align 1, !dbg !56
  %"19" = sext i8 %"16" to i32, !dbg !56
  %"20" = icmp ne i32 %"19", 0, !dbg !56
  br label %cstrncat_bb7

cstrncat_bb7:                                     ; preds = %cstrncat_bb6, %cstrncat_bb5
  %.1 = phi i32 [ %"13", %cstrncat_bb6 ], [ %.0, %cstrncat_bb5 ]
  %"21" = phi i1 [ false, %cstrncat_bb5 ], [ %"20", %cstrncat_bb6 ]
  br i1 %"21", label %cstrncat_bb8, label %cstrncat_bb9, !dbg !58

cstrncat_bb8:                                     ; preds = %cstrncat_bb7
  %"22" = add nsw i32 %.01, -1, !dbg !60
  %"23" = add nsw i32 %s.1, 1, !dbg !62
  br label %cstrncat_bb5, !dbg !63

cstrncat_bb9:                                     ; preds = %cstrncat_bb7
  %"24" = sext i32 %s.1 to i64, !dbg !64
  %"25" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"24", !dbg !64
  %"26" = load i8* %"25", align 1, !dbg !64
  %"27" = sext i8 %"26" to i32, !dbg !64
  %"28" = icmp ne i32 %"27", 0, !dbg !64
  br i1 %"28", label %cstrncat_bb10, label %cstrncat_bb11, !dbg !64

cstrncat_bb10:                                    ; preds = %cstrncat_bb9
  %"29" = sext i32 %s.1 to i64, !dbg !66
  %"30" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"29", !dbg !66
  store i8 0, i8* %"30", align 1, !dbg !66
  br label %cstrncat_bb11, !dbg !66

cstrncat_bb11:                                    ; preds = %cstrncat_bb10, %cstrncat_bb9
  ret i32 %s1, !dbg !67
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"31" = call i32 @__VERIFIER_nondet_int(), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !69), !dbg !70
  %"32" = call i32 @__VERIFIER_nondet_int(), !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !72), !dbg !73
  %"33" = call i32 @__VERIFIER_nondet_int(), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !75), !dbg !76
  %"34" = icmp slt i32 %"31", 1, !dbg !77
  call void @llvm.dbg.value(metadata !79, i64 0, metadata !69), !dbg !70
  %. = select i1 %"34", i32 1, i32 %"31", !dbg !77
  %"35" = icmp slt i32 %"32", 1, !dbg !80
  call void @llvm.dbg.value(metadata !79, i64 0, metadata !72), !dbg !73
  %length2.0 = select i1 %"35", i32 1, i32 %"32", !dbg !80
  %"36" = icmp slt i32 %"33", 1, !dbg !82
  call void @llvm.dbg.value(metadata !79, i64 0, metadata !75), !dbg !76
  %.1 = select i1 %"36", i32 1, i32 %"33", !dbg !82
  %"37" = icmp slt i32 %., %.1, !dbg !84
  %"38" = sub nsw i32 %., %.1
  %"39" = icmp slt i32 %"38", %length2.0, !dbg !86
  %or.cond = or i1 %"37", %"39", !dbg !84
  br i1 %or.cond, label %main_cstrncat.exit, label %main_bb13, !dbg !84

main_bb13:                                        ; preds = %main_bb12
  %"40" = mul nsw i32 %., 1, !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !89), !dbg !90
  %"41" = load i32* @"'memory1_freeIndex", align 4, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !92), !dbg !93
  %"42" = load i32* @"'memory1_freeIndex", align 4, !dbg !94
  %"43" = add nsw i32 %"42", %"40", !dbg !94
  store i32 %"43", i32* @"'memory1_freeIndex", align 4, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !95), !dbg !96
  %"44" = mul nsw i32 %length2.0, 1, !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !98), !dbg !99
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !101), !dbg !102
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !103
  %"47" = add nsw i32 %"46", %"44", !dbg !103
  store i32 %"47", i32* @"'memory0_freeIndex", align 4, !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !104), !dbg !105
  %"48" = sub nsw i32 %., %.1, !dbg !106
  %"49" = sub nsw i32 %"48", 1, !dbg !106
  %"50" = add nsw i32 %"41", %"49", !dbg !106
  %"51" = sext i32 %"50" to i64, !dbg !106
  %"52" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"51", !dbg !106
  store i8 0, i8* %"52", align 1, !dbg !106
  %"53" = sub nsw i32 %length2.0, 1, !dbg !107
  %"54" = add nsw i32 %"45", %"53", !dbg !107
  %"55" = sext i32 %"54" to i64, !dbg !107
  %"56" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"55", !dbg !107
  store i8 0, i8* %"56", align 1, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !108), !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !111), !dbg !112
  call void @llvm.dbg.value(metadata !{i32 %.1}, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !115), !dbg !116
  br label %main_bb14, !dbg !117

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %s.0.i = phi i32 [ %"41", %main_bb13 ], [ %"62", %main_bb15 ], !dbg !109
  %"57" = sext i32 %s.0.i to i64, !dbg !118
  %"58" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"57", !dbg !118
  %"59" = load i8* %"58", align 1, !dbg !118
  %"60" = sext i8 %"59" to i32, !dbg !118
  %"61" = icmp ne i32 %"60", 0, !dbg !118
  br i1 %"61", label %main_bb15, label %main_bb16, !dbg !118

main_bb15:                                        ; preds = %main_bb14
  %"62" = add nsw i32 %s.0.i, 1, !dbg !119
  br label %main_bb14, !dbg !119

main_bb16:                                        ; preds = %main_bb19, %main_bb14
  %s.1.i = phi i32 [ %"74", %main_bb19 ], [ %s.0.i, %main_bb14 ], !dbg !109
  %.01.i = phi i32 [ %"73", %main_bb19 ], [ %.1, %main_bb14 ], !dbg !109
  %.0.i = phi i32 [ %.1.i, %main_bb19 ], [ %"45", %main_bb14 ], !dbg !109
  %"63" = icmp ne i32 %.01.i, 0, !dbg !120
  br i1 %"63", label %main_bb17, label %main_bb18, !dbg !120

main_bb17:                                        ; preds = %main_bb16
  %"64" = add nsw i32 %.0.i, 1, !dbg !121
  %"65" = sext i32 %.0.i to i64, !dbg !121
  %"66" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"65", !dbg !121
  %"67" = load i8* %"66", align 1, !dbg !121
  %"68" = sext i32 %s.1.i to i64, !dbg !121
  %"69" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"68", !dbg !121
  store i8 %"67", i8* %"69", align 1, !dbg !121
  %"70" = sext i8 %"67" to i32, !dbg !121
  %"71" = icmp ne i32 %"70", 0, !dbg !121
  br label %main_bb18, !dbg !109

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %.1.i = phi i32 [ %"64", %main_bb17 ], [ %.0.i, %main_bb16 ], !dbg !109
  %"72" = phi i1 [ false, %main_bb16 ], [ %"71", %main_bb17 ], !dbg !109
  br i1 %"72", label %main_bb19, label %main_bb20, !dbg !122

main_bb19:                                        ; preds = %main_bb18
  %"73" = add nsw i32 %.01.i, -1, !dbg !123
  %"74" = add nsw i32 %s.1.i, 1, !dbg !124
  br label %main_bb16, !dbg !125

main_bb20:                                        ; preds = %main_bb18
  %"75" = sext i32 %s.1.i to i64, !dbg !126
  %"76" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"75", !dbg !126
  %"77" = load i8* %"76", align 1, !dbg !126
  %"78" = sext i8 %"77" to i32, !dbg !126
  %"79" = icmp ne i32 %"78", 0, !dbg !126
  br i1 %"79", label %main_bb21, label %main_cstrncat.exit, !dbg !126

main_bb21:                                        ; preds = %main_bb20
  %"80" = sext i32 %s.1.i to i64, !dbg !127
  %"81" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"80", !dbg !127
  store i8 0, i8* %"81", align 1, !dbg !127
  br label %main_cstrncat.exit, !dbg !127

main_cstrncat.exit:                               ; preds = %main_bb21, %main_bb20, %main_bb12
  ret i32 0, !dbg !128
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncat", metadata !"cstrncat", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncat, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [cstrncat]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 43] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
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
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!43 = metadata !{i32 23, i32 19, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!45 = metadata !{i32 23, i32 27, metadata !10, null}
!46 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331671, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 23]
!47 = metadata !{i32 23, i32 35, metadata !10, null}
!48 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 25]
!49 = metadata !{i32 25, i32 10, metadata !10, null}
!50 = metadata !{i32 27, i32 6, metadata !10, null}
!51 = metadata !{i32 27, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !10, i32 27, i32 6, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 28, i32 10, metadata !10, null}
!54 = metadata !{i32 34, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 34, i32 6, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 34, i32 6, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 3, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 35, i32 10, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 61, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 36, i32 10, metadata !61, null}
!63 = metadata !{i32 37, i32 6, metadata !61, null}
!64 = metadata !{i32 38, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !10, i32 38, i32 10, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 39, i32 10, metadata !65, null}
!67 = metadata !{i32 40, i32 6, metadata !10, null}
!68 = metadata !{i32 44, i32 19, metadata !13, null}
!69 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 44]
!70 = metadata !{i32 44, i32 9, metadata !13, null}
!71 = metadata !{i32 45, i32 19, metadata !13, null}
!72 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 45]
!73 = metadata !{i32 45, i32 9, metadata !13, null}
!74 = metadata !{i32 46, i32 13, metadata !13, null}
!75 = metadata !{i32 786688, metadata !13, metadata !"n", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 46]
!76 = metadata !{i32 46, i32 9, metadata !13, null}
!77 = metadata !{i32 47, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !13, i32 47, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 1}
!80 = metadata !{i32 50, i32 9, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !13, i32 50, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 53, i32 9, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !13, i32 53, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 56, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !13, i32 56, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 56, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 56, i32 9, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 57, i32 25, metadata !13, null}
!89 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !88} ; [ DW_TAG_arg_variable ] [size] [line 17]
!90 = metadata !{i32 17, i32 26, metadata !9, metadata !88}
!91 = metadata !{i32 18, i32 4, metadata !9, metadata !88}
!92 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !88} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!93 = metadata !{i32 18, i32 8, metadata !9, metadata !88}
!94 = metadata !{i32 19, i32 4, metadata !9, metadata !88}
!95 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 57]
!96 = metadata !{i32 57, i32 9, metadata !13, null}
!97 = metadata !{i32 58, i32 25, metadata !13, null} ; [ DW_TAG_imported_module ]
!98 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [size] [line 8]
!99 = metadata !{i32 8, i32 26, metadata !4, metadata !97} ; [ DW_TAG_imported_declaration ]
!100 = metadata !{i32 9, i32 4, metadata !4, metadata !97}
!101 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !97} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!102 = metadata !{i32 9, i32 8, metadata !4, metadata !97}
!103 = metadata !{i32 10, i32 4, metadata !4, metadata !97}
!104 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 58]
!105 = metadata !{i32 58, i32 9, metadata !13, null} ; [ DW_TAG_imported_module ]
!106 = metadata !{i32 59, i32 5, metadata !13, null}
!107 = metadata !{i32 60, i32 5, metadata !13, null}
!108 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!109 = metadata !{i32 61, i32 5, metadata !13, null}
!110 = metadata !{i32 23, i32 19, metadata !10, metadata !109}
!111 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!112 = metadata !{i32 23, i32 27, metadata !10, metadata !109}
!113 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331671, metadata !8, i32 0, metadata !109} ; [ DW_TAG_arg_variable ] [n] [line 23]
!114 = metadata !{i32 23, i32 35, metadata !10, metadata !109}
!115 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 25, metadata !8, i32 0, metadata !109} ; [ DW_TAG_auto_variable ] [s] [line 25]
!116 = metadata !{i32 25, i32 10, metadata !10, metadata !109}
!117 = metadata !{i32 27, i32 6, metadata !10, metadata !109}
!118 = metadata !{i32 27, i32 6, metadata !52, metadata !109}
!119 = metadata !{i32 28, i32 10, metadata !10, metadata !109}
!120 = metadata !{i32 34, i32 6, metadata !55, metadata !109}
!121 = metadata !{i32 34, i32 6, metadata !57, metadata !109}
!122 = metadata !{i32 34, i32 6, metadata !59, metadata !109}
!123 = metadata !{i32 35, i32 10, metadata !61, metadata !109}
!124 = metadata !{i32 36, i32 10, metadata !61, metadata !109}
!125 = metadata !{i32 37, i32 6, metadata !61, metadata !109}
!126 = metadata !{i32 38, i32 10, metadata !65, metadata !109}
!127 = metadata !{i32 39, i32 10, metadata !65, metadata !109}
!128 = metadata !{i32 63, i32 1, metadata !13, null}

