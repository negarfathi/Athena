; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

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
define i32 @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb1:
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !32), !dbg !33
  %"4" = icmp slt i32 %"3", 1, !dbg !34
  call void @llvm.dbg.value(metadata !36, i64 0, metadata !32), !dbg !33
  %. = select i1 %"4", i32 1, i32 %"3", !dbg !34
  %"5" = mul nsw i32 %., 1, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !38), !dbg !39
  %"6" = load i32* @"'memory0_freeIndex", align 4, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !41), !dbg !42
  %"7" = load i32* @"'memory0_freeIndex", align 4, !dbg !43
  %"8" = add nsw i32 %"7", %"5", !dbg !43
  store i32 %"8", i32* @"'memory0_freeIndex", align 4, !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !44), !dbg !45
  %"9" = sub nsw i32 %., 1, !dbg !46
  %"10" = add nsw i32 %"6", %"9", !dbg !46
  %"11" = sext i32 %"10" to i64, !dbg !46
  %"12" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"11", !dbg !46
  store i8 0, i8* %"12", align 1, !dbg !46
  ret i32 %"6", !dbg !47
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i32 %s) #0 {
cstrlen_bb2:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !48), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !50), !dbg !51
  br label %cstrlen_bb3, !dbg !52

cstrlen_bb3:                                      ; preds = %cstrlen_bb4, %cstrlen_bb2
  %p.0 = phi i32 [ %s, %cstrlen_bb2 ], [ %"18", %cstrlen_bb4 ]
  %"13" = sext i32 %p.0 to i64, !dbg !53
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !53
  %"15" = load i8* %"14", align 1, !dbg !53
  %"16" = sext i8 %"15" to i32, !dbg !53
  %"17" = icmp ne i32 %"16", 0, !dbg !53
  br i1 %"17", label %cstrlen_bb4, label %cstrlen_bb5, !dbg !53

cstrlen_bb4:                                      ; preds = %cstrlen_bb3
  %"18" = add nsw i32 %p.0, 2, !dbg !55
  br label %cstrlen_bb3, !dbg !55

cstrlen_bb5:                                      ; preds = %cstrlen_bb3
  %"19" = sub nsw i32 %p.0, %s, !dbg !56
  ret i32 %"19", !dbg !56
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"20" = call i32 @__VERIFIER_nondet_int() #3, !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !59) #3, !dbg !60
  %"21" = icmp slt i32 %"20", 1, !dbg !61
  call void @llvm.dbg.value(metadata !36, i64 0, metadata !59) #3, !dbg !60
  %..i = select i1 %"21", i32 1, i32 %"20", !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %..i}, i64 0, metadata !62) #3, !dbg !64
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !66) #3, !dbg !67
  %"23" = load i32* @"'memory0_freeIndex", align 4, !dbg !68
  %"24" = add nsw i32 %"23", %..i, !dbg !68
  store i32 %"24", i32* @"'memory0_freeIndex", align 4, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !69) #3, !dbg !70
  %"25" = sub nsw i32 %..i, 1, !dbg !71
  %"26" = add nsw i32 %"22", %"25", !dbg !71
  %"27" = sext i32 %"26" to i64, !dbg !71
  %"28" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"27", !dbg !71
  store i8 0, i8* %"28", align 1, !dbg !71
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !72), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !75), !dbg !76
  br label %main_bb7, !dbg !77

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %p.0.i = phi i32 [ %"22", %main_bb6 ], [ %"34", %main_bb8 ], !dbg !73
  %"29" = sext i32 %p.0.i to i64, !dbg !78
  %"30" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"29", !dbg !78
  %"31" = load i8* %"30", align 1, !dbg !78
  %"32" = sext i8 %"31" to i32, !dbg !78
  %"33" = icmp ne i32 %"32", 0, !dbg !78
  br i1 %"33", label %main_bb8, label %main_cstrlen.exit, !dbg !78

main_bb8:                                         ; preds = %main_bb7
  %"34" = add nsw i32 %p.0.i, 2, !dbg !79
  br label %main_bb7, !dbg !79

