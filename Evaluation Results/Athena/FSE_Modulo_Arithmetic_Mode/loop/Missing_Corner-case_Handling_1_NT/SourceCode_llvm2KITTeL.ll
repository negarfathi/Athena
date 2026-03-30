; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i64 0, align 8
@"'count" = global i64 0, align 8

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !24), !dbg !25
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !26), !dbg !27
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !28
  %"1" = add nsw i64 %"0", 1, !dbg !28
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !29), !dbg !30
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !31
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !31

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !33
  %"4" = sub nsw i64 %"3", 1, !dbg !33
  %"5" = srem i64 %"4", %"1", !dbg !33
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !33
  br label %wrap_around_bb4, !dbg !33

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !35
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !35

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !37
  %"9" = sub nsw i64 %"8", 1, !dbg !37
  %"10" = srem i64 %"9", %"1", !dbg !37
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !37
  br label %wrap_around_bb4, !dbg !37

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @read() #0 {
read_bb5:
  %"12" = load i64* @"'flag", align 8, !dbg !40
  %"13" = icmp eq i64 %"12", 1, !dbg !40
  %"14" = load i64* @"'count", align 8
  %"15" = icmp sgt i64 %"14", 100, !dbg !42
  %or.cond = or i1 %"13", %"15", !dbg !40
  br i1 %or.cond, label %read_bb13, label %read_bb6, !dbg !40

read_bb6:                                         ; preds = %read_bb5
  %"16" = call i64 @__VERIFIER_nondet_int(), !dbg !44
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !45), !dbg !46
  %"17" = icmp sle i64 %"16", 0, !dbg !47
  br i1 %"17", label %read_bb13, label %read_bb7, !dbg !47

read_bb7:                                         ; preds = %read_bb6
  %"18" = srem i64 %"16", 1000, !dbg !49
  call void @llvm.dbg.value(metadata !{i64 %"18"}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !{i64 %"18"}, i64 0, metadata !45), !dbg !46
  %"19" = icmp slt i64 %"18", 995, !dbg !62
  br i1 %"19", label %read_bb8, label %read_bb12, !dbg !62

read_bb8:                                         ; preds = %read_bb7
  %"20" = load i64* @"'count", align 8, !dbg !64
  %"21" = add nsw i64 %"20", 1, !dbg !64
  call void @llvm.dbg.value(metadata !{i64 %"21"}, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !70), !dbg !71
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !72), !dbg !73
  %"22" = icmp sgt i64 %"21", 2147483647, !dbg !74
  br i1 %"22", label %read_bb9, label %read_bb10, !dbg !74

read_bb9:                                         ; preds = %read_bb8
  %"23" = sub nsw i64 %"21", 2147483647, !dbg !75
  %"24" = sub nsw i64 %"23", 1, !dbg !75
  %"25" = srem i64 %"24", 4294967296, !dbg !75
  %"26" = add nsw i64 -2147483648, %"25", !dbg !75
  br label %read_wrap_around.exit, !dbg !75

read_bb10:                                        ; preds = %read_bb8
  %"27" = icmp slt i64 %"21", -2147483648, !dbg !76
  br i1 %"27", label %read_bb11, label %read_wrap_around.exit, !dbg !76

read_bb11:                                        ; preds = %read_bb10
  %"28" = sub nsw i64 -2147483648, %"21", !dbg !77
  %"29" = sub nsw i64 %"28", 1, !dbg !77
  %"30" = srem i64 %"29", 4294967296, !dbg !77
  %"31" = sub nsw i64 2147483647, %"30", !dbg !77
  br label %read_wrap_around.exit, !dbg !77

read_wrap_around.exit:                            ; preds = %read_bb9, %read_bb10, %read_bb11
  %.0.i = phi i64 [ %"26", %read_bb9 ], [ %"31", %read_bb11 ], [ %"21", %read_bb10 ], !dbg !64
  store i64 %.0.i, i64* @"'count", align 8, !dbg !64
  br label %read_bb13, !dbg !78

read_bb12:                                        ; preds = %read_bb7
  store i64 1, i64* @"'flag", align 8, !dbg !79
  br label %read_bb13, !dbg !81

read_bb13:                                        ; preds = %read_bb6, %read_bb5, %read_bb12, %read_wrap_around.exit
  %.0 = phi i64 [ %"18", %read_wrap_around.exit ], [ 0, %read_bb12 ], [ 0, %read_bb5 ], [ -1, %read_bb6 ]
  ret i64 %.0, !dbg !82
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb14:
  call void @llvm.dbg.value(metadata !{i64 %"36"}, i64 0, metadata !83) #3, !dbg !87
  call void @llvm.dbg.value(metadata !{i64 %"38"}, i64 0, metadata !88) #3, !dbg !90
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !91) #3, !dbg !92
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !93) #3, !dbg !94
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !95) #3, !dbg !96
  call void @llvm.dbg.value(metadata !{i64 %"38"}, i64 0, metadata !83) #3, !dbg !87
  call void @llvm.dbg.value(metadata !{i64 %"41"}, i64 0, metadata !97) #3, !dbg !99
  call void @llvm.dbg.value(metadata !53, i64 0, metadata !100) #3, !dbg !101
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !102) #3, !dbg !103
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !104) #3, !dbg !105
  br label %main_bb15, !dbg !106

