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
  %"12" = call i64 @__VERIFIER_nondet_uint(), !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !35), !dbg !36
  %"13" = call i64 @__VERIFIER_nondet_uint(), !dbg !37
  call void @llvm.dbg.value(metadata !{i64 %"13"}, i64 0, metadata !38), !dbg !39
  %"14" = call i64 @__VERIFIER_nondet_uint(), !dbg !40
  call void @llvm.dbg.value(metadata !{i64 %"14"}, i64 0, metadata !41), !dbg !42
  %"15" = icmp eq i64 %"13", 0, !dbg !43
  br i1 %"15", label %main_bb17, label %main_bb6, !dbg !43

main_bb6:                                         ; preds = %main_bb5
  %"16" = add nsw i64 %"13", %"14", !dbg !45
  %"17" = add nsw i64 %"16", 1, !dbg !45
  call void @llvm.dbg.value(metadata !{i64 %"17"}, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !49, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !52, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !56), !dbg !57
  %"18" = icmp sgt i64 %"17", 4294967295, !dbg !58
  br i1 %"18", label %main_bb7, label %main_bb8, !dbg !58

main_bb7:                                         ; preds = %main_bb6
  %"19" = sub nsw i64 %"17", 4294967295, !dbg !59
  %"20" = sub nsw i64 %"19", 1, !dbg !59
  %"21" = srem i64 %"20", 4294967296, !dbg !59
  br label %main_wrap_around.exit, !dbg !59

main_bb8:                                         ; preds = %main_bb6
  %"22" = icmp slt i64 %"17", 0, !dbg !60
  br i1 %"22", label %main_bb9, label %main_wrap_around.exit, !dbg !60

main_bb9:                                         ; preds = %main_bb8
  %"23" = sub nsw i64 0, %"17", !dbg !61
  %"24" = sub nsw i64 %"23", 1, !dbg !61
  %"25" = srem i64 %"24", 4294967296, !dbg !61
  %"26" = sub nsw i64 4294967295, %"25", !dbg !61
  br label %main_wrap_around.exit, !dbg !61

main_wrap_around.exit:                            ; preds = %main_bb7, %main_bb8, %main_bb9
  %.0.i = phi i64 [ %"21", %main_bb7 ], [ %"26", %main_bb9 ], [ %"17", %main_bb8 ], !dbg !45
  %"27" = icmp eq i64 %.0.i, 4294967295, !dbg !45
  br i1 %"27", label %main_bb17, label %main_wrap_around.exit2, !dbg !45

main_wrap_around.exit2:                           ; preds = %main_bb16, %main_bb15, %main_bb14, %main_wrap_around.exit
  %newbufsize.0 = phi i64 [ %"13", %main_wrap_around.exit ], [ %"44", %main_bb14 ], [ %"49", %main_bb16 ], [ %"40", %main_bb15 ]
  %"28" = add nsw i64 %"12", %"14", !dbg !62
  %"29" = add nsw i64 %"28", 1, !dbg !62
  %"30" = icmp sgt i64 %"29", 4294967295, !dbg !63
  br i1 %"30", label %main_bb10, label %main_bb11, !dbg !63

main_bb10:                                        ; preds = %main_wrap_around.exit2
  %"31" = sub nsw i64 %"29", 4294967295, !dbg !64
  %"32" = sub nsw i64 %"31", 1, !dbg !64
  %"33" = srem i64 %"32", 4294967296, !dbg !64
  br label %main_wrap_around.exit4, !dbg !64

main_bb11:                                        ; preds = %main_wrap_around.exit2
  %"34" = icmp slt i64 %"29", 0, !dbg !65
  br i1 %"34", label %main_bb12, label %main_wrap_around.exit4, !dbg !65

main_bb12:                                        ; preds = %main_bb11
  %"35" = sub nsw i64 0, %"29", !dbg !66
  %"36" = sub nsw i64 %"35", 1, !dbg !66
  %"37" = srem i64 %"36", 4294967296, !dbg !66
  %"38" = sub nsw i64 4294967295, %"37", !dbg !66
  br label %main_wrap_around.exit4, !dbg !66