main_cstrlen.exit:                                ; preds = %main_bb7
  %"35" = sub nsw i32 %p.0.i, %"22", !dbg !80
  ret i32 %"35", !dbg !73
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__VERIFIER_nondet_String", metadata !"__VERIFIER_nondet_String", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @__VERIFIER_nondet_String, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [__VERIFIER_nondet_String]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrlen", metadata !"cstrlen", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @cstrlen, null, null, metadata !2, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [cstrlen]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 42, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 42] [def] [main]
!14 = metadata !{metadata !15, metadata !16}
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !17, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !18, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!24 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!25 = metadata !{i32 13, i32 26, metadata !4, null}
!26 = metadata !{i32 14, i32 4, metadata !4, null}
!27 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!28 = metadata !{i32 14, i32 8, metadata !4, null}
!29 = metadata !{i32 15, i32 4, metadata !4, null}
!30 = metadata !{i32 16, i32 4, metadata !4, null}
!31 = metadata !{i32 20, i32 18, metadata !9, null}
!32 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 20]
!33 = metadata !{i32 20, i32 9, metadata !9, null}
!34 = metadata !{i32 21, i32 9, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 1}
!37 = metadata !{i32 24, i32 24, metadata !9, null}
!38 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !37} ; [ DW_TAG_arg_variable ] [size] [line 13]
!39 = metadata !{i32 13, i32 26, metadata !4, metadata !37}
!40 = metadata !{i32 14, i32 4, metadata !4, metadata !37}
!41 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !37} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!42 = metadata !{i32 14, i32 8, metadata !4, metadata !37}
!43 = metadata !{i32 15, i32 4, metadata !4, metadata !37}
!44 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!45 = metadata !{i32 24, i32 9, metadata !9, null}
!46 = metadata !{i32 25, i32 5, metadata !9, null}
!47 = metadata !{i32 26, i32 5, metadata !9, null}
!48 = metadata !{i32 786689, metadata !12, metadata !"s", metadata !5, i32 16777249, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 33]
!49 = metadata !{i32 33, i32 19, metadata !12, null}
!50 = metadata !{i32 786688, metadata !12, metadata !"p", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 35]
!51 = metadata !{i32 35, i32 10, metadata !12, null}
!52 = metadata !{i32 37, i32 6, metadata !12, null}
!53 = metadata !{i32 37, i32 6, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !12, i32 37, i32 6, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 38, i32 10, metadata !12, null}
!56 = metadata !{i32 39, i32 6, metadata !12, null}
!57 = metadata !{i32 20, i32 18, metadata !9, metadata !58}
!58 = metadata !{i32 43, i32 20, metadata !13, null}
!59 = metadata !{i32 786688, metadata !9, metadata !"length", metadata !5, i32 20, metadata !8, i32 0, metadata !58} ; [ DW_TAG_auto_variable ] [length] [line 20]
!60 = metadata !{i32 20, i32 9, metadata !9, metadata !58}
!61 = metadata !{i32 21, i32 9, metadata !35, metadata !58}
!62 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, metadata !63} ; [ DW_TAG_arg_variable ] [size] [line 13]
!63 = metadata !{i32 24, i32 24, metadata !9, metadata !58}
!64 = metadata !{i32 13, i32 26, metadata !4, metadata !63}
!65 = metadata !{i32 14, i32 4, metadata !4, metadata !63}
!66 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, metadata !63} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!67 = metadata !{i32 14, i32 8, metadata !4, metadata !63}
!68 = metadata !{i32 15, i32 4, metadata !4, metadata !63}
!69 = metadata !{i32 786688, metadata !9, metadata !"nondetString", metadata !5, i32 24, metadata !8, i32 0, metadata !58} ; [ DW_TAG_auto_variable ] [nondetString] [line 24]
!70 = metadata !{i32 24, i32 9, metadata !9, metadata !58}
!71 = metadata !{i32 25, i32 5, metadata !9, metadata !58}
!72 = metadata !{i32 786689, metadata !12, metadata !"s", metadata !5, i32 16777249, metadata !8, i32 0, metadata !73} ; [ DW_TAG_arg_variable ] [s] [line 33]
!73 = metadata !{i32 43, i32 12, metadata !13, null}
!74 = metadata !{i32 33, i32 19, metadata !12, metadata !73}
!75 = metadata !{i32 786688, metadata !12, metadata !"p", metadata !5, i32 35, metadata !8, i32 0, metadata !73} ; [ DW_TAG_auto_variable ] [p] [line 35]
!76 = metadata !{i32 35, i32 10, metadata !12, metadata !73}
!77 = metadata !{i32 37, i32 6, metadata !12, metadata !73}
!78 = metadata !{i32 37, i32 6, metadata !54, metadata !73}
!79 = metadata !{i32 38, i32 10, metadata !12, metadata !73}
!80 = metadata !{i32 39, i32 6, metadata !12, metadata !73}

