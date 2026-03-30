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
define i32 @cstrspn(i32 %s1, i32 %s2) #0 {
cstrspn_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %s1}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !46), !dbg !47
  call void @llvm.dbg.value(metadata !{i8 %"9"}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %s2}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i8 %"14"}, i64 0, metadata !52), !dbg !53
  br label %cstrspn_bb3, !dbg !54

cstrspn_bb3:                                      ; preds = %cstrspn_bb5, %cstrspn_bb2
  %p.0 = phi i32 [ %s1, %cstrspn_bb2 ], [ %"6", %cstrspn_bb5 ]
  %"6" = add nsw i32 %p.0, 1, !dbg !55
  %"7" = sext i32 %p.0 to i64, !dbg !55
  %"8" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"7", !dbg !55
  %"9" = load i8* %"8", align 1, !dbg !55
  %"10" = sext i8 %"9" to i32, !dbg !56
  br label %cstrspn_bb4, !dbg !59

cstrspn_bb4:                                      ; preds = %cstrspn_bb5, %cstrspn_bb3
  %spanp.0 = phi i32 [ %s2, %cstrspn_bb3 ], [ %"11", %cstrspn_bb5 ]
  %"11" = add nsw i32 %spanp.0, 1, !dbg !60
  %"12" = sext i32 %spanp.0 to i64, !dbg !60
  %"13" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"12", !dbg !60
  %"14" = load i8* %"13", align 1, !dbg !60
  %"15" = sext i8 %"14" to i32, !dbg !60
  %"16" = icmp ne i32 %"15", 0, !dbg !60
  br i1 %"16", label %cstrspn_bb5, label %cstrspn_bb6, !dbg !60

cstrspn_bb5:                                      ; preds = %cstrspn_bb4
  %"17" = sext i8 %"14" to i32, !dbg !56
  %"18" = icmp eq i32 %"17", %"10", !dbg !56
  br i1 %"18", label %cstrspn_bb3, label %cstrspn_bb4, !dbg !56

cstrspn_bb6:                                      ; preds = %cstrspn_bb4
  %"19" = sub nsw i32 %"6", 1, !dbg !62
  %"20" = sub nsw i32 %"19", %s1, !dbg !62
  ret i32 %"20", !dbg !62
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"21" = call i32 @__VERIFIER_nondet_int(), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !64), !dbg !65
  %"22" = call i32 @__VERIFIER_nondet_int(), !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !67), !dbg !68
  %"23" = icmp slt i32 %"21", 1, !dbg !69
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !64), !dbg !65
  %. = select i1 %"23", i32 1, i32 %"21", !dbg !69
  %"24" = icmp slt i32 %"22", 1, !dbg !72
  call void @llvm.dbg.value(metadata !71, i64 0, metadata !67), !dbg !68
  %length2.0 = select i1 %"24", i32 1, i32 %"22", !dbg !72
  %"25" = mul nsw i32 %., 1, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !75), !dbg !76
  %"26" = load i32* @"'memory1_freeIndex", align 4, !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !78), !dbg !79
  %"27" = load i32* @"'memory1_freeIndex", align 4, !dbg !80
  %"28" = add nsw i32 %"27", %"25", !dbg !80
  store i32 %"28", i32* @"'memory1_freeIndex", align 4, !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !81), !dbg !82
  %"29" = mul nsw i32 %length2.0, 1, !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !84), !dbg !85
  %"30" = load i32* @"'memory0_freeIndex", align 4, !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !87), !dbg !88
  %"31" = load i32* @"'memory0_freeIndex", align 4, !dbg !89
  %"32" = add nsw i32 %"31", %"29", !dbg !89
  store i32 %"32", i32* @"'memory0_freeIndex", align 4, !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !90), !dbg !91
  %"33" = sub nsw i32 %., 1, !dbg !92
  %"34" = add nsw i32 %"26", %"33", !dbg !92
  %"35" = sext i32 %"34" to i64, !dbg !92
  %"36" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"35", !dbg !92
  store i8 0, i8* %"36", align 1, !dbg !92
  %"37" = sub nsw i32 %length2.0, 1, !dbg !93
  %"38" = add nsw i32 %"30", %"37", !dbg !93
  %"39" = sext i32 %"38" to i64, !dbg !93
  %"40" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"39", !dbg !93
  store i8 0, i8* %"40", align 1, !dbg !93
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !94), !dbg !96
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !97), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !99), !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !101), !dbg !102
  br label %main_bb8, !dbg !103

main_bb8:                                         ; preds = %main_bb10, %main_bb7
  %p.0.i = phi i32 [ %"26", %main_bb7 ], [ %"41", %main_bb10 ], !dbg !95
  %"41" = add nsw i32 %p.0.i, 1, !dbg !104
  %"42" = sext i32 %p.0.i to i64, !dbg !104
  %"43" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"42", !dbg !104
  %"44" = load i8* %"43", align 1, !dbg !104
  %"45" = sext i8 %"44" to i32, !dbg !105
  br label %main_bb9, !dbg !106

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %spanp.0.i = phi i32 [ %"30", %main_bb8 ], [ %"46", %main_bb10 ], !dbg !95
  %"46" = add nsw i32 %spanp.0.i, 1, !dbg !107
  %"47" = sext i32 %spanp.0.i to i64, !dbg !107
  %"48" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"47", !dbg !107
  %"49" = load i8* %"48", align 1, !dbg !107
  %"50" = sext i8 %"49" to i32, !dbg !107
  %"51" = icmp ne i32 %"50", 0, !dbg !107
  br i1 %"51", label %main_bb10, label %main_cstrspn.exit, !dbg !107