main_wrap_around.exit4:                           ; preds = %main_bb10, %main_bb11, %main_bb12
  %.0.i3 = phi i64 [ %"33", %main_bb10 ], [ %"38", %main_bb12 ], [ %"29", %main_bb11 ], !dbg !62
  %"39" = icmp slt i64 %newbufsize.0, %.0.i3, !dbg !62
  br i1 %"39", label %main_bb13, label %main_bb17, !dbg !62

main_bb13:                                        ; preds = %main_wrap_around.exit4
  %"40" = mul nsw i64 %newbufsize.0, 2, !dbg !67
  %"41" = icmp sgt i64 %"40", 4294967295, !dbg !69
  br i1 %"41", label %main_bb14, label %main_bb15, !dbg !69

main_bb14:                                        ; preds = %main_bb13
  %"42" = sub nsw i64 %"40", 4294967295, !dbg !70
  %"43" = sub nsw i64 %"42", 1, !dbg !70
  %"44" = srem i64 %"43", 4294967296, !dbg !70
  br label %main_wrap_around.exit2, !dbg !70

main_bb15:                                        ; preds = %main_bb13
  %"45" = icmp slt i64 %"40", 0, !dbg !71
  br i1 %"45", label %main_bb16, label %main_wrap_around.exit2, !dbg !71

main_bb16:                                        ; preds = %main_bb15
  %"46" = sub nsw i64 0, %"40", !dbg !72
  %"47" = sub nsw i64 %"46", 1, !dbg !72
  %"48" = srem i64 %"47", 4294967296, !dbg !72
  %"49" = sub nsw i64 4294967295, %"48", !dbg !72
  br label %main_wrap_around.exit2, !dbg !72

main_bb17:                                        ; preds = %main_wrap_around.exit4, %main_wrap_around.exit, %main_bb5
  ret i32 0, !dbg !73
}

declare i64 @__VERIFIER_nondet_uint() #2

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
!34 = metadata !{i32 24, i32 25, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"pathlen", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pathlen] [line 24]
!36 = metadata !{i32 24, i32 15, metadata !9, null}
!37 = metadata !{i32 25, i32 28, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"newbufsize", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newbufsize] [line 25]
!39 = metadata !{i32 25, i32 15, metadata !9, null}
!40 = metadata !{i32 26, i32 21, metadata !9, null}
!41 = metadata !{i32 786688, metadata !9, metadata !"len", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [len] [line 26]
!42 = metadata !{i32 26, i32 15, metadata !9, null}
!43 = metadata !{i32 27, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !9, i32 27, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 31, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !45} ; [ DW_TAG_arg_variable ] [value] [line 12]
!48 = metadata !{i32 12, i32 33, metadata !4, metadata !45}
!49 = metadata !{i64 0}
!50 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !45} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!51 = metadata !{i32 12, i32 50, metadata !4, metadata !45}
!52 = metadata !{i64 4294967295}
!53 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !45} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!54 = metadata !{i32 12, i32 73, metadata !4, metadata !45}
!55 = metadata !{i64 4294967296}
!56 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !45} ; [ DW_TAG_auto_variable ] [range] [line 13]
!57 = metadata !{i32 13, i32 15, metadata !4, metadata !45}
!58 = metadata !{i32 14, i32 9, metadata !26, metadata !45}
!59 = metadata !{i32 15, i32 9, metadata !28, metadata !45}
!60 = metadata !{i32 17, i32 14, metadata !30, metadata !45}
!61 = metadata !{i32 18, i32 9, metadata !32, metadata !45}
!62 = metadata !{i32 35, i32 25, metadata !9, null}
!63 = metadata !{i32 14, i32 9, metadata !26, metadata !62}
!64 = metadata !{i32 15, i32 9, metadata !28, metadata !62}
!65 = metadata !{i32 17, i32 14, metadata !30, metadata !62}
!66 = metadata !{i32 18, i32 9, metadata !32, metadata !62}
!67 = metadata !{i32 37, i32 22, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !9, i32 36, i32 1, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 14, i32 9, metadata !26, metadata !67}
!70 = metadata !{i32 15, i32 9, metadata !28, metadata !67}
!71 = metadata !{i32 17, i32 14, metadata !30, metadata !67}
!72 = metadata !{i32 18, i32 9, metadata !32, metadata !67}
!73 = metadata !{i32 40, i32 1, metadata !9, null}

