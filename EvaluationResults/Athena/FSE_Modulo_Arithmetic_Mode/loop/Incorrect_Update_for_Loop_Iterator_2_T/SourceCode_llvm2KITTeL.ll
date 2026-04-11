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
  %"12" = call i64 @__VERIFIER_nondet_uchar(), !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !37), !dbg !40
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i64 %.0.i}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"25"}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"25"}, i64 0, metadata !50), !dbg !54
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !59), !dbg !60
  call void @llvm.dbg.value(metadata !{i64 %l.1}, i64 0, metadata !61), !dbg !63
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !64), !dbg !65
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !68), !dbg !69
  br label %main_wrap_around.exit4, !dbg !70

main_wrap_around.exit4:                           ; preds = %main_bb16, %main_bb15, %main_bb14, %main_bb5
  %l.0 = phi i64 [ %"12", %main_bb5 ], [ %"38", %main_bb14 ], [ %"43", %main_bb16 ], [ %l.1, %main_bb15 ]
  %"13" = add nsw i64 %l.0, -1, !dbg !71
  %"14" = icmp ne i64 %l.0, 0, !dbg !71
  %"15" = icmp sgt i64 %"13", 255, !dbg !73
  br i1 %"14", label %main_bb6, label %main_wrap_around.exit2, !dbg !71

main_bb6:                                         ; preds = %main_wrap_around.exit4
  br i1 %"15", label %main_bb7, label %main_bb8, !dbg !73

main_bb7:                                         ; preds = %main_bb6
  %"16" = sub nsw i64 %"13", 255, !dbg !74
  %"17" = sub nsw i64 %"16", 1, !dbg !74
  %"18" = srem i64 %"17", 256, !dbg !74
  br label %main_wrap_around.exit, !dbg !74

main_bb8:                                         ; preds = %main_bb6
  %"19" = icmp slt i64 %"13", 0, !dbg !75
  br i1 %"19", label %main_bb9, label %main_wrap_around.exit, !dbg !75

main_bb9:                                         ; preds = %main_bb8
  %"20" = sub nsw i64 0, %"13", !dbg !76
  %"21" = sub nsw i64 %"20", 1, !dbg !76
  %"22" = srem i64 %"21", 256, !dbg !76
  %"23" = sub nsw i64 255, %"22", !dbg !76
  br label %main_wrap_around.exit, !dbg !76

main_wrap_around.exit:                            ; preds = %main_bb7, %main_bb8, %main_bb9
  %.0.i = phi i64 [ %"18", %main_bb7 ], [ %"23", %main_bb9 ], [ %"13", %main_bb8 ], !dbg !38
  %"24" = icmp ne i64 %.0.i, 0, !dbg !77
  br i1 %"24", label %main_bb10, label %main_wrap_around.exit6, !dbg !77

main_bb10:                                        ; preds = %main_wrap_around.exit
  %"25" = add nsw i64 %.0.i, -1, !dbg !78
  %"26" = icmp sgt i64 %"25", 255, !dbg !80
  br i1 %"26", label %main_bb11, label %main_bb12, !dbg !80

main_bb11:                                        ; preds = %main_bb10
  %"27" = sub nsw i64 %"25", 255, !dbg !81
  %"28" = sub nsw i64 %"27", 1, !dbg !81
  %"29" = srem i64 %"28", 256, !dbg !81
  br label %main_wrap_around.exit6, !dbg !81

main_bb12:                                        ; preds = %main_bb10
  %"30" = icmp slt i64 %"25", 0, !dbg !82
  br i1 %"30", label %main_bb13, label %main_wrap_around.exit6, !dbg !82

main_bb13:                                        ; preds = %main_bb12
  %"31" = sub nsw i64 0, %"25", !dbg !83
  %"32" = sub nsw i64 %"31", 1, !dbg !83
  %"33" = srem i64 %"32", 256, !dbg !83
  %"34" = sub nsw i64 255, %"33", !dbg !83
  br label %main_wrap_around.exit6, !dbg !83

main_wrap_around.exit6:                           ; preds = %main_bb13, %main_bb12, %main_bb11, %main_wrap_around.exit
  %l.1 = phi i64 [ %.0.i, %main_wrap_around.exit ], [ %"29", %main_bb11 ], [ %"34", %main_bb13 ], [ %"25", %main_bb12 ]
  %"35" = icmp sgt i64 %l.1, 255, !dbg !84
  br i1 %"35", label %main_bb14, label %main_bb15, !dbg !84

main_bb14:                                        ; preds = %main_wrap_around.exit6
  %"36" = sub nsw i64 %l.1, 255, !dbg !85
  %"37" = sub nsw i64 %"36", 1, !dbg !85
  %"38" = srem i64 %"37", 256, !dbg !85
  br label %main_wrap_around.exit4, !dbg !85

