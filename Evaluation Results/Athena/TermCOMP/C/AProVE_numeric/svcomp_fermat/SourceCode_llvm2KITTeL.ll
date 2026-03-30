; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @fermat() #0 {
fermat_bb0:
  call void @llvm.dbg.value(metadata !13, i64 0, metadata !14), !dbg !16
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !22), !dbg !23
  br label %fermat_bb1, !dbg !24

fermat_bb1:                                       ; preds = %fermat_bb2, %fermat_bb0
  %b.0 = phi i32 [ 1, %fermat_bb0 ], [ %b.2, %fermat_bb2 ]
  %a.0 = phi i32 [ 1, %fermat_bb0 ], [ %., %fermat_bb2 ]
  %c.0 = phi i32 [ 1, %fermat_bb0 ], [ %c.1, %fermat_bb2 ]
  %"0" = mul nsw i32 %a.0, %a.0, !dbg !25
  %"1" = mul nsw i32 %"0", %a.0, !dbg !25
  %"2" = mul nsw i32 %b.0, %b.0, !dbg !25
  %"3" = mul nsw i32 %"2", %b.0, !dbg !25
  %"4" = mul nsw i32 %c.0, %c.0, !dbg !25
  %"5" = mul nsw i32 %"4", %c.0, !dbg !25
  %"6" = add nsw i32 %"3", %"5", !dbg !25
  %"7" = icmp eq i32 %"1", %"6", !dbg !25
  br i1 %"7", label %fermat_bb3, label %fermat_bb2, !dbg !25

fermat_bb2:                                       ; preds = %fermat_bb1
  %"8" = add nsw i32 %a.0, 1, !dbg !28
  %"9" = icmp sgt i32 %"8", 1000, !dbg !29
  %"10" = add nsw i32 %b.0, 1, !dbg !31
  %.b.0 = select i1 %"9", i32 %"10", i32 %b.0, !dbg !29
  %. = select i1 %"9", i32 1, i32 %"8", !dbg !29
  %"11" = icmp sgt i32 %.b.0, 1000, !dbg !33
  %"12" = add nsw i32 %c.0, 1, !dbg !35
  %b.2 = select i1 %"11", i32 1, i32 %.b.0, !dbg !33
  %c.1 = select i1 %"11", i32 %"12", i32 %c.0, !dbg !33
  %"13" = icmp sgt i32 %c.1, 1000, !dbg !37
  br i1 %"13", label %fermat_bb3, label %fermat_bb1, !dbg !37

fermat_bb3:                                       ; preds = %fermat_bb2, %fermat_bb1
  %.0 = phi i32 [ 1, %fermat_bb1 ], [ 0, %fermat_bb2 ]
  ret i32 %.0, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  call void @llvm.dbg.value(metadata !13, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !45), !dbg !46
  br label %main_bb5, !dbg !49

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %b.0.i = phi i32 [ 1, %main_bb4 ], [ %b.2.i, %main_bb6 ], !dbg !41
  %a.0.i = phi i32 [ 1, %main_bb4 ], [ %..i, %main_bb6 ], !dbg !41
  %c.0.i = phi i32 [ 1, %main_bb4 ], [ %c.1.i, %main_bb6 ], !dbg !41
  %"14" = mul nsw i32 %a.0.i, %a.0.i, !dbg !50
  %"15" = mul nsw i32 %"14", %a.0.i, !dbg !50
  %"16" = mul nsw i32 %b.0.i, %b.0.i, !dbg !50
  %"17" = mul nsw i32 %"16", %b.0.i, !dbg !50
  %"18" = mul nsw i32 %c.0.i, %c.0.i, !dbg !50
  %"19" = mul nsw i32 %"18", %c.0.i, !dbg !50
  %"20" = add nsw i32 %"17", %"19", !dbg !50
  %"21" = icmp eq i32 %"15", %"20", !dbg !50
  br i1 %"21", label %main_fermat.exit, label %main_bb6, !dbg !50

