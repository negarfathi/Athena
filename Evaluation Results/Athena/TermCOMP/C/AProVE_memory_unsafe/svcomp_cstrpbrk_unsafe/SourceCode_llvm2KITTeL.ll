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
define i32 @cstrpbrk(i32 %s1, i32 %s2) #0 {
cstrpbrk_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !56), !dbg !57
  br label %cstrpbrk_bb3, !dbg !60

cstrpbrk_bb3:                                     ; preds = %cstrpbrk_bb8, %cstrpbrk_bb2
  %sc1.0 = phi i32 [ %s1, %cstrpbrk_bb2 ], [ %"40", %cstrpbrk_bb8 ]
  %"13" = sext i32 %sc1.0 to i64, !dbg !62
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !62
  %"15" = load i8* %"14", align 1, !dbg !62
  %"16" = sext i8 %"15" to i32, !dbg !62
  %"17" = icmp ne i32 %"16", 0, !dbg !62
  br i1 %"17", label %cstrpbrk_bb4, label %cstrpbrk_bb9, !dbg !62

cstrpbrk_bb4:                                     ; preds = %cstrpbrk_bb3
  %"18" = sext i32 %sc1.0 to i64, !dbg !65
  %"19" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"18", !dbg !65
  %"20" = load i8* %"19", align 1, !dbg !65
  %"21" = sext i8 %"20" to i32, !dbg !65
  %"22" = trunc i32 %"21" to i8, !dbg !67
  %"23" = sext i8 %"22" to i32, !dbg !67
  br label %cstrpbrk_bb5, !dbg !69

cstrpbrk_bb5:                                     ; preds = %cstrpbrk_bb7, %cstrpbrk_bb4
  %s.0 = phi i32 [ %s2, %cstrpbrk_bb4 ], [ %"34", %cstrpbrk_bb7 ]
  %"24" = sext i32 %s.0 to i64, !dbg !70
  %"25" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"24", !dbg !70
  %"26" = load i8* %"25", align 1, !dbg !70
  %"27" = sext i8 %"26" to i32, !dbg !70
  %"28" = icmp ne i32 %"27", 0, !dbg !70
  br i1 %"28", label %cstrpbrk_bb6, label %cstrpbrk_.critedge, !dbg !70

cstrpbrk_bb6:                                     ; preds = %cstrpbrk_bb5
  %"29" = sext i32 %s.0 to i64, !dbg !67
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !67
  %"31" = load i8* %"30", align 1, !dbg !67
  %"32" = sext i8 %"31" to i32, !dbg !67
  %"33" = icmp ne i32 %"32", %"23", !dbg !67
  br i1 %"33", label %cstrpbrk_bb7, label %cstrpbrk_.critedge, !dbg !72

cstrpbrk_bb7:                                     ; preds = %cstrpbrk_bb6
  %"34" = add nsw i32 %s.0, 1, !dbg !74
  br label %cstrpbrk_bb5, !dbg !74

cstrpbrk_.critedge:                               ; preds = %cstrpbrk_bb5, %cstrpbrk_bb6
  %"35" = sext i32 %s.0 to i64, !dbg !75
  %"36" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"35", !dbg !75
  %"37" = load i8* %"36", align 1, !dbg !75
  %"38" = sext i8 %"37" to i32, !dbg !75
  %"39" = icmp ne i32 %"38", %"21", !dbg !75
  br i1 %"39", label %cstrpbrk_bb9, label %cstrpbrk_bb8, !dbg !75

cstrpbrk_bb8:                                     ; preds = %cstrpbrk_.critedge
  %"40" = add nsw i32 %sc1.0, 1, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !54), !dbg !55
  br label %cstrpbrk_bb3, !dbg !77

