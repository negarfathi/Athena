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
  call void @llvm.dbg.value(metadata !34, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %slots_used}, metadata !37), !dbg !41
  call void @llvm.dbg.declare(metadata !{[10 x i64]* %ereg}, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !45), !dbg !47
  call void @llvm.dbg.value(metadata !{i64 %"17"}, i64 0, metadata !48), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !54, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !58), !dbg !59
  br label %main_wrap_around.exit, !dbg !60

main_wrap_around.exit:                            ; preds = %main_bb9, %main_bb8, %main_bb7, %main_bb5
  %i.0 = phi i64 [ 0, %main_bb5 ], [ %"22", %main_bb7 ], [ %"27", %main_bb9 ], [ %"17", %main_bb8 ]
  %"12" = icmp slt i64 %i.0, 10, !dbg !61
  br i1 %"12", label %main_bb6, label %main_wrap_around.exit2, !dbg !61

main_bb6:                                         ; preds = %main_wrap_around.exit
  %"13" = call i64 @__VERIFIER_nondet_int(), !dbg !64
  %"14" = getelementptr inbounds [10 x i64]* %slots_used, i32 0, i64 %i.0, !dbg !64
  store i64 %"13", i64* %"14", align 8, !dbg !64
  %"15" = call i64 @__VERIFIER_nondet_int(), !dbg !66
  %"16" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i.0, !dbg !66
  store i64 %"15", i64* %"16", align 8, !dbg !66
  %"17" = add nsw i64 %i.0, 1, !dbg !49
  %"18" = icmp sgt i64 %"17", 2147483647, !dbg !67
  br i1 %"18", label %main_bb7, label %main_bb8, !dbg !67

main_bb7:                                         ; preds = %main_bb6
  %"19" = sub nsw i64 %"17", 2147483647, !dbg !68
  %"20" = sub nsw i64 %"19", 1, !dbg !68
  %"21" = srem i64 %"20", 4294967296, !dbg !68
  %"22" = add nsw i64 -2147483648, %"21", !dbg !68
  br label %main_wrap_around.exit, !dbg !68

main_bb8:                                         ; preds = %main_bb6
  %"23" = icmp slt i64 %"17", -2147483648, !dbg !69
  br i1 %"23", label %main_bb9, label %main_wrap_around.exit, !dbg !69

main_bb9:                                         ; preds = %main_bb8
  %"24" = sub nsw i64 -2147483648, %"17", !dbg !70
  %"25" = sub nsw i64 %"24", 1, !dbg !70
  %"26" = srem i64 %"25", 4294967296, !dbg !70
  %"27" = sub nsw i64 2147483647, %"26", !dbg !70
  br label %main_wrap_around.exit, !dbg !70

main_wrap_around.exit2:                           ; preds = %main_LeafBlock3, %main_bb18, %main_bb17, %main_bb16, %main_wrap_around.exit
  %i1.0 = phi i64 [ 0, %main_wrap_around.exit ], [ %i1.0, %main_LeafBlock3 ], [ %"44", %main_bb16 ], [ %"49", %main_bb18 ], [ %"39", %main_bb17 ]
  %"28" = icmp slt i64 %i1.0, 10, !dbg !71
  br i1 %"28", label %main_bb10, label %main_bb19, !dbg !71

main_bb10:                                        ; preds = %main_wrap_around.exit2
  %"29" = getelementptr inbounds [10 x i64]* %slots_used, i32 0, i64 %i1.0, !dbg !73
  %"30" = load i64* %"29", align 8, !dbg !73
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb10
  %Pivot = icmp slt i64 %"30", 2
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock3

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i64 %"30", 0
  br i1 %SwitchLeaf, label %main_bb11, label %main_NewDefault

main_bb11:                                        ; preds = %main_LeafBlock
  %"31" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !75
  %"32" = load i64* %"31", align 8, !dbg !75
  %"33" = icmp ne i64 %"32", 0, !dbg !75
  br i1 %"33", label %main_bb12, label %main_bb19, !dbg !75

main_bb12:                                        ; preds = %main_bb11
  %"34" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !78
  %"35" = load i64* %"34", align 8, !dbg !78
  br label %main_bb14, !dbg !79

main_LeafBlock3:                                  ; preds = %main_NodeBlock
  %SwitchLeaf4 = icmp eq i64 %"30", 2
  br i1 %SwitchLeaf4, label %main_wrap_around.exit2, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock3, %main_LeafBlock
  br label %main_bb13

main_bb13:                                        ; preds = %main_NewDefault
  %"36" = getelementptr inbounds [10 x i64]* %ereg, i32 0, i64 %i1.0, !dbg !80
  %"37" = load i64* %"36", align 8, !dbg !80
  br label %main_bb14, !dbg !81

main_bb14:                                        ; preds = %main_bb13, %main_bb12
  %table.0 = phi i64 [ %"37", %main_bb13 ], [ %"35", %main_bb12 ]
  %"38" = icmp ne i64 %table.0, 0, !dbg !82
  br i1 %"38", label %main_bb19, label %main_bb15, !dbg !82

