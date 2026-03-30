; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @mdb_cursor_get() #0 {
mdb_cursor_get_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  %"1" = load i32* @"'flag", align 4, !dbg !18
  %"2" = add nsw i32 %"1", 1, !dbg !18
  store i32 %"2", i32* @"'flag", align 4, !dbg !18
  %"3" = load i32* @"'flag", align 4, !dbg !19
  %"4" = icmp sgt i32 %"3", 1000, !dbg !19
  br i1 %"4", label %mdb_cursor_get_bb2, label %mdb_cursor_get_bb1, !dbg !19

mdb_cursor_get_bb1:                               ; preds = %mdb_cursor_get_bb0
  %"5" = icmp sge i32 %"0", 0, !dbg !21
  %. = select i1 %"5", i32 0, i32 1, !dbg !23
  br label %mdb_cursor_get_bb2, !dbg !23

mdb_cursor_get_bb2:                               ; preds = %mdb_cursor_get_bb1, %mdb_cursor_get_bb0
  %.0 = phi i32 [ 1, %mdb_cursor_get_bb0 ], [ %., %mdb_cursor_get_bb1 ]
  ret i32 %.0, !dbg !24
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"6" = call i32 @__VERIFIER_nondet_int() #3, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !27) #3, !dbg !28
  %"7" = load i32* @"'flag", align 4, !dbg !29
  %"8" = add nsw i32 %"7", 1, !dbg !29
  store i32 %"8", i32* @"'flag", align 4, !dbg !29
  %"9" = load i32* @"'flag", align 4, !dbg !30
  %"10" = icmp sgt i32 %"9", 1000, !dbg !30
  br i1 %"10", label %main_mdb_cursor_get.exit, label %main_bb4, !dbg !30

main_bb4:                                         ; preds = %main_bb3
  %"11" = icmp sge i32 %"6", 0, !dbg !31
  %..i = select i1 %"11", i32 0, i32 1, !dbg !32
  br label %main_mdb_cursor_get.exit, !dbg !32

main_mdb_cursor_get.exit:                         ; preds = %main_bb3, %main_bb4
  %.0.i = phi i32 [ 1, %main_bb3 ], [ %..i, %main_bb4 ], !dbg !26
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !33), !dbg !34
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !38) #3, !dbg !41
  br label %main_mdb_cursor_get.exit3, !dbg !42

main_mdb_cursor_get.exit3:                        ; preds = %main_bb7, %main_bb6, %main_bb5, %main_mdb_cursor_get.exit
  %rc.0 = phi i32 [ %.0.i, %main_mdb_cursor_get.exit ], [ %rc.0, %main_bb5 ], [ 1, %main_bb6 ], [ %..i1, %main_bb7 ]
  %"13" = icmp eq i32 %rc.0, 0, !dbg !43
  br i1 %"13", label %main_bb5, label %main_bb8, !dbg !43

main_bb5:                                         ; preds = %main_mdb_cursor_get.exit3
  %"14" = icmp sle i32 %"12", 0, !dbg !45
  br i1 %"14", label %main_mdb_cursor_get.exit3, label %main_bb6, !dbg !45

main_bb6:                                         ; preds = %main_bb5
  %"15" = call i32 @__VERIFIER_nondet_int() #3, !dbg !47
  %"16" = load i32* @"'flag", align 4, !dbg !48
  %"17" = add nsw i32 %"16", 1, !dbg !48
  store i32 %"17", i32* @"'flag", align 4, !dbg !48
  %"18" = load i32* @"'flag", align 4, !dbg !49
  %"19" = icmp sgt i32 %"18", 1000, !dbg !49
  br i1 %"19", label %main_mdb_cursor_get.exit3, label %main_bb7, !dbg !49

main_bb7:                                         ; preds = %main_bb6
  %"20" = icmp sge i32 %"15", 0, !dbg !50
  %..i1 = select i1 %"20", i32 0, i32 1, !dbg !51
  br label %main_mdb_cursor_get.exit3, !dbg !51

main_bb8:                                         ; preds = %main_mdb_cursor_get.exit3
  ret i32 0, !dbg !52
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mdb_cursor_get", metadata !"mdb_cursor_get", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @mdb_cursor_get, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [mdb_cursor_get]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [main]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 9, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 9] [def]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 12, i32 14, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 12]
!17 = metadata !{i32 12, i32 9, metadata !4, null}
!18 = metadata !{i32 13, i32 5, metadata !4, null}
!19 = metadata !{i32 14, i32 9, metadata !20, null}
!20 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!21 = metadata !{i32 16, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 17, i32 9, metadata !22, null}
!24 = metadata !{i32 20, i32 1, metadata !4, null}
!25 = metadata !{i32 12, i32 14, metadata !4, metadata !26}
!26 = metadata !{i32 25, i32 10, metadata !9, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, metadata !26} ; [ DW_TAG_auto_variable ] [i] [line 12]
!28 = metadata !{i32 12, i32 9, metadata !4, metadata !26}
!29 = metadata !{i32 13, i32 5, metadata !4, metadata !26}
!30 = metadata !{i32 14, i32 9, metadata !20, metadata !26}
!31 = metadata !{i32 16, i32 9, metadata !22, metadata !26}
!32 = metadata !{i32 17, i32 9, metadata !22, metadata !26}
!33 = metadata !{i32 786688, metadata !9, metadata !"rc", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 24]
!34 = metadata !{i32 24, i32 9, metadata !9, null}
!35 = metadata !{i32 26, i32 24, metadata !9, null}
!36 = metadata !{i32 786688, metadata !9, metadata !"dval_mv_size", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dval_mv_size] [line 26]
!37 = metadata !{i32 26, i32 9, metadata !9, null}
!38 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 12, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [i] [line 12]
!39 = metadata !{i32 31, i32 14, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 12, i32 9, metadata !4, metadata !39}
!42 = metadata !{i32 27, i32 5, metadata !9, null}
!43 = metadata !{i32 27, i32 5, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !9, i32 27, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 29, i32 13, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !40, i32 29, i32 13, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 12, i32 14, metadata !4, metadata !39}
!48 = metadata !{i32 13, i32 5, metadata !4, metadata !39}
!49 = metadata !{i32 14, i32 9, metadata !20, metadata !39}
!50 = metadata !{i32 16, i32 9, metadata !22, metadata !39}
!51 = metadata !{i32 17, i32 9, metadata !22, metadata !39}
!52 = metadata !{i32 33, i32 5, metadata !9, null}

