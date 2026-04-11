; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i64] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !28), !dbg !29
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !32), !dbg !33
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !34
  %"1" = add nsw i64 %"0", 1, !dbg !34
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !35), !dbg !36
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !37
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !37

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !39
  %"4" = sub nsw i64 %"3", 1, !dbg !39
  %"5" = srem i64 %"4", %"1", !dbg !39
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !39
  br label %wrap_around_bb4, !dbg !39

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !41
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !41

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !43
  %"9" = sub nsw i64 %"8", 1, !dbg !43
  %"10" = srem i64 %"9", %"1", !dbg !43
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !43
  br label %wrap_around_bb4, !dbg !43

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !45
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !46), !dbg !47
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !49), !dbg !50
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  %"14" = add nsw i32 %"13", %size, !dbg !51
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !51
  ret i32 %"12", !dbg !52
}

; Function Attrs: nounwind uwtable
define i32 @strchr(i32 %str, i64 %c) #0 {
strchr_bb6:
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i64 %c}, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !53), !dbg !54
  br label %strchr_bb7, !dbg !57

strchr_bb7:                                       ; preds = %strchr_bb9, %strchr_bb6
  %.01 = phi i32 [ %str, %strchr_bb6 ], [ %"23", %strchr_bb9 ]
  %"15" = sext i32 %.01 to i64, !dbg !59
  %"16" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"15", !dbg !59
  %"17" = load i64* %"16", align 8, !dbg !59
  %"18" = icmp ne i64 %"17", 0, !dbg !59
  br i1 %"18", label %strchr_bb8, label %strchr_bb10, !dbg !59

strchr_bb8:                                       ; preds = %strchr_bb7
  %"19" = sext i32 %.01 to i64, !dbg !62
  %"20" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"19", !dbg !62
  %"21" = load i64* %"20", align 8, !dbg !62
  %"22" = icmp eq i64 %"21", %c, !dbg !62
  br i1 %"22", label %strchr_bb10, label %strchr_bb9, !dbg !62

strchr_bb9:                                       ; preds = %strchr_bb8
  %"23" = add nsw i32 %.01, 1, !dbg !65
  br label %strchr_bb7, !dbg !65

strchr_bb10:                                      ; preds = %strchr_bb7, %strchr_bb8
  %.0 = phi i32 [ %.01, %strchr_bb8 ], [ 0, %strchr_bb7 ]
  ret i32 %.0, !dbg !66
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  call void @llvm.dbg.value(metadata !67, i64 0, metadata !68), !dbg !70
  %"24" = load i32* @"'memory0_freeIndex", align 4, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !72), !dbg !73
  %"25" = load i32* @"'memory0_freeIndex", align 4, !dbg !74
  %"26" = add nsw i32 %"25", 100, !dbg !74
  store i32 %"26", i32* @"'memory0_freeIndex", align 4, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !75), !dbg !76
  call void @llvm.dbg.value(metadata !77, i64 0, metadata !78), !dbg !80
  %"27" = sext i32 %"24" to i64, !dbg !81
  call void @llvm.dbg.value(metadata !{i64 %"31"}, i64 0, metadata !83), !dbg !85
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !87), !dbg !88
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !90), !dbg !91
  call void @llvm.dbg.value(metadata !92, i64 0, metadata !93), !dbg !94
  br label %main_wrap_around.exit, !dbg !95

main_wrap_around.exit:                            ; preds = %main_bb15, %main_bb14, %main_bb13, %main_bb11
  %i.0 = phi i64 [ 0, %main_bb11 ], [ %"36", %main_bb13 ], [ %"41", %main_bb15 ], [ %"31", %main_bb14 ]
  %"28" = icmp slt i64 %i.0, 99, !dbg !96
  br i1 %"28", label %main_bb12, label %main_bb16, !dbg !96

main_bb12:                                        ; preds = %main_wrap_around.exit
  %"29" = add nsw i64 %"27", %i.0, !dbg !81
  %"30" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"29", !dbg !81
  store i64 10, i64* %"30", align 8, !dbg !81
  %"31" = add nsw i64 %i.0, 1, !dbg !84
  %"32" = icmp sgt i64 %"31", 2147483647, !dbg !99
  br i1 %"32", label %main_bb13, label %main_bb14, !dbg !99

main_bb13:                                        ; preds = %main_bb12
  %"33" = sub nsw i64 %"31", 2147483647, !dbg !100
  %"34" = sub nsw i64 %"33", 1, !dbg !100
  %"35" = srem i64 %"34", 4294967296, !dbg !100
  %"36" = add nsw i64 -2147483648, %"35", !dbg !100
  br label %main_wrap_around.exit, !dbg !100

main_bb14:                                        ; preds = %main_bb12
  %"37" = icmp slt i64 %"31", -2147483648, !dbg !101
  br i1 %"37", label %main_bb15, label %main_wrap_around.exit, !dbg !101

