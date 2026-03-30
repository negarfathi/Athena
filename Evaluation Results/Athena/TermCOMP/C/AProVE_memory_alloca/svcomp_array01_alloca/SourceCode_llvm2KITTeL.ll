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
define i32 @test_fun(i32 %a, i32 %N) #0 {
test_fun_bb1:
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !33), !dbg !34
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !36), !dbg !37
  br label %test_fun_bb2, !dbg !40

test_fun_bb2:                                     ; preds = %test_fun_bb5, %test_fun_bb1
  %res.0 = phi i32 [ 0, %test_fun_bb1 ], [ %res.1, %test_fun_bb5 ]
  %i.0 = phi i32 [ 0, %test_fun_bb1 ], [ %"15", %test_fun_bb5 ]
  %"3" = icmp slt i32 %i.0, %N, !dbg !42
  br i1 %"3", label %test_fun_bb3, label %test_fun_bb6, !dbg !42

test_fun_bb3:                                     ; preds = %test_fun_bb2, %test_fun_bb4
  %res.1 = phi i32 [ %"14", %test_fun_bb4 ], [ %res.0, %test_fun_bb2 ]
  %"4" = add nsw i32 %a, %i.0, !dbg !45
  %"5" = sext i32 %"4" to i64, !dbg !45
  %"6" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"5", !dbg !45
  %"7" = load i32* %"6", align 4, !dbg !45
  %"8" = icmp sgt i32 %"7", 0, !dbg !45
  br i1 %"8", label %test_fun_bb4, label %test_fun_bb5, !dbg !45

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"9" = add nsw i32 %a, %i.0, !dbg !48
  %"10" = sext i32 %"9" to i64, !dbg !48
  %"11" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"10", !dbg !48
  %"12" = load i32* %"11", align 4, !dbg !48
  %"13" = add nsw i32 %"12", -1, !dbg !48
  store i32 %"13", i32* %"11", align 4, !dbg !48
  %"14" = add nsw i32 %res.1, 1, !dbg !50
  br label %test_fun_bb3, !dbg !51

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"15" = add nsw i32 %i.0, 1, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !38), !dbg !39
  br label %test_fun_bb2, !dbg !52

test_fun_bb6:                                     ; preds = %test_fun_bb2
  ret i32 %res.0, !dbg !53
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"16" = call i32 @__VERIFIER_nondet_int(), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !55), !dbg !56
  %"17" = icmp slt i32 %"16", 1, !dbg !57
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !55), !dbg !56
  %. = select i1 %"17", i32 1, i32 %"16", !dbg !57
  %"18" = mul nsw i32 %., 1, !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !61), !dbg !62
  %"19" = load i32* @"'memory0_freeIndex", align 4, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !64), !dbg !65
  %"20" = load i32* @"'memory0_freeIndex", align 4, !dbg !66
  %"21" = add nsw i32 %"20", %"18", !dbg !66
  store i32 %"21", i32* @"'memory0_freeIndex", align 4, !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !67), !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"19"}, i64 0, metadata !69), !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !35, i64 0, metadata !76), !dbg !77
  br label %main_bb8, !dbg !78

main_bb8:                                         ; preds = %main_bb11, %main_bb7
  %res.0.i = phi i32 [ 0, %main_bb7 ], [ %res.1.i, %main_bb11 ], !dbg !70
  %i.0.i = phi i32 [ 0, %main_bb7 ], [ %"34", %main_bb11 ], !dbg !70
  %"22" = icmp slt i32 %i.0.i, %., !dbg !79
  br i1 %"22", label %main_bb9, label %main_test_fun.exit, !dbg !79

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %res.1.i = phi i32 [ %"33", %main_bb10 ], [ %res.0.i, %main_bb8 ], !dbg !70
  %"23" = add nsw i32 %"19", %i.0.i, !dbg !80
  %"24" = sext i32 %"23" to i64, !dbg !80
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !80
  %"26" = load i32* %"25", align 4, !dbg !80
  %"27" = icmp sgt i32 %"26", 0, !dbg !80
  br i1 %"27", label %main_bb10, label %main_bb11, !dbg !80

