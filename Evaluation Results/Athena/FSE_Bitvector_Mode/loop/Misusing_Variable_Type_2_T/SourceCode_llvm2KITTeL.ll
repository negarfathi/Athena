; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gettablesize() #0 {
gettablesize_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !13
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !14), !dbg !15
  %"1" = srem i32 %"0", 99999, !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !14), !dbg !15
  %"2" = icmp slt i32 %"1", 0, !dbg !17
  %"3" = sub nsw i32 0, %"1", !dbg !19
  %.0 = select i1 %"2", i32 %"3", i32 %"1", !dbg !17
  ret i32 %.0, !dbg !20
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"4" = call i32 @__VERIFIER_nondet_int() #3, !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !23) #3, !dbg !24
  %"5" = srem i32 %"4", 99999, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !23) #3, !dbg !24
  %"6" = icmp slt i32 %"5", 0, !dbg !26
  %"7" = sub nsw i32 0, %"5", !dbg !27
  %.0.i = select i1 %"6", i32 %"7", i32 %"5", !dbg !26
  %"8" = sext i32 %.0.i to i64, !dbg !22
  call void @llvm.dbg.value(metadata !{i64 %"8"}, i64 0, metadata !28), !dbg !30
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i64 %"10"}, i64 0, metadata !32), !dbg !33
  br label %main_bb2, !dbg !34

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i64 [ 0, %main_bb1 ], [ %"10", %main_bb3 ]
  %"9" = icmp slt i64 %i.0, %"8", !dbg !36
  br i1 %"9", label %main_bb3, label %main_bb4, !dbg !36

main_bb3:                                         ; preds = %main_bb2
  %"10" = add nsw i64 %i.0, 1, !dbg !39
  br label %main_bb2, !dbg !39

main_bb4:                                         ; preds = %main_bb2
  ret i32 0, !dbg !40
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gettablesize", metadata !"gettablesize", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @gettablesize, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 9] [def] [scope 10] [gettablesize]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [main]
!10 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!11 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!12 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!13 = metadata !{i32 11, i32 13, metadata !4, null}
!14 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 11]
!15 = metadata !{i32 11, i32 9, metadata !4, null}
!16 = metadata !{i32 12, i32 5, metadata !4, null}
!17 = metadata !{i32 13, i32 9, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!19 = metadata !{i32 14, i32 9, metadata !18, null}
!20 = metadata !{i32 17, i32 1, metadata !4, null}
!21 = metadata !{i32 11, i32 13, metadata !4, metadata !22}
!22 = metadata !{i32 21, i32 20, metadata !9, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 11, metadata !8, i32 0, metadata !22} ; [ DW_TAG_auto_variable ] [i] [line 11]
!24 = metadata !{i32 11, i32 9, metadata !4, metadata !22}
!25 = metadata !{i32 12, i32 5, metadata !4, metadata !22}
!26 = metadata !{i32 13, i32 9, metadata !18, metadata !22}
!27 = metadata !{i32 14, i32 9, metadata !18, metadata !22}
!28 = metadata !{i32 786688, metadata !9, metadata !"max_fds", metadata !5, i32 21, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_fds] [line 21]
!29 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!30 = metadata !{i32 21, i32 10, metadata !9, null}
!31 = metadata !{i64 0}
!32 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 20, metadata !29, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 20]
!33 = metadata !{i32 20, i32 10, metadata !9, null}
!34 = metadata !{i32 22, i32 10, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 22, i32 10, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 22, i32 10, i32 2, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 786443, metadata !1, metadata !35, i32 22, i32 10, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 22, i32 32, metadata !35, null}
!40 = metadata !{i32 27, i32 5, metadata !9, null}

