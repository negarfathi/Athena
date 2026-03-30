; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @read(i32 %loc, i32 %len) #0 {
read_bb0:
  call void @llvm.dbg.value(metadata !{i32 %loc}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %len}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !22), !dbg !23
  %"0" = load i32* @"'flag", align 4, !dbg !24
  %"1" = icmp eq i32 %"0", 1, !dbg !24
  br i1 %"1", label %read_bb6, label %read_bb1, !dbg !24

read_bb1:                                         ; preds = %read_bb0, %read_bb4
  %count.0 = phi i32 [ %"8", %read_bb4 ], [ 0, %read_bb0 ]
  %.01 = phi i32 [ %"10", %read_bb4 ], [ %loc, %read_bb0 ]
  %"2" = icmp slt i32 %.01, %len, !dbg !26
  br i1 %"2", label %read_bb2, label %read_bb6, !dbg !26

read_bb2:                                         ; preds = %read_bb1
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !28
  %"4" = icmp eq i32 %"3", 0, !dbg !30
  br i1 %"4", label %read_bb6, label %read_bb3, !dbg !30

read_bb3:                                         ; preds = %read_bb2
  %"5" = icmp slt i32 %"3", 0, !dbg !32
  %"6" = sub nsw i32 0, %"3", !dbg !35
  %. = select i1 %"5", i32 %"6", i32 %"3", !dbg !32
  %"7" = srem i32 %., 1000, !dbg !36
  %"8" = add nsw i32 %count.0, 1, !dbg !37
  %"9" = icmp slt i32 %"7", 995, !dbg !38
  br i1 %"9", label %read_bb4, label %read_bb5, !dbg !38

read_bb4:                                         ; preds = %read_bb3
  %"10" = add nsw i32 %.01, 1, !dbg !40
  br label %read_bb1, !dbg !42

read_bb5:                                         ; preds = %read_bb3
  store i32 1, i32* @"'flag", align 4, !dbg !43
  br label %read_bb6, !dbg !45

read_bb6:                                         ; preds = %read_bb1, %read_bb2, %read_bb0, %read_bb5
  %.0 = phi i32 [ %"8", %read_bb5 ], [ 0, %read_bb0 ], [ -1, %read_bb2 ], [ %count.0, %read_bb1 ]
  ret i32 %.0, !dbg !46
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !47), !dbg !48
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !50), !dbg !51
  store i32 0, i32* @"'flag", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !21, i64 0, metadata !53), !dbg !54
  %"12" = icmp sle i32 %"11", 0, !dbg !55
  %"13" = icmp sgt i32 %"11", 65536, !dbg !57
  %or.cond = or i1 %"12", %"13", !dbg !55
  br i1 %or.cond, label %main_bb18, label %main_bb8, !dbg !55

main_bb8:                                         ; preds = %main_bb15, %main_bb7, %main_bb17
  %errno.0 = phi i32 [ %errno.0, %main_bb17 ], [ 0, %main_bb7 ], [ %"27", %main_bb15 ]
  %pos.0 = phi i32 [ %"30", %main_bb17 ], [ 0, %main_bb7 ], [ %pos.0, %main_bb15 ]
  %"14" = icmp slt i32 %pos.0, %"11", !dbg !59
  br i1 %"14", label %main_bb9, label %main_bb18, !dbg !59

main_bb9:                                         ; preds = %main_bb8
  %"15" = sub nsw i32 %"11", %pos.0, !dbg !61
  %"16" = load i32* @"'flag", align 4, !dbg !63
  %"17" = icmp eq i32 %"16", 1, !dbg !63
  br i1 %"17", label %main_read.exit, label %main_bb10, !dbg !63

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %count.0.i = phi i32 [ %"24", %main_bb13 ], [ 0, %main_bb9 ], !dbg !61
  %.01.i = phi i32 [ %"26", %main_bb13 ], [ %pos.0, %main_bb9 ], !dbg !61
  %"18" = icmp slt i32 %.01.i, %"15", !dbg !64
  br i1 %"18", label %main_bb11, label %main_read.exit, !dbg !64

main_bb11:                                        ; preds = %main_bb10
  %"19" = call i32 @__VERIFIER_nondet_int() #3, !dbg !65
  %"20" = icmp eq i32 %"19", 0, !dbg !66
  br i1 %"20", label %main_read.exit, label %main_bb12, !dbg !66

main_bb12:                                        ; preds = %main_bb11
  %"21" = icmp slt i32 %"19", 0, !dbg !67
  %"22" = sub nsw i32 0, %"19", !dbg !68
  %..i = select i1 %"21", i32 %"22", i32 %"19", !dbg !67
  %"23" = srem i32 %..i, 1000, !dbg !69
  %"24" = add nsw i32 %count.0.i, 1, !dbg !70
  %"25" = icmp slt i32 %"23", 995, !dbg !71
  br i1 %"25", label %main_bb13, label %main_bb14, !dbg !71

main_bb13:                                        ; preds = %main_bb12
  %"26" = add nsw i32 %.01.i, 1, !dbg !72
  br label %main_bb10, !dbg !73

main_bb14:                                        ; preds = %main_bb12
  store i32 1, i32* @"'flag", align 4, !dbg !74
  br label %main_read.exit, !dbg !75

