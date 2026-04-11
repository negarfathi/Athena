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
define i32 @cstrreplace(i32 %s, i8 signext %old, i8 signext %_new) #0 {
cstrreplace_bb1:
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i8 %old}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !{i8 %_new}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !38), !dbg !39
  call void @llvm.dbg.value(metadata !40, i64 0, metadata !41), !dbg !42
  %"3" = sext i8 %old to i32, !dbg !43
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !38), !dbg !39
  br label %cstrreplace_bb2, !dbg !46

cstrreplace_bb2:                                  ; preds = %cstrreplace_bb5, %cstrreplace_bb1
  %p.0 = phi i32 [ %s, %cstrreplace_bb1 ], [ %"17", %cstrreplace_bb5 ]
  %numReplaced.0 = phi i32 [ 0, %cstrreplace_bb1 ], [ %numReplaced.1, %cstrreplace_bb5 ]
  %"4" = sext i32 %p.0 to i64, !dbg !47
  %"5" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"4", !dbg !47
  %"6" = load i8* %"5", align 1, !dbg !47
  %"7" = sext i8 %"6" to i32, !dbg !47
  %"8" = icmp ne i32 %"7", 0, !dbg !47
  br i1 %"8", label %cstrreplace_bb3, label %cstrreplace_bb6, !dbg !47

cstrreplace_bb3:                                  ; preds = %cstrreplace_bb2
  %"9" = sext i32 %p.0 to i64, !dbg !43
  %"10" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"9", !dbg !43
  %"11" = load i8* %"10", align 1, !dbg !43
  %"12" = sext i8 %"11" to i32, !dbg !43
  %"13" = icmp eq i32 %"12", %"3", !dbg !43
  br i1 %"13", label %cstrreplace_bb4, label %cstrreplace_bb5, !dbg !43

cstrreplace_bb4:                                  ; preds = %cstrreplace_bb3
  %"14" = sext i32 %p.0 to i64, !dbg !49
  %"15" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"14", !dbg !49
  store i8 %_new, i8* %"15", align 1, !dbg !49
  %"16" = add nsw i32 %numReplaced.0, 1, !dbg !51
  br label %cstrreplace_bb5, !dbg !52

cstrreplace_bb5:                                  ; preds = %cstrreplace_bb4, %cstrreplace_bb3
  %numReplaced.1 = phi i32 [ %"16", %cstrreplace_bb4 ], [ %numReplaced.0, %cstrreplace_bb3 ]
  %"17" = add nsw i32 %p.0, 1, !dbg !53
  br label %cstrreplace_bb2, !dbg !54

cstrreplace_bb6:                                  ; preds = %cstrreplace_bb2
  ret i32 %numReplaced.0, !dbg !55
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"18" = call i32 @__VERIFIER_nondet_int(), !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !57), !dbg !58
  %"19" = icmp slt i32 %"18", 1, !dbg !59
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !57), !dbg !58
  %. = select i1 %"19", i32 1, i32 %"18", !dbg !59
  %"20" = mul nsw i32 %., 1, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !63), !dbg !64
  %"21" = load i32* @"'memory0_freeIndex", align 4, !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !66), !dbg !67
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !68
  %"23" = add nsw i32 %"22", %"20", !dbg !68
  store i32 %"23", i32* @"'memory0_freeIndex", align 4, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !69), !dbg !70
  %"24" = sub nsw i32 %., 1, !dbg !71
  %"25" = add nsw i32 %"21", %"24", !dbg !71
  %"26" = sext i32 %"25" to i64, !dbg !71
  %"27" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"26", !dbg !71
  store i8 0, i8* %"27", align 1, !dbg !71
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !72
  %"29" = trunc i32 %"28" to i8, !dbg !72
  %"30" = call i32 @__VERIFIER_nondet_int(), !dbg !73
  %"31" = trunc i32 %"30" to i8, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !74), !dbg !76
  call void @llvm.dbg.value(metadata !{i8 %"29"}, i64 0, metadata !77), !dbg !78
  call void @llvm.dbg.value(metadata !{i8 %"31"}, i64 0, metadata !79), !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !81), !dbg !82
  call void @llvm.dbg.value(metadata !40, i64 0, metadata !83), !dbg !84
  %"32" = sext i8 %"29" to i32, !dbg !85
  br label %main_bb8, !dbg !86

main_bb8:                                         ; preds = %main_bb11, %main_bb7
  %p.0.i = phi i32 [ %"21", %main_bb7 ], [ %"46", %main_bb11 ], !dbg !75
  %numReplaced.0.i = phi i32 [ 0, %main_bb7 ], [ %numReplaced.1.i, %main_bb11 ], !dbg !75
  %"33" = sext i32 %p.0.i to i64, !dbg !87
  %"34" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"33", !dbg !87
  %"35" = load i8* %"34", align 1, !dbg !87
  %"36" = sext i8 %"35" to i32, !dbg !87
  %"37" = icmp ne i32 %"36", 0, !dbg !87
  br i1 %"37", label %main_bb9, label %main_cstrreplace.exit, !dbg !87

main_bb9:                                         ; preds = %main_bb8
  %"38" = sext i32 %p.0.i to i64, !dbg !85
  %"39" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"38", !dbg !85
  %"40" = load i8* %"39", align 1, !dbg !85
  %"41" = sext i8 %"40" to i32, !dbg !85
  %"42" = icmp eq i32 %"41", %"32", !dbg !85
  br i1 %"42", label %main_bb10, label %main_bb11, !dbg !85

main_bb10:                                        ; preds = %main_bb9
  %"43" = sext i32 %p.0.i to i64, !dbg !88
  %"44" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"43", !dbg !88
  store i8 %"31", i8* %"44", align 1, !dbg !88
  %"45" = add nsw i32 %numReplaced.0.i, 1, !dbg !89
  br label %main_bb11, !dbg !90

