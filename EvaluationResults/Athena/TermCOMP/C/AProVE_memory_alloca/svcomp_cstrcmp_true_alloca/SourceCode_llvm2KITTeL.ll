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
define i32 @cstrcmp(i32 %s1, i32 %s2) #0 {
cstrcmp_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !44), !dbg !45
  br label %cstrcmp_bb3, !dbg !46

cstrcmp_bb3:                                      ; preds = %cstrcmp_bb5, %cstrcmp_bb2
  %.01 = phi i32 [ %s2, %cstrcmp_bb2 ], [ %"21", %cstrcmp_bb5 ]
  %.0 = phi i32 [ %s1, %cstrcmp_bb2 ], [ %"20", %cstrcmp_bb5 ]
  %"6" = sext i32 %.0 to i64, !dbg !47
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !47
  %"8" = load i8* %"7", align 1, !dbg !47
  %"9" = sext i8 %"8" to i32, !dbg !47
  %"10" = icmp ne i32 %"9", 0, !dbg !47
  br i1 %"10", label %cstrcmp_bb4, label %cstrcmp_.critedge, !dbg !47

cstrcmp_bb4:                                      ; preds = %cstrcmp_bb3
  %"11" = sext i32 %.0 to i64, !dbg !49
  %"12" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"11", !dbg !49
  %"13" = load i8* %"12", align 1, !dbg !49
  %"14" = sext i8 %"13" to i32, !dbg !49
  %"15" = sext i32 %.01 to i64, !dbg !49
  %"16" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"15", !dbg !49
  %"17" = load i8* %"16", align 1, !dbg !49
  %"18" = sext i8 %"17" to i32, !dbg !49
  %"19" = icmp eq i32 %"14", %"18", !dbg !49
  br i1 %"19", label %cstrcmp_bb5, label %cstrcmp_.critedge, !dbg !51

cstrcmp_bb5:                                      ; preds = %cstrcmp_bb4
  %"20" = add nsw i32 %.0, 1, !dbg !53
  %"21" = add nsw i32 %.01, 1, !dbg !55
  br label %cstrcmp_bb3, !dbg !56

cstrcmp_.critedge:                                ; preds = %cstrcmp_bb3, %cstrcmp_bb4
  %"22" = sext i32 %.0 to i64, !dbg !57
  %"23" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"22", !dbg !57
  %"24" = load i8* %"23", align 1, !dbg !57
  call void @llvm.dbg.value(metadata !{i8 %"24"}, i64 0, metadata !58), !dbg !60
  %"25" = sext i32 %.01 to i64, !dbg !61
  %"26" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"25", !dbg !61
  %"27" = load i8* %"26", align 1, !dbg !61
  call void @llvm.dbg.value(metadata !{i8 %"27"}, i64 0, metadata !62), !dbg !63
  %"28" = zext i8 %"24" to i32, !dbg !64
  %"29" = zext i8 %"27" to i32, !dbg !64
  %"30" = icmp slt i32 %"28", %"29", !dbg !64
  br i1 %"30", label %cstrcmp_bb7, label %cstrcmp_bb6, !dbg !64

cstrcmp_bb6:                                      ; preds = %cstrcmp_.critedge
  %"31" = zext i8 %"24" to i32, !dbg !65
  %"32" = zext i8 %"27" to i32, !dbg !65
  %"33" = icmp sgt i32 %"31", %"32", !dbg !65
  %"34" = zext i1 %"33" to i32, !dbg !65
  br label %cstrcmp_bb7, !dbg !65

