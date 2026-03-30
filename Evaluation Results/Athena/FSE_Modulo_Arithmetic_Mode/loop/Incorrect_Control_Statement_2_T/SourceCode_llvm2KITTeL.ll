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
  %slots_used = alloca [10 x i64], align 16
  %ereg = alloca [10 x i64], align 16
  %"12" = call i64 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i64 %"12"}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !36, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %slots_used}, metadata !39), !dbg !43
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %ereg}, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !47), !dbg !49
  call void @llvm.dbg.value(metadata !{i64 %"18"}, i64 0, metadata !50), !dbg !52
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !60), !dbg !61
  br label %main_wrap_around.exit, !dbg !62

main_wrap_around.exit:                            ; preds = %main_bb9, %main_bb8, %main_bb7, %main_bb5
  %i.0 = phi i64 [ 0, %main_bb5 ], [ %"23", %main_bb7 ], [ %"28", %main_bb9 ], [ %"18", %main_bb8 ]
  %"13" = icmp slt i64 %i.0, 10, !dbg !63
  br i1 %"13", label %main_bb6, label %main_wrap_around.exit2, !dbg !63

main_bb6:                                         ; preds = %main_wrap_around.exit
  %"14" = call i64 @__VERIFIER_nondet_int(), !dbg !66
  %"15" = getelementptr inbounds [10 x i64]* %slots_used, i32 0, i64 %i.0, !dbg !66
  store i64 %"14", i64* %"15", align 8, !dbg !66
  %"16" = call i64 @__VERIFIER_nondet_int(), !dbg !68
  %"17" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i.0, !dbg !68
  store i64 %"16", i64* %"17", align 8, !dbg !68
  %"18" = add nsw i64 %i.0, 1, !dbg !51
  %"19" = icmp sgt i64 %"18", 2147483647, !dbg !69
  br i1 %"19", label %main_bb7, label %main_bb8, !dbg !69

main_bb7:                                         ; preds = %main_bb6
  %"20" = sub nsw i64 %"18", 2147483647, !dbg !70
  %"21" = sub nsw i64 %"20", 1, !dbg !70
  %"22" = srem i64 %"21", 4294967296, !dbg !70
  %"23" = add nsw i64 -2147483648, %"22", !dbg !70
  br label %main_wrap_around.exit, !dbg !70

main_bb8:                                         ; preds = %main_bb6
  %"24" = icmp slt i64 %"18", -2147483648, !dbg !71
  br i1 %"24", label %main_bb9, label %main_wrap_around.exit, !dbg !71

main_bb9:                                         ; preds = %main_bb8
  %"25" = sub nsw i64 -2147483648, %"18", !dbg !72
  %"26" = sub nsw i64 %"25", 1, !dbg !72
  %"27" = srem i64 %"26", 4294967296, !dbg !72
  %"28" = sub nsw i64 2147483647, %"27", !dbg !72
  br label %main_wrap_around.exit, !dbg !72

main_wrap_around.exit2:                           ; preds = %main_bb18, %main_bb17, %main_bb16, %main_wrap_around.exit
  %i1.0 = phi i64 [ 0, %main_wrap_around.exit ], [ %"45", %main_bb16 ], [ %"50", %main_bb18 ], [ %"40", %main_bb17 ]
  %table.0 = phi i64 [ %"12", %main_wrap_around.exit ], [ %table.1, %main_bb16 ], [ %table.1, %main_bb17 ], [ %table.1, %main_bb18 ]
  %"29" = icmp slt i64 %i1.0, 10, !dbg !73
  br i1 %"29", label %main_bb10, label %main_bb19, !dbg !73

main_bb10:                                        ; preds = %main_wrap_around.exit2
  %"30" = getelementptr inbounds [10 x i64]* %slots_used, i32 0, i64 %i1.0, !dbg !75
  %"31" = load i64* %"30", align 8, !dbg !75
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb10
  %Pivot = icmp slt i64 %"31", 2
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock3

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i64 %"31", 0
  br i1 %SwitchLeaf, label %main_bb11, label %main_NewDefault

main_bb11:                                        ; preds = %main_LeafBlock
  %"32" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !77
  %"33" = load i64* %"32", align 8, !dbg !77
  %"34" = icmp ne i64 %"33", 0, !dbg !77
  br i1 %"34", label %main_bb12, label %main_bb19, !dbg !77

main_bb12:                                        ; preds = %main_bb11
  %"35" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !80
  %"36" = load i64* %"35", align 8, !dbg !80
  br label %main_bb14, !dbg !81

main_LeafBlock3:                                  ; preds = %main_NodeBlock
  %SwitchLeaf4 = icmp eq i64 %"31", 2
  br i1 %SwitchLeaf4, label %main_bb14, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock3, %main_LeafBlock
  br label %main_bb13

main_bb13:                                        ; preds = %main_NewDefault
  %"37" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !82
  %"38" = load i64* %"37", align 8, !dbg !82
  br label %main_bb14, !dbg !83

