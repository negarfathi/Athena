; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16

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
define i32 @cstpcpy(i32 %to, i32 %from) #0 {
cstpcpy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %to}, i64 0, metadata !42), !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %from}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !44), !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !42), !dbg !43
  br label %cstpcpy_bb3, !dbg !46

cstpcpy_bb3:                                      ; preds = %cstpcpy_bb4, %cstpcpy_bb2
  %.01 = phi i32 [ %from, %cstpcpy_bb2 ], [ %"13", %cstpcpy_bb4 ]
  %.0 = phi i32 [ %to, %cstpcpy_bb2 ], [ %"14", %cstpcpy_bb4 ]
  %"6" = sext i32 %.01 to i64, !dbg !48
  %"7" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"6", !dbg !48
  %"8" = load i8* %"7", align 1, !dbg !48
  %"9" = sext i32 %.0 to i64, !dbg !48
  %"10" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"9", !dbg !48
  store i8 %"8", i8* %"10", align 1, !dbg !48
  %"11" = sext i8 %"8" to i32, !dbg !48
  %"12" = icmp ne i32 %"11", 0, !dbg !48
  br i1 %"12", label %cstpcpy_bb4, label %cstpcpy_bb5, !dbg !48

cstpcpy_bb4:                                      ; preds = %cstpcpy_bb3
  %"13" = add nsw i32 %.01, 1, !dbg !51
  %"14" = add nsw i32 %.0, 1, !dbg !51
  br label %cstpcpy_bb3, !dbg !51

cstpcpy_bb5:                                      ; preds = %cstpcpy_bb3
  ret i32 %.0, !dbg !53
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"15" = call i32 @__VERIFIER_nondet_int(), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !55), !dbg !56
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !58), !dbg !59
  %"17" = icmp slt i32 %"15", 1, !dbg !60
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !55), !dbg !56
  %. = select i1 %"17", i32 1, i32 %"15", !dbg !60
  %"18" = icmp slt i32 %"16", 1, !dbg !63
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !58), !dbg !59
  %length2.0 = select i1 %"18", i32 1, i32 %"16", !dbg !63
  %"19" = icmp slt i32 %., %length2.0, !dbg !65
  br i1 %"19", label %main_cstpcpy.exit, label %main_bb7, !dbg !65

main_bb7:                                         ; preds = %main_bb6
  %"20" = mul nsw i32 %., 1, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !68), !dbg !69
  %"21" = load i32* @"'memory1_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !71), !dbg !72
  %"22" = load i32* @"'memory1_freeIndex", align 4, !dbg !73
  %"23" = add nsw i32 %"22", %"20", !dbg !73
  store i32 %"23", i32* @"'memory1_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !74), !dbg !75
  %"24" = mul nsw i32 %length2.0, 1, !dbg !76
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !77), !dbg !78
  %"25" = load i32* @"'memory0_freeIndex", align 4, !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !80), !dbg !81
  %"26" = load i32* @"'memory0_freeIndex", align 4, !dbg !82
  %"27" = add nsw i32 %"26", %"24", !dbg !82
  store i32 %"27", i32* @"'memory0_freeIndex", align 4, !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !83), !dbg !84
  %"28" = sub nsw i32 %length2.0, 1, !dbg !85
  %"29" = add nsw i32 %"25", %"28", !dbg !85
  %"30" = sext i32 %"29" to i64, !dbg !85
  %"31" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"30", !dbg !85
  store i8 0, i8* %"31", align 1, !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !86), !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !89), !dbg !90
  br label %main_bb8, !dbg !91

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %.01.i = phi i32 [ %"25", %main_bb7 ], [ %"39", %main_bb9 ], !dbg !87
  %.0.i = phi i32 [ %"21", %main_bb7 ], [ %"40", %main_bb9 ], !dbg !87
  %"32" = sext i32 %.01.i to i64, !dbg !92
  %"33" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"32", !dbg !92
  %"34" = load i8* %"33", align 1, !dbg !92
  %"35" = sext i32 %.0.i to i64, !dbg !92
  %"36" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"35", !dbg !92
  store i8 %"34", i8* %"36", align 1, !dbg !92
  %"37" = sext i8 %"34" to i32, !dbg !92
  %"38" = icmp ne i32 %"37", 0, !dbg !92
  br i1 %"38", label %main_bb9, label %main_cstpcpy.exit, !dbg !92

