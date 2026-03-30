; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'x" = common global i32 0, align 4
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !23), !dbg !24
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !26), !dbg !27
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  %"2" = add nsw i32 %"1", %size, !dbg !28
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !28
  ret i32 %"0", !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @foo() #0 {
foo_bb1:
  %"3" = call i32 @__kittel_nondef.0()
  %"4" = load i32* @"'x", align 4, !dbg !30
  %"5" = sext i32 %"4" to i64, !dbg !30
  %"6" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"5", !dbg !30
  %"7" = load i32* %"6", align 4, !dbg !30
  %"8" = add nsw i32 %"7", -1, !dbg !30
  store i32 %"8", i32* %"6", align 4, !dbg !30
  ret i32 %"3", !dbg !31
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb2:
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !33), !dbg !35
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !37), !dbg !38
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !39
  %"11" = add nsw i32 %"10", 1, !dbg !39
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !39
  store i32 %"9", i32* @"'x", align 4, !dbg !34
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !40
  %"13" = load i32* @"'x", align 4, !dbg !40
  %"14" = sext i32 %"13" to i64, !dbg !40
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !40
  store i32 %"12", i32* %"15", align 4, !dbg !40
  br label %main_bb3, !dbg !41

main_bb3:                                         ; preds = %main_bb4, %main_bb2
  %"16" = load i32* @"'x", align 4, !dbg !42
  %"17" = sext i32 %"16" to i64, !dbg !42
  %"18" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"17", !dbg !42
  %"19" = load i32* %"18", align 4, !dbg !42
  %"20" = icmp sgt i32 %"19", 0, !dbg !42
  br i1 %"20", label %main_bb4, label %main_bb5, !dbg !42

main_bb4:                                         ; preds = %main_bb3
  %"21" = call i32 @__VERIFIER_nondet_int(), !dbg !44
  %"22" = call i32 @__kittel_nondef.0() #3, !dbg !47
  %"23" = load i32* @"'x", align 4, !dbg !49
  %"24" = sext i32 %"23" to i64, !dbg !49
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !49
  %"26" = load i32* %"25", align 4, !dbg !49
  %"27" = add nsw i32 %"26", -1, !dbg !49
  store i32 %"27", i32* %"25", align 4, !dbg !49
  br label %main_bb3, !dbg !50

main_bb5:                                         ; preds = %main_bb3
  ret i32 0, !dbg !51
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 10] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"foo", metadata !"foo", metadata !"", i32 16, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @foo, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 16] [def] [foo]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [main]
!13 = metadata !{metadata !14, metadata !15, metadata !16}
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 9, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 9] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"x", metadata !"x", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'x", null} ; [ DW_TAG_variable ] [x] [line 5] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 8, metadata !17, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 8] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!20 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!21 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!22 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!23 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 10]
!24 = metadata !{i32 10, i32 26, metadata !4, null}
!25 = metadata !{i32 11, i32 4, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 11]
!27 = metadata !{i32 11, i32 8, metadata !4, null}
!28 = metadata !{i32 12, i32 4, metadata !4, null}
!29 = metadata !{i32 13, i32 4, metadata !4, null}
!30 = metadata !{i32 17, i32 5, metadata !9, null}
!31 = metadata !{i32 18, i32 1, metadata !9, null}
!32 = metadata !{i32 1}
!33 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777226, metadata !8, i32 0, metadata !34} ; [ DW_TAG_arg_variable ] [size] [line 10]
!34 = metadata !{i32 21, i32 9, metadata !12, null}
!35 = metadata !{i32 10, i32 26, metadata !4, metadata !34}
!36 = metadata !{i32 11, i32 4, metadata !4, metadata !34}
!37 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 11, metadata !8, i32 0, metadata !34} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 11]
!38 = metadata !{i32 11, i32 8, metadata !4, metadata !34}
!39 = metadata !{i32 12, i32 4, metadata !4, metadata !34}
!40 = metadata !{i32 22, i32 18, metadata !12, null}
!41 = metadata !{i32 24, i32 5, metadata !12, null}
!42 = metadata !{i32 24, i32 5, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !12, i32 24, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 25, i32 13, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 25, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !12, i32 24, i32 28, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 26, i32 13, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !45, i32 25, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 17, i32 5, metadata !9, metadata !47}
!50 = metadata !{i32 30, i32 5, metadata !46, null}
!51 = metadata !{i32 31, i32 5, metadata !12, null}

