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
  %"13" = icmp sgt i64 %"12", 65534, !dbg !37
  br i1 %"13", label %main_bb14, label %main_wrap_around.exit2, !dbg !37

main_wrap_around.exit2:                           ; preds = %main_bb13, %main_bb12, %main_bb11, %main_bb5
  %i.0 = phi i64 [ 0, %main_bb5 ], [ %"30", %main_bb11 ], [ %"35", %main_bb13 ], [ %"16", %main_bb12 ]
  %"14" = icmp slt i64 %i.0, %"12", !dbg !39
  br i1 %"14", label %main_wrap_around.exit, label %main_bb14, !dbg !39

main_wrap_around.exit:                            ; preds = %main_bb9, %main_bb8, %main_bb7, %main_wrap_around.exit2
  %i.1 = phi i64 [ 0, %main_wrap_around.exit2 ], [ %"21", %main_bb7 ], [ %"26", %main_bb9 ], [ %"16", %main_bb8 ]
  %"15" = icmp slt i64 %i.1, 3, !dbg !43
  %"16" = add nsw i64 %i.1, 1, !dbg !48
  %"17" = icmp sgt i64 %"16", 2147483647, !dbg !49
  br i1 %"15", label %main_bb6, label %main_bb10, !dbg !43

main_bb6:                                         ; preds = %main_wrap_around.exit
  br i1 %"17", label %main_bb7, label %main_bb8, !dbg !49

main_bb7:                                         ; preds = %main_bb6
  %"18" = sub nsw i64 %"16", 2147483647, !dbg !50
  %"19" = sub nsw i64 %"18", 1, !dbg !50
  %"20" = srem i64 %"19", 4294967296, !dbg !50
  %"21" = add nsw i64 -2147483648, %"20", !dbg !50
  br label %main_wrap_around.exit, !dbg !50

main_bb8:                                         ; preds = %main_bb6
  %"22" = icmp slt i64 %"16", -2147483648, !dbg !51
  br i1 %"22", label %main_bb9, label %main_wrap_around.exit, !dbg !51

main_bb9:                                         ; preds = %main_bb8
  %"23" = sub nsw i64 -2147483648, %"16", !dbg !52
  %"24" = sub nsw i64 %"23", 1, !dbg !52
  %"25" = srem i64 %"24", 4294967296, !dbg !52
  %"26" = sub nsw i64 2147483647, %"25", !dbg !52
  br label %main_wrap_around.exit, !dbg !52

main_bb10:                                        ; preds = %main_wrap_around.exit
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !53), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !63), !dbg !64
  br i1 %"17", label %main_bb11, label %main_bb12, !dbg !65

main_bb11:                                        ; preds = %main_bb10
  %"27" = sub nsw i64 %"16", 2147483647, !dbg !66
  %"28" = sub nsw i64 %"27", 1, !dbg !66
  %"29" = srem i64 %"28", 4294967296, !dbg !66
  %"30" = add nsw i64 -2147483648, %"29", !dbg !66
  br label %main_wrap_around.exit2, !dbg !66

main_bb12:                                        ; preds = %main_bb10
  %"31" = icmp slt i64 %"16", -2147483648, !dbg !67
  br i1 %"31", label %main_bb13, label %main_wrap_around.exit2, !dbg !67

main_bb13:                                        ; preds = %main_bb12
  %"32" = sub nsw i64 -2147483648, %"16", !dbg !68
  %"33" = sub nsw i64 %"32", 1, !dbg !68
  %"34" = srem i64 %"33", 4294967296, !dbg !68
  %"35" = sub nsw i64 2147483647, %"34", !dbg !68
  br label %main_wrap_around.exit2, !dbg !68

main_bb14:                                        ; preds = %main_wrap_around.exit2, %main_bb5
  ret i32 0, !dbg !69
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 21, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 22] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!14 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!15 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!16 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 11]
!17 = metadata !{i32 11, i32 33, metadata !4, null}
!18 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!19 = metadata !{i32 11, i32 50, metadata !4, null}
!20 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!21 = metadata !{i32 11, i32 73, metadata !4, null}
!22 = metadata !{i32 12, i32 5, metadata !4, null}
!23 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 12]
!24 = metadata !{i32 12, i32 15, metadata !4, null}
!25 = metadata !{i32 13, i32 9, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 14, i32 9, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 13, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 16, i32 14, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !26, i32 16, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 17, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !30, i32 16, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 20, i32 1, metadata !4, null}
!34 = metadata !{i32 24, i32 21, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"num", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 24]
!36 = metadata !{i32 24, i32 15, metadata !9, null}
!37 = metadata !{i32 25, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 29, i32 10, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !41, i32 29, i32 10, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 29, i32 10, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 29, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 31, i32 14, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 31, i32 14, i32 2, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 31, i32 14, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 31, i32 9, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786443, metadata !1, metadata !42, i32 30, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 31, i32 35, metadata !46, null}
!49 = metadata !{i32 13, i32 9, metadata !26, metadata !48}
!50 = metadata !{i32 14, i32 9, metadata !28, metadata !48}
!51 = metadata !{i32 16, i32 14, metadata !30, metadata !48}
!52 = metadata !{i32 17, i32 9, metadata !32, metadata !48}
!53 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [value] [line 11]
!54 = metadata !{i32 29, i32 33, metadata !42, null}
!55 = metadata !{i32 11, i32 33, metadata !4, metadata !54}
!56 = metadata !{i64 -2147483648}
!57 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!58 = metadata !{i32 11, i32 50, metadata !4, metadata !54}
!59 = metadata !{i64 2147483647}
!60 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!61 = metadata !{i32 11, i32 73, metadata !4, metadata !54}
!62 = metadata !{i64 4294967296}
!63 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, metadata !54} ; [ DW_TAG_auto_variable ] [range] [line 12]
!64 = metadata !{i32 12, i32 15, metadata !4, metadata !54}
!65 = metadata !{i32 13, i32 9, metadata !26, metadata !54}
!66 = metadata !{i32 14, i32 9, metadata !28, metadata !54}
!67 = metadata !{i32 16, i32 14, metadata !30, metadata !54}
!68 = metadata !{i32 17, i32 9, metadata !32, metadata !54}
!69 = metadata !{i32 37, i32 1, metadata !9, null}

