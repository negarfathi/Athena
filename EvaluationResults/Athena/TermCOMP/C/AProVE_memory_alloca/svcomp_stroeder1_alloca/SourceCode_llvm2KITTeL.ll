; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !24), !dbg !25
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !26
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !27), !dbg !28
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !29
  %"2" = add nsw i32 %"1", %size, !dbg !29
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !29
  ret i32 %"0", !dbg !30
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @sumOfThirdBytes(i32 %numbers, i32 %array_size) #0 {
sumOfThirdBytes_bb1:
  call void @llvm.dbg.value(metadata !{i32 %numbers}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %array_size}, i64 0, metadata !33), !dbg !34
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !40), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !40), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !38), !dbg !39
  br label %sumOfThirdBytes_bb2, !dbg !42

sumOfThirdBytes_bb2:                              ; preds = %sumOfThirdBytes_bb3, %sumOfThirdBytes_bb1
  %sum.0 = phi i32 [ 0, %sumOfThirdBytes_bb1 ], [ %"9", %sumOfThirdBytes_bb3 ]
  %i.0 = phi i32 [ 0, %sumOfThirdBytes_bb1 ], [ %"10", %sumOfThirdBytes_bb3 ]
  %"3" = icmp slt i32 %i.0, %array_size, !dbg !44
  br i1 %"3", label %sumOfThirdBytes_bb3, label %sumOfThirdBytes_bb4, !dbg !44

sumOfThirdBytes_bb3:                              ; preds = %sumOfThirdBytes_bb2
  %"4" = add nsw i32 %numbers, %i.0, !dbg !47
  %"5" = add nsw i32 %"4", 2, !dbg !49
  %"6" = sext i32 %"5" to i64, !dbg !50
  %"7" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"6", !dbg !50
  %"8" = load i32* %"7", align 4, !dbg !50
  %"9" = add nsw i32 %sum.0, %"8", !dbg !50
  %"10" = add nsw i32 %i.0, 1, !dbg !51
  br label %sumOfThirdBytes_bb2, !dbg !51

sumOfThirdBytes_bb4:                              ; preds = %sumOfThirdBytes_bb2
  ret i32 %sum.0, !dbg !52
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"11" = call i32 @__VERIFIER_nondet_int(), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !54), !dbg !55
  %"12" = icmp slt i32 %"11", 1, !dbg !56
  call void @llvm.dbg.value(metadata !58, i64 0, metadata !54), !dbg !55
  %. = select i1 %"12", i32 1, i32 %"11", !dbg !56
  %"13" = mul nsw i32 %., 1, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !60), !dbg !61
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !63), !dbg !64
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !65
  %"16" = add nsw i32 %"15", %"13", !dbg !65
  store i32 %"16", i32* @"'memory0_freeIndex", align 4, !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !68), !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !71), !dbg !72
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !73), !dbg !74
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !75), !dbg !76
  br label %main_bb6, !dbg !77

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %sum.0.i = phi i32 [ 0, %main_bb5 ], [ %"23", %main_bb7 ], !dbg !69
  %i.0.i = phi i32 [ 0, %main_bb5 ], [ %"24", %main_bb7 ], !dbg !69
  %"17" = icmp slt i32 %i.0.i, %., !dbg !78
  br i1 %"17", label %main_bb7, label %main_sumOfThirdBytes.exit, !dbg !78

main_bb7:                                         ; preds = %main_bb6
  %"18" = add nsw i32 %"14", %i.0.i, !dbg !79
  %"19" = add nsw i32 %"18", 2, !dbg !80
  %"20" = sext i32 %"19" to i64, !dbg !81
  %"21" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"20", !dbg !81
  %"22" = load i32* %"21", align 4, !dbg !81
  %"23" = add nsw i32 %sum.0.i, %"22", !dbg !81
  %"24" = add nsw i32 %i.0.i, 1, !dbg !82
  br label %main_bb6, !dbg !82