main_bb6:                                         ; preds = %main_bb5
  %"22" = add nsw i32 %a.0.i, 1, !dbg !51
  %"23" = icmp sgt i32 %"22", 1000, !dbg !52
  %"24" = add nsw i32 %b.0.i, 1, !dbg !53
  %.b.0.i = select i1 %"23", i32 %"24", i32 %b.0.i, !dbg !52
  %..i = select i1 %"23", i32 1, i32 %"22", !dbg !52
  %"25" = icmp sgt i32 %.b.0.i, 1000, !dbg !54
  %"26" = add nsw i32 %c.0.i, 1, !dbg !55
  %b.2.i = select i1 %"25", i32 1, i32 %.b.0.i, !dbg !54
  %c.1.i = select i1 %"25", i32 %"26", i32 %c.0.i, !dbg !54
  %"27" = icmp sgt i32 %c.1.i, 1000, !dbg !56
  br i1 %"27", label %main_fermat.exit, label %main_bb5, !dbg !56

main_fermat.exit:                                 ; preds = %main_bb5, %main_bb6
  %.0.i = phi i32 [ 1, %main_bb5 ], [ 0, %main_bb6 ], !dbg !41
  ret i32 %.0.i, !dbg !41
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11}
!llvm.ident = !{!12}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fermat", metadata !"fermat", metadata !"", i32 1, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @fermat, null, null, metadata !2, i32 1} ; [ DW_TAG_subprogram ] [line 1] [def] [fermat]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [main]
!10 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!11 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!12 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!13 = metadata !{i32 1000}
!14 = metadata !{i32 786688, metadata !4, metadata !"MAX", metadata !5, i32 2, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MAX] [line 2]
!15 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !8} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!16 = metadata !{i32 2, i32 15, metadata !4, null}
!17 = metadata !{i32 1}
!18 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a] [line 3]
!19 = metadata !{i32 3, i32 9, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 3]
!21 = metadata !{i32 3, i32 16, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 3]
!23 = metadata !{i32 3, i32 23, metadata !4, null}
!24 = metadata !{i32 4, i32 5, metadata !4, null}
!25 = metadata !{i32 5, i32 13, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !27, i32 5, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 4, i32 15, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 8, i32 9, metadata !27, null} ; [ DW_TAG_imported_declaration ]
!29 = metadata !{i32 9, i32 13, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !27, i32 9, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 11, i32 13, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 9, i32 20, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 13, i32 13, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !27, i32 13, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 15, i32 13, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 13, i32 20, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 17, i32 13, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !27, i32 17, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 22, i32 1, metadata !4, null}
!40 = metadata !{i32 786688, metadata !4, metadata !"MAX", metadata !5, i32 2, metadata !15, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [MAX] [line 2]
!41 = metadata !{i32 25, i32 12, metadata !9, null}
!42 = metadata !{i32 2, i32 15, metadata !4, metadata !41}
!43 = metadata !{i32 786688, metadata !4, metadata !"a", metadata !5, i32 3, metadata !8, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [a] [line 3]
!44 = metadata !{i32 3, i32 9, metadata !4, metadata !41}
!45 = metadata !{i32 786688, metadata !4, metadata !"b", metadata !5, i32 3, metadata !8, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [b] [line 3]
!46 = metadata !{i32 3, i32 16, metadata !4, metadata !41}
!47 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 3, metadata !8, i32 0, metadata !41} ; [ DW_TAG_auto_variable ] [c] [line 3]
!48 = metadata !{i32 3, i32 23, metadata !4, metadata !41}
!49 = metadata !{i32 4, i32 5, metadata !4, metadata !41}
!50 = metadata !{i32 5, i32 13, metadata !26, metadata !41}
!51 = metadata !{i32 8, i32 9, metadata !27, metadata !41} ; [ DW_TAG_imported_declaration ]
!52 = metadata !{i32 9, i32 13, metadata !30, metadata !41}
!53 = metadata !{i32 11, i32 13, metadata !32, metadata !41}
!54 = metadata !{i32 13, i32 13, metadata !34, metadata !41}
!55 = metadata !{i32 15, i32 13, metadata !36, metadata !41}
!56 = metadata !{i32 17, i32 13, metadata !38, metadata !41}

