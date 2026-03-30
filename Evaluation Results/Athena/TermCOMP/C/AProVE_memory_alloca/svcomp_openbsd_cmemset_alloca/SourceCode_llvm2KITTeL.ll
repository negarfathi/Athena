; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
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
define i32 @cmemset(i32 %dst, i32 %c, i64 %n) #0 {
cmemset_bb1:
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %c}, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !39), !dbg !40
  %"3" = icmp ne i64 %n, 0, !dbg !41
  br i1 %"3", label %cmemset_bb2, label %cmemset_bb4, !dbg !41

cmemset_bb2:                                      ; preds = %cmemset_bb1
  call void @llvm.dbg.value(metadata !{i32 %dst}, i64 0, metadata !43), !dbg !45
  %"4" = trunc i32 %c to i8, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !43), !dbg !45
  call void @llvm.dbg.value(metadata !{i64 %"8"}, i64 0, metadata !39), !dbg !40
  br label %cmemset_bb3, !dbg !48

cmemset_bb3:                                      ; preds = %cmemset_bb3, %cmemset_bb2
  %d.0 = phi i32 [ %dst, %cmemset_bb2 ], [ %"5", %cmemset_bb3 ]
  %.0 = phi i64 [ %n, %cmemset_bb2 ], [ %"8", %cmemset_bb3 ]
  %"5" = add nsw i32 %d.0, 1, !dbg !46
  %"6" = sext i32 %d.0 to i64, !dbg !46
  %"7" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"6", !dbg !46
  store i8 %"4", i8* %"7", align 1, !dbg !46
  %"8" = add i64 %.0, -1, !dbg !49
  %"9" = icmp ne i64 %"8", 0, !dbg !49
  br i1 %"9", label %cmemset_bb3, label %cmemset_bb4, !dbg !49

cmemset_bb4:                                      ; preds = %cmemset_bb3, %cmemset_bb1
  ret i32 %dst, !dbg !51
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !53), !dbg !54
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !55
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !56), !dbg !57
  %"12" = call i32 @__VERIFIER_nondet_int(), !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !59), !dbg !60
  %"13" = icmp slt i32 %"11", 1, !dbg !61
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !56), !dbg !57
  %n.0 = select i1 %"13", i32 1, i32 %"11", !dbg !61
  %"14" = mul nsw i32 %n.0, 1, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !65), !dbg !66
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !68), !dbg !69
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !70
  %"17" = add nsw i32 %"16", %"14", !dbg !70
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !71), !dbg !72
  %"18" = sext i32 %n.0 to i64, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !{i64 %"18"}, i64 0, metadata !78), !dbg !79
  %"19" = icmp ne i64 %"18", 0, !dbg !80
  br i1 %"19", label %main_bb6, label %main_cmemset.exit, !dbg !80

main_bb6:                                         ; preds = %main_bb5
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !81), !dbg !82
  %"20" = trunc i32 %"12" to i8, !dbg !83
  br label %main_bb7, !dbg !84

main_bb7:                                         ; preds = %main_bb7, %main_bb6
  %d.0.i = phi i32 [ %"15", %main_bb6 ], [ %"21", %main_bb7 ], !dbg !73
  %.0.i = phi i64 [ %"18", %main_bb6 ], [ %"24", %main_bb7 ], !dbg !73
  %"21" = add nsw i32 %d.0.i, 1, !dbg !83
  %"22" = sext i32 %d.0.i to i64, !dbg !83
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !83
  store i8 %"20", i8* %"23", align 1, !dbg !83
  %"24" = add i64 %.0.i, -1, !dbg !85
  %"25" = icmp ne i64 %"24", 0, !dbg !85
  br i1 %"25", label %main_bb7, label %main_cmemset.exit, !dbg !85

