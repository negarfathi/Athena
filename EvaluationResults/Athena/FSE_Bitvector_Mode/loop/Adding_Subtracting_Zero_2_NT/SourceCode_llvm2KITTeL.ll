; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @ff_subtitles_next_line() #0 {
ff_subtitles_next_line_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  %"1" = srem i32 %"0", 1000, !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !16), !dbg !17
  %"2" = load i32* @"'flag", align 4, !dbg !19
  %"3" = icmp eq i32 %"2", 1, !dbg !19
  br i1 %"3", label %ff_subtitles_next_line_bb3, label %ff_subtitles_next_line_bb1, !dbg !19

ff_subtitles_next_line_bb1:                       ; preds = %ff_subtitles_next_line_bb0
  %"4" = icmp eq i32 %"1", 0, !dbg !21
  br i1 %"4", label %ff_subtitles_next_line_bb2, label %ff_subtitles_next_line_bb4, !dbg !21

ff_subtitles_next_line_bb2:                       ; preds = %ff_subtitles_next_line_bb1
  store i32 1, i32* @"'flag", align 4, !dbg !23
  br label %ff_subtitles_next_line_bb3, !dbg !25

ff_subtitles_next_line_bb3:                       ; preds = %ff_subtitles_next_line_bb0, %ff_subtitles_next_line_bb2
  ret i32 0, !dbg !26

ff_subtitles_next_line_bb4:                       ; preds = %ff_subtitles_next_line_bb1
  %"5" = icmp slt i32 %"1", 0, !dbg !27
  %"6" = sub nsw i32 0, %"1", !dbg !29
  %. = select i1 %"5", i32 %"6", i32 %"1", !dbg !27
  ret i32 %., !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !31), !dbg !32
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !34), !dbg !35
  %"9" = icmp slt i32 %"7", 0, !dbg !36
  %"10" = icmp slt i32 %"8", 0, !dbg !38
  %or.cond = or i1 %"9", %"10", !dbg !36
  br i1 %or.cond, label %main_bb11, label %main_bb6, !dbg !36

main_bb6:                                         ; preds = %main_ff_subtitles_next_line.exit, %main_bb5
  %b.0 = phi i32 [ %"7", %main_bb5 ], [ %"20", %main_ff_subtitles_next_line.exit ]
  %"11" = icmp slt i32 %b.0, %"8", !dbg !40
  br i1 %"11", label %main_bb7, label %main_bb11, !dbg !40

main_bb7:                                         ; preds = %main_bb6
  %"12" = call i32 @__VERIFIER_nondet_int() #3, !dbg !42
  %"13" = srem i32 %"12", 1000, !dbg !45
  %"14" = load i32* @"'flag", align 4, !dbg !46
  %"15" = icmp eq i32 %"14", 1, !dbg !46
  br i1 %"15", label %main_ff_subtitles_next_line.exit, label %main_bb8, !dbg !46

main_bb8:                                         ; preds = %main_bb7
  %"16" = icmp eq i32 %"13", 0, !dbg !47
  br i1 %"16", label %main_bb9, label %main_bb10, !dbg !47

main_bb9:                                         ; preds = %main_bb8
  store i32 1, i32* @"'flag", align 4, !dbg !48
  br label %main_ff_subtitles_next_line.exit, !dbg !49

main_bb10:                                        ; preds = %main_bb8
  %"17" = icmp slt i32 %"13", 0, !dbg !50
  %"18" = sub nsw i32 0, %"13", !dbg !51
  %..i = select i1 %"17", i32 %"18", i32 %"13", !dbg !50
  br label %main_ff_subtitles_next_line.exit, !dbg !50

main_ff_subtitles_next_line.exit:                 ; preds = %main_bb7, %main_bb9, %main_bb10
  %"19" = phi i32 [ %..i, %main_bb10 ], [ 0, %main_bb9 ], [ 0, %main_bb7 ]
  %"20" = add nsw i32 %b.0, %"19", !dbg !43
  %"21" = sub nsw i32 %"8", 4, !dbg !52
  %"22" = icmp sge i32 %"20", %"21", !dbg !52
  br i1 %"22", label %main_bb11, label %main_bb6, !dbg !52

main_bb11:                                        ; preds = %main_bb6, %main_ff_subtitles_next_line.exit, %main_bb5
  ret i32 0, !dbg !54
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !10, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ff_subtitles_next_line", metadata !"ff_subtitles_next_line", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @ff_subtitles_next_line, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [ff_subtitles_next_line]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [main]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 9, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 9] [def]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 12, i32 13, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!17 = metadata !{i32 12, i32 9, metadata !4, null}
!18 = metadata !{i32 13, i32 5, metadata !4, null}
!19 = metadata !{i32 14, i32 9, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 16, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 18, i32 9, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !22, i32 17, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 19, i32 9, metadata !24, null}
!26 = metadata !{i32 25, i32 1, metadata !4, null}
!27 = metadata !{i32 21, i32 14, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !22, i32 21, i32 14, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 22, i32 5, metadata !28, null}
!30 = metadata !{i32 29, i32 13, metadata !9, null}
!31 = metadata !{i32 786688, metadata !9, metadata !"b", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [b] [line 29]
!32 = metadata !{i32 29, i32 9, metadata !9, null}
!33 = metadata !{i32 30, i32 15, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"end", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [end] [line 30]
!35 = metadata !{i32 30, i32 9, metadata !9, null}
!36 = metadata !{i32 31, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 31, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 31, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 33, i32 5, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !9, i32 33, i32 5, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 12, i32 13, metadata !4, metadata !43}
!43 = metadata !{i32 35, i32 14, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !9, i32 34, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 13, i32 5, metadata !4, metadata !43}
!46 = metadata !{i32 14, i32 9, metadata !20, metadata !43}
!47 = metadata !{i32 16, i32 9, metadata !22, metadata !43}
!48 = metadata !{i32 18, i32 9, metadata !24, metadata !43}
!49 = metadata !{i32 19, i32 9, metadata !24, metadata !43}
!50 = metadata !{i32 21, i32 14, metadata !28, metadata !43}
!51 = metadata !{i32 22, i32 5, metadata !28, metadata !43}
!52 = metadata !{i32 36, i32 13, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !44, i32 36, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 40, i32 1, metadata !9, null}

