; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !24), !dbg !25
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !26
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !27), !dbg !28
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !29
  %"2" = add nsw i32 %"1", %size, !dbg !29
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !29
  ret i32 %"0", !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !31), !dbg !32
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !34), !dbg !35
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !36
  %"5" = add nsw i32 %"4", %size, !dbg !36
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !36
  ret i32 %"3", !dbg !37
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb2:
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !39), !dbg !41
  %"6" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !43), !dbg !44
  %"7" = load i32* @"'memory1_freeIndex", align 4, !dbg !45
  %"8" = add nsw i32 %"7", 1, !dbg !45
  store i32 %"8", i32* @"'memory1_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !48), !dbg !50
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !52), !dbg !53
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !54
  %"11" = add nsw i32 %"10", 1, !dbg !54
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !55), !dbg !56
  %"12" = sext i32 %"6" to i64, !dbg !57
  %"13" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"12", !dbg !57
  %"14" = sext i32 %"9" to i64, !dbg !59
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !59
  %"16" = sext i32 %"6" to i64, !dbg !61
  %"17" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"16", !dbg !61
  %"18" = sext i32 %"9" to i64, !dbg !61
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !61
  %"20" = sext i32 %"6" to i64, !dbg !66
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !66
  %"22" = sext i32 %"9" to i64, !dbg !66
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !66
  %"24" = sext i32 %"6" to i64, !dbg !68
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !68
  %"26" = sext i32 %"9" to i64, !dbg !69
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !69
  %"28" = sext i32 %"9" to i64, !dbg !69
  %"29" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"28", !dbg !69
  %"30" = sext i32 %"6" to i64, !dbg !71
  %"31" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"30", !dbg !71
  %"32" = sext i32 %"9" to i64, !dbg !71
  %"33" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"32", !dbg !71
  %"34" = sext i32 %"6" to i64, !dbg !74
  %"35" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"34", !dbg !74
  %"36" = sext i32 %"6" to i64, !dbg !74
  %"37" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"36", !dbg !74
  %"38" = sext i32 %"9" to i64, !dbg !76
  %"39" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"38", !dbg !76
  %"40" = sext i32 %"9" to i64, !dbg !77
  %"41" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"40", !dbg !77
  %"42" = sext i32 %"6" to i64, !dbg !77
  %"43" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"42", !dbg !77
  br label %main_bb3, !dbg !79

main_bb3:                                         ; preds = %main_bb9, %main_bb13, %main_bb2
  %"44" = load i32* %"13", align 4, !dbg !57
  %"45" = icmp sgt i32 %"44", 0, !dbg !57
  br i1 %"45", label %main_bb4, label %main_.critedge, !dbg !57

main_bb4:                                         ; preds = %main_bb3
  %"46" = load i32* %"15", align 4, !dbg !59
  %"47" = icmp sgt i32 %"46", 0, !dbg !59
  br i1 %"47", label %main_bb5, label %main_.critedge, !dbg !80

main_bb5:                                         ; preds = %main_bb4
  %"48" = call i32 @__VERIFIER_nondet_int(), !dbg !82
  %"49" = icmp ne i32 %"48", 0, !dbg !82
  br i1 %"49", label %main_bb6, label %main_bb10, !dbg !82

main_bb6:                                         ; preds = %main_bb5
  %"50" = load i32* %"17", align 4, !dbg !61
  %"51" = load i32* %"19", align 4, !dbg !61
  %"52" = icmp slt i32 %"50", %"51", !dbg !61
  br i1 %"52", label %main_bb7, label %main_bb8, !dbg !61

main_bb7:                                         ; preds = %main_bb6
  %"53" = load i32* %"21", align 4, !dbg !66
  %"54" = sub nsw i32 %"53", 1, !dbg !66
  store i32 %"54", i32* %"23", align 4, !dbg !66
  br label %main_bb9, !dbg !83

main_bb8:                                         ; preds = %main_bb6
  %"55" = load i32* %"27", align 4, !dbg !69
  %"56" = sub nsw i32 %"55", 1, !dbg !69
  store i32 %"56", i32* %"29", align 4, !dbg !69
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7
  %"57" = call i32 @__VERIFIER_nondet_int(), !dbg !68
  store i32 %"57", i32* %"25", align 4, !dbg !68
  br label %main_bb3, !dbg !84

