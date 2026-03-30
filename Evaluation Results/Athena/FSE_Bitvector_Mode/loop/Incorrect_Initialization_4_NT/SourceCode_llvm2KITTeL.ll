; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !12), !dbg !13
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !15), !dbg !16
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !18), !dbg !19
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !21), !dbg !22
  %"4" = icmp slt i32 %"1", 0, !dbg !23
  %"5" = icmp sle i32 %"2", 0, !dbg !25
  %or.cond = or i1 %"4", %"5", !dbg !23
  %"6" = icmp sle i32 %"3", 0, !dbg !27
  %or.cond1 = or i1 %or.cond, %"6", !dbg !23
  %"7" = icmp sgt i32 %"3", %"2", !dbg !29
  %or.cond2 = or i1 %or.cond1, %"7", !dbg !23
  br i1 %or.cond2, label %main_bb4, label %main_bb1, !dbg !23

main_bb1:                                         ; preds = %main_bb0
  %"8" = srem i32 %"1", %"2", !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !32), !dbg !33
  %"9" = srem i32 %"1", %"3", !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !12), !dbg !13
  br label %main_bb2, !dbg !38

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %r.0 = phi i32 [ %"0", %main_bb1 ], [ %r.0., %main_bb3 ]
  %i.0 = phi i32 [ %"8", %main_bb1 ], [ %"12", %main_bb3 ]
  %"10" = icmp slt i32 %i.0, %"2", !dbg !39
  br i1 %"10", label %main_bb3, label %main_bb4, !dbg !39

main_bb3:                                         ; preds = %main_bb2
  %"11" = icmp ne i32 %r.0, 0, !dbg !41
  %r.0. = select i1 %"11", i32 %r.0, i32 %"9", !dbg !41
  %"12" = add nsw i32 %i.0, %r.0., !dbg !42
  br label %main_bb2, !dbg !43

main_bb4:                                         ; preds = %main_bb2, %main_bb0
  ret i32 0, !dbg !44
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 9] [def] [scope 10] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"r", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [r] [line 17]
!13 = metadata !{i32 17, i32 9, metadata !4, null}
!14 = metadata !{i32 11, i32 13, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"h", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 11]
!16 = metadata !{i32 11, i32 9, metadata !4, null}
!17 = metadata !{i32 12, i32 16, metadata !4, null}
!18 = metadata !{i32 786688, metadata !4, metadata !"hash", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hash] [line 12]
!19 = metadata !{i32 12, i32 9, metadata !4, null}
!20 = metadata !{i32 13, i32 18, metadata !4, null}
!21 = metadata !{i32 786688, metadata !4, metadata !"rehash", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rehash] [line 13]
!22 = metadata !{i32 13, i32 9, metadata !4, null}
!23 = metadata !{i32 14, i32 9, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 14, i32 9, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 14, i32 9, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 14, i32 9, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !24, i32 14, i32 9, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 14, i32 9, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !24, i32 14, i32 9, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 16, i32 5, metadata !4, null}
!32 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!33 = metadata !{i32 16, i32 9, metadata !4, null}
!34 = metadata !{i32 20, i32 18, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !36, i32 20, i32 18, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 20, i32 13, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 18, i32 5, metadata !4, null}
!39 = metadata !{i32 18, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 20, i32 13, metadata !36, null}
!42 = metadata !{i32 21, i32 9, metadata !37, null}
!43 = metadata !{i32 22, i32 5, metadata !37, null}
!44 = metadata !{i32 24, i32 1, metadata !4, null}

