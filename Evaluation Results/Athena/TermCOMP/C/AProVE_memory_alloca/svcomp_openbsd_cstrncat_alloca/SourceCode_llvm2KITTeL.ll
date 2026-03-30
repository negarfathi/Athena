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
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !31), !dbg !32
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !34), !dbg !35
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !36
  %"2" = add nsw i32 %"1", %size, !dbg !36
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !36
  ret i32 %"0", !dbg !37
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !38), !dbg !39
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !41), !dbg !42
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !43
  %"5" = add nsw i32 %"4", %size, !dbg !43
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !43
  ret i32 %"3", !dbg !44
}

; Function Attrs: nounwind uwtable
define i32 @cstrncat(i32 %dst, i32 %src, i64 %n) #0 {
cstrncat_bb2:
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !49), !dbg !50
  %"6" = icmp ne i64 %n, 0, !dbg !51
  br i1 %"6", label %cstrncat_bb3, label %cstrncat_bb8, !dbg !51

cstrncat_bb3:                                     ; preds = %cstrncat_bb2, %cstrncat_bb4
  %d.0 = phi i32 [ %"12", %cstrncat_bb4 ], [ %dst, %cstrncat_bb2 ]
  %"7" = sext i32 %d.0 to i64, !dbg !53
  %"8" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"7", !dbg !53
  %"9" = load i8* %"8", align 1, !dbg !53
  %"10" = sext i8 %"9" to i32, !dbg !53
  %"11" = icmp ne i32 %"10", 0, !dbg !53
  br i1 %"11", label %cstrncat_bb4, label %cstrncat_bb5, !dbg !53

cstrncat_bb4:                                     ; preds = %cstrncat_bb3
  %"12" = add nsw i32 %d.0, 1, !dbg !56
  br label %cstrncat_bb3, !dbg !56

cstrncat_bb5:                                     ; preds = %cstrncat_bb3, %cstrncat_bb6
  %s.0 = phi i32 [ %"13", %cstrncat_bb6 ], [ %src, %cstrncat_bb3 ]
  %d.1 = phi i32 [ %"21", %cstrncat_bb6 ], [ %d.0, %cstrncat_bb3 ]
  %.0 = phi i64 [ %"22", %cstrncat_bb6 ], [ %n, %cstrncat_bb3 ]
  %"13" = add nsw i32 %s.0, 1, !dbg !57
  %"14" = sext i32 %s.0 to i64, !dbg !57
  %"15" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"14", !dbg !57
  %"16" = load i8* %"15", align 1, !dbg !57
  %"17" = sext i32 %d.1 to i64, !dbg !57
  %"18" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"17", !dbg !57
  store i8 %"16", i8* %"18", align 1, !dbg !57
  %"19" = sext i8 %"16" to i32, !dbg !57
  %"20" = icmp eq i32 %"19", 0, !dbg !57
  br i1 %"20", label %cstrncat_bb7, label %cstrncat_bb6, !dbg !57

cstrncat_bb6:                                     ; preds = %cstrncat_bb5
  %"21" = add nsw i32 %d.1, 1, !dbg !60
  %"22" = add i64 %.0, -1, !dbg !61
  %"23" = icmp ne i64 %"22", 0, !dbg !61
  br i1 %"23", label %cstrncat_bb5, label %cstrncat_bb7, !dbg !61

cstrncat_bb7:                                     ; preds = %cstrncat_bb5, %cstrncat_bb6
  %d.2 = phi i32 [ %"21", %cstrncat_bb6 ], [ %d.1, %cstrncat_bb5 ]
  %"24" = sext i32 %d.2 to i64, !dbg !63
  %"25" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"24", !dbg !63
  store i8 0, i8* %"25", align 1, !dbg !63
  br label %cstrncat_bb8, !dbg !64

cstrncat_bb8:                                     ; preds = %cstrncat_bb7, %cstrncat_bb2
  ret i32 %dst, !dbg !65
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"26" = call i32 @__VERIFIER_nondet_int(), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !67), !dbg !68
  %"27" = call i32 @__VERIFIER_nondet_int(), !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !70), !dbg !71
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !73), !dbg !74
  %"29" = icmp slt i32 %"26", 1, !dbg !75
  call void @llvm.dbg.value(metadata !77, i64 0, metadata !67), !dbg !68
  %. = select i1 %"29", i32 1, i32 %"26", !dbg !75
  %"30" = icmp slt i32 %"27", 1, !dbg !78
  call void @llvm.dbg.value(metadata !77, i64 0, metadata !70), !dbg !71
  %length2.0 = select i1 %"30", i32 1, i32 %"27", !dbg !78
  %"31" = icmp slt i32 %"28", 1, !dbg !80
  call void @llvm.dbg.value(metadata !77, i64 0, metadata !73), !dbg !74
  %.1 = select i1 %"31", i32 1, i32 %"28", !dbg !80
  %"32" = icmp slt i32 %., %.1, !dbg !82
  %"33" = sub nsw i32 %., %.1
  %"34" = icmp slt i32 %"33", %length2.0, !dbg !84
  %or.cond = or i1 %"32", %"34", !dbg !82
  br i1 %or.cond, label %main_cstrncat.exit, label %main_bb10, !dbg !82