main_bb11:                                        ; preds = %main_bb10, %main_bb9
  %numReplaced.1.i = phi i32 [ %"45", %main_bb10 ], [ %numReplaced.0.i, %main_bb9 ], !dbg !75
  %"46" = add nsw i32 %p.0.i, 1, !dbg !91
  br label %main_bb8, !dbg !92

main_cstrreplace.exit:                            ; preds = %main_bb8
  ret i32 %numReplaced.0.i, !dbg !75
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!22, !23}
!llvm.ident = !{!24}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cstrreplace", metadata !"cstrreplace", metadata !"", i32 14, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i8, i8)* @cstrreplace, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [cstrreplace]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8, metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 28, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 28] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !19, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !12, metadata !20, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!22 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!23 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!24 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!25 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!26 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!27 = metadata !{i32 9, i32 4, metadata !4, null}
!28 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!29 = metadata !{i32 9, i32 8, metadata !4, null}
!30 = metadata !{i32 10, i32 4, metadata !4, null}
!31 = metadata !{i32 11, i32 4, metadata !4, null}
!32 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [s] [line 14]
!33 = metadata !{i32 14, i32 23, metadata !9, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"old", metadata !5, i32 33554446, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [old] [line 14]
!35 = metadata !{i32 14, i32 31, metadata !9, null}
!36 = metadata !{i32 786689, metadata !9, metadata !"_new", metadata !5, i32 50331662, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [_new] [line 14]
!37 = metadata !{i32 14, i32 41, metadata !9, null}
!38 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 16, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 16]
!39 = metadata !{i32 16, i32 10, metadata !9, null}
!40 = metadata !{i32 0}
!41 = metadata !{i32 786688, metadata !9, metadata !"numReplaced", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [numReplaced] [line 17]
!42 = metadata !{i32 17, i32 10, metadata !9, null}
!43 = metadata !{i32 19, i32 12, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !45, i32 19, i32 12, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 33, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 18, i32 6, metadata !9, null}
!47 = metadata !{i32 18, i32 6, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !9, i32 18, i32 6, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 20, i32 10, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !44, i32 19, i32 31, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 21, i32 10, metadata !50, null}
!52 = metadata !{i32 22, i32 8, metadata !50, null}
!53 = metadata !{i32 23, i32 8, metadata !45, null}
!54 = metadata !{i32 24, i32 6, metadata !45, null}
!55 = metadata !{i32 25, i32 6, metadata !9, null}
!56 = metadata !{i32 29, i32 19, metadata !13, null}
!57 = metadata !{i32 786688, metadata !13, metadata !"length1", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 29]
!58 = metadata !{i32 29, i32 9, metadata !13, null}
!59 = metadata !{i32 30, i32 9, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !13, i32 30, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 1}
!62 = metadata !{i32 33, i32 25, metadata !13, null}
!63 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !62} ; [ DW_TAG_arg_variable ] [size] [line 8]
!64 = metadata !{i32 8, i32 26, metadata !4, metadata !62} ; [ DW_TAG_imported_declaration ]
!65 = metadata !{i32 9, i32 4, metadata !4, metadata !62}
!66 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !62} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!67 = metadata !{i32 9, i32 8, metadata !4, metadata !62}
!68 = metadata !{i32 10, i32 4, metadata !4, metadata !62}
!69 = metadata !{i32 786688, metadata !13, metadata !"nondetString1", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetString1] [line 33]
!70 = metadata !{i32 33, i32 9, metadata !13, null}
!71 = metadata !{i32 34, i32 5, metadata !13, null}
!72 = metadata !{i32 35, i32 41, metadata !13, null}
!73 = metadata !{i32 35, i32 72, metadata !13, null}
!74 = metadata !{i32 786689, metadata !9, metadata !"s", metadata !5, i32 16777230, metadata !8, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [s] [line 14]
!75 = metadata !{i32 35, i32 8, metadata !13, null}
!76 = metadata !{i32 14, i32 23, metadata !9, metadata !75}
!77 = metadata !{i32 786689, metadata !9, metadata !"old", metadata !5, i32 33554446, metadata !12, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [old] [line 14]
!78 = metadata !{i32 14, i32 31, metadata !9, metadata !75}
!79 = metadata !{i32 786689, metadata !9, metadata !"_new", metadata !5, i32 50331662, metadata !12, i32 0, metadata !75} ; [ DW_TAG_arg_variable ] [_new] [line 14]
!80 = metadata !{i32 14, i32 41, metadata !9, metadata !75}
!81 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 16, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [p] [line 16]
!82 = metadata !{i32 16, i32 10, metadata !9, metadata !75}
!83 = metadata !{i32 786688, metadata !9, metadata !"numReplaced", metadata !5, i32 17, metadata !8, i32 0, metadata !75} ; [ DW_TAG_auto_variable ] [numReplaced] [line 17]
!84 = metadata !{i32 17, i32 10, metadata !9, metadata !75}
!85 = metadata !{i32 19, i32 12, metadata !44, metadata !75}
!86 = metadata !{i32 18, i32 6, metadata !9, metadata !75}
!87 = metadata !{i32 18, i32 6, metadata !48, metadata !75}
!88 = metadata !{i32 20, i32 10, metadata !50, metadata !75}
!89 = metadata !{i32 21, i32 10, metadata !50, metadata !75}
!90 = metadata !{i32 22, i32 8, metadata !50, metadata !75}
!91 = metadata !{i32 23, i32 8, metadata !45, metadata !75}
!92 = metadata !{i32 24, i32 6, metadata !45, metadata !75}

