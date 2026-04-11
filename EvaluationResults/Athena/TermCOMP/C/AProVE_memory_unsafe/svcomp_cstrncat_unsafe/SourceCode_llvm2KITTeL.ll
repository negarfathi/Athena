; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@"'memory4_freeIndex" = global i32 1, align 4
@memory4 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory2 = common global [100000 x i8] zeroinitializer, align 16
@memory3 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !38
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !40), !dbg !41
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !42
  %"2" = add nsw i32 %"1", %size, !dbg !42
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !42
  ret i32 %"0", !dbg !43
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !44), !dbg !45
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !47), !dbg !48
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !49
  %"5" = add nsw i32 %"4", %size, !dbg !49
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !49
  ret i32 %"3", !dbg !50
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !51), !dbg !52
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !54), !dbg !55
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !56
  %"8" = add nsw i32 %"7", %size, !dbg !56
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !56
  ret i32 %"6", !dbg !57
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !58), !dbg !59
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !61), !dbg !62
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !63
  %"11" = add nsw i32 %"10", %size, !dbg !63
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !63
  ret i32 %"9", !dbg !64
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory4(i32 %size) #0 {
allocate_memory4_bb4:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !65), !dbg !66
  %"12" = load i32* @"'memory4_freeIndex", align 4, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !68), !dbg !69
  %"13" = load i32* @"'memory4_freeIndex", align 4, !dbg !70
  %"14" = add nsw i32 %"13", %size, !dbg !70
  store i32 %"14", i32* @"'memory4_freeIndex", align 4, !dbg !70
  ret i32 %"12", !dbg !71
}

; Function Attrs: nounwind uwtable
define i32 @cstrncat(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncat_bb5:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !78), !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !78), !dbg !79
  br label %cstrncat_bb6, !dbg !80

cstrncat_bb6:                                     ; preds = %cstrncat_bb7, %cstrncat_bb5
  %s.0 = phi i32 [ %s1, %cstrncat_bb5 ], [ %"20", %cstrncat_bb7 ]
  %"15" = sext i32 %s.0 to i64, !dbg !81
  %"16" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"15", !dbg !81
  %"17" = load i8* %"16", align 1, !dbg !81
  %"18" = sext i8 %"17" to i32, !dbg !81
  %"19" = icmp ne i32 %"18", 0, !dbg !81
  br i1 %"19", label %cstrncat_bb7, label %cstrncat_bb8, !dbg !81

cstrncat_bb7:                                     ; preds = %cstrncat_bb6
  %"20" = add nsw i32 %s.0, 1, !dbg !83
  br label %cstrncat_bb6, !dbg !83

cstrncat_bb8:                                     ; preds = %cstrncat_bb6, %cstrncat_bb11
  %s.1 = phi i32 [ %"32", %cstrncat_bb11 ], [ %s.0, %cstrncat_bb6 ]
  %.01 = phi i32 [ %"31", %cstrncat_bb11 ], [ %n, %cstrncat_bb6 ]
  %.0 = phi i32 [ %.1, %cstrncat_bb11 ], [ %s2, %cstrncat_bb6 ]
  %"21" = icmp ne i32 %.01, 0, !dbg !84
  br i1 %"21", label %cstrncat_bb9, label %cstrncat_bb10, !dbg !84

cstrncat_bb9:                                     ; preds = %cstrncat_bb8
  %"22" = add nsw i32 %.0, 1, !dbg !86
  %"23" = sext i32 %.0 to i64, !dbg !86
  %"24" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"23", !dbg !86
  %"25" = load i8* %"24", align 1, !dbg !86
  %"26" = sext i32 %s.1 to i64, !dbg !86
  %"27" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"26", !dbg !86
  store i8 %"25", i8* %"27", align 1, !dbg !86
  %"28" = sext i8 %"25" to i32, !dbg !86
  %"29" = icmp ne i32 %"28", 0, !dbg !86
  br label %cstrncat_bb10