cstrcmp_bb7:                                      ; preds = %cstrcmp_.critedge, %cstrcmp_bb6
  %"35" = phi i32 [ %"34", %cstrcmp_bb6 ], [ -1, %cstrcmp_.critedge ], !dbg !64
  ret i32 %"35", !dbg !67
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"36" = call i32 @__VERIFIER_nondet_int(), !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !71), !dbg !72
  %"37" = call i32 @__VERIFIER_nondet_int(), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !74), !dbg !75
  %"38" = icmp slt i32 %"36", 1, !dbg !76
  call void @llvm.dbg.value(metadata !78, i64 0, metadata !71), !dbg !72
  %. = select i1 %"38", i32 1, i32 %"36", !dbg !76
  %"39" = icmp slt i32 %"37", 1, !dbg !79
  call void @llvm.dbg.value(metadata !78, i64 0, metadata !74), !dbg !75
  %length2.0 = select i1 %"39", i32 1, i32 %"37", !dbg !79
  %"40" = mul nsw i32 %., 1, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !82), !dbg !83
  %"41" = load i32* @"'memory1_freeIndex", align 4, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !85), !dbg !86
  %"42" = load i32* @"'memory1_freeIndex", align 4, !dbg !87
  %"43" = add nsw i32 %"42", %"40", !dbg !87
  store i32 %"43", i32* @"'memory1_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !88), !dbg !89
  %"44" = mul nsw i32 %length2.0, 1, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !91), !dbg !92
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !94), !dbg !95
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !96
  %"47" = add nsw i32 %"46", %"44", !dbg !96
  store i32 %"47", i32* @"'memory0_freeIndex", align 4, !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !97), !dbg !98
  %"48" = sub nsw i32 %., 1, !dbg !99
  %"49" = add nsw i32 %"41", %"48", !dbg !99
  %"50" = sext i32 %"49" to i64, !dbg !99
  %"51" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"50", !dbg !99
  store i8 0, i8* %"51", align 1, !dbg !99
  %"52" = sub nsw i32 %length2.0, 1, !dbg !100
  %"53" = add nsw i32 %"45", %"52", !dbg !100
  %"54" = sext i32 %"53" to i64, !dbg !100
  %"55" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"54", !dbg !100
  store i8 0, i8* %"55", align 1, !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !101), !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !104), !dbg !105
  br label %main_bb9, !dbg !106

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %.01.i = phi i32 [ %"45", %main_bb8 ], [ %"71", %main_bb11 ], !dbg !102
  %.0.i = phi i32 [ %"41", %main_bb8 ], [ %"70", %main_bb11 ], !dbg !102
  %"56" = sext i32 %.0.i to i64, !dbg !107
  %"57" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"56", !dbg !107
  %"58" = load i8* %"57", align 1, !dbg !107
  %"59" = sext i8 %"58" to i32, !dbg !107
  %"60" = icmp ne i32 %"59", 0, !dbg !107
  br i1 %"60", label %main_bb10, label %main_.critedge.i, !dbg !107

main_bb10:                                        ; preds = %main_bb9
  %"61" = sext i32 %.0.i to i64, !dbg !108
  %"62" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"61", !dbg !108
  %"63" = load i8* %"62", align 1, !dbg !108
  %"64" = sext i8 %"63" to i32, !dbg !108
  %"65" = sext i32 %.01.i to i64, !dbg !108
  %"66" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"65", !dbg !108
  %"67" = load i8* %"66", align 1, !dbg !108
  %"68" = sext i8 %"67" to i32, !dbg !108
  %"69" = icmp eq i32 %"64", %"68", !dbg !108
  br i1 %"69", label %main_bb11, label %main_.critedge.i, !dbg !109

main_bb11:                                        ; preds = %main_bb10
  %"70" = add nsw i32 %.0.i, 1, !dbg !110
  %"71" = add nsw i32 %.01.i, 1, !dbg !111
  br label %main_bb9, !dbg !112

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"72" = sext i32 %.0.i to i64, !dbg !113
  %"73" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"72", !dbg !113
  %"74" = load i8* %"73", align 1, !dbg !113
  call void @llvm.dbg.value(metadata !{i8 %"74"}, i64 0, metadata !114), !dbg !115
  %"75" = sext i32 %.01.i to i64, !dbg !116
  %"76" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"75", !dbg !116
  %"77" = load i8* %"76", align 1, !dbg !116
  call void @llvm.dbg.value(metadata !{i8 %"77"}, i64 0, metadata !117), !dbg !118
  %"78" = zext i8 %"74" to i32, !dbg !119
  %"79" = zext i8 %"77" to i32, !dbg !119
  %"80" = icmp slt i32 %"78", %"79", !dbg !119
  br i1 %"80", label %main_cstrcmp.exit, label %main_bb12, !dbg !119

main_bb12:                                        ; preds = %main_.critedge.i
  %"81" = zext i8 %"74" to i32, !dbg !120
  %"82" = zext i8 %"77" to i32, !dbg !120
  %"83" = icmp sgt i32 %"81", %"82", !dbg !120
  %"84" = zext i1 %"83" to i32, !dbg !120
  br label %main_cstrcmp.exit, !dbg !120

