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
define i32 @cstrchr(i32 %s, i32 %c) #0 {
cstrchr_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !52), !dbg !53
  %"13" = trunc i32 %c to i8, !dbg !54
  %"14" = sext i8 %"13" to i32, !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !50), !dbg !51
  br label %cstrchr_bb3, !dbg !56

cstrchr_bb3:                                      ; preds = %cstrchr_bb5, %cstrchr_bb2
  %.0 = phi i32 [ %s, %cstrchr_bb2 ], [ %"25", %cstrchr_bb5 ]
  %"15" = sext i32 %.0 to i64, !dbg !57
  %"16" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"15", !dbg !57
  %"17" = load i8* %"16", align 1, !dbg !57
  %"18" = sext i8 %"17" to i32, !dbg !57
  %"19" = icmp ne i32 %"18", 0, !dbg !57
  br i1 %"19", label %cstrchr_bb4, label %cstrchr_.critedge, !dbg !57

cstrchr_bb4:                                      ; preds = %cstrchr_bb3
  %"20" = sext i32 %.0 to i64, !dbg !54
  %"21" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"20", !dbg !54
  %"22" = load i8* %"21", align 1, !dbg !54
  %"23" = sext i8 %"22" to i32, !dbg !54
  %"24" = icmp ne i32 %"23", %"14", !dbg !54
  br i1 %"24", label %cstrchr_bb5, label %cstrchr_.critedge, !dbg !59

cstrchr_bb5:                                      ; preds = %cstrchr_bb4
  %"25" = add nsw i32 %.0, 1, !dbg !61
  br label %cstrchr_bb3, !dbg !61

cstrchr_.critedge:                                ; preds = %cstrchr_bb3, %cstrchr_bb4
  %"26" = sext i32 %.0 to i64, !dbg !62
  %"27" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"26", !dbg !62
  %"28" = load i8* %"27", align 1, !dbg !62
  %"29" = sext i8 %"28" to i32, !dbg !62
  %"30" = icmp eq i32 %"29", %c, !dbg !62
  %.0. = select i1 %"30", i32 %.0, i32 0, !dbg !63
  ret i32 %.0., !dbg !65
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"31" = call i32 @__VERIFIER_nondet_int() #3, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !70) #3, !dbg !71
  %"32" = icmp slt i32 %"31", 1, !dbg !72
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !70) #3, !dbg !71
  %..i = select i1 %"32", i32 1, i32 %"31", !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !73) #3, !dbg !75
  %"33" = load i32* @"'memory0_freeIndex", align 4, !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !77) #3, !dbg !78
  %"34" = load i32* @"'memory0_freeIndex", align 4, !dbg !79
  %"35" = add nsw i32 %"34", %..i, !dbg !79
  store i32 %"35", i32* @"'memory0_freeIndex", align 4, !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !80) #3, !dbg !81
  %"36" = sub nsw i32 %..i, 1, !dbg !82
  %"37" = add nsw i32 %"33", %"36", !dbg !82
  %"38" = sext i32 %"37" to i64, !dbg !82
  %"39" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"38", !dbg !82
  store i8 0, i8* %"39", align 1, !dbg !82
  %"40" = call i32 @__VERIFIER_nondet_int(), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !84), !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !87), !dbg !88
  %"41" = trunc i32 %"40" to i8, !dbg !89
  %"42" = sext i8 %"41" to i32, !dbg !89
  br label %main_bb7, !dbg !90

main_bb7:                                         ; preds = %main_bb9, %main_bb6
  %.0.i = phi i32 [ %"33", %main_bb6 ], [ %"53", %main_bb9 ], !dbg !85
  %"43" = sext i32 %.0.i to i64, !dbg !91
  %"44" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"43", !dbg !91
  %"45" = load i8* %"44", align 1, !dbg !91
  %"46" = sext i8 %"45" to i32, !dbg !91
  %"47" = icmp ne i32 %"46", 0, !dbg !91
  br i1 %"47", label %main_bb8, label %main_cstrchr.exit, !dbg !91

