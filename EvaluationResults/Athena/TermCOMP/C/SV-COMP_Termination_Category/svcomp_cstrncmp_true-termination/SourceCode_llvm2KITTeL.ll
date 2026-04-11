; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !26), !dbg !27
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !29), !dbg !30
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !31
  %"2" = add nsw i32 %"1", %size, !dbg !31
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !31
  ret i32 %"0", !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb1:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !34), !dbg !35
  %"4" = icmp slt i32 %"3", 1, !dbg !36
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !34), !dbg !35
  %. = select i1 %"4", i32 1, i32 %"3", !dbg !36
  %"5" = mul nsw i32 %., 1, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !40), !dbg !41
  %"6" = load i32* @"'memory0_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !43), !dbg !44
  %"7" = load i32* @"'memory0_freeIndex", align 4, !dbg !45
  %"8" = add nsw i32 %"7", %"5", !dbg !45
  store i32 %"8", i32* @"'memory0_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  %"9" = sub nsw i32 %., 1, !dbg !48
  %"10" = add nsw i32 %"6", %"9", !dbg !48
  %"11" = sext i32 %"10" to i64, !dbg !48
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !48
  store i8 0, i8* %"12", align 1, !dbg !48
  ret i32 %"6", !dbg !49
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @cstrncmp(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncmp_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !54), !dbg !55
  %"13" = icmp eq i32 %n, 0, !dbg !56
  br i1 %"13", label %cstrncmp_bb9, label %cstrncmp_bb3, !dbg !56

cstrncmp_bb3:                                     ; preds = %cstrncmp_bb2, %cstrncmp_bb7
  %.03 = phi i32 [ %"14", %cstrncmp_bb7 ], [ %n, %cstrncmp_bb2 ]
  %.02 = phi i32 [ %"32", %cstrncmp_bb7 ], [ %s2, %cstrncmp_bb2 ]
  %.01 = phi i32 [ %"31", %cstrncmp_bb7 ], [ %s1, %cstrncmp_bb2 ]
  %"14" = add nsw i32 %.03, -1, !dbg !58
  %"15" = icmp sgt i32 %.03, 0, !dbg !58
  br i1 %"15", label %cstrncmp_bb4, label %cstrncmp_.critedge, !dbg !58

cstrncmp_bb4:                                     ; preds = %cstrncmp_bb3
  %"16" = sext i32 %.01 to i64, !dbg !60
  %"17" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"16", !dbg !60
  %"18" = load i8* %"17", align 1, !dbg !60
  %"19" = sext i8 %"18" to i32, !dbg !60
  %"20" = sext i32 %.02 to i64, !dbg !60
  %"21" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"20", !dbg !60
  %"22" = load i8* %"21", align 1, !dbg !60
  %"23" = sext i8 %"22" to i32, !dbg !60
  %"24" = icmp eq i32 %"19", %"23", !dbg !60
  br i1 %"24", label %cstrncmp_bb5, label %cstrncmp_.critedge, !dbg !62

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4
  %"25" = icmp eq i32 %"14", 0, !dbg !64
  br i1 %"25", label %cstrncmp_bb9, label %cstrncmp_bb6, !dbg !64

cstrncmp_bb6:                                     ; preds = %cstrncmp_bb5
  %"26" = sext i32 %.01 to i64, !dbg !67
  %"27" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"26", !dbg !67
  %"28" = load i8* %"27", align 1, !dbg !67
  %"29" = sext i8 %"28" to i32, !dbg !67
  %"30" = icmp eq i32 %"29", 0, !dbg !67
  br i1 %"30", label %cstrncmp_bb9, label %cstrncmp_bb7, !dbg !67

cstrncmp_bb7:                                     ; preds = %cstrncmp_bb6
  %"31" = add nsw i32 %.01, 1, !dbg !69
  %"32" = add nsw i32 %.02, 1, !dbg !70
  br label %cstrncmp_bb3, !dbg !71

