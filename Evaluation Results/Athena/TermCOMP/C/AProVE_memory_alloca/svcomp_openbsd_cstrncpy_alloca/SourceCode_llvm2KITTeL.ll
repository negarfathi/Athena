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
define i32 @cstrncpy(i32 %dst, i32 %src, i64 %n) #0 {
cstrncpy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %src}, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !49), !dbg !50
  %"6" = icmp ne i64 %n, 0, !dbg !51
  br i1 %"6", label %cstrncpy_bb3, label %cstrncpy_bb7, !dbg !51

cstrncpy_bb3:                                     ; preds = %cstrncpy_bb2, %cstrncpy_bb6
  %s.0 = phi i32 [ %"7", %cstrncpy_bb6 ], [ %src, %cstrncpy_bb2 ]
  %d.0 = phi i32 [ %"11", %cstrncpy_bb6 ], [ %dst, %cstrncpy_bb2 ]
  %.0 = phi i64 [ %"21", %cstrncpy_bb6 ], [ %n, %cstrncpy_bb2 ]
  %"7" = add nsw i32 %s.0, 1, !dbg !53
  %"8" = sext i32 %s.0 to i64, !dbg !53
  %"9" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"8", !dbg !53
  %"10" = load i8* %"9", align 1, !dbg !53
  %"11" = add nsw i32 %d.0, 1, !dbg !53
  %"12" = sext i32 %d.0 to i64, !dbg !53
  %"13" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"12", !dbg !53
  store i8 %"10", i8* %"13", align 1, !dbg !53
  %"14" = sext i8 %"10" to i32, !dbg !53
  %"15" = icmp eq i32 %"14", 0, !dbg !53
  br i1 %"15", label %cstrncpy_bb4, label %cstrncpy_bb6, !dbg !53

cstrncpy_bb4:                                     ; preds = %cstrncpy_bb3, %cstrncpy_bb5
  %d.1 = phi i32 [ %"18", %cstrncpy_bb5 ], [ %"11", %cstrncpy_bb3 ]
  %.1 = phi i64 [ %"16", %cstrncpy_bb5 ], [ %.0, %cstrncpy_bb3 ]
  %"16" = add i64 %.1, -1, !dbg !57
  %"17" = icmp ne i64 %"16", 0, !dbg !57
  br i1 %"17", label %cstrncpy_bb5, label %cstrncpy_bb7, !dbg !57

cstrncpy_bb5:                                     ; preds = %cstrncpy_bb4
  %"18" = add nsw i32 %d.1, 1, !dbg !60
  %"19" = sext i32 %d.1 to i64, !dbg !60
  %"20" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"19", !dbg !60
  store i8 0, i8* %"20", align 1, !dbg !60
  br label %cstrncpy_bb4, !dbg !60

cstrncpy_bb6:                                     ; preds = %cstrncpy_bb3
  %"21" = add i64 %.0, -1, !dbg !61
  %"22" = icmp ne i64 %"21", 0, !dbg !61
  br i1 %"22", label %cstrncpy_bb3, label %cstrncpy_bb7, !dbg !61

cstrncpy_bb7:                                     ; preds = %cstrncpy_bb6, %cstrncpy_bb4, %cstrncpy_bb2
  ret i32 %dst, !dbg !63
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"23" = call i32 @__VERIFIER_nondet_int(), !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !65), !dbg !66
  %"24" = call i32 @__VERIFIER_nondet_int(), !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !68), !dbg !69
  %"25" = icmp slt i32 %"23", 1, !dbg !70
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !65), !dbg !66
  %. = select i1 %"25", i32 1, i32 %"23", !dbg !70
  %"26" = icmp slt i32 %"24", 1, !dbg !73
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !68), !dbg !69
  %n.0 = select i1 %"26", i32 1, i32 %"24", !dbg !73
  %"27" = mul nsw i32 %n.0, 1, !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !76), !dbg !77
  %"28" = load i32* @"'memory1_freeIndex", align 4, !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !79), !dbg !80
  %"29" = load i32* @"'memory1_freeIndex", align 4, !dbg !81
  %"30" = add nsw i32 %"29", %"27", !dbg !81
  store i32 %"30", i32* @"'memory1_freeIndex", align 4, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !82), !dbg !83
  %"31" = mul nsw i32 %., 1, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !85), !dbg !86
  %"32" = load i32* @"'memory0_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !88), !dbg !89
  %"33" = load i32* @"'memory0_freeIndex", align 4, !dbg !90
  %"34" = add nsw i32 %"33", %"31", !dbg !90
  store i32 %"34", i32* @"'memory0_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !91), !dbg !92
  %"35" = sub nsw i32 %., 1, !dbg !93
  %"36" = add nsw i32 %"32", %"35", !dbg !93
  %"37" = sext i32 %"36" to i64, !dbg !93
  %"38" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"37", !dbg !93
  store i8 0, i8* %"38", align 1, !dbg !93
  %"39" = sext i32 %n.0 to i64, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !95), !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !97), !dbg !98
  call void @llvm.dbg.value(metadata !{i64 %"39"}, i64 0, metadata !99), !dbg !100
  %"40" = icmp ne i64 %"39", 0, !dbg !101
  br i1 %"40", label %main_bb9, label %main_cstrncpy.exit, !dbg !101

