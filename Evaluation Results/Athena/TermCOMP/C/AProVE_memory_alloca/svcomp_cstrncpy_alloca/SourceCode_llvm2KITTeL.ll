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
define i32 @cstrncpy(i32 %s1, i32 %s2, i32 %n) #0 {
cstrncpy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !48), !dbg !49
  br label %cstrncpy_bb3, !dbg !52

cstrncpy_bb3:                                     ; preds = %cstrncpy_bb4, %cstrncpy_bb2
  %src.0 = phi i32 [ %s2, %cstrncpy_bb2 ], [ %"8", %cstrncpy_bb4 ]
  %dst.0 = phi i32 [ %s1, %cstrncpy_bb2 ], [ %"12", %cstrncpy_bb4 ]
  %.0 = phi i32 [ %n, %cstrncpy_bb2 ], [ %"7", %cstrncpy_bb4 ]
  %"6" = icmp sgt i32 %.0, 0, !dbg !53
  br i1 %"6", label %cstrncpy_bb4, label %cstrncpy_bb7, !dbg !53

cstrncpy_bb4:                                     ; preds = %cstrncpy_bb3
  %"7" = add nsw i32 %.0, -1, !dbg !55
  %"8" = add nsw i32 %src.0, 1, !dbg !57
  %"9" = sext i32 %src.0 to i64, !dbg !57
  %"10" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"9", !dbg !57
  %"11" = load i8* %"10", align 1, !dbg !57
  %"12" = add nsw i32 %dst.0, 1, !dbg !57
  %"13" = sext i32 %dst.0 to i64, !dbg !57
  %"14" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"13", !dbg !57
  store i8 %"11", i8* %"14", align 1, !dbg !57
  %"15" = sext i8 %"11" to i32, !dbg !57
  %"16" = icmp eq i32 %"15", 0, !dbg !57
  br i1 %"16", label %cstrncpy_bb5, label %cstrncpy_bb3, !dbg !57

cstrncpy_bb5:                                     ; preds = %cstrncpy_bb4, %cstrncpy_bb6
  %us.0 = phi i32 [ %"19", %cstrncpy_bb6 ], [ %"12", %cstrncpy_bb4 ]
  %n2.0 = phi i32 [ %"17", %cstrncpy_bb6 ], [ %"7", %cstrncpy_bb4 ]
  %"17" = add nsw i32 %n2.0, -1, !dbg !59
  %"18" = icmp ne i32 %n2.0, 0, !dbg !59
  br i1 %"18", label %cstrncpy_bb6, label %cstrncpy_bb7, !dbg !59

cstrncpy_bb6:                                     ; preds = %cstrncpy_bb5
  %"19" = add nsw i32 %us.0, 1, !dbg !62
  %"20" = sext i32 %us.0 to i64, !dbg !62
  %"21" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"20", !dbg !62
  store i8 0, i8* %"21", align 1, !dbg !62
  br label %cstrncpy_bb5, !dbg !62

