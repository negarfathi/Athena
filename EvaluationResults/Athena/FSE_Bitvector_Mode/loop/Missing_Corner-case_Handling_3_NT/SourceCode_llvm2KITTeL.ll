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
  %"2" = icmp sle i32 %"0", 0, !dbg !18
  %"3" = icmp sle i32 %"1", 0, !dbg !20
  %or.cond = or i1 %"2", %"3", !dbg !18
  %"4" = icmp sgt i32 %"0", 65534, !dbg !22
  %or.cond1 = or i1 %or.cond, %"4", !dbg !18
  %"5" = icmp sgt i32 %"1", 65534, !dbg !24
  %or.cond2 = or i1 %or.cond1, %"5", !dbg !18
  br i1 %or.cond2, label %main_bb13, label %main_bb1, !dbg !18

main_bb1:                                         ; preds = %main_bb0
  %"6" = zext i32 %"0" to i64, !dbg !26
  %"7" = zext i32 %"1" to i64, !dbg !26
  %"8" = call i8* @llvm.stacksave(), !dbg !26
  %"9" = mul nuw i64 %"6", %"7", !dbg !26
  %"10" = alloca i32, i64 %"9", align 16, !dbg !26
  call void @llvm.dbg.declare(metadata !{i32* %"10"}, metadata !27), !dbg !31
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !33), !dbg !35
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !36), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !40), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !36), !dbg !39
  br label %main_bb2, !dbg !43

main_bb2:                                         ; preds = %main_bb6, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"23", %main_bb6 ]
  %"11" = icmp slt i32 %i.0, %"0", !dbg !44
  br i1 %"11", label %main_bb3, label %main_bb7, !dbg !44

main_bb3:                                         ; preds = %main_bb2
  %"12" = sext i32 %i.0 to i64, !dbg !47
  br label %main_bb4, !dbg !48

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %j.0 = phi i32 [ 0, %main_bb3 ], [ %"22", %main_bb5 ]
  %"13" = icmp slt i32 %j.0, %"1", !dbg !49
  br i1 %"13", label %main_bb5, label %main_bb6, !dbg !49

main_bb5:                                         ; preds = %main_bb4
  %"14" = call i32 @__VERIFIER_nondet_int(), !dbg !52
  %"15" = icmp sgt i32 %"14", 0, !dbg !53
  %"16" = sub nsw i32 0, %"14", !dbg !55
  %. = select i1 %"15", i32 %"16", i32 %"14", !dbg !53
  %"17" = srem i32 %., 4, !dbg !47
  %"18" = sext i32 %j.0 to i64, !dbg !47
  %"19" = mul nsw i64 %"12", %"7", !dbg !47
  %"20" = getelementptr inbounds i32* %"10", i64 %"19", !dbg !47
  %"21" = getelementptr inbounds i32* %"20", i64 %"18", !dbg !47
  store i32 %"17", i32* %"21", align 4, !dbg !47
  %"22" = add nsw i32 %j.0, 1, !dbg !56
  br label %main_bb4, !dbg !56

main_bb6:                                         ; preds = %main_bb4
  %"23" = add nsw i32 %i.0, 1, !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !33), !dbg !35
  br label %main_bb2, !dbg !57

main_bb7:                                         ; preds = %main_bb2, %main_bb11
  %xmin.0 = phi i32 [ %"36", %main_bb11 ], [ 0, %main_bb2 ]
  %found.0 = phi i32 [ %found.1, %main_bb11 ], [ 0, %main_bb2 ]
  %"24" = icmp ne i32 %found.0, 0, !dbg !58
  %"25" = xor i1 %"24", true, !dbg !58
  br i1 %"25", label %main_bb8, label %main_bb12, !dbg !58

main_bb8:                                         ; preds = %main_bb7
  %"26" = sext i32 %xmin.0 to i64, !dbg !62
  br label %main_bb9, !dbg !67

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %y.0 = phi i32 [ 0, %main_bb8 ], [ %"35", %main_bb10 ]
  %found.1 = phi i32 [ %found.0, %main_bb8 ], [ %.found.1, %main_bb10 ]
  %"27" = sub nsw i32 %"1", 1, !dbg !68
  %"28" = icmp sle i32 %y.0, %"27", !dbg !68
  br i1 %"28", label %main_bb10, label %main_bb11, !dbg !68