main_bb15:                                        ; preds = %main_bb14
  %"39" = add nsw i64 %i1.0, 1, !dbg !84
  %"40" = icmp sgt i64 %"39", 2147483647, !dbg !85
  br i1 %"40", label %main_bb16, label %main_bb17, !dbg !85

main_bb16:                                        ; preds = %main_bb15
  %"41" = sub nsw i64 %"39", 2147483647, !dbg !86
  %"42" = sub nsw i64 %"41", 1, !dbg !86
  %"43" = srem i64 %"42", 4294967296, !dbg !86
  %"44" = add nsw i64 -2147483648, %"43", !dbg !86
  br label %main_wrap_around.exit2, !dbg !86

main_bb17:                                        ; preds = %main_bb15
  %"45" = icmp slt i64 %"39", -2147483648, !dbg !87
  br i1 %"45", label %main_bb18, label %main_wrap_around.exit2, !dbg !87

main_bb18:                                        ; preds = %main_bb17
  %"46" = sub nsw i64 -2147483648, %"39", !dbg !88
  %"47" = sub nsw i64 %"46", 1, !dbg !88
  %"48" = srem i64 %"47", 4294967296, !dbg !88
  %"49" = sub nsw i64 2147483647, %"48", !dbg !88
  br label %main_wrap_around.exit2, !dbg !88

main_bb19:                                        ; preds = %main_wrap_around.exit2, %main_bb14, %main_bb11
  ret i32 0, !dbg !89
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
!34 = metadata !{i64 10}
!35 = metadata !{i32 786688, metadata !9, metadata !"EVENT_EPOLL_TABLES", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [EVENT_EPOLL_TABLES] [line 24]
!36 = metadata !{i32 24, i32 15, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"slots_used", metadata !5, i32 25, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slots_used] [line 25]
!38 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 64, i32 0, i32 0, metadata !8, metadata !39, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 640, align 64, offset 0] [from long long int]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786465, i64 0, i64 10}       ; [ DW_TAG_subrange_type ] [0, 9]
!41 = metadata !{i32 25, i32 15, metadata !9, null}
!42 = metadata !{i32 786688, metadata !9, metadata !"ereg", metadata !5, i32 26, metadata !38, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ereg] [line 26]
!43 = metadata !{i32 26, i32 15, metadata !9, null}
!44 = metadata !{i64 0}
!45 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 28]
!46 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 28, i32 20, metadata !46, null}
!48 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777228, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [value] [line 12]
!49 = metadata !{i32 28, i32 42, metadata !46, null}
!50 = metadata !{i32 12, i32 33, metadata !4, metadata !49}
!51 = metadata !{i64 -2147483648}
!52 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554444, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [lower_bound] [line 12]
!53 = metadata !{i32 12, i32 50, metadata !4, metadata !49}
!54 = metadata !{i64 2147483647}
!55 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331660, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [upper_bound] [line 12]
!56 = metadata !{i32 12, i32 73, metadata !4, metadata !49}
!57 = metadata !{i64 4294967296}
!58 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 13, metadata !8, i32 0, metadata !49} ; [ DW_TAG_auto_variable ] [range] [line 13]
!59 = metadata !{i32 13, i32 15, metadata !4, metadata !49}
!60 = metadata !{i32 28, i32 10, metadata !46, null}
!61 = metadata !{i32 28, i32 10, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !63, i32 28, i32 10, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 786443, metadata !1, metadata !46, i32 28, i32 10, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 30, i32 25, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !46, i32 29, i32 5, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 31, i32 19, metadata !65, null}
!67 = metadata !{i32 14, i32 9, metadata !26, metadata !49}
!68 = metadata !{i32 15, i32 9, metadata !28, metadata !49}
!69 = metadata !{i32 17, i32 14, metadata !30, metadata !49}
!70 = metadata !{i32 18, i32 9, metadata !32, metadata !49}
!71 = metadata !{i32 34, i32 5, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !9, i32 34, i32 5, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 36, i32 9, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !9, i32 35, i32 5, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 41, i32 21, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !77, i32 41, i32 21, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 786443, metadata !1, metadata !74, i32 37, i32 9, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 46, i32 21, metadata !76, null}
!79 = metadata !{i32 47, i32 17, metadata !77, null}
!80 = metadata !{i32 49, i32 17, metadata !77, null}
!81 = metadata !{i32 50, i32 17, metadata !77, null}
!82 = metadata !{i32 52, i32 13, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !74, i32 52, i32 13, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 56, i32 14, metadata !74, null}
!85 = metadata !{i32 14, i32 9, metadata !26, metadata !84}
!86 = metadata !{i32 15, i32 9, metadata !28, metadata !84}
!87 = metadata !{i32 17, i32 14, metadata !30, metadata !84}
!88 = metadata !{i32 18, i32 9, metadata !32, metadata !84}
!89 = metadata !{i32 59, i32 1, metadata !9, null}

