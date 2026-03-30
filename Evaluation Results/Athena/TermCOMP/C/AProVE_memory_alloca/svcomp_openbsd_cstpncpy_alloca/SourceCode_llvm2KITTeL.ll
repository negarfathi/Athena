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
define i32 @cstpncpy(i32 %dst, i32 %src, i64 %n) #0 {
cstpncpy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !49), !dbg !50
  %"6" = icmp ne i64 %n, 0, !dbg !51
  br i1 %"6", label %cstpncpy_bb3, label %cstpncpy_bb9, !dbg !51

cstpncpy_bb3:                                     ; preds = %cstpncpy_bb2
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !53), !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !56), !dbg !57
  %"7" = sext i32 %dst to i64, !dbg !58
  %"8" = add i64 %"7", %n, !dbg !58
  %"9" = trunc i64 %"8" to i32, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !53), !dbg !55
  call void @llvm.dbg.value(metadata !{i64 %"25"}, i64 0, metadata !49), !dbg !50
  br label %cstpncpy_bb4, !dbg !59

cstpncpy_bb4:                                     ; preds = %cstpncpy_bb8, %cstpncpy_bb3
  %s.0 = phi i32 [ %src, %cstpncpy_bb3 ], [ %"10", %cstpncpy_bb8 ]
  %d.0 = phi i32 [ %dst, %cstpncpy_bb3 ], [ %"14", %cstpncpy_bb8 ]
  %.01 = phi i64 [ %n, %cstpncpy_bb3 ], [ %"25", %cstpncpy_bb8 ]
  %"10" = add nsw i32 %s.0, 1, !dbg !60
  %"11" = sext i32 %s.0 to i64, !dbg !60
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !60
  %"13" = load i8* %"12", align 1, !dbg !60
  %"14" = add nsw i32 %d.0, 1, !dbg !60
  %"15" = sext i32 %d.0 to i64, !dbg !60
  %"16" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"15", !dbg !60
  store i8 %"13", i8* %"16", align 1, !dbg !60
  %"17" = sext i8 %"13" to i32, !dbg !60
  %"18" = icmp eq i32 %"17", 0, !dbg !60
  br i1 %"18", label %cstpncpy_bb5, label %cstpncpy_bb8, !dbg !60

cstpncpy_bb5:                                     ; preds = %cstpncpy_bb4
  %"19" = sub nsw i32 %"14", 1, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i64 %"20"}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !53), !dbg !55
  br label %cstpncpy_bb6, !dbg !65

cstpncpy_bb6:                                     ; preds = %cstpncpy_bb7, %cstpncpy_bb5
  %d.1 = phi i32 [ %"14", %cstpncpy_bb5 ], [ %"22", %cstpncpy_bb7 ]
  %.12 = phi i64 [ %.01, %cstpncpy_bb5 ], [ %"20", %cstpncpy_bb7 ]
  %"20" = add i64 %.12, -1, !dbg !66
  %"21" = icmp ne i64 %"20", 0, !dbg !66
  br i1 %"21", label %cstpncpy_bb7, label %cstpncpy_bb9, !dbg !66

cstpncpy_bb7:                                     ; preds = %cstpncpy_bb6
  %"22" = add nsw i32 %d.1, 1, !dbg !68
  %"23" = sext i32 %d.1 to i64, !dbg !68
  %"24" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"23", !dbg !68
  store i8 0, i8* %"24", align 1, !dbg !68
  br label %cstpncpy_bb6, !dbg !68

cstpncpy_bb8:                                     ; preds = %cstpncpy_bb4
  %"25" = add i64 %.01, -1, !dbg !69
  %"26" = icmp ne i64 %"25", 0, !dbg !69
  br i1 %"26", label %cstpncpy_bb4, label %cstpncpy_bb9, !dbg !69

