; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16

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
define i64 @cstrlcpy(i32 %dst, i32 %src, i64 %siz) #0 {
cstrlcpy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !{i64 %siz}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i64 %siz}, i64 0, metadata !55), !dbg !56
  %"6" = icmp ne i64 %siz, 0, !dbg !57
  br i1 %"6", label %cstrlcpy_bb3, label %cstrlcpy_bb5, !dbg !57

cstrlcpy_bb3:                                     ; preds = %cstrlcpy_bb4, %cstrlcpy_bb2
  %s.0 = phi i32 [ %src, %cstrlcpy_bb2 ], [ %"9", %cstrlcpy_bb4 ]
  %d.0 = phi i32 [ %dst, %cstrlcpy_bb2 ], [ %"13", %cstrlcpy_bb4 ]
  %n.0 = phi i64 [ %siz, %cstrlcpy_bb2 ], [ %"7", %cstrlcpy_bb4 ]
  %"7" = add i64 %n.0, -1, !dbg !59
  %"8" = icmp ne i64 %"7", 0, !dbg !59
  br i1 %"8", label %cstrlcpy_bb4, label %cstrlcpy_bb5, !dbg !59

cstrlcpy_bb4:                                     ; preds = %cstrlcpy_bb3
  %"9" = add nsw i32 %s.0, 1, !dbg !62
  %"10" = sext i32 %s.0 to i64, !dbg !62
  %"11" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"10", !dbg !62
  %"12" = load i8* %"11", align 1, !dbg !62
  %"13" = add nsw i32 %d.0, 1, !dbg !62
  %"14" = sext i32 %d.0 to i64, !dbg !62
  %"15" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"14", !dbg !62
  store i8 %"12", i8* %"15", align 1, !dbg !62
  %"16" = sext i8 %"12" to i32, !dbg !62
  %"17" = icmp eq i32 %"16", 0, !dbg !62
  br i1 %"17", label %cstrlcpy_bb5, label %cstrlcpy_bb3, !dbg !62

cstrlcpy_bb5:                                     ; preds = %cstrlcpy_bb3, %cstrlcpy_bb4, %cstrlcpy_bb2
  %s.2 = phi i32 [ %src, %cstrlcpy_bb2 ], [ %s.0, %cstrlcpy_bb3 ], [ %"9", %cstrlcpy_bb4 ]
  %d.2 = phi i32 [ %dst, %cstrlcpy_bb2 ], [ %d.0, %cstrlcpy_bb3 ], [ %"13", %cstrlcpy_bb4 ]
  %n.1 = phi i64 [ %siz, %cstrlcpy_bb2 ], [ %"7", %cstrlcpy_bb4 ], [ %"7", %cstrlcpy_bb3 ]
  %"18" = icmp eq i64 %n.1, 0, !dbg !65
  br i1 %"18", label %cstrlcpy_bb6, label %cstrlcpy_bb9, !dbg !65

cstrlcpy_bb6:                                     ; preds = %cstrlcpy_bb5
  %"19" = icmp ne i64 %siz, 0, !dbg !67
  br i1 %"19", label %cstrlcpy_bb7, label %cstrlcpy_bb8, !dbg !67

cstrlcpy_bb7:                                     ; preds = %cstrlcpy_bb6
  %"20" = sext i32 %d.2 to i64, !dbg !70
  %"21" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"20", !dbg !70
  store i8 0, i8* %"21", align 1, !dbg !70
  br label %cstrlcpy_bb8, !dbg !70

cstrlcpy_bb8:                                     ; preds = %cstrlcpy_bb8, %cstrlcpy_bb6, %cstrlcpy_bb7
  %s.3 = phi i32 [ %s.2, %cstrlcpy_bb7 ], [ %s.2, %cstrlcpy_bb6 ], [ %"22", %cstrlcpy_bb8 ]
  %"22" = add nsw i32 %s.3, 1, !dbg !71
  %"23" = sext i32 %s.3 to i64, !dbg !71
  %"24" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"23", !dbg !71
  %"25" = load i8* %"24", align 1, !dbg !71
  %"26" = icmp ne i8 %"25", 0, !dbg !71
  br i1 %"26", label %cstrlcpy_bb8, label %cstrlcpy_bb9, !dbg !71

