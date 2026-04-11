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
define i32 @cstrncmp(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncmp_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !46), !dbg !47
  %"6" = icmp eq i32 %n, 0, !dbg !48
  br i1 %"6", label %cstrncmp_bb9, label %cstrncmp_bb3, !dbg !48

cstrncmp_bb3:                                     ; preds = %cstrncmp_bb2, %cstrncmp_bb7
  %.03 = phi i32 [ %"7", %cstrncmp_bb7 ], [ %n, %cstrncmp_bb2 ]
  %.02 = phi i32 [ %"25", %cstrncmp_bb7 ], [ %s2, %cstrncmp_bb2 ]
  %.01 = phi i32 [ %"24", %cstrncmp_bb7 ], [ %s1, %cstrncmp_bb2 ]
  %"7" = add nsw i32 %.03, -1, !dbg !50
  %"8" = icmp sgt i32 %.03, 0, !dbg !50
  br i1 %"8", label %cstrncmp_bb4, label %cstrncmp_.critedge, !dbg !50

cstrncmp_bb4:                                     ; preds = %cstrncmp_bb3
  %"9" = sext i32 %.01 to i64, !dbg !52
  %"10" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"9", !dbg !52
  %"11" = load i8* %"10", align 1, !dbg !52
  %"12" = sext i8 %"11" to i32, !dbg !52
  %"13" = sext i32 %.02 to i64, !dbg !52
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !52
  %"15" = load i8* %"14", align 1, !dbg !52
  %"16" = sext i8 %"15" to i32, !dbg !52
  %"17" = icmp eq i32 %"12", %"16", !dbg !52
  br i1 %"17", label %cstrncmp_bb5, label %cstrncmp_.critedge, !dbg !54

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4
  %"18" = icmp eq i32 %"7", 0, !dbg !56
  br i1 %"18", label %cstrncmp_bb9, label %cstrncmp_bb6, !dbg !56

cstrncmp_bb6:                                     ; preds = %cstrncmp_bb5
  %"19" = sext i32 %.01 to i64, !dbg !59
  %"20" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"19", !dbg !59
  %"21" = load i8* %"20", align 1, !dbg !59
  %"22" = sext i8 %"21" to i32, !dbg !59
  %"23" = icmp eq i32 %"22", 0, !dbg !59
  br i1 %"23", label %cstrncmp_bb9, label %cstrncmp_bb7, !dbg !59

cstrncmp_bb7:                                     ; preds = %cstrncmp_bb6
  %"24" = add nsw i32 %.01, 1, !dbg !61
  %"25" = add nsw i32 %.02, 1, !dbg !62
  br label %cstrncmp_bb3, !dbg !63

cstrncmp_.critedge:                               ; preds = %cstrncmp_bb3, %cstrncmp_bb4
  %"26" = sext i32 %.01 to i64, !dbg !64
  %"27" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"26", !dbg !64
  %"28" = load i8* %"27", align 1, !dbg !64
  call void @llvm.dbg.value(metadata !{i8 %"28"}, i64 0, metadata !65), !dbg !67
  %"29" = sext i32 %.02 to i64, !dbg !68
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !68
  %"31" = load i8* %"30", align 1, !dbg !68
  call void @llvm.dbg.value(metadata !{i8 %"31"}, i64 0, metadata !69), !dbg !70
  %"32" = zext i8 %"28" to i32, !dbg !71
  %"33" = zext i8 %"31" to i32, !dbg !71
  %"34" = icmp slt i32 %"32", %"33", !dbg !71
  br i1 %"34", label %cstrncmp_bb9, label %cstrncmp_bb8, !dbg !71

cstrncmp_bb8:                                     ; preds = %cstrncmp_.critedge
  %"35" = zext i8 %"28" to i32, !dbg !72
  %"36" = zext i8 %"31" to i32, !dbg !72
  %"37" = icmp sgt i32 %"35", %"36", !dbg !72
  %"38" = zext i1 %"37" to i32, !dbg !72
  br label %cstrncmp_bb9, !dbg !72