cstrncmp_.critedge:                               ; preds = %cstrncmp_bb3, %cstrncmp_bb4
  %"33" = sext i32 %.01 to i64, !dbg !72
  %"34" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"33", !dbg !72
  %"35" = load i8* %"34", align 1, !dbg !72
  call void @llvm.dbg.value(metadata !{i8 %"35"}, i64 0, metadata !73), !dbg !75
  %"36" = sext i32 %.02 to i64, !dbg !76
  %"37" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"36", !dbg !76
  %"38" = load i8* %"37", align 1, !dbg !76
  call void @llvm.dbg.value(metadata !{i8 %"38"}, i64 0, metadata !77), !dbg !78
  %"39" = zext i8 %"35" to i32, !dbg !79
  %"40" = zext i8 %"38" to i32, !dbg !79
  %"41" = icmp slt i32 %"39", %"40", !dbg !79
  br i1 %"41", label %cstrncmp_bb9, label %cstrncmp_bb8, !dbg !79

cstrncmp_bb8:                                     ; preds = %cstrncmp_.critedge
  %"42" = zext i8 %"35" to i32, !dbg !80
  %"43" = zext i8 %"38" to i32, !dbg !80
  %"44" = icmp sgt i32 %"42", %"43", !dbg !80
  %"45" = zext i1 %"44" to i32, !dbg !80
  br label %cstrncmp_bb9, !dbg !80

cstrncmp_bb9:                                     ; preds = %cstrncmp_bb8, %cstrncmp_.critedge, %cstrncmp_bb5, %cstrncmp_bb6, %cstrncmp_bb2
  %.0 = phi i32 [ 0, %cstrncmp_bb2 ], [ 0, %cstrncmp_bb6 ], [ 0, %cstrncmp_bb5 ], [ %"45", %cstrncmp_bb8 ], [ -1, %cstrncmp_.critedge ]
  ret i32 %.0, !dbg !82
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"46" = call i32 @__VERIFIER_nondet_int() #3, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !85) #3, !dbg !86
  %"47" = icmp slt i32 %"46", 1, !dbg !87
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !85) #3, !dbg !86
  %..i = select i1 %"47", i32 1, i32 %"46", !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !88) #3, !dbg !90
  %"48" = load i32* @"'memory0_freeIndex", align 4, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !92) #3, !dbg !93
  %"49" = load i32* @"'memory0_freeIndex", align 4, !dbg !94
  %"50" = add nsw i32 %"49", %..i, !dbg !94
  store i32 %"50", i32* @"'memory0_freeIndex", align 4, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !95) #3, !dbg !96
  %"51" = sub nsw i32 %..i, 1, !dbg !97
  %"52" = add nsw i32 %"48", %"51", !dbg !97
  %"53" = sext i32 %"52" to i64, !dbg !97
  %"54" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"53", !dbg !97
  store i8 0, i8* %"54", align 1, !dbg !97
  %"55" = call i32 @__VERIFIER_nondet_int() #3, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !100) #3, !dbg !101
  %"56" = icmp slt i32 %"55", 1, !dbg !102
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !100) #3, !dbg !101
  %..i1 = select i1 %"56", i32 1, i32 %"55", !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %..i1}, i64 0, metadata !103) #3, !dbg !105
  %"57" = load i32* @"'memory0_freeIndex", align 4, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !107) #3, !dbg !108
  %"58" = load i32* @"'memory0_freeIndex", align 4, !dbg !109
  %"59" = add nsw i32 %"58", %..i1, !dbg !109
  store i32 %"59", i32* @"'memory0_freeIndex", align 4, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !110) #3, !dbg !111
  %"60" = sub nsw i32 %..i1, 1, !dbg !112
  %"61" = add nsw i32 %"57", %"60", !dbg !112
  %"62" = sext i32 %"61" to i64, !dbg !112
  %"63" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"62", !dbg !112
  store i8 0, i8* %"63", align 1, !dbg !112
  %"64" = call i32 @__VERIFIER_nondet_int(), !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !114), !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !117), !dbg !118
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !119), !dbg !120
  %"65" = icmp eq i32 %"64", 0, !dbg !121
  br i1 %"65", label %main_cstrncmp.exit, label %main_bb11, !dbg !121

