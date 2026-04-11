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
define i32 @substring(i32 %s, i32 %t) #0 {
substring_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %ps.0}, i64 0, metadata !48), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %t}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !48), !dbg !50
  br label %substring_bb3, !dbg !53

substring_bb3:                                    ; preds = %substring_bb7, %substring_bb2
  %ps.0 = phi i32 [ %s, %substring_bb2 ], [ %"32", %substring_bb7 ]
  %"6" = sext i32 %ps.0 to i64, !dbg !54
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !54
  %"8" = load i8* %"7", align 1, !dbg !54
  %"9" = sext i8 %"8" to i32, !dbg !54
  %"10" = icmp ne i32 %"9", 0, !dbg !54
  br i1 %"10", label %substring_bb4, label %substring_bb8, !dbg !54

substring_bb4:                                    ; preds = %substring_bb3, %substring_bb6
  %ps2.0 = phi i32 [ %"26", %substring_bb6 ], [ %ps.0, %substring_bb3 ]
  %pt.0 = phi i32 [ %"25", %substring_bb6 ], [ %t, %substring_bb3 ]
  %"11" = sext i32 %pt.0 to i64, !dbg !56
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !56
  %"13" = load i8* %"12", align 1, !dbg !56
  %"14" = sext i8 %"13" to i32, !dbg !56
  %"15" = icmp ne i32 %"14", 0, !dbg !56
  br i1 %"15", label %substring_bb5, label %substring_.critedge, !dbg !56

substring_bb5:                                    ; preds = %substring_bb4
  %"16" = sext i32 %pt.0 to i64, !dbg !58
  %"17" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"16", !dbg !58
  %"18" = load i8* %"17", align 1, !dbg !58
  %"19" = sext i8 %"18" to i32, !dbg !58
  %"20" = sext i32 %ps2.0 to i64, !dbg !58
  %"21" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"20", !dbg !58
  %"22" = load i8* %"21", align 1, !dbg !58
  %"23" = sext i8 %"22" to i32, !dbg !58
  %"24" = icmp eq i32 %"19", %"23", !dbg !58
  br i1 %"24", label %substring_bb6, label %substring_.critedge, !dbg !60

substring_bb6:                                    ; preds = %substring_bb5
  %"25" = add nsw i32 %pt.0, 1, !dbg !62
  %"26" = add nsw i32 %ps2.0, 1, !dbg !64
  br label %substring_bb4, !dbg !65

substring_.critedge:                              ; preds = %substring_bb4, %substring_bb5
  %"27" = sext i32 %pt.0 to i64, !dbg !66
  %"28" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"27", !dbg !66
  %"29" = load i8* %"28", align 1, !dbg !66
  %"30" = sext i8 %"29" to i32, !dbg !66
  %"31" = icmp eq i32 %"30", 0, !dbg !66
  br i1 %"31", label %substring_bb8, label %substring_bb7, !dbg !66

substring_bb7:                                    ; preds = %substring_.critedge
  %"32" = add nsw i32 %ps.0, 1, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !46), !dbg !47
  br label %substring_bb3, !dbg !69

substring_bb8:                                    ; preds = %substring_bb3, %substring_.critedge
  %.0 = phi i32 [ 1, %substring_.critedge ], [ 0, %substring_bb3 ]
  ret i32 %.0, !dbg !70
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"33" = call i32 @__VERIFIER_nondet_int(), !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !72), !dbg !73
  %"34" = call i32 @__VERIFIER_nondet_int(), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !75), !dbg !76
  %"35" = icmp slt i32 %"33", 1, !dbg !77
  call void @llvm.dbg.value(metadata !79, i64 0, metadata !72), !dbg !73
  %. = select i1 %"35", i32 1, i32 %"33", !dbg !77
  %"36" = icmp slt i32 %"34", 1, !dbg !80
  call void @llvm.dbg.value(metadata !79, i64 0, metadata !75), !dbg !76
  %length2.0 = select i1 %"36", i32 1, i32 %"34", !dbg !80
  %"37" = mul nsw i32 %., 1, !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !83), !dbg !84
  %"38" = load i32* @"'memory1_freeIndex", align 4, !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !86), !dbg !87
  %"39" = load i32* @"'memory1_freeIndex", align 4, !dbg !88
  %"40" = add nsw i32 %"39", %"37", !dbg !88
  store i32 %"40", i32* @"'memory1_freeIndex", align 4, !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !89), !dbg !90
  %"41" = mul nsw i32 %length2.0, 1, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !92), !dbg !93
  %"42" = load i32* @"'memory0_freeIndex", align 4, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !95), !dbg !96
  %"43" = load i32* @"'memory0_freeIndex", align 4, !dbg !97
  %"44" = add nsw i32 %"43", %"41", !dbg !97
  store i32 %"44", i32* @"'memory0_freeIndex", align 4, !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !98), !dbg !99
  %"45" = sub nsw i32 %., 1, !dbg !100
  %"46" = add nsw i32 %"38", %"45", !dbg !100
  %"47" = sext i32 %"46" to i64, !dbg !100
  %"48" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"47", !dbg !100
  store i8 0, i8* %"48", align 1, !dbg !100
  %"49" = sub nsw i32 %length2.0, 1, !dbg !101
  %"50" = add nsw i32 %"42", %"49", !dbg !101
  %"51" = sext i32 %"50" to i64, !dbg !101
  %"52" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"51", !dbg !101
  store i8 0, i8* %"52", align 1, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !102), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !105), !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !107), !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !109), !dbg !110
  br label %main_bb10, !dbg !111