main_bb15:                                        ; preds = %main_wrap_around.exit6
  %"39" = icmp slt i64 %l.1, 0, !dbg !86
  br i1 %"39", label %main_bb16, label %main_wrap_around.exit4, !dbg !86

main_bb16:                                        ; preds = %main_bb15
  %"40" = sub nsw i64 0, %l.1, !dbg !87
  %"41" = sub nsw i64 %"40", 1, !dbg !87
  %"42" = srem i64 %"41", 256, !dbg !87
  %"43" = sub nsw i64 255, %"42", !dbg !87
  br label %main_wrap_around.exit4, !dbg !87

main_wrap_around.exit2:                           ; preds = %main_wrap_around.exit4
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !88), !dbg !90
  call void @llvm.dbg.value(metadata !41, i64 0, metadata !91), !dbg !92
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !93), !dbg !94
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !95), !dbg !96
  ret i32 0, !dbg !97
}

declare i64 @__VERIFIER_nondet_uchar() #2

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
!34 = metadata !{i32 23, i32 19, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"l", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 23]
!36 = metadata !{i32 23, i32 15, metadata !9, null}
!37 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, metadata !38} ; [ DW_TAG_arg_variable ] [value] [line 11]
!38 = metadata !{i32 27, i32 5, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 11, i32 33, metadata !4, metadata !38}
!41 = metadata !{i64 0}
!42 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, metadata !38} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!43 = metadata !{i32 11, i32 50, metadata !4, metadata !38}
!44 = metadata !{i64 255}
!45 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, metadata !38} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!46 = metadata !{i32 11, i32 73, metadata !4, metadata !38}
!47 = metadata !{i64 256}
!48 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, metadata !38} ; [ DW_TAG_auto_variable ] [range] [line 12]
!49 = metadata !{i32 12, i32 15, metadata !4, metadata !38}
!50 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [value] [line 11]
!51 = metadata !{i32 30, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !53, i32 29, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 786443, metadata !1, metadata !39, i32 28, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 11, i32 33, metadata !4, metadata !51}
!55 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!56 = metadata !{i32 11, i32 50, metadata !4, metadata !51}
!57 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!58 = metadata !{i32 11, i32 73, metadata !4, metadata !51}
!59 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, metadata !51} ; [ DW_TAG_auto_variable ] [range] [line 12]
!60 = metadata !{i32 12, i32 15, metadata !4, metadata !51}
!61 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [value] [line 11]
!62 = metadata !{i32 33, i32 5, metadata !39, null}
!63 = metadata !{i32 11, i32 33, metadata !4, metadata !62}
!64 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!65 = metadata !{i32 11, i32 50, metadata !4, metadata !62}
!66 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!67 = metadata !{i32 11, i32 73, metadata !4, metadata !62}
!68 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, metadata !62} ; [ DW_TAG_auto_variable ] [range] [line 12]
!69 = metadata !{i32 12, i32 15, metadata !4, metadata !62}
!70 = metadata !{i32 25, i32 5, metadata !9, null}
!71 = metadata !{i32 25, i32 5, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !9, i32 25, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 13, i32 9, metadata !26, metadata !38}
!74 = metadata !{i32 14, i32 9, metadata !28, metadata !38}
!75 = metadata !{i32 16, i32 14, metadata !30, metadata !38}
!76 = metadata !{i32 17, i32 9, metadata !32, metadata !38}
!77 = metadata !{i32 28, i32 13, metadata !53, null}
!78 = metadata !{i32 28, i32 13, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !53, i32 28, i32 13, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 13, i32 9, metadata !26, metadata !51}
!81 = metadata !{i32 14, i32 9, metadata !28, metadata !51}
!82 = metadata !{i32 16, i32 14, metadata !30, metadata !51}
!83 = metadata !{i32 17, i32 9, metadata !32, metadata !51}
!84 = metadata !{i32 13, i32 9, metadata !26, metadata !62}
!85 = metadata !{i32 14, i32 9, metadata !28, metadata !62}
!86 = metadata !{i32 16, i32 14, metadata !30, metadata !62}
!87 = metadata !{i32 17, i32 9, metadata !32, metadata !62}
!88 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777227, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [value] [line 11]
!89 = metadata !{i32 35, i32 5, metadata !9, null}
!90 = metadata !{i32 11, i32 33, metadata !4, metadata !89}
!91 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554443, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [lower_bound] [line 11]
!92 = metadata !{i32 11, i32 50, metadata !4, metadata !89}
!93 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331659, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [upper_bound] [line 11]
!94 = metadata !{i32 11, i32 73, metadata !4, metadata !89}
!95 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 12, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [range] [line 12]
!96 = metadata !{i32 12, i32 15, metadata !4, metadata !89}
!97 = metadata !{i32 36, i32 5, metadata !9, null}

