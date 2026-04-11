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
define i32 @strchr(i32 %str, i32 %c) #0 {
strchr_bb1:
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !32), !dbg !33
  br label %strchr_bb2, !dbg !36

strchr_bb2:                                       ; preds = %strchr_bb4, %strchr_bb1
  %.01 = phi i32 [ %str, %strchr_bb1 ], [ %"13", %strchr_bb4 ]
  %"3" = sext i32 %.01 to i64, !dbg !38
  %"4" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"3", !dbg !38
  %"5" = load i8* %"4", align 1, !dbg !38
  %"6" = sext i8 %"5" to i32, !dbg !38
  %"7" = icmp ne i32 %"6", 0, !dbg !38
  br i1 %"7", label %strchr_bb3, label %strchr_bb5, !dbg !38

strchr_bb3:                                       ; preds = %strchr_bb2
  %"8" = sext i32 %.01 to i64, !dbg !41
  %"9" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"8", !dbg !41
  %"10" = load i8* %"9", align 1, !dbg !41
  %"11" = sext i8 %"10" to i32, !dbg !41
  %"12" = icmp eq i32 %"11", %c, !dbg !41
  br i1 %"12", label %strchr_bb5, label %strchr_bb4, !dbg !41

strchr_bb4:                                       ; preds = %strchr_bb3
  %"13" = add nsw i32 %.01, 1, !dbg !44
  br label %strchr_bb2, !dbg !44

strchr_bb5:                                       ; preds = %strchr_bb2, %strchr_bb3
  %.0 = phi i32 [ %.01, %strchr_bb3 ], [ 0, %strchr_bb2 ]
  ret i32 %.0, !dbg !45
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !47), !dbg !49
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !51), !dbg !52
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !53
  %"16" = add nsw i32 %"15", 100, !dbg !53
  store i32 %"16", i32* @"'memory0_freeIndex", align 4, !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !57), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !57), !dbg !59
  br label %main_bb7, !dbg !60

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %i.0 = phi i32 [ 0, %main_bb6 ], [ %"21", %main_bb8 ]
  %"17" = icmp slt i32 %i.0, 99, !dbg !61
  br i1 %"17", label %main_bb8, label %main_bb9, !dbg !61

main_bb8:                                         ; preds = %main_bb7
  %"18" = add nsw i32 %"14", %i.0, !dbg !64
  %"19" = sext i32 %"18" to i64, !dbg !64
  %"20" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"19", !dbg !64
  store i8 10, i8* %"20", align 1, !dbg !64
  %"21" = add nsw i32 %i.0, 1, !dbg !65
  br label %main_bb7, !dbg !65

main_bb9:                                         ; preds = %main_bb7
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !66), !dbg !67
  %"22" = add nsw i32 %"14", 99, !dbg !68
  %"23" = sext i32 %"22" to i64, !dbg !68
  %"24" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"23", !dbg !68
  store i8 0, i8* %"24", align 1, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !69), !dbg !72
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !74), !dbg !75
  br label %main_bb10, !dbg !76

main_bb10:                                        ; preds = %main_strchr.exit, %main_bb9
  %p.0 = phi i32 [ %"14", %main_bb9 ], [ %"42", %main_strchr.exit ]
  %"25" = sext i32 %p.0 to i64, !dbg !77
  %"26" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"25", !dbg !77
  %"27" = load i8* %"26", align 1, !dbg !77
  %"28" = icmp ne i8 %"27", 0, !dbg !77
  br i1 %"28", label %main_bb11, label %main_bb14, !dbg !77

main_bb11:                                        ; preds = %main_bb10, %main_bb13
  %.01.i = phi i32 [ %"39", %main_bb13 ], [ %p.0, %main_bb10 ], !dbg !70
  %"29" = sext i32 %.01.i to i64, !dbg !79
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !79
  %"31" = load i8* %"30", align 1, !dbg !79
  %"32" = sext i8 %"31" to i32, !dbg !79
  %"33" = icmp ne i32 %"32", 0, !dbg !79
  br i1 %"33", label %main_bb12, label %main_strchr.exit, !dbg !79

main_bb12:                                        ; preds = %main_bb11
  %"34" = sext i32 %.01.i to i64, !dbg !80
  %"35" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"34", !dbg !80
  %"36" = load i8* %"35", align 1, !dbg !80
  %"37" = sext i8 %"36" to i32, !dbg !80
  %"38" = icmp eq i32 %"37", 10, !dbg !80
  br i1 %"38", label %main_strchr.exit, label %main_bb13, !dbg !80

