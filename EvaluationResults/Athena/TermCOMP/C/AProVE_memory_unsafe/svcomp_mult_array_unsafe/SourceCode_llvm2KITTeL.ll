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
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !39), !dbg !40
  %"7" = icmp slt i32 %"6", 1, !dbg !41
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !39), !dbg !40
  %. = select i1 %"7", i32 1, i32 %"6", !dbg !41
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !45), !dbg !46
  %"9" = icmp slt i32 %"8", 1, !dbg !47
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !45), !dbg !46
  %fac.0 = select i1 %"9", i32 1, i32 %"8", !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !49), !dbg !51
  %"10" = load i32* @"'memory1_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !53), !dbg !54
  %"11" = load i32* @"'memory1_freeIndex", align 4, !dbg !55
  %"12" = add nsw i32 %"11", %., !dbg !55
  store i32 %"12", i32* @"'memory1_freeIndex", align 4, !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !56), !dbg !57
  %"13" = mul nsw i32 %fac.0, %., !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !59), !dbg !60
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !62), !dbg !63
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !64
  %"16" = add nsw i32 %"15", %"13", !dbg !64
  store i32 %"16", i32* @"'memory0_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !65), !dbg !66
  %"17" = icmp ne i32 %"10", 0, !dbg !67
  %"18" = icmp ne i32 %"14", 0, !dbg !69
  %or.cond = and i1 %"17", %"18", !dbg !67
  br i1 %or.cond, label %main_bb3, label %main_bb8, !dbg !67

main_bb3:                                         ; preds = %main_bb2, %main_bb4
  %i.0 = phi i32 [ %"24", %main_bb4 ], [ 0, %main_bb2 ]
  %"19" = icmp slt i32 %i.0, %., !dbg !71
  br i1 %"19", label %main_bb4, label %main_bb5, !dbg !71

main_bb4:                                         ; preds = %main_bb3
  %"20" = call i32 @__VERIFIER_nondet_int(), !dbg !75
  %"21" = add nsw i32 %"10", %i.0, !dbg !75
  %"22" = sext i32 %"21" to i64, !dbg !75
  %"23" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"22", !dbg !75
  store i32 %"20", i32* %"23", align 4, !dbg !75
  %"24" = add nsw i32 %i.0, 1, !dbg !77
  br label %main_bb3, !dbg !77

main_bb5:                                         ; preds = %main_bb3
  call void @llvm.dbg.value(metadata !78, i64 0, metadata !79), !dbg !80
  %"25" = srem i32 %i.0, %., !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !79), !dbg !80
  br label %main_bb6, !dbg !84

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %j.0 = phi i32 [ 0, %main_bb5 ], [ %"35", %main_bb7 ]
  %"26" = mul nsw i32 %., %fac.0, !dbg !85
  %"27" = icmp slt i32 %j.0, %"26", !dbg !85
  br i1 %"27", label %main_bb7, label %main_bb8, !dbg !85

main_bb7:                                         ; preds = %main_bb6
  %"28" = add nsw i32 %"10", %"25", !dbg !81
  %"29" = sext i32 %"28" to i64, !dbg !81
  %"30" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"29", !dbg !81
  %"31" = load i32* %"30", align 4, !dbg !81
  %"32" = add nsw i32 %"14", %j.0, !dbg !81
  %"33" = sext i32 %"32" to i64, !dbg !81
  %"34" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"33", !dbg !81
  store i32 %"31", i32* %"34", align 4, !dbg !81
  %"35" = add nsw i32 %j.0, 1, !dbg !88
  br label %main_bb6, !dbg !88

