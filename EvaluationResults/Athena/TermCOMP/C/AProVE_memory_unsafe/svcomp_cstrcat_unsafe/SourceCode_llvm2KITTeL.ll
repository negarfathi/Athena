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
define i32 @cstrcat(i32 %s1, i32 %s2) #0 {
cstrcat_bb5:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !76), !dbg !77
  br label %cstrcat_bb6, !dbg !78

cstrcat_bb6:                                      ; preds = %cstrcat_bb7, %cstrcat_bb5
  %s.0 = phi i32 [ %s1, %cstrcat_bb5 ], [ %"20", %cstrcat_bb7 ]
  %"15" = sext i32 %s.0 to i64, !dbg !79
  %"16" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"15", !dbg !79
  %"17" = load i8* %"16", align 1, !dbg !79
  %"18" = sext i8 %"17" to i32, !dbg !79
  %"19" = icmp ne i32 %"18", 0, !dbg !79
  br i1 %"19", label %cstrcat_bb7, label %cstrcat_bb8, !dbg !79

cstrcat_bb7:                                      ; preds = %cstrcat_bb6
  %"20" = add nsw i32 %s.0, 1, !dbg !81
  br label %cstrcat_bb6, !dbg !81

cstrcat_bb8:                                      ; preds = %cstrcat_bb8, %cstrcat_bb6
  %s.1 = phi i32 [ %s.0, %cstrcat_bb6 ], [ %"25", %cstrcat_bb8 ]
  %.0 = phi i32 [ %s2, %cstrcat_bb6 ], [ %"21", %cstrcat_bb8 ]
  %"21" = add nsw i32 %.0, 1, !dbg !82
  %"22" = sext i32 %.0 to i64, !dbg !82
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !82
  %"24" = load i8* %"23", align 1, !dbg !82
  %"25" = add nsw i32 %s.1, 1, !dbg !82
  %"26" = sext i32 %s.1 to i64, !dbg !82
  %"27" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"26", !dbg !82
  store i8 %"24", i8* %"27", align 1, !dbg !82
  %"28" = sext i8 %"24" to i32, !dbg !82
  %"29" = icmp ne i32 %"28", 0, !dbg !82
  br i1 %"29", label %cstrcat_bb8, label %cstrcat_bb9, !dbg !82

cstrcat_bb9:                                      ; preds = %cstrcat_bb8
  ret i32 %s1, !dbg !85
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"30" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !86), !dbg !87
  %"31" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !90), !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !93), !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !95), !dbg !96
  br label %main_bb11, !dbg !97

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %s.0.i = phi i32 [ %"30", %main_bb10 ], [ %"37", %main_bb12 ], !dbg !91
  %"32" = sext i32 %s.0.i to i64, !dbg !98
  %"33" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"32", !dbg !98
  %"34" = load i8* %"33", align 1, !dbg !98
  %"35" = sext i8 %"34" to i32, !dbg !98
  %"36" = icmp ne i32 %"35", 0, !dbg !98
  br i1 %"36", label %main_bb12, label %main_bb13, !dbg !98

main_bb12:                                        ; preds = %main_bb11
  %"37" = add nsw i32 %s.0.i, 1, !dbg !99
  br label %main_bb11, !dbg !99

main_bb13:                                        ; preds = %main_bb13, %main_bb11
  %s.1.i = phi i32 [ %s.0.i, %main_bb11 ], [ %"42", %main_bb13 ], !dbg !91
  %.0.i = phi i32 [ %"31", %main_bb11 ], [ %"38", %main_bb13 ], !dbg !91
  %"38" = add nsw i32 %.0.i, 1, !dbg !100
  %"39" = sext i32 %.0.i to i64, !dbg !100
  %"40" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"39", !dbg !100
  %"41" = load i8* %"40", align 1, !dbg !100
  %"42" = add nsw i32 %s.1.i, 1, !dbg !100
  %"43" = sext i32 %s.1.i to i64, !dbg !100
  %"44" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"43", !dbg !100
  store i8 %"41", i8* %"44", align 1, !dbg !100
  %"45" = sext i8 %"41" to i32, !dbg !100
  %"46" = icmp ne i32 %"45", 0, !dbg !100
  br i1 %"46", label %main_bb13, label %main_cstrcat.exit, !dbg !100

