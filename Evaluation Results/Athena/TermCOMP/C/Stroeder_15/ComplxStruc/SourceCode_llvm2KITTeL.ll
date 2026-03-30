; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !15), !dbg !16
  br label %main_bb1, !dbg !17

main_bb1:                                         ; preds = %main_bb4, %main_bb5, %main_bb8, %main_bb7, %main_bb0
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %"3", %main_bb5 ], [ %i.1, %main_bb4 ], [ %i.3, %main_bb7 ], [ %"17", %main_bb8 ]
  %j.0 = phi i32 [ %"0", %main_bb0 ], [ %"10", %main_bb5 ], [ %j.1, %main_bb4 ], [ %j.3, %main_bb7 ], [ %j.4, %main_bb8 ]
  %"1" = icmp sgt i32 %i.0, 0, !dbg !18
  br i1 %"1", label %main_bb2, label %main_bb9, !dbg !18

main_bb2:                                         ; preds = %main_bb1
  %"2" = icmp sge i32 %i.0, %j.0, !dbg !20
  br i1 %"2", label %main_bb3, label %main_bb6, !dbg !20

main_bb3:                                         ; preds = %main_bb2
  %"3" = add nsw i32 %i.0, 1, !dbg !23
  %"4" = icmp slt i32 %j.0, 5, !dbg !25
  br i1 %"4", label %main_bb4, label %main_bb5, !dbg !25

main_bb4:                                         ; preds = %main_bb3
  %"5" = add nsw i32 %j.0, 1, !dbg !27
  %"6" = sub nsw i32 %"3", %"5", !dbg !29
  %"7" = icmp sgt i32 %"6", 2, !dbg !29
  %"8" = add nsw i32 %"3", 1, !dbg !31
  %"9" = add nsw i32 %"5", 1, !dbg !33
  %i.1 = select i1 %"7", i32 %"8", i32 %"3", !dbg !29
  %j.1 = select i1 %"7", i32 %"5", i32 %"9", !dbg !29
  br label %main_bb1, !dbg !29

main_bb5:                                         ; preds = %main_bb3
  %"10" = sub nsw i32 %j.0, 1, !dbg !35
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb2
  %"11" = icmp sgt i32 %i.0, 0, !dbg !37
  %"12" = icmp slt i32 %j.0, 0, !dbg !40
  %or.cond = and i1 %"11", %"12", !dbg !37
  br i1 %or.cond, label %main_bb7, label %main_bb8, !dbg !37

main_bb7:                                         ; preds = %main_bb6
  %"13" = sub nsw i32 %i.0, 1, !dbg !42
  %"14" = icmp slt i32 %j.0, -1, !dbg !44
  %"15" = add nsw i32 %j.0, 1, !dbg !46
  %"16" = add nsw i32 %"13", 1, !dbg !48
  %i.3 = select i1 %"14", i32 %"13", i32 %"16", !dbg !44
  %j.3 = select i1 %"14", i32 %"15", i32 %j.0, !dbg !44
  br label %main_bb1, !dbg !44

main_bb8:                                         ; preds = %main_bb6
  %"17" = add nsw i32 %i.0, 1, !dbg !50
  %"18" = mul nsw i32 %j.0, 2, !dbg !52
  %"19" = icmp sgt i32 %"18", %"17", !dbg !52
  %"20" = sub nsw i32 %j.0, 1, !dbg !54
  %"21" = add nsw i32 %j.0, 1, !dbg !56
  %j.4 = select i1 %"19", i32 %"20", i32 %"21", !dbg !52
  br label %main_bb1, !dbg !52

main_bb9:                                         ; preds = %main_bb1
  ret i32 0, !dbg !58
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 5, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 5} ; [ DW_TAG_subprogram ] [line 5] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 8, i32 9, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 6, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 6]
!14 = metadata !{i32 6, i32 9, metadata !4, null}
!15 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 7]
!16 = metadata !{i32 7, i32 9, metadata !4, null}
!17 = metadata !{i32 11, i32 5, metadata !4, null}
!18 = metadata !{i32 11, i32 5, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 5, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 12, i32 13, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !22, i32 12, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 13, i32 13, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !21, i32 12, i32 21, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 14, i32 17, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 14, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 15, i32 17, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 14, i32 24, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 16, i32 21, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 16, i32 21, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 17, i32 21, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 16, i32 28, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 19, i32 21, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !30, i32 18, i32 24, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 22, i32 17, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !26, i32 21, i32 20, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 25, i32 17, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 25, i32 17, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 786443, metadata !1, metadata !21, i32 24, i32 16, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 25, i32 17, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !38, i32 25, i32 17, i32 1, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 26, i32 17, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !38, i32 25, i32 33, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 27, i32 21, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 27, i32 21, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 28, i32 21, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !45, i32 27, i32 29, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 30, i32 21, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !45, i32 29, i32 24, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 33, i32 17, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !38, i32 32, i32 20, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 34, i32 21, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !51, i32 34, i32 21, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 35, i32 21, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 34, i32 30, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 37, i32 21, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !53, i32 36, i32 24, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 44, i32 5, metadata !4, null}