cstrlcpy_bb9:                                     ; preds = %cstrlcpy_bb8, %cstrlcpy_bb5
  %s.4 = phi i32 [ %s.2, %cstrlcpy_bb5 ], [ %"22", %cstrlcpy_bb8 ]
  %"27" = sub nsw i32 %s.4, %src, !dbg !74
  %"28" = sub nsw i32 %"27", 1, !dbg !74
  %"29" = sext i32 %"28" to i64, !dbg !74
  ret i64 %"29", !dbg !74
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"30" = call i32 @__VERIFIER_nondet_int(), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !76), !dbg !77
  %"31" = call i32 @__VERIFIER_nondet_int(), !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !79), !dbg !80
  %"32" = icmp slt i32 %"30", 1, !dbg !81
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !76), !dbg !77
  %. = select i1 %"32", i32 1, i32 %"30", !dbg !81
  %"33" = icmp slt i32 %"31", 1, !dbg !84
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !79), !dbg !80
  %n.0 = select i1 %"33", i32 1, i32 %"31", !dbg !84
  %"34" = mul nsw i32 %n.0, 1, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !87), !dbg !88
  %"35" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !90), !dbg !91
  %"36" = load i32* @"'memory1_freeIndex", align 4, !dbg !92
  %"37" = add nsw i32 %"36", %"34", !dbg !92
  store i32 %"37", i32* @"'memory1_freeIndex", align 4, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !93), !dbg !94
  %"38" = mul nsw i32 %., 1, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !96), !dbg !97
  %"39" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !99), !dbg !100
  %"40" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"41" = add nsw i32 %"40", %"38", !dbg !101
  store i32 %"41", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !102), !dbg !103
  %"42" = sub nsw i32 %n.0, 1, !dbg !104
  %"43" = add nsw i32 %"35", %"42", !dbg !104
  %"44" = sext i32 %"43" to i64, !dbg !104
  %"45" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"44", !dbg !104
  store i8 0, i8* %"45", align 1, !dbg !104
  %"46" = sub nsw i32 %., 1, !dbg !105
  %"47" = add nsw i32 %"39", %"46", !dbg !105
  %"48" = sext i32 %"47" to i64, !dbg !105
  %"49" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"48", !dbg !105
  store i8 0, i8* %"49", align 1, !dbg !105
  %"50" = sext i32 %n.0 to i64, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !107), !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !109), !dbg !110
  call void @llvm.dbg.value(metadata !{i64 %"50"}, i64 0, metadata !111), !dbg !112
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !{i64 %"50"}, i64 0, metadata !117), !dbg !118
  %"51" = icmp ne i64 %"50", 0, !dbg !119
  br i1 %"51", label %main_bb11, label %main_bb13, !dbg !119

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %s.0.i = phi i32 [ %"39", %main_bb10 ], [ %"54", %main_bb12 ], !dbg !106
  %d.0.i = phi i32 [ %"35", %main_bb10 ], [ %"58", %main_bb12 ], !dbg !106
  %n.0.i = phi i64 [ %"50", %main_bb10 ], [ %"52", %main_bb12 ], !dbg !106
  %"52" = add i64 %n.0.i, -1, !dbg !120
  %"53" = icmp ne i64 %"52", 0, !dbg !120
  br i1 %"53", label %main_bb12, label %main_bb13, !dbg !120

main_bb12:                                        ; preds = %main_bb11
  %"54" = add nsw i32 %s.0.i, 1, !dbg !121
  %"55" = sext i32 %s.0.i to i64, !dbg !121
  %"56" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"55", !dbg !121
  %"57" = load i8* %"56", align 1, !dbg !121
  %"58" = add nsw i32 %d.0.i, 1, !dbg !121
  %"59" = sext i32 %d.0.i to i64, !dbg !121
  %"60" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"59", !dbg !121
  store i8 %"57", i8* %"60", align 1, !dbg !121
  %"61" = sext i8 %"57" to i32, !dbg !121
  %"62" = icmp eq i32 %"61", 0, !dbg !121
  br i1 %"62", label %main_bb13, label %main_bb11, !dbg !121