main_bb9:                                         ; preds = %main_bb12, %main_bb8
  %s.0.i = phi i32 [ %"41", %main_bb12 ], [ %"32", %main_bb8 ], !dbg !94
  %d.0.i = phi i32 [ %"45", %main_bb12 ], [ %"28", %main_bb8 ], !dbg !94
  %.0.i = phi i64 [ %"55", %main_bb12 ], [ %"39", %main_bb8 ], !dbg !94
  %"41" = add nsw i32 %s.0.i, 1, !dbg !102
  %"42" = sext i32 %s.0.i to i64, !dbg !102
  %"43" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"42", !dbg !102
  %"44" = load i8* %"43", align 1, !dbg !102
  %"45" = add nsw i32 %d.0.i, 1, !dbg !102
  %"46" = sext i32 %d.0.i to i64, !dbg !102
  %"47" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"46", !dbg !102
  store i8 %"44", i8* %"47", align 1, !dbg !102
  %"48" = sext i8 %"44" to i32, !dbg !102
  %"49" = icmp eq i32 %"48", 0, !dbg !102
  br i1 %"49", label %main_bb10, label %main_bb12, !dbg !102

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %d.1.i = phi i32 [ %"52", %main_bb11 ], [ %"45", %main_bb9 ], !dbg !94
  %.1.i = phi i64 [ %"50", %main_bb11 ], [ %.0.i, %main_bb9 ], !dbg !94
  %"50" = add i64 %.1.i, -1, !dbg !103
  %"51" = icmp ne i64 %"50", 0, !dbg !103
  br i1 %"51", label %main_bb11, label %main_cstrncpy.exit, !dbg !103

main_bb11:                                        ; preds = %main_bb10
  %"52" = add nsw i32 %d.1.i, 1, !dbg !104
  %"53" = sext i32 %d.1.i to i64, !dbg !104
  %"54" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"53", !dbg !104
  store i8 0, i8* %"54", align 1, !dbg !104
  br label %main_bb10, !dbg !104

main_bb12:                                        ; preds = %main_bb9
  %"55" = add i64 %.0.i, -1, !dbg !105
  %"56" = icmp ne i64 %"55", 0, !dbg !105
  br i1 %"56", label %main_bb9, label %main_cstrncpy.exit, !dbg !105

main_cstrncpy.exit:                               ; preds = %main_bb8, %main_bb10, %main_bb12
  ret i32 0, !dbg !106
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncpy", metadata !"cstrncpy", metadata !"", i32 28, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i64)* @cstrncpy, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 28] [def] [scope 29] [cstrncpy]
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
!53 = metadata !{i32 35, i32 8, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !55, i32 35, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 34, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !52, i32 30, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 37, i32 5, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 37, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 786443, metadata !1, metadata !54, i32 35, i32 44, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 38, i32 6, metadata !59, null}
!61 = metadata !{i32 41, i32 3, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !55, i32 41, i32 3, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 43, i32 2, metadata !10, null}
!64 = metadata !{i32 47, i32 16, metadata !16, null}
!65 = metadata !{i32 786688, metadata !16, metadata !"length", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 47]
!66 = metadata !{i32 47, i32 7, metadata !16, null}
!67 = metadata !{i32 48, i32 11, metadata !16, null}
!68 = metadata !{i32 786688, metadata !16, metadata !"n", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 48]
!69 = metadata !{i32 48, i32 7, metadata !16, null}
!70 = metadata !{i32 49, i32 7, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !16, i32 49, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 1}
!73 = metadata !{i32 52, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !16, i32 52, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 55, i32 20, metadata !16, null}
!76 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [size] [line 21]
!77 = metadata !{i32 21, i32 26, metadata !9, metadata !75}
!78 = metadata !{i32 22, i32 4, metadata !9, metadata !75}
!79 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!80 = metadata !{i32 22, i32 8, metadata !9, metadata !75}
!81 = metadata !{i32 23, i32 4, metadata !9, metadata !75}
!82 = metadata !{i32 786688, metadata !16, metadata !"nondetArea", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 55]
!83 = metadata !{i32 55, i32 7, metadata !16, null}
!84 = metadata !{i32 56, i32 22, metadata !16, null}
!85 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [size] [line 12]
!86 = metadata !{i32 12, i32 26, metadata !4, metadata !84}
!87 = metadata !{i32 13, i32 4, metadata !4, metadata !84}
!88 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!89 = metadata !{i32 13, i32 8, metadata !4, metadata !84}
!90 = metadata !{i32 14, i32 4, metadata !4, metadata !84}
!91 = metadata !{i32 786688, metadata !16, metadata !"nondetString", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 56]
!92 = metadata !{i32 56, i32 7, metadata !16, null}
!93 = metadata !{i32 57, i32 3, metadata !16, null}
!94 = metadata !{i32 58, i32 3, metadata !16, null} ; [ DW_TAG_imported_module ]
!95 = metadata !{i32 786689, metadata !10, metadata !"dst", metadata !5, i32 16777244, metadata !8, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [dst] [line 28]
!96 = metadata !{i32 28, i32 14, metadata !10, metadata !94}
!97 = metadata !{i32 786689, metadata !10, metadata !"src", metadata !5, i32 33554460, metadata !8, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [src] [line 28]
!98 = metadata !{i32 28, i32 23, metadata !10, metadata !94}
!99 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331676, metadata !13, i32 0, metadata !94} ; [ DW_TAG_arg_variable ] [n] [line 28]
!100 = metadata !{i32 28, i32 35, metadata !10, metadata !94}
!101 = metadata !{i32 30, i32 6, metadata !52, metadata !94}
!102 = metadata !{i32 35, i32 8, metadata !54, metadata !94}
!103 = metadata !{i32 37, i32 5, metadata !58, metadata !94}
!104 = metadata !{i32 38, i32 6, metadata !59, metadata !94}
!105 = metadata !{i32 41, i32 3, metadata !62, metadata !94}
!106 = metadata !{i32 59, i32 3, metadata !16, null}