main_bb15:                                        ; preds = %main_read.exit, %main_bb14
  %"32" = load i64* @"'flag", align 8, !dbg !107
  %"33" = icmp eq i64 %"32", 1, !dbg !107
  %"34" = load i64* @"'count", align 8, !dbg !84
  %"35" = icmp sgt i64 %"34", 100, !dbg !108
  %or.cond.i = or i1 %"33", %"35", !dbg !107
  br i1 %or.cond.i, label %main_read.exit, label %main_bb16, !dbg !107

main_bb16:                                        ; preds = %main_bb15
  %"36" = call i64 @__VERIFIER_nondet_int() #3, !dbg !109
  %"37" = icmp sle i64 %"36", 0, !dbg !110
  br i1 %"37", label %main_read.exit, label %main_bb17, !dbg !110

main_bb17:                                        ; preds = %main_bb16
  %"38" = srem i64 %"36", 1000, !dbg !89
  %"39" = icmp slt i64 %"38", 995, !dbg !111
  br i1 %"39", label %main_bb18, label %main_bb22, !dbg !111

main_bb18:                                        ; preds = %main_bb17
  %"40" = load i64* @"'count", align 8, !dbg !98
  %"41" = add nsw i64 %"40", 1, !dbg !98
  %"42" = icmp sgt i64 %"41", 2147483647, !dbg !112
  br i1 %"42", label %main_bb19, label %main_bb20, !dbg !112

main_bb19:                                        ; preds = %main_bb18
  %"43" = sub nsw i64 %"41", 2147483647, !dbg !113
  %"44" = sub nsw i64 %"43", 1, !dbg !113
  %"45" = srem i64 %"44", 4294967296, !dbg !113
  %"46" = add nsw i64 -2147483648, %"45", !dbg !113
  br label %main_wrap_around.exit.i, !dbg !113

main_bb20:                                        ; preds = %main_bb18
  %"47" = icmp slt i64 %"41", -2147483648, !dbg !114
  br i1 %"47", label %main_bb21, label %main_wrap_around.exit.i, !dbg !114

main_bb21:                                        ; preds = %main_bb20
  %"48" = sub nsw i64 -2147483648, %"41", !dbg !115
  %"49" = sub nsw i64 %"48", 1, !dbg !115
  %"50" = srem i64 %"49", 4294967296, !dbg !115
  %"51" = sub nsw i64 2147483647, %"50", !dbg !115
  br label %main_wrap_around.exit.i, !dbg !115

main_wrap_around.exit.i:                          ; preds = %main_bb21, %main_bb20, %main_bb19
  %.0.i.i = phi i64 [ %"46", %main_bb19 ], [ %"51", %main_bb21 ], [ %"41", %main_bb20 ], !dbg !98
  store i64 %.0.i.i, i64* @"'count", align 8, !dbg !98
  br label %main_read.exit, !dbg !116

main_bb22:                                        ; preds = %main_bb17
  store i64 1, i64* @"'flag", align 8, !dbg !117
  br label %main_read.exit, !dbg !118

main_read.exit:                                   ; preds = %main_bb15, %main_bb16, %main_wrap_around.exit.i, %main_bb22
  %.0.i = phi i64 [ %"38", %main_wrap_around.exit.i ], [ 0, %main_bb22 ], [ 0, %main_bb15 ], [ -1, %main_bb16 ], !dbg !84
  %"52" = icmp slt i64 %.0.i, 0, !dbg !84
  br i1 %"52", label %main_bb23, label %main_bb15, !dbg !84

