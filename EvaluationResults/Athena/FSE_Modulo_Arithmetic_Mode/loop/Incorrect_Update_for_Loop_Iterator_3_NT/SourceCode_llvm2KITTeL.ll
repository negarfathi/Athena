; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !16), !dbg !17
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !20), !dbg !21
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !22
  %"1" = add nsw i64 %"0", 1, !dbg !22
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !23), !dbg !24
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !25
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !25

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !27
  %"4" = sub nsw i64 %"3", 1, !dbg !27
  %"5" = srem i64 %"4", %"1", !dbg !27
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !27
  br label %wrap_around_bb4, !dbg !27

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !29
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !29

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !31
  %"9" = sub nsw i64 %"8", 1, !dbg !31
  %"10" = srem i64 %"9", %"1", !dbg !31
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !31
  br label %wrap_around_bb4, !dbg !31

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"12" = call i64 @__VERIFIER_nondet_int(), !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !35), !dbg !36
  %"13" = call i64 @__VERIFIER_nondet_int(), !dbg !37
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !38), !dbg !39
  %"14" = call i64 @__VERIFIER_nondet_int(), !dbg !40
  call void @llvm.dbg.value(metadata !{i64 %"14"}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !43), !dbg !46
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !50, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"14"}, i64 0, metadata !35), !dbg !36
  br label %main_bb6, !dbg !56

main_bb6:                                         ; preds = %main_wrap_around.exit, %main_bb5
  %nfds.0 = phi i64 [ %"12", %main_bb5 ], [ %..0.i, %main_wrap_around.exit ]
  %"15" = icmp sle i64 %nfds.0, %"13", !dbg !57
  br i1 %"15", label %main_bb7, label %main_bb11, !dbg !57

main_bb7:                                         ; preds = %main_bb6
  %"16" = mul nsw i64 %nfds.0, 2, !dbg !44
  %"17" = icmp sgt i64 %"16", 2147483647, !dbg !59
  br i1 %"17", label %main_bb8, label %main_bb9, !dbg !59

main_bb8:                                         ; preds = %main_bb7
  %"18" = sub nsw i64 %"16", 2147483647, !dbg !60
  %"19" = sub nsw i64 %"18", 1, !dbg !60
  %"20" = srem i64 %"19", 4294967296, !dbg !60
  %"21" = add nsw i64 -2147483648, %"20", !dbg !60
  br label %main_wrap_around.exit, !dbg !60

main_bb9:                                         ; preds = %main_bb7
  %"22" = icmp slt i64 %"16", -2147483648, !dbg !61
  br i1 %"22", label %main_bb10, label %main_wrap_around.exit, !dbg !61

main_bb10:                                        ; preds = %main_bb9
  %"23" = sub nsw i64 -2147483648, %"16", !dbg !62
  %"24" = sub nsw i64 %"23", 1, !dbg !62
  %"25" = srem i64 %"24", 4294967296, !dbg !62
  %"26" = sub nsw i64 2147483647, %"25", !dbg !62
  br label %main_wrap_around.exit, !dbg !62

main_wrap_around.exit:                            ; preds = %main_bb8, %main_bb9, %main_bb10
  %.0.i = phi i64 [ %"21", %main_bb8 ], [ %"26", %main_bb10 ], [ %"16", %main_bb9 ], !dbg !44
  %"27" = icmp sgt i64 %.0.i, %"14", !dbg !63
  %..0.i = select i1 %"27", i64 %"14", i64 %.0.i, !dbg !63
  br label %main_bb6, !dbg !65

main_bb11:                                        ; preds = %main_bb6
  ret i32 0, !dbg !66
}

declare i64 @__VERIFIER_nondet_int() #2

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14}
!llvm.ident = !{!15}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 24, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 14]
!17 = metadata !{i32 14, i32 33, metadata !4, null}
!18 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!19 = metadata !{i32 14, i32 50, metadata !4, null}
!20 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!21 = metadata !{i32 14, i32 73, metadata !4, null}
!22 = metadata !{i32 15, i32 5, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 15]
!24 = metadata !{i32 15, i32 15, metadata !4, null}
!25 = metadata !{i32 16, i32 9, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 17, i32 9, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 16, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 19, i32 14, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !26, i32 19, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 20, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 19, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 23, i32 1, metadata !4, null}
!34 = metadata !{i32 26, i32 22, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"nfds", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nfds] [line 26]
!36 = metadata !{i32 26, i32 15, metadata !9, null}
!37 = metadata !{i32 27, i32 20, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"nr", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nr] [line 27]
!39 = metadata !{i32 27, i32 15, metadata !9, null}
!40 = metadata !{i32 28, i32 25, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"NR_OPEN", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [NR_OPEN] [line 28]
!42 = metadata !{i32 28, i32 15, metadata !9, null}
!43 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, metadata !44} ; [ DW_TAG_arg_variable ] [value] [line 14]
!44 = metadata !{i32 31, i32 16, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !9, i32 30, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 14, i32 33, metadata !4, metadata !44}
!47 = metadata !{i64 -2147483648}
!48 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, metadata !44} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!49 = metadata !{i32 14, i32 50, metadata !4, metadata !44}
!50 = metadata !{i64 2147483647}
!51 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, metadata !44} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!52 = metadata !{i32 14, i32 73, metadata !4, metadata !44}
!53 = metadata !{i64 4294967296}
!54 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, metadata !44} ; [ DW_TAG_auto_variable ] [range] [line 15]
!55 = metadata !{i32 15, i32 15, metadata !4, metadata !44}
!56 = metadata !{i32 29, i32 5, metadata !9, null}
!57 = metadata !{i32 29, i32 5, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !9, i32 29, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 16, i32 9, metadata !26, metadata !44}
!60 = metadata !{i32 17, i32 9, metadata !28, metadata !44}
!61 = metadata !{i32 19, i32 14, metadata !30, metadata !44}
!62 = metadata !{i32 20, i32 9, metadata !32, metadata !44}
!63 = metadata !{i32 32, i32 13, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !45, i32 32, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 36, i32 5, metadata !45, null}
!66 = metadata !{i32 37, i32 5, metadata !9, null}