cstrpbrk_bb9:                                     ; preds = %cstrpbrk_bb3, %cstrpbrk_.critedge
  %.0 = phi i32 [ %sc1.0, %cstrpbrk_.critedge ], [ 0, %cstrpbrk_bb3 ]
  ret i32 %.0, !dbg !78
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"41" = call i32 @__VERIFIER_nondet_int() #3, !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !81) #3, !dbg !82
  %"42" = icmp slt i32 %"41", 1, !dbg !83
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !81) #3, !dbg !82
  %..i = select i1 %"42", i32 1, i32 %"41", !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !84) #3, !dbg !86
  %"43" = load i32* @"'memory0_freeIndex", align 4, !dbg !87
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !88) #3, !dbg !89
  %"44" = load i32* @"'memory0_freeIndex", align 4, !dbg !90
  %"45" = add nsw i32 %"44", %..i, !dbg !90
  store i32 %"45", i32* @"'memory0_freeIndex", align 4, !dbg !90
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !91) #3, !dbg !92
  %"46" = sub nsw i32 %..i, 1, !dbg !93
  %"47" = add nsw i32 %"43", %"46", !dbg !93
  %"48" = sext i32 %"47" to i64, !dbg !93
  %"49" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"48", !dbg !93
  store i8 0, i8* %"49", align 1, !dbg !93
  %"50" = call i32 @__VERIFIER_nondet_int() #3, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"50"}, i64 0, metadata !96) #3, !dbg !97
  %"51" = icmp slt i32 %"50", 1, !dbg !98
  call void @llvm.dbg.value(metadata !38, i64 0, metadata !96) #3, !dbg !97
  %..i1 = select i1 %"51", i32 1, i32 %"50", !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %..i1}, i64 0, metadata !99) #3, !dbg !101
  %"52" = load i32* @"'memory0_freeIndex", align 4, !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !103) #3, !dbg !104
  %"53" = load i32* @"'memory0_freeIndex", align 4, !dbg !105
  %"54" = add nsw i32 %"53", %..i1, !dbg !105
  store i32 %"54", i32* @"'memory0_freeIndex", align 4, !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !106) #3, !dbg !107
  %"55" = sub nsw i32 %..i1, 1, !dbg !108
  %"56" = add nsw i32 %"52", %"55", !dbg !108
  %"57" = sext i32 %"56" to i64, !dbg !108
  %"58" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"57", !dbg !108
  store i8 0, i8* %"58", align 1, !dbg !108
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !109), !dbg !111
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !112), !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !114), !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !116), !dbg !117
  br label %main_bb11, !dbg !118

main_bb11:                                        ; preds = %main_bb16, %main_bb10
  %sc1.0.i = phi i32 [ %"43", %main_bb10 ], [ %"86", %main_bb16 ], !dbg !110
  %"59" = sext i32 %sc1.0.i to i64, !dbg !119
  %"60" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"59", !dbg !119
  %"61" = load i8* %"60", align 1, !dbg !119
  %"62" = sext i8 %"61" to i32, !dbg !119
  %"63" = icmp ne i32 %"62", 0, !dbg !119
  br i1 %"63", label %main_bb12, label %main_cstrpbrk.exit, !dbg !119

main_bb12:                                        ; preds = %main_bb11
  %"64" = sext i32 %sc1.0.i to i64, !dbg !120
  %"65" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"64", !dbg !120
  %"66" = load i8* %"65", align 1, !dbg !120
  %"67" = sext i8 %"66" to i32, !dbg !120
  %"68" = trunc i32 %"67" to i8, !dbg !121
  %"69" = sext i8 %"68" to i32, !dbg !121
  br label %main_bb13, !dbg !122

main_bb13:                                        ; preds = %main_bb15, %main_bb12
  %s.0.i = phi i32 [ %"52", %main_bb12 ], [ %"80", %main_bb15 ], !dbg !110
  %"70" = sext i32 %s.0.i to i64, !dbg !123
  %"71" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"70", !dbg !123
  %"72" = load i8* %"71", align 1, !dbg !123
  %"73" = sext i8 %"72" to i32, !dbg !123
  %"74" = icmp ne i32 %"73", 0, !dbg !123
  br i1 %"74", label %main_bb14, label %main_.critedge.i, !dbg !123

main_bb14:                                        ; preds = %main_bb13
  %"75" = sext i32 %s.0.i to i64, !dbg !121
  %"76" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"75", !dbg !121
  %"77" = load i8* %"76", align 1, !dbg !121
  %"78" = sext i8 %"77" to i32, !dbg !121
  %"79" = icmp ne i32 %"78", %"69", !dbg !121
  br i1 %"79", label %main_bb15, label %main_.critedge.i, !dbg !124

main_bb15:                                        ; preds = %main_bb14
  %"80" = add nsw i32 %s.0.i, 1, !dbg !125
  br label %main_bb13, !dbg !125