main_bb10:                                        ; preds = %main_bb9
  %"35" = mul nsw i32 %., 1, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !87), !dbg !88
  %"36" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !90), !dbg !91
  %"37" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"38" = add nsw i32 %"37", %"35", !dbg !92
  store i32 %"38", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !93), !dbg !94
  %"39" = mul nsw i32 %length2.0, 1, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !96), !dbg !97
  %"40" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !99), !dbg !100
  %"41" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"42" = add nsw i32 %"41", %"39", !dbg !101
  store i32 %"42", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !102), !dbg !103
  %"43" = sub nsw i32 %., %.1, !dbg !104
  %"44" = sub nsw i32 %"43", 1, !dbg !104
  %"45" = add nsw i32 %"36", %"44", !dbg !104
  %"46" = sext i32 %"45" to i64, !dbg !104
  %"47" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"46", !dbg !104
  store i8 0, i8* %"47", align 1, !dbg !104
  %"48" = sub nsw i32 %length2.0, 1, !dbg !105
  %"49" = add nsw i32 %"40", %"48", !dbg !105
  %"50" = sext i32 %"49" to i64, !dbg !105
  %"51" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"50", !dbg !105
  store i8 0, i8* %"51", align 1, !dbg !105
  %"52" = sext i32 %.1 to i64, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !107), !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !109), !dbg !110
  call void @llvm.dbg.value(metadata !{i64 %"52"}, i64 0, metadata !111), !dbg !112
  %"53" = icmp ne i64 %"52", 0, !dbg !113
  br i1 %"53", label %main_bb11, label %main_cstrncat.exit, !dbg !113

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %d.0.i = phi i32 [ %"59", %main_bb12 ], [ %"36", %main_bb10 ], !dbg !106
  %"54" = sext i32 %d.0.i to i64, !dbg !114
  %"55" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"54", !dbg !114
  %"56" = load i8* %"55", align 1, !dbg !114
  %"57" = sext i8 %"56" to i32, !dbg !114
  %"58" = icmp ne i32 %"57", 0, !dbg !114
  br i1 %"58", label %main_bb12, label %main_bb13, !dbg !114

main_bb12:                                        ; preds = %main_bb11
  %"59" = add nsw i32 %d.0.i, 1, !dbg !115
  br label %main_bb11, !dbg !115

main_bb13:                                        ; preds = %main_bb14, %main_bb11
  %s.0.i = phi i32 [ %"60", %main_bb14 ], [ %"40", %main_bb11 ], !dbg !106
  %d.1.i = phi i32 [ %"68", %main_bb14 ], [ %d.0.i, %main_bb11 ], !dbg !106
  %.0.i = phi i64 [ %"69", %main_bb14 ], [ %"52", %main_bb11 ], !dbg !106
  %"60" = add nsw i32 %s.0.i, 1, !dbg !116
  %"61" = sext i32 %s.0.i to i64, !dbg !116
  %"62" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"61", !dbg !116
  %"63" = load i8* %"62", align 1, !dbg !116
  %"64" = sext i32 %d.1.i to i64, !dbg !116
  %"65" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"64", !dbg !116
  store i8 %"63", i8* %"65", align 1, !dbg !116
  %"66" = sext i8 %"63" to i32, !dbg !116
  %"67" = icmp eq i32 %"66", 0, !dbg !116
  br i1 %"67", label %main_bb15, label %main_bb14, !dbg !116

main_bb14:                                        ; preds = %main_bb13
  %"68" = add nsw i32 %d.1.i, 1, !dbg !117
  %"69" = add i64 %.0.i, -1, !dbg !118
  %"70" = icmp ne i64 %"69", 0, !dbg !118
  br i1 %"70", label %main_bb13, label %main_bb15, !dbg !118

main_bb15:                                        ; preds = %main_bb14, %main_bb13
  %d.2.i = phi i32 [ %"68", %main_bb14 ], [ %d.1.i, %main_bb13 ], !dbg !106
  %"71" = sext i32 %d.2.i to i64, !dbg !119
  %"72" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"71", !dbg !119
  store i8 0, i8* %"72", align 1, !dbg !119
  br label %main_cstrncat.exit, !dbg !120