cstpncpy_bb9:                                     ; preds = %cstpncpy_bb8, %cstpncpy_bb6, %cstpncpy_bb2
  %.1 = phi i32 [ %dst, %cstpncpy_bb2 ], [ %"9", %cstpncpy_bb8 ], [ %"19", %cstpncpy_bb6 ]
  ret i32 %.1, !dbg !71
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"27" = call i32 @__VERIFIER_nondet_int(), !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !73), !dbg !74
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !76), !dbg !77
  %"29" = icmp slt i32 %"27", 1, !dbg !78
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !73), !dbg !74
  %. = select i1 %"29", i32 1, i32 %"27", !dbg !78
  %"30" = icmp slt i32 %"28", 1, !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !76), !dbg !77
  %n.0 = select i1 %"30", i32 1, i32 %"28", !dbg !81
  %"31" = mul nsw i32 %n.0, 1, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !84), !dbg !85
  %"32" = load i32* @"'memory1_freeIndex", align 4, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !87), !dbg !88
  %"33" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  %"34" = add nsw i32 %"33", %"31", !dbg !89
  store i32 %"34", i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !90), !dbg !91
  %"35" = mul nsw i32 %., 1, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !93), !dbg !94
  %"36" = load i32* @"'memory0_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !96), !dbg !97
  %"37" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  %"38" = add nsw i32 %"37", %"35", !dbg !98
  store i32 %"38", i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !99), !dbg !100
  %"39" = sub nsw i32 %., 1, !dbg !101
  %"40" = add nsw i32 %"36", %"39", !dbg !101
  %"41" = sext i32 %"40" to i64, !dbg !101
  %"42" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"41", !dbg !101
  store i8 0, i8* %"42", align 1, !dbg !101
  %"43" = sext i32 %n.0 to i64, !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !105), !dbg !106
  call void @llvm.dbg.value(metadata !{i64 %"43"}, i64 0, metadata !107), !dbg !108
  %"44" = icmp ne i64 %"43", 0, !dbg !109
  br i1 %"44", label %main_bb11, label %main_cstpncpy.exit, !dbg !109

main_bb11:                                        ; preds = %main_bb10, %main_bb14
  %s.0.i = phi i32 [ %"45", %main_bb14 ], [ %"36", %main_bb10 ], !dbg !102
  %d.0.i = phi i32 [ %"49", %main_bb14 ], [ %"32", %main_bb10 ], !dbg !102
  %.01.i = phi i64 [ %"59", %main_bb14 ], [ %"43", %main_bb10 ], !dbg !102
  %"45" = add nsw i32 %s.0.i, 1, !dbg !110
  %"46" = sext i32 %s.0.i to i64, !dbg !110
  %"47" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"46", !dbg !110
  %"48" = load i8* %"47", align 1, !dbg !110
  %"49" = add nsw i32 %d.0.i, 1, !dbg !110
  %"50" = sext i32 %d.0.i to i64, !dbg !110
  %"51" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"50", !dbg !110
  store i8 %"48", i8* %"51", align 1, !dbg !110
  %"52" = sext i8 %"48" to i32, !dbg !110
  %"53" = icmp eq i32 %"52", 0, !dbg !110
  br i1 %"53", label %main_bb12, label %main_bb14, !dbg !110

main_bb12:                                        ; preds = %main_bb11, %main_bb13
  %d.1.i = phi i32 [ %"56", %main_bb13 ], [ %"49", %main_bb11 ], !dbg !102
  %.12.i = phi i64 [ %"54", %main_bb13 ], [ %.01.i, %main_bb11 ], !dbg !102
  %"54" = add i64 %.12.i, -1, !dbg !111
  %"55" = icmp ne i64 %"54", 0, !dbg !111
  br i1 %"55", label %main_bb13, label %main_cstpncpy.exit, !dbg !111

main_bb13:                                        ; preds = %main_bb12
  %"56" = add nsw i32 %d.1.i, 1, !dbg !112
  %"57" = sext i32 %d.1.i to i64, !dbg !112
  %"58" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"57", !dbg !112
  store i8 0, i8* %"58", align 1, !dbg !112
  br label %main_bb12, !dbg !112

main_bb14:                                        ; preds = %main_bb11
  %"59" = add i64 %.01.i, -1, !dbg !113
  %"60" = icmp ne i64 %"59", 0, !dbg !113
  br i1 %"60", label %main_bb11, label %main_cstpncpy.exit, !dbg !113

