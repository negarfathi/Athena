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
  %"5" = mul nsw i32 %., 1, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !35), !dbg !36
  %"6" = load i32* @"'memory0_freeIndex", align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !38), !dbg !39
  %"7" = load i32* @"'memory0_freeIndex", align 4, !dbg !40
  %"8" = add nsw i32 %"7", %"5", !dbg !40
  store i32 %"8", i32* @"'memory0_freeIndex", align 4, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !41), !dbg !42
  %"9" = icmp ne i32 %"6", 0, !dbg !43
  br i1 %"9", label %main_bb2, label %main_bb8, !dbg !43

main_bb2:                                         ; preds = %main_bb1, %main_bb3
  %i.0 = phi i32 [ %"16", %main_bb3 ], [ 0, %main_bb1 ]
  %"10" = icmp slt i32 %i.0, %., !dbg !45
  br i1 %"10", label %main_bb3, label %main_bb4, !dbg !45

main_bb3:                                         ; preds = %main_bb2
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !49
  %"12" = icmp slt i32 %"11", 0, !dbg !51
  %.1 = select i1 %"12", i32 0, i32 %"11", !dbg !51
  %"13" = add nsw i32 %"6", %i.0, !dbg !53
  %"14" = sext i32 %"13" to i64, !dbg !53
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !53
  store i32 %.1, i32* %"15", align 4, !dbg !53
  %"16" = add nsw i32 %i.0, 1, !dbg !54
  br label %main_bb2, !dbg !54

main_bb4:                                         ; preds = %main_bb2, %main_bb7
  %j.0 = phi i32 [ %"28", %main_bb7 ], [ 0, %main_bb2 ]
  %"17" = icmp slt i32 %j.0, %., !dbg !55
  br i1 %"17", label %main_bb5, label %main_bb8, !dbg !55

main_bb5:                                         ; preds = %main_bb4, %main_bb6
  %"18" = add nsw i32 %"6", %j.0, !dbg !59
  %"19" = sext i32 %"18" to i64, !dbg !59
  %"20" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"19", !dbg !59
  %"21" = load i32* %"20", align 4, !dbg !59
  %"22" = icmp sgt i32 %"21", 0, !dbg !59
  br i1 %"22", label %main_bb6, label %main_bb7, !dbg !59

main_bb6:                                         ; preds = %main_bb5
  %"23" = add nsw i32 %"6", %j.0, !dbg !62
  %"24" = sext i32 %"23" to i64, !dbg !62
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !62
  %"26" = load i32* %"25", align 4, !dbg !62
  %"27" = add nsw i32 %"26", -1, !dbg !62
  store i32 %"27", i32* %"25", align 4, !dbg !62
  br label %main_bb5, !dbg !64

main_bb7:                                         ; preds = %main_bb5
  %"28" = add nsw i32 %j.0, 1, !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !66), !dbg !67
  br label %main_bb4, !dbg !65

main_bb8:                                         ; preds = %main_bb4, %main_bb1
  ret i32 0, !dbg !68
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
!28 = metadata !{i32 16, i32 16, metadata !9, null}
!29 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 16]
!30 = metadata !{i32 16, i32 7, metadata !9, null}
!31 = metadata !{i32 17, i32 7, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !9, i32 17, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 1}
!34 = metadata !{i32 18, i32 13, metadata !9, null}
!35 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777223, metadata !8, i32 0, metadata !34} ; [ DW_TAG_arg_variable ] [size] [line 7]
!36 = metadata !{i32 7, i32 26, metadata !4, metadata !34}
!37 = metadata !{i32 8, i32 4, metadata !4, metadata !34} ; [ DW_TAG_imported_declaration ]
!38 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 8, metadata !8, i32 0, metadata !34} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 8]
!39 = metadata !{i32 8, i32 8, metadata !4, metadata !34} ; [ DW_TAG_imported_declaration ]
!40 = metadata !{i32 9, i32 4, metadata !4, metadata !34}
!41 = metadata !{i32 786688, metadata !9, metadata !"arr", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arr] [line 18]
!42 = metadata !{i32 18, i32 7, metadata !9, null}
!43 = metadata !{i32 19, i32 7, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !9, i32 19, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 20, i32 8, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 20, i32 8, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786443, metadata !1, metadata !48, i32 20, i32 8, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 786443, metadata !1, metadata !9, i32 20, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 21, i32 11, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !48, i32 20, i32 28, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 22, i32 9, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !50, i32 22, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 25, i32 5, metadata !50, null}
!54 = metadata !{i32 20, i32 23, metadata !48, null}
!55 = metadata !{i32 27, i32 8, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 27, i32 8, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 27, i32 8, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 786443, metadata !1, metadata !9, i32 27, i32 3, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 28, i32 5, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 28, i32 5, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 27, i32 28, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 29, i32 7, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 28, i32 36, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 30, i32 5, metadata !63, null}
!65 = metadata !{i32 27, i32 23, metadata !58, null}
!66 = metadata !{i32 786688, metadata !9, metadata !"j", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 14]
!67 = metadata !{i32 14, i32 10, metadata !9, null}
!68 = metadata !{i32 33, i32 1, metadata !9, null}