main_cstrncat.exit:                               ; preds = %main_bb15, %main_bb10, %main_bb9
  ret i32 0, !dbg !121
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29}
!llvm.ident = !{!30}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncat", metadata !"cstrncat", metadata !"", i32 28, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i64)* @cstrncat, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [cstrncat]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8, metadata !13}
!13 = metadata !{i32 786454, metadata !14, null, metadata !"size_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [size_t] [line 58, size 0, align 0, offset 0] [from long unsigned int]
!14 = metadata !{metadata !"/usr/local/bin/../lib/clang/3.5.2/include/stddef.h", metadata !"/"}
!15 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 46, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !27}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 20, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 20] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !23, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !24, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 19, metadata !23, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 19] [def]
!28 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!29 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!30 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!31 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!32 = metadata !{i32 12, i32 26, metadata !4, null}
!33 = metadata !{i32 13, i32 4, metadata !4, null}
!34 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!35 = metadata !{i32 13, i32 8, metadata !4, null}
!36 = metadata !{i32 14, i32 4, metadata !4, null}
!37 = metadata !{i32 15, i32 4, metadata !4, null}
!38 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 21]
!39 = metadata !{i32 21, i32 26, metadata !9, null}
!40 = metadata !{i32 22, i32 4, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!42 = metadata !{i32 22, i32 8, metadata !9, null}
!43 = metadata !{i32 23, i32 4, metadata !9, null}
!44 = metadata !{i32 24, i32 4, metadata !9, null}
!45 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777244, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 28]
!46 = metadata !{i32 28, i32 14, metadata !10, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554460, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 28]
!48 = metadata !{i32 28, i32 23, metadata !10, null}
!49 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331676, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 28]
!50 = metadata !{i32 28, i32 35, metadata !10, null}
!51 = metadata !{i32 30, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 34, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 34, i32 3, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 786443, metadata !1, metadata !52, i32 30, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 35, i32 4, metadata !55, null}
!57 = metadata !{i32 37, i32 8, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 37, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 786443, metadata !1, metadata !55, i32 36, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 39, i32 4, metadata !59, null}
!61 = metadata !{i32 40, i32 3, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !59, i32 40, i32 3, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 41, i32 3, metadata !55, null}
!64 = metadata !{i32 42, i32 2, metadata !55, null}
!65 = metadata !{i32 43, i32 2, metadata !10, null}
!66 = metadata !{i32 47, i32 19, metadata !16, null}
!67 = metadata !{i32 786688, metadata !16, metadata !"length1", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 47]
!68 = metadata !{i32 47, i32 9, metadata !16, null}
!69 = metadata !{i32 48, i32 19, metadata !16, null}
!70 = metadata !{i32 786688, metadata !16, metadata !"length2", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 48]
!71 = metadata !{i32 48, i32 9, metadata !16, null}
!72 = metadata !{i32 49, i32 13, metadata !16, null}
!73 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 49]
!74 = metadata !{i32 49, i32 9, metadata !16, null}
!75 = metadata !{i32 50, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !16, i32 50, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 1}
!78 = metadata !{i32 53, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !16, i32 53, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 56, i32 9, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !16, i32 56, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 59, i32 9, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !16, i32 59, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 59, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !83, i32 59, i32 9, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 60, i32 25, metadata !16, null}
!87 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, metadata !86} ; [ DW_TAG_arg_variable ] [size] [line 21]
!88 = metadata !{i32 21, i32 26, metadata !9, metadata !86}
!89 = metadata !{i32 22, i32 4, metadata !9, metadata !86}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!91 = metadata !{i32 22, i32 8, metadata !9, metadata !86}
!92 = metadata !{i32 23, i32 4, metadata !9, metadata !86}
!93 = metadata !{i32 786688, metadata !16, metadata !"nondetString1", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 60]
!94 = metadata !{i32 60, i32 9, metadata !16, null}
!95 = metadata !{i32 61, i32 25, metadata !16, null}
!96 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [size] [line 12]
!97 = metadata !{i32 12, i32 26, metadata !4, metadata !95}
!98 = metadata !{i32 13, i32 4, metadata !4, metadata !95}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!100 = metadata !{i32 13, i32 8, metadata !4, metadata !95}
!101 = metadata !{i32 14, i32 4, metadata !4, metadata !95}
!102 = metadata !{i32 786688, metadata !16, metadata !"nondetString2", metadata !5, i32 61, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 61]
!103 = metadata !{i32 61, i32 9, metadata !16, null}
!104 = metadata !{i32 62, i32 5, metadata !16, null}
!105 = metadata !{i32 63, i32 5, metadata !16, null}
!106 = metadata !{i32 64, i32 5, metadata !16, null}
!107 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777244, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [dst] [line 28]
!108 = metadata !{i32 28, i32 14, metadata !10, metadata !106}
!109 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554460, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [src] [line 28]
!110 = metadata !{i32 28, i32 23, metadata !10, metadata !106}
!111 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331676, metadata !13, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [n] [line 28]
!112 = metadata !{i32 28, i32 35, metadata !10, metadata !106}
!113 = metadata !{i32 30, i32 6, metadata !52, metadata !106}
!114 = metadata !{i32 34, i32 3, metadata !54, metadata !106}
!115 = metadata !{i32 35, i32 4, metadata !55, metadata !106}
!116 = metadata !{i32 37, i32 8, metadata !58, metadata !106}
!117 = metadata !{i32 39, i32 4, metadata !59, metadata !106}
!118 = metadata !{i32 40, i32 3, metadata !62, metadata !106}
!119 = metadata !{i32 41, i32 3, metadata !55, metadata !106}
!120 = metadata !{i32 42, i32 2, metadata !55, metadata !106}
!121 = metadata !{i32 66, i32 1, metadata !16, null}