cstrncmp_bb9:                                     ; preds = %cstrncmp_bb8, %cstrncmp_.critedge, %cstrncmp_bb5, %cstrncmp_bb6, %cstrncmp_bb2
  %.0 = phi i32 [ 0, %cstrncmp_bb2 ], [ 0, %cstrncmp_bb6 ], [ 0, %cstrncmp_bb5 ], [ %"38", %cstrncmp_bb8 ], [ -1, %cstrncmp_.critedge ]
  ret i32 %.0, !dbg !74
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"39" = call i32 @__VERIFIER_nondet_int(), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !76), !dbg !77
  %"40" = call i32 @__VERIFIER_nondet_int(), !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !79), !dbg !80
  %"41" = icmp slt i32 %"39", 1, !dbg !81
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !76), !dbg !77
  %. = select i1 %"41", i32 1, i32 %"39", !dbg !81
  %"42" = icmp slt i32 %"40", 1, !dbg !84
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !79), !dbg !80
  %length2.0 = select i1 %"42", i32 1, i32 %"40", !dbg !84
  %"43" = mul nsw i32 %., 1, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !87), !dbg !88
  %"44" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !90), !dbg !91
  %"45" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"46" = add nsw i32 %"45", %"43", !dbg !92
  store i32 %"46", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !93), !dbg !94
  %"47" = mul nsw i32 %length2.0, 1, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"47"}, i64 0, metadata !96), !dbg !97
  %"48" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !99), !dbg !100
  %"49" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"50" = add nsw i32 %"49", %"47", !dbg !101
  store i32 %"50", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !102), !dbg !103
  %"51" = sub nsw i32 %., 1, !dbg !104
  %"52" = add nsw i32 %"44", %"51", !dbg !104
  %"53" = sext i32 %"52" to i64, !dbg !104
  %"54" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"53", !dbg !104
  store i8 0, i8* %"54", align 1, !dbg !104
  %"55" = sub nsw i32 %length2.0, 1, !dbg !105
  %"56" = add nsw i32 %"48", %"55", !dbg !105
  %"57" = sext i32 %"56" to i64, !dbg !105
  %"58" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"57", !dbg !105
  store i8 0, i8* %"58", align 1, !dbg !105
  %"59" = call i32 @__VERIFIER_nondet_int(), !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !107), !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !110), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !112), !dbg !113
  %"60" = icmp eq i32 %"59", 0, !dbg !114
  br i1 %"60", label %main_cstrncmp.exit, label %main_bb11, !dbg !114

main_bb11:                                        ; preds = %main_bb15, %main_bb10
  %.03.i = phi i32 [ %"61", %main_bb15 ], [ %"59", %main_bb10 ], !dbg !108
  %.02.i = phi i32 [ %"79", %main_bb15 ], [ %"48", %main_bb10 ], !dbg !108
  %.01.i = phi i32 [ %"78", %main_bb15 ], [ %"44", %main_bb10 ], !dbg !108
  %"61" = add nsw i32 %.03.i, -1, !dbg !115
  %"62" = icmp sgt i32 %.03.i, 0, !dbg !115
  br i1 %"62", label %main_bb12, label %main_.critedge.i, !dbg !115

main_bb12:                                        ; preds = %main_bb11
  %"63" = sext i32 %.01.i to i64, !dbg !116
  %"64" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"63", !dbg !116
  %"65" = load i8* %"64", align 1, !dbg !116
  %"66" = sext i8 %"65" to i32, !dbg !116
  %"67" = sext i32 %.02.i to i64, !dbg !116
  %"68" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"67", !dbg !116
  %"69" = load i8* %"68", align 1, !dbg !116
  %"70" = sext i8 %"69" to i32, !dbg !116
  %"71" = icmp eq i32 %"66", %"70", !dbg !116
  br i1 %"71", label %main_bb13, label %main_.critedge.i, !dbg !117

