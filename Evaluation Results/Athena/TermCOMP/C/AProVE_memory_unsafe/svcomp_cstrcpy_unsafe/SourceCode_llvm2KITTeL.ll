; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@"'memory4_freeIndex" = global i32 1, align 4
@"'memory5_freeIndex" = global i32 1, align 4
@memory4 = common global [100000 x i8] zeroinitializer, align 16
@memory5 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory2 = common global [100000 x i8] zeroinitializer, align 16
@memory3 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !40), !dbg !41
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !43), !dbg !44
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !45
  %"2" = add nsw i32 %"1", %size, !dbg !45
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !45
  ret i32 %"0", !dbg !46
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !47), !dbg !48
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !50), !dbg !51
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !52
  %"5" = add nsw i32 %"4", %size, !dbg !52
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !52
  ret i32 %"3", !dbg !53
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !54), !dbg !55
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !57), !dbg !58
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !59
  %"8" = add nsw i32 %"7", %size, !dbg !59
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !59
  ret i32 %"6", !dbg !60
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !61), !dbg !62
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !64), !dbg !65
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !66
  %"11" = add nsw i32 %"10", %size, !dbg !66
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !66
  ret i32 %"9", !dbg !67
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory4(i32 %size) #0 {
allocate_memory4_bb4:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !68), !dbg !69
  %"12" = load i32* @"'memory4_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !71), !dbg !72
  %"13" = load i32* @"'memory4_freeIndex", align 4, !dbg !73
  %"14" = add nsw i32 %"13", %size, !dbg !73
  store i32 %"14", i32* @"'memory4_freeIndex", align 4, !dbg !73
  ret i32 %"12", !dbg !74
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory5(i32 %size) #0 {
allocate_memory5_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !75), !dbg !76
  %"15" = load i32* @"'memory5_freeIndex", align 4, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !78), !dbg !79
  %"16" = load i32* @"'memory5_freeIndex", align 4, !dbg !80
  %"17" = add nsw i32 %"16", %size, !dbg !80
  store i32 %"17", i32* @"'memory5_freeIndex", align 4, !dbg !80
  ret i32 %"15", !dbg !81
}

; Function Attrs: nounwind uwtable
define i32 @cstrcpy(i32 %s1, i32 %s2) #0 {
cstrcpy_bb6:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !82), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !86), !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !86), !dbg !87
  br label %cstrcpy_bb7, !dbg !90

cstrcpy_bb7:                                      ; preds = %cstrcpy_bb7, %cstrcpy_bb6
  %dst.0 = phi i32 [ %s1, %cstrcpy_bb6 ], [ %"22", %cstrcpy_bb7 ]
  %src.0 = phi i32 [ %s2, %cstrcpy_bb6 ], [ %"18", %cstrcpy_bb7 ]
  %"18" = add nsw i32 %src.0, 1, !dbg !91
  %"19" = sext i32 %src.0 to i64, !dbg !91
  %"20" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"19", !dbg !91
  %"21" = load i8* %"20", align 1, !dbg !91
  %"22" = add nsw i32 %dst.0, 1, !dbg !91
  %"23" = sext i32 %dst.0 to i64, !dbg !91
  %"24" = getelementptr inbounds [100000 x i8]* @memory5, i32 0, i64 %"23", !dbg !91
  store i8 %"21", i8* %"24", align 1, !dbg !91
  %"25" = sext i8 %"21" to i32, !dbg !91
  %"26" = icmp ne i32 %"25", 0, !dbg !91
  br i1 %"26", label %cstrcpy_bb7, label %cstrcpy_bb8, !dbg !91

cstrcpy_bb8:                                      ; preds = %cstrcpy_bb7
  ret i32 %s1, !dbg !94
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"27" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !95), !dbg !96
  %"28" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !97), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !99), !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !102), !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !104), !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !106), !dbg !107
  br label %main_bb10, !dbg !108