main_bb13:                                        ; preds = %main_bb12, %main_bb11, %main_bb10
  %s.2.i = phi i32 [ %"39", %main_bb10 ], [ %s.0.i, %main_bb11 ], [ %"54", %main_bb12 ], !dbg !106
  %d.2.i = phi i32 [ %"35", %main_bb10 ], [ %d.0.i, %main_bb11 ], [ %"58", %main_bb12 ], !dbg !106
  %n.1.i = phi i64 [ %"50", %main_bb10 ], [ %"52", %main_bb12 ], [ %"52", %main_bb11 ], !dbg !106
  %"63" = icmp eq i64 %n.1.i, 0, !dbg !122
  br i1 %"63", label %main_bb14, label %main_cstrlcpy.exit, !dbg !122

main_bb14:                                        ; preds = %main_bb13
  %"64" = icmp ne i64 %"50", 0, !dbg !123
  br i1 %"64", label %main_bb15, label %main_bb16, !dbg !123

main_bb15:                                        ; preds = %main_bb14
  %"65" = sext i32 %d.2.i to i64, !dbg !124
  %"66" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"65", !dbg !124
  store i8 0, i8* %"66", align 1, !dbg !124
  br label %main_bb16, !dbg !124

main_bb16:                                        ; preds = %main_bb16, %main_bb15, %main_bb14
  %s.3.i = phi i32 [ %s.2.i, %main_bb15 ], [ %s.2.i, %main_bb14 ], [ %"67", %main_bb16 ], !dbg !106
  %"67" = add nsw i32 %s.3.i, 1, !dbg !125
  %"68" = sext i32 %s.3.i to i64, !dbg !125
  %"69" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"68", !dbg !125
  %"70" = load i8* %"69", align 1, !dbg !125
  %"71" = icmp ne i8 %"70", 0, !dbg !125
  br i1 %"71", label %main_bb16, label %main_cstrlcpy.exit, !dbg !125

