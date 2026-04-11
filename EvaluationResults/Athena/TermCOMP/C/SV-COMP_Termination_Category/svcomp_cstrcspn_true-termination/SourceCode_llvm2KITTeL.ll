; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !26), !dbg !27
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !29), !dbg !30
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !31
  %"2" = add nsw i32 %"1", %size, !dbg !31
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !31
  ret i32 %"0", !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb1:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !34), !dbg !35
  %"4" = icmp slt i32 %"3", 1, !dbg !36
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !34), !dbg !35
  %. = select i1 %"4", i32 1, i32 %"3", !dbg !36
  %"5" = mul nsw i32 %., 1, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !40), !dbg !41
  %"6" = load i32* @"'memory0_freeIndex", align 4, !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !43), !dbg !44
  %"7" = load i32* @"'memory0_freeIndex", align 4, !dbg !45
  %"8" = add nsw i32 %"7", %"5", !dbg !45
  store i32 %"8", i32* @"'memory0_freeIndex", align 4, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  %"9" = sub nsw i32 %., 1, !dbg !48
  %"10" = add nsw i32 %"6", %"9", !dbg !48
  %"11" = sext i32 %"10" to i64, !dbg !48
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !48
  store i8 0, i8* %"12", align 1, !dbg !48
  ret i32 %"6", !dbg !49
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @cstrcspn(i32 %s1, i32 %s2) #0 {
cstrcspn_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !56), !dbg !57
  br label %cstrcspn_bb3, !dbg !60

cstrcspn_bb3:                                     ; preds = %cstrcspn_bb8, %cstrcspn_bb2
  %sc1.0 = phi i32 [ %s1, %cstrcspn_bb2 ], [ %"40", %cstrcspn_bb8 ]
  %"13" = sext i32 %sc1.0 to i64, !dbg !62
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !62
  %"15" = load i8* %"14", align 1, !dbg !62
  %"16" = sext i8 %"15" to i32, !dbg !62
  %"17" = icmp ne i32 %"16", 0, !dbg !62
  br i1 %"17", label %cstrcspn_bb4, label %cstrcspn_bb9, !dbg !62

cstrcspn_bb4:                                     ; preds = %cstrcspn_bb3
  %"18" = sext i32 %sc1.0 to i64, !dbg !65
  %"19" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"18", !dbg !65
  %"20" = load i8* %"19", align 1, !dbg !65
  %"21" = sext i8 %"20" to i32, !dbg !65
  %"22" = trunc i32 %"21" to i8, !dbg !67
  %"23" = sext i8 %"22" to i32, !dbg !67
  br label %cstrcspn_bb5, !dbg !69

cstrcspn_bb5:                                     ; preds = %cstrcspn_bb7, %cstrcspn_bb4
  %s.0 = phi i32 [ %s2, %cstrcspn_bb4 ], [ %"34", %cstrcspn_bb7 ]
  %"24" = sext i32 %s.0 to i64, !dbg !70
  %"25" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"24", !dbg !70
  %"26" = load i8* %"25", align 1, !dbg !70
  %"27" = sext i8 %"26" to i32, !dbg !70
  %"28" = icmp ne i32 %"27", 0, !dbg !70
  br i1 %"28", label %cstrcspn_bb6, label %cstrcspn_.critedge, !dbg !70

cstrcspn_bb6:                                     ; preds = %cstrcspn_bb5
  %"29" = sext i32 %s.0 to i64, !dbg !67
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !67
  %"31" = load i8* %"30", align 1, !dbg !67
  %"32" = sext i8 %"31" to i32, !dbg !67
  %"33" = icmp ne i32 %"32", %"23", !dbg !67
  br i1 %"33", label %cstrcspn_bb7, label %cstrcspn_.critedge, !dbg !72

cstrcspn_bb7:                                     ; preds = %cstrcspn_bb6
  %"34" = add nsw i32 %s.0, 1, !dbg !74
  br label %cstrcspn_bb5, !dbg !74

cstrcspn_.critedge:                               ; preds = %cstrcspn_bb5, %cstrcspn_bb6
  %"35" = sext i32 %s.0 to i64, !dbg !75
  %"36" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"35", !dbg !75
  %"37" = load i8* %"36", align 1, !dbg !75
  %"38" = sext i8 %"37" to i32, !dbg !75
  %"39" = icmp eq i32 %"38", %"21", !dbg !75
  br i1 %"39", label %cstrcspn_bb9, label %cstrcspn_bb8, !dbg !75

