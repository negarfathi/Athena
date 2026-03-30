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
  %"12" = call i64 @__VERIFIER_nondet_ushort(), !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !35), !dbg !36
  %"13" = call i64 @__VERIFIER_nondet_int(), !dbg !37
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !40, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !{i64 %"15"}, i64 0, metadata !45), !dbg !48
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !52, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i64 %"26"}, i64 0, metadata !58), !dbg !60
  call void @llvm.dbg.value(metadata !40, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !64), !dbg !65
  call void @llvm.dbg.value(metadata !66, i64 0, metadata !67), !dbg !68
  br label %main_wrap_around.exit2, !dbg !69

main_wrap_around.exit2:                           ; preds = %main_bb12, %main_bb11, %main_bb10, %main_bb5
  %s.0 = phi i64 [ %"12", %main_bb5 ], [ %"30", %main_bb10 ], [ %"35", %main_bb12 ], [ %"26", %main_bb11 ]
  %i.0 = phi i64 [ 0, %main_bb5 ], [ %.0.i, %main_bb10 ], [ %.0.i, %main_bb11 ], [ %.0.i, %main_bb12 ]
  %"14" = icmp slt i64 %i.0, %"13", !dbg !70
  br i1 %"14", label %main_bb6, label %main_bb13, !dbg !70

main_bb6:                                         ; preds = %main_wrap_around.exit2
  %"15" = add nsw i64 %i.0, 1, !dbg !46
  %"16" = icmp sgt i64 %"15", 2147483647, !dbg !73
  br i1 %"16", label %main_bb7, label %main_bb8, !dbg !73

main_bb7:                                         ; preds = %main_bb6
  %"17" = sub nsw i64 %"15", 2147483647, !dbg !74
  %"18" = sub nsw i64 %"17", 1, !dbg !74
  %"19" = srem i64 %"18", 4294967296, !dbg !74
  %"20" = add nsw i64 -2147483648, %"19", !dbg !74
  br label %main_wrap_around.exit, !dbg !74

main_bb8:                                         ; preds = %main_bb6
  %"21" = icmp slt i64 %"15", -2147483648, !dbg !75
  br i1 %"21", label %main_bb9, label %main_wrap_around.exit, !dbg !75

main_bb9:                                         ; preds = %main_bb8
  %"22" = sub nsw i64 -2147483648, %"15", !dbg !76
  %"23" = sub nsw i64 %"22", 1, !dbg !76
  %"24" = srem i64 %"23", 4294967296, !dbg !76
  %"25" = sub nsw i64 2147483647, %"24", !dbg !76
  br label %main_wrap_around.exit, !dbg !76

main_wrap_around.exit:                            ; preds = %main_bb7, %main_bb8, %main_bb9
  %.0.i = phi i64 [ %"20", %main_bb7 ], [ %"25", %main_bb9 ], [ %"15", %main_bb8 ], !dbg !46
  %"26" = add nsw i64 %s.0, 1, !dbg !59
  %"27" = icmp sgt i64 %"26", 65535, !dbg !77
  br i1 %"27", label %main_bb10, label %main_bb11, !dbg !77

main_bb10:                                        ; preds = %main_wrap_around.exit
  %"28" = sub nsw i64 %"26", 65535, !dbg !78
  %"29" = sub nsw i64 %"28", 1, !dbg !78
  %"30" = srem i64 %"29", 65536, !dbg !78
  br label %main_wrap_around.exit2, !dbg !78

main_bb11:                                        ; preds = %main_wrap_around.exit
  %"31" = icmp slt i64 %"26", 0, !dbg !79
  br i1 %"31", label %main_bb12, label %main_wrap_around.exit2, !dbg !79

main_bb12:                                        ; preds = %main_bb11
  %"32" = sub nsw i64 0, %"26", !dbg !80
  %"33" = sub nsw i64 %"32", 1, !dbg !80
  %"34" = srem i64 %"33", 65536, !dbg !80
  %"35" = sub nsw i64 65535, %"34", !dbg !80
  br label %main_wrap_around.exit2, !dbg !80

main_bb13:                                        ; preds = %main_wrap_around.exit2
  ret i32 0, !dbg !81
}

declare i64 @__VERIFIER_nondet_ushort() #2

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 12]
!17 = metadata !{i32 12, i32 33, metadata !4, null}
!18 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!19 = metadata !{i32 12, i32 50, metadata !4, null}
!20 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!21 = metadata !{i32 12, i32 73, metadata !4, null}
!22 = metadata !{i32 13, i32 5, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 13]
!24 = metadata !{i32 13, i32 15, metadata !4, null}
!25 = metadata !{i32 14, i32 9, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 15, i32 9, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 14, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 17, i32 14, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !26, i32 17, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 18, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 17, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 21, i32 1, metadata !4, null}
!34 = metadata !{i32 26, i32 14, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"seqnum", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [seqnum] [line 24]
!36 = metadata !{i32 24, i32 18, metadata !9, null}
!37 = metadata !{i32 27, i32 11, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"len", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 25]
!39 = metadata !{i32 25, i32 15, metadata !9, null}
!40 = metadata !{i64 0}
!41 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 28]
!42 = metadata !{i32 28, i32 15, metadata !9, null}
!43 = metadata !{i32 786688, metadata !9, metadata !"s", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 24]
!44 = metadata !{i32 24, i32 15, metadata !9, null}
!45 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !46} ; [ DW_TAG_arg_variable ] [value] [line 12]
!46 = metadata !{i32 29, i32 44, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !9, i32 29, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 12, i32 33, metadata !4, metadata !46}
!49 = metadata !{i64 -2147483648}
!50 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !46} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!51 = metadata !{i32 12, i32 50, metadata !4, metadata !46}
!52 = metadata !{i64 2147483647}
!53 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !46} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!54 = metadata !{i32 12, i32 73, metadata !4, metadata !46}
!55 = metadata !{i64 4294967296}
!56 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !46} ; [ DW_TAG_auto_variable ] [range] [line 13]
!57 = metadata !{i32 13, i32 15, metadata !4, metadata !46}
!58 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [value] [line 12]
!59 = metadata !{i32 29, i32 88, metadata !47, null}
!60 = metadata !{i32 12, i32 33, metadata !4, metadata !59}
!61 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!62 = metadata !{i32 12, i32 50, metadata !4, metadata !59}
!63 = metadata !{i64 65535}
!64 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!65 = metadata !{i32 12, i32 73, metadata !4, metadata !59}
!66 = metadata !{i64 65536}
!67 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [range] [line 13]
!68 = metadata !{i32 13, i32 15, metadata !4, metadata !59}
!69 = metadata !{i32 29, i32 10, metadata !47, null}
!70 = metadata !{i32 29, i32 10, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 29, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 786443, metadata !1, metadata !47, i32 29, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 14, i32 9, metadata !26, metadata !46}
!74 = metadata !{i32 15, i32 9, metadata !28, metadata !46}
!75 = metadata !{i32 17, i32 14, metadata !30, metadata !46}
!76 = metadata !{i32 18, i32 9, metadata !32, metadata !46}
!77 = metadata !{i32 14, i32 9, metadata !26, metadata !59}
!78 = metadata !{i32 15, i32 9, metadata !28, metadata !59}
!79 = metadata !{i32 17, i32 14, metadata !30, metadata !59}
!80 = metadata !{i32 18, i32 9, metadata !32, metadata !59}
!81 = metadata !{i32 33, i32 5, metadata !9, null}