main_bb10:                                        ; preds = %main_bb9
  %"28" = add nsw i32 %"19", %i.0.i, !dbg !81
  %"29" = sext i32 %"28" to i64, !dbg !81
  %"30" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"29", !dbg !81
  %"31" = load i32* %"30", align 4, !dbg !81
  %"32" = add nsw i32 %"31", -1, !dbg !81
  store i32 %"32", i32* %"30", align 4, !dbg !81
  %"33" = add nsw i32 %res.1.i, 1, !dbg !82
  br label %main_bb9, !dbg !83

main_bb11:                                        ; preds = %main_bb9
  %"34" = add nsw i32 %i.0.i, 1, !dbg !84
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !76), !dbg !77
  br label %main_bb8, !dbg !84

main_test_fun.exit:                               ; preds = %main_bb8
  ret i32 0, !dbg !85
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"test_fun", metadata !"test_fun", metadata !"", i32 14, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @test_fun, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [test_fun]
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
!31 = metadata !{i32 786689, metadata !9, metadata !"a", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 14]
!32 = metadata !{i32 14, i32 18, metadata !9, null}
!33 = metadata !{i32 786689, metadata !9, metadata !"N", metadata !5, i32 33554446, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 14]
!34 = metadata !{i32 14, i32 25, metadata !9, null}
!35 = metadata !{i32 0}
!36 = metadata !{i32 786688, metadata !9, metadata !"res", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 17]
!37 = metadata !{i32 17, i32 9, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 16]
!39 = metadata !{i32 16, i32 9, metadata !9, null}
!40 = metadata !{i32 18, i32 10, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 18, i32 10, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 18, i32 10, i32 2, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 786443, metadata !1, metadata !41, i32 18, i32 10, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 19, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !47, i32 19, i32 9, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786443, metadata !1, metadata !41, i32 18, i32 29, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 20, i32 13, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !47, i32 19, i32 38, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 21, i32 13, metadata !49, null}
!51 = metadata !{i32 22, i32 9, metadata !49, null}
!52 = metadata !{i32 18, i32 24, metadata !41, null}
!53 = metadata !{i32 24, i32 5, metadata !9, null}
!54 = metadata !{i32 28, i32 20, metadata !12, null}
!55 = metadata !{i32 786688, metadata !12, metadata !"array_size", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_size] [line 28]
!56 = metadata !{i32 28, i32 7, metadata !12, null}
!57 = metadata !{i32 29, i32 7, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !12, i32 29, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 1}
!60 = metadata !{i32 32, i32 17, metadata !12, null}
!61 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !60} ; [ DW_TAG_arg_variable ] [size] [line 8]
!62 = metadata !{i32 8, i32 26, metadata !4, metadata !60} ; [ DW_TAG_imported_declaration ]
!63 = metadata !{i32 9, i32 4, metadata !4, metadata !60}
!64 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !60} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!65 = metadata !{i32 9, i32 8, metadata !4, metadata !60}
!66 = metadata !{i32 10, i32 4, metadata !4, metadata !60}
!67 = metadata !{i32 786688, metadata !12, metadata !"numbers", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numbers] [line 32]
!68 = metadata !{i32 32, i32 7, metadata !12, null}
!69 = metadata !{i32 786689, metadata !9, metadata !"a", metadata !5, i32 16777230, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [a] [line 14]
!70 = metadata !{i32 33, i32 3, metadata !12, null}
!71 = metadata !{i32 14, i32 18, metadata !9, metadata !70}
!72 = metadata !{i32 786689, metadata !9, metadata !"N", metadata !5, i32 33554446, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [N] [line 14]
!73 = metadata !{i32 14, i32 25, metadata !9, metadata !70}
!74 = metadata !{i32 786688, metadata !9, metadata !"res", metadata !5, i32 17, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [res] [line 17]
!75 = metadata !{i32 17, i32 9, metadata !9, metadata !70}
!76 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 16, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [i] [line 16]
!77 = metadata !{i32 16, i32 9, metadata !9, metadata !70}
!78 = metadata !{i32 18, i32 10, metadata !41, metadata !70}
!79 = metadata !{i32 18, i32 10, metadata !43, metadata !70}
!80 = metadata !{i32 19, i32 9, metadata !46, metadata !70}
!81 = metadata !{i32 20, i32 13, metadata !49, metadata !70}
!82 = metadata !{i32 21, i32 13, metadata !49, metadata !70}
!83 = metadata !{i32 22, i32 9, metadata !49, metadata !70}
!84 = metadata !{i32 18, i32 24, metadata !41, metadata !70}
!85 = metadata !{i32 34, i32 1, metadata !12, null}

