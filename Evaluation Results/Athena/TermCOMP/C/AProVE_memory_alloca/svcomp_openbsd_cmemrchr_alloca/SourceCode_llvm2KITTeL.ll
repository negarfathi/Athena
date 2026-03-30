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
define i32 @cmemrchr(i32 %s, i32 %c, i32 %n) #0 {
cmemrchr_bb1:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !36), !dbg !37
  %"3" = icmp ne i32 %n, 0, !dbg !38
  br i1 %"3", label %cmemrchr_bb2, label %cmemrchr_bb5, !dbg !38

cmemrchr_bb2:                                     ; preds = %cmemrchr_bb1
  %"4" = add nsw i32 %s, %n, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !42), !dbg !43
  %"5" = trunc i32 %c to i8, !dbg !44
  %"6" = zext i8 %"5" to i32, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !36), !dbg !37
  br label %cmemrchr_bb3, !dbg !47

cmemrchr_bb3:                                     ; preds = %cmemrchr_bb4, %cmemrchr_bb2
  %cp.0 = phi i32 [ %"4", %cmemrchr_bb2 ], [ %"7", %cmemrchr_bb4 ]
  %.01 = phi i32 [ %n, %cmemrchr_bb2 ], [ %"13", %cmemrchr_bb4 ]
  %"7" = add nsw i32 %cp.0, -1, !dbg !44
  %"8" = sext i32 %"7" to i64, !dbg !44
  %"9" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"8", !dbg !44
  %"10" = load i8* %"9", align 1, !dbg !44
  %"11" = sext i8 %"10" to i32, !dbg !44
  %"12" = icmp eq i32 %"11", %"6", !dbg !44
  br i1 %"12", label %cmemrchr_bb5, label %cmemrchr_bb4, !dbg !44

cmemrchr_bb4:                                     ; preds = %cmemrchr_bb3
  %"13" = add nsw i32 %.01, -1, !dbg !48
  %"14" = icmp ne i32 %"13", 0, !dbg !48
  br i1 %"14", label %cmemrchr_bb3, label %cmemrchr_bb5, !dbg !48

cmemrchr_bb5:                                     ; preds = %cmemrchr_bb1, %cmemrchr_bb4, %cmemrchr_bb3
  %.0 = phi i32 [ %"7", %cmemrchr_bb3 ], [ 0, %cmemrchr_bb4 ], [ 0, %cmemrchr_bb1 ]
  ret i32 %.0, !dbg !50
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"15" = call i32 @__VERIFIER_nondet_int(), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !52), !dbg !53
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !55), !dbg !56
  %"17" = call i32 @__VERIFIER_nondet_int(), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !58), !dbg !59
  %"18" = icmp slt i32 %"16", 1, !dbg !60
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !55), !dbg !56
  %n.0 = select i1 %"18", i32 1, i32 %"16", !dbg !60
  %"19" = mul nsw i32 %n.0, 1, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !64), !dbg !65
  %"20" = load i32* @"'memory0_freeIndex", align 4, !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !67), !dbg !68
  %"21" = load i32* @"'memory0_freeIndex", align 4, !dbg !69
  %"22" = add nsw i32 %"21", %"19", !dbg !69
  store i32 %"22", i32* @"'memory0_freeIndex", align 4, !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !70), !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !72), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !75), !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %n.0}, i64 0, metadata !77), !dbg !78
  %"23" = icmp ne i32 %n.0, 0, !dbg !79
  br i1 %"23", label %main_bb7, label %main_cmemrchr.exit, !dbg !79

main_bb7:                                         ; preds = %main_bb6
  %"24" = add nsw i32 %"20", %n.0, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !81), !dbg !82
  %"25" = trunc i32 %"17" to i8, !dbg !83
  %"26" = zext i8 %"25" to i32, !dbg !83
  br label %main_bb8, !dbg !84

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %cp.0.i = phi i32 [ %"24", %main_bb7 ], [ %"27", %main_bb9 ], !dbg !73
  %.01.i = phi i32 [ %n.0, %main_bb7 ], [ %"33", %main_bb9 ], !dbg !73
  %"27" = add nsw i32 %cp.0.i, -1, !dbg !83
  %"28" = sext i32 %"27" to i64, !dbg !83
  %"29" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"28", !dbg !83
  %"30" = load i8* %"29", align 1, !dbg !83
  %"31" = sext i8 %"30" to i32, !dbg !83
  %"32" = icmp eq i32 %"31", %"26", !dbg !83
  br i1 %"32", label %main_cmemrchr.exit, label %main_bb9, !dbg !83

