; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !25), !dbg !26
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !28), !dbg !29
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  %"2" = add nsw i32 %"1", %size, !dbg !30
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !30
  ret i32 %"0", !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @cstrchr(i32 %s, i32 %c) #0 {
cstrchr_bb1:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !34), !dbg !35
  %"3" = trunc i32 %c to i8, !dbg !36
  %"4" = sext i8 %"3" to i32, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !32), !dbg !33
  br label %cstrchr_bb2, !dbg !38

cstrchr_bb2:                                      ; preds = %cstrchr_bb4, %cstrchr_bb1
  %.0 = phi i32 [ %s, %cstrchr_bb1 ], [ %"15", %cstrchr_bb4 ]
  %"5" = sext i32 %.0 to i64, !dbg !39
  %"6" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"5", !dbg !39
  %"7" = load i8* %"6", align 1, !dbg !39
  %"8" = sext i8 %"7" to i32, !dbg !39
  %"9" = icmp ne i32 %"8", 0, !dbg !39
  br i1 %"9", label %cstrchr_bb3, label %cstrchr_.critedge, !dbg !39

cstrchr_bb3:                                      ; preds = %cstrchr_bb2
  %"10" = sext i32 %.0 to i64, !dbg !36
  %"11" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"10", !dbg !36
  %"12" = load i8* %"11", align 1, !dbg !36
  %"13" = sext i8 %"12" to i32, !dbg !36
  %"14" = icmp ne i32 %"13", %"4", !dbg !36
  br i1 %"14", label %cstrchr_bb4, label %cstrchr_.critedge, !dbg !41

cstrchr_bb4:                                      ; preds = %cstrchr_bb3
  %"15" = add nsw i32 %.0, 1, !dbg !43
  br label %cstrchr_bb2, !dbg !43

cstrchr_.critedge:                                ; preds = %cstrchr_bb2, %cstrchr_bb3
  %"16" = sext i32 %.0 to i64, !dbg !44
  %"17" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"16", !dbg !44
  %"18" = load i8* %"17", align 1, !dbg !44
  %"19" = sext i8 %"18" to i32, !dbg !44
  %"20" = icmp eq i32 %"19", %c, !dbg !44
  %.0. = select i1 %"20", i32 %.0, i32 0, !dbg !45
  ret i32 %.0., !dbg !47
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"21" = call i32 @__VERIFIER_nondet_int(), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !51), !dbg !52
  %"22" = icmp slt i32 %"21", 1, !dbg !53
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !51), !dbg !52
  %. = select i1 %"22", i32 1, i32 %"21", !dbg !53
  %"23" = mul nsw i32 %., 1, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !57), !dbg !58
  %"24" = load i32* @"'memory0_freeIndex", align 4, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !60), !dbg !61
  %"25" = load i32* @"'memory0_freeIndex", align 4, !dbg !62
  %"26" = add nsw i32 %"25", %"23", !dbg !62
  store i32 %"26", i32* @"'memory0_freeIndex", align 4, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !63), !dbg !64
  %"27" = sub nsw i32 %., 1, !dbg !65
  %"28" = add nsw i32 %"24", %"27", !dbg !65
  %"29" = sext i32 %"28" to i64, !dbg !65
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !65
  store i8 0, i8* %"30", align 1, !dbg !65
  %"31" = call i32 @__VERIFIER_nondet_int(), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !67), !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !70), !dbg !71
  %"32" = trunc i32 %"31" to i8, !dbg !72
  %"33" = sext i8 %"32" to i32, !dbg !72
  br label %main_bb6, !dbg !73

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %.0.i = phi i32 [ %"24", %main_bb5 ], [ %"44", %main_bb8 ], !dbg !68
  %"34" = sext i32 %.0.i to i64, !dbg !74
  %"35" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"34", !dbg !74
  %"36" = load i8* %"35", align 1, !dbg !74
  %"37" = sext i8 %"36" to i32, !dbg !74
  %"38" = icmp ne i32 %"37", 0, !dbg !74
  br i1 %"38", label %main_bb7, label %main_cstrchr.exit, !dbg !74