main_bb10:                                        ; preds = %main_bb10, %main_bb9
  %dst.0.i = phi i32 [ %"28", %main_bb9 ], [ %"33", %main_bb10 ], !dbg !100
  %src.0.i = phi i32 [ %"27", %main_bb9 ], [ %"29", %main_bb10 ], !dbg !100
  %"29" = add nsw i32 %src.0.i, 1, !dbg !109
  %"30" = sext i32 %src.0.i to i64, !dbg !109
  %"31" = getelementptr inbounds [100000 x i8]* @memory4, i32 0, i64 %"30", !dbg !109
  %"32" = load i8* %"31", align 1, !dbg !109
  %"33" = add nsw i32 %dst.0.i, 1, !dbg !109
  %"34" = sext i32 %dst.0.i to i64, !dbg !109
  %"35" = getelementptr inbounds [100000 x i8]* @memory5, i32 0, i64 %"34", !dbg !109
  store i8 %"32", i8* %"35", align 1, !dbg !109
  %"36" = sext i8 %"32" to i32, !dbg !109
  %"37" = icmp ne i32 %"36", 0, !dbg !109
  br i1 %"37", label %main_bb10, label %main_cstrcpy.exit, !dbg !109

main_cstrcpy.exit:                                ; preds = %main_bb10
  ret i32 0, !dbg !110
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!37, !38}
!llvm.ident = !{!39}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !20, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !17}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory4", metadata !"allocate_memory4", metadata !"", i32 40, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory4, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 40] [def] [allocate_memory4]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory5", metadata !"allocate_memory5", metadata !"", i32 49, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory5, null, null, metadata !2, i32 49} ; [ DW_TAG_subprogram ] [line 49] [def] [allocate_memory5]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcpy", metadata !"cstrcpy", metadata !"", i32 55, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcpy, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 55] [def] [scope 56] [cstrcpy]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8, metadata !8, metadata !8}
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 66, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 66} ; [ DW_TAG_subprogram ] [line 66] [def] [main]
!18 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !8}
!20 = metadata !{metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36}
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 3, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 3] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 12] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 21] [def]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 30, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 30] [def]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory4_freeIndex", metadata !"memory4_freeIndex", metadata !"", metadata !5, i32 39, metadata !8, i32 0, i32 1, i32* @"'memory4_freeIndex", null} ; [ DW_TAG_variable ] [memory4_freeIndex] [line 39] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory5_freeIndex", metadata !"memory5_freeIndex", metadata !"", metadata !5, i32 48, metadata !8, i32 0, i32 1, i32* @"'memory5_freeIndex", null} ; [ DW_TAG_variable ] [memory5_freeIndex] [line 48] [def]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 2, metadata !28, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 2] [def]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !29, metadata !30, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!29 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!30 = metadata !{metadata !31}
!31 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!32 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 11, metadata !28, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 11] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 20, metadata !28, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 20] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 29, metadata !28, i32 0, i32 1, [100000 x i8]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 29] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"memory4", metadata !"memory4", metadata !"", metadata !5, i32 38, metadata !28, i32 0, i32 1, [100000 x i8]* @memory4, null} ; [ DW_TAG_variable ] [memory4] [line 38] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"memory5", metadata !"memory5", metadata !"", metadata !5, i32 47, metadata !28, i32 0, i32 1, [100000 x i8]* @memory5, null} ; [ DW_TAG_variable ] [memory5] [line 47] [def]
!37 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!38 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!39 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!40 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 4]
!41 = metadata !{i32 4, i32 26, metadata !4, null}
!42 = metadata !{i32 5, i32 4, metadata !4, null}
!43 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 5]
!44 = metadata !{i32 5, i32 8, metadata !4, null}
!45 = metadata !{i32 6, i32 4, metadata !4, null}
!46 = metadata !{i32 7, i32 4, metadata !4, null}
!47 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!48 = metadata !{i32 13, i32 26, metadata !9, null}
!49 = metadata !{i32 14, i32 4, metadata !9, null}
!50 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!51 = metadata !{i32 14, i32 8, metadata !9, null}
!52 = metadata !{i32 15, i32 4, metadata !9, null}
!53 = metadata !{i32 16, i32 4, metadata !9, null}
!54 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 22]
!55 = metadata !{i32 22, i32 26, metadata !10, null}
!56 = metadata !{i32 23, i32 4, metadata !10, null}
!57 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!58 = metadata !{i32 23, i32 8, metadata !10, null}
!59 = metadata !{i32 24, i32 4, metadata !10, null}
!60 = metadata !{i32 25, i32 4, metadata !10, null}
!61 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 31]
!62 = metadata !{i32 31, i32 26, metadata !11, null}
!63 = metadata !{i32 32, i32 4, metadata !11, null}
!64 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!65 = metadata !{i32 32, i32 8, metadata !11, null}
!66 = metadata !{i32 33, i32 4, metadata !11, null}
!67 = metadata !{i32 34, i32 4, metadata !11, null}
!68 = metadata !{i32 786689, metadata !12, metadata !"size", metadata !5, i32 16777256, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 40]
!69 = metadata !{i32 40, i32 26, metadata !12, null}
!70 = metadata !{i32 41, i32 4, metadata !12, null}
!71 = metadata !{i32 786688, metadata !12, metadata !"allocatedIndex", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 41]
!72 = metadata !{i32 41, i32 8, metadata !12, null}
!73 = metadata !{i32 42, i32 4, metadata !12, null}
!74 = metadata !{i32 43, i32 4, metadata !12, null}
!75 = metadata !{i32 786689, metadata !13, metadata !"size", metadata !5, i32 16777265, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 49]
!76 = metadata !{i32 49, i32 26, metadata !13, null}
!77 = metadata !{i32 50, i32 4, metadata !13, null}
!78 = metadata !{i32 786688, metadata !13, metadata !"allocatedIndex", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 50]
!79 = metadata !{i32 50, i32 8, metadata !13, null}
!80 = metadata !{i32 51, i32 4, metadata !13, null}
!81 = metadata !{i32 52, i32 4, metadata !13, null}
!82 = metadata !{i32 786689, metadata !14, metadata !"s1", metadata !5, i32 16777271, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 55]
!83 = metadata !{i32 55, i32 18, metadata !14, null}
!84 = metadata !{i32 786689, metadata !14, metadata !"s2", metadata !5, i32 33554487, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 55]
!85 = metadata !{i32 55, i32 26, metadata !14, null}
!86 = metadata !{i32 786688, metadata !14, metadata !"dst", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 57]
!87 = metadata !{i32 57, i32 10, metadata !14, null}
!88 = metadata !{i32 786688, metadata !14, metadata !"src", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 58]
!89 = metadata !{i32 58, i32 10, metadata !14, null} ; [ DW_TAG_imported_module ]
!90 = metadata !{i32 60, i32 6, metadata !14, null}
!91 = metadata !{i32 60, i32 6, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !93, i32 60, i32 6, i32 3, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 786443, metadata !1, metadata !14, i32 60, i32 6, i32 1, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!94 = metadata !{i32 63, i32 6, metadata !14, null}
!95 = metadata !{i32 786688, metadata !17, metadata !"s2", metadata !5, i32 67, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s2] [line 67]
!96 = metadata !{i32 67, i32 7, metadata !17, null}
!97 = metadata !{i32 786688, metadata !17, metadata !"s1", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s1] [line 68]
!98 = metadata !{i32 68, i32 7, metadata !17, null}
!99 = metadata !{i32 786689, metadata !14, metadata !"s1", metadata !5, i32 16777271, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [s1] [line 55]
!100 = metadata !{i32 69, i32 3, metadata !17, null}
!101 = metadata !{i32 55, i32 18, metadata !14, metadata !100}
!102 = metadata !{i32 786689, metadata !14, metadata !"s2", metadata !5, i32 33554487, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [s2] [line 55]
!103 = metadata !{i32 55, i32 26, metadata !14, metadata !100}
!104 = metadata !{i32 786688, metadata !14, metadata !"dst", metadata !5, i32 57, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [dst] [line 57]
!105 = metadata !{i32 57, i32 10, metadata !14, metadata !100}
!106 = metadata !{i32 786688, metadata !14, metadata !"src", metadata !5, i32 58, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [src] [line 58]
!107 = metadata !{i32 58, i32 10, metadata !14, metadata !100} ; [ DW_TAG_imported_module ]
!108 = metadata !{i32 60, i32 6, metadata !14, metadata !100}
!109 = metadata !{i32 60, i32 6, metadata !92, metadata !100}
!110 = metadata !{i32 70, i32 3, metadata !17, null}

