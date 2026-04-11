; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !21), !dbg !22
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !24), !dbg !25
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !26
  %"2" = add nsw i32 %"1", %size, !dbg !26
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !26
  ret i32 %"0", !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !29), !dbg !30
  %"4" = icmp slt i32 %"3", 1, !dbg !31
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !29), !dbg !30
  %. = select i1 %"4", i32 1, i32 %"3", !dbg !31
  %"5" = srem i32 %., 2, !dbg !34
  %"6" = icmp eq i32 %"5", 0, !dbg !34
  %"7" = add nsw i32 %., 1, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !29), !dbg !30
  %length.1 = select i1 %"6", i32 %"7", i32 %., !dbg !34
  %"8" = mul nsw i32 %length.1, 1, !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !39), !dbg !40
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !42), !dbg !43
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !44
  %"11" = add nsw i32 %"10", %"8", !dbg !44
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !48), !dbg !49
  br label %main_bb2, !dbg !50

main_bb2:                                         ; preds = %main_bb5, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"22", %main_bb5 ]
  %"12" = icmp slt i32 %i.0, %length.1, !dbg !52
  br i1 %"12", label %main_bb3, label %main_bb6, !dbg !52

main_bb3:                                         ; preds = %main_bb2
  %"13" = add nsw i32 %"9", %i.0, !dbg !55
  %"14" = sext i32 %"13" to i64, !dbg !55
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !55
  %"16" = load i32* %"15", align 4, !dbg !55
  %"17" = icmp eq i32 %"16", 0, !dbg !55
  br i1 %"17", label %main_bb4, label %main_bb5, !dbg !55

main_bb4:                                         ; preds = %main_bb3
  %"18" = sext i32 %"13" to i64, !dbg !58
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !58
  %"20" = load i32* %"19", align 4, !dbg !58
  %"21" = add nsw i32 %"20", 1, !dbg !58
  store i32 %"21", i32* %"19", align 4, !dbg !58
  br label %main_bb5, !dbg !58

main_bb5:                                         ; preds = %main_bb3, %main_bb4
  %"22" = add nsw i32 %i.0, 1, !dbg !60
  br label %main_bb2, !dbg !60

main_bb6:                                         ; preds = %main_bb2
  %"23" = sdiv i32 %length.1, 2, !dbg !61
  %"24" = add nsw i32 %"23", 1, !dbg !61
  %"25" = add nsw i32 %"9", %"24", !dbg !61
  %"26" = sext i32 %"25" to i64, !dbg !61
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !61
  store i32 0, i32* %"27", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !62), !dbg !63
  %"28" = add nsw i32 %"9", %length.1, !dbg !64
  %"29" = sub nsw i32 %"28", 1, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !65), !dbg !66
  br label %main_bb7, !dbg !69

main_bb7:                                         ; preds = %main_bb9, %main_bb6
  %a.0 = phi i32 [ %"9", %main_bb6 ], [ %"48", %main_bb9 ]
  %b.0 = phi i32 [ %"29", %main_bb6 ], [ %"49", %main_bb9 ]
  %"30" = sext i32 %a.0 to i64, !dbg !70
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !70
  %"32" = load i32* %"31", align 4, !dbg !70
  %"33" = icmp ne i32 %"32", 0, !dbg !70
  br i1 %"33", label %main_bb8, label %main_.critedge, !dbg !70

main_bb8:                                         ; preds = %main_bb7
  %"34" = sext i32 %b.0 to i64, !dbg !72
  %"35" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"34", !dbg !72
  %"36" = load i32* %"35", align 4, !dbg !72
  %"37" = icmp ne i32 %"36", 0, !dbg !72
  br i1 %"37", label %main_bb9, label %main_.critedge, !dbg !74

