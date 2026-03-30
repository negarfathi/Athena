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
  call void @llvm.dbg.value(metadata !28, i64 0, metadata !29), !dbg !31
  %"3" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !33), !dbg !34
  %"4" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  %"5" = add nsw i32 %"4", 1048, !dbg !35
  store i32 %"5", i32* @"'memory0_freeIndex", align 4, !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !38), !dbg !39
  br label %main_bb2, !dbg !40

main_bb2:                                         ; preds = %main_bb4, %main_bb5, %main_bb1
  %q.0 = phi i32 [ %"3", %main_bb1 ], [ %"14", %main_bb4 ], [ %q.0, %main_bb5 ]
  %"6" = sext i32 %q.0 to i64, !dbg !41
  %"7" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"6", !dbg !41
  %"8" = load i32* %"7", align 4, !dbg !41
  %"9" = icmp sge i32 %"8", 0, !dbg !41
  %"10" = add nsw i32 %"3", 1048
  %"11" = icmp slt i32 %q.0, %"10", !dbg !43
  %or.cond = and i1 %"9", %"11", !dbg !41
  br i1 %or.cond, label %main_bb3, label %main_.critedge, !dbg !41

main_bb3:                                         ; preds = %main_bb2
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !45
  %"13" = icmp ne i32 %"12", 0, !dbg !45
  br i1 %"13", label %main_bb4, label %main_bb5, !dbg !45

main_bb4:                                         ; preds = %main_bb3
  %"14" = add nsw i32 %q.0, 1, !dbg !48
  br label %main_bb2, !dbg !50

main_bb5:                                         ; preds = %main_bb3
  %"15" = sext i32 %q.0 to i64, !dbg !51
  %"16" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"15", !dbg !51
  %"17" = load i32* %"16", align 4, !dbg !51
  %"18" = add nsw i32 %"17", -1, !dbg !51
  store i32 %"18", i32* %"16", align 4, !dbg !51
  br label %main_bb2

main_.critedge:                                   ; preds = %main_bb2
  ret i32 0, !dbg !53
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 21, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 14] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 13, metadata !15, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 13] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !16, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!18 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!19 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!20 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!22 = metadata !{i32 15, i32 26, metadata !4, null}
!23 = metadata !{i32 16, i32 4, metadata !4, null}
!24 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!25 = metadata !{i32 16, i32 8, metadata !4, null}
!26 = metadata !{i32 17, i32 4, metadata !4, null}
!27 = metadata !{i32 18, i32 4, metadata !4, null}
!28 = metadata !{i32 1048}
!29 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, metadata !30} ; [ DW_TAG_arg_variable ] [size] [line 15]
!30 = metadata !{i32 22, i32 10, metadata !9, null}
!31 = metadata !{i32 15, i32 26, metadata !4, metadata !30}
!32 = metadata !{i32 16, i32 4, metadata !4, metadata !30}
!33 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, metadata !30} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!34 = metadata !{i32 16, i32 8, metadata !4, metadata !30}
!35 = metadata !{i32 17, i32 4, metadata !4, metadata !30}
!36 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 22]
!37 = metadata !{i32 22, i32 6, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"q", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [q] [line 23]
!39 = metadata !{i32 23, i32 6, metadata !9, null}
!40 = metadata !{i32 24, i32 2, metadata !9, null}
!41 = metadata !{i32 24, i32 2, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 2, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 24, i32 2, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 2, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 25, i32 7, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 25, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 42, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 26, i32 4, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !46, i32 25, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 27, i32 3, metadata !49, null}
!51 = metadata !{i32 28, i32 4, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !46, i32 27, i32 10, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 31, i32 2, metadata !9, null}

