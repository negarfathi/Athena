; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %a = alloca [1048 x i32], align 16
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.declare(metadata !{[1048 x i32]* %a}, metadata !15), !dbg !19
  %"1" = icmp sge i32 %"0", 0, !dbg !20
  %"2" = icmp slt i32 %"0", 1048, !dbg !22
  %or.cond = and i1 %"1", %"2", !dbg !20
  br i1 %or.cond, label %main_bb1, label %main_bb6, !dbg !20

main_bb1:                                         ; preds = %main_bb0
  %"3" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 0, !dbg !24
  %"4" = load i32* %"3", align 4, !dbg !24
  %"5" = icmp eq i32 %"4", 23, !dbg !24
  br i1 %"5", label %main_bb2, label %main_bb6, !dbg !24

main_bb2:                                         ; preds = %main_bb1
  %"6" = sext i32 %"0" to i64, !dbg !27
  %"7" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 %"6", !dbg !27
  %"8" = load i32* %"7", align 4, !dbg !27
  %"9" = icmp eq i32 %"8", 42, !dbg !27
  br i1 %"9", label %main_bb3, label %main_bb6, !dbg !27

main_bb3:                                         ; preds = %main_bb2
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !31), !dbg !32
  br label %main_bb4, !dbg !33

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %x.0 = phi i32 [ %"10", %main_bb3 ], [ %"12", %main_bb5 ]
  %"11" = icmp sge i32 %x.0, 0, !dbg !34
  br i1 %"11", label %main_bb5, label %main_bb6, !dbg !34

main_bb5:                                         ; preds = %main_bb4
  %"12" = sub nsw i32 %x.0, %"0", !dbg !36
  br label %main_bb4, !dbg !38

main_bb6:                                         ; preds = %main_bb1, %main_bb2, %main_bb4, %main_bb0
  ret i32 0, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 12, i32 10, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 12]
!14 = metadata !{i32 12, i32 6, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 13, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 13]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 33536, i64 32, i32 0, i32 0, metadata !8, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 33536, align 32, offset 0] [from int]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 1048}     ; [ DW_TAG_subrange_type ] [0, 1047]
!19 = metadata !{i32 13, i32 6, metadata !4, null}
!20 = metadata !{i32 14, i32 6, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 14, i32 6, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !21, i32 14, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 15, i32 7, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !26, i32 15, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 786443, metadata !1, metadata !21, i32 14, i32 26, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 15, i32 7, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !25, i32 15, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 16, i32 12, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !25, i32 15, i32 33, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786688, metadata !30, metadata !"x", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 16]
!32 = metadata !{i32 16, i32 8, metadata !30, null}
!33 = metadata !{i32 17, i32 4, metadata !30, null}
!34 = metadata !{i32 17, i32 4, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !30, i32 17, i32 4, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 18, i32 5, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !30, i32 17, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 19, i32 4, metadata !37, null}
!39 = metadata !{i32 22, i32 2, metadata !4, null}

