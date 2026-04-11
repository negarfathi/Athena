; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !29
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !31), !dbg !32
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  %"2" = add nsw i32 %"1", %size, !dbg !33
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !33
  ret i32 %"0", !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !35), !dbg !36
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !38), !dbg !39
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !40
  %"5" = add nsw i32 %"4", %size, !dbg !40
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !40
  ret i32 %"3", !dbg !41
}

; Function Attrs: nounwind uwtable
define i32 @cstrcspn(i32 %s1, i32 %s2) #0 {
cstrcspn_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !48), !dbg !49
  br label %cstrcspn_bb3, !dbg !52

cstrcspn_bb3:                                     ; preds = %cstrcspn_bb8, %cstrcspn_bb2
  %sc1.0 = phi i32 [ %s1, %cstrcspn_bb2 ], [ %"33", %cstrcspn_bb8 ]
  %"6" = sext i32 %sc1.0 to i64, !dbg !54
  %"7" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"6", !dbg !54
  %"8" = load i8* %"7", align 1, !dbg !54
  %"9" = sext i8 %"8" to i32, !dbg !54
  %"10" = icmp ne i32 %"9", 0, !dbg !54
  br i1 %"10", label %cstrcspn_bb4, label %cstrcspn_bb9, !dbg !54

cstrcspn_bb4:                                     ; preds = %cstrcspn_bb3
  %"11" = sext i32 %sc1.0 to i64, !dbg !57
  %"12" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"11", !dbg !57
  %"13" = load i8* %"12", align 1, !dbg !57
  %"14" = sext i8 %"13" to i32, !dbg !57
  %"15" = trunc i32 %"14" to i8, !dbg !59
  %"16" = sext i8 %"15" to i32, !dbg !59
  br label %cstrcspn_bb5, !dbg !61

cstrcspn_bb5:                                     ; preds = %cstrcspn_bb7, %cstrcspn_bb4
  %s.0 = phi i32 [ %s2, %cstrcspn_bb4 ], [ %"27", %cstrcspn_bb7 ]
  %"17" = sext i32 %s.0 to i64, !dbg !62
  %"18" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"17", !dbg !62
  %"19" = load i8* %"18", align 1, !dbg !62
  %"20" = sext i8 %"19" to i32, !dbg !62
  %"21" = icmp ne i32 %"20", 0, !dbg !62
  br i1 %"21", label %cstrcspn_bb6, label %cstrcspn_.critedge, !dbg !62

cstrcspn_bb6:                                     ; preds = %cstrcspn_bb5
  %"22" = sext i32 %s.0 to i64, !dbg !59
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !59
  %"24" = load i8* %"23", align 1, !dbg !59
  %"25" = sext i8 %"24" to i32, !dbg !59
  %"26" = icmp ne i32 %"25", %"16", !dbg !59
  br i1 %"26", label %cstrcspn_bb7, label %cstrcspn_.critedge, !dbg !64

cstrcspn_bb7:                                     ; preds = %cstrcspn_bb6
  %"27" = add nsw i32 %s.0, 1, !dbg !66
  br label %cstrcspn_bb5, !dbg !66

cstrcspn_.critedge:                               ; preds = %cstrcspn_bb5, %cstrcspn_bb6
  %"28" = sext i32 %s.0 to i64, !dbg !67
  %"29" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"28", !dbg !67
  %"30" = load i8* %"29", align 1, !dbg !67
  %"31" = sext i8 %"30" to i32, !dbg !67
  %"32" = icmp eq i32 %"31", %"14", !dbg !67
  br i1 %"32", label %cstrcspn_bb9, label %cstrcspn_bb8, !dbg !67

cstrcspn_bb8:                                     ; preds = %cstrcspn_.critedge
  %"33" = add nsw i32 %sc1.0, 1, !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !46), !dbg !47
  br label %cstrcspn_bb3, !dbg !69

