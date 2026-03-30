; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !19), !dbg !20
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !21), !dbg !22
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !23), !dbg !24
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !25
  %"1" = add nsw i64 %"0", 1, !dbg !25
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !26), !dbg !27
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !28
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !28

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !30
  %"4" = sub nsw i64 %"3", 1, !dbg !30
  %"5" = srem i64 %"4", %"1", !dbg !30
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !30
  br label %wrap_around_bb4, !dbg !30

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !32
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !32

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !34
  %"9" = sub nsw i64 %"8", 1, !dbg !34
  %"10" = srem i64 %"9", %"1", !dbg !34
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !34
  br label %wrap_around_bb4, !dbg !34

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @gettablesize() #0 {
gettablesize_bb5:
  %"12" = call i64 @__VERIFIER_nondet_int(), !dbg !37
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !38), !dbg !39
  %"13" = srem i64 %"12", 99999, !dbg !40
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !38), !dbg !39
  %"14" = icmp slt i64 %"13", 0, !dbg !52
  br i1 %"14", label %gettablesize_bb6, label %gettablesize_wrap_around.exit, !dbg !52

gettablesize_bb6:                                 ; preds = %gettablesize_bb5
  %"15" = sub nsw i64 0, %"13", !dbg !54
  call void @llvm.dbg.value(metadata !{i64 %"15"}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !62), !dbg !63
  %"16" = icmp sgt i64 %"15", 2147483647, !dbg !64
  br i1 %"16", label %gettablesize_bb7, label %gettablesize_bb8, !dbg !64

gettablesize_bb7:                                 ; preds = %gettablesize_bb6
  %"17" = sub nsw i64 %"15", 2147483647, !dbg !65
  %"18" = sub nsw i64 %"17", 1, !dbg !65
  %"19" = srem i64 %"18", 4294967296, !dbg !65
  %"20" = add nsw i64 -2147483648, %"19", !dbg !65
  br label %gettablesize_wrap_around.exit, !dbg !65

gettablesize_bb8:                                 ; preds = %gettablesize_bb6
  %"21" = icmp slt i64 %"15", -2147483648, !dbg !66
  br i1 %"21", label %gettablesize_bb9, label %gettablesize_wrap_around.exit, !dbg !66

gettablesize_bb9:                                 ; preds = %gettablesize_bb8
  %"22" = sub nsw i64 -2147483648, %"15", !dbg !67
  %"23" = sub nsw i64 %"22", 1, !dbg !67
  %"24" = srem i64 %"23", 4294967296, !dbg !67
  %"25" = sub nsw i64 2147483647, %"24", !dbg !67
  br label %gettablesize_wrap_around.exit, !dbg !67

gettablesize_wrap_around.exit:                    ; preds = %gettablesize_bb5, %gettablesize_bb9, %gettablesize_bb8, %gettablesize_bb7
  %.0 = phi i64 [ %"20", %gettablesize_bb7 ], [ %"25", %gettablesize_bb9 ], [ %"15", %gettablesize_bb8 ], [ %"13", %gettablesize_bb5 ]
  ret i64 %.0, !dbg !68
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"26" = call i64 @__VERIFIER_nondet_int() #3, !dbg !69
  call void @llvm.dbg.value(metadata !{i64 %"26"}, i64 0, metadata !71) #3, !dbg !72
  %"27" = srem i64 %"26", 99999, !dbg !73
  call void @llvm.dbg.value(metadata !{i64 %"27"}, i64 0, metadata !74) #3, !dbg !75
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !76) #3, !dbg !77
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !78) #3, !dbg !79
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !80) #3, !dbg !81
  call void @llvm.dbg.value(metadata !{i64 %"27"}, i64 0, metadata !71) #3, !dbg !72
  %"28" = icmp slt i64 %"27", 0, !dbg !82
  br i1 %"28", label %main_bb11, label %main_gettablesize.exit, !dbg !82