main_bb11:                                        ; preds = %main_bb15, %main_bb10
  %.03.i = phi i32 [ %"66", %main_bb15 ], [ %"64", %main_bb10 ], !dbg !115
  %.02.i = phi i32 [ %"84", %main_bb15 ], [ %"57", %main_bb10 ], !dbg !115
  %.01.i = phi i32 [ %"83", %main_bb15 ], [ %"48", %main_bb10 ], !dbg !115
  %"66" = add nsw i32 %.03.i, -1, !dbg !122
  %"67" = icmp sgt i32 %.03.i, 0, !dbg !122
  br i1 %"67", label %main_bb12, label %main_.critedge.i, !dbg !122

main_bb12:                                        ; preds = %main_bb11
  %"68" = sext i32 %.01.i to i64, !dbg !123
  %"69" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"68", !dbg !123
  %"70" = load i8* %"69", align 1, !dbg !123
  %"71" = sext i8 %"70" to i32, !dbg !123
  %"72" = sext i32 %.02.i to i64, !dbg !123
  %"73" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"72", !dbg !123
  %"74" = load i8* %"73", align 1, !dbg !123
  %"75" = sext i8 %"74" to i32, !dbg !123
  %"76" = icmp eq i32 %"71", %"75", !dbg !123
  br i1 %"76", label %main_bb13, label %main_.critedge.i, !dbg !124

main_bb13:                                        ; preds = %main_bb12
  %"77" = icmp eq i32 %"66", 0, !dbg !125
  br i1 %"77", label %main_cstrncmp.exit, label %main_bb14, !dbg !125

main_bb14:                                        ; preds = %main_bb13
  %"78" = sext i32 %.01.i to i64, !dbg !126
  %"79" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"78", !dbg !126
  %"80" = load i8* %"79", align 1, !dbg !126
  %"81" = sext i8 %"80" to i32, !dbg !126
  %"82" = icmp eq i32 %"81", 0, !dbg !126
  br i1 %"82", label %main_cstrncmp.exit, label %main_bb15, !dbg !126

main_bb15:                                        ; preds = %main_bb14
  %"83" = add nsw i32 %.01.i, 1, !dbg !127
  %"84" = add nsw i32 %.02.i, 1, !dbg !128
  br label %main_bb11, !dbg !129

main_.critedge.i:                                 ; preds = %main_bb12, %main_bb11
  %"85" = sext i32 %.01.i to i64, !dbg !130
  %"86" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"85", !dbg !130
  %"87" = load i8* %"86", align 1, !dbg !130
  call void @llvm.dbg.value(metadata !{i8 %"87"}, i64 0, metadata !131), !dbg !132
  %"88" = sext i32 %.02.i to i64, !dbg !133
  %"89" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"88", !dbg !133
  %"90" = load i8* %"89", align 1, !dbg !133
  call void @llvm.dbg.value(metadata !{i8 %"90"}, i64 0, metadata !134), !dbg !135
  %"91" = zext i8 %"87" to i32, !dbg !136
  %"92" = zext i8 %"90" to i32, !dbg !136
  %"93" = icmp slt i32 %"91", %"92", !dbg !136
  br i1 %"93", label %main_cstrncmp.exit, label %main_bb16, !dbg !136

main_bb16:                                        ; preds = %main_.critedge.i
  %"94" = zext i8 %"87" to i32, !dbg !137
  %"95" = zext i8 %"90" to i32, !dbg !137
  %"96" = icmp sgt i32 %"94", %"95", !dbg !137
  %"97" = zext i1 %"96" to i32, !dbg !137
  br label %main_cstrncmp.exit, !dbg !137