main_bb9:                                         ; preds = %main_bb8
  %"38" = sext i32 %a.0 to i64, !dbg !76
  %"39" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"38", !dbg !76
  %"40" = load i32* %"39", align 4, !dbg !76
  %"41" = sext i32 %b.0 to i64, !dbg !78
  %"42" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"41", !dbg !78
  %"43" = load i32* %"42", align 4, !dbg !78
  %"44" = sext i32 %a.0 to i64, !dbg !78
  %"45" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"44", !dbg !78
  store i32 %"43", i32* %"45", align 4, !dbg !78
  %"46" = sext i32 %b.0 to i64, !dbg !79
  %"47" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"46", !dbg !79
  store i32 %"40", i32* %"47", align 4, !dbg !79
  %"48" = add nsw i32 %a.0, 1, !dbg !80
  %"49" = add nsw i32 %b.0, -1, !dbg !81
  br label %main_bb7, !dbg !82

main_.critedge:                                   ; preds = %main_bb7, %main_bb8
  ret i32 0, !dbg !83
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 7] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 6, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 6] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 5, metadata !15, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 5] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !16, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!18 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!19 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!20 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777223, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 7]
!22 = metadata !{i32 7, i32 26, metadata !4, null}
!23 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!24 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 8]
!25 = metadata !{i32 8, i32 8, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!26 = metadata !{i32 9, i32 4, metadata !4, null}
!27 = metadata !{i32 10, i32 4, metadata !4, null}
!28 = metadata !{i32 15, i32 16, metadata !9, null}
!29 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 15]
!30 = metadata !{i32 15, i32 7, metadata !9, null}
!31 = metadata !{i32 16, i32 7, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !9, i32 16, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 1}
!34 = metadata !{i32 18, i32 7, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 18, i32 24, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !35, i32 18, i32 24, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 19, i32 13, metadata !9, null}
!39 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777223, metadata !8, i32 0, metadata !38} ; [ DW_TAG_arg_variable ] [size] [line 7]
!40 = metadata !{i32 7, i32 26, metadata !4, metadata !38}
!41 = metadata !{i32 8, i32 4, metadata !4, metadata !38} ; [ DW_TAG_imported_declaration ]
!42 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 8, metadata !8, i32 0, metadata !38} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 8]
!43 = metadata !{i32 8, i32 8, metadata !4, metadata !38} ; [ DW_TAG_imported_declaration ]
!44 = metadata !{i32 9, i32 4, metadata !4, metadata !38}
!45 = metadata !{i32 786688, metadata !9, metadata !"arr", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arr] [line 19]
!46 = metadata !{i32 19, i32 7, metadata !9, null}
!47 = metadata !{i32 0}
!48 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 14]
!49 = metadata !{i32 14, i32 7, metadata !9, null}
!50 = metadata !{i32 21, i32 8, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 21, i32 8, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !54, i32 21, i32 8, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 786443, metadata !1, metadata !51, i32 21, i32 8, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 22, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 22, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !51, i32 21, i32 28, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 22, i32 37, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !56, i32 22, i32 37, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 21, i32 23, metadata !51, null}
!61 = metadata !{i32 25, i32 3, metadata !9, null}
!62 = metadata !{i32 786688, metadata !9, metadata !"a", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 27]
!63 = metadata !{i32 27, i32 7, metadata !9, null}
!64 = metadata !{i32 29, i32 3, metadata !9, null}
!65 = metadata !{i32 786688, metadata !9, metadata !"b", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 29]
!66 = metadata !{i32 29, i32 7, metadata !9, null}
!67 = metadata !{i32 786688, metadata !9, metadata !"tmp", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 14]
!68 = metadata !{i32 14, i32 13, metadata !9, null}
!69 = metadata !{i32 31, i32 3, metadata !9, null}
!70 = metadata !{i32 31, i32 3, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 3, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 31, i32 3, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 3, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 31, i32 3, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 3, i32 3, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 32, i32 5, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 46, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 33, i32 5, metadata !77, null}
!79 = metadata !{i32 34, i32 5, metadata !77, null}
!80 = metadata !{i32 35, i32 5, metadata !77, null}
!81 = metadata !{i32 36, i32 5, metadata !77, null}
!82 = metadata !{i32 37, i32 3, metadata !77, null}
!83 = metadata !{i32 38, i32 3, metadata !9, null}

