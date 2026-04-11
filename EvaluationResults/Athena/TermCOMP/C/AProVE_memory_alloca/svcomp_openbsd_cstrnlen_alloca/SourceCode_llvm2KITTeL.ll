; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !25), !dbg !26
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !27
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !28), !dbg !29
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  %"2" = add nsw i32 %"1", %size, !dbg !30
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !30
  ret i32 %"0", !dbg !31
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @cstrnlen(i32 %str, i32 %maxlen) #0 {
cstrnlen_bb1:
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %maxlen}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !34), !dbg !35
  br label %cstrnlen_bb2, !dbg !38

cstrnlen_bb2:                                     ; preds = %cstrnlen_bb4, %cstrnlen_bb1
  %cp.0 = phi i32 [ %str, %cstrnlen_bb1 ], [ %"9", %cstrnlen_bb4 ]
  %.0 = phi i32 [ %maxlen, %cstrnlen_bb1 ], [ %"10", %cstrnlen_bb4 ]
  %"3" = icmp ne i32 %.0, 0, !dbg !40
  br i1 %"3", label %cstrnlen_bb3, label %cstrnlen_.critedge, !dbg !40

cstrnlen_bb3:                                     ; preds = %cstrnlen_bb2
  %"4" = sext i32 %cp.0 to i64, !dbg !43
  %"5" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"4", !dbg !43
  %"6" = load i8* %"5", align 1, !dbg !43
  %"7" = sext i8 %"6" to i32, !dbg !43
  %"8" = icmp ne i32 %"7", 0, !dbg !43
  br i1 %"8", label %cstrnlen_bb4, label %cstrnlen_.critedge, !dbg !45

cstrnlen_bb4:                                     ; preds = %cstrnlen_bb3
  %"9" = add nsw i32 %cp.0, 1, !dbg !47
  %"10" = add nsw i32 %.0, -1, !dbg !47
  br label %cstrnlen_bb2, !dbg !47

cstrnlen_.critedge:                               ; preds = %cstrnlen_bb2, %cstrnlen_bb3
  %"11" = sub nsw i32 %cp.0, %str, !dbg !49
  ret i32 %"11", !dbg !49
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !51), !dbg !52
  %"13" = call i32 @__VERIFIER_nondet_int(), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !54), !dbg !55
  %"14" = icmp slt i32 %"12", 1, !dbg !56
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !51), !dbg !52
  %. = select i1 %"14", i32 1, i32 %"12", !dbg !56
  %"15" = icmp slt i32 %"13", 1, !dbg !59
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !54), !dbg !55
  %n.0 = select i1 %"15", i32 1, i32 %"13", !dbg !59
  %"16" = mul nsw i32 %., 1, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !62), !dbg !63
  %"17" = load i32* @"'memory0_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !65), !dbg !66
  %"18" = load i32* @"'memory0_freeIndex", align 4, !dbg !67
  %"19" = add nsw i32 %"18", %"16", !dbg !67
  store i32 %"19", i32* @"'memory0_freeIndex", align 4, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !68), !dbg !69
  %"20" = sub nsw i32 %., 1, !dbg !70
  %"21" = add nsw i32 %"17", %"20", !dbg !70
  %"22" = sext i32 %"21" to i64, !dbg !70
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !70
  store i8 0, i8* %"23", align 1, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !71), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %n.0}, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !76), !dbg !77
  br label %main_bb6, !dbg !78

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %cp.0.i = phi i32 [ %"17", %main_bb5 ], [ %"30", %main_bb8 ], !dbg !72
  %.0.i = phi i32 [ %n.0, %main_bb5 ], [ %"31", %main_bb8 ], !dbg !72
  %"24" = icmp ne i32 %.0.i, 0, !dbg !79
  br i1 %"24", label %main_bb7, label %main_cstrnlen.exit, !dbg !79

main_bb7:                                         ; preds = %main_bb6
  %"25" = sext i32 %cp.0.i to i64, !dbg !80
  %"26" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"25", !dbg !80
  %"27" = load i8* %"26", align 1, !dbg !80
  %"28" = sext i8 %"27" to i32, !dbg !80
  %"29" = icmp ne i32 %"28", 0, !dbg !80
  br i1 %"29", label %main_bb8, label %main_cstrnlen.exit, !dbg !81