cstrcspn_bb9:                                     ; preds = %cstrcspn_.critedge, %cstrcspn_bb3
  %"34" = sub nsw i32 %sc1.0, %s1, !dbg !70
  ret i32 %"34", !dbg !71
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"35" = call i32 @__VERIFIER_nondet_int(), !dbg !72
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !73), !dbg !74
  %"36" = call i32 @__VERIFIER_nondet_int(), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"36"}, i64 0, metadata !76), !dbg !77
  %"37" = icmp slt i32 %"35", 1, !dbg !78
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !73), !dbg !74
  %. = select i1 %"37", i32 1, i32 %"35", !dbg !78
  %"38" = icmp slt i32 %"36", 1, !dbg !81
  call void @llvm.dbg.value(metadata !80, i64 0, metadata !76), !dbg !77
  %length2.0 = select i1 %"38", i32 1, i32 %"36", !dbg !81
  %"39" = mul nsw i32 %., 1, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"39"}, i64 0, metadata !84), !dbg !85
  %"40" = load i32* @"'memory1_freeIndex", align 4, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !87), !dbg !88
  %"41" = load i32* @"'memory1_freeIndex", align 4, !dbg !89
  %"42" = add nsw i32 %"41", %"39", !dbg !89
  store i32 %"42", i32* @"'memory1_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !90), !dbg !91
  %"43" = mul nsw i32 %length2.0, 1, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !93), !dbg !94
  %"44" = load i32* @"'memory0_freeIndex", align 4, !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !96), !dbg !97
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  %"46" = add nsw i32 %"45", %"43", !dbg !98
  store i32 %"46", i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !99), !dbg !100
  %"47" = sub nsw i32 %., 1, !dbg !101
  %"48" = add nsw i32 %"40", %"47", !dbg !101
  %"49" = sext i32 %"48" to i64, !dbg !101
  %"50" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"49", !dbg !101
  store i8 0, i8* %"50", align 1, !dbg !101
  %"51" = sub nsw i32 %length2.0, 1, !dbg !102
  %"52" = add nsw i32 %"44", %"51", !dbg !102
  %"53" = sext i32 %"52" to i64, !dbg !102
  %"54" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"53", !dbg !102
  store i8 0, i8* %"54", align 1, !dbg !102
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !103), !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !106), !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"40"}, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !110), !dbg !111
  br label %main_bb11, !dbg !112

main_bb11:                                        ; preds = %main_bb16, %main_bb10
  %sc1.0.i = phi i32 [ %"40", %main_bb10 ], [ %"82", %main_bb16 ], !dbg !104
  %"55" = sext i32 %sc1.0.i to i64, !dbg !113
  %"56" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"55", !dbg !113
  %"57" = load i8* %"56", align 1, !dbg !113
  %"58" = sext i8 %"57" to i32, !dbg !113
  %"59" = icmp ne i32 %"58", 0, !dbg !113
  br i1 %"59", label %main_bb12, label %main_cstrcspn.exit, !dbg !113

main_bb12:                                        ; preds = %main_bb11
  %"60" = sext i32 %sc1.0.i to i64, !dbg !114
  %"61" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"60", !dbg !114
  %"62" = load i8* %"61", align 1, !dbg !114
  %"63" = sext i8 %"62" to i32, !dbg !114
  %"64" = trunc i32 %"63" to i8, !dbg !115
  %"65" = sext i8 %"64" to i32, !dbg !115
  br label %main_bb13, !dbg !116

main_bb13:                                        ; preds = %main_bb15, %main_bb12
  %s.0.i = phi i32 [ %"44", %main_bb12 ], [ %"76", %main_bb15 ], !dbg !104
  %"66" = sext i32 %s.0.i to i64, !dbg !117
  %"67" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"66", !dbg !117
  %"68" = load i8* %"67", align 1, !dbg !117
  %"69" = sext i8 %"68" to i32, !dbg !117
  %"70" = icmp ne i32 %"69", 0, !dbg !117
  br i1 %"70", label %main_bb14, label %main_.critedge.i, !dbg !117

main_bb14:                                        ; preds = %main_bb13
  %"71" = sext i32 %s.0.i to i64, !dbg !115
  %"72" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"71", !dbg !115
  %"73" = load i8* %"72", align 1, !dbg !115
  %"74" = sext i8 %"73" to i32, !dbg !115
  %"75" = icmp ne i32 %"74", %"65", !dbg !115
  br i1 %"75", label %main_bb15, label %main_.critedge.i, !dbg !118

main_bb15:                                        ; preds = %main_bb14
  %"76" = add nsw i32 %s.0.i, 1, !dbg !119
  br label %main_bb13, !dbg !119

main_.critedge.i:                                 ; preds = %main_bb14, %main_bb13
  %"77" = sext i32 %s.0.i to i64, !dbg !120
  %"78" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"77", !dbg !120
  %"79" = load i8* %"78", align 1, !dbg !120
  %"80" = sext i8 %"79" to i32, !dbg !120
  %"81" = icmp eq i32 %"80", %"63", !dbg !120
  br i1 %"81", label %main_cstrcspn.exit, label %main_bb16, !dbg !120

main_bb16:                                        ; preds = %main_.critedge.i
  %"82" = add nsw i32 %sc1.0.i, 1, !dbg !121
  call void @llvm.dbg.value(metadata !{i32 %"82"}, i64 0, metadata !108), !dbg !109
  br label %main_bb11, !dbg !121