cstrncpy_bb7:                                     ; preds = %cstrncpy_bb5, %cstrncpy_bb3
  ret i32 %s1, !dbg !63
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"22" = call i32 @__VERIFIER_nondet_int(), !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !65), !dbg !66
  %"23" = call i32 @__VERIFIER_nondet_int(), !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !68), !dbg !69
  %"24" = icmp slt i32 %"22", 1, !dbg !70
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !65), !dbg !66
  %. = select i1 %"24", i32 1, i32 %"22", !dbg !70
  %"25" = icmp slt i32 %"23", 1, !dbg !73
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !68), !dbg !69
  %n.0 = select i1 %"25", i32 1, i32 %"23", !dbg !73
  %"26" = mul nsw i32 %n.0, 1, !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !76), !dbg !77
  %"27" = load i32* @"'memory1_freeIndex", align 4, !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !79), !dbg !80
  %"28" = load i32* @"'memory1_freeIndex", align 4, !dbg !81
  %"29" = add nsw i32 %"28", %"26", !dbg !81
  store i32 %"29", i32* @"'memory1_freeIndex", align 4, !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !82), !dbg !83
  %"30" = mul nsw i32 %., 1, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !85), !dbg !86
  %"31" = load i32* @"'memory0_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !88), !dbg !89
  %"32" = load i32* @"'memory0_freeIndex", align 4, !dbg !90
  %"33" = add nsw i32 %"32", %"30", !dbg !90
  store i32 %"33", i32* @"'memory0_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !91), !dbg !92
  %"34" = sub nsw i32 %., 1, !dbg !93
  %"35" = add nsw i32 %"31", %"34", !dbg !93
  %"36" = sext i32 %"35" to i64, !dbg !93
  %"37" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"36", !dbg !93
  store i8 0, i8* %"37", align 1, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !94), !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !97), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %n.0}, i64 0, metadata !99), !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !101), !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !103), !dbg !104
  br label %main_bb9, !dbg !105

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %src.0.i = phi i32 [ %"31", %main_bb8 ], [ %"40", %main_bb10 ], !dbg !95
  %dst.0.i = phi i32 [ %"27", %main_bb8 ], [ %"44", %main_bb10 ], !dbg !95
  %.0.i = phi i32 [ %n.0, %main_bb8 ], [ %"39", %main_bb10 ], !dbg !95
  %"38" = icmp sgt i32 %.0.i, 0, !dbg !106
  br i1 %"38", label %main_bb10, label %main_cstrncpy.exit, !dbg !106

main_bb10:                                        ; preds = %main_bb9
  %"39" = add nsw i32 %.0.i, -1, !dbg !107
  %"40" = add nsw i32 %src.0.i, 1, !dbg !108
  %"41" = sext i32 %src.0.i to i64, !dbg !108
  %"42" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"41", !dbg !108
  %"43" = load i8* %"42", align 1, !dbg !108
  %"44" = add nsw i32 %dst.0.i, 1, !dbg !108
  %"45" = sext i32 %dst.0.i to i64, !dbg !108
  %"46" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"45", !dbg !108
  store i8 %"43", i8* %"46", align 1, !dbg !108
  %"47" = sext i8 %"43" to i32, !dbg !108
  %"48" = icmp eq i32 %"47", 0, !dbg !108
  br i1 %"48", label %main_bb11, label %main_bb9, !dbg !108

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %us.0.i = phi i32 [ %"51", %main_bb12 ], [ %"44", %main_bb10 ], !dbg !95
  %n2.0.i = phi i32 [ %"49", %main_bb12 ], [ %"39", %main_bb10 ], !dbg !95
  %"49" = add nsw i32 %n2.0.i, -1, !dbg !109
  %"50" = icmp ne i32 %n2.0.i, 0, !dbg !109
  br i1 %"50", label %main_bb12, label %main_cstrncpy.exit, !dbg !109

main_bb12:                                        ; preds = %main_bb11
  %"51" = add nsw i32 %us.0.i, 1, !dbg !110
  %"52" = sext i32 %us.0.i to i64, !dbg !110
  %"53" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"52", !dbg !110
  store i8 0, i8* %"53", align 1, !dbg !110
  br label %main_bb11, !dbg !110

