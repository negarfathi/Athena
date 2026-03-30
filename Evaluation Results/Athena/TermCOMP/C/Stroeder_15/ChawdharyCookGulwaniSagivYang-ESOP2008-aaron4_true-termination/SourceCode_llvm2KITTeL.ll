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
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !25), !dbg !26
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !28), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %k.0}, i64 0, metadata !28), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !13), !dbg !14
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i32 %k.0}, i64 0, metadata !28), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !19), !dbg !20
  br label %main_bb1, !dbg !30

main_bb1:                                         ; preds = %main_bb8, %main_bb7, %main_bb11, %main_bb12, %main_bb10, %main_bb0
  %k.0 = phi i32 [ %"2", %main_bb0 ], [ %"19", %main_bb7 ], [ %k.0, %main_bb8 ], [ %k.0, %main_bb10 ], [ %"27", %main_bb12 ], [ %k.0, %main_bb11 ]
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %"18", %main_bb7 ], [ %j.0, %main_bb8 ], [ %j.0, %main_bb10 ], [ %"26", %main_bb12 ], [ %j.0, %main_bb11 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %i.0, %main_bb7 ], [ %"20", %main_bb8 ], [ %"23", %main_bb10 ], [ %i.0, %main_bb12 ], [ %i.0, %main_bb11 ]
  %tk.0 = phi i32 [ %"5", %main_bb0 ], [ %k.0, %main_bb7 ], [ %tk.0, %main_bb8 ], [ %tk.0, %main_bb10 ], [ %k.0, %main_bb12 ], [ %tk.0, %main_bb11 ]
  %"6" = icmp sge i32 %"3", %i.0, !dbg !31
  %"7" = icmp sge i32 %"4", %j.0, !dbg !33
  %or.cond = and i1 %"6", %"7", !dbg !31
  br i1 %or.cond, label %main_bb3, label %main_bb2, !dbg !31

main_bb2:                                         ; preds = %main_bb1
  %"8" = icmp sge i32 %"3", %i.0, !dbg !35
  %"9" = icmp sle i32 %"4", %j.0, !dbg !38
  %or.cond1 = and i1 %"8", %"9", !dbg !35
  br i1 %or.cond1, label %main_bb3, label %main_bb4, !dbg !35

main_bb3:                                         ; preds = %main_bb2, %main_bb1
  %.old = add nsw i32 %tk.0, 1, !dbg !40
  %.old6 = icmp sge i32 %k.0, %.old, !dbg !40
  br i1 %.old6, label %main_bb5, label %main_.critedge, !dbg !44

main_bb4:                                         ; preds = %main_bb2
  %"10" = icmp sle i32 %"3", %i.0, !dbg !47
  %"11" = icmp sge i32 %"4", %j.0, !dbg !50
  %or.cond2 = and i1 %"10", %"11", !dbg !47
  %"12" = add nsw i32 %tk.0, 1
  %"13" = icmp sge i32 %k.0, %"12", !dbg !40
  %or.cond7 = and i1 %or.cond2, %"13", !dbg !47
  br i1 %or.cond7, label %main_bb5, label %main_.critedge, !dbg !47

main_bb5:                                         ; preds = %main_bb4, %main_bb3
  %"14" = icmp sge i32 %"3", %i.0, !dbg !52
  %"15" = icmp sge i32 %"4", %j.0, !dbg !55
  %or.cond3 = and i1 %"14", %"15", !dbg !52
  br i1 %or.cond3, label %main_bb6, label %main_bb9, !dbg !52

main_bb6:                                         ; preds = %main_bb5
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !57
  %"17" = icmp ne i32 %"16", 0, !dbg !57
  br i1 %"17", label %main_bb7, label %main_bb8, !dbg !57

main_bb7:                                         ; preds = %main_bb6
  %"18" = add nsw i32 %j.0, %k.0, !dbg !60
  %"19" = call i32 @__VERIFIER_nondet_int(), !dbg !62
  br label %main_bb1, !dbg !63

