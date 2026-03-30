; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  %"1" = icmp sle i32 %"0", 0, !dbg !15
  %"2" = icmp sgt i32 %"0", 1000, !dbg !17
  %or.cond = or i1 %"1", %"2", !dbg !15
  br i1 %or.cond, label %main_bb7, label %main_bb1, !dbg !15

main_bb1:                                         ; preds = %main_bb0
  %"3" = zext i32 %"0" to i64, !dbg !19
  %"4" = call i8* @llvm.stacksave(), !dbg !19
  %"5" = alloca i32, i64 %"3", align 16, !dbg !19
  call void @llvm.dbg.declare(metadata !{i32* %"5"}, metadata !20), !dbg !24
  call void @llvm.dbg.value(metadata !25, i64 0, metadata !26), !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !26), !dbg !28
  br label %main_bb2, !dbg !29

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"10", %main_bb3 ]
  %"6" = icmp slt i32 %i.0, %"0", !dbg !30
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  br i1 %"6", label %main_bb3, label %main_bb4, !dbg !30

main_bb3:                                         ; preds = %main_bb2
  %"8" = sext i32 %i.0 to i64, !dbg !33
  %"9" = getelementptr inbounds i32* %"5", i64 %"8", !dbg !33
  store i32 %"7", i32* %"9", align 4, !dbg !33
  %"10" = add nsw i32 %i.0, 1, !dbg !34
  br label %main_bb2, !dbg !34

main_bb4:                                         ; preds = %main_bb2
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !35), !dbg !36
  %"11" = icmp slt i32 %"7", 0, !dbg !37
  br i1 %"11", label %main_bb6, label %main_bb5, !dbg !37

main_bb5:                                         ; preds = %main_bb8, %main_bb4
  %entry.0 = phi i32 [ %"7", %main_bb4 ], [ %.entry.0, %main_bb8 ]
  %"12" = icmp sge i32 %entry.0, %"0", !dbg !39
  br i1 %"12", label %main_bb6, label %main_bb8, !dbg !39

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  call void @llvm.stackrestore(i8* %"4"), !dbg !43
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb0, %main_bb6
  ret i32 0, !dbg !43

main_bb8:                                         ; preds = %main_bb5
  %"13" = sext i32 %entry.0 to i64, !dbg !44
  %"14" = getelementptr inbounds i32* %"5", i64 %"13", !dbg !44
  %"15" = load i32* %"14", align 4, !dbg !44
  %"16" = icmp ne i32 %"15", 0, !dbg !44
  %"17" = add nsw i32 %entry.0, 1, !dbg !46
  %.entry.0 = select i1 %"16", i32 %"17", i32 %entry.0, !dbg !44
  br label %main_bb5, !dbg !44
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 11] [def] [scope 12] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 13, i32 23, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"MCE_LOG_LEN", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [MCE_LOG_LEN] [line 13]
!14 = metadata !{i32 13, i32 9, metadata !4, null}
!15 = metadata !{i32 14, i32 9, metadata !16, null}
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!17 = metadata !{i32 14, i32 9, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !16, i32 14, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!19 = metadata !{i32 16, i32 5, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"mcelog_entry", metadata !5, i32 16, metadata !21, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [mcelog_entry] [line 16]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 0, i64 32, i32 0, i32 0, metadata !8, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 0, align 32, offset 0] [from int]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 -1}       ; [ DW_TAG_subrange_type ] [unbounded]
!24 = metadata !{i32 16, i32 9, metadata !4, null}
!25 = metadata !{i32 0}
!26 = metadata !{i32 786688, metadata !27, metadata !"i", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 17]
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 17, i32 14, metadata !27, null}
!29 = metadata !{i32 17, i32 10, metadata !27, null}
!30 = metadata !{i32 17, i32 10, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !32, i32 17, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 786443, metadata !1, metadata !27, i32 17, i32 10, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 18, i32 27, metadata !27, null}
!34 = metadata !{i32 17, i32 38, metadata !27, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"entry", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entry] [line 19]
!36 = metadata !{i32 19, i32 9, metadata !4, null}
!37 = metadata !{i32 20, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 24, i32 13, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 24, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 23, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 22, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 33, i32 1, metadata !4, null}
!44 = metadata !{i32 26, i32 13, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !41, i32 26, i32 13, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 28, i32 13, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !45, i32 27, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]