cstrncat_bb10:                                    ; preds = %cstrncat_bb9, %cstrncat_bb8
  %.1 = phi i32 [ %"22", %cstrncat_bb9 ], [ %.0, %cstrncat_bb8 ]
  %"30" = phi i1 [ false, %cstrncat_bb8 ], [ %"29", %cstrncat_bb9 ]
  br i1 %"30", label %cstrncat_bb11, label %cstrncat_bb12, !dbg !88

cstrncat_bb11:                                    ; preds = %cstrncat_bb10
  %"31" = add nsw i32 %.01, -1, !dbg !90
  %"32" = add nsw i32 %s.1, 1, !dbg !92
  br label %cstrncat_bb8, !dbg !93

cstrncat_bb12:                                    ; preds = %cstrncat_bb10
  %"33" = sext i32 %s.1 to i64, !dbg !94
  %"34" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"33", !dbg !94
  %"35" = load i8* %"34", align 1, !dbg !94
  %"36" = sext i8 %"35" to i32, !dbg !94
  %"37" = icmp ne i32 %"36", 0, !dbg !94
  br i1 %"37", label %cstrncat_bb13, label %cstrncat_bb14, !dbg !94

cstrncat_bb13:                                    ; preds = %cstrncat_bb12
  %"38" = sext i32 %s.1 to i64, !dbg !96
  %"39" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"38", !dbg !96
  store i8 0, i8* %"39", align 1, !dbg !96
  br label %cstrncat_bb14, !dbg !96

cstrncat_bb14:                                    ; preds = %cstrncat_bb13, %cstrncat_bb12
  ret i32 %s1, !dbg !97
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb15:
  %"40" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !98), !dbg !99
  %"41" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !100), !dbg !101
  %"42" = call i32 @__VERIFIER_nondet_int(), !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !105), !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !110), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !112), !dbg !113
  br label %main_bb16, !dbg !114

main_bb16:                                        ; preds = %main_bb17, %main_bb15
  %s.0.i = phi i32 [ %"40", %main_bb15 ], [ %"48", %main_bb17 ], !dbg !106
  %"43" = sext i32 %s.0.i to i64, !dbg !115
  %"44" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"43", !dbg !115
  %"45" = load i8* %"44", align 1, !dbg !115
  %"46" = sext i8 %"45" to i32, !dbg !115
  %"47" = icmp ne i32 %"46", 0, !dbg !115
  br i1 %"47", label %main_bb17, label %main_bb18, !dbg !115

main_bb17:                                        ; preds = %main_bb16
  %"48" = add nsw i32 %s.0.i, 1, !dbg !116
  br label %main_bb16, !dbg !116

main_bb18:                                        ; preds = %main_bb21, %main_bb16
  %s.1.i = phi i32 [ %"60", %main_bb21 ], [ %s.0.i, %main_bb16 ], !dbg !106
  %.01.i = phi i32 [ %"59", %main_bb21 ], [ %"42", %main_bb16 ], !dbg !106
  %.0.i = phi i32 [ %.1.i, %main_bb21 ], [ %"41", %main_bb16 ], !dbg !106
  %"49" = icmp ne i32 %.01.i, 0, !dbg !117
  br i1 %"49", label %main_bb19, label %main_bb20, !dbg !117

main_bb19:                                        ; preds = %main_bb18
  %"50" = add nsw i32 %.0.i, 1, !dbg !118
  %"51" = sext i32 %.0.i to i64, !dbg !118
  %"52" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"51", !dbg !118
  %"53" = load i8* %"52", align 1, !dbg !118
  %"54" = sext i32 %s.1.i to i64, !dbg !118
  %"55" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"54", !dbg !118
  store i8 %"53", i8* %"55", align 1, !dbg !118
  %"56" = sext i8 %"53" to i32, !dbg !118
  %"57" = icmp ne i32 %"56", 0, !dbg !118
  br label %main_bb20, !dbg !106

main_bb20:                                        ; preds = %main_bb19, %main_bb18
  %.1.i = phi i32 [ %"50", %main_bb19 ], [ %.0.i, %main_bb18 ], !dbg !106
  %"58" = phi i1 [ false, %main_bb18 ], [ %"57", %main_bb19 ], !dbg !106
  br i1 %"58", label %main_bb21, label %main_bb22, !dbg !119