main_bb23:                                        ; preds = %main_read.exit
  ret i32 0, !dbg !119
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
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"read", metadata !"read", metadata !"", i32 24, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @read, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [read]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 51, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i64* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 12] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"count", metadata !"count", metadata !"", metadata !5, i32 13, metadata !8, i32 0, i32 1, i64* @"'count", null} ; [ DW_TAG_variable ] [count] [line 13] [def]
!19 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!20 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!21 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!22 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 14]
!23 = metadata !{i32 14, i32 33, metadata !4, null}
!24 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!25 = metadata !{i32 14, i32 50, metadata !4, null}
!26 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!27 = metadata !{i32 14, i32 73, metadata !4, null}
!28 = metadata !{i32 15, i32 5, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 15]
!30 = metadata !{i32 15, i32 15, metadata !4, null}
!31 = metadata !{i32 16, i32 9, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 17, i32 9, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !32, i32 16, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 19, i32 14, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !32, i32 19, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 20, i32 9, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !36, i32 19, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 23, i32 1, metadata !4, null}
!40 = metadata !{i32 26, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 26, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !41, i32 26, i32 9, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 30, i32 22, metadata !9, null}
!45 = metadata !{i32 786688, metadata !9, metadata !"num", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 30]
!46 = metadata !{i32 30, i32 15, metadata !9, null}
!47 = metadata !{i32 31, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 37, i32 15, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !48, i32 36, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [value] [line 14]
!52 = metadata !{i32 14, i32 33, metadata !4, metadata !49}
!53 = metadata !{i64 -2147483648}
!54 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!55 = metadata !{i32 14, i32 50, metadata !4, metadata !49}
!56 = metadata !{i64 2147483647}
!57 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, metadata !49} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!58 = metadata !{i32 14, i32 73, metadata !4, metadata !49}
!59 = metadata !{i64 4294967296}
!60 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, metadata !49} ; [ DW_TAG_auto_variable ] [range] [line 15]
!61 = metadata !{i32 15, i32 15, metadata !4, metadata !49}
!62 = metadata !{i32 38, i32 13, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !50, i32 38, i32 13, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 40, i32 22, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !63, i32 39, i32 9, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, metadata !64} ; [ DW_TAG_arg_variable ] [value] [line 14]
!67 = metadata !{i32 14, i32 33, metadata !4, metadata !64}
!68 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, metadata !64} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!69 = metadata !{i32 14, i32 50, metadata !4, metadata !64}
!70 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, metadata !64} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!71 = metadata !{i32 14, i32 73, metadata !4, metadata !64}
!72 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, metadata !64} ; [ DW_TAG_auto_variable ] [range] [line 15]
!73 = metadata !{i32 15, i32 15, metadata !4, metadata !64}
!74 = metadata !{i32 16, i32 9, metadata !32, metadata !64}
!75 = metadata !{i32 17, i32 9, metadata !34, metadata !64}
!76 = metadata !{i32 19, i32 14, metadata !36, metadata !64}
!77 = metadata !{i32 20, i32 9, metadata !38, metadata !64}
!78 = metadata !{i32 41, i32 13, metadata !65, null}
!79 = metadata !{i32 45, i32 13, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !63, i32 44, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 46, i32 13, metadata !80, null}
!82 = metadata !{i32 50, i32 1, metadata !9, null}
!83 = metadata !{i32 786688, metadata !9, metadata !"num", metadata !5, i32 30, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [num] [line 30]
!84 = metadata !{i32 55, i32 13, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 55, i32 13, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 786443, metadata !1, metadata !12, i32 54, i32 5, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!87 = metadata !{i32 30, i32 15, metadata !9, metadata !84}
!88 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [value] [line 14]
!89 = metadata !{i32 37, i32 15, metadata !50, metadata !84}
!90 = metadata !{i32 14, i32 33, metadata !4, metadata !89}
!91 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!92 = metadata !{i32 14, i32 50, metadata !4, metadata !89}
!93 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!94 = metadata !{i32 14, i32 73, metadata !4, metadata !89}
!95 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [range] [line 15]
!96 = metadata !{i32 15, i32 15, metadata !4, metadata !89}
!97 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777230, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [value] [line 14]
!98 = metadata !{i32 40, i32 22, metadata !65, metadata !84}
!99 = metadata !{i32 14, i32 33, metadata !4, metadata !98}
!100 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554446, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [lower_bound] [line 14]
!101 = metadata !{i32 14, i32 50, metadata !4, metadata !98}
!102 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331662, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [upper_bound] [line 14]
!103 = metadata !{i32 14, i32 73, metadata !4, metadata !98}
!104 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 15, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [range] [line 15]
!105 = metadata !{i32 15, i32 15, metadata !4, metadata !98}
!106 = metadata !{i32 53, i32 5, metadata !12, null}
!107 = metadata !{i32 26, i32 9, metadata !41, metadata !84}
!108 = metadata !{i32 26, i32 9, metadata !43, metadata !84}
!109 = metadata !{i32 30, i32 22, metadata !9, metadata !84}
!110 = metadata !{i32 31, i32 9, metadata !48, metadata !84}
!111 = metadata !{i32 38, i32 13, metadata !63, metadata !84}
!112 = metadata !{i32 16, i32 9, metadata !32, metadata !98}
!113 = metadata !{i32 17, i32 9, metadata !34, metadata !98}
!114 = metadata !{i32 19, i32 14, metadata !36, metadata !98}
!115 = metadata !{i32 20, i32 9, metadata !38, metadata !98}
!116 = metadata !{i32 41, i32 13, metadata !65, metadata !84}
!117 = metadata !{i32 45, i32 13, metadata !80, metadata !84}
!118 = metadata !{i32 46, i32 13, metadata !80, metadata !84}
!119 = metadata !{i32 60, i32 5, metadata !12, null}