main_cstrncmp.exit:                               ; preds = %main_bb10, %main_bb13, %main_bb14, %main_.critedge.i, %main_bb16
  %.0.i = phi i32 [ 0, %main_bb10 ], [ 0, %main_bb14 ], [ 0, %main_bb13 ], [ %"97", %main_bb16 ], [ -1, %main_.critedge.i ], !dbg !115
  ret i32 %.0.i, !dbg !115
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_nondet_String", metadata !"__VERIFIER_nondet_String", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__VERIFIER_nondet_String, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [__VERIFIER_nondet_String]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncmp", metadata !"cstrncmp", metadata !"", i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncmp, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [cstrncmp]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 53, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 53} ; [ DW_TAG_subprogram ] [line 53] [def] [main]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !19, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !20, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!27 = metadata !{i32 13, i32 26, metadata !4, null}
!28 = metadata !{i32 14, i32 4, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!30 = metadata !{i32 14, i32 8, metadata !4, null}
!31 = metadata !{i32 15, i32 4, metadata !4, null}
!32 = metadata !{i32 16, i32 4, metadata !4, null}
!33 = metadata !{i32 20, i32 18, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 20]
!35 = metadata !{i32 20, i32 9, metadata !9, null}
!36 = metadata !{i32 21, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 1}
!39 = metadata !{i32 24, i32 24, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [size] [line 13]
!41 = metadata !{i32 13, i32 26, metadata !4, metadata !39}
!42 = metadata !{i32 14, i32 4, metadata !4, metadata !39}
!43 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!44 = metadata !{i32 14, i32 8, metadata !4, metadata !39}
!45 = metadata !{i32 15, i32 4, metadata !4, metadata !39}
!46 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!47 = metadata !{i32 24, i32 9, metadata !9, null}
!48 = metadata !{i32 25, i32 5, metadata !9, null}
!49 = metadata !{i32 26, i32 5, metadata !9, null}
!50 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 33]
!51 = metadata !{i32 33, i32 20, metadata !12, null}
!52 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554465, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 33]
!53 = metadata !{i32 33, i32 28, metadata !12, null}
!54 = metadata !{i32 786689, metadata !12, metadata !"n", metadata !5, i32 50331681, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 33]
!55 = metadata !{i32 33, i32 36, metadata !12, null}
!56 = metadata !{i32 37, i32 10, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !12, i32 37, i32 10, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 40, i32 6, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 40, i32 6, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 6, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 40, i32 6, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 6, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 43, i32 14, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 43, i32 14, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 52, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 43, i32 14, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !65, i32 43, i32 14, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 45, i32 10, metadata !66, null}
!70 = metadata !{i32 46, i32 10, metadata !66, null}
!71 = metadata !{i32 47, i32 6, metadata !66, null}
!72 = metadata !{i32 48, i32 6, metadata !12, null}
!73 = metadata !{i32 786688, metadata !12, metadata !"uc1", metadata !5, i32 35, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc1] [line 35]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!75 = metadata !{i32 35, i32 20, metadata !12, null}
!76 = metadata !{i32 49, i32 6, metadata !12, null}
!77 = metadata !{i32 786688, metadata !12, metadata !"uc2", metadata !5, i32 35, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [uc2] [line 35]
!78 = metadata !{i32 35, i32 25, metadata !12, null}
!79 = metadata !{i32 50, i32 6, metadata !12, null}
!80 = metadata !{i32 50, i32 6, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !12, i32 50, i32 6, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 51, i32 2, metadata !12, null}
!83 = metadata !{i32 20, i32 18, metadata !9, metadata !84}
!84 = metadata !{i32 54, i32 21, metadata !15, null}
!85 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [length] [line 20]
!86 = metadata !{i32 20, i32 9, metadata !9, metadata !84}
!87 = metadata !{i32 21, i32 9, metadata !37, metadata !84}
!88 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [size] [line 13]
!89 = metadata !{i32 24, i32 24, metadata !9, metadata !84}
!90 = metadata !{i32 13, i32 26, metadata !4, metadata !89}
!91 = metadata !{i32 14, i32 4, metadata !4, metadata !89}
!92 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!93 = metadata !{i32 14, i32 8, metadata !4, metadata !89}
!94 = metadata !{i32 15, i32 4, metadata !4, metadata !89}
!95 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!96 = metadata !{i32 24, i32 9, metadata !9, metadata !84}
!97 = metadata !{i32 25, i32 5, metadata !9, metadata !84}
!98 = metadata !{i32 20, i32 18, metadata !9, metadata !99}
!99 = metadata !{i32 54, i32 48, metadata !15, null}
!100 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [length] [line 20]
!101 = metadata !{i32 20, i32 9, metadata !9, metadata !99}
!102 = metadata !{i32 21, i32 9, metadata !37, metadata !99}
!103 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [size] [line 13]
!104 = metadata !{i32 24, i32 24, metadata !9, metadata !99}
!105 = metadata !{i32 13, i32 26, metadata !4, metadata !104}
!106 = metadata !{i32 14, i32 4, metadata !4, metadata !104}
!107 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!108 = metadata !{i32 14, i32 8, metadata !4, metadata !104}
!109 = metadata !{i32 15, i32 4, metadata !4, metadata !104}
!110 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!111 = metadata !{i32 24, i32 9, metadata !9, metadata !99}
!112 = metadata !{i32 25, i32 5, metadata !9, metadata !99}
!113 = metadata !{i32 54, i32 75, metadata !15, null}
!114 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777249, metadata !8, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [s1] [line 33]
!115 = metadata !{i32 54, i32 12, metadata !15, null}
!116 = metadata !{i32 33, i32 20, metadata !12, metadata !115}
!117 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554465, metadata !8, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [s2] [line 33]
!118 = metadata !{i32 33, i32 28, metadata !12, metadata !115}
!119 = metadata !{i32 786689, metadata !12, metadata !"n", metadata !5, i32 50331681, metadata !8, i32 0, metadata !115} ; [ DW_TAG_arg_variable ] [n] [line 33]
!120 = metadata !{i32 33, i32 36, metadata !12, metadata !115}
!121 = metadata !{i32 37, i32 10, metadata !57, metadata !115}
!122 = metadata !{i32 40, i32 6, metadata !59, metadata !115}
!123 = metadata !{i32 40, i32 6, metadata !61, metadata !115}
!124 = metadata !{i32 40, i32 6, metadata !63, metadata !115}
!125 = metadata !{i32 43, i32 14, metadata !65, metadata !115}
!126 = metadata !{i32 43, i32 14, metadata !68, metadata !115}
!127 = metadata !{i32 45, i32 10, metadata !66, metadata !115}
!128 = metadata !{i32 46, i32 10, metadata !66, metadata !115}
!129 = metadata !{i32 47, i32 6, metadata !66, metadata !115}
!130 = metadata !{i32 48, i32 6, metadata !12, metadata !115}
!131 = metadata !{i32 786688, metadata !12, metadata !"uc1", metadata !5, i32 35, metadata !74, i32 0, metadata !115} ; [ DW_TAG_auto_variable ] [uc1] [line 35]
!132 = metadata !{i32 35, i32 20, metadata !12, metadata !115}
!133 = metadata !{i32 49, i32 6, metadata !12, metadata !115}
!134 = metadata !{i32 786688, metadata !12, metadata !"uc2", metadata !5, i32 35, metadata !74, i32 0, metadata !115} ; [ DW_TAG_auto_variable ] [uc2] [line 35]
!135 = metadata !{i32 35, i32 25, metadata !12, metadata !115}
!136 = metadata !{i32 50, i32 6, metadata !12, metadata !115}
!137 = metadata !{i32 50, i32 6, metadata !81, metadata !115}