main_bb9:                                         ; preds = %main_bb8
  %"33" = add nsw i32 %.01.i, -1, !dbg !85
  %"34" = icmp ne i32 %"33", 0, !dbg !85
  br i1 %"34", label %main_bb8, label %main_cmemrchr.exit, !dbg !85

main_cmemrchr.exit:                               ; preds = %main_bb6, %main_bb8, %main_bb9
  ret i32 0, !dbg !86
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cmemrchr", metadata !"cmemrchr", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @cmemrchr, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 20] [cmemrchr]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 33] [def] [main]
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
!32 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 19]
!33 = metadata !{i32 19, i32 14, metadata !9, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554451, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 19]
!35 = metadata !{i32 19, i32 21, metadata !9, null}
!36 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 50331667, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 19]
!37 = metadata !{i32 19, i32 28, metadata !9, null}
!38 = metadata !{i32 23, i32 6, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 24, i32 3, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 23, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786688, metadata !9, metadata !"cp", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 21]
!43 = metadata !{i32 21, i32 6, metadata !9, null}
!44 = metadata !{i32 26, i32 8, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 26, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !41, i32 25, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 25, i32 3, metadata !41, null}
!48 = metadata !{i32 28, i32 3, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !46, i32 28, i32 3, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 31, i32 1, metadata !9, null}
!51 = metadata !{i32 34, i32 16, metadata !12, null}
!52 = metadata !{i32 786688, metadata !12, metadata !"length", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 34]
!53 = metadata !{i32 34, i32 7, metadata !12, null}
!54 = metadata !{i32 35, i32 11, metadata !12, null}
!55 = metadata !{i32 786688, metadata !12, metadata !"n", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 35]
!56 = metadata !{i32 35, i32 7, metadata !12, null}
!57 = metadata !{i32 36, i32 11, metadata !12, null}
!58 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 36]
!59 = metadata !{i32 36, i32 7, metadata !12, null}
!60 = metadata !{i32 40, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !12, i32 40, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 1}
!63 = metadata !{i32 43, i32 20, metadata !12, null}
!64 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !63} ; [ DW_TAG_arg_variable ] [size] [line 12]
!65 = metadata !{i32 12, i32 26, metadata !4, metadata !63}
!66 = metadata !{i32 13, i32 4, metadata !4, metadata !63}
!67 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !63} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!68 = metadata !{i32 13, i32 8, metadata !4, metadata !63}
!69 = metadata !{i32 14, i32 4, metadata !4, metadata !63}
!70 = metadata !{i32 786688, metadata !12, metadata !"nondetArea", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 43]
!71 = metadata !{i32 43, i32 7, metadata !12, null}
!72 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777235, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [s] [line 19]
!73 = metadata !{i32 44, i32 3, metadata !12, null}
!74 = metadata !{i32 19, i32 14, metadata !9, metadata !73}
!75 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554451, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [c] [line 19]
!76 = metadata !{i32 19, i32 21, metadata !9, metadata !73}
!77 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 50331667, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [n] [line 19]
!78 = metadata !{i32 19, i32 28, metadata !9, metadata !73}
!79 = metadata !{i32 23, i32 6, metadata !39, metadata !73}
!80 = metadata !{i32 24, i32 3, metadata !41, metadata !73}
!81 = metadata !{i32 786688, metadata !9, metadata !"cp", metadata !5, i32 21, metadata !8, i32 0, metadata !73} ; [ DW_TAG_auto_variable ] [cp] [line 21]
!82 = metadata !{i32 21, i32 6, metadata !9, metadata !73}
!83 = metadata !{i32 26, i32 8, metadata !45, metadata !73}
!84 = metadata !{i32 25, i32 3, metadata !41, metadata !73}
!85 = metadata !{i32 28, i32 3, metadata !49, metadata !73}
!86 = metadata !{i32 45, i32 3, metadata !12, null}

