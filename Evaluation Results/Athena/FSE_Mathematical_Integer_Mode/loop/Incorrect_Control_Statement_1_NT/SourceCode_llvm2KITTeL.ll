; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !22), !dbg !23
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !25), !dbg !26
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !27
  %"2" = add nsw i32 %"1", %size, !dbg !27
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !27
  ret i32 %"0", !dbg !28
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !32, i64 0, metadata !33), !dbg !35
  %"3" = load i32* @"'memory0_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !37), !dbg !38
  %"4" = load i32* @"'memory0_freeIndex", align 4, !dbg !39
  %"5" = add nsw i32 %"4", 101, !dbg !39
  store i32 %"5", i32* @"'memory0_freeIndex", align 4, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !40), !dbg !41
  call void @llvm.dbg.value(metadata !29, i64 0, metadata !42), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !42), !dbg !44
  br label %main_bb2, !dbg !45

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"11", %main_bb3 ]
  %"6" = icmp slt i32 %i.0, 100, !dbg !46
  br i1 %"6", label %main_bb3, label %main_bb4, !dbg !46

main_bb3:                                         ; preds = %main_bb2
  %"7" = call signext i8 @__VERIFIER_nondet_char(), !dbg !49
  %"8" = add nsw i32 %"3", %i.0, !dbg !49
  %"9" = sext i32 %"8" to i64, !dbg !49
  %"10" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"9", !dbg !49
  store i8 %"7", i8* %"10", align 1, !dbg !49
  %"11" = add nsw i32 %i.0, 1, !dbg !50
  br label %main_bb2, !dbg !50

main_bb4:                                         ; preds = %main_bb2
  %"12" = add nsw i32 %"3", 100, !dbg !51
  %"13" = sext i32 %"12" to i64, !dbg !51
  %"14" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"13", !dbg !51
  store i8 0, i8* %"14", align 1, !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !54, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !54, i64 0, metadata !30), !dbg !31
  br label %main_bb5, !dbg !55

main_bb5:                                         ; preds = %main_LeafBlock2, %main_bb8, %main_bb9, %main_bb7, %main_bb4
  %stop.0 = phi i32 [ 0, %main_bb4 ], [ %stop.0, %main_bb9 ], [ 1, %main_LeafBlock2 ], [ %stop.0, %main_bb7 ], [ %.stop.0, %main_bb8 ]
  %p.0 = phi i32 [ %"3", %main_bb4 ], [ %"38", %main_bb9 ], [ %p.0, %main_LeafBlock2 ], [ %p.0, %main_bb7 ], [ %.p.0, %main_bb8 ]
  %"15" = sext i32 %p.0 to i64, !dbg !56
  %"16" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"15", !dbg !56
  %"17" = load i8* %"16", align 1, !dbg !56
  %"18" = sext i8 %"17" to i32, !dbg !56
  %"19" = icmp ne i32 %"18", 0, !dbg !56
  %"20" = icmp ne i32 %stop.0, 0
  %"21" = xor i1 %"20", true, !dbg !58
  %or.cond = and i1 %"19", %"21", !dbg !56
  br i1 %or.cond, label %main_bb6, label %main_.critedge, !dbg !56

main_bb6:                                         ; preds = %main_bb5
  %"22" = sext i32 %p.0 to i64, !dbg !60
  %"23" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"22", !dbg !60
  %"24" = load i8* %"23", align 1, !dbg !60
  %"25" = sext i8 %"24" to i32, !dbg !60
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb6
  %Pivot = icmp slt i32 %"25", 125
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock2

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"25", 58
  br i1 %SwitchLeaf, label %main_bb7, label %main_NewDefault

main_bb7:                                         ; preds = %main_LeafBlock
  %"26" = add nsw i32 %p.0, 1, !dbg !62
  %"27" = sext i32 %"26" to i64, !dbg !62
  %"28" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"27", !dbg !62
  %"29" = load i8* %"28", align 1, !dbg !62
  %"30" = sext i8 %"29" to i32, !dbg !62
  %"31" = icmp ne i32 %"30", 0, !dbg !62
  br i1 %"31", label %main_bb8, label %main_bb5, !dbg !62

