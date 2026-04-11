; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4
@"'count" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @read() #0 {
read_bb0:
  %"0" = load i32* @"'flag", align 4, !dbg !16
  %"1" = icmp eq i32 %"0", 1, !dbg !16
  %"2" = load i32* @"'count", align 4
  %"3" = icmp sgt i32 %"2", 100, !dbg !18
  %or.cond = or i1 %"1", %"3", !dbg !16
  br i1 %or.cond, label %read_bb5, label %read_bb1, !dbg !16

read_bb1:                                         ; preds = %read_bb0
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !20
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !21), !dbg !22
  %"5" = icmp sle i32 %"4", 0, !dbg !23
  br i1 %"5", label %read_bb5, label %read_bb2, !dbg !23

read_bb2:                                         ; preds = %read_bb1
  %"6" = srem i32 %"4", 1000, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !21), !dbg !22
  %"7" = icmp slt i32 %"6", 995, !dbg !27
  br i1 %"7", label %read_bb3, label %read_bb4, !dbg !27

read_bb3:                                         ; preds = %read_bb2
  %"8" = load i32* @"'count", align 4, !dbg !29
  %"9" = add nsw i32 %"8", 1, !dbg !29
  store i32 %"9", i32* @"'count", align 4, !dbg !29
  br label %read_bb5, !dbg !31

read_bb4:                                         ; preds = %read_bb2
  store i32 1, i32* @"'flag", align 4, !dbg !32
  br label %read_bb5, !dbg !34

read_bb5:                                         ; preds = %read_bb1, %read_bb0, %read_bb4, %read_bb3
  %.0 = phi i32 [ %"6", %read_bb3 ], [ 0, %read_bb4 ], [ 0, %read_bb0 ], [ -1, %read_bb1 ]
  ret i32 %.0, !dbg !35
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !36) #3, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !36) #3, !dbg !40
  br label %main_bb7, !dbg !41

main_bb7:                                         ; preds = %main_read.exit, %main_bb6
  %"10" = load i32* @"'flag", align 4, !dbg !42
  %"11" = icmp eq i32 %"10", 1, !dbg !42
  %"12" = load i32* @"'count", align 4, !dbg !37
  %"13" = icmp sgt i32 %"12", 100, !dbg !43
  %or.cond.i = or i1 %"11", %"13", !dbg !42
  br i1 %or.cond.i, label %main_read.exit, label %main_bb8, !dbg !42

main_bb8:                                         ; preds = %main_bb7
  %"14" = call i32 @__VERIFIER_nondet_int() #3, !dbg !44
  %"15" = icmp sle i32 %"14", 0, !dbg !45
  br i1 %"15", label %main_read.exit, label %main_bb9, !dbg !45

main_bb9:                                         ; preds = %main_bb8
  %"16" = srem i32 %"14", 1000, !dbg !46
  %"17" = icmp slt i32 %"16", 995, !dbg !47
  br i1 %"17", label %main_bb10, label %main_bb11, !dbg !47

main_bb10:                                        ; preds = %main_bb9
  %"18" = load i32* @"'count", align 4, !dbg !48
  %"19" = add nsw i32 %"18", 1, !dbg !48
  store i32 %"19", i32* @"'count", align 4, !dbg !48
  br label %main_read.exit, !dbg !49

main_bb11:                                        ; preds = %main_bb9
  store i32 1, i32* @"'flag", align 4, !dbg !50
  br label %main_read.exit, !dbg !51

main_read.exit:                                   ; preds = %main_bb7, %main_bb8, %main_bb10, %main_bb11
  %.0.i = phi i32 [ %"16", %main_bb10 ], [ 0, %main_bb11 ], [ 0, %main_bb7 ], [ -1, %main_bb8 ], !dbg !37
  %"20" = icmp sle i32 %.0.i, 0, !dbg !37
  br i1 %"20", label %main_bb12, label %main_bb7, !dbg !37

main_bb12:                                        ; preds = %main_read.exit
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
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !10, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read", metadata !"read", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @read, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 12] [def] [scope 13] [read]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [main]
!10 = metadata !{metadata !11, metadata !12}
!11 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 10, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 10] [def]
!12 = metadata !{i32 786484, i32 0, null, metadata !"count", metadata !"count", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'count", null} ; [ DW_TAG_variable ] [count] [line 11] [def]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!16 = metadata !{i32 14, i32 9, metadata !17, null}
!17 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!18 = metadata !{i32 14, i32 9, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !17, i32 14, i32 9, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 16, i32 16, metadata !4, null}
!21 = metadata !{i32 786688, metadata !4, metadata !"num", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 16]
!22 = metadata !{i32 16, i32 9, metadata !4, null}
!23 = metadata !{i32 17, i32 9, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 23, i32 9, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !24, i32 22, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 24, i32 13, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 24, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 26, i32 13, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 25, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 27, i32 13, metadata !30, null}
!32 = metadata !{i32 31, i32 13, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !28, i32 30, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 32, i32 13, metadata !33, null}
!35 = metadata !{i32 36, i32 1, metadata !4, null}
!36 = metadata !{i32 786688, metadata !4, metadata !"num", metadata !5, i32 16, metadata !8, i32 0, metadata !37} ; [ DW_TAG_auto_variable ] [num] [line 16]
!37 = metadata !{i32 41, i32 13, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 41, i32 13, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 40, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 16, i32 9, metadata !4, metadata !37}
!41 = metadata !{i32 39, i32 5, metadata !9, null}
!42 = metadata !{i32 14, i32 9, metadata !17, metadata !37}
!43 = metadata !{i32 14, i32 9, metadata !19, metadata !37}
!44 = metadata !{i32 16, i32 16, metadata !4, metadata !37}
!45 = metadata !{i32 17, i32 9, metadata !24, metadata !37}
!46 = metadata !{i32 23, i32 9, metadata !26, metadata !37}
!47 = metadata !{i32 24, i32 13, metadata !28, metadata !37}
!48 = metadata !{i32 26, i32 13, metadata !30, metadata !37}
!49 = metadata !{i32 27, i32 13, metadata !30, metadata !37}
!50 = metadata !{i32 31, i32 13, metadata !33, metadata !37}
!51 = metadata !{i32 32, i32 13, metadata !33, metadata !37}
!52 = metadata !{i32 44, i32 5, metadata !9, null}

