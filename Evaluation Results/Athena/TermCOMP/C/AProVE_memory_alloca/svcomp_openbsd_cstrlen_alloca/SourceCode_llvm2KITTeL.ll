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
define i32 @cstrlen(i32 %str) #0 {
cstrlen_bb1:
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %str}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !32), !dbg !33
  br label %cstrlen_bb2, !dbg !34

cstrlen_bb2:                                      ; preds = %cstrlen_bb3, %cstrlen_bb1
  %s.0 = phi i32 [ %str, %cstrlen_bb1 ], [ %"7", %cstrlen_bb3 ]
  %"3" = sext i32 %s.0 to i64, !dbg !36
  %"4" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"3", !dbg !36
  %"5" = load i8* %"4", align 1, !dbg !36
  %"6" = icmp ne i8 %"5", 0, !dbg !36
  br i1 %"6", label %cstrlen_bb3, label %cstrlen_bb4, !dbg !36

cstrlen_bb3:                                      ; preds = %cstrlen_bb2
  %"7" = add nsw i32 %s.0, 1, !dbg !39
  br label %cstrlen_bb2, !dbg !39

cstrlen_bb4:                                      ; preds = %cstrlen_bb2
  %"8" = sub nsw i32 %s.0, %str, !dbg !41
  ret i32 %"8", !dbg !41
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !43), !dbg !44
  %"10" = icmp slt i32 %"9", 1, !dbg !45
  call void @llvm.dbg.value(metadata !47, i64 0, metadata !43), !dbg !44
  %. = select i1 %"10", i32 1, i32 %"9", !dbg !45
  %"11" = mul nsw i32 %., 1, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !49), !dbg !50
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !52), !dbg !53
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !54
  %"14" = add nsw i32 %"13", %"11", !dbg !54
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !55), !dbg !56
  %"15" = sub nsw i32 %., 1, !dbg !57
  %"16" = add nsw i32 %"12", %"15", !dbg !57
  %"17" = sext i32 %"16" to i64, !dbg !57
  %"18" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"17", !dbg !57
  store i8 0, i8* %"18", align 1, !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !58), !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !61), !dbg !62
  br label %main_bb6, !dbg !63

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %s.0.i = phi i32 [ %"12", %main_bb5 ], [ %"23", %main_bb7 ], !dbg !59
  %"19" = sext i32 %s.0.i to i64, !dbg !64
  %"20" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"19", !dbg !64
  %"21" = load i8* %"20", align 1, !dbg !64
  %"22" = icmp ne i8 %"21", 0, !dbg !64
  br i1 %"22", label %main_bb7, label %main_cstrlen.exit, !dbg !64

main_bb7:                                         ; preds = %main_bb6
  %"23" = add nsw i32 %s.0.i, 1, !dbg !65
  br label %main_bb6, !dbg !65

main_cstrlen.exit:                                ; preds = %main_bb6
  %"24" = sub nsw i32 %s.0.i, %"12", !dbg !66
  ret i32 %"24", !dbg !59
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
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrlen", metadata !"cstrlen", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @cstrlen, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 20] [cstrlen]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 28, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 28] [def] [main]
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
!30 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [str] [line 19]
!31 = metadata !{i32 19, i32 13, metadata !9, null}
!32 = metadata !{i32 786688, metadata !9, metadata !"s", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [s] [line 21]
!33 = metadata !{i32 21, i32 6, metadata !9, null}
!34 = metadata !{i32 23, i32 7, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !9, i32 23, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 23, i32 7, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !38, i32 23, i32 7, i32 4, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 786443, metadata !1, metadata !35, i32 23, i32 7, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 23, i32 28, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !35, i32 23, i32 28, i32 3, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 25, i32 2, metadata !9, null}
!42 = metadata !{i32 29, i32 19, metadata !10, null}
!43 = metadata !{i32 786688, metadata !10, metadata !"length1", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 29]
!44 = metadata !{i32 29, i32 9, metadata !10, null}
!45 = metadata !{i32 30, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 1}
!48 = metadata !{i32 33, i32 25, metadata !10, null}
!49 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777228, metadata !8, i32 0, metadata !48} ; [ DW_TAG_arg_variable ] [size] [line 12]
!50 = metadata !{i32 12, i32 26, metadata !4, metadata !48}
!51 = metadata !{i32 13, i32 4, metadata !4, metadata !48}
!52 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 13, metadata !8, i32 0, metadata !48} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 13]
!53 = metadata !{i32 13, i32 8, metadata !4, metadata !48}
!54 = metadata !{i32 14, i32 4, metadata !4, metadata !48}
!55 = metadata !{i32 786688, metadata !10, metadata !"nondetString1", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 33]
!56 = metadata !{i32 33, i32 9, metadata !10, null}
!57 = metadata !{i32 34, i32 5, metadata !10, null}
!58 = metadata !{i32 786689, metadata !9, metadata !"str", metadata !5, i32 16777235, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [str] [line 19]
!59 = metadata !{i32 35, i32 12, metadata !10, null}
!60 = metadata !{i32 19, i32 13, metadata !9, metadata !59}
!61 = metadata !{i32 786688, metadata !9, metadata !"s", metadata !5, i32 21, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [s] [line 21]
!62 = metadata !{i32 21, i32 6, metadata !9, metadata !59}
!63 = metadata !{i32 23, i32 7, metadata !35, metadata !59}
!64 = metadata !{i32 23, i32 7, metadata !37, metadata !59}
!65 = metadata !{i32 23, i32 28, metadata !40, metadata !59}
!66 = metadata !{i32 25, i32 2, metadata !9, metadata !59}