main_bb8:                                         ; preds = %main_bb6, %main_bb2
  ret i32 0, !dbg !89
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 7, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 7] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 16, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !20}
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 6, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 6] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 15, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 15] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 5, metadata !17, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 5] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 14, metadata !17, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 14] [def]
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!24 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777223, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 7]
!25 = metadata !{i32 7, i32 26, metadata !4, null}
!26 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 8, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 8]
!28 = metadata !{i32 8, i32 8, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!29 = metadata !{i32 9, i32 4, metadata !4, null}
!30 = metadata !{i32 10, i32 4, metadata !4, null}
!31 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777232, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 16]
!32 = metadata !{i32 16, i32 26, metadata !9, null}
!33 = metadata !{i32 17, i32 4, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 17]
!35 = metadata !{i32 17, i32 8, metadata !9, null}
!36 = metadata !{i32 18, i32 4, metadata !9, null}
!37 = metadata !{i32 19, i32 4, metadata !9, null}
!38 = metadata !{i32 24, i32 16, metadata !10, null}
!39 = metadata !{i32 786688, metadata !10, metadata !"length", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 24]
!40 = metadata !{i32 24, i32 7, metadata !10, null}
!41 = metadata !{i32 25, i32 7, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !10, i32 25, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 1}
!44 = metadata !{i32 26, i32 13, metadata !10, null}
!45 = metadata !{i32 786688, metadata !10, metadata !"fac", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fac] [line 26]
!46 = metadata !{i32 26, i32 7, metadata !10, null}
!47 = metadata !{i32 27, i32 7, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !10, i32 27, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777232, metadata !8, i32 0, metadata !50} ; [ DW_TAG_arg_variable ] [size] [line 16]
!50 = metadata !{i32 28, i32 13, metadata !10, null}
!51 = metadata !{i32 16, i32 26, metadata !9, metadata !50}
!52 = metadata !{i32 17, i32 4, metadata !9, metadata !50}
!53 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 17, metadata !8, i32 0, metadata !50} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 17]
!54 = metadata !{i32 17, i32 8, metadata !9, metadata !50}
!55 = metadata !{i32 18, i32 4, metadata !9, metadata !50}
!56 = metadata !{i32 786688, metadata !10, metadata !"arr", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arr] [line 28]
!57 = metadata !{i32 28, i32 7, metadata !10, null}
!58 = metadata !{i32 29, i32 14, metadata !10, null}
!59 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777223, metadata !8, i32 0, metadata !58} ; [ DW_TAG_arg_variable ] [size] [line 7]
!60 = metadata !{i32 7, i32 26, metadata !4, metadata !58}
!61 = metadata !{i32 8, i32 4, metadata !4, metadata !58} ; [ DW_TAG_imported_declaration ]
!62 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 8, metadata !8, i32 0, metadata !58} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 8]
!63 = metadata !{i32 8, i32 8, metadata !4, metadata !58} ; [ DW_TAG_imported_declaration ]
!64 = metadata !{i32 9, i32 4, metadata !4, metadata !58}
!65 = metadata !{i32 786688, metadata !10, metadata !"arr2", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [arr2] [line 29]
!66 = metadata !{i32 29, i32 7, metadata !10, null}
!67 = metadata !{i32 30, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 30, i32 7, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 30, i32 7, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 31, i32 8, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 31, i32 8, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !74, i32 31, i32 8, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 786443, metadata !1, metadata !10, i32 31, i32 3, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 32, i32 26, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !74, i32 31, i32 28, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 31, i32 23, metadata !74, null}
!78 = metadata !{i32 0}
!79 = metadata !{i32 786688, metadata !10, metadata !"j", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 23]
!80 = metadata !{i32 23, i32 10, metadata !10, null}
!81 = metadata !{i32 35, i32 5, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !83, i32 34, i32 32, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 786443, metadata !1, metadata !10, i32 34, i32 3, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 34, i32 8, metadata !83, null}
!85 = metadata !{i32 34, i32 8, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 34, i32 8, i32 2, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!87 = metadata !{i32 786443, metadata !1, metadata !83, i32 34, i32 8, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 34, i32 27, metadata !83, null}
!89 = metadata !{i32 38, i32 1, metadata !10, null}