main_bb11:                                        ; preds = %main_bb10
  %"29" = sub nsw i64 0, %"27", !dbg !83
  call void @llvm.dbg.value(metadata !{i64 %"29"}, i64 0, metadata !84) #3, !dbg !85
  call void @llvm.dbg.value(metadata !43, i64 0, metadata !86) #3, !dbg !87
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !88) #3, !dbg !89
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !90) #3, !dbg !91
  %"30" = icmp sgt i64 %"29", 2147483647, !dbg !92
  br i1 %"30", label %main_bb12, label %main_bb13, !dbg !92

main_bb12:                                        ; preds = %main_bb11
  %"31" = sub nsw i64 %"29", 2147483647, !dbg !93
  %"32" = sub nsw i64 %"31", 1, !dbg !93
  %"33" = srem i64 %"32", 4294967296, !dbg !93
  %"34" = add nsw i64 -2147483648, %"33", !dbg !93
  br label %main_gettablesize.exit, !dbg !93

main_bb13:                                        ; preds = %main_bb11
  %"35" = icmp slt i64 %"29", -2147483648, !dbg !94
  br i1 %"35", label %main_bb14, label %main_gettablesize.exit, !dbg !94

main_bb14:                                        ; preds = %main_bb13
  %"36" = sub nsw i64 -2147483648, %"29", !dbg !95
  %"37" = sub nsw i64 %"36", 1, !dbg !95
  %"38" = srem i64 %"37", 4294967296, !dbg !95
  %"39" = sub nsw i64 2147483647, %"38", !dbg !95
  br label %main_gettablesize.exit, !dbg !95

main_gettablesize.exit:                           ; preds = %main_bb10, %main_bb12, %main_bb13, %main_bb14
  %.0.i = phi i64 [ %"34", %main_bb12 ], [ %"39", %main_bb14 ], [ %"29", %main_bb13 ], [ %"27", %main_bb10 ], !dbg !70
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !96), !dbg !98
  call void @llvm.dbg.value(metadata !99, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !102, i64 0, metadata !103), !dbg !104
  call void @llvm.dbg.value(metadata !99, i64 0, metadata !105), !dbg !106
  %"40" = icmp sgt i64 %.0.i, -1, !dbg !107
  br i1 %"40", label %main_wrap_around.exit, label %main_bb15, !dbg !107

main_bb15:                                        ; preds = %main_gettablesize.exit
  %"41" = icmp slt i64 %.0.i, 0, !dbg !108
  %..0.i = select i1 %"41", i64 undef, i64 %.0.i, !dbg !108
  br label %main_wrap_around.exit, !dbg !108

main_wrap_around.exit:                            ; preds = %main_bb15, %main_gettablesize.exit
  %.0.i1 = phi i64 [ undef, %main_gettablesize.exit ], [ %..0.i, %main_bb15 ], !dbg !97
  call void @llvm.dbg.value(metadata !{i64 %.0.i1}, i64 0, metadata !109), !dbg !110
  call void @llvm.dbg.value(metadata !99, i64 0, metadata !111), !dbg !112
  call void @llvm.dbg.value(metadata !{i64 %"43"}, i64 0, metadata !113), !dbg !116
  call void @llvm.dbg.value(metadata !99, i64 0, metadata !117), !dbg !118
  call void @llvm.dbg.value(metadata !119, i64 0, metadata !120), !dbg !121
  call void @llvm.dbg.value(metadata !122, i64 0, metadata !123), !dbg !124
  br label %main_wrap_around.exit3, !dbg !125

main_wrap_around.exit3:                           ; preds = %main_bb19, %main_bb18, %main_bb17, %main_wrap_around.exit
  %i.0 = phi i64 [ 0, %main_wrap_around.exit ], [ %"47", %main_bb17 ], [ %"52", %main_bb19 ], [ %"43", %main_bb18 ]
  %"42" = icmp slt i64 %i.0, %.0.i1, !dbg !126
  br i1 %"42", label %main_bb16, label %main_bb20, !dbg !126