main_bb15:                                        ; preds = %main_bb14
  %"38" = sub nsw i64 -2147483648, %"31", !dbg !102
  %"39" = sub nsw i64 %"38", 1, !dbg !102
  %"40" = srem i64 %"39", 4294967296, !dbg !102
  %"41" = sub nsw i64 2147483647, %"40", !dbg !102
  br label %main_wrap_around.exit, !dbg !102

main_bb16:                                        ; preds = %main_wrap_around.exit
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !103), !dbg !104
  %"42" = add nsw i32 %"24", 99, !dbg !105
  %"43" = sext i32 %"42" to i64, !dbg !105
  %"44" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"43", !dbg !105
  store i64 0, i64* %"44", align 8, !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %p.0}, i64 0, metadata !106), !dbg !109
  call void @llvm.dbg.value(metadata !110, i64 0, metadata !111), !dbg !112
  br label %main_bb17, !dbg !113

main_bb17:                                        ; preds = %main_strchr.exit, %main_bb16
  %p.0 = phi i32 [ %"24", %main_bb16 ], [ %"60", %main_strchr.exit ]
  %"45" = sext i32 %p.0 to i64, !dbg !114
  %"46" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"45", !dbg !114
  %"47" = load i64* %"46", align 8, !dbg !114
  %"48" = icmp ne i64 %"47", 0, !dbg !114
  br i1 %"48", label %main_bb18, label %main_bb21, !dbg !114

main_bb18:                                        ; preds = %main_bb17, %main_bb20
  %.01.i = phi i32 [ %"57", %main_bb20 ], [ %p.0, %main_bb17 ], !dbg !107
  %"49" = sext i32 %.01.i to i64, !dbg !116
  %"50" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"49", !dbg !116
  %"51" = load i64* %"50", align 8, !dbg !116
  %"52" = icmp ne i64 %"51", 0, !dbg !116
  br i1 %"52", label %main_bb19, label %main_strchr.exit, !dbg !116

main_bb19:                                        ; preds = %main_bb18
  %"53" = sext i32 %.01.i to i64, !dbg !117
  %"54" = getelementptr inbounds [100000 x i64]* @memory0, i32 0, i64 %"53", !dbg !117
  %"55" = load i64* %"54", align 8, !dbg !117
  %"56" = icmp eq i64 %"55", 10, !dbg !117
  br i1 %"56", label %main_strchr.exit, label %main_bb20, !dbg !117

main_bb20:                                        ; preds = %main_bb19
  %"57" = add nsw i32 %.01.i, 1, !dbg !118
  br label %main_bb18, !dbg !118

main_strchr.exit:                                 ; preds = %main_bb18, %main_bb19
  %.0.i = phi i32 [ %.01.i, %main_bb19 ], [ 0, %main_bb18 ], !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !119), !dbg !120
  %"58" = icmp eq i32 %.0.i, 0, !dbg !121
  %"59" = add nsw i32 %p.0, 99, !dbg !123
  call void @llvm.dbg.value(metadata !{i32 %"59"}, i64 0, metadata !119), !dbg !120
  %..0.i = select i1 %"58", i32 %"59", i32 %.0.i, !dbg !121
  %"60" = add nsw i32 %..0.i, 1, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"60"}, i64 0, metadata !103), !dbg !104
  br label %main_bb17, !dbg !126