main_bb7:                                         ; preds = %main_bb6
  %"39" = sext i32 %.0.i to i64, !dbg !72
  %"40" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"39", !dbg !72
  %"41" = load i8* %"40", align 1, !dbg !72
  %"42" = sext i8 %"41" to i32, !dbg !72
  %"43" = icmp ne i32 %"42", %"33", !dbg !72
  br i1 %"43", label %main_bb8, label %main_cstrchr.exit, !dbg !75

main_bb8:                                         ; preds = %main_bb7
  %"44" = add nsw i32 %.0.i, 1, !dbg !76
  br label %main_bb6, !dbg !76

main_cstrchr.exit:                                ; preds = %main_bb6, %main_bb7
  ret i32 0, !dbg !77
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrchr", metadata !"cstrchr", metadata !"", i32 18, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrchr, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [cstrchr]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 28, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 28] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !18, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !19, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!26 = metadata !{i32 12, i32 26, metadata !4, null}
!27 = metadata !{i32 13, i32 4, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!29 = metadata !{i32 13, i32 8, metadata !4, null}
!30 = metadata !{i32 14, i32 4, metadata !4, null}
!31 = metadata !{i32 15, i32 4, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 18]
!33 = metadata !{i32 18, i32 18, metadata !9, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554450, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 18]
!35 = metadata !{i32 18, i32 25, metadata !9, null}
!36 = metadata !{i32 23, i32 6, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 6, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 23, i32 6, metadata !9, null}
!39 = metadata !{i32 23, i32 6, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 6, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 23, i32 6, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 6, i32 3, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 24, i32 10, metadata !9, null}
!44 = metadata !{i32 25, i32 6, metadata !9, null}
!45 = metadata !{i32 25, i32 6, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 25, i32 6, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 25, i32 6, i32 4, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 6, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 29, i32 18, metadata !12, null}
!51 = metadata !{i32 786688, metadata !12, metadata !"length", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 29]
!52 = metadata !{i32 29, i32 9, metadata !12, null}
!53 = metadata !{i32 30, i32 9, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !12, i32 30, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 1}
!56 = metadata !{i32 33, i32 24, metadata !12, null}
!57 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !56} ; [ DW_TAG_arg_variable ] [size] [line 12]
!58 = metadata !{i32 12, i32 26, metadata !4, metadata !56}
!59 = metadata !{i32 13, i32 4, metadata !4, metadata !56}
!60 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !56} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!61 = metadata !{i32 13, i32 8, metadata !4, metadata !56}
!62 = metadata !{i32 14, i32 4, metadata !4, metadata !56}
!63 = metadata !{i32 786688, metadata !12, metadata !"nondetString", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 33]
!64 = metadata !{i32 33, i32 9, metadata !12, null}
!65 = metadata !{i32 34, i32 5, metadata !12, null}
!66 = metadata !{i32 35, i32 26, metadata !12, null}
!67 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777234, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [s] [line 18]
!68 = metadata !{i32 35, i32 5, metadata !12, null}
!69 = metadata !{i32 18, i32 18, metadata !9, metadata !68}
!70 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554450, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [c] [line 18]
!71 = metadata !{i32 18, i32 25, metadata !9, metadata !68}
!72 = metadata !{i32 23, i32 6, metadata !37, metadata !68}
!73 = metadata !{i32 23, i32 6, metadata !9, metadata !68}
!74 = metadata !{i32 23, i32 6, metadata !40, metadata !68}
!75 = metadata !{i32 23, i32 6, metadata !42, metadata !68}
!76 = metadata !{i32 24, i32 10, metadata !9, metadata !68}
!77 = metadata !{i32 36, i32 5, metadata !12, null}

