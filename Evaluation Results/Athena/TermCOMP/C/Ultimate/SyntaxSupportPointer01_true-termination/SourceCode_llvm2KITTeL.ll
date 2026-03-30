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
  %"5" = add nsw i32 %"4", 1, !dbg !35
  store i32 %"5", i32* @"'memory0_freeIndex", align 4, !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !36), !dbg !37
  %"6" = sext i32 %"3" to i64, !dbg !38
  %"7" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"6", !dbg !38
  %"8" = sext i32 %"3" to i64, !dbg !40
  %"9" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"8", !dbg !40
  br label %main_bb2, !dbg !42

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %"10" = load i32* %"7", align 4, !dbg !38
  %"11" = icmp sge i32 %"10", 0, !dbg !38
  br i1 %"11", label %main_bb3, label %main_bb4, !dbg !38

main_bb3:                                         ; preds = %main_bb2
  %"12" = load i32* %"9", align 4, !dbg !40
  %"13" = add nsw i32 %"12", -1, !dbg !40
  store i32 %"13", i32* %"9", align 4, !dbg !40
  br label %main_bb2, !dbg !43

main_bb4:                                         ; preds = %main_bb2
  ret i32 0, !dbg !44
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!18, !19}
!llvm.ident = !{!20}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !15, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !16, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!16 = metadata !{metadata !17}
!17 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!18 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!19 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!20 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!21 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!22 = metadata !{i32 13, i32 26, metadata !4, null}
!23 = metadata !{i32 14, i32 4, metadata !4, null}
!24 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!25 = metadata !{i32 14, i32 8, metadata !4, null}
!26 = metadata !{i32 15, i32 4, metadata !4, null}
!27 = metadata !{i32 16, i32 4, metadata !4, null}
!28 = metadata !{i32 1}
!29 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !30} ; [ DW_TAG_arg_variable ] [size] [line 13]
!30 = metadata !{i32 20, i32 10, metadata !9, null}
!31 = metadata !{i32 13, i32 26, metadata !4, metadata !30}
!32 = metadata !{i32 14, i32 4, metadata !4, metadata !30}
!33 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !30} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!34 = metadata !{i32 14, i32 8, metadata !4, metadata !30}
!35 = metadata !{i32 15, i32 4, metadata !4, metadata !30}
!36 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 20]
!37 = metadata !{i32 20, i32 6, metadata !9, null}
!38 = metadata !{i32 21, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 2, i32 1, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 22, i32 3, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 21, i32 2, metadata !9, null}
!43 = metadata !{i32 23, i32 2, metadata !41, null}
!44 = metadata !{i32 24, i32 2, metadata !9, null}