main_bb10:                                        ; preds = %main_bb9
  %"52" = sext i8 %"49" to i32, !dbg !105
  %"53" = icmp eq i32 %"52", %"45", !dbg !105
  br i1 %"53", label %main_bb8, label %main_bb9, !dbg !105

main_cstrspn.exit:                                ; preds = %main_bb9
  %"54" = sub nsw i32 %p.0.i, %"26", !dbg !108
  ret i32 %"54", !dbg !95
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrspn", metadata !"cstrspn", metadata !"", i32 31, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrspn, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [cstrspn]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 48, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 48} ; [ DW_TAG_subprogram ] [line 48] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 14] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 23] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 13, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 13] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 22, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 22] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!29 = metadata !{i32 15, i32 26, metadata !4, null}
!30 = metadata !{i32 16, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!32 = metadata !{i32 16, i32 8, metadata !4, null}
!33 = metadata !{i32 17, i32 4, metadata !4, null}
!34 = metadata !{i32 18, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!36 = metadata !{i32 24, i32 26, metadata !9, null}
!37 = metadata !{i32 25, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!39 = metadata !{i32 25, i32 8, metadata !9, null}
!40 = metadata !{i32 26, i32 4, metadata !9, null}
!41 = metadata !{i32 27, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s1] [line 31]
!43 = metadata !{i32 31, i32 13, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554463, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s2] [line 31]
!45 = metadata !{i32 31, i32 21, metadata !10, null}
!46 = metadata !{i32 786688, metadata !10, metadata !"p", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 33]
!47 = metadata !{i32 33, i32 6, metadata !10, null}
!48 = metadata !{i32 786688, metadata !10, metadata !"c", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 35]
!49 = metadata !{i32 35, i32 7, metadata !10, null}
!50 = metadata !{i32 786688, metadata !10, metadata !"spanp", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [spanp] [line 34]
!51 = metadata !{i32 34, i32 6, metadata !10, null}
!52 = metadata !{i32 786688, metadata !10, metadata !"sc", metadata !5, i32 35, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 35]
!53 = metadata !{i32 35, i32 10, metadata !10, null}
!54 = metadata !{i32 35, i32 2, metadata !10, null}
!55 = metadata !{i32 41, i32 2, metadata !10, null}
!56 = metadata !{i32 43, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 43, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 786443, metadata !1, metadata !10, i32 42, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 42, i32 7, metadata !58, null}
!60 = metadata !{i32 42, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !58, i32 42, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 45, i32 2, metadata !10, null}
!63 = metadata !{i32 49, i32 19, metadata !13, null}
!64 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 49]
!65 = metadata !{i32 49, i32 9, metadata !13, null}
!66 = metadata !{i32 50, i32 19, metadata !13, null}
!67 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 50, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 50]
!68 = metadata !{i32 50, i32 9, metadata !13, null}
!69 = metadata !{i32 51, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !13, i32 51, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 1}
!72 = metadata !{i32 54, i32 9, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !13, i32 54, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 57, i32 25, metadata !13, null}
!75 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, metadata !74} ; [ DW_TAG_arg_variable ] [size] [line 24]
!76 = metadata !{i32 24, i32 26, metadata !9, metadata !74}
!77 = metadata !{i32 25, i32 4, metadata !9, metadata !74}
!78 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, metadata !74} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!79 = metadata !{i32 25, i32 8, metadata !9, metadata !74}
!80 = metadata !{i32 26, i32 4, metadata !9, metadata !74}
!81 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 57, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 57]
!82 = metadata !{i32 57, i32 9, metadata !13, null}
!83 = metadata !{i32 58, i32 25, metadata !13, null} ; [ DW_TAG_imported_module ]
!84 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [size] [line 15]
!85 = metadata !{i32 15, i32 26, metadata !4, metadata !83}
!86 = metadata !{i32 16, i32 4, metadata !4, metadata !83}
!87 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, metadata !83} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!88 = metadata !{i32 16, i32 8, metadata !4, metadata !83}
!89 = metadata !{i32 17, i32 4, metadata !4, metadata !83}
!90 = metadata !{i32 786688, metadata !13, metadata !"nondetString2", metadata !5, i32 58, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString2] [line 58]
!91 = metadata !{i32 58, i32 9, metadata !13, null} ; [ DW_TAG_imported_module ]
!92 = metadata !{i32 59, i32 5, metadata !13, null}
!93 = metadata !{i32 60, i32 5, metadata !13, null}
!94 = metadata !{i32 786689, metadata !10, metadata !"s1", metadata !5, i32 16777247, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [s1] [line 31]
!95 = metadata !{i32 61, i32 12, metadata !13, null}
!96 = metadata !{i32 31, i32 13, metadata !10, metadata !95}
!97 = metadata !{i32 786689, metadata !10, metadata !"s2", metadata !5, i32 33554463, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [s2] [line 31]
!98 = metadata !{i32 31, i32 21, metadata !10, metadata !95}
!99 = metadata !{i32 786688, metadata !10, metadata !"p", metadata !5, i32 33, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [p] [line 33]
!100 = metadata !{i32 33, i32 6, metadata !10, metadata !95}
!101 = metadata !{i32 786688, metadata !10, metadata !"spanp", metadata !5, i32 34, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [spanp] [line 34]
!102 = metadata !{i32 34, i32 6, metadata !10, metadata !95}
!103 = metadata !{i32 35, i32 2, metadata !10, metadata !95}
!104 = metadata !{i32 41, i32 2, metadata !10, metadata !95}
!105 = metadata !{i32 43, i32 7, metadata !57, metadata !95}
!106 = metadata !{i32 42, i32 7, metadata !58, metadata !95}
!107 = metadata !{i32 42, i32 7, metadata !61, metadata !95}
!108 = metadata !{i32 45, i32 2, metadata !10, metadata !95}