cstrcspn_bb8:                                     ; preds = %cstrcspn_.critedge
  %"40" = add nsw i32 %sc1.0, 1, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !54), !dbg !55
  br label %cstrcspn_bb3, !dbg !77

cstrcspn_bb9:                                     ; preds = %cstrcspn_.critedge, %cstrcspn_bb3
  %"41" = sub nsw i32 %sc1.0, %s1, !dbg !78
  ret i32 %"41", !dbg !79
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"42" = call i32 @__VERIFIER_nondet_int() #3, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !82) #3, !dbg !83
  %"43" = icmp slt i32 %"42", 1, !dbg !84
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !82) #3, !dbg !83
  %..i = select i1 %"43", i32 1, i32 %"42", !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !85) #3, !dbg !87
  %"44" = load i32* @"'memory0_freeIndex", align 4, !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !89) #3, !dbg !90
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !91
  %"46" = add nsw i32 %"45", %..i, !dbg !91
  store i32 %"46", i32* @"'memory0_freeIndex", align 4, !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !92) #3, !dbg !93
  %"47" = sub nsw i32 %..i, 1, !dbg !94
  %"48" = add nsw i32 %"44", %"47", !dbg !94
  %"49" = sext i32 %"48" to i64, !dbg !94
  %"50" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"49", !dbg !94
  store i8 0, i8* %"50", align 1, !dbg !94
  %"51" = call i32 @__VERIFIER_nondet_int() #3, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !97) #3, !dbg !98
  %"52" = icmp slt i32 %"51", 1, !dbg !99
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !97) #3, !dbg !98
  %..i1 = select i1 %"52", i32 1, i32 %"51", !dbg !99
  call void @llvm.dbg.value(metadata !{i32 %..i1}, i64 0, metadata !100) #3, !dbg !102
  %"53" = load i32* @"'memory0_freeIndex", align 4, !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !104) #3, !dbg !105
  %"54" = load i32* @"'memory0_freeIndex", align 4, !dbg !106
  %"55" = add nsw i32 %"54", %..i1, !dbg !106
  store i32 %"55", i32* @"'memory0_freeIndex", align 4, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !107) #3, !dbg !108
  %"56" = sub nsw i32 %..i1, 1, !dbg !109
  %"57" = add nsw i32 %"53", %"56", !dbg !109
  %"58" = sext i32 %"57" to i64, !dbg !109
  %"59" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"58", !dbg !109
  store i8 0, i8* %"59", align 1, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !110), !dbg !112
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !117), !dbg !118
  br label %main_bb11, !dbg !119

main_bb11:                                        ; preds = %main_bb16, %main_bb10
  %sc1.0.i = phi i32 [ %"44", %main_bb10 ], [ %"87", %main_bb16 ], !dbg !111
  %"60" = sext i32 %sc1.0.i to i64, !dbg !120
  %"61" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"60", !dbg !120
  %"62" = load i8* %"61", align 1, !dbg !120
  %"63" = sext i8 %"62" to i32, !dbg !120
  %"64" = icmp ne i32 %"63", 0, !dbg !120
  br i1 %"64", label %main_bb12, label %main_cstrcspn.exit, !dbg !120

main_bb12:                                        ; preds = %main_bb11
  %"65" = sext i32 %sc1.0.i to i64, !dbg !121
  %"66" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"65", !dbg !121
  %"67" = load i8* %"66", align 1, !dbg !121
  %"68" = sext i8 %"67" to i32, !dbg !121
  %"69" = trunc i32 %"68" to i8, !dbg !122
  %"70" = sext i8 %"69" to i32, !dbg !122
  br label %main_bb13, !dbg !123

main_bb13:                                        ; preds = %main_bb15, %main_bb12
  %s.0.i = phi i32 [ %"53", %main_bb12 ], [ %"81", %main_bb15 ], !dbg !111
  %"71" = sext i32 %s.0.i to i64, !dbg !124
  %"72" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"71", !dbg !124
  %"73" = load i8* %"72", align 1, !dbg !124
  %"74" = sext i8 %"73" to i32, !dbg !124
  %"75" = icmp ne i32 %"74", 0, !dbg !124
  br i1 %"75", label %main_bb14, label %main_.critedge.i, !dbg !124