main_cstrncpy.exit:                               ; preds = %main_bb9, %main_bb11
  ret i32 0, !dbg !111
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
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrncpy", metadata !"cstrncpy", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cstrncpy, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [cstrncpy]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 46, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [main]
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
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!43 = metadata !{i32 23, i32 19, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!45 = metadata !{i32 23, i32 27, metadata !10, null}
!46 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331671, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 23]
!47 = metadata !{i32 23, i32 35, metadata !10, null}
!48 = metadata !{i32 786688, metadata !10, metadata !"dst", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dst] [line 25]
!49 = metadata !{i32 25, i32 10, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"src", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [src] [line 26]
!51 = metadata !{i32 26, i32 10, metadata !10, null}
!52 = metadata !{i32 30, i32 6, metadata !10, null}
!53 = metadata !{i32 30, i32 6, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 31, i32 10, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 32, i32 14, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 32, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 38, i32 14, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 38, i32 14, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 32, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 39, i32 18, metadata !61, null}
!63 = metadata !{i32 43, i32 6, metadata !10, null}
!64 = metadata !{i32 47, i32 16, metadata !13, null}
!65 = metadata !{i32 786688, metadata !13, metadata !"length", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 47]
!66 = metadata !{i32 47, i32 7, metadata !13, null}
!67 = metadata !{i32 48, i32 11, metadata !13, null}
!68 = metadata !{i32 786688, metadata !13, metadata !"n", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 48]
!69 = metadata !{i32 48, i32 7, metadata !13, null}
!70 = metadata !{i32 49, i32 7, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !13, i32 49, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 1}
!73 = metadata !{i32 52, i32 7, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !13, i32 52, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 55, i32 20, metadata !13, null}
!76 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [size] [line 17]
!77 = metadata !{i32 17, i32 26, metadata !9, metadata !75}
!78 = metadata !{i32 18, i32 4, metadata !9, metadata !75}
!79 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!80 = metadata !{i32 18, i32 8, metadata !9, metadata !75}
!81 = metadata !{i32 19, i32 4, metadata !9, metadata !75}
!82 = metadata !{i32 786688, metadata !13, metadata !"nondetArea", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 55]
!83 = metadata !{i32 55, i32 7, metadata !13, null}
!84 = metadata !{i32 56, i32 22, metadata !13, null}
!85 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [size] [line 8]
!86 = metadata !{i32 8, i32 26, metadata !4, metadata !84} ; [ DW_TAG_imported_declaration ]
!87 = metadata !{i32 9, i32 4, metadata !4, metadata !84}
!88 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!89 = metadata !{i32 9, i32 8, metadata !4, metadata !84}
!90 = metadata !{i32 10, i32 4, metadata !4, metadata !84}
!91 = metadata !{i32 786688, metadata !13, metadata !"nondetString", metadata !5, i32 56, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 56]
!92 = metadata !{i32 56, i32 7, metadata !13, null}
!93 = metadata !{i32 57, i32 3, metadata !13, null}
!94 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777239, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [s1] [line 23]
!95 = metadata !{i32 58, i32 3, metadata !13, null} ; [ DW_TAG_imported_module ]
!96 = metadata !{i32 23, i32 19, metadata !10, metadata !95}
!97 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554455, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [s2] [line 23]
!98 = metadata !{i32 23, i32 27, metadata !10, metadata !95}
!99 = metadata !{i32 786689, metadata !10, metadata !"n", metadata !5, i32 50331671, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [n] [line 23]
!100 = metadata !{i32 23, i32 35, metadata !10, metadata !95}
!101 = metadata !{i32 786688, metadata !10, metadata !"dst", metadata !5, i32 25, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [dst] [line 25]
!102 = metadata !{i32 25, i32 10, metadata !10, metadata !95}
!103 = metadata !{i32 786688, metadata !10, metadata !"src", metadata !5, i32 26, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [src] [line 26]
!104 = metadata !{i32 26, i32 10, metadata !10, metadata !95}
!105 = metadata !{i32 30, i32 6, metadata !10, metadata !95}
!106 = metadata !{i32 30, i32 6, metadata !54, metadata !95}
!107 = metadata !{i32 31, i32 10, metadata !56, metadata !95}
!108 = metadata !{i32 32, i32 14, metadata !58, metadata !95}
!109 = metadata !{i32 38, i32 14, metadata !60, metadata !95}
!110 = metadata !{i32 39, i32 18, metadata !61, metadata !95}
!111 = metadata !{i32 59, i32 3, metadata !13, null}

