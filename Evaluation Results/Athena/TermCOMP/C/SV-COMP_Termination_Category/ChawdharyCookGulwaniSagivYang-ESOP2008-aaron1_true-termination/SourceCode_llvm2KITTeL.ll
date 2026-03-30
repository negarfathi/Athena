; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !16), !dbg !17
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !19), !dbg !20
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !16), !dbg !17
  br label %main_bb1, !dbg !24

main_bb1:                                         ; preds = %main_bb4, %main_bb7, %main_bb6, %main_bb0
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %j.1, %main_bb4 ], [ %j.0, %main_bb6 ], [ %j.2, %main_bb7 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %i.1, %main_bb4 ], [ %"18", %main_bb6 ], [ %i.0, %main_bb7 ]
  %"4" = icmp sge i32 %"2", %i.0, !dbg !25
  %"5" = icmp sge i32 %"3", %j.0, !dbg !27
  %or.cond = and i1 %"4", %"5", !dbg !25
  br i1 %or.cond, label %main_.critedge, label %main_bb2, !dbg !25

main_bb2:                                         ; preds = %main_bb1
  %"6" = icmp sge i32 %"2", %i.0, !dbg !29
  %"7" = icmp sle i32 %"3", %j.0, !dbg !32
  %or.cond1 = and i1 %"6", %"7", !dbg !29
  br i1 %or.cond1, label %main_.critedge, label %main_bb3, !dbg !29

main_bb3:                                         ; preds = %main_bb2
  %"8" = icmp sle i32 %"2", %i.0, !dbg !34
  %"9" = icmp sge i32 %"3", %j.0, !dbg !37
  %. = select i1 %"8", i1 %"9", i1 false, !dbg !34
  br i1 %., label %main_.critedge, label %main_bb8, !dbg !39

main_.critedge:                                   ; preds = %main_bb2, %main_bb1, %main_bb3
  %"10" = icmp sge i32 %"2", %i.0, !dbg !43
  %"11" = icmp sge i32 %"3", %j.0, !dbg !46
  %or.cond3 = and i1 %"10", %"11", !dbg !43
  br i1 %or.cond3, label %main_bb4, label %main_bb5, !dbg !43

main_bb4:                                         ; preds = %main_.critedge
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !48
  %"13" = icmp ne i32 %"12", 0, !dbg !48
  %"14" = add nsw i32 %j.0, 1, !dbg !51
  %"15" = add nsw i32 %i.0, 1, !dbg !53
  %j.1 = select i1 %"13", i32 %"14", i32 %j.0, !dbg !48
  %i.1 = select i1 %"13", i32 %i.0, i32 %"15", !dbg !48
  br label %main_bb1, !dbg !48

main_bb5:                                         ; preds = %main_.critedge
  %"16" = icmp sge i32 %"2", %i.0, !dbg !55
  %"17" = icmp sle i32 %"3", %j.0, !dbg !57
  %or.cond4 = and i1 %"16", %"17", !dbg !55
  br i1 %or.cond4, label %main_bb6, label %main_bb7, !dbg !55

main_bb6:                                         ; preds = %main_bb5
  %"18" = add nsw i32 %i.0, 1, !dbg !59
  br label %main_bb1, !dbg !61

main_bb7:                                         ; preds = %main_bb5
  %"19" = icmp sle i32 %"2", %i.0, !dbg !62
  %"20" = icmp sge i32 %"3", %j.0, !dbg !64
  %or.cond5 = and i1 %"19", %"20", !dbg !62
  %"21" = add nsw i32 %j.0, 1, !dbg !66
  %j.2 = select i1 %or.cond5, i32 %"21", i32 %j.0, !dbg !62
  br label %main_bb1, !dbg !62

main_bb8:                                         ; preds = %main_bb3
  ret i32 0, !dbg !68
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
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!14 = metadata !{i32 12, i32 6, metadata !4, null}
!15 = metadata !{i32 13, i32 10, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 13]
!17 = metadata !{i32 13, i32 6, metadata !4, null}
!18 = metadata !{i32 14, i32 11, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"an", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [an] [line 14]
!20 = metadata !{i32 14, i32 6, metadata !4, null}
!21 = metadata !{i32 15, i32 11, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"bn", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bn] [line 15]
!23 = metadata !{i32 15, i32 6, metadata !4, null}
!24 = metadata !{i32 16, i32 2, metadata !4, null}
!25 = metadata !{i32 16, i32 2, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 16, i32 2, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 16, i32 2, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 16, i32 2, i32 5, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 3, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 16, i32 2, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 6, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 16, i32 2, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !36, i32 16, i32 2, i32 9, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 7, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 16, i32 2, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 10, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 16, i32 2, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 16, i32 2, i32 12, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 16, i32 2, i32 8, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 2, i32 4, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 17, i32 7, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 17, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 79, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 17, i32 7, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !44, i32 17, i32 7, i32 1, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 18, i32 8, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 18, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 786443, metadata !1, metadata !44, i32 17, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 19, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !49, i32 18, i32 33, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 21, i32 5, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !49, i32 20, i32 11, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 23, i32 14, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !44, i32 23, i32 14, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 23, i32 14, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 23, i32 14, i32 1, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 24, i32 4, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !56, i32 23, i32 34, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 25, i32 3, metadata !60, null}
!62 = metadata !{i32 25, i32 14, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !56, i32 25, i32 14, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 25, i32 14, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !63, i32 25, i32 14, i32 1, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 26, i32 4, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !63, i32 25, i32 34, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 29, i32 2, metadata !4, null}

