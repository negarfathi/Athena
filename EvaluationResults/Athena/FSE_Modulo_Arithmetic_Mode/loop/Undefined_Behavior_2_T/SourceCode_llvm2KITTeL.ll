; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ffs(i32 %w) #0 {
ffs_bb0:
  call void @llvm.dbg.value(metadata !{i32 %w}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !16), !dbg !17
  br label %ffs_bb1, !dbg !21

ffs_bb1:                                          ; preds = %ffs_bb2, %ffs_bb0
  %i.0 = phi i32 [ 1, %ffs_bb0 ], [ %"2", %ffs_bb2 ]
  %.0 = phi i32 [ %w, %ffs_bb0 ], [ %"3", %ffs_bb2 ]
  %"0" = urem i32 %.0, 2, !dbg !22
  %"1" = icmp eq i32 %"0", 0, !dbg !22
  br i1 %"1", label %ffs_bb2, label %ffs_bb3, !dbg !22

ffs_bb2:                                          ; preds = %ffs_bb1
  %"2" = add i32 %i.0, 1, !dbg !24
  %"3" = udiv i32 %.0, 2, !dbg !26
  br label %ffs_bb1, !dbg !27

ffs_bb3:                                          ; preds = %ffs_bb1
  ret i32 %i.0, !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 @__VERIFIER_nondet_uint(), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %w.0}, i64 0, metadata !32), !dbg !35
  call void @llvm.dbg.value(metadata !18, i64 0, metadata !36), !dbg !37
  br label %main_bb5, !dbg !38

main_bb5:                                         ; preds = %main_ffs.exit, %main_bb4
  %w.0 = phi i32 [ %"4", %main_bb4 ], [ %w.1, %main_ffs.exit ]
  %"5" = icmp ne i32 %w.0, 0, !dbg !39
  br i1 %"5", label %main_bb6, label %main_bb8, !dbg !39

main_bb6:                                         ; preds = %main_bb5, %main_bb7
  %i.0.i = phi i32 [ %"8", %main_bb7 ], [ 1, %main_bb5 ], !dbg !33
  %.0.i = phi i32 [ %"9", %main_bb7 ], [ %w.0, %main_bb5 ], !dbg !33
  %"6" = urem i32 %.0.i, 2, !dbg !41
  %"7" = icmp eq i32 %"6", 0, !dbg !41
  br i1 %"7", label %main_bb7, label %main_ffs.exit, !dbg !41

main_bb7:                                         ; preds = %main_bb6
  %"8" = add i32 %i.0.i, 1, !dbg !42
  %"9" = udiv i32 %.0.i, 2, !dbg !43
  br label %main_bb6, !dbg !44

main_ffs.exit:                                    ; preds = %main_bb6
  call void @llvm.dbg.value(metadata !{i32 %i.0.i}, i64 0, metadata !45), !dbg !46
  %"10" = icmp ult i32 %i.0.i, 32, !dbg !47
  %"11" = lshr i32 %w.0, %i.0.i, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !30), !dbg !31
  %w.1 = select i1 %"10", i32 %"11", i32 0, !dbg !47
  br label %main_bb5, !dbg !47

main_bb8:                                         ; preds = %main_bb5
  ret i32 0, !dbg !50
}

declare i32 @__VERIFIER_nondet_uint() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ffs", metadata !"ffs", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @ffs, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ffs]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [w] [line 10]
!17 = metadata !{i32 10, i32 32, metadata !4, null}
!18 = metadata !{i32 1}
!19 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!20 = metadata !{i32 12, i32 18, metadata !4, null}
!21 = metadata !{i32 13, i32 5, metadata !4, null}
!22 = metadata !{i32 13, i32 5, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 5, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 15, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 16, i32 9, metadata !25, null}
!27 = metadata !{i32 17, i32 5, metadata !25, null}
!28 = metadata !{i32 18, i32 5, metadata !4, null}
!29 = metadata !{i32 22, i32 22, metadata !9, null}
!30 = metadata !{i32 786688, metadata !9, metadata !"w", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [w] [line 22]
!31 = metadata !{i32 22, i32 18, metadata !9, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"w", metadata !5, i32 16777226, metadata !8, i32 0, metadata !33} ; [ DW_TAG_arg_variable ] [w] [line 10]
!33 = metadata !{i32 26, i32 26, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 10, i32 32, metadata !4, metadata !33}
!36 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, metadata !33} ; [ DW_TAG_auto_variable ] [i] [line 12]
!37 = metadata !{i32 12, i32 18, metadata !4, metadata !33}
!38 = metadata !{i32 24, i32 5, metadata !9, null}
!39 = metadata !{i32 24, i32 5, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 13, i32 5, metadata !23, metadata !33}
!42 = metadata !{i32 15, i32 9, metadata !25, metadata !33}
!43 = metadata !{i32 16, i32 9, metadata !25, metadata !33}
!44 = metadata !{i32 17, i32 5, metadata !25, metadata !33}
!45 = metadata !{i32 786688, metadata !34, metadata !"n", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 26]
!46 = metadata !{i32 26, i32 22, metadata !34, null}
!47 = metadata !{i32 27, i32 13, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !34, i32 27, i32 13, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 28, i32 13, metadata !48, null}
!50 = metadata !{i32 32, i32 5, metadata !9, null}

