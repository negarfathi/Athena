; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory2 = common global [100000 x i8] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !32), !dbg !33
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !35), !dbg !36
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !37
  %"2" = add nsw i32 %"1", %size, !dbg !37
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !37
  ret i32 %"0", !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !39), !dbg !40
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !42), !dbg !43
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !44
  %"5" = add nsw i32 %"4", %size, !dbg !44
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !44
  ret i32 %"3", !dbg !45
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !46), !dbg !47
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !49), !dbg !50
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !51
  %"8" = add nsw i32 %"7", %size, !dbg !51
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !51
  ret i32 %"6", !dbg !52
}

; Function Attrs: nounwind uwtable
define i32 @sumOfThirdBytes(i32 %numbers, i32 %array_size) #0 {
sumOfThirdBytes_bb3:
  call void @llvm.dbg.value(metadata !{i32 %numbers}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %array_size}, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !58), !dbg !59
  br label %sumOfThirdBytes_bb4, !dbg !64

sumOfThirdBytes_bb4:                              ; preds = %sumOfThirdBytes_bb8, %sumOfThirdBytes_bb3
  %sum.0 = phi i32 [ 0, %sumOfThirdBytes_bb3 ], [ %sum.1, %sumOfThirdBytes_bb8 ]
  %i.0 = phi i32 [ 0, %sumOfThirdBytes_bb3 ], [ %"22", %sumOfThirdBytes_bb8 ]
  %"9" = icmp slt i32 %i.0, %array_size, !dbg !66
  br i1 %"9", label %sumOfThirdBytes_bb5, label %sumOfThirdBytes_bb9, !dbg !66

sumOfThirdBytes_bb5:                              ; preds = %sumOfThirdBytes_bb4
  %"10" = add nsw i32 %numbers, %i.0, !dbg !69
  %"11" = add nsw i32 %"10", 2, !dbg !71
  %"12" = sext i32 %"11" to i64, !dbg !72
  %"13" = getelementptr inbounds [100000 x i8]* @memory2, i32 0, i64 %"12", !dbg !72
  %"14" = sext i32 %"11" to i64, !dbg !74
  %"15" = getelementptr inbounds [100000 x i8]* @memory2, i32 0, i64 %"14", !dbg !74
  br label %sumOfThirdBytes_bb6, !dbg !76

sumOfThirdBytes_bb6:                              ; preds = %sumOfThirdBytes_bb7, %sumOfThirdBytes_bb5
  %sum.1 = phi i32 [ %sum.0, %sumOfThirdBytes_bb5 ], [ %"19", %sumOfThirdBytes_bb7 ]
  %"16" = load i8* %"13", align 1, !dbg !72
  %"17" = sext i8 %"16" to i32, !dbg !72
  %"18" = icmp sgt i32 %"17", 0, !dbg !72
  br i1 %"18", label %sumOfThirdBytes_bb7, label %sumOfThirdBytes_bb8, !dbg !72

sumOfThirdBytes_bb7:                              ; preds = %sumOfThirdBytes_bb6
  %"19" = add nsw i32 %sum.1, 1, !dbg !77
  %"20" = load i8* %"15", align 1, !dbg !74
  %"21" = add i8 %"20", -1, !dbg !74
  store i8 %"21", i8* %"15", align 1, !dbg !74
  br label %sumOfThirdBytes_bb6, !dbg !78

sumOfThirdBytes_bb8:                              ; preds = %sumOfThirdBytes_bb6
  %"22" = add nsw i32 %i.0, 1, !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !60), !dbg !61
  br label %sumOfThirdBytes_bb4, !dbg !79

sumOfThirdBytes_bb9:                              ; preds = %sumOfThirdBytes_bb4
  ret i32 %sum.0, !dbg !80
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"23" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !81), !dbg !82
  %"24" = call i32 @__VERIFIER_nondet_int(), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !86), !dbg !88
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !89), !dbg !90
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !91), !dbg !92
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !93), !dbg !94
  br label %main_bb11, !dbg !95