main_bb8:                                         ; preds = %main_bb7
  %"32" = sext i32 %"26" to i64, !dbg !65
  %"33" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"32", !dbg !65
  %"34" = load i8* %"33", align 1, !dbg !65
  %"35" = sext i8 %"34" to i32, !dbg !65
  %"36" = icmp eq i32 %"35", 45, !dbg !65
  %"37" = add nsw i32 %p.0, 2, !dbg !67
  %.stop.0 = select i1 %"36", i32 1, i32 %stop.0, !dbg !65
  %.p.0 = select i1 %"36", i32 %"37", i32 %p.0, !dbg !65
  br label %main_bb5, !dbg !65

main_LeafBlock2:                                  ; preds = %main_NodeBlock
  %SwitchLeaf3 = icmp eq i32 %"25", 125
  br i1 %SwitchLeaf3, label %main_bb5, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock2, %main_LeafBlock
  br label %main_bb9

main_bb9:                                         ; preds = %main_NewDefault
  %"38" = add nsw i32 %p.0, 1, !dbg !69
  br label %main_bb5, !dbg !70

main_.critedge:                                   ; preds = %main_bb5
  ret i32 0, !dbg !71
}

declare signext i8 @__VERIFIER_nondet_char() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 14] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 13, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 13] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 12, metadata !15, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 12] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !16, metadata !17, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!19 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!20 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!21 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!22 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 14]
!23 = metadata !{i32 14, i32 26, metadata !4, null}
!24 = metadata !{i32 15, i32 4, metadata !4, null}
!25 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!26 = metadata !{i32 15, i32 8, metadata !4, null}
!27 = metadata !{i32 16, i32 4, metadata !4, null}
!28 = metadata !{i32 17, i32 4, metadata !4, null}
!29 = metadata !{i32 0}
!30 = metadata !{i32 786688, metadata !9, metadata !"stop", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [stop] [line 22]
!31 = metadata !{i32 22, i32 9, metadata !9, null}
!32 = metadata !{i32 101}
!33 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777230, metadata !8, i32 0, metadata !34} ; [ DW_TAG_arg_variable ] [size] [line 14]
!34 = metadata !{i32 23, i32 23, metadata !9, null}
!35 = metadata !{i32 14, i32 26, metadata !4, metadata !34}
!36 = metadata !{i32 15, i32 4, metadata !4, metadata !34}
!37 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 15, metadata !8, i32 0, metadata !34} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 15]
!38 = metadata !{i32 15, i32 8, metadata !4, metadata !34}
!39 = metadata !{i32 16, i32 4, metadata !4, metadata !34}
!40 = metadata !{i32 786688, metadata !9, metadata !"array_index", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [array_index] [line 23]
!41 = metadata !{i32 23, i32 9, metadata !9, null}
!42 = metadata !{i32 786688, metadata !43, metadata !"i", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 24]
!43 = metadata !{i32 786443, metadata !1, metadata !9, i32 24, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 24, i32 14, metadata !43, null}
!45 = metadata !{i32 24, i32 10, metadata !43, null}
!46 = metadata !{i32 24, i32 10, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !48, i32 24, i32 10, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 786443, metadata !1, metadata !43, i32 24, i32 10, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 25, i32 39, metadata !43, null}
!50 = metadata !{i32 24, i32 32, metadata !43, null}
!51 = metadata !{i32 26, i32 5, metadata !9, null}
!52 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 27]
!53 = metadata !{i32 27, i32 9, metadata !9, null}
!54 = metadata !{i32 1}
!55 = metadata !{i32 28, i32 5, metadata !9, null}
!56 = metadata !{i32 28, i32 5, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 28, i32 5, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !9, i32 28, i32 5, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 30, i32 9, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !9, i32 29, i32 5, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 36, i32 17, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !64, i32 36, i32 17, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 786443, metadata !1, metadata !61, i32 30, i32 27, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 36, i32 17, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !63, i32 36, i32 17, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 37, i32 17, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !63, i32 36, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 42, i32 13, metadata !64, null}
!70 = metadata !{i32 43, i32 9, metadata !64, null}
!71 = metadata !{i32 45, i32 5, metadata !9, null}