main_sumOfThirdBytes.exit:                        ; preds = %main_bb6
  ret i32 %sum.0.i, !dbg !69
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"sumOfThirdBytes", metadata !"sumOfThirdBytes", metadata !"", i32 14, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @sumOfThirdBytes, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [sumOfThirdBytes]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 27, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !18, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!18 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!24 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!25 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!26 = metadata !{i32 9, i32 4, metadata !4, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!28 = metadata !{i32 9, i32 8, metadata !4, null}
!29 = metadata !{i32 10, i32 4, metadata !4, null}
!30 = metadata !{i32 11, i32 4, metadata !4, null}
!31 = metadata !{i32 786689, metadata !9, metadata !"numbers", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [numbers] [line 14]
!32 = metadata !{i32 14, i32 25, metadata !9, null}
!33 = metadata !{i32 786689, metadata !9, metadata !"array_size", metadata !5, i32 33554446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [array_size] [line 14]
!34 = metadata !{i32 14, i32 38, metadata !9, null}
!35 = metadata !{i32 0}
!36 = metadata !{i32 786688, metadata !9, metadata !"sum", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 16]
!37 = metadata !{i32 16, i32 12, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!39 = metadata !{i32 16, i32 9, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 17]
!41 = metadata !{i32 17, i32 9, metadata !9, null}
!42 = metadata !{i32 19, i32 10, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !9, i32 19, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 19, i32 10, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !46, i32 19, i32 10, i32 2, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 786443, metadata !1, metadata !43, i32 19, i32 10, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 20, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !43, i32 19, i32 38, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 21, i32 9, metadata !48, null}
!50 = metadata !{i32 22, i32 9, metadata !48, null}
!51 = metadata !{i32 19, i32 33, metadata !43, null}
!52 = metadata !{i32 24, i32 5, metadata !9, null}
!53 = metadata !{i32 28, i32 20, metadata !12, null}
!54 = metadata !{i32 786688, metadata !12, metadata !"array_size", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_size] [line 28]
!55 = metadata !{i32 28, i32 7, metadata !12, null}
!56 = metadata !{i32 29, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !12, i32 29, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 1}
!59 = metadata !{i32 32, i32 17, metadata !12, null}
!60 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [size] [line 8]
!61 = metadata !{i32 8, i32 26, metadata !4, metadata !59} ; [ DW_TAG_imported_declaration ]
!62 = metadata !{i32 9, i32 4, metadata !4, metadata !59}
!63 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!64 = metadata !{i32 9, i32 8, metadata !4, metadata !59}
!65 = metadata !{i32 10, i32 4, metadata !4, metadata !59}
!66 = metadata !{i32 786688, metadata !12, metadata !"numbers", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numbers] [line 32]
!67 = metadata !{i32 32, i32 7, metadata !12, null}
!68 = metadata !{i32 786689, metadata !9, metadata !"numbers", metadata !5, i32 16777230, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [numbers] [line 14]
!69 = metadata !{i32 33, i32 10, metadata !12, null}
!70 = metadata !{i32 14, i32 25, metadata !9, metadata !69}
!71 = metadata !{i32 786689, metadata !9, metadata !"array_size", metadata !5, i32 33554446, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [array_size] [line 14]
!72 = metadata !{i32 14, i32 38, metadata !9, metadata !69}
!73 = metadata !{i32 786688, metadata !9, metadata !"sum", metadata !5, i32 16, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [sum] [line 16]
!74 = metadata !{i32 16, i32 12, metadata !9, metadata !69}
!75 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [i] [line 16]
!76 = metadata !{i32 16, i32 9, metadata !9, metadata !69}
!77 = metadata !{i32 19, i32 10, metadata !43, metadata !69}
!78 = metadata !{i32 19, i32 10, metadata !45, metadata !69}
!79 = metadata !{i32 20, i32 9, metadata !48, metadata !69}
!80 = metadata !{i32 21, i32 9, metadata !48, metadata !69}
!81 = metadata !{i32 22, i32 9, metadata !48, metadata !69}
!82 = metadata !{i32 19, i32 33, metadata !43, metadata !69}

