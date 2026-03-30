; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4
@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !23), !dbg !24
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !26), !dbg !27
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  %"2" = add nsw i32 %"1", %size, !dbg !28
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !28
  ret i32 %"0", !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @fopen_or_warn() #0 {
fopen_or_warn_bb1:
  %"3" = load i32* @"'flag", align 4, !dbg !30
  %"4" = add nsw i32 %"3", 1, !dbg !30
  store i32 %"4", i32* @"'flag", align 4, !dbg !30
  %"5" = load i32* @"'flag", align 4, !dbg !31
  %"6" = icmp sgt i32 %"5", 10, !dbg !31
  br i1 %"6", label %fopen_or_warn_bb3, label %fopen_or_warn_bb2, !dbg !31

fopen_or_warn_bb2:                                ; preds = %fopen_or_warn_bb1
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !34), !dbg !35
  %"8" = icmp sge i32 %"7", 0, !dbg !36
  %. = select i1 %"8", i32 0, i32 %"7", !dbg !38
  br label %fopen_or_warn_bb3, !dbg !38

fopen_or_warn_bb3:                                ; preds = %fopen_or_warn_bb2, %fopen_or_warn_bb1
  %.0 = phi i32 [ 0, %fopen_or_warn_bb1 ], [ %., %fopen_or_warn_bb2 ]
  ret i32 %.0, !dbg !39
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !41), !dbg !42
  %"10" = icmp sle i32 %"9", 0, !dbg !43
  br i1 %"10", label %main_bb16, label %main_bb5, !dbg !43

main_bb5:                                         ; preds = %main_bb4
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !45), !dbg !47
  %"11" = load i32* @"'memory0_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !49), !dbg !50
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  %"13" = add nsw i32 %"12", %"9", !dbg !51
  store i32 %"13", i32* @"'memory0_freeIndex", align 4, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !54, i64 0, metadata !55), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !55), !dbg !57
  br label %main_bb6, !dbg !58

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %i.0 = phi i32 [ 0, %main_bb5 ], [ %"20", %main_bb7 ]
  %"14" = sub nsw i32 %"9", 1, !dbg !59
  %"15" = icmp slt i32 %i.0, %"14", !dbg !59
  br i1 %"15", label %main_bb7, label %main_bb8, !dbg !59

main_bb7:                                         ; preds = %main_bb6
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !62
  %"17" = add nsw i32 %"11", %i.0, !dbg !62
  %"18" = sext i32 %"17" to i64, !dbg !62
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !62
  store i32 %"16", i32* %"19", align 4, !dbg !62
  %"20" = add nsw i32 %i.0, 1, !dbg !63
  br label %main_bb6, !dbg !63

main_bb8:                                         ; preds = %main_bb6
  %"21" = sub nsw i32 %"9", 1, !dbg !64
  %"22" = add nsw i32 %"11", %"21", !dbg !64
  %"23" = sext i32 %"22" to i64, !dbg !64
  %"24" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"23", !dbg !64
  store i32 0, i32* %"24", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !54, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !69) #3, !dbg !74
  br label %main_bb9, !dbg !75

main_bb9:                                         ; preds = %main_bb15, %main_bb8
  %fp.1 = phi i32 [ 0, %main_bb8 ], [ %fp.0, %main_bb15 ]
  %argv.0 = phi i32 [ %"11", %main_bb8 ], [ %"42", %main_bb15 ]
  %"25" = add nsw i32 %fp.1, 1, !dbg !76
  br label %main_bb10, !dbg !77

main_bb10:                                        ; preds = %main_bb9, %main_bb14
  %fp.2 = phi i32 [ %"25", %main_bb9 ], [ %.0.i, %main_bb14 ]
  %argv.1 = phi i32 [ %argv.0, %main_bb9 ], [ %"41", %main_bb14 ]
  %"26" = sext i32 %argv.1 to i64, !dbg !78
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !78
  %"28" = load i32* %"27", align 4, !dbg !78
  %"29" = icmp ne i32 %"28", 0, !dbg !78
  br i1 %"29", label %main_bb11, label %main_bb16, !dbg !78

main_bb11:                                        ; preds = %main_bb10
  %"30" = sext i32 %argv.1 to i64, !dbg !80
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !80
  %"32" = load i32* %"31", align 4, !dbg !80
  %"33" = icmp sgt i32 %"32", 0, !dbg !80
  br i1 %"33", label %main_bb12, label %main_bb15, !dbg !80

main_bb12:                                        ; preds = %main_bb11
  %"34" = load i32* @"'flag", align 4, !dbg !81
  %"35" = add nsw i32 %"34", 1, !dbg !81
  store i32 %"35", i32* @"'flag", align 4, !dbg !81
  %"36" = load i32* @"'flag", align 4, !dbg !82
  %"37" = icmp sgt i32 %"36", 10, !dbg !82
  br i1 %"37", label %main_fopen_or_warn.exit, label %main_bb13, !dbg !82

main_bb13:                                        ; preds = %main_bb12
  %"38" = call i32 @__VERIFIER_nondet_int() #3, !dbg !83
  %"39" = icmp sge i32 %"38", 0, !dbg !84
  %..i = select i1 %"39", i32 0, i32 %"38", !dbg !85
  br label %main_fopen_or_warn.exit, !dbg !85