main_cstrcat.exit:                                ; preds = %main_bb13
  ret i32 0, !dbg !101
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35}
!llvm.ident = !{!36}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory4", metadata !"allocate_memory4", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory4, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [def] [allocate_memory4]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcat", metadata !"cstrcat", metadata !"", i32 46, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcat, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [cstrcat]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8, metadata !8, metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 59, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 59} ; [ DW_TAG_subprogram ] [line 59] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !30, metadata !31, metadata !32, metadata !33}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 3, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 3] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 12] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 21] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 30, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 30] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory4_freeIndex", metadata !"memory4_freeIndex", metadata !"", metadata !5, i32 39, metadata !8, i32 0, i32 1, i32* @"'memory4_freeIndex", null} ; [ DW_TAG_variable ] [memory4_freeIndex] [line 39] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 2, metadata !26, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 2] [def]
!26 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !27, metadata !28, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!27 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!28 = metadata !{metadata !29}
!29 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!30 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 11, metadata !26, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 11] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 20, metadata !26, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 20] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 29, metadata !26, i32 0, i32 1, [100000 x i8]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 29] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"memory4", metadata !"memory4", metadata !"", metadata !5, i32 38, metadata !26, i32 0, i32 1, [100000 x i8]* @memory4, null} ; [ DW_TAG_variable ] [memory4] [line 38] [def]
!34 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!35 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!36 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!37 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 4]
!38 = metadata !{i32 4, i32 26, metadata !4, null}
!39 = metadata !{i32 5, i32 4, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 5]
!41 = metadata !{i32 5, i32 8, metadata !4, null}
!42 = metadata !{i32 6, i32 4, metadata !4, null}
!43 = metadata !{i32 7, i32 4, metadata !4, null}
!44 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!45 = metadata !{i32 13, i32 26, metadata !9, null}
!46 = metadata !{i32 14, i32 4, metadata !9, null}
!47 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!48 = metadata !{i32 14, i32 8, metadata !9, null}
!49 = metadata !{i32 15, i32 4, metadata !9, null}
!50 = metadata !{i32 16, i32 4, metadata !9, null}
!51 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 22]
!52 = metadata !{i32 22, i32 26, metadata !10, null}
!53 = metadata !{i32 23, i32 4, metadata !10, null}
!54 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!55 = metadata !{i32 23, i32 8, metadata !10, null}
!56 = metadata !{i32 24, i32 4, metadata !10, null}
!57 = metadata !{i32 25, i32 4, metadata !10, null}
!58 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 31]
!59 = metadata !{i32 31, i32 26, metadata !11, null}
!60 = metadata !{i32 32, i32 4, metadata !11, null}
!61 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!62 = metadata !{i32 32, i32 8, metadata !11, null}
!63 = metadata !{i32 33, i32 4, metadata !11, null}
!64 = metadata !{i32 34, i32 4, metadata !11, null}
!65 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 40]
!66 = metadata !{i32 40, i32 26, metadata !12, null}
!67 = metadata !{i32 41, i32 4, metadata !12, null}
!68 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 41]
!69 = metadata !{i32 41, i32 8, metadata !12, null}
!70 = metadata !{i32 42, i32 4, metadata !12, null}
!71 = metadata !{i32 43, i32 4, metadata !12, null}
!72 = metadata !{i32 786689, metadata !13, metadata !"s1", metadata !5, i32 16777262, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 46]
!73 = metadata !{i32 46, i32 18, metadata !13, null}
!74 = metadata !{i32 786689, metadata !13, metadata !"s2", metadata !5, i32 33554478, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 46]
!75 = metadata !{i32 46, i32 26, metadata !13, null}
!76 = metadata !{i32 786688, metadata !13, metadata !"s", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 48]
!77 = metadata !{i32 48, i32 10, metadata !13, null}
!78 = metadata !{i32 50, i32 6, metadata !13, null}
!79 = metadata !{i32 50, i32 6, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !13, i32 50, i32 6, i32 1, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 51, i32 10, metadata !13, null}
!82 = metadata !{i32 53, i32 6, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !84, i32 53, i32 6, i32 3, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 786443, metadata !1, metadata !13, i32 53, i32 6, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 56, i32 6, metadata !13, null}
!86 = metadata !{i32 786688, metadata !16, metadata !"s1", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 60]
!87 = metadata !{i32 60, i32 7, metadata !16, null}
!88 = metadata !{i32 786688, metadata !16, metadata !"s2", metadata !5, i32 61, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 61]
!89 = metadata !{i32 61, i32 7, metadata !16, null}
!90 = metadata !{i32 786689, metadata !13, metadata !"s1", metadata !5, i32 16777262, metadata !8, i32 0, metadata !91} ; [ DW_TAG_arg_variable ] [s1] [line 46]
!91 = metadata !{i32 62, i32 3, metadata !16, null}
!92 = metadata !{i32 46, i32 18, metadata !13, metadata !91}
!93 = metadata !{i32 786689, metadata !13, metadata !"s2", metadata !5, i32 33554478, metadata !8, i32 0, metadata !91} ; [ DW_TAG_arg_variable ] [s2] [line 46]
!94 = metadata !{i32 46, i32 26, metadata !13, metadata !91}
!95 = metadata !{i32 786688, metadata !13, metadata !"s", metadata !5, i32 48, metadata !8, i32 0, metadata !91} ; [ DW_TAG_auto_variable ] [s] [line 48]
!96 = metadata !{i32 48, i32 10, metadata !13, metadata !91}
!97 = metadata !{i32 50, i32 6, metadata !13, metadata !91}
!98 = metadata !{i32 50, i32 6, metadata !80, metadata !91}
!99 = metadata !{i32 51, i32 10, metadata !13, metadata !91}
!100 = metadata !{i32 53, i32 6, metadata !83, metadata !91}
!101 = metadata !{i32 63, i32 3, metadata !16, null}