main_cmemset.exit:                                ; preds = %main_bb5, %main_bb7
  ret i32 0, !dbg !86
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !18, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cmemset", metadata !"cmemset", metadata !"", i32 15, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i64)* @cmemset, null, null, metadata !2, i32 16} ; [ DW_TAG_subprogram ] [line 15] [def] [scope 16] [cmemset]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8, metadata !12}
!12 = metadata !{i32 786454, metadata !13, null, metadata !"size_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [size_t] [line 58, size 0, align 0, offset 0] [from long unsigned int]
!13 = metadata !{metadata !"/usr/local/bin/../lib/clang/3.5.2/include/stddef.h", metadata !"/"}
!14 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 27, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8}
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !21, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !22, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!22 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
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
!35 = metadata !{i32 786689, metadata !9, metadata !"dst", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [dst] [line 15]
!36 = metadata !{i32 15, i32 13, metadata !9, null}
!37 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554447, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 15]
!38 = metadata !{i32 15, i32 22, metadata !9, null}
!39 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 50331663, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 15]
!40 = metadata !{i32 15, i32 32, metadata !9, null}
!41 = metadata !{i32 17, i32 6, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 17, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 786688, metadata !44, metadata !"d", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 18]
!44 = metadata !{i32 786443, metadata !1, metadata !42, i32 17, i32 14, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 18, i32 7, metadata !44, null}
!46 = metadata !{i32 21, i32 4, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !44, i32 21, i32 4, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 20, i32 3, metadata !44, null}
!49 = metadata !{i32 21, i32 4, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !44, i32 21, i32 4, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 24, i32 2, metadata !9, null}
!52 = metadata !{i32 28, i32 16, metadata !15, null}
!53 = metadata !{i32 786688, metadata !15, metadata !"length", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 28]
!54 = metadata !{i32 28, i32 7, metadata !15, null}
!55 = metadata !{i32 29, i32 11, metadata !15, null}
!56 = metadata !{i32 786688, metadata !15, metadata !"n", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 29]
!57 = metadata !{i32 29, i32 7, metadata !15, null}
!58 = metadata !{i32 30, i32 11, metadata !15, null}
!59 = metadata !{i32 786688, metadata !15, metadata !"c", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 30]
!60 = metadata !{i32 30, i32 7, metadata !15, null}
!61 = metadata !{i32 34, i32 7, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !15, i32 34, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 1}
!64 = metadata !{i32 37, i32 20, metadata !15, null}
!65 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !64} ; [ DW_TAG_arg_variable ] [size] [line 8]
!66 = metadata !{i32 8, i32 26, metadata !4, metadata !64} ; [ DW_TAG_imported_declaration ]
!67 = metadata !{i32 9, i32 4, metadata !4, metadata !64}
!68 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !64} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!69 = metadata !{i32 9, i32 8, metadata !4, metadata !64}
!70 = metadata !{i32 10, i32 4, metadata !4, metadata !64}
!71 = metadata !{i32 786688, metadata !15, metadata !"nondetArea", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 37]
!72 = metadata !{i32 37, i32 7, metadata !15, null}
!73 = metadata !{i32 38, i32 3, metadata !15, null}
!74 = metadata !{i32 786689, metadata !9, metadata !"dst", metadata !5, i32 16777231, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [dst] [line 15]
!75 = metadata !{i32 15, i32 13, metadata !9, metadata !73}
!76 = metadata !{i32 786689, metadata !9, metadata !"c", metadata !5, i32 33554447, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [c] [line 15]
!77 = metadata !{i32 15, i32 22, metadata !9, metadata !73}
!78 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 50331663, metadata !12, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [n] [line 15]
!79 = metadata !{i32 15, i32 32, metadata !9, metadata !73}
!80 = metadata !{i32 17, i32 6, metadata !42, metadata !73}
!81 = metadata !{i32 786688, metadata !44, metadata !"d", metadata !5, i32 18, metadata !8, i32 0, metadata !73} ; [ DW_TAG_auto_variable ] [d] [line 18]
!82 = metadata !{i32 18, i32 7, metadata !44, metadata !73}
!83 = metadata !{i32 21, i32 4, metadata !47, metadata !73}
!84 = metadata !{i32 20, i32 3, metadata !44, metadata !73}
!85 = metadata !{i32 21, i32 4, metadata !50, metadata !73}
!86 = metadata !{i32 39, i32 3, metadata !15, null}