main_fopen_or_warn.exit:                          ; preds = %main_bb12, %main_bb13
  %.0.i = phi i32 [ 0, %main_bb12 ], [ %..i, %main_bb13 ], !dbg !70
  %"40" = icmp eq i32 %.0.i, 0, !dbg !86
  br i1 %"40", label %main_bb14, label %main_bb15, !dbg !86

main_bb14:                                        ; preds = %main_fopen_or_warn.exit
  %"41" = add nsw i32 %argv.1, 1, !dbg !88
  br label %main_bb10, !dbg !90

main_bb15:                                        ; preds = %main_fopen_or_warn.exit, %main_bb11
  %fp.0 = phi i32 [ %fp.2, %main_bb11 ], [ %.0.i, %main_fopen_or_warn.exit ]
  %"42" = add nsw i32 %argv.1, 1, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !65), !dbg !66
  br label %main_bb9, !dbg !91

main_bb16:                                        ; preds = %main_bb10, %main_bb4
  ret i32 0, !dbg !92
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fopen_or_warn", metadata !"fopen_or_warn", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @fopen_or_warn, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [fopen_or_warn]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 32, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [main]
!13 = metadata !{metadata !14, metadata !15, metadata !16}
!14 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 10, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 10] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 13, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 13] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 12, metadata !17, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 12] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!20 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!21 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!22 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!23 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 14]
!24 = metadata !{i32 14, i32 26, metadata !4, null}
!25 = metadata !{i32 15, i32 4, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!27 = metadata !{i32 15, i32 8, metadata !4, null}
!28 = metadata !{i32 16, i32 4, metadata !4, null}
!29 = metadata !{i32 17, i32 4, metadata !4, null}
!30 = metadata !{i32 23, i32 5, metadata !9, null}
!31 = metadata !{i32 24, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 26, i32 14, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 26]
!35 = metadata !{i32 26, i32 9, metadata !9, null}
!36 = metadata !{i32 27, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 27, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 28, i32 9, metadata !37, null}
!39 = metadata !{i32 31, i32 1, metadata !9, null}
!40 = metadata !{i32 34, i32 15, metadata !12, null}
!41 = metadata !{i32 786688, metadata !12, metadata !"len", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 34]
!42 = metadata !{i32 34, i32 9, metadata !12, null}
!43 = metadata !{i32 35, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !12, i32 35, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !46} ; [ DW_TAG_arg_variable ] [size] [line 14]
!46 = metadata !{i32 37, i32 23, metadata !12, null}
!47 = metadata !{i32 14, i32 26, metadata !4, metadata !46}
!48 = metadata !{i32 15, i32 4, metadata !4, metadata !46}
!49 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !46} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!50 = metadata !{i32 15, i32 8, metadata !4, metadata !46}
!51 = metadata !{i32 16, i32 4, metadata !4, metadata !46}
!52 = metadata !{i32 786688, metadata !12, metadata !"argv1_index", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv1_index] [line 37]
!53 = metadata !{i32 37, i32 9, metadata !12, null}
!54 = metadata !{i32 0}
!55 = metadata !{i32 786688, metadata !56, metadata !"i", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 38]
!56 = metadata !{i32 786443, metadata !1, metadata !12, i32 38, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 38, i32 14, metadata !56, null}
!58 = metadata !{i32 38, i32 10, metadata !56, null}
!59 = metadata !{i32 38, i32 10, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 38, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !56, i32 38, i32 10, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 39, i32 38, metadata !56, null}
!63 = metadata !{i32 38, i32 36, metadata !56, null}
!64 = metadata !{i32 40, i32 5, metadata !12, null}
!65 = metadata !{i32 786688, metadata !12, metadata !"argv", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [argv] [line 41]
!66 = metadata !{i32 41, i32 9, metadata !12, null}
!67 = metadata !{i32 786688, metadata !12, metadata !"fp", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 42]
!68 = metadata !{i32 42, i32 9, metadata !12, null}
!69 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 26, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [i] [line 26]
!70 = metadata !{i32 47, i32 18, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 46, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 45, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !12, i32 44, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 26, i32 9, metadata !9, metadata !70}
!75 = metadata !{i32 43, i32 5, metadata !12, null}
!76 = metadata !{i32 56, i32 5, metadata !73, null}
!77 = metadata !{i32 57, i32 5, metadata !73, null}
!78 = metadata !{i32 57, i32 5, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !73, i32 57, i32 5, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 45, i32 13, metadata !72, null}
!81 = metadata !{i32 23, i32 5, metadata !9, metadata !70}
!82 = metadata !{i32 24, i32 9, metadata !32, metadata !70}
!83 = metadata !{i32 26, i32 14, metadata !9, metadata !70}
!84 = metadata !{i32 27, i32 9, metadata !37, metadata !70}
!85 = metadata !{i32 28, i32 9, metadata !37, metadata !70}
!86 = metadata !{i32 48, i32 17, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !71, i32 48, i32 17, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 50, i32 17, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !87, i32 49, i32 13, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 51, i32 17, metadata !89, null}
!91 = metadata !{i32 54, i32 9, metadata !73, null}
!92 = metadata !{i32 59, i32 1, metadata !12, null}