main_cstrcmp.exit:                                ; preds = %main_.critedge.i, %main_bb12
  %"85" = phi i32 [ %"84", %main_bb12 ], [ -1, %main_.critedge.i ], !dbg !119
  ret i32 %"85", !dbg !102
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcmp", metadata !"cstrcmp", metadata !"", i32 27, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcmp, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [cstrcmp]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 44, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 20, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 20] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 19, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 19] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!29 = metadata !{i32 12, i32 26, metadata !4, null}
!30 = metadata !{i32 13, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!32 = metadata !{i32 13, i32 8, metadata !4, null}
!33 = metadata !{i32 14, i32 4, metadata !4, null}
!34 = metadata !{i32 15, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 21]
!36 = metadata !{i32 21, i32 26, metadata !9, null}
!37 = metadata !{i32 22, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!39 = metadata !{i32 22, i32 8, metadata !9, null}
!40 = metadata !{i32 23, i32 4, metadata !9, null}
!41 = metadata !{i32 24, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777243, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 27]
!43 = metadata !{i32 27, i32 19, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!45 = metadata !{i32 27, i32 27, metadata !10, null}
!46 = metadata !{i32 33, i32 6, metadata !10, null}
!47 = metadata !{i32 33, i32 6, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 33, i32 6, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 6, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 33, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 6, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 34, i32 10, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !10, i32 33, i32 64, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 35, i32 10, metadata !54, null}
!56 = metadata !{i32 36, i32 6, metadata !54, null}
!57 = metadata !{i32 39, i32 6, metadata !10, null}
!58 = metadata !{i32 786688, metadata !10, metadata !"uc1", metadata !5, i32 29, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc1] [line 29]
!59 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!60 = metadata !{i32 29, i32 20, metadata !10, null}
!61 = metadata !{i32 40, i32 6, metadata !10, null}
!62 = metadata !{i32 786688, metadata !10, metadata !"uc2", metadata !5, i32 29, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc2] [line 29]
!63 = metadata !{i32 29, i32 25, metadata !10, null}
!64 = metadata !{i32 41, i32 6, metadata !10, null}
!65 = metadata !{i32 41, i32 6, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !10, i32 41, i32 6, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 41, i32 6, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !69, i32 41, i32 6, i32 4, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 786443, metadata !1, metadata !10, i32 41, i32 6, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 45, i32 19, metadata !13, null}
!71 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 45]
!72 = metadata !{i32 45, i32 9, metadata !13, null}
!73 = metadata !{i32 46, i32 19, metadata !13, null}
!74 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 46]
!75 = metadata !{i32 46, i32 9, metadata !13, null}
!76 = metadata !{i32 47, i32 9, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !13, i32 47, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 1}
!79 = metadata !{i32 50, i32 9, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !13, i32 50, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 53, i32 25, metadata !13, null}
!82 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, metadata !81} ; [ DW_TAG_arg_variable ] [size] [line 21]
!83 = metadata !{i32 21, i32 26, metadata !9, metadata !81}
!84 = metadata !{i32 22, i32 4, metadata !9, metadata !81}
!85 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, metadata !81} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!86 = metadata !{i32 22, i32 8, metadata !9, metadata !81}
!87 = metadata !{i32 23, i32 4, metadata !9, metadata !81}
!88 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 53]
!89 = metadata !{i32 53, i32 9, metadata !13, null}
!90 = metadata !{i32 54, i32 25, metadata !13, null}
!91 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !90} ; [ DW_TAG_arg_variable ] [size] [line 12]
!92 = metadata !{i32 12, i32 26, metadata !4, metadata !90}
!93 = metadata !{i32 13, i32 4, metadata !4, metadata !90}
!94 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !90} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!95 = metadata !{i32 13, i32 8, metadata !4, metadata !90}
!96 = metadata !{i32 14, i32 4, metadata !4, metadata !90}
!97 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 54, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 54]
!98 = metadata !{i32 54, i32 9, metadata !13, null}
!99 = metadata !{i32 55, i32 5, metadata !13, null}
!100 = metadata !{i32 56, i32 5, metadata !13, null}
!101 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777243, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [s1] [line 27]
!102 = metadata !{i32 57, i32 12, metadata !13, null}
!103 = metadata !{i32 27, i32 19, metadata !10, metadata !102}
!104 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!105 = metadata !{i32 27, i32 27, metadata !10, metadata !102}
!106 = metadata !{i32 33, i32 6, metadata !10, metadata !102}
!107 = metadata !{i32 33, i32 6, metadata !48, metadata !102}
!108 = metadata !{i32 33, i32 6, metadata !50, metadata !102}
!109 = metadata !{i32 33, i32 6, metadata !52, metadata !102}
!110 = metadata !{i32 34, i32 10, metadata !54, metadata !102}
!111 = metadata !{i32 35, i32 10, metadata !54, metadata !102}
!112 = metadata !{i32 36, i32 6, metadata !54, metadata !102}
!113 = metadata !{i32 39, i32 6, metadata !10, metadata !102}
!114 = metadata !{i32 786688, metadata !10, metadata !"uc1", metadata !5, i32 29, metadata !59, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [uc1] [line 29]
!115 = metadata !{i32 29, i32 20, metadata !10, metadata !102}
!116 = metadata !{i32 40, i32 6, metadata !10, metadata !102}
!117 = metadata !{i32 786688, metadata !10, metadata !"uc2", metadata !5, i32 29, metadata !59, i32 0, metadata !102} ; [ DW_TAG_auto_variable ] [uc2] [line 29]
!118 = metadata !{i32 29, i32 25, metadata !10, metadata !102}
!119 = metadata !{i32 41, i32 6, metadata !10, metadata !102}
!120 = metadata !{i32 41, i32 6, metadata !66, metadata !102}

