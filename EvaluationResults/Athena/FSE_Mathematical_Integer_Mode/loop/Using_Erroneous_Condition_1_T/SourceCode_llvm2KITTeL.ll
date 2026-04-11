; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i32, i32 }

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x %struct.Node] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !26), !dbg !27
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !29), !dbg !30
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !31
  %"2" = add nsw i32 %"1", %size, !dbg !31
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !31
  ret i32 %"0", !dbg !32
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  call void @llvm.dbg.value(metadata !33, i64 0, metadata !34), !dbg !36
  %"3" = load i32* @"'memory0_freeIndex", align 4, !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !38), !dbg !39
  %"4" = load i32* @"'memory0_freeIndex", align 4, !dbg !40
  %"5" = add nsw i32 %"4", 8, !dbg !40
  store i32 %"5", i32* @"'memory0_freeIndex", align 4, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !41), !dbg !42
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !43
  %"7" = sext i32 %"3" to i64, !dbg !43
  %"8" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"7", !dbg !43
  %"9" = getelementptr inbounds %struct.Node* %"8", i32 0, i32 1, !dbg !43
  store i32 %"6", i32* %"9", align 4, !dbg !43
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !44
  %"11" = sext i32 %"3" to i64, !dbg !44
  %"12" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"11", !dbg !44
  %"13" = getelementptr inbounds %struct.Node* %"12", i32 0, i32 0, !dbg !44
  store i32 %"10", i32* %"13", align 4, !dbg !44
  %"14" = sext i32 %"3" to i64, !dbg !45
  %"15" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"14", !dbg !45
  %"16" = getelementptr inbounds %struct.Node* %"15", i32 0, i32 1, !dbg !45
  %"17" = load i32* %"16", align 4, !dbg !45
  %"18" = icmp sle i32 %"17", -2, !dbg !45
  br i1 %"18", label %main_bb7, label %main_bb2, !dbg !45

main_bb2:                                         ; preds = %main_bb1
  %"19" = sext i32 %"3" to i64, !dbg !47
  %"20" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"19", !dbg !47
  %"21" = getelementptr inbounds %struct.Node* %"20", i32 0, i32 0, !dbg !47
  %"22" = load i32* %"21", align 4, !dbg !47
  %"23" = icmp slt i32 %"22", 1, !dbg !47
  br i1 %"23", label %main_bb7, label %main_bb3, !dbg !47

main_bb3:                                         ; preds = %main_bb2
  %"24" = sext i32 %"3" to i64, !dbg !49
  %"25" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"24", !dbg !49
  %"26" = getelementptr inbounds %struct.Node* %"25", i32 0, i32 1, !dbg !49
  %"27" = load i32* %"26", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !50), !dbg !51
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !53), !dbg !54
  %"29" = icmp sgt i32 %"28", 0, !dbg !55
  %"30" = icmp sge i32 %"27", 1, !dbg !57
  %or.cond = and i1 %"29", %"30", !dbg !55
  %"31" = add nsw i32 %"27", -1, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !62), !dbg !63
  %"32" = add nsw i32 %"27", 1, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !66, i64 0, metadata !62), !dbg !63
  %direction.0 = select i1 %or.cond, i32 -1, i32 1, !dbg !55
  %pos.0 = select i1 %or.cond, i32 %"31", i32 %"32", !dbg !55
  %"33" = sext i32 %"3" to i64, !dbg !67
  %"34" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"33", !dbg !67
  %"35" = getelementptr inbounds %struct.Node* %"34", i32 0, i32 0, !dbg !67
  %"36" = load i32* %"35", align 4, !dbg !67
  %"37" = srem i32 %pos.0, %"36", !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !50), !dbg !51
  %"38" = sext i32 %"3" to i64, !dbg !70
  %"39" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"38", !dbg !70
  %"40" = getelementptr inbounds %struct.Node* %"39", i32 0, i32 0, !dbg !70
  %"41" = load i32* %"40", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !73, i64 0, metadata !50), !dbg !51
  %"42" = sext i32 %"3" to i64, !dbg !74
  %"43" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"42", !dbg !74
  %"44" = getelementptr inbounds %struct.Node* %"43", i32 0, i32 0, !dbg !74
  %"45" = load i32* %"44", align 4, !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !50), !dbg !51
  br label %main_bb4, !dbg !77

main_bb4:                                         ; preds = %main_bb6, %main_bb3
  %pos.1 = phi i32 [ %"37", %main_bb3 ], [ %pos.3, %main_bb6 ]
  %"46" = add nsw i32 %pos.1, %direction.0, !dbg !78
  %"47" = icmp eq i32 %"46", %"41", !dbg !70
  br i1 %"47", label %main_bb6, label %main_bb5, !dbg !70