main_bb13:                                        ; preds = %main_bb12
  %"72" = icmp eq i32 %"61", 0, !dbg !118
  br i1 %"72", label %main_cstrncmp.exit, label %main_bb14, !dbg !118

main_bb14:                                        ; preds = %main_bb13
  %"73" = sext i32 %.01.i to i64, !dbg !119
  %"74" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"73", !dbg !119
  %"75" = load i8* %"74", align 1, !dbg !119
  %"76" = sext i8 %"75" to i32, !dbg !119
  %"77" = icmp eq i32 %"76", 0, !dbg !119
  br i1 %"77", label %main_cstrncmp.exit, label %main_bb15, !dbg !119

main_bb15:                                        ; preds = %main_bb14
  %"78" = add nsw i32 %.01.i, 1, !dbg !120
  %"79" = add nsw i32 %.02.i, 1, !dbg !121
  br label %main_bb11, !dbg !122

main_.critedge.i:                                 ; preds = %main_bb12, %main_bb11
  %"80" = sext i32 %.01.i to i64, !dbg !123
  %"81" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"80", !dbg !123
  %"82" = load i8* %"81", align 1, !dbg !123
  call void @llvm.dbg.value(metadata !{i8 %"82"}, i64 0, metadata !124), !dbg !125
  %"83" = sext i32 %.02.i to i64, !dbg !126
  %"84" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"83", !dbg !126
  %"85" = load i8* %"84", align 1, !dbg !126
  call void @llvm.dbg.value(metadata !{i8 %"85"}, i64 0, metadata !127), !dbg !128
  %"86" = zext i8 %"82" to i32, !dbg !129
  %"87" = zext i8 %"85" to i32, !dbg !129
  %"88" = icmp slt i32 %"86", %"87", !dbg !129
  br i1 %"88", label %main_cstrncmp.exit, label %main_bb16, !dbg !129

main_bb16:                                        ; preds = %main_.critedge.i
  %"89" = zext i8 %"82" to i32, !dbg !130
  %"90" = zext i8 %"85" to i32, !dbg !130
  %"91" = icmp sgt i32 %"89", %"90", !dbg !130
  %"92" = zext i1 %"91" to i32, !dbg !130
  br label %main_cstrncmp.exit, !dbg !130

