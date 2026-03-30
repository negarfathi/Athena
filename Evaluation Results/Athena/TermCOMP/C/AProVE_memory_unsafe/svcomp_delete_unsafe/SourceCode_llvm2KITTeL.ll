; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@"'memory3_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16
@memory2 = common global [100000 x i8] zeroinitializer, align 16
@memory3 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !35
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !37), !dbg !38
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !39
  %"2" = add nsw i32 %"1", %size, !dbg !39
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !39
  ret i32 %"0", !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !41), !dbg !42
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !44), !dbg !45
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !46
  %"5" = add nsw i32 %"4", %size, !dbg !46
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !46
  ret i32 %"3", !dbg !47
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !48), !dbg !49
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !51), !dbg !52
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !53
  %"8" = add nsw i32 %"7", %size, !dbg !53
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !53
  ret i32 %"6", !dbg !54
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory3(i32 %size) #0 {
allocate_memory3_bb3:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !55), !dbg !56
  %"9" = load i32* @"'memory3_freeIndex", align 4, !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !58), !dbg !59
  %"10" = load i32* @"'memory3_freeIndex", align 4, !dbg !60
  %"11" = add nsw i32 %"10", %size, !dbg !60
  store i32 %"11", i32* @"'memory3_freeIndex", align 4, !dbg !60
  ret i32 %"9", !dbg !61
}

; Function Attrs: nounwind uwtable
define void @_delete(i32 %x, i32 %y) #0 {
_delete_bb4:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !64), !dbg !65
  %"12" = sext i32 %y to i64, !dbg !66
  %"13" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"12", !dbg !66
  store i8 0, i8* %"13", align 1, !dbg !66
  %"14" = icmp slt i32 0, %x, !dbg !67
  %"15" = icmp slt i32 %x, %y, !dbg !69
  %or.cond = and i1 %"14", %"15", !dbg !67
  br i1 %or.cond, label %_delete_bb5, label %_delete_bb7, !dbg !67

_delete_bb5:                                      ; preds = %_delete_bb4, %_delete_bb6
  %.0 = phi i32 [ %"23", %_delete_bb6 ], [ %x, %_delete_bb4 ]
  %"16" = sext i32 %.0 to i64, !dbg !71
  %"17" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"16", !dbg !71
  %"18" = load i8* %"17", align 1, !dbg !71
  %"19" = sext i8 %"18" to i32, !dbg !71
  %"20" = icmp ne i32 %"19", 0, !dbg !71
  br i1 %"20", label %_delete_bb6, label %_delete_bb7, !dbg !71

_delete_bb6:                                      ; preds = %_delete_bb5
  %"21" = sext i32 %.0 to i64, !dbg !74
  %"22" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"21", !dbg !74
  store i8 0, i8* %"22", align 1, !dbg !74
  %"23" = add nsw i32 %.0, 1, !dbg !76
  br label %_delete_bb5, !dbg !77

_delete_bb7:                                      ; preds = %_delete_bb5, %_delete_bb4
  ret void, !dbg !78
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"24" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !79), !dbg !80
  %"25" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !81), !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !83), !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !86), !dbg !87
  %"26" = sext i32 %"25" to i64, !dbg !88
  %"27" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"26", !dbg !88
  store i8 0, i8* %"27", align 1, !dbg !88
  %"28" = icmp slt i32 0, %"24", !dbg !89
  %"29" = icmp slt i32 %"24", %"25", !dbg !90
  %or.cond.i = and i1 %"28", %"29", !dbg !89
  br i1 %or.cond.i, label %main_bb9, label %main__delete.exit, !dbg !89

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %.0.i = phi i32 [ %"37", %main_bb10 ], [ %"24", %main_bb8 ], !dbg !84
  %"30" = sext i32 %.0.i to i64, !dbg !91
  %"31" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"30", !dbg !91
  %"32" = load i8* %"31", align 1, !dbg !91
  %"33" = sext i8 %"32" to i32, !dbg !91
  %"34" = icmp ne i32 %"33", 0, !dbg !91
  br i1 %"34", label %main_bb10, label %main__delete.exit, !dbg !91

main_bb10:                                        ; preds = %main_bb9
  %"35" = sext i32 %.0.i to i64, !dbg !92
  %"36" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"35", !dbg !92
  store i8 0, i8* %"36", align 1, !dbg !92
  %"37" = add nsw i32 %.0.i, 1, !dbg !93
  br label %main_bb9, !dbg !94