main_bb16:                                        ; preds = %main_wrap_around.exit3
  %"43" = add nsw i64 %i.0, 1, !dbg !114
  %"44" = icmp sgt i64 %"43", 65535, !dbg !129
  br i1 %"44", label %main_bb17, label %main_bb18, !dbg !129

main_bb17:                                        ; preds = %main_bb16
  %"45" = sub nsw i64 %"43", 65535, !dbg !130
  %"46" = sub nsw i64 %"45", 1, !dbg !130
  %"47" = srem i64 %"46", 65536, !dbg !130
  br label %main_wrap_around.exit3, !dbg !130

main_bb18:                                        ; preds = %main_bb16
  %"48" = icmp slt i64 %"43", 0, !dbg !131
  br i1 %"48", label %main_bb19, label %main_wrap_around.exit3, !dbg !131

main_bb19:                                        ; preds = %main_bb18
  %"49" = sub nsw i64 0, %"43", !dbg !132
  %"50" = sub nsw i64 %"49", 1, !dbg !132
  %"51" = srem i64 %"50", 65536, !dbg !132
  %"52" = sub nsw i64 65535, %"51", !dbg !132
  br label %main_wrap_around.exit3, !dbg !132

main_bb20:                                        ; preds = %main_wrap_around.exit3
  ret i32 0, !dbg !133
}

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17}
!llvm.ident = !{!18}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gettablesize", metadata !"gettablesize", metadata !"", i32 22, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @gettablesize, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 22] [def] [scope 23] [gettablesize]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 33, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!17 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!18 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!19 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 12]
!20 = metadata !{i32 12, i32 33, metadata !4, null}
!21 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!22 = metadata !{i32 12, i32 50, metadata !4, null}
!23 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!24 = metadata !{i32 12, i32 73, metadata !4, null}
!25 = metadata !{i32 13, i32 5, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 13]
!27 = metadata !{i32 13, i32 15, metadata !4, null}
!28 = metadata !{i32 14, i32 9, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 15, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !29, i32 14, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 17, i32 14, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !29, i32 17, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 18, i32 9, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !33, i32 17, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 21, i32 1, metadata !4, null}
!37 = metadata !{i32 24, i32 19, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!39 = metadata !{i32 24, i32 15, metadata !9, null}
!40 = metadata !{i32 25, i32 9, metadata !9, null}
!41 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !40} ; [ DW_TAG_arg_variable ] [value] [line 12]
!42 = metadata !{i32 12, i32 33, metadata !4, metadata !40}
!43 = metadata !{i64 -2147483648}
!44 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !40} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!45 = metadata !{i32 12, i32 50, metadata !4, metadata !40}
!46 = metadata !{i64 2147483647}
!47 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !40} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!48 = metadata !{i32 12, i32 73, metadata !4, metadata !40}
!49 = metadata !{i64 4294967296}
!50 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !40} ; [ DW_TAG_auto_variable ] [range] [line 13]
!51 = metadata !{i32 13, i32 15, metadata !4, metadata !40}
!52 = metadata !{i32 26, i32 9, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 28, i32 16, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !53, i32 27, i32 1, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [value] [line 12]
!57 = metadata !{i32 12, i32 33, metadata !4, metadata !54}
!58 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!59 = metadata !{i32 12, i32 50, metadata !4, metadata !54}
!60 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !54} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!61 = metadata !{i32 12, i32 73, metadata !4, metadata !54}
!62 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !54} ; [ DW_TAG_auto_variable ] [range] [line 13]
!63 = metadata !{i32 13, i32 15, metadata !4, metadata !54}
!64 = metadata !{i32 14, i32 9, metadata !29, metadata !54}
!65 = metadata !{i32 15, i32 9, metadata !31, metadata !54}
!66 = metadata !{i32 17, i32 14, metadata !33, metadata !54}
!67 = metadata !{i32 18, i32 9, metadata !35, metadata !54}
!68 = metadata !{i32 32, i32 1, metadata !9, null}
!69 = metadata !{i32 24, i32 19, metadata !9, metadata !70}
!70 = metadata !{i32 36, i32 37, metadata !12, null}
!71 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [i] [line 24]
!72 = metadata !{i32 24, i32 15, metadata !9, metadata !70}
!73 = metadata !{i32 25, i32 9, metadata !9, metadata !70}
!74 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [value] [line 12]
!75 = metadata !{i32 12, i32 33, metadata !4, metadata !73}
!76 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!77 = metadata !{i32 12, i32 50, metadata !4, metadata !73}
!78 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!79 = metadata !{i32 12, i32 73, metadata !4, metadata !73}
!80 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !73} ; [ DW_TAG_auto_variable ] [range] [line 13]
!81 = metadata !{i32 13, i32 15, metadata !4, metadata !73}
!82 = metadata !{i32 26, i32 9, metadata !53, metadata !70}
!83 = metadata !{i32 28, i32 16, metadata !55, metadata !70}
!84 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [value] [line 12]
!85 = metadata !{i32 12, i32 33, metadata !4, metadata !83}
!86 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!87 = metadata !{i32 12, i32 50, metadata !4, metadata !83}
!88 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!89 = metadata !{i32 12, i32 73, metadata !4, metadata !83}
!90 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !83} ; [ DW_TAG_auto_variable ] [range] [line 13]
!91 = metadata !{i32 13, i32 15, metadata !4, metadata !83}
!92 = metadata !{i32 14, i32 9, metadata !29, metadata !83}
!93 = metadata !{i32 15, i32 9, metadata !31, metadata !83}
!94 = metadata !{i32 17, i32 14, metadata !33, metadata !83}
!95 = metadata !{i32 18, i32 9, metadata !35, metadata !83}
!96 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [value] [line 12]
!97 = metadata !{i32 36, i32 25, metadata !12, null}
!98 = metadata !{i32 12, i32 33, metadata !4, metadata !97}
!99 = metadata !{i64 0}
!100 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!101 = metadata !{i32 12, i32 50, metadata !4, metadata !97}
!102 = metadata !{i64 -1}
!103 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !97} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!104 = metadata !{i32 12, i32 73, metadata !4, metadata !97}
!105 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !97} ; [ DW_TAG_auto_variable ] [range] [line 13]
!106 = metadata !{i32 13, i32 15, metadata !4, metadata !97}
!107 = metadata !{i32 14, i32 9, metadata !29, metadata !97}
!108 = metadata !{i32 17, i32 14, metadata !33, metadata !97}
!109 = metadata !{i32 786688, metadata !12, metadata !"max_fds", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max_fds] [line 36]
!110 = metadata !{i32 36, i32 15, metadata !12, null}
!111 = metadata !{i32 786688, metadata !12, metadata !"i", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 35]
!112 = metadata !{i32 35, i32 15, metadata !12, null}
!113 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [value] [line 12]
!114 = metadata !{i32 37, i32 37, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !12, i32 37, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 12, i32 33, metadata !4, metadata !114}
!117 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!118 = metadata !{i32 12, i32 50, metadata !4, metadata !114}
!119 = metadata !{i64 65535}
!120 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !114} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!121 = metadata !{i32 12, i32 73, metadata !4, metadata !114}
!122 = metadata !{i64 65536}
!123 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !114} ; [ DW_TAG_auto_variable ] [range] [line 13]
!124 = metadata !{i32 13, i32 15, metadata !4, metadata !114}
!125 = metadata !{i32 37, i32 10, metadata !115, null}
!126 = metadata !{i32 37, i32 10, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !128, i32 37, i32 10, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!128 = metadata !{i32 786443, metadata !1, metadata !115, i32 37, i32 10, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!129 = metadata !{i32 14, i32 9, metadata !29, metadata !114}
!130 = metadata !{i32 15, i32 9, metadata !31, metadata !114}
!131 = metadata !{i32 17, i32 14, metadata !33, metadata !114}
!132 = metadata !{i32 18, i32 9, metadata !35, metadata !114}
!133 = metadata !{i32 42, i32 5, metadata !12, null}