main_.critedge.i:                                 ; preds = %main_bb14, %main_bb13
  %"81" = sext i32 %s.0.i to i64, !dbg !126
  %"82" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"81", !dbg !126
  %"83" = load i8* %"82", align 1, !dbg !126
  %"84" = sext i8 %"83" to i32, !dbg !126
  %"85" = icmp ne i32 %"84", %"67", !dbg !126
  br i1 %"85", label %main_cstrpbrk.exit, label %main_bb16, !dbg !126

main_bb16:                                        ; preds = %main_.critedge.i
  %"86" = add nsw i32 %sc1.0.i, 1, !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"86"}, i64 0, metadata !114), !dbg !115
  br label %main_bb11, !dbg !127

main_cstrpbrk.exit:                               ; preds = %main_bb11, %main_.critedge.i
  %.0.i = phi i32 [ %sc1.0.i, %main_.critedge.i ], [ 0, %main_bb11 ], !dbg !110
  %"87" = sext i32 %.0.i to i64, !dbg !110
  %"88" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"87", !dbg !110
  %"89" = load i8* %"88", align 1, !dbg !110
  %"90" = sext i8 %"89" to i32, !dbg !110
  ret i32 %"90", !dbg !110
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_nondet_String", metadata !"__VERIFIER_nondet_String", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__VERIFIER_nondet_String, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [__VERIFIER_nondet_String]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrpbrk", metadata !"cstrpbrk", metadata !"", i32 34, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrpbrk, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [cstrpbrk]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 50, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 50} ; [ DW_TAG_subprogram ] [line 50] [def] [main]
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 13, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 13] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 12, metadata !19, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 12] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !20, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!20 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 14]
!27 = metadata !{i32 14, i32 26, metadata !4, null}
!28 = metadata !{i32 15, i32 4, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!30 = metadata !{i32 15, i32 8, metadata !4, null}
!31 = metadata !{i32 16, i32 4, metadata !4, null}
!32 = metadata !{i32 17, i32 4, metadata !4, null}
!33 = metadata !{i32 21, i32 18, metadata !9, null}
!34 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 21]
!35 = metadata !{i32 21, i32 9, metadata !9, null}
!36 = metadata !{i32 22, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 1}
!39 = metadata !{i32 25, i32 24, metadata !9, null}
!40 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [size] [line 14]
!41 = metadata !{i32 14, i32 26, metadata !4, metadata !39}
!42 = metadata !{i32 15, i32 4, metadata !4, metadata !39}
!43 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!44 = metadata !{i32 15, i32 8, metadata !4, metadata !39}
!45 = metadata !{i32 16, i32 4, metadata !4, metadata !39}
!46 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 25]
!47 = metadata !{i32 25, i32 9, metadata !9, null}
!48 = metadata !{i32 26, i32 5, metadata !9, null}
!49 = metadata !{i32 27, i32 5, metadata !9, null}
!50 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777250, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 34]
!51 = metadata !{i32 34, i32 19, metadata !12, null}
!52 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554466, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 34]
!53 = metadata !{i32 34, i32 27, metadata !12, null}
!54 = metadata !{i32 786688, metadata !12, metadata !"sc1", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc1] [line 36]
!55 = metadata !{i32 36, i32 10, metadata !12, null}
!56 = metadata !{i32 786688, metadata !12, metadata !"s", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 37]
!57 = metadata !{i32 37, i32 10, metadata !12, null}
!58 = metadata !{i32 786688, metadata !12, metadata !"c", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 38]
!59 = metadata !{i32 38, i32 10, metadata !12, null}
!60 = metadata !{i32 39, i32 11, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 6, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 39, i32 11, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 39, i32 11, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 39, i32 11, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 41, i32 10, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !61, i32 39, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 42, i32 10, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !66, i32 42, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 42, i32 10, metadata !66, null}
!70 = metadata !{i32 42, i32 10, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !66, i32 42, i32 10, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 42, i32 10, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !66, i32 42, i32 10, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 43, i32 14, metadata !66, null}
!75 = metadata !{i32 44, i32 14, metadata !76, null}
!76 = metadata !{i32 786443, metadata !1, metadata !66, i32 44, i32 14, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 39, i32 43, metadata !61, null}
!78 = metadata !{i32 48, i32 2, metadata !12, null}
!79 = metadata !{i32 21, i32 18, metadata !9, metadata !80}
!80 = metadata !{i32 51, i32 29, metadata !15, null}
!81 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 21, metadata !8, i32 0, metadata !80} ; [ DW_TAG_auto_variable ] [length] [line 21]
!82 = metadata !{i32 21, i32 9, metadata !9, metadata !80}
!83 = metadata !{i32 22, i32 9, metadata !37, metadata !80}
!84 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [size] [line 14]
!85 = metadata !{i32 25, i32 24, metadata !9, metadata !80}
!86 = metadata !{i32 14, i32 26, metadata !4, metadata !85}
!87 = metadata !{i32 15, i32 4, metadata !4, metadata !85}
!88 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!89 = metadata !{i32 15, i32 8, metadata !4, metadata !85}
!90 = metadata !{i32 16, i32 4, metadata !4, metadata !85}
!91 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 25, metadata !8, i32 0, metadata !80} ; [ DW_TAG_auto_variable ] [nondetString] [line 25]
!92 = metadata !{i32 25, i32 9, metadata !9, metadata !80}
!93 = metadata !{i32 26, i32 5, metadata !9, metadata !80}
!94 = metadata !{i32 21, i32 18, metadata !9, metadata !95}
!95 = metadata !{i32 51, i32 56, metadata !15, null}
!96 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 21, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [length] [line 21]
!97 = metadata !{i32 21, i32 9, metadata !9, metadata !95}
!98 = metadata !{i32 22, i32 9, metadata !37, metadata !95}
!99 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !100} ; [ DW_TAG_arg_variable ] [size] [line 14]
!100 = metadata !{i32 25, i32 24, metadata !9, metadata !95}
!101 = metadata !{i32 14, i32 26, metadata !4, metadata !100}
!102 = metadata !{i32 15, i32 4, metadata !4, metadata !100}
!103 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !100} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!104 = metadata !{i32 15, i32 8, metadata !4, metadata !100}
!105 = metadata !{i32 16, i32 4, metadata !4, metadata !100}
!106 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 25, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [nondetString] [line 25]
!107 = metadata !{i32 25, i32 9, metadata !9, metadata !95}
!108 = metadata !{i32 26, i32 5, metadata !9, metadata !95}
!109 = metadata !{i32 786689, metadata !12, metadata !"s1", metadata !5, i32 16777250, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [s1] [line 34]
!110 = metadata !{i32 51, i32 20, metadata !15, null}
!111 = metadata !{i32 34, i32 19, metadata !12, metadata !110}
!112 = metadata !{i32 786689, metadata !12, metadata !"s2", metadata !5, i32 33554466, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [s2] [line 34]
!113 = metadata !{i32 34, i32 27, metadata !12, metadata !110}
!114 = metadata !{i32 786688, metadata !12, metadata !"sc1", metadata !5, i32 36, metadata !8, i32 0, metadata !110} ; [ DW_TAG_auto_variable ] [sc1] [line 36]
!115 = metadata !{i32 36, i32 10, metadata !12, metadata !110}
!116 = metadata !{i32 786688, metadata !12, metadata !"s", metadata !5, i32 37, metadata !8, i32 0, metadata !110} ; [ DW_TAG_auto_variable ] [s] [line 37]
!117 = metadata !{i32 37, i32 10, metadata !12, metadata !110}
!118 = metadata !{i32 39, i32 11, metadata !61, metadata !110}
!119 = metadata !{i32 39, i32 11, metadata !63, metadata !110}
!120 = metadata !{i32 41, i32 10, metadata !66, metadata !110}
!121 = metadata !{i32 42, i32 10, metadata !68, metadata !110}
!122 = metadata !{i32 42, i32 10, metadata !66, metadata !110}
!123 = metadata !{i32 42, i32 10, metadata !71, metadata !110}
!124 = metadata !{i32 42, i32 10, metadata !73, metadata !110}
!125 = metadata !{i32 43, i32 14, metadata !66, metadata !110}
!126 = metadata !{i32 44, i32 14, metadata !76, metadata !110}
!127 = metadata !{i32 39, i32 43, metadata !61, metadata !110}