main__delete.exit:                                ; preds = %main_bb8, %main_bb9
  ret i32 0, !dbg !95
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32}
!llvm.ident = !{!33}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !18, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 4, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 4] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory3", metadata !"allocate_memory3", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory3, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [allocate_memory3]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_delete", metadata !"_delete", metadata !"", i32 37, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @_delete, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [_delete]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{null, metadata !8, metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 47, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 47] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8}
!18 = metadata !{metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !28, metadata !29, metadata !30}
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 3, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 3] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 12] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 21] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"memory3_freeIndex", metadata !"memory3_freeIndex", metadata !"", metadata !5, i32 30, metadata !8, i32 0, i32 1, i32* @"'memory3_freeIndex", null} ; [ DW_TAG_variable ] [memory3_freeIndex] [line 30] [def]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 2, metadata !24, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 2] [def]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !25, metadata !26, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!25 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 11, metadata !24, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 11] [def]
!29 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 20, metadata !24, i32 0, i32 1, [100000 x i8]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 20] [def]
!30 = metadata !{i32 786484, i32 0, null, metadata !"memory3", metadata !"memory3", metadata !"", metadata !5, i32 29, metadata !24, i32 0, i32 1, [100000 x i8]* @memory3, null} ; [ DW_TAG_variable ] [memory3] [line 29] [def]
!31 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!32 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!33 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!34 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777220, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 4]
!35 = metadata !{i32 4, i32 26, metadata !4, null}
!36 = metadata !{i32 5, i32 4, metadata !4, null}
!37 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 5]
!38 = metadata !{i32 5, i32 8, metadata !4, null}
!39 = metadata !{i32 6, i32 4, metadata !4, null}
!40 = metadata !{i32 7, i32 4, metadata !4, null}
!41 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!42 = metadata !{i32 13, i32 26, metadata !9, null}
!43 = metadata !{i32 14, i32 4, metadata !9, null}
!44 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!45 = metadata !{i32 14, i32 8, metadata !9, null}
!46 = metadata !{i32 15, i32 4, metadata !9, null}
!47 = metadata !{i32 16, i32 4, metadata !9, null}
!48 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 22]
!49 = metadata !{i32 22, i32 26, metadata !10, null}
!50 = metadata !{i32 23, i32 4, metadata !10, null}
!51 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!52 = metadata !{i32 23, i32 8, metadata !10, null}
!53 = metadata !{i32 24, i32 4, metadata !10, null}
!54 = metadata !{i32 25, i32 4, metadata !10, null}
!55 = metadata !{i32 786689, metadata !11, metadata !"size", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 31]
!56 = metadata !{i32 31, i32 26, metadata !11, null}
!57 = metadata !{i32 32, i32 4, metadata !11, null}
!58 = metadata !{i32 786688, metadata !11, metadata !"allocatedIndex", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!59 = metadata !{i32 32, i32 8, metadata !11, null}
!60 = metadata !{i32 33, i32 4, metadata !11, null}
!61 = metadata !{i32 34, i32 4, metadata !11, null}
!62 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 37]
!63 = metadata !{i32 37, i32 18, metadata !12, null}
!64 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554469, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 37]
!65 = metadata !{i32 37, i32 25, metadata !12, null}
!66 = metadata !{i32 38, i32 3, metadata !12, null}
!67 = metadata !{i32 39, i32 7, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !12, i32 39, i32 7, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 39, i32 7, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 39, i32 7, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 40, i32 5, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 40, i32 5, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !68, i32 39, i32 23, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 41, i32 7, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !73, i32 40, i32 29, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 42, i32 7, metadata !75, null}
!77 = metadata !{i32 43, i32 2, metadata !75, null}
!78 = metadata !{i32 45, i32 1, metadata !12, null}
!79 = metadata !{i32 786688, metadata !15, metadata !"x", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 48]
!80 = metadata !{i32 48, i32 7, metadata !15, null}
!81 = metadata !{i32 786688, metadata !15, metadata !"y", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 49]
!82 = metadata !{i32 49, i32 7, metadata !15, null}
!83 = metadata !{i32 786689, metadata !12, metadata !"x", metadata !5, i32 16777253, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [x] [line 37]
!84 = metadata !{i32 50, i32 3, metadata !15, null}
!85 = metadata !{i32 37, i32 18, metadata !12, metadata !84}
!86 = metadata !{i32 786689, metadata !12, metadata !"y", metadata !5, i32 33554469, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [y] [line 37]
!87 = metadata !{i32 37, i32 25, metadata !12, metadata !84}
!88 = metadata !{i32 38, i32 3, metadata !12, metadata !84}
!89 = metadata !{i32 39, i32 7, metadata !68, metadata !84}
!90 = metadata !{i32 39, i32 7, metadata !70, metadata !84}
!91 = metadata !{i32 40, i32 5, metadata !72, metadata !84}
!92 = metadata !{i32 41, i32 7, metadata !75, metadata !84}
!93 = metadata !{i32 42, i32 7, metadata !75, metadata !84}
!94 = metadata !{i32 43, i32 2, metadata !75, metadata !84}
!95 = metadata !{i32 51, i32 3, metadata !15, null}