main_bb21:                                        ; preds = %main_bb17
  ret i32 0, !dbg !127
}

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 23, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"strchr", metadata !"strchr", metadata !"", i32 29, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i64)* @strchr, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [strchr]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !12, metadata !12, metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 38, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !12}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !22, i32 0, i32 1, [100000 x i64]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 64, i32 0, i32 0, metadata !8, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 64, offset 0] [from long long int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 13]
!29 = metadata !{i32 13, i32 33, metadata !4, null}
!30 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554445, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 13]
!31 = metadata !{i32 13, i32 50, metadata !4, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331661, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 13]
!33 = metadata !{i32 13, i32 73, metadata !4, null}
!34 = metadata !{i32 14, i32 5, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 14]
!36 = metadata !{i32 14, i32 15, metadata !4, null}
!37 = metadata !{i32 15, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 16, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !38, i32 15, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 18, i32 14, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !38, i32 18, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 19, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !42, i32 18, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 22, i32 1, metadata !4, null}
!46 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777239, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 23]
!47 = metadata !{i32 23, i32 26, metadata !9, null}
!48 = metadata !{i32 24, i32 4, metadata !9, null}
!49 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 24, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 24]
!50 = metadata !{i32 24, i32 8, metadata !9, null}
!51 = metadata !{i32 25, i32 4, metadata !9, null}
!52 = metadata !{i32 26, i32 4, metadata !9, null}
!53 = metadata !{i32 786689, metadata !13, metadata !"str", metadata !5, i32 16777245, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 29]
!54 = metadata !{i32 29, i32 16, metadata !13, null}
!55 = metadata !{i32 786689, metadata !13, metadata !"c", metadata !5, i32 33554461, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 29]
!56 = metadata !{i32 29, i32 31, metadata !13, null}
!57 = metadata !{i32 30, i32 2, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !13, i32 30, i32 2, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 30, i32 2, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !61, i32 30, i32 2, i32 2, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 30, i32 2, i32 1, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 31, i32 7, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 31, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !58, i32 30, i32 35, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 30, i32 28, metadata !58, null}
!66 = metadata !{i32 36, i32 1, metadata !13, null}
!67 = metadata !{i32 100}
!68 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777239, metadata !12, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [size] [line 23]
!69 = metadata !{i32 40, i32 20, metadata !16, null}
!70 = metadata !{i32 23, i32 26, metadata !9, metadata !69}
!71 = metadata !{i32 24, i32 4, metadata !9, metadata !69}
!72 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 24, metadata !12, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 24]
!73 = metadata !{i32 24, i32 8, metadata !9, metadata !69}
!74 = metadata !{i32 25, i32 4, metadata !9, metadata !69}
!75 = metadata !{i32 786688, metadata !16, metadata !"in_index", metadata !5, i32 40, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [in_index] [line 40]
!76 = metadata !{i32 40, i32 9, metadata !16, null}
!77 = metadata !{i64 0}
!78 = metadata !{i32 786688, metadata !79, metadata !"i", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 41]
!79 = metadata !{i32 786443, metadata !1, metadata !16, i32 41, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 41, i32 20, metadata !79, null}
!81 = metadata !{i32 43, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !79, i32 42, i32 1, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777229, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [value] [line 13]
!84 = metadata !{i32 41, i32 42, metadata !79, null}
!85 = metadata !{i32 13, i32 33, metadata !4, metadata !84}
!86 = metadata !{i64 -2147483648}
!87 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554445, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [lower_bound] [line 13]
!88 = metadata !{i32 13, i32 50, metadata !4, metadata !84}
!89 = metadata !{i64 2147483647}
!90 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331661, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [upper_bound] [line 13]
!91 = metadata !{i32 13, i32 73, metadata !4, metadata !84}
!92 = metadata !{i64 4294967296}
!93 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 14, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [range] [line 14]
!94 = metadata !{i32 14, i32 15, metadata !4, metadata !84}
!95 = metadata !{i32 41, i32 10, metadata !79, null}
!96 = metadata !{i32 41, i32 10, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !98, i32 41, i32 10, i32 2, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!98 = metadata !{i32 786443, metadata !1, metadata !79, i32 41, i32 10, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 15, i32 9, metadata !38, metadata !84}
!100 = metadata !{i32 16, i32 9, metadata !40, metadata !84}
!101 = metadata !{i32 18, i32 14, metadata !42, metadata !84}
!102 = metadata !{i32 19, i32 9, metadata !44, metadata !84}
!103 = metadata !{i32 786688, metadata !16, metadata !"p", metadata !5, i32 45, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 45]
!104 = metadata !{i32 45, i32 9, metadata !16, null}
!105 = metadata !{i32 46, i32 5, metadata !16, null}
!106 = metadata !{i32 786689, metadata !13, metadata !"str", metadata !5, i32 16777245, metadata !12, i32 0, metadata !107} ; [ DW_TAG_arg_variable ] [str] [line 29]
!107 = metadata !{i32 49, i32 16, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !16, i32 48, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!109 = metadata !{i32 29, i32 16, metadata !13, metadata !107}
!110 = metadata !{i64 10}
!111 = metadata !{i32 786689, metadata !13, metadata !"c", metadata !5, i32 33554461, metadata !8, i32 0, metadata !107} ; [ DW_TAG_arg_variable ] [c] [line 29]
!112 = metadata !{i32 29, i32 31, metadata !13, metadata !107}
!113 = metadata !{i32 47, i32 5, metadata !16, null}
!114 = metadata !{i32 47, i32 5, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !16, i32 47, i32 5, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 30, i32 2, metadata !60, metadata !107}
!117 = metadata !{i32 31, i32 7, metadata !63, metadata !107}
!118 = metadata !{i32 30, i32 28, metadata !58, metadata !107}
!119 = metadata !{i32 786688, metadata !108, metadata !"n", metadata !5, i32 49, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 49]
!120 = metadata !{i32 49, i32 13, metadata !108, null}
!121 = metadata !{i32 50, i32 13, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !108, i32 50, i32 13, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!123 = metadata !{i32 52, i32 13, metadata !124, null}
!124 = metadata !{i32 786443, metadata !1, metadata !122, i32 51, i32 1, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!125 = metadata !{i32 54, i32 9, metadata !108, null}
!126 = metadata !{i32 55, i32 5, metadata !108, null}
!127 = metadata !{i32 56, i32 5, metadata !16, null}