main_bb14:                                        ; preds = %main_bb13
  %"76" = sext i32 %s.0.i to i64, !dbg !122
  %"77" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"76", !dbg !122
  %"78" = load i8* %"77", align 1, !dbg !122
  %"79" = sext i8 %"78" to i32, !dbg !122
  %"80" = icmp ne i32 %"79", %"70", !dbg !122
  br i1 %"80", label %main_bb15, label %main_.critedge.i, !dbg !125

main_bb15:                                        ; preds = %main_bb14
  %"81" = add nsw i32 %s.0.i, 1, !dbg !126
  br label %main_bb13, !dbg !126

main_.critedge.i:                                 ; preds = %main_bb14, %main_bb13
  %"82" = sext i32 %s.0.i to i64, !dbg !127
  %"83" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"82", !dbg !127
  %"84" = load i8* %"83", align 1, !dbg !127
  %"85" = sext i8 %"84" to i32, !dbg !127
  %"86" = icmp eq i32 %"85", %"68", !dbg !127
  br i1 %"86", label %main_cstrcspn.exit, label %main_bb16, !dbg !127

main_bb16:                                        ; preds = %main_.critedge.i
  %"87" = add nsw i32 %sc1.0.i, 1, !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"87"}, i64 0, metadata !115), !dbg !116
  br label %main_bb11, !dbg !128