main_cstpncpy.exit:                               ; preds = %main_bb10, %main_bb12, %main_bb14
  ret i32 0, !dbg !114
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstpncpy", metadata !"cstpncpy", metadata !"", i32 24, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i64)* @cstpncpy, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [cstpncpy]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8, metadata !13}
!13 = metadata !{i32 786454, metadata !14, null, metadata !"size_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_typedef ] [size_t] [line 58, size 0, align 0, offset 0] [from long unsigned int]
!14 = metadata !{metadata !"/usr/local/bin/../lib/clang/3.5.2/include/stddef.h", metadata !"/"}
!15 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 44, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 44] [def] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !8}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !27}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !23, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!23 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !24, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!24 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !23, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!28 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!29 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!30 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!31 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!32 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!33 = metadata !{i32 9, i32 4, metadata !4, null}
!34 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!35 = metadata !{i32 9, i32 8, metadata !4, null}
!36 = metadata !{i32 10, i32 4, metadata !4, null}
!37 = metadata !{i32 11, i32 4, metadata !4, null}
!38 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!39 = metadata !{i32 17, i32 26, metadata !9, null}
!40 = metadata !{i32 18, i32 4, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!42 = metadata !{i32 18, i32 8, metadata !9, null}
!43 = metadata !{i32 19, i32 4, metadata !9, null}
!44 = metadata !{i32 20, i32 4, metadata !9, null}
!45 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 24]
!46 = metadata !{i32 24, i32 14, metadata !10, null}
!47 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554456, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [src] [line 24]
!48 = metadata !{i32 24, i32 23, metadata !10, null}
!49 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331672, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 24]
!50 = metadata !{i32 24, i32 35, metadata !10, null}
!51 = metadata !{i32 26, i32 6, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 786688, metadata !54, metadata !"d", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 27]
!54 = metadata !{i32 786443, metadata !1, metadata !52, i32 26, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 27, i32 7, metadata !54, null}
!56 = metadata !{i32 786688, metadata !54, metadata !"s", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 28]
!57 = metadata !{i32 28, i32 7, metadata !54, null}
!58 = metadata !{i32 30, i32 3, metadata !54, null}
!59 = metadata !{i32 31, i32 3, metadata !54, null}
!60 = metadata !{i32 32, i32 8, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 32, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 786443, metadata !1, metadata !54, i32 31, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 33, i32 5, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 32, i32 44, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 35, i32 5, metadata !64, null}
!66 = metadata !{i32 35, i32 5, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !64, i32 35, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 36, i32 6, metadata !64, null}
!69 = metadata !{i32 39, i32 3, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !62, i32 39, i32 3, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 41, i32 2, metadata !10, null}
!72 = metadata !{i32 45, i32 16, metadata !16, null}
!73 = metadata !{i32 786688, metadata !16, metadata !"length", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 45]
!74 = metadata !{i32 45, i32 7, metadata !16, null}
!75 = metadata !{i32 46, i32 11, metadata !16, null}
!76 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 46]
!77 = metadata !{i32 46, i32 7, metadata !16, null}
!78 = metadata !{i32 47, i32 7, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !16, i32 47, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 1}
!81 = metadata !{i32 50, i32 7, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !16, i32 50, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 53, i32 20, metadata !16, null}
!84 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [size] [line 17]
!85 = metadata !{i32 17, i32 26, metadata !9, metadata !83}
!86 = metadata !{i32 18, i32 4, metadata !9, metadata !83}
!87 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !83} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!88 = metadata !{i32 18, i32 8, metadata !9, metadata !83}
!89 = metadata !{i32 19, i32 4, metadata !9, metadata !83}
!90 = metadata !{i32 786688, metadata !16, metadata !"nondetArea", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 53]
!91 = metadata !{i32 53, i32 7, metadata !16, null}
!92 = metadata !{i32 54, i32 22, metadata !16, null}
!93 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !92} ; [ DW_TAG_arg_variable ] [size] [line 8]
!94 = metadata !{i32 8, i32 26, metadata !4, metadata !92} ; [ DW_TAG_imported_declaration ]
!95 = metadata !{i32 9, i32 4, metadata !4, metadata !92}
!96 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!97 = metadata !{i32 9, i32 8, metadata !4, metadata !92}
!98 = metadata !{i32 10, i32 4, metadata !4, metadata !92}
!99 = metadata !{i32 786688, metadata !16, metadata !"nondetString", metadata !5, i32 54, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 54]
!100 = metadata !{i32 54, i32 7, metadata !16, null}
!101 = metadata !{i32 55, i32 3, metadata !16, null}
!102 = metadata !{i32 56, i32 3, metadata !16, null}
!103 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777240, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [dst] [line 24]
!104 = metadata !{i32 24, i32 14, metadata !10, metadata !102}
!105 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554456, metadata !8, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [src] [line 24]
!106 = metadata !{i32 24, i32 23, metadata !10, metadata !102}
!107 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331672, metadata !13, i32 0, metadata !102} ; [ DW_TAG_arg_variable ] [n] [line 24]
!108 = metadata !{i32 24, i32 35, metadata !10, metadata !102}
!109 = metadata !{i32 26, i32 6, metadata !52, metadata !102}
!110 = metadata !{i32 32, i32 8, metadata !61, metadata !102}
!111 = metadata !{i32 35, i32 5, metadata !67, metadata !102}
!112 = metadata !{i32 36, i32 6, metadata !64, metadata !102}
!113 = metadata !{i32 39, i32 3, metadata !70, metadata !102}
!114 = metadata !{i32 57, i32 3, metadata !16, null}