main_bb10:                                        ; preds = %main_bb5
  %"58" = load i32* %"31", align 4, !dbg !71
  %"59" = load i32* %"33", align 4, !dbg !71
  %"60" = icmp slt i32 %"58", %"59", !dbg !71
  br i1 %"60", label %main_bb11, label %main_bb12, !dbg !71

main_bb11:                                        ; preds = %main_bb10
  %"61" = load i32* %"35", align 4, !dbg !74
  %"62" = sub nsw i32 %"61", 1, !dbg !74
  store i32 %"62", i32* %"37", align 4, !dbg !74
  br label %main_bb13, !dbg !85

main_bb12:                                        ; preds = %main_bb10
  %"63" = load i32* %"41", align 4, !dbg !77
  %"64" = sub nsw i32 %"63", 1, !dbg !77
  store i32 %"64", i32* %"43", align 4, !dbg !77
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"65" = call i32 @__VERIFIER_nondet_int(), !dbg !76
  store i32 %"65", i32* %"39", align 4, !dbg !76
  br label %main_bb3

main_.critedge:                                   ; preds = %main_bb3, %main_bb4
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
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !20}
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !17, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !17, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!24 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!25 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!26 = metadata !{i32 9, i32 4, metadata !4, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!28 = metadata !{i32 9, i32 8, metadata !4, null}
!29 = metadata !{i32 10, i32 4, metadata !4, null}
!30 = metadata !{i32 11, i32 4, metadata !4, null}
!31 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!32 = metadata !{i32 17, i32 26, metadata !9, null}
!33 = metadata !{i32 18, i32 4, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!35 = metadata !{i32 18, i32 8, metadata !9, null}
!36 = metadata !{i32 19, i32 4, metadata !9, null}
!37 = metadata !{i32 20, i32 4, metadata !9, null}
!38 = metadata !{i32 1}
!39 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !40} ; [ DW_TAG_arg_variable ] [size] [line 17]
!40 = metadata !{i32 24, i32 13, metadata !10, null}
!41 = metadata !{i32 17, i32 26, metadata !9, metadata !40}
!42 = metadata !{i32 18, i32 4, metadata !9, metadata !40}
!43 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !40} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!44 = metadata !{i32 18, i32 8, metadata !9, metadata !40}
!45 = metadata !{i32 19, i32 4, metadata !9, metadata !40}
!46 = metadata !{i32 786688, metadata !10, metadata !"x", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 24]
!47 = metadata !{i32 24, i32 9, metadata !10, null}
!48 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [size] [line 8]
!49 = metadata !{i32 25, i32 13, metadata !10, null}
!50 = metadata !{i32 8, i32 26, metadata !4, metadata !49} ; [ DW_TAG_imported_declaration ]
!51 = metadata !{i32 9, i32 4, metadata !4, metadata !49}
!52 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !49} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!53 = metadata !{i32 9, i32 8, metadata !4, metadata !49}
!54 = metadata !{i32 10, i32 4, metadata !4, metadata !49}
!55 = metadata !{i32 786688, metadata !10, metadata !"y", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 25]
!56 = metadata !{i32 25, i32 9, metadata !10, null}
!57 = metadata !{i32 26, i32 5, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 5, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 26, i32 5, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 5, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 28, i32 17, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 28, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 27, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 27, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 46, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 29, i32 17, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !62, i32 28, i32 42, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 33, i32 26, metadata !63, null}
!69 = metadata !{i32 31, i32 17, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !62, i32 30, i32 20, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 35, i32 17, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 35, i32 17, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !64, i32 34, i32 16, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 36, i32 17, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !72, i32 35, i32 42, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 40, i32 26, metadata !73, null}
!77 = metadata !{i32 38, i32 17, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !72, i32 37, i32 20, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 26, i32 5, metadata !10, null}
!80 = metadata !{i32 26, i32 5, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !10, i32 26, i32 5, i32 3, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 27, i32 13, metadata !64, null}
!83 = metadata !{i32 30, i32 13, metadata !67, null}
!84 = metadata !{i32 34, i32 9, metadata !63, null}
!85 = metadata !{i32 37, i32 13, metadata !75, null}
!86 = metadata !{i32 43, i32 1, metadata !10, null}