main_bb10:                                        ; preds = %main_bb9
  %"29" = sext i32 %y.0 to i64, !dbg !62
  %"30" = mul nsw i64 %"26", %"7", !dbg !62
  %"31" = getelementptr inbounds i32* %"10", i64 %"30", !dbg !62
  %"32" = getelementptr inbounds i32* %"31", i64 %"29", !dbg !62
  %"33" = load i32* %"32", align 4, !dbg !62
  %"34" = icmp ne i32 %"33", 0, !dbg !62
  %.found.1 = select i1 %"34", i32 1, i32 %found.1, !dbg !62
  %"35" = add nsw i32 %y.0, 1, !dbg !71
  br label %main_bb9, !dbg !71

main_bb11:                                        ; preds = %main_bb9
  %"36" = add nsw i32 %xmin.0, 1, !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !73), !dbg !74
  br label %main_bb7, !dbg !72

main_bb12:                                        ; preds = %main_bb7
  call void @llvm.stackrestore(i8* %"8"), !dbg !75
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb0, %main_bb12
  ret i32 0, !dbg !75
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
!12 = metadata !{i32 13, i32 17, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"ROWNO", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ROWNO] [line 13]
!14 = metadata !{i32 13, i32 9, metadata !4, null}
!15 = metadata !{i32 14, i32 17, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"COLNO", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [COLNO] [line 14]
!17 = metadata !{i32 14, i32 9, metadata !4, null}
!18 = metadata !{i32 15, i32 9, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 15, i32 9, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !19, i32 15, i32 9, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 15, i32 9, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !19, i32 15, i32 9, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 15, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !19, i32 15, i32 9, i32 3, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 17, i32 5, metadata !4, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"levl", metadata !5, i32 17, metadata !28, i32 8192, i32 0} ; [ DW_TAG_auto_variable ] [levl] [line 17]
!28 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 0, i64 32, i32 0, i32 0, metadata !8, metadata !29, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 0, align 32, offset 0] [from int]
!29 = metadata !{metadata !30, metadata !30}
!30 = metadata !{i32 786465, i64 0, i64 -1}       ; [ DW_TAG_subrange_type ] [unbounded]
!31 = metadata !{i32 17, i32 9, metadata !4, null}
!32 = metadata !{i32 0}
!33 = metadata !{i32 786688, metadata !34, metadata !"i", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 18]
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 18, i32 14, metadata !34, null}
!36 = metadata !{i32 786688, metadata !37, metadata !"j", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 20]
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 20, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 786443, metadata !1, metadata !34, i32 19, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 20, i32 18, metadata !37, null}
!40 = metadata !{i32 786688, metadata !41, metadata !"num", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 22]
!41 = metadata !{i32 786443, metadata !1, metadata !37, i32 21, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 22, i32 17, metadata !41, null}
!43 = metadata !{i32 18, i32 10, metadata !34, null}
!44 = metadata !{i32 18, i32 10, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 18, i32 10, i32 2, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !34, i32 18, i32 10, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 25, i32 13, metadata !41, null}
!48 = metadata !{i32 20, i32 14, metadata !37, null}
!49 = metadata !{i32 20, i32 14, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 20, i32 14, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 786443, metadata !1, metadata !37, i32 20, i32 14, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 22, i32 23, metadata !41, null}
!53 = metadata !{i32 23, i32 17, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !41, i32 23, i32 17, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 24, i32 17, metadata !54, null}
!56 = metadata !{i32 20, i32 38, metadata !37, null}
!57 = metadata !{i32 18, i32 34, metadata !34, null}
!58 = metadata !{i32 30, i32 10, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !60, i32 30, i32 10, i32 2, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 30, i32 10, i32 1, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 34, i32 17, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 34, i32 17, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 33, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 32, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 786443, metadata !1, metadata !61, i32 31, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 32, i32 14, metadata !65, null}
!68 = metadata !{i32 32, i32 14, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 32, i32 14, i32 2, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 786443, metadata !1, metadata !65, i32 32, i32 14, i32 1, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 32, i32 42, metadata !65, null}
!72 = metadata !{i32 30, i32 33, metadata !61, null}
!73 = metadata !{i32 786688, metadata !61, metadata !"xmin", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xmin] [line 30]
!74 = metadata !{i32 30, i32 14, metadata !61, null}
!75 = metadata !{i32 39, i32 1, metadata !4, null}