main_bb13:                                        ; preds = %main_bb12
  %"39" = add nsw i32 %.01.i, 1, !dbg !81
  br label %main_bb11, !dbg !81

main_strchr.exit:                                 ; preds = %main_bb11, %main_bb12
  %.0.i = phi i32 [ %.01.i, %main_bb12 ], [ 0, %main_bb11 ], !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !82), !dbg !83
  %"40" = icmp eq i32 %.0.i, 0, !dbg !84
  %"41" = add nsw i32 %p.0, 99, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !82), !dbg !83
  %..0.i = select i1 %"40", i32 %"41", i32 %.0.i, !dbg !84
  %"42" = add nsw i32 %..0.i, 1, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !66), !dbg !67
  br label %main_bb10, !dbg !88

main_bb14:                                        ; preds = %main_bb10
  ret i32 0, !dbg !89
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strchr", metadata !"strchr", metadata !"", i32 17, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @strchr, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [strchr]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 26, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 27] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 10, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 10] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 9, metadata !18, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 9] [def]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !19, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 11]
!26 = metadata !{i32 11, i32 26, metadata !4, null}
!27 = metadata !{i32 12, i32 4, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 12]
!29 = metadata !{i32 12, i32 8, metadata !4, null}
!30 = metadata !{i32 13, i32 4, metadata !4, null}
!31 = metadata !{i32 14, i32 4, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 17]
!33 = metadata !{i32 17, i32 16, metadata !9, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554449, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 17]
!35 = metadata !{i32 17, i32 25, metadata !9, null}
!36 = metadata !{i32 18, i32 2, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 18, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 18, i32 2, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 786443, metadata !1, metadata !37, i32 18, i32 2, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 19, i32 7, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 19, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 786443, metadata !1, metadata !37, i32 18, i32 35, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 18, i32 28, metadata !37, null}
!45 = metadata !{i32 24, i32 1, metadata !9, null}
!46 = metadata !{i32 100}
!47 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777227, metadata !8, i32 0, metadata !48} ; [ DW_TAG_arg_variable ] [size] [line 11]
!48 = metadata !{i32 28, i32 20, metadata !12, null}
!49 = metadata !{i32 11, i32 26, metadata !4, metadata !48}
!50 = metadata !{i32 12, i32 4, metadata !4, metadata !48}
!51 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 12, metadata !8, i32 0, metadata !48} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 12]
!52 = metadata !{i32 12, i32 8, metadata !4, metadata !48}
!53 = metadata !{i32 13, i32 4, metadata !4, metadata !48}
!54 = metadata !{i32 786688, metadata !12, metadata !"in_index", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_index] [line 28]
!55 = metadata !{i32 28, i32 9, metadata !12, null}
!56 = metadata !{i32 0}
!57 = metadata !{i32 786688, metadata !58, metadata !"i", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 29]
!58 = metadata !{i32 786443, metadata !1, metadata !12, i32 29, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 29, i32 14, metadata !58, null}
!60 = metadata !{i32 29, i32 10, metadata !58, null}
!61 = metadata !{i32 29, i32 10, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 29, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 786443, metadata !1, metadata !58, i32 29, i32 10, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 30, i32 9, metadata !58, null}
!65 = metadata !{i32 29, i32 31, metadata !58, null}
!66 = metadata !{i32 786688, metadata !12, metadata !"p", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 31]
!67 = metadata !{i32 31, i32 9, metadata !12, null}
!68 = metadata !{i32 32, i32 5, metadata !12, null}
!69 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777233, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [str] [line 17]
!70 = metadata !{i32 35, i32 16, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !12, i32 34, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 17, i32 16, metadata !9, metadata !70}
!73 = metadata !{i32 10}
!74 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554449, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [c] [line 17]
!75 = metadata !{i32 17, i32 25, metadata !9, metadata !70}
!76 = metadata !{i32 33, i32 5, metadata !12, null}
!77 = metadata !{i32 33, i32 5, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !12, i32 33, i32 5, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 18, i32 2, metadata !39, metadata !70}
!80 = metadata !{i32 19, i32 7, metadata !42, metadata !70}
!81 = metadata !{i32 18, i32 28, metadata !37, metadata !70}
!82 = metadata !{i32 786688, metadata !71, metadata !"n", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 35]
!83 = metadata !{i32 35, i32 13, metadata !71, null}
!84 = metadata !{i32 36, i32 13, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !71, i32 36, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 37, i32 13, metadata !85, null}
!87 = metadata !{i32 38, i32 9, metadata !71, null}
!88 = metadata !{i32 39, i32 5, metadata !71, null}
!89 = metadata !{i32 40, i32 5, metadata !12, null}