main_bb14:                                        ; preds = %main_LeafBlock3, %main_bb13, %main_bb12
  %table.1 = phi i64 [ %"38", %main_bb13 ], [ %"36", %main_bb12 ], [ %table.0, %main_LeafBlock3 ]
  %"39" = icmp ne i64 %table.1, 0, !dbg !84
  br i1 %"39", label %main_bb19, label %main_bb15, !dbg !84

main_bb15:                                        ; preds = %main_bb14
  %"40" = add nsw i64 %i1.0, 1, !dbg !86
  %"41" = icmp sgt i64 %"40", 2147483647, !dbg !87
  br i1 %"41", label %main_bb16, label %main_bb17, !dbg !87

main_bb16:                                        ; preds = %main_bb15
  %"42" = sub nsw i64 %"40", 2147483647, !dbg !88
  %"43" = sub nsw i64 %"42", 1, !dbg !88
  %"44" = srem i64 %"43", 4294967296, !dbg !88
  %"45" = add nsw i64 -2147483648, %"44", !dbg !88
  br label %main_wrap_around.exit2, !dbg !88

main_bb17:                                        ; preds = %main_bb15
  %"46" = icmp slt i64 %"40", -2147483648, !dbg !89
  br i1 %"46", label %main_bb18, label %main_wrap_around.exit2, !dbg !89

main_bb18:                                        ; preds = %main_bb17
  %"47" = sub nsw i64 -2147483648, %"40", !dbg !90
  %"48" = sub nsw i64 %"47", 1, !dbg !90
  %"49" = srem i64 %"48", 4294967296, !dbg !90
  %"50" = sub nsw i64 2147483647, %"49", !dbg !90
  br label %main_wrap_around.exit2, !dbg !90

main_bb19:                                        ; preds = %main_wrap_around.exit2, %main_bb14, %main_bb11
  ret i32 0, !dbg !91
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
!34 = metadata !{i32 786688, metadata !9, metadata !"table", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [table] [line 27]
!35 = metadata !{i32 27, i32 15, metadata !9, null}
!36 = metadata !{i64 10}
!37 = metadata !{i32 786688, metadata !9, metadata !"EVENT_EPOLL_TABLES", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EVENT_EPOLL_TABLES] [line 24]
!38 = metadata !{i32 24, i32 15, metadata !9, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"slots_used", metadata !5, i32 25, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slots_used] [line 25]
!40 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !8, metadata !41, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from long long int]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!43 = metadata !{i32 25, i32 15, metadata !9, null}
!44 = metadata !{i32 786688, metadata !9, metadata !"ereg", metadata !5, i32 26, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ereg] [line 26]
!45 = metadata !{i32 26, i32 15, metadata !9, null}
!46 = metadata !{i64 0}
!47 = metadata !{i32 786688, metadata !48, metadata !"i", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 28]
!48 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 28, i32 20, metadata !48, null}
!50 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [value] [line 12]
!51 = metadata !{i32 28, i32 42, metadata !48, null}
!52 = metadata !{i32 12, i32 33, metadata !4, metadata !51}
!53 = metadata !{i64 -2147483648}
!54 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!55 = metadata !{i32 12, i32 50, metadata !4, metadata !51}
!56 = metadata !{i64 2147483647}
!57 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!58 = metadata !{i32 12, i32 73, metadata !4, metadata !51}
!59 = metadata !{i64 4294967296}
!60 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !51} ; [ DW_TAG_auto_variable ] [range] [line 13]
!61 = metadata !{i32 13, i32 15, metadata !4, metadata !51}
!62 = metadata !{i32 28, i32 10, metadata !48, null}
!63 = metadata !{i32 28, i32 10, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 28, i32 10, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 786443, metadata !1, metadata !48, i32 28, i32 10, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 30, i32 25, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !48, i32 29, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 31, i32 19, metadata !67, null}
!69 = metadata !{i32 14, i32 9, metadata !26, metadata !51}
!70 = metadata !{i32 15, i32 9, metadata !28, metadata !51}
!71 = metadata !{i32 17, i32 14, metadata !30, metadata !51}
!72 = metadata !{i32 18, i32 9, metadata !32, metadata !51}
!73 = metadata !{i32 34, i32 5, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !9, i32 34, i32 5, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 36, i32 9, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !9, i32 35, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 41, i32 21, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !79, i32 41, i32 21, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 786443, metadata !1, metadata !76, i32 37, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 46, i32 21, metadata !78, null}
!81 = metadata !{i32 47, i32 17, metadata !79, null}
!82 = metadata !{i32 49, i32 17, metadata !79, null}
!83 = metadata !{i32 50, i32 17, metadata !79, null}
!84 = metadata !{i32 52, i32 13, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !76, i32 52, i32 13, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 56, i32 14, metadata !76, null}
!87 = metadata !{i32 14, i32 9, metadata !26, metadata !86}
!88 = metadata !{i32 15, i32 9, metadata !28, metadata !86}
!89 = metadata !{i32 17, i32 14, metadata !30, metadata !86}
!90 = metadata !{i32 18, i32 9, metadata !32, metadata !86}
!91 = metadata !{i32 59, i32 1, metadata !9, null}