main_bb11:                                        ; preds = %main_bb15, %main_bb10
  %sum.0.i = phi i32 [ 0, %main_bb10 ], [ %sum.1.i, %main_bb15 ], !dbg !87
  %i.0.i = phi i32 [ 0, %main_bb10 ], [ %"38", %main_bb15 ], !dbg !87
  %"25" = icmp slt i32 %i.0.i, %"24", !dbg !96
  br i1 %"25", label %main_bb12, label %main_sumOfThirdBytes.exit, !dbg !96

main_bb12:                                        ; preds = %main_bb11
  %"26" = add nsw i32 %"23", %i.0.i, !dbg !97
  %"27" = add nsw i32 %"26", 2, !dbg !98
  %"28" = sext i32 %"27" to i64, !dbg !99
  %"29" = getelementptr inbounds [100000 x i8]* @memory2, i32 0, i64 %"28", !dbg !99
  %"30" = sext i32 %"27" to i64, !dbg !100
  %"31" = getelementptr inbounds [100000 x i8]* @memory2, i32 0, i64 %"30", !dbg !100
  br label %main_bb13, !dbg !101

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %sum.1.i = phi i32 [ %sum.0.i, %main_bb12 ], [ %"35", %main_bb14 ], !dbg !87
  %"32" = load i8* %"29", align 1, !dbg !99
  %"33" = sext i8 %"32" to i32, !dbg !99
  %"34" = icmp sgt i32 %"33", 0, !dbg !99
  br i1 %"34", label %main_bb14, label %main_bb15, !dbg !99

main_bb14:                                        ; preds = %main_bb13
  %"35" = add nsw i32 %sum.1.i, 1, !dbg !102
  %"36" = load i8* %"31", align 1, !dbg !100
  %"37" = add i8 %"36", -1, !dbg !100
  store i8 %"37", i8* %"31", align 1, !dbg !100
  br label %main_bb13, !dbg !103

main_bb15:                                        ; preds = %main_bb13
  %"38" = add nsw i32 %i.0.i, 1, !dbg !104
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !93), !dbg !94
  br label %main_bb11, !dbg !104