main_cstrncmp.exit:                               ; preds = %main_bb10, %main_bb13, %main_bb14, %main_.critedge.i, %main_bb16
  %.0.i = phi i32 [ 0, %main_bb10 ], [ 0, %main_bb14 ], [ 0, %main_bb13 ], [ %"92", %main_bb16 ], [ -1, %main_.critedge.i ], !dbg !108
  ret i32 %.0.i, !dbg !108
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncmp", metadata !"cstrncmp", metadata !"", i32 27, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncmp, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [cstrncmp]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 47, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 47] [def] [main]
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
!43 = metadata !{i32 27, i32 20, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!45 = metadata !{i32 27, i32 28, metadata !10, null}
!46 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331675, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 27]
!47 = metadata !{i32 27, i32 36, metadata !10, null}
!48 = metadata !{i32 31, i32 10, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !10, i32 31, i32 10, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 34, i32 6, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 34, i32 6, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 34, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 6, i32 3, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 37, i32 14, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 37, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 52, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 37, i32 14, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !57, i32 37, i32 14, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 39, i32 10, metadata !58, null}
!62 = metadata !{i32 40, i32 10, metadata !58, null}
!63 = metadata !{i32 41, i32 6, metadata !58, null}
!64 = metadata !{i32 42, i32 6, metadata !10, null}
!65 = metadata !{i32 786688, metadata !10, metadata !"uc1", metadata !5, i32 29, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc1] [line 29]
!66 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!67 = metadata !{i32 29, i32 20, metadata !10, null}
!68 = metadata !{i32 43, i32 6, metadata !10, null}
!69 = metadata !{i32 786688, metadata !10, metadata !"uc2", metadata !5, i32 29, metadata !66, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc2] [line 29]
!70 = metadata !{i32 29, i32 25, metadata !10, null}
!71 = metadata !{i32 44, i32 6, metadata !10, null}
!72 = metadata !{i32 44, i32 6, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !10, i32 44, i32 6, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 45, i32 2, metadata !10, null}
!75 = metadata !{i32 48, i32 19, metadata !13, null}
!76 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 48]
!77 = metadata !{i32 48, i32 9, metadata !13, null}
!78 = metadata !{i32 49, i32 19, metadata !13, null}
!79 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 49]
!80 = metadata !{i32 49, i32 9, metadata !13, null}
!81 = metadata !{i32 50, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !13, i32 50, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 1}
!84 = metadata !{i32 53, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !13, i32 53, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 56, i32 25, metadata !13, null}
!87 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, metadata !86} ; [ DW_TAG_arg_variable ] [size] [line 21]
!88 = metadata !{i32 21, i32 26, metadata !9, metadata !86}
!89 = metadata !{i32 22, i32 4, metadata !9, metadata !86}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!91 = metadata !{i32 22, i32 8, metadata !9, metadata !86}
!92 = metadata !{i32 23, i32 4, metadata !9, metadata !86}
!93 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 56]
!94 = metadata !{i32 56, i32 9, metadata !13, null}
!95 = metadata !{i32 57, i32 25, metadata !13, null}
!96 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [size] [line 12]
!97 = metadata !{i32 12, i32 26, metadata !4, metadata !95}
!98 = metadata !{i32 13, i32 4, metadata !4, metadata !95}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!100 = metadata !{i32 13, i32 8, metadata !4, metadata !95}
!101 = metadata !{i32 14, i32 4, metadata !4, metadata !95}
!102 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 57]
!103 = metadata !{i32 57, i32 9, metadata !13, null}
!104 = metadata !{i32 58, i32 5, metadata !13, null} ; [ DW_TAG_imported_module ]
!105 = metadata !{i32 59, i32 5, metadata !13, null}
!106 = metadata !{i32 60, i32 49, metadata !13, null}
!107 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777243, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [s1] [line 27]
!108 = metadata !{i32 60, i32 12, metadata !13, null}
!109 = metadata !{i32 27, i32 20, metadata !10, metadata !108}
!110 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!111 = metadata !{i32 27, i32 28, metadata !10, metadata !108}
!112 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331675, metadata !8, i32 0, metadata !108} ; [ DW_TAG_arg_variable ] [n] [line 27]
!113 = metadata !{i32 27, i32 36, metadata !10, metadata !108}
!114 = metadata !{i32 31, i32 10, metadata !49, metadata !108}
!115 = metadata !{i32 34, i32 6, metadata !51, metadata !108}
!116 = metadata !{i32 34, i32 6, metadata !53, metadata !108}
!117 = metadata !{i32 34, i32 6, metadata !55, metadata !108}
!118 = metadata !{i32 37, i32 14, metadata !57, metadata !108}
!119 = metadata !{i32 37, i32 14, metadata !60, metadata !108}
!120 = metadata !{i32 39, i32 10, metadata !58, metadata !108}
!121 = metadata !{i32 40, i32 10, metadata !58, metadata !108}
!122 = metadata !{i32 41, i32 6, metadata !58, metadata !108}
!123 = metadata !{i32 42, i32 6, metadata !10, metadata !108}
!124 = metadata !{i32 786688, metadata !10, metadata !"uc1", metadata !5, i32 29, metadata !66, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [uc1] [line 29]
!125 = metadata !{i32 29, i32 20, metadata !10, metadata !108}
!126 = metadata !{i32 43, i32 6, metadata !10, metadata !108}
!127 = metadata !{i32 786688, metadata !10, metadata !"uc2", metadata !5, i32 29, metadata !66, i32 0, metadata !108} ; [ DW_TAG_auto_variable ] [uc2] [line 29]
!128 = metadata !{i32 29, i32 25, metadata !10, metadata !108}
!129 = metadata !{i32 44, i32 6, metadata !10, metadata !108}
!130 = metadata !{i32 44, i32 6, metadata !73, metadata !108}

