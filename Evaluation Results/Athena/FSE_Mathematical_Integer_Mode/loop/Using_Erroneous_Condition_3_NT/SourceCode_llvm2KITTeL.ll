; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %old_ = alloca [10 x i32], align 16
  %new_ = alloca [10 x i32], align 16
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !13), !dbg !14
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %old_}, metadata !21), !dbg !25
  call void @llvm.dbg.declare(metadata !{[10 x i32]* %new_}, metadata !26), !dbg !27
  call void @llvm.dbg.value(metadata !12, i64 0, metadata !28), !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !28), !dbg !30
  br label %main_bb1, !dbg !31

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %j.0 = phi i32 [ 0, %main_bb0 ], [ %"9", %main_bb2 ]
  %"2" = icmp slt i32 %j.0, 9, !dbg !32
  br i1 %"2", label %main_bb2, label %main_bb3, !dbg !32

main_bb2:                                         ; preds = %main_bb1
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  %"4" = sext i32 %j.0 to i64, !dbg !35
  %"5" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 %"4", !dbg !35
  store i32 %"3", i32* %"5", align 4, !dbg !35
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !37
  %"7" = sext i32 %j.0 to i64, !dbg !37
  %"8" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 %"7", !dbg !37
  store i32 %"6", i32* %"8", align 4, !dbg !37
  %"9" = add nsw i32 %j.0, 1, !dbg !38
  br label %main_bb1, !dbg !38

main_bb3:                                         ; preds = %main_bb1
  %"10" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 9, !dbg !39
  store i32 0, i32* %"10", align 4, !dbg !39
  %"11" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 9, !dbg !40
  store i32 0, i32* %"11", align 4, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %base.0}, i64 0, metadata !41), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !41), !dbg !43
  br label %main_bb4, !dbg !44

main_bb4:                                         ; preds = %main_bb8, %main_bb3
  %base.0 = phi i32 [ %"0", %main_bb3 ], [ %"22", %main_bb8 ]
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"21", %main_bb8 ]
  %"12" = sext i32 %i.0 to i64, !dbg !45
  %"13" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 %"12", !dbg !45
  %"14" = load i32* %"13", align 4, !dbg !45
  %"15" = sext i32 %i.0 to i64, !dbg !45
  %"16" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 %"15", !dbg !45
  %"17" = load i32* %"16", align 4, !dbg !45
  br label %main_bb5, !dbg !47

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %number.0 = phi i32 [ %base.0, %main_bb4 ], [ %"19", %main_bb6 ]
  %"18" = icmp ne i32 %"14", %"17", !dbg !45
  br i1 %"18", label %main_bb6, label %main_bb8, !dbg !45

main_bb6:                                         ; preds = %main_bb5
  %"19" = add nsw i32 %number.0, 1, !dbg !48
  %"20" = icmp eq i32 %"19", %"1", !dbg !48
  br i1 %"20", label %main_bb7, label %main_bb5, !dbg !48

main_bb7:                                         ; preds = %main_bb6
  ret i32 0, !dbg !51

main_bb8:                                         ; preds = %main_bb5
  %"21" = add nsw i32 %i.0, 1, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !13), !dbg !14
  %"22" = add nsw i32 %base.0, 8, !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !16), !dbg !17
  br label %main_bb4, !dbg !54
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 10} ; [ DW_TAG_subprogram ] [line 9] [def] [scope 10] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 0}
!13 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 11, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 11]
!14 = metadata !{i32 11, i32 9, metadata !4, null}
!15 = metadata !{i32 12, i32 16, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"base", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [base] [line 12]
!17 = metadata !{i32 12, i32 9, metadata !4, null}
!18 = metadata !{i32 13, i32 17, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 13]
!20 = metadata !{i32 13, i32 9, metadata !4, null}
!21 = metadata !{i32 786688, metadata !4, metadata !"old_", metadata !5, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old_] [line 14]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 320, i64 32, i32 0, i32 0, metadata !8, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 320, align 32, offset 0] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!25 = metadata !{i32 14, i32 9, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"new_", metadata !5, i32 14, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_] [line 14]
!27 = metadata !{i32 14, i32 19, metadata !4, null}
!28 = metadata !{i32 786688, metadata !29, metadata !"j", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 15]
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 15, i32 14, metadata !29, null}
!31 = metadata !{i32 15, i32 10, metadata !29, null}
!32 = metadata !{i32 15, i32 10, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 15, i32 10, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 786443, metadata !1, metadata !29, i32 15, i32 10, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 17, i32 19, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !29, i32 16, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 18, i32 19, metadata !36, null}
!38 = metadata !{i32 15, i32 30, metadata !29, null}
!39 = metadata !{i32 20, i32 5, metadata !4, null}
!40 = metadata !{i32 21, i32 5, metadata !4, null}
!41 = metadata !{i32 786688, metadata !42, metadata !"number", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [number] [line 24]
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 24, i32 13, metadata !42, null}
!44 = metadata !{i32 22, i32 5, metadata !4, null}
!45 = metadata !{i32 25, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !42, i32 25, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 25, i32 9, metadata !42, null}
!48 = metadata !{i32 27, i32 17, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 27, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 786443, metadata !1, metadata !42, i32 26, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 34, i32 5, metadata !4, null}
!52 = metadata !{i32 30, i32 9, metadata !42, null}
!53 = metadata !{i32 31, i32 9, metadata !42, null}
!54 = metadata !{i32 32, i32 5, metadata !42, null}