main_read.exit:                                   ; preds = %main_bb9, %main_bb10, %main_bb11, %main_bb14
  %.0.i = phi i32 [ %"24", %main_bb14 ], [ 0, %main_bb9 ], [ -1, %main_bb11 ], [ %count.0.i, %main_bb10 ], !dbg !61
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_read.exit
  %Pivot = icmp slt i32 %.0.i, 0
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock1

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %.0.i, -1
  br i1 %SwitchLeaf, label %main_bb15, label %main_NewDefault

main_bb15:                                        ; preds = %main_LeafBlock
  %"27" = add nsw i32 %errno.0, 1, !dbg !76
  %"28" = icmp eq i32 %"27", 5, !dbg !79
  br i1 %"28", label %main_bb18, label %main_bb8, !dbg !79

main_LeafBlock1:                                  ; preds = %main_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %.0.i, 0
  br i1 %SwitchLeaf2, label %main_bb16, label %main_NewDefault

main_bb16:                                        ; preds = %main_LeafBlock1
  %"29" = add nsw i32 %.0.i, 1, !dbg !81
  br label %main_bb17, !dbg !81

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb17

main_bb17:                                        ; preds = %main_NewDefault, %main_bb16
  %rc.0 = phi i32 [ %"29", %main_bb16 ], [ %.0.i, %main_NewDefault ]
  %"30" = add nsw i32 %pos.0, %rc.0, !dbg !83
  br label %main_bb8, !dbg !84

main_bb18:                                        ; preds = %main_bb8, %main_bb15, %main_bb7
  ret i32 0, !dbg !85
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!14, !15}
!llvm.ident = !{!16}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read", metadata !"read", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @read, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [read]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 63, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 64} ; [ DW_TAG_subprogram ] [line 63] [def] [scope 64] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 30, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 30] [def]
!14 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!15 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!16 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!17 = metadata !{i32 786689, metadata !4, metadata !"loc", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [loc] [line 31]
!18 = metadata !{i32 31, i32 15, metadata !4, null}
!19 = metadata !{i32 786689, metadata !4, metadata !"len", metadata !5, i32 33554463, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [len] [line 31]
!20 = metadata !{i32 31, i32 25, metadata !4, null}
!21 = metadata !{i32 0}
!22 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 33]
!23 = metadata !{i32 33, i32 9, metadata !4, null}
!24 = metadata !{i32 34, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 36, i32 5, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 5, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 38, i32 20, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 39, i32 13, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !29, i32 39, i32 13, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 45, i32 17, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 45, i32 17, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 786443, metadata !1, metadata !31, i32 44, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 46, i32 17, metadata !33, null}
!36 = metadata !{i32 47, i32 13, metadata !34, null}
!37 = metadata !{i32 48, i32 13, metadata !34, null}
!38 = metadata !{i32 49, i32 17, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !34, i32 49, i32 17, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 51, i32 17, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !39, i32 50, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 52, i32 17, metadata !41, null}
!43 = metadata !{i32 56, i32 17, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !39, i32 55, i32 13, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 57, i32 17, metadata !44, null}
!46 = metadata !{i32 62, i32 1, metadata !4, null}
!47 = metadata !{i32 786688, metadata !9, metadata !"pos", metadata !5, i32 65, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 65]
!48 = metadata !{i32 65, i32 9, metadata !9, null}
!49 = metadata !{i32 66, i32 16, metadata !9, null}
!50 = metadata !{i32 786688, metadata !9, metadata !"size", metadata !5, i32 66, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 66]
!51 = metadata !{i32 66, i32 9, metadata !9, null}
!52 = metadata !{i32 67, i32 5, metadata !9, null}
!53 = metadata !{i32 786688, metadata !9, metadata !"errno", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [errno] [line 68]
!54 = metadata !{i32 68, i32 9, metadata !9, null}
!55 = metadata !{i32 69, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !9, i32 69, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 69, i32 9, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 69, i32 9, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 71, i32 5, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !9, i32 71, i32 5, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 73, i32 18, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !9, i32 72, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 34, i32 9, metadata !25, metadata !61}
!64 = metadata !{i32 36, i32 5, metadata !27, metadata !61}
!65 = metadata !{i32 38, i32 20, metadata !29, metadata !61}
!66 = metadata !{i32 39, i32 13, metadata !31, metadata !61}
!67 = metadata !{i32 45, i32 17, metadata !33, metadata !61}
!68 = metadata !{i32 46, i32 17, metadata !33, metadata !61}
!69 = metadata !{i32 47, i32 13, metadata !34, metadata !61}
!70 = metadata !{i32 48, i32 13, metadata !34, metadata !61}
!71 = metadata !{i32 49, i32 17, metadata !39, metadata !61}
!72 = metadata !{i32 51, i32 17, metadata !41, metadata !61}
!73 = metadata !{i32 52, i32 17, metadata !41, metadata !61}
!74 = metadata !{i32 56, i32 17, metadata !44, metadata !61}
!75 = metadata !{i32 57, i32 17, metadata !44, metadata !61}
!76 = metadata !{i32 76, i32 13, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 75, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 786443, metadata !1, metadata !62, i32 74, i32 13, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 77, i32 17, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !77, i32 77, i32 17, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 82, i32 13, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !62, i32 81, i32 13, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 83, i32 9, metadata !62, null}
!84 = metadata !{i32 84, i32 5, metadata !62, null}
!85 = metadata !{i32 86, i32 1, metadata !9, null}