main_bb8:                                         ; preds = %main_bb7
  %"30" = add nsw i32 %cp.0.i, 1, !dbg !82
  %"31" = add nsw i32 %.0.i, -1, !dbg !82
  br label %main_bb6, !dbg !82

main_cstrnlen.exit:                               ; preds = %main_bb6, %main_bb7
  %"32" = sub nsw i32 %cp.0.i, %"17", !dbg !83
  ret i32 %"32", !dbg !72
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrnlen", metadata !"cstrnlen", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @cstrnlen, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 20] [cstrnlen]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 30, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !18, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !19, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!19 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!26 = metadata !{i32 12, i32 26, metadata !4, null}
!27 = metadata !{i32 13, i32 4, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!29 = metadata !{i32 13, i32 8, metadata !4, null}
!30 = metadata !{i32 14, i32 4, metadata !4, null}
!31 = metadata !{i32 15, i32 4, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 19]
!33 = metadata !{i32 19, i32 14, metadata !9, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"maxlen", metadata !5, i32 33554451, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [maxlen] [line 19]
!35 = metadata !{i32 19, i32 23, metadata !9, null}
!36 = metadata !{i32 786688, metadata !9, metadata !"cp", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cp] [line 21]
!37 = metadata !{i32 21, i32 6, metadata !9, null}
!38 = metadata !{i32 23, i32 7, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 23, i32 7, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !42, i32 23, i32 7, i32 6, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 786443, metadata !1, metadata !39, i32 23, i32 7, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 23, i32 7, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !39, i32 23, i32 7, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 23, i32 7, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !39, i32 23, i32 7, i32 3, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 23, i32 53, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !39, i32 23, i32 53, i32 5, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 26, i32 2, metadata !9, null}
!50 = metadata !{i32 31, i32 19, metadata !12, null}
!51 = metadata !{i32 786688, metadata !12, metadata !"length1", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 31]
!52 = metadata !{i32 31, i32 9, metadata !12, null}
!53 = metadata !{i32 32, i32 13, metadata !12, null}
!54 = metadata !{i32 786688, metadata !12, metadata !"n", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 32]
!55 = metadata !{i32 32, i32 9, metadata !12, null}
!56 = metadata !{i32 33, i32 9, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !12, i32 33, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 1}
!59 = metadata !{i32 36, i32 9, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !12, i32 36, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 39, i32 25, metadata !12, null}
!62 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !61} ; [ DW_TAG_arg_variable ] [size] [line 12]
!63 = metadata !{i32 12, i32 26, metadata !4, metadata !61}
!64 = metadata !{i32 13, i32 4, metadata !4, metadata !61}
!65 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!66 = metadata !{i32 13, i32 8, metadata !4, metadata !61}
!67 = metadata !{i32 14, i32 4, metadata !4, metadata !61}
!68 = metadata !{i32 786688, metadata !12, metadata !"nondetString1", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 39]
!69 = metadata !{i32 39, i32 9, metadata !12, null}
!70 = metadata !{i32 40, i32 5, metadata !12, null}
!71 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777235, metadata !8, i32 0, metadata !72} ; [ DW_TAG_arg_variable ] [str] [line 19]
!72 = metadata !{i32 41, i32 12, metadata !12, null}
!73 = metadata !{i32 19, i32 14, metadata !9, metadata !72}
!74 = metadata !{i32 786689, metadata !9, metadata !"maxlen", metadata !5, i32 33554451, metadata !8, i32 0, metadata !72} ; [ DW_TAG_arg_variable ] [maxlen] [line 19]
!75 = metadata !{i32 19, i32 23, metadata !9, metadata !72}
!76 = metadata !{i32 786688, metadata !9, metadata !"cp", metadata !5, i32 21, metadata !8, i32 0, metadata !72} ; [ DW_TAG_auto_variable ] [cp] [line 21]
!77 = metadata !{i32 21, i32 6, metadata !9, metadata !72}
!78 = metadata !{i32 23, i32 7, metadata !39, metadata !72}
!79 = metadata !{i32 23, i32 7, metadata !41, metadata !72}
!80 = metadata !{i32 23, i32 7, metadata !44, metadata !72}
!81 = metadata !{i32 23, i32 7, metadata !46, metadata !72}
!82 = metadata !{i32 23, i32 53, metadata !48, metadata !72}
!83 = metadata !{i32 26, i32 2, metadata !9, metadata !72}