main_sumOfThirdBytes.exit:                        ; preds = %main_bb11
  ret i32 %sum.0.i, !dbg !87
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !17, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 6} ; [ DW_TAG_subprogram ] [line 6] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sumOfThirdBytes", metadata !"sumOfThirdBytes", metadata !"", i32 30, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @sumOfThirdBytes, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [sumOfThirdBytes]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8, metadata !8, metadata !8}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 46, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8}
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !25, metadata !26}
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 5, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 5] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 14, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 14] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 23, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 23] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 4, metadata !22, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 4] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 13, metadata !22, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 13] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 22, metadata !27, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 22] [def]
!27 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !28, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!28 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!29 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!30 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!31 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!32 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777222, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 6]
!33 = metadata !{i32 6, i32 26, metadata !4, null}
!34 = metadata !{i32 7, i32 4, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 7, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 7]
!36 = metadata !{i32 7, i32 8, metadata !4, null}
!37 = metadata !{i32 8, i32 4, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!38 = metadata !{i32 9, i32 4, metadata !4, null}
!39 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 15]
!40 = metadata !{i32 15, i32 26, metadata !9, null}
!41 = metadata !{i32 16, i32 4, metadata !9, null}
!42 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 16]
!43 = metadata !{i32 16, i32 8, metadata !9, null}
!44 = metadata !{i32 17, i32 4, metadata !9, null}
!45 = metadata !{i32 18, i32 4, metadata !9, null}
!46 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 24]
!47 = metadata !{i32 24, i32 26, metadata !10, null}
!48 = metadata !{i32 25, i32 4, metadata !10, null}
!49 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 25]
!50 = metadata !{i32 25, i32 8, metadata !10, null}
!51 = metadata !{i32 26, i32 4, metadata !10, null}
!52 = metadata !{i32 27, i32 4, metadata !10, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"numbers", metadata !5, i32 16777246, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numbers] [line 30]
!54 = metadata !{i32 30, i32 25, metadata !11, null}
!55 = metadata !{i32 786689, metadata !11, metadata !"array_size", metadata !5, i32 33554462, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array_size] [line 30]
!56 = metadata !{i32 30, i32 38, metadata !11, null}
!57 = metadata !{i32 0}
!58 = metadata !{i32 786688, metadata !11, metadata !"sum", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 32]
!59 = metadata !{i32 32, i32 12, metadata !11, null}
!60 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 32]
!61 = metadata !{i32 32, i32 9, metadata !11, null}
!62 = metadata !{i32 786688, metadata !11, metadata !"p", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 33]
!63 = metadata !{i32 33, i32 9, metadata !11, null}
!64 = metadata !{i32 35, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !11, i32 35, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 35, i32 10, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !68, i32 35, i32 10, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 786443, metadata !1, metadata !65, i32 35, i32 10, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 36, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !65, i32 35, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 37, i32 9, metadata !70, null}
!72 = metadata !{i32 38, i32 9, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !70, i32 38, i32 9, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 40, i32 12, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !70, i32 38, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 38, i32 9, metadata !70, null}
!77 = metadata !{i32 39, i32 12, metadata !75, null}
!78 = metadata !{i32 41, i32 9, metadata !75, null}
!79 = metadata !{i32 35, i32 33, metadata !65, null}
!80 = metadata !{i32 43, i32 5, metadata !11, null}
!81 = metadata !{i32 786688, metadata !14, metadata !"numbers", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numbers] [line 47]
!82 = metadata !{i32 47, i32 7, metadata !14, null}
!83 = metadata !{i32 48, i32 20, metadata !14, null}
!84 = metadata !{i32 786688, metadata !14, metadata !"array_size", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_size] [line 48]
!85 = metadata !{i32 48, i32 7, metadata !14, null}
!86 = metadata !{i32 786689, metadata !11, metadata !"numbers", metadata !5, i32 16777246, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [numbers] [line 30]
!87 = metadata !{i32 49, i32 10, metadata !14, null}
!88 = metadata !{i32 30, i32 25, metadata !11, metadata !87}
!89 = metadata !{i32 786689, metadata !11, metadata !"array_size", metadata !5, i32 33554462, metadata !8, i32 0, metadata !87} ; [ DW_TAG_arg_variable ] [array_size] [line 30]
!90 = metadata !{i32 30, i32 38, metadata !11, metadata !87}
!91 = metadata !{i32 786688, metadata !11, metadata !"sum", metadata !5, i32 32, metadata !8, i32 0, metadata !87} ; [ DW_TAG_auto_variable ] [sum] [line 32]
!92 = metadata !{i32 32, i32 12, metadata !11, metadata !87}
!93 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 32, metadata !8, i32 0, metadata !87} ; [ DW_TAG_auto_variable ] [i] [line 32]
!94 = metadata !{i32 32, i32 9, metadata !11, metadata !87}
!95 = metadata !{i32 35, i32 10, metadata !65, metadata !87}
!96 = metadata !{i32 35, i32 10, metadata !67, metadata !87}
!97 = metadata !{i32 36, i32 9, metadata !70, metadata !87}
!98 = metadata !{i32 37, i32 9, metadata !70, metadata !87}
!99 = metadata !{i32 38, i32 9, metadata !73, metadata !87}
!100 = metadata !{i32 40, i32 12, metadata !75, metadata !87}
!101 = metadata !{i32 38, i32 9, metadata !70, metadata !87}
!102 = metadata !{i32 39, i32 12, metadata !75, metadata !87}
!103 = metadata !{i32 41, i32 9, metadata !75, metadata !87}
!104 = metadata !{i32 35, i32 33, metadata !65, metadata !87}