main_bb10:                                        ; preds = %main_bb14, %main_bb9
  %ps.0.i = phi i32 [ %"38", %main_bb9 ], [ %"79", %main_bb14 ], !dbg !103
  %"53" = sext i32 %ps.0.i to i64, !dbg !112
  %"54" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"53", !dbg !112
  %"55" = load i8* %"54", align 1, !dbg !112
  %"56" = sext i8 %"55" to i32, !dbg !112
  %"57" = icmp ne i32 %"56", 0, !dbg !112
  br i1 %"57", label %main_bb11, label %main_substring.exit, !dbg !112

main_bb11:                                        ; preds = %main_bb13, %main_bb10
  %ps2.0.i = phi i32 [ %"73", %main_bb13 ], [ %ps.0.i, %main_bb10 ], !dbg !103
  %pt.0.i = phi i32 [ %"72", %main_bb13 ], [ %"42", %main_bb10 ], !dbg !103
  %"58" = sext i32 %pt.0.i to i64, !dbg !113
  %"59" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"58", !dbg !113
  %"60" = load i8* %"59", align 1, !dbg !113
  %"61" = sext i8 %"60" to i32, !dbg !113
  %"62" = icmp ne i32 %"61", 0, !dbg !113
  br i1 %"62", label %main_bb12, label %main_.critedge.i, !dbg !113

main_bb12:                                        ; preds = %main_bb11
  %"63" = sext i32 %pt.0.i to i64, !dbg !114
  %"64" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"63", !dbg !114
  %"65" = load i8* %"64", align 1, !dbg !114
  %"66" = sext i8 %"65" to i32, !dbg !114
  %"67" = sext i32 %ps2.0.i to i64, !dbg !114
  %"68" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"67", !dbg !114
  %"69" = load i8* %"68", align 1, !dbg !114
  %"70" = sext i8 %"69" to i32, !dbg !114
  %"71" = icmp eq i32 %"66", %"70", !dbg !114
  br i1 %"71", label %main_bb13, label %main_.critedge.i, !dbg !115

main_bb13:                                        ; preds = %main_bb12
  %"72" = add nsw i32 %pt.0.i, 1, !dbg !116
  %"73" = add nsw i32 %ps2.0.i, 1, !dbg !117
  br label %main_bb11, !dbg !118

main_.critedge.i:                                 ; preds = %main_bb12, %main_bb11
  %"74" = sext i32 %pt.0.i to i64, !dbg !119
  %"75" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"74", !dbg !119
  %"76" = load i8* %"75", align 1, !dbg !119
  %"77" = sext i8 %"76" to i32, !dbg !119
  %"78" = icmp eq i32 %"77", 0, !dbg !119
  br i1 %"78", label %main_substring.exit, label %main_bb14, !dbg !119

main_bb14:                                        ; preds = %main_.critedge.i
  %"79" = add nsw i32 %ps.0.i, 1, !dbg !120
  call void @llvm.dbg.value(metadata !{i32 %"79"}, i64 0, metadata !107), !dbg !108
  br label %main_bb10, !dbg !121