main_bb8:                                         ; preds = %main_bb6
  %"20" = add nsw i32 %i.0, 1, !dbg !64
  br label %main_bb1

main_bb9:                                         ; preds = %main_bb5
  %"21" = icmp sge i32 %"3", %i.0, !dbg !66
  %"22" = icmp sle i32 %"4", %j.0, !dbg !69
  %or.cond4 = and i1 %"21", %"22", !dbg !66
  br i1 %or.cond4, label %main_bb10, label %main_bb11, !dbg !66

main_bb10:                                        ; preds = %main_bb9
  %"23" = add nsw i32 %i.0, 1, !dbg !71
  br label %main_bb1, !dbg !73

main_bb11:                                        ; preds = %main_bb9
  %"24" = icmp sle i32 %"3", %i.0, !dbg !74
  %"25" = icmp sge i32 %"4", %j.0, !dbg !77
  %or.cond5 = and i1 %"24", %"25", !dbg !74
  br i1 %or.cond5, label %main_bb12, label %main_bb1, !dbg !74

main_bb12:                                        ; preds = %main_bb11
  %"26" = add nsw i32 %j.0, %k.0, !dbg !79
  %"27" = call i32 @__VERIFIER_nondet_int(), !dbg !81
  br label %main_bb1, !dbg !82

main_.critedge:                                   ; preds = %main_bb4, %main_bb3
  ret i32 0, !dbg !83
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 15, i32 6, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 14]
!14 = metadata !{i32 14, i32 9, metadata !4, null}
!15 = metadata !{i32 16, i32 6, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 14]
!17 = metadata !{i32 14, i32 12, metadata !4, null}
!18 = metadata !{i32 17, i32 6, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"k", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 14]
!20 = metadata !{i32 14, i32 15, metadata !4, null}
!21 = metadata !{i32 18, i32 7, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"an", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [an] [line 14]
!23 = metadata !{i32 14, i32 18, metadata !4, null}
!24 = metadata !{i32 19, i32 7, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"bn", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bn] [line 14]
!26 = metadata !{i32 14, i32 22, metadata !4, null}
!27 = metadata !{i32 20, i32 7, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"tk", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tk] [line 14]
!29 = metadata !{i32 14, i32 26, metadata !4, null}
!30 = metadata !{i32 21, i32 2, metadata !4, null}
!31 = metadata !{i32 21, i32 2, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 21, i32 2, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 21, i32 2, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !37, i32 21, i32 2, i32 5, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 3, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 21, i32 2, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 6, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 21, i32 2, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 21, i32 2, i32 12, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !43, i32 21, i32 2, i32 8, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 4, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 21, i32 2, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 21, i32 2, i32 13, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 11, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 21, i32 2, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 21, i32 2, i32 9, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 7, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 21, i32 2, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 2, i32 10, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 22, i32 7, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !54, i32 22, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 96, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 22, i32 7, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !53, i32 22, i32 7, i32 1, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 23, i32 8, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !59, i32 23, i32 8, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 786443, metadata !1, metadata !53, i32 22, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 24, i32 5, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 23, i32 38, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 26, i32 9, metadata !61, null}
!63 = metadata !{i32 27, i32 4, metadata !61, null}
!64 = metadata !{i32 28, i32 5, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !58, i32 27, i32 11, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 30, i32 15, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !68, i32 30, i32 15, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 786443, metadata !1, metadata !53, i32 30, i32 10, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 30, i32 15, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !67, i32 30, i32 15, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 31, i32 4, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !67, i32 30, i32 35, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 32, i32 3, metadata !72, null}
!74 = metadata !{i32 32, i32 15, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !76, i32 32, i32 15, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 786443, metadata !1, metadata !67, i32 32, i32 10, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 32, i32 15, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !75, i32 32, i32 15, i32 1, i32 27} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 33, i32 4, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !75, i32 32, i32 35, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 35, i32 8, metadata !80, null}
!82 = metadata !{i32 36, i32 3, metadata !80, null}
!83 = metadata !{i32 38, i32 2, metadata !4, null}