main_cstrcspn.exit:                               ; preds = %main_bb11, %main_.critedge.i
  %"88" = sub nsw i32 %sc1.0.i, %"44", !dbg !129
  ret i32 %"88", !dbg !111
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_nondet_String", metadata !"__VERIFIER_nondet_String", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__VERIFIER_nondet_String, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [__VERIFIER_nondet_String]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcspn", metadata !"cstrcspn", metadata !"", i32 32, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcspn, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [cstrcspn]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 48, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [main]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !19, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !20, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!27 = metadata !{i32 13, i32 26, metadata !4, null}
!28 = metadata !{i32 14, i32 4, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!30 = metadata !{i32 14, i32 8, metadata !4, null}
!31 = metadata !{i32 15, i32 4, metadata !4, null}
!32 = metadata !{i32 16, i32 4, metadata !4, null}
!33 = metadata !{i32 20, i32 18, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 20]
!35 = metadata !{i32 20, i32 9, metadata !9, null}
!36 = metadata !{i32 21, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 1}
!39 = metadata !{i32 24, i32 24, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [size] [line 13]
!41 = metadata !{i32 13, i32 26, metadata !4, metadata !39}
!42 = metadata !{i32 14, i32 4, metadata !4, metadata !39}
!43 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!44 = metadata !{i32 14, i32 8, metadata !4, metadata !39}
!45 = metadata !{i32 15, i32 4, metadata !4, metadata !39}
!46 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!47 = metadata !{i32 24, i32 9, metadata !9, null}
!48 = metadata !{i32 25, i32 5, metadata !9, null}
!49 = metadata !{i32 26, i32 5, metadata !9, null}
!50 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 32]
!51 = metadata !{i32 32, i32 20, metadata !12, null}
!52 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 32]
!53 = metadata !{i32 32, i32 28, metadata !12, null}
!54 = metadata !{i32 786688, metadata !12, metadata !"sc1", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc1] [line 34]
!55 = metadata !{i32 34, i32 10, metadata !12, null}
!56 = metadata !{i32 786688, metadata !12, metadata !"s", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 35]
!57 = metadata !{i32 35, i32 10, metadata !12, null}
!58 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 36]
!59 = metadata !{i32 36, i32 10, metadata !12, null}
!60 = metadata !{i32 37, i32 11, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !12, i32 37, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 37, i32 11, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 37, i32 11, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 37, i32 11, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 39, i32 10, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !61, i32 37, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 40, i32 10, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !66, i32 40, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 40, i32 10, metadata !66, null}
!70 = metadata !{i32 40, i32 10, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !66, i32 40, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 40, i32 10, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !66, i32 40, i32 10, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 41, i32 14, metadata !66, null}
!75 = metadata !{i32 42, i32 14, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !66, i32 42, i32 14, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 37, i32 43, metadata !61, null}
!78 = metadata !{i32 43, i32 14, metadata !76, null}
!79 = metadata !{i32 46, i32 2, metadata !12, null}
!80 = metadata !{i32 20, i32 18, metadata !9, metadata !81}
!81 = metadata !{i32 49, i32 21, metadata !15, null}
!82 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !81} ; [ DW_TAG_auto_variable ] [length] [line 20]
!83 = metadata !{i32 20, i32 9, metadata !9, metadata !81}
!84 = metadata !{i32 21, i32 9, metadata !37, metadata !81}
!85 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !86} ; [ DW_TAG_arg_variable ] [size] [line 13]
!86 = metadata !{i32 24, i32 24, metadata !9, metadata !81}
!87 = metadata !{i32 13, i32 26, metadata !4, metadata !86}
!88 = metadata !{i32 14, i32 4, metadata !4, metadata !86}
!89 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!90 = metadata !{i32 14, i32 8, metadata !4, metadata !86}
!91 = metadata !{i32 15, i32 4, metadata !4, metadata !86}
!92 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !81} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!93 = metadata !{i32 24, i32 9, metadata !9, metadata !81}
!94 = metadata !{i32 25, i32 5, metadata !9, metadata !81}
!95 = metadata !{i32 20, i32 18, metadata !9, metadata !96}
!96 = metadata !{i32 49, i32 48, metadata !15, null}
!97 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [length] [line 20]
!98 = metadata !{i32 20, i32 9, metadata !9, metadata !96}
!99 = metadata !{i32 21, i32 9, metadata !37, metadata !96}
!100 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !101} ; [ DW_TAG_arg_variable ] [size] [line 13]
!101 = metadata !{i32 24, i32 24, metadata !9, metadata !96}
!102 = metadata !{i32 13, i32 26, metadata !4, metadata !101}
!103 = metadata !{i32 14, i32 4, metadata !4, metadata !101}
!104 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !101} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!105 = metadata !{i32 14, i32 8, metadata !4, metadata !101}
!106 = metadata !{i32 15, i32 4, metadata !4, metadata !101}
!107 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!108 = metadata !{i32 24, i32 9, metadata !9, metadata !96}
!109 = metadata !{i32 25, i32 5, metadata !9, metadata !96}
!110 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777248, metadata !8, i32 0, metadata !111} ; [ DW_TAG_arg_variable ] [s1] [line 32]
!111 = metadata !{i32 49, i32 12, metadata !15, null}
!112 = metadata !{i32 32, i32 20, metadata !12, metadata !111}
!113 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554464, metadata !8, i32 0, metadata !111} ; [ DW_TAG_arg_variable ] [s2] [line 32]
!114 = metadata !{i32 32, i32 28, metadata !12, metadata !111}
!115 = metadata !{i32 786688, metadata !12, metadata !"sc1", metadata !5, i32 34, metadata !8, i32 0, metadata !111} ; [ DW_TAG_auto_variable ] [sc1] [line 34]
!116 = metadata !{i32 34, i32 10, metadata !12, metadata !111}
!117 = metadata !{i32 786688, metadata !12, metadata !"s", metadata !5, i32 35, metadata !8, i32 0, metadata !111} ; [ DW_TAG_auto_variable ] [s] [line 35]
!118 = metadata !{i32 35, i32 10, metadata !12, metadata !111}
!119 = metadata !{i32 37, i32 11, metadata !61, metadata !111}
!120 = metadata !{i32 37, i32 11, metadata !63, metadata !111}
!121 = metadata !{i32 39, i32 10, metadata !66, metadata !111}
!122 = metadata !{i32 40, i32 10, metadata !68, metadata !111}
!123 = metadata !{i32 40, i32 10, metadata !66, metadata !111}
!124 = metadata !{i32 40, i32 10, metadata !71, metadata !111}
!125 = metadata !{i32 40, i32 10, metadata !73, metadata !111}
!126 = metadata !{i32 41, i32 14, metadata !66, metadata !111}
!127 = metadata !{i32 42, i32 14, metadata !76, metadata !111}
!128 = metadata !{i32 37, i32 43, metadata !61, metadata !111}
!129 = metadata !{i32 43, i32 14, metadata !76, metadata !111}