main_substring.exit:                              ; preds = %main_bb10, %main_.critedge.i
  %.0.i = phi i32 [ 1, %main_.critedge.i ], [ 0, %main_bb10 ], !dbg !103
  ret i32 %.0.i, !dbg !103
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"substring", metadata !"substring", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @substring, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [substring]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 39, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 39] [def] [main]
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
!42 = metadata !{i32 786689, metadata !10, metadata !"s", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 23]
!43 = metadata !{i32 23, i32 21, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"t", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [t] [line 23]
!45 = metadata !{i32 23, i32 28, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"ps", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps] [line 25]
!47 = metadata !{i32 25, i32 10, metadata !10, null}
!48 = metadata !{i32 786688, metadata !49, metadata !"ps2", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ps2] [line 27]
!49 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 27, i32 12, metadata !49, null}
!51 = metadata !{i32 786688, metadata !49, metadata !"pt", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pt] [line 28]
!52 = metadata !{i32 28, i32 12, metadata !49, null}
!53 = metadata !{i32 26, i32 6, metadata !10, null}
!54 = metadata !{i32 26, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 29, i32 8, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !49, i32 29, i32 8, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 29, i32 8, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !49, i32 29, i32 8, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 29, i32 8, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !49, i32 29, i32 8, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 30, i32 10, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !49, i32 29, i32 67, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 31, i32 10, metadata !63, null}
!65 = metadata !{i32 32, i32 8, metadata !63, null}
!66 = metadata !{i32 33, i32 12, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !49, i32 33, i32 12, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 34, i32 8, metadata !49, null}
!69 = metadata !{i32 35, i32 6, metadata !49, null}
!70 = metadata !{i32 37, i32 2, metadata !10, null}
!71 = metadata !{i32 40, i32 19, metadata !13, null}
!72 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 40]
!73 = metadata !{i32 40, i32 9, metadata !13, null}
!74 = metadata !{i32 41, i32 19, metadata !13, null}
!75 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 41]
!76 = metadata !{i32 41, i32 9, metadata !13, null}
!77 = metadata !{i32 42, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !13, i32 42, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 1}
!80 = metadata !{i32 45, i32 9, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !13, i32 45, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 48, i32 25, metadata !13, null}
!83 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !82} ; [ DW_TAG_arg_variable ] [size] [line 17]
!84 = metadata !{i32 17, i32 26, metadata !9, metadata !82}
!85 = metadata !{i32 18, i32 4, metadata !9, metadata !82}
!86 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !82} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!87 = metadata !{i32 18, i32 8, metadata !9, metadata !82}
!88 = metadata !{i32 19, i32 4, metadata !9, metadata !82}
!89 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 48]
!90 = metadata !{i32 48, i32 9, metadata !13, null}
!91 = metadata !{i32 49, i32 25, metadata !13, null}
!92 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !91} ; [ DW_TAG_arg_variable ] [size] [line 8]
!93 = metadata !{i32 8, i32 26, metadata !4, metadata !91} ; [ DW_TAG_imported_declaration ]
!94 = metadata !{i32 9, i32 4, metadata !4, metadata !91}
!95 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !91} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!96 = metadata !{i32 9, i32 8, metadata !4, metadata !91}
!97 = metadata !{i32 10, i32 4, metadata !4, metadata !91}
!98 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 49]
!99 = metadata !{i32 49, i32 9, metadata !13, null}
!100 = metadata !{i32 50, i32 5, metadata !13, null}
!101 = metadata !{i32 51, i32 5, metadata !13, null}
!102 = metadata !{i32 786689, metadata !10, metadata !"s", metadata !5, i32 16777239, metadata !8, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [s] [line 23]
!103 = metadata !{i32 52, i32 10, metadata !13, null}
!104 = metadata !{i32 23, i32 21, metadata !10, metadata !103}
!105 = metadata !{i32 786689, metadata !10, metadata !"t", metadata !5, i32 33554455, metadata !8, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [t] [line 23]
!106 = metadata !{i32 23, i32 28, metadata !10, metadata !103}
!107 = metadata !{i32 786688, metadata !10, metadata !"ps", metadata !5, i32 25, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [ps] [line 25]
!108 = metadata !{i32 25, i32 10, metadata !10, metadata !103}
!109 = metadata !{i32 786688, metadata !49, metadata !"pt", metadata !5, i32 28, metadata !8, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [pt] [line 28]
!110 = metadata !{i32 28, i32 12, metadata !49, metadata !103}
!111 = metadata !{i32 26, i32 6, metadata !10, metadata !103}
!112 = metadata !{i32 26, i32 6, metadata !55, metadata !103}
!113 = metadata !{i32 29, i32 8, metadata !57, metadata !103}
!114 = metadata !{i32 29, i32 8, metadata !59, metadata !103}
!115 = metadata !{i32 29, i32 8, metadata !61, metadata !103}
!116 = metadata !{i32 30, i32 10, metadata !63, metadata !103}
!117 = metadata !{i32 31, i32 10, metadata !63, metadata !103}
!118 = metadata !{i32 32, i32 8, metadata !63, metadata !103}
!119 = metadata !{i32 33, i32 12, metadata !67, metadata !103}
!120 = metadata !{i32 34, i32 8, metadata !49, metadata !103}
!121 = metadata !{i32 35, i32 6, metadata !49, metadata !103}