main_cstrcspn.exit:                               ; preds = %main_bb11, %main_.critedge.i
  %"83" = sub nsw i32 %sc1.0.i, %"40", !dbg !122
  ret i32 %"83", !dbg !104
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrcspn", metadata !"cstrcspn", metadata !"", i32 27, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrcspn, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [cstrcspn]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 43} ; [ DW_TAG_subprogram ] [line 43] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 20, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 20] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 19, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 19] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!29 = metadata !{i32 12, i32 26, metadata !4, null}
!30 = metadata !{i32 13, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!32 = metadata !{i32 13, i32 8, metadata !4, null}
!33 = metadata !{i32 14, i32 4, metadata !4, null}
!34 = metadata !{i32 15, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 21]
!36 = metadata !{i32 21, i32 26, metadata !9, null}
!37 = metadata !{i32 22, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!39 = metadata !{i32 22, i32 8, metadata !9, null}
!40 = metadata !{i32 23, i32 4, metadata !9, null}
!41 = metadata !{i32 24, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777243, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 27]
!43 = metadata !{i32 27, i32 20, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!45 = metadata !{i32 27, i32 28, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"sc1", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc1] [line 29]
!47 = metadata !{i32 29, i32 10, metadata !10, null}
!48 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 30]
!49 = metadata !{i32 30, i32 10, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"c", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 31]
!51 = metadata !{i32 31, i32 10, metadata !10, null}
!52 = metadata !{i32 32, i32 11, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !10, i32 32, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 32, i32 11, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 32, i32 11, i32 2, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !53, i32 32, i32 11, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 34, i32 10, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !53, i32 32, i32 50, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 35, i32 10, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !58, i32 35, i32 10, i32 2, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 35, i32 10, metadata !58, null}
!62 = metadata !{i32 35, i32 10, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !58, i32 35, i32 10, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 35, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !58, i32 35, i32 10, i32 3, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 36, i32 14, metadata !58, null}
!67 = metadata !{i32 37, i32 14, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !58, i32 37, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 32, i32 43, metadata !53, null}
!70 = metadata !{i32 38, i32 14, metadata !68, null}
!71 = metadata !{i32 41, i32 2, metadata !10, null}
!72 = metadata !{i32 44, i32 19, metadata !13, null}
!73 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 44, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 44]
!74 = metadata !{i32 44, i32 9, metadata !13, null}
!75 = metadata !{i32 45, i32 19, metadata !13, null}
!76 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 45, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 45]
!77 = metadata !{i32 45, i32 9, metadata !13, null}
!78 = metadata !{i32 46, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !13, i32 46, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 1}
!81 = metadata !{i32 49, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !13, i32 49, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 52, i32 25, metadata !13, null}
!84 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777237, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [size] [line 21]
!85 = metadata !{i32 21, i32 26, metadata !9, metadata !83}
!86 = metadata !{i32 22, i32 4, metadata !9, metadata !83}
!87 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 22, metadata !8, i32 0, metadata !83} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 22]
!88 = metadata !{i32 22, i32 8, metadata !9, metadata !83}
!89 = metadata !{i32 23, i32 4, metadata !9, metadata !83}
!90 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 52]
!91 = metadata !{i32 52, i32 9, metadata !13, null}
!92 = metadata !{i32 53, i32 25, metadata !13, null}
!93 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !92} ; [ DW_TAG_arg_variable ] [size] [line 12]
!94 = metadata !{i32 12, i32 26, metadata !4, metadata !92}
!95 = metadata !{i32 13, i32 4, metadata !4, metadata !92}
!96 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !92} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!97 = metadata !{i32 13, i32 8, metadata !4, metadata !92}
!98 = metadata !{i32 14, i32 4, metadata !4, metadata !92}
!99 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 53]
!100 = metadata !{i32 53, i32 9, metadata !13, null}
!101 = metadata !{i32 54, i32 5, metadata !13, null}
!102 = metadata !{i32 55, i32 5, metadata !13, null}
!103 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777243, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [s1] [line 27]
!104 = metadata !{i32 56, i32 12, metadata !13, null}
!105 = metadata !{i32 27, i32 20, metadata !10, metadata !104}
!106 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554459, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [s2] [line 27]
!107 = metadata !{i32 27, i32 28, metadata !10, metadata !104}
!108 = metadata !{i32 786688, metadata !10, metadata !"sc1", metadata !5, i32 29, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [sc1] [line 29]
!109 = metadata !{i32 29, i32 10, metadata !10, metadata !104}
!110 = metadata !{i32 786688, metadata !10, metadata !"s", metadata !5, i32 30, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [s] [line 30]
!111 = metadata !{i32 30, i32 10, metadata !10, metadata !104}
!112 = metadata !{i32 32, i32 11, metadata !53, metadata !104}
!113 = metadata !{i32 32, i32 11, metadata !55, metadata !104}
!114 = metadata !{i32 34, i32 10, metadata !58, metadata !104}
!115 = metadata !{i32 35, i32 10, metadata !60, metadata !104}
!116 = metadata !{i32 35, i32 10, metadata !58, metadata !104}
!117 = metadata !{i32 35, i32 10, metadata !63, metadata !104}
!118 = metadata !{i32 35, i32 10, metadata !65, metadata !104}
!119 = metadata !{i32 36, i32 14, metadata !58, metadata !104}
!120 = metadata !{i32 37, i32 14, metadata !68, metadata !104}
!121 = metadata !{i32 32, i32 43, metadata !53, metadata !104}
!122 = metadata !{i32 38, i32 14, metadata !68, metadata !104}