main_bb5:                                         ; preds = %main_bb4
  %"48" = icmp slt i32 %"46", 0, !dbg !79
  %"49" = sub nsw i32 %"45", 1, !dbg !74
  %. = select i1 %"48", i32 %"49", i32 %"46", !dbg !79
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  %pos.3 = phi i32 [ %., %main_bb5 ], [ 0, %main_bb4 ]
  %"50" = icmp ne i32 %pos.3, %"37", !dbg !80
  br i1 %"50", label %main_bb4, label %main_bb7, !dbg !80

main_bb7:                                         ; preds = %main_bb6, %main_bb1, %main_bb2
  ret i32 0, !dbg !82
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !12, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 25, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 26] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{metadata !13, metadata !14}
!13 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 18, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 18] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 17, metadata !15, i32 0, i32 1, [100000 x %struct.Node]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 17] [def]
!15 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 32, i32 0, i32 0, metadata !16, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 32, offset 0] [from Node]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"Node", i32 12, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [Node] [line 12, size 0, align 0, offset 0] [from Node]
!17 = metadata !{i32 786451, metadata !1, null, metadata !"Node", i32 9, i64 64, i64 32, i32 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 9, size 64, align 32, offset 0] [def] [from ]
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786445, metadata !1, metadata !17, metadata !"size", i32 10, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 10, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786445, metadata !1, metadata !17, metadata !"selected", i32 11, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [selected] [line 11, size 32, align 32, offset 32] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 19]
!27 = metadata !{i32 19, i32 26, metadata !4, null}
!28 = metadata !{i32 20, i32 4, metadata !4, null}
!29 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 20]
!30 = metadata !{i32 20, i32 8, metadata !4, null}
!31 = metadata !{i32 21, i32 4, metadata !4, null}
!32 = metadata !{i32 22, i32 4, metadata !4, null}
!33 = metadata !{i32 8}
!34 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777235, metadata !8, i32 0, metadata !35} ; [ DW_TAG_arg_variable ] [size] [line 19]
!35 = metadata !{i32 27, i32 16, metadata !9, null}
!36 = metadata !{i32 19, i32 26, metadata !4, metadata !35}
!37 = metadata !{i32 20, i32 4, metadata !4, metadata !35}
!38 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 20, metadata !8, i32 0, metadata !35} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 20]
!39 = metadata !{i32 20, i32 8, metadata !4, metadata !35}
!40 = metadata !{i32 21, i32 4, metadata !4, metadata !35}
!41 = metadata !{i32 786688, metadata !9, metadata !"menu", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [menu] [line 27]
!42 = metadata !{i32 27, i32 9, metadata !9, null}
!43 = metadata !{i32 28, i32 30, metadata !9, null}
!44 = metadata !{i32 29, i32 26, metadata !9, null}
!45 = metadata !{i32 30, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !9, i32 30, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 30, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !46, i32 30, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 32, i32 5, metadata !9, null}
!50 = metadata !{i32 786688, metadata !9, metadata !"pos", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 32]
!51 = metadata !{i32 32, i32 9, metadata !9, null}
!52 = metadata !{i32 34, i32 22, metadata !9, null}
!53 = metadata !{i32 786688, metadata !9, metadata !"action_id", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [action_id] [line 34]
!54 = metadata !{i32 34, i32 9, metadata !9, null}
!55 = metadata !{i32 35, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !9, i32 35, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 35, i32 9, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !56, i32 35, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 37, i32 9, metadata !60, null}
!60 = metadata !{i32 786443, metadata !1, metadata !56, i32 36, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!61 = metadata !{i32 -1}
!62 = metadata !{i32 786688, metadata !9, metadata !"direction", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [direction] [line 33]
!63 = metadata !{i32 33, i32 9, metadata !9, null}
!64 = metadata !{i32 42, i32 9, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !56, i32 41, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 1}
!67 = metadata !{i32 45, i32 5, metadata !9, null}
!68 = metadata !{i32 786688, metadata !9, metadata !"start", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 46]
!69 = metadata !{i32 46, i32 9, metadata !9, null}
!70 = metadata !{i32 49, i32 13, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 49, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 786443, metadata !1, metadata !9, i32 47, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 0}
!74 = metadata !{i32 50, i32 28, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !76, i32 50, i32 28, i32 1, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 786443, metadata !1, metadata !71, i32 50, i32 18, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!77 = metadata !{i32 47, i32 5, metadata !9, null}
!78 = metadata !{i32 48, i32 9, metadata !72, null}
!79 = metadata !{i32 50, i32 18, metadata !76, null}
!80 = metadata !{i32 51, i32 5, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !72, i32 51, i32 5, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 53, i32 1, metadata !9, null}