main_bb8:                                         ; preds = %main_bb7
  %"48" = sext i32 %.0.i to i64, !dbg !89
  %"49" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"48", !dbg !89
  %"50" = load i8* %"49", align 1, !dbg !89
  %"51" = sext i8 %"50" to i32, !dbg !89
  %"52" = icmp ne i32 %"51", %"42", !dbg !89
  br i1 %"52", label %main_bb9, label %main_cstrchr.exit, !dbg !92

main_bb9:                                         ; preds = %main_bb8
  %"53" = add nsw i32 %.0.i, 1, !dbg !93
  br label %main_bb7, !dbg !93

main_cstrchr.exit:                                ; preds = %main_bb7, %main_bb8
  ret i32 0, !dbg !94
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

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
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrchr", metadata !"cstrchr", metadata !"", i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrchr, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [cstrchr]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 43, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 43] [def] [main]
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
!50 = metadata !{i32 786689, metadata !12, metadata !"s", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 33]
!51 = metadata !{i32 33, i32 18, metadata !12, null}
!52 = metadata !{i32 786689, metadata !12, metadata !"c", metadata !5, i32 33554465, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 33]
!53 = metadata !{i32 33, i32 25, metadata !12, null}
!54 = metadata !{i32 38, i32 6, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !12, i32 38, i32 6, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 38, i32 6, metadata !12, null}
!57 = metadata !{i32 38, i32 6, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !12, i32 38, i32 6, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 38, i32 6, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !12, i32 38, i32 6, i32 3, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 39, i32 10, metadata !12, null}
!62 = metadata !{i32 40, i32 6, metadata !12, null}
!63 = metadata !{i32 40, i32 6, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 40, i32 6, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !67, i32 40, i32 6, i32 4, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 6, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 20, i32 18, metadata !9, metadata !69}
!69 = metadata !{i32 44, i32 13, metadata !15, null}
!70 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [length] [line 20]
!71 = metadata !{i32 20, i32 9, metadata !9, metadata !69}
!72 = metadata !{i32 21, i32 9, metadata !37, metadata !69}
!73 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !74} ; [ DW_TAG_arg_variable ] [size] [line 13]
!74 = metadata !{i32 24, i32 24, metadata !9, metadata !69}
!75 = metadata !{i32 13, i32 26, metadata !4, metadata !74}
!76 = metadata !{i32 14, i32 4, metadata !4, metadata !74}
!77 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !74} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!78 = metadata !{i32 14, i32 8, metadata !4, metadata !74}
!79 = metadata !{i32 15, i32 4, metadata !4, metadata !74}
!80 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!81 = metadata !{i32 24, i32 9, metadata !9, metadata !69}
!82 = metadata !{i32 25, i32 5, metadata !9, metadata !69}
!83 = metadata !{i32 44, i32 40, metadata !15, null}
!84 = metadata !{i32 786689, metadata !12, metadata !"s", metadata !5, i32 16777249, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [s] [line 33]
!85 = metadata !{i32 44, i32 5, metadata !15, null}
!86 = metadata !{i32 33, i32 18, metadata !12, metadata !85}
!87 = metadata !{i32 786689, metadata !12, metadata !"c", metadata !5, i32 33554465, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [c] [line 33]
!88 = metadata !{i32 33, i32 25, metadata !12, metadata !85}
!89 = metadata !{i32 38, i32 6, metadata !55, metadata !85}
!90 = metadata !{i32 38, i32 6, metadata !12, metadata !85}
!91 = metadata !{i32 38, i32 6, metadata !58, metadata !85}
!92 = metadata !{i32 38, i32 6, metadata !60, metadata !85}
!93 = metadata !{i32 39, i32 10, metadata !12, metadata !85}
!94 = metadata !{i32 45, i32 5, metadata !15, null}

