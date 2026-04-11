; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !23), !dbg !24
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !25
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !26), !dbg !27
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  %"2" = add nsw i32 %"1", %size, !dbg !28
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !28
  ret i32 %"0", !dbg !29
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i32 %s) #0 {
cstrlen_bb1:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !32), !dbg !33
  br label %cstrlen_bb2, !dbg !34

cstrlen_bb2:                                      ; preds = %cstrlen_bb3, %cstrlen_bb1
  %p.0 = phi i32 [ %s, %cstrlen_bb1 ], [ %"8", %cstrlen_bb3 ]
  %"3" = sext i32 %p.0 to i64, !dbg !35
  %"4" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"3", !dbg !35
  %"5" = load i8* %"4", align 1, !dbg !35
  %"6" = sext i8 %"5" to i32, !dbg !35
  %"7" = icmp ne i32 %"6", 0, !dbg !35
  br i1 %"7", label %cstrlen_bb3, label %cstrlen_bb4, !dbg !35

cstrlen_bb3:                                      ; preds = %cstrlen_bb2
  %"8" = add nsw i32 %p.0, 1, !dbg !37
  br label %cstrlen_bb2, !dbg !37

cstrlen_bb4:                                      ; preds = %cstrlen_bb2
  %"9" = sub nsw i32 %p.0, %s, !dbg !38
  ret i32 %"9", !dbg !38
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !40), !dbg !41
  %"11" = icmp slt i32 %"10", 1, !dbg !42
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !40), !dbg !41
  %. = select i1 %"11", i32 1, i32 %"10", !dbg !42
  %"12" = mul nsw i32 %., 1, !dbg !45
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !46), !dbg !47
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !49), !dbg !50
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  %"15" = add nsw i32 %"14", %"12", !dbg !51
  store i32 %"15", i32* @"'memory0_freeIndex", align 4, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !52), !dbg !53
  %"16" = sub nsw i32 %., 1, !dbg !54
  %"17" = add nsw i32 %"13", %"16", !dbg !54
  %"18" = sext i32 %"17" to i64, !dbg !54
  %"19" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"18", !dbg !54
  store i8 0, i8* %"19", align 1, !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !55), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !58), !dbg !59
  br label %main_bb6, !dbg !60

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %p.0.i = phi i32 [ %"13", %main_bb5 ], [ %"25", %main_bb7 ], !dbg !56
  %"20" = sext i32 %p.0.i to i64, !dbg !61
  %"21" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"20", !dbg !61
  %"22" = load i8* %"21", align 1, !dbg !61
  %"23" = sext i8 %"22" to i32, !dbg !61
  %"24" = icmp ne i32 %"23", 0, !dbg !61
  br i1 %"24", label %main_bb7, label %main_cstrlen.exit, !dbg !61

main_bb7:                                         ; preds = %main_bb6
  %"25" = add nsw i32 %p.0.i, 1, !dbg !62
  br label %main_bb6, !dbg !62

main_cstrlen.exit:                                ; preds = %main_bb6
  %"26" = sub nsw i32 %p.0.i, %"13", !dbg !63
  ret i32 %"26", !dbg !56
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrlen", metadata !"cstrlen", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @cstrlen, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [cstrlen]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 27, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 11] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 10, metadata !16, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 10] [def]
!16 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !17, metadata !18, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!17 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!20 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!21 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!22 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!23 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 12]
!24 = metadata !{i32 12, i32 26, metadata !4, null}
!25 = metadata !{i32 13, i32 4, metadata !4, null}
!26 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!27 = metadata !{i32 13, i32 8, metadata !4, null}
!28 = metadata !{i32 14, i32 4, metadata !4, null}
!29 = metadata !{i32 15, i32 4, metadata !4, null}
!30 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 18]
!31 = metadata !{i32 18, i32 19, metadata !9, null}
!32 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 20]
!33 = metadata !{i32 20, i32 10, metadata !9, null}
!34 = metadata !{i32 22, i32 6, metadata !9, null}
!35 = metadata !{i32 22, i32 6, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 6, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 23, i32 10, metadata !9, null}
!38 = metadata !{i32 24, i32 6, metadata !9, null}
!39 = metadata !{i32 28, i32 19, metadata !10, null}
!40 = metadata !{i32 786688, metadata !10, metadata !"length1", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 28]
!41 = metadata !{i32 28, i32 9, metadata !10, null}
!42 = metadata !{i32 29, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 1}
!45 = metadata !{i32 32, i32 25, metadata !10, null}
!46 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !45} ; [ DW_TAG_arg_variable ] [size] [line 12]
!47 = metadata !{i32 12, i32 26, metadata !4, metadata !45}
!48 = metadata !{i32 13, i32 4, metadata !4, metadata !45}
!49 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !45} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!50 = metadata !{i32 13, i32 8, metadata !4, metadata !45}
!51 = metadata !{i32 14, i32 4, metadata !4, metadata !45}
!52 = metadata !{i32 786688, metadata !10, metadata !"nondetString1", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 32]
!53 = metadata !{i32 32, i32 9, metadata !10, null}
!54 = metadata !{i32 33, i32 5, metadata !10, null}
!55 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777234, metadata !8, i32 0, metadata !56} ; [ DW_TAG_arg_variable ] [s] [line 18]
!56 = metadata !{i32 34, i32 12, metadata !10, null}
!57 = metadata !{i32 18, i32 19, metadata !9, metadata !56}
!58 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 20, metadata !8, i32 0, metadata !56} ; [ DW_TAG_auto_variable ] [p] [line 20]
!59 = metadata !{i32 20, i32 10, metadata !9, metadata !56}
!60 = metadata !{i32 22, i32 6, metadata !9, metadata !56}
!61 = metadata !{i32 22, i32 6, metadata !36, metadata !56}
!62 = metadata !{i32 23, i32 10, metadata !9, metadata !56}
!63 = metadata !{i32 24, i32 6, metadata !9, metadata !56}