main_bb21:                                        ; preds = %main_bb20
  %"59" = add nsw i32 %.01.i, -1, !dbg !120
  %"60" = add nsw i32 %s.1.i, 1, !dbg !121
  br label %main_bb18, !dbg !122

main_bb22:                                        ; preds = %main_bb20
  %"61" = sext i32 %s.1.i to i64, !dbg !123
  %"62" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"61", !dbg !123
  %"63" = load i8* %"62", align 1, !dbg !123
  %"64" = sext i8 %"63" to i32, !dbg !123
  %"65" = icmp ne i32 %"64", 0, !dbg !123
  br i1 %"65", label %main_bb23, label %main_cstrncat.exit, !dbg !123

main_bb23:                                        ; preds = %main_bb22
  %"66" = sext i32 %s.1.i to i64, !dbg !124
  %"67" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"66", !dbg !124
  store i8 0, i8* %"67", align 1, !dbg !124
  br label %main_cstrncat.exit, !dbg !124

main_cstrncat.exit:                               ; preds = %main_bb22, %main_bb23
  ret i32 0, !dbg !125
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory4", metadata !"allocate_memory4", metadata !"", i32 42, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory4, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 42] [def] [allocate_memory4]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncat", metadata !"cstrncat", metadata !"", i32 48, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncat, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 48] [def] [scope 49] [cstrncat]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 68, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 68} ; [ DW_TAG_subprogram ] [line 68] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !30, metadata !31, metadata !32, metadata !33}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 5] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 14] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 23] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 32, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 32] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory4_freeIndex", metadata !"memory4_freeIndex", metadata !"", metadata !5, i32 41, metadata !8, i32 0, i32 1, i32* @"'memory4_freeIndex", null} ; [ DW_TAG_variable ] [memory4_freeIndex] [line 41] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 4, metadata !26, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 4] [def]
!26 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !27, metadata !28, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!27 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!30 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 13, metadata !26, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 13] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 22, metadata !26, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 22] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 31, metadata !26, i32 0, i32 1, [100000 x i8]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 31] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"memory4", metadata !"memory4", metadata !"", metadata !5, i32 40, metadata !26, i32 0, i32 1, [100000 x i8]* @memory4, null} ; [ DW_TAG_variable ] [memory4] [line 40] [def]
!34 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!35 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!36 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!37 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 6]
!38 = metadata !{i32 6, i32 26, metadata !4, null}
!39 = metadata !{i32 7, i32 4, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!41 = metadata !{i32 7, i32 8, metadata !4, null}
!42 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!43 = metadata !{i32 9, i32 4, metadata !4, null}
!44 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!45 = metadata !{i32 15, i32 26, metadata !9, null}
!46 = metadata !{i32 16, i32 4, metadata !9, null}
!47 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!48 = metadata !{i32 16, i32 8, metadata !9, null}
!49 = metadata !{i32 17, i32 4, metadata !9, null}
!50 = metadata !{i32 18, i32 4, metadata !9, null}
!51 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!52 = metadata !{i32 24, i32 26, metadata !10, null}
!53 = metadata !{i32 25, i32 4, metadata !10, null}
!54 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!55 = metadata !{i32 25, i32 8, metadata !10, null}
!56 = metadata !{i32 26, i32 4, metadata !10, null}
!57 = metadata !{i32 27, i32 4, metadata !10, null}
!58 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 33]
!59 = metadata !{i32 33, i32 26, metadata !11, null}
!60 = metadata !{i32 34, i32 4, metadata !11, null}
!61 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 34]
!62 = metadata !{i32 34, i32 8, metadata !11, null}
!63 = metadata !{i32 35, i32 4, metadata !11, null}
!64 = metadata !{i32 36, i32 4, metadata !11, null}
!65 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777258, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 42]
!66 = metadata !{i32 42, i32 26, metadata !12, null}
!67 = metadata !{i32 43, i32 4, metadata !12, null}
!68 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 43]
!69 = metadata !{i32 43, i32 8, metadata !12, null}
!70 = metadata !{i32 44, i32 4, metadata !12, null}
!71 = metadata !{i32 45, i32 4, metadata !12, null}
!72 = metadata !{i32 786689, metadata !13, metadata !"s1", metadata !5, i32 16777264, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 48]
!73 = metadata !{i32 48, i32 19, metadata !13, null}
!74 = metadata !{i32 786689, metadata !13, metadata !"s2", metadata !5, i32 33554480, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 48]
!75 = metadata !{i32 48, i32 27, metadata !13, null}
!76 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !5, i32 50331696, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 48]
!77 = metadata !{i32 48, i32 35, metadata !13, null}
!78 = metadata !{i32 786688, metadata !13, metadata !"s", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 50]
!79 = metadata !{i32 50, i32 10, metadata !13, null}
!80 = metadata !{i32 52, i32 6, metadata !13, null}
!81 = metadata !{i32 52, i32 6, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !13, i32 52, i32 6, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 53, i32 10, metadata !13, null}
!84 = metadata !{i32 59, i32 6, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !13, i32 59, i32 6, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 59, i32 6, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !13, i32 59, i32 6, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 59, i32 6, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !13, i32 59, i32 6, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 60, i32 10, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !13, i32 59, i32 61, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 61, i32 10, metadata !91, null}
!93 = metadata !{i32 62, i32 6, metadata !91, null}
!94 = metadata !{i32 63, i32 10, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !13, i32 63, i32 10, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 64, i32 10, metadata !95, null}
!97 = metadata !{i32 65, i32 6, metadata !13, null}
!98 = metadata !{i32 786688, metadata !16, metadata !"s1", metadata !5, i32 69, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 69]
!99 = metadata !{i32 69, i32 7, metadata !16, null}
!100 = metadata !{i32 786688, metadata !16, metadata !"s2", metadata !5, i32 70, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 70]
!101 = metadata !{i32 70, i32 7, metadata !16, null}
!102 = metadata !{i32 71, i32 11, metadata !16, null}
!103 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !5, i32 71, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 71]
!104 = metadata !{i32 71, i32 7, metadata !16, null}
!105 = metadata !{i32 786689, metadata !13, metadata !"s1", metadata !5, i32 16777264, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [s1] [line 48]
!106 = metadata !{i32 72, i32 3, metadata !16, null}
!107 = metadata !{i32 48, i32 19, metadata !13, metadata !106}
!108 = metadata !{i32 786689, metadata !13, metadata !"s2", metadata !5, i32 33554480, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [s2] [line 48]
!109 = metadata !{i32 48, i32 27, metadata !13, metadata !106}
!110 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !5, i32 50331696, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [n] [line 48]
!111 = metadata !{i32 48, i32 35, metadata !13, metadata !106}
!112 = metadata !{i32 786688, metadata !13, metadata !"s", metadata !5, i32 50, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [s] [line 50]
!113 = metadata !{i32 50, i32 10, metadata !13, metadata !106}
!114 = metadata !{i32 52, i32 6, metadata !13, metadata !106}
!115 = metadata !{i32 52, i32 6, metadata !82, metadata !106}
!116 = metadata !{i32 53, i32 10, metadata !13, metadata !106}
!117 = metadata !{i32 59, i32 6, metadata !85, metadata !106}
!118 = metadata !{i32 59, i32 6, metadata !87, metadata !106}
!119 = metadata !{i32 59, i32 6, metadata !89, metadata !106}
!120 = metadata !{i32 60, i32 10, metadata !91, metadata !106}
!121 = metadata !{i32 61, i32 10, metadata !91, metadata !106}
!122 = metadata !{i32 62, i32 6, metadata !91, metadata !106}
!123 = metadata !{i32 63, i32 10, metadata !95, metadata !106}
!124 = metadata !{i32 64, i32 10, metadata !95, metadata !106}
!125 = metadata !{i32 73, i32 3, metadata !16, null}

