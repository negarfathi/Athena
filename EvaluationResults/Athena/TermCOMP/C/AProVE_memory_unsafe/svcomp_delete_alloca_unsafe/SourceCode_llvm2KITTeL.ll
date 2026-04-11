; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16
@memory1 = common global [100000 x i8] zeroinitializer, align 16

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
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !32), !dbg !33
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !35), !dbg !36
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !37
  %"5" = add nsw i32 %"4", %size, !dbg !37
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !37
  ret i32 %"3", !dbg !38
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb2:
  %"6" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !39), !dbg !40
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !42), !dbg !43
  %"8" = icmp slt i32 %"7", 1, !dbg !44
  call void @llvm.dbg.value(metadata !46, i64 0, metadata !42), !dbg !43
  %. = select i1 %"8", i32 1, i32 %"7", !dbg !44
  %"9" = mul nsw i32 %., 1, !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !48), !dbg !49
  %"10" = load i32* @"'memory1_freeIndex", align 4, !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !51), !dbg !52
  %"11" = load i32* @"'memory1_freeIndex", align 4, !dbg !53
  %"12" = add nsw i32 %"11", %"9", !dbg !53
  store i32 %"12", i32* @"'memory1_freeIndex", align 4, !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !54), !dbg !55
  %"13" = icmp sle i32 %"10", %"6", !dbg !56
  br i1 %"13", label %main_bb3, label %main_bb7, !dbg !56

main_bb3:                                         ; preds = %main_bb2
  %"14" = sext i32 %"6" to i64, !dbg !58
  %"15" = sext i32 %"10" to i64, !dbg !58
  %"16" = sext i32 %. to i64, !dbg !58
  %"17" = mul i64 %"16", 1, !dbg !58
  %"18" = add i64 %"15", %"17", !dbg !58
  %"19" = icmp ult i64 %"14", %"18", !dbg !58
  br i1 %"19", label %main_bb4, label %main_bb7, !dbg !58

main_bb4:                                         ; preds = %main_bb3
  %"20" = sext i32 %"6" to i64, !dbg !60
  %"21" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"20", !dbg !60
  store i8 0, i8* %"21", align 1, !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !54), !dbg !55
  br label %main_bb5, !dbg !62

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %x.0 = phi i32 [ %"10", %main_bb4 ], [ %"29", %main_bb6 ]
  %"22" = sext i32 %x.0 to i64, !dbg !63
  %"23" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"22", !dbg !63
  %"24" = load i8* %"23", align 1, !dbg !63
  %"25" = sext i8 %"24" to i32, !dbg !63
  %"26" = icmp ne i32 %"25", 0, !dbg !63
  br i1 %"26", label %main_bb6, label %main_bb7, !dbg !63

main_bb6:                                         ; preds = %main_bb5
  %"27" = sext i32 %x.0 to i64, !dbg !65
  %"28" = getelementptr inbounds [100000 x i8]* @memory1, i32 0, i64 %"27", !dbg !65
  store i8 0, i8* %"28", align 1, !dbg !65
  %"29" = add nsw i32 %x.0, 1, !dbg !67
  br label %main_bb5, !dbg !68

main_bb7:                                         ; preds = %main_bb5, %main_bb3, %main_bb2
  ret i32 0, !dbg !69
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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [main]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !21}
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !17, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !18, metadata !19, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!18 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !17, i32 0, i32 1, [100000 x i8]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
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
!32 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!33 = metadata !{i32 17, i32 26, metadata !9, null}
!34 = metadata !{i32 18, i32 4, metadata !9, null}
!35 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!36 = metadata !{i32 18, i32 8, metadata !9, null}
!37 = metadata !{i32 19, i32 4, metadata !9, null}
!38 = metadata !{i32 20, i32 4, metadata !9, null}
!39 = metadata !{i32 786688, metadata !10, metadata !"y", metadata !5, i32 29, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 29]
!40 = metadata !{i32 29, i32 9, metadata !10, null}
!41 = metadata !{i32 24, i32 19, metadata !10, null}
!42 = metadata !{i32 786688, metadata !10, metadata !"length1", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length1] [line 24]
!43 = metadata !{i32 24, i32 9, metadata !10, null}
!44 = metadata !{i32 25, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !10, i32 25, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 1}
!47 = metadata !{i32 28, i32 13, metadata !10, null}
!48 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !47} ; [ DW_TAG_arg_variable ] [size] [line 17]
!49 = metadata !{i32 17, i32 26, metadata !9, metadata !47}
!50 = metadata !{i32 18, i32 4, metadata !9, metadata !47}
!51 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !47} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!52 = metadata !{i32 18, i32 8, metadata !9, metadata !47}
!53 = metadata !{i32 19, i32 4, metadata !9, metadata !47}
!54 = metadata !{i32 786688, metadata !10, metadata !"x", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 28]
!55 = metadata !{i32 28, i32 9, metadata !10, null}
!56 = metadata !{i32 30, i32 9, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !10, i32 30, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 30, i32 9, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !57, i32 30, i32 9, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 31, i32 9, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !57, i32 30, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 32, i32 9, metadata !61, null}
!63 = metadata !{i32 32, i32 9, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 32, i32 9, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 33, i32 13, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !61, i32 32, i32 33, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 34, i32 13, metadata !66, null}
!68 = metadata !{i32 35, i32 6, metadata !66, null}
!69 = metadata !{i32 37, i32 5, metadata !10, null}

