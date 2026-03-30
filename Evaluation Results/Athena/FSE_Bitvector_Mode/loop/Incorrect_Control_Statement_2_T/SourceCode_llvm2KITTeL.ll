; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %slots_used = alloca [10 x i32], align 16
  %ereg = alloca [10 x i32], align 16
  %"0" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !12), !dbg !13
  call void @llvm.dbg.value(metadata !14, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %slots_used}, metadata !17), !dbg !21
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %ereg}, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !24, i64 0, metadata !25), !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !25), !dbg !27
  br label %main_bb1, !dbg !28

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"8", %main_bb2 ]
  %"1" = icmp slt i32 %i.0, 10, !dbg !29
  br i1 %"1", label %main_bb2, label %main_bb3, !dbg !29

main_bb2:                                         ; preds = %main_bb1
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !32
  %"3" = sext i32 %i.0 to i64, !dbg !32
  %"4" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"3", !dbg !32
  store i32 %"2", i32* %"4", align 4, !dbg !32
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !34
  %"6" = sext i32 %i.0 to i64, !dbg !34
  %"7" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"6", !dbg !34
  store i32 %"5", i32* %"7", align 4, !dbg !34
  %"8" = add nsw i32 %i.0, 1, !dbg !35
  br label %main_bb1, !dbg !35

main_bb3:                                         ; preds = %main_bb1, %main_bb9
  %i1.0 = phi i32 [ %"24", %main_bb9 ], [ 0, %main_bb1 ]
  %table.0 = phi i32 [ %table.1, %main_bb9 ], [ %"0", %main_bb1 ]
  %"9" = icmp slt i32 %i1.0, 10, !dbg !36
  br i1 %"9", label %main_bb4, label %main_bb10, !dbg !36

main_bb4:                                         ; preds = %main_bb3
  %"10" = sext i32 %i1.0 to i64, !dbg !38
  %"11" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"10", !dbg !38
  %"12" = load i32* %"11", align 4, !dbg !38
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb4
  %Pivot = icmp slt i32 %"12", 2
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock1

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"12", 0
  br i1 %SwitchLeaf, label %main_bb5, label %main_NewDefault

main_bb5:                                         ; preds = %main_LeafBlock
  %"13" = sext i32 %i1.0 to i64, !dbg !40
  %"14" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"13", !dbg !40
  %"15" = load i32* %"14", align 4, !dbg !40
  %"16" = icmp ne i32 %"15", 0, !dbg !40
  br i1 %"16", label %main_bb6, label %main_bb10, !dbg !40

main_bb6:                                         ; preds = %main_bb5
  %"17" = sext i32 %i1.0 to i64, !dbg !43
  %"18" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"17", !dbg !43
  %"19" = load i32* %"18", align 4, !dbg !43
  br label %main_bb8, !dbg !44

main_LeafBlock1:                                  ; preds = %main_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"12", 2
  br i1 %SwitchLeaf2, label %main_bb8, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb7

main_bb7:                                         ; preds = %main_NewDefault
  %"20" = sext i32 %i1.0 to i64, !dbg !45
  %"21" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"20", !dbg !45
  %"22" = load i32* %"21", align 4, !dbg !45
  br label %main_bb8, !dbg !46

main_bb8:                                         ; preds = %main_LeafBlock1, %main_bb7, %main_bb6
  %table.1 = phi i32 [ %"22", %main_bb7 ], [ %"19", %main_bb6 ], [ %table.0, %main_LeafBlock1 ]
  %"23" = icmp ne i32 %table.1, 0, !dbg !47
  br i1 %"23", label %main_bb10, label %main_bb9, !dbg !47

main_bb9:                                         ; preds = %main_bb8
  %"24" = add nsw i32 %i1.0, 1, !dbg !49
  br label %main_bb3, !dbg !50

main_bb10:                                        ; preds = %main_bb3, %main_bb8, %main_bb5
  ret i32 0, !dbg !51
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 786688, metadata !4, metadata !"table", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [table] [line 15]
!13 = metadata !{i32 15, i32 9, metadata !4, null}
!14 = metadata !{i32 10}
!15 = metadata !{i32 786688, metadata !4, metadata !"EVENT_EPOLL_TABLES", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EVENT_EPOLL_TABLES] [line 12]
!16 = metadata !{i32 12, i32 9, metadata !4, null}
!17 = metadata !{i32 786688, metadata !4, metadata !"slots_used", metadata !5, i32 13, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slots_used] [line 13]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !8, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!21 = metadata !{i32 13, i32 9, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"ereg", metadata !5, i32 14, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ereg] [line 14]
!23 = metadata !{i32 14, i32 9, metadata !4, null}
!24 = metadata !{i32 0}
!25 = metadata !{i32 786688, metadata !26, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 16, i32 14, metadata !26, null}
!28 = metadata !{i32 16, i32 10, metadata !26, null}
!29 = metadata !{i32 16, i32 10, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !31, i32 16, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 786443, metadata !1, metadata !26, i32 16, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 18, i32 25, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !26, i32 17, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 19, i32 19, metadata !33, null}
!35 = metadata !{i32 16, i32 31, metadata !26, null}
!36 = metadata !{i32 22, i32 5, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 5, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 24, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 29, i32 21, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 29, i32 21, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !39, i32 25, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 32, i32 21, metadata !41, null}
!44 = metadata !{i32 33, i32 17, metadata !42, null}
!45 = metadata !{i32 35, i32 17, metadata !42, null}
!46 = metadata !{i32 36, i32 17, metadata !42, null}
!47 = metadata !{i32 38, i32 13, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !39, i32 38, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 40, i32 9, metadata !39, null}
!50 = metadata !{i32 41, i32 5, metadata !39, null}
!51 = metadata !{i32 43, i32 1, metadata !4, null}