main_cstrlcpy.exit:                               ; preds = %main_bb13, %main_bb16
  ret i32 0, !dbg !126
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrlcpy", metadata !"cstrlcpy", metadata !"", i32 29, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i32, i32, i64)* @cstrlcpy, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [cstrlcpy]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13, metadata !8, metadata !8, metadata !13}
!13 = metadata !{i32 786454, metadata !14, null, metadata !"size_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [size_t] [line 58, size 0, align 0, offset 0] [from long unsigned int]
!14 = metadata !{metadata !"/usr/local/bin/../lib/clang/3.5.2/include/stddef.h", metadata !"/"}
!15 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 54, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 54} ; [ DW_TAG_subprogram ] [line 54] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !27}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 21] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !23, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !24, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 20, metadata !23, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 20] [def]
!28 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!29 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!30 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!31 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!32 = metadata !{i32 13, i32 26, metadata !4, null}
!33 = metadata !{i32 14, i32 4, metadata !4, null}
!34 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!35 = metadata !{i32 14, i32 8, metadata !4, null}
!36 = metadata !{i32 15, i32 4, metadata !4, null}
!37 = metadata !{i32 16, i32 4, metadata !4, null}
!38 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 22]
!39 = metadata !{i32 22, i32 26, metadata !9, null}
!40 = metadata !{i32 23, i32 4, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!42 = metadata !{i32 23, i32 8, metadata !9, null}
!43 = metadata !{i32 24, i32 4, metadata !9, null}
!44 = metadata !{i32 25, i32 4, metadata !9, null}
!45 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777245, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 29]
!46 = metadata !{i32 29, i32 14, metadata !10, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 29]
!48 = metadata !{i32 29, i32 23, metadata !10, null}
!49 = metadata !{i32 786689, metadata !10, metadata !"siz", metadata !5, i32 50331677, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [siz] [line 29]
!50 = metadata !{i32 29, i32 35, metadata !10, null}
!51 = metadata !{i32 786688, metadata !10, metadata !"d", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 31]
!52 = metadata !{i32 31, i32 6, metadata !10, null}
!53 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 32]
!54 = metadata !{i32 32, i32 6, metadata !10, null}
!55 = metadata !{i32 786688, metadata !10, metadata !"n", metadata !5, i32 33, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 33]
!56 = metadata !{i32 33, i32 9, metadata !10, null}
!57 = metadata !{i32 36, i32 6, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !10, i32 36, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 37, i32 3, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 37, i32 3, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 36, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 38, i32 8, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 38, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 37, i32 20, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 44, i32 6, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !10, i32 44, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 45, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !69, i32 45, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 786443, metadata !1, metadata !66, i32 44, i32 14, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 46, i32 4, metadata !68, null}
!71 = metadata !{i32 47, i32 3, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 47, i32 3, i32 3, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !69, i32 47, i32 3, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 51, i32 2, metadata !10, null}
!75 = metadata !{i32 55, i32 16, metadata !16, null}
!76 = metadata !{i32 786688, metadata !16, metadata !"length", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 55]
!77 = metadata !{i32 55, i32 7, metadata !16, null}
!78 = metadata !{i32 56, i32 11, metadata !16, null}
!79 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 56]
!80 = metadata !{i32 56, i32 7, metadata !16, null}
!81 = metadata !{i32 57, i32 7, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !16, i32 57, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 1}
!84 = metadata !{i32 60, i32 7, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !16, i32 60, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 63, i32 23, metadata !16, null}
!87 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, metadata !86} ; [ DW_TAG_arg_variable ] [size] [line 22]
!88 = metadata !{i32 22, i32 26, metadata !9, metadata !86}
!89 = metadata !{i32 23, i32 4, metadata !9, metadata !86}
!90 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!91 = metadata !{i32 23, i32 8, metadata !9, metadata !86}
!92 = metadata !{i32 24, i32 4, metadata !9, metadata !86}
!93 = metadata !{i32 786688, metadata !16, metadata !"nondetString1", metadata !5, i32 63, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 63]
!94 = metadata !{i32 63, i32 7, metadata !16, null}
!95 = metadata !{i32 64, i32 23, metadata !16, null}
!96 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [size] [line 13]
!97 = metadata !{i32 13, i32 26, metadata !4, metadata !95}
!98 = metadata !{i32 14, i32 4, metadata !4, metadata !95}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!100 = metadata !{i32 14, i32 8, metadata !4, metadata !95}
!101 = metadata !{i32 15, i32 4, metadata !4, metadata !95}
!102 = metadata !{i32 786688, metadata !16, metadata !"nondetString2", metadata !5, i32 64, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 64]
!103 = metadata !{i32 64, i32 7, metadata !16, null}
!104 = metadata !{i32 65, i32 3, metadata !16, null}
!105 = metadata !{i32 66, i32 3, metadata !16, null}
!106 = metadata !{i32 67, i32 3, metadata !16, null}
!107 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777245, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [dst] [line 29]
!108 = metadata !{i32 29, i32 14, metadata !10, metadata !106}
!109 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554461, metadata !8, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [src] [line 29]
!110 = metadata !{i32 29, i32 23, metadata !10, metadata !106}
!111 = metadata !{i32 786689, metadata !10, metadata !"siz", metadata !5, i32 50331677, metadata !13, i32 0, metadata !106} ; [ DW_TAG_arg_variable ] [siz] [line 29]
!112 = metadata !{i32 29, i32 35, metadata !10, metadata !106}
!113 = metadata !{i32 786688, metadata !10, metadata !"d", metadata !5, i32 31, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [d] [line 31]
!114 = metadata !{i32 31, i32 6, metadata !10, metadata !106}
!115 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 32, metadata !8, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [s] [line 32]
!116 = metadata !{i32 32, i32 6, metadata !10, metadata !106}
!117 = metadata !{i32 786688, metadata !10, metadata !"n", metadata !5, i32 33, metadata !13, i32 0, metadata !106} ; [ DW_TAG_auto_variable ] [n] [line 33]
!118 = metadata !{i32 33, i32 9, metadata !10, metadata !106}
!119 = metadata !{i32 36, i32 6, metadata !58, metadata !106}
!120 = metadata !{i32 37, i32 3, metadata !60, metadata !106}
!121 = metadata !{i32 38, i32 8, metadata !63, metadata !106}
!122 = metadata !{i32 44, i32 6, metadata !66, metadata !106}
!123 = metadata !{i32 45, i32 7, metadata !68, metadata !106}
!124 = metadata !{i32 46, i32 4, metadata !68, metadata !106}
!125 = metadata !{i32 47, i32 3, metadata !72, metadata !106}
!126 = metadata !{i32 68, i32 3, metadata !16, null}