main_bb9:                                         ; preds = %main_bb8
  %"39" = add nsw i32 %.01.i, 1, !dbg !93
  %"40" = add nsw i32 %.0.i, 1, !dbg !93
  br label %main_bb8, !dbg !93

main_cstpcpy.exit:                                ; preds = %main_bb8, %main_bb6
  ret i32 0, !dbg !94
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstpcpy", metadata !"cstpcpy", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstpcpy, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [cstpcpy]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 29, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !24}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !21, metadata !22, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!21 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!24 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!29 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!30 = metadata !{i32 9, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!32 = metadata !{i32 9, i32 8, metadata !4, null}
!33 = metadata !{i32 10, i32 4, metadata !4, null}
!34 = metadata !{i32 11, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!36 = metadata !{i32 17, i32 26, metadata !9, null}
!37 = metadata !{i32 18, i32 4, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!39 = metadata !{i32 18, i32 8, metadata !9, null}
!40 = metadata !{i32 19, i32 4, metadata !9, null}
!41 = metadata !{i32 20, i32 4, metadata !9, null}
!42 = metadata !{i32 786689, metadata !10, metadata !"to", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [to] [line 23]
!43 = metadata !{i32 23, i32 17, metadata !10, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"from", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [from] [line 23]
!45 = metadata !{i32 23, i32 25, metadata !10, null}
!46 = metadata !{i32 25, i32 2, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !10, i32 25, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 25, i32 2, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !50, i32 25, i32 2, i32 4, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 786443, metadata !1, metadata !47, i32 25, i32 2, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 25, i32 48, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !47, i32 25, i32 48, i32 3, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 26, i32 2, metadata !10, null}
!54 = metadata !{i32 30, i32 17, metadata !13, null}
!55 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 30]
!56 = metadata !{i32 30, i32 7, metadata !13, null}
!57 = metadata !{i32 31, i32 17, metadata !13, null}
!58 = metadata !{i32 786688, metadata !13, metadata !"length2", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length2] [line 31]
!59 = metadata !{i32 31, i32 7, metadata !13, null}
!60 = metadata !{i32 32, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !13, i32 32, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 1}
!63 = metadata !{i32 35, i32 7, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !13, i32 35, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 38, i32 7, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !13, i32 38, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 39, i32 20, metadata !13, null}
!68 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !67} ; [ DW_TAG_arg_variable ] [size] [line 17]
!69 = metadata !{i32 17, i32 26, metadata !9, metadata !67}
!70 = metadata !{i32 18, i32 4, metadata !9, metadata !67}
!71 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !67} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!72 = metadata !{i32 18, i32 8, metadata !9, metadata !67}
!73 = metadata !{i32 19, i32 4, metadata !9, metadata !67}
!74 = metadata !{i32 786688, metadata !13, metadata !"nondetArea", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 39]
!75 = metadata !{i32 39, i32 7, metadata !13, null}
!76 = metadata !{i32 40, i32 22, metadata !13, null}
!77 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [size] [line 8]
!78 = metadata !{i32 8, i32 26, metadata !4, metadata !76} ; [ DW_TAG_imported_declaration ]
!79 = metadata !{i32 9, i32 4, metadata !4, metadata !76}
!80 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!81 = metadata !{i32 9, i32 8, metadata !4, metadata !76}
!82 = metadata !{i32 10, i32 4, metadata !4, metadata !76}
!83 = metadata !{i32 786688, metadata !13, metadata !"nondetString", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 40]
!84 = metadata !{i32 40, i32 7, metadata !13, null}
!85 = metadata !{i32 41, i32 3, metadata !13, null}
!86 = metadata !{i32 786689, metadata !10, metadata !"to", metadata !5, i32 16777239, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [to] [line 23]
!87 = metadata !{i32 42, i32 3, metadata !13, null}
!88 = metadata !{i32 23, i32 17, metadata !10, metadata !87}
!89 = metadata !{i32 786689, metadata !10, metadata !"from", metadata !5, i32 33554455, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [from] [line 23]
!90 = metadata !{i32 23, i32 25, metadata !10, metadata !87}
!91 = metadata !{i32 25, i32 2, metadata !47, metadata !87}
!92 = metadata !{i32 25, i32 2, metadata !49, metadata !87}
!93 = metadata !{i32 25, i32 48, metadata !52, metadata !87}
!94 = metadata !{i32 44, i32 1, metadata !13, null}

