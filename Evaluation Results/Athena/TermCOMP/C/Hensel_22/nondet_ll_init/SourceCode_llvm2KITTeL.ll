; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, i32 }

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x %struct.list] zeroinitializer, align 16
@memory0 = common global [100000 x %struct.list] zeroinitializer, align 16
@memory2 = common global [100000 x %struct.list] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !32), !dbg !33
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !35), !dbg !36
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !37
  %"2" = add nsw i32 %"1", %size, !dbg !37
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !37
  ret i32 %"0", !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !39), !dbg !40
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !42), !dbg !43
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !44
  %"5" = add nsw i32 %"4", %size, !dbg !44
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !44
  ret i32 %"3", !dbg !45
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !46), !dbg !47
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !49), !dbg !50
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !51
  %"8" = add nsw i32 %"7", %size, !dbg !51
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !51
  ret i32 %"6", !dbg !52
}

; Function Attrs: nounwind uwtable
define i32 @init_list(i32 %n) #0 {
init_list_bb3:
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !60), !dbg !62
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !64), !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !56), !dbg !57
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !58), !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !60), !dbg !62
  br label %init_list_bb4, !dbg !70

init_list_bb4:                                    ; preds = %init_list_bb5, %init_list_bb3
  %j.0 = phi i32 [ 0, %init_list_bb3 ], [ %"20", %init_list_bb5 ]
  %tail.0 = phi i32 [ 0, %init_list_bb3 ], [ %"10", %init_list_bb5 ]
  %"9" = icmp slt i32 %j.0, %n, !dbg !71
  br i1 %"9", label %init_list_bb5, label %init_list_bb6, !dbg !71

init_list_bb5:                                    ; preds = %init_list_bb4
  %"10" = load i32* @"'memory1_freeIndex", align 4, !dbg !74
  %"11" = load i32* @"'memory1_freeIndex", align 4, !dbg !75
  %"12" = add nsw i32 %"11", 8, !dbg !75
  store i32 %"12", i32* @"'memory1_freeIndex", align 4, !dbg !75
  %"13" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !76
  %"14" = sext i32 %"10" to i64, !dbg !76
  %"15" = getelementptr inbounds [100000 x %struct.list]* @memory1, i32 0, i64 %"14", !dbg !76
  %"16" = getelementptr inbounds %struct.list* %"15", i32 0, i32 0, !dbg !76
  store i32 %"13", i32* %"16", align 4, !dbg !76
  %"17" = sext i32 %"10" to i64, !dbg !77
  %"18" = getelementptr inbounds [100000 x %struct.list]* @memory1, i32 0, i64 %"17", !dbg !77
  %"19" = getelementptr inbounds %struct.list* %"18", i32 0, i32 1, !dbg !77
  store i32 %tail.0, i32* %"19", align 4, !dbg !77
  %"20" = add nsw i32 %j.0, 1, !dbg !78
  br label %init_list_bb4, !dbg !78

init_list_bb6:                                    ; preds = %init_list_bb4
  ret i32 %tail.0, !dbg !79
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"21" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !81), !dbg !82
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !83) #3, !dbg !85
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !86) #3, !dbg !87
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !88) #3, !dbg !89
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !90) #3, !dbg !91
  call void @llvm.dbg.value(metadata !63, i64 0, metadata !92) #3, !dbg !94
  br label %main_bb8, !dbg !95

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %j.0.i = phi i32 [ 0, %main_bb7 ], [ %"33", %main_bb9 ], !dbg !84
  %tail.0.i = phi i32 [ 0, %main_bb7 ], [ %"23", %main_bb9 ], !dbg !84
  %"22" = icmp slt i32 %j.0.i, %"21", !dbg !96
  br i1 %"22", label %main_bb9, label %main_init_list.exit, !dbg !96

main_bb9:                                         ; preds = %main_bb8
  %"23" = load i32* @"'memory1_freeIndex", align 4, !dbg !97
  %"24" = load i32* @"'memory1_freeIndex", align 4, !dbg !98
  %"25" = add nsw i32 %"24", 8, !dbg !98
  store i32 %"25", i32* @"'memory1_freeIndex", align 4, !dbg !98
  %"26" = call i32 (...)* @__VERIFIER_nondet_int() #3, !dbg !99
  %"27" = sext i32 %"23" to i64, !dbg !99
  %"28" = getelementptr inbounds [100000 x %struct.list]* @memory1, i32 0, i64 %"27", !dbg !99
  %"29" = getelementptr inbounds %struct.list* %"28", i32 0, i32 0, !dbg !99
  store i32 %"26", i32* %"29", align 4, !dbg !99
  %"30" = sext i32 %"23" to i64, !dbg !100
  %"31" = getelementptr inbounds [100000 x %struct.list]* @memory1, i32 0, i64 %"30", !dbg !100
  %"32" = getelementptr inbounds %struct.list* %"31", i32 0, i32 1, !dbg !100
  store i32 %tail.0.i, i32* %"32", align 4, !dbg !100
  %"33" = add nsw i32 %j.0.i, 1, !dbg !101
  br label %main_bb8, !dbg !101

main_init_list.exit:                              ; preds = %main_bb8
  call void @llvm.dbg.value(metadata !{i32 %tail.0.i}, i64 0, metadata !102), !dbg !103
  ret i32 0, !dbg !104
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !15, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 13] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_list", metadata !"init_list", metadata !"", i32 37, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @init_list, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 37] [def] [init_list]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 51, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 51} ; [ DW_TAG_subprogram ] [line 51] [def] [main]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{metadata !16, metadata !17, metadata !18, metadata !19, metadata !27, metadata !28}
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 12] [def]
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 21, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 21] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 30, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 30] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 11, metadata !20, i32 0, i32 1, [100000 x %struct.list]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 11] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 32, i32 0, i32 0, metadata !21, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 32, offset 0] [from list]
!21 = metadata !{i32 786451, metadata !1, null, metadata !"list", i32 5, i64 64, i64 32, i32 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [list] [line 5, size 64, align 32, offset 0] [def] [from ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"value", i32 6, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [value] [line 6, size 32, align 32, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"next", i32 7, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [next] [line 7, size 32, align 32, offset 32] [from int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 20, metadata !20, i32 0, i32 1, [100000 x %struct.list]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 20] [def]
!28 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 29, metadata !20, i32 0, i32 1, [100000 x %struct.list]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 29] [def]
!29 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!30 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!31 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!32 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777229, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 13]
!33 = metadata !{i32 13, i32 26, metadata !4, null}
!34 = metadata !{i32 14, i32 4, metadata !4, null}
!35 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 14]
!36 = metadata !{i32 14, i32 8, metadata !4, null}
!37 = metadata !{i32 15, i32 4, metadata !4, null}
!38 = metadata !{i32 16, i32 4, metadata !4, null}
!39 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 22]
!40 = metadata !{i32 22, i32 26, metadata !9, null}
!41 = metadata !{i32 23, i32 4, metadata !9, null}
!42 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!43 = metadata !{i32 23, i32 8, metadata !9, null}
!44 = metadata !{i32 24, i32 4, metadata !9, null}
!45 = metadata !{i32 25, i32 4, metadata !9, null}
!46 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777247, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 31]
!47 = metadata !{i32 31, i32 26, metadata !10, null}
!48 = metadata !{i32 32, i32 4, metadata !10, null}
!49 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!50 = metadata !{i32 32, i32 8, metadata !10, null}
!51 = metadata !{i32 33, i32 4, metadata !10, null}
!52 = metadata !{i32 34, i32 4, metadata !10, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"n", metadata !5, i32 16777253, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 37]
!54 = metadata !{i32 37, i32 19, metadata !11, null}
!55 = metadata !{i32 0}
!56 = metadata !{i32 786688, metadata !11, metadata !"curr", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [curr] [line 38]
!57 = metadata !{i32 38, i32 7, metadata !11, null}
!58 = metadata !{i32 786688, metadata !11, metadata !"tail", metadata !5, i32 39, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tail] [line 39]
!59 = metadata !{i32 39, i32 7, metadata !11, null}
!60 = metadata !{i32 786688, metadata !61, metadata !"j", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 41]
!61 = metadata !{i32 786443, metadata !1, metadata !11, i32 41, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 41, i32 12, metadata !61, null}
!63 = metadata !{i32 8}
!64 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, metadata !65} ; [ DW_TAG_arg_variable ] [size] [line 22]
!65 = metadata !{i32 42, i32 12, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !61, i32 41, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 22, i32 26, metadata !9, metadata !65}
!68 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 23, metadata !8, i32 0, metadata !65} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 23]
!69 = metadata !{i32 23, i32 8, metadata !9, metadata !65}
!70 = metadata !{i32 41, i32 8, metadata !61, null}
!71 = metadata !{i32 41, i32 8, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !73, i32 41, i32 8, i32 2, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 786443, metadata !1, metadata !61, i32 41, i32 8, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 23, i32 4, metadata !9, metadata !65}
!75 = metadata !{i32 24, i32 4, metadata !9, metadata !65}
!76 = metadata !{i32 43, i32 27, metadata !66, null}
!77 = metadata !{i32 44, i32 5, metadata !66, null}
!78 = metadata !{i32 41, i32 26, metadata !61, null}
!79 = metadata !{i32 48, i32 3, metadata !11, null}
!80 = metadata !{i32 52, i32 11, metadata !12, null}
!81 = metadata !{i32 786688, metadata !12, metadata !"n", metadata !5, i32 52, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 52]
!82 = metadata !{i32 52, i32 7, metadata !12, null}
!83 = metadata !{i32 786689, metadata !11, metadata !"n", metadata !5, i32 16777253, metadata !8, i32 0, metadata !84} ; [ DW_TAG_arg_variable ] [n] [line 37]
!84 = metadata !{i32 53, i32 14, metadata !12, null}
!85 = metadata !{i32 37, i32 19, metadata !11, metadata !84}
!86 = metadata !{i32 786688, metadata !11, metadata !"curr", metadata !5, i32 38, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [curr] [line 38]
!87 = metadata !{i32 38, i32 7, metadata !11, metadata !84}
!88 = metadata !{i32 786688, metadata !11, metadata !"tail", metadata !5, i32 39, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [tail] [line 39]
!89 = metadata !{i32 39, i32 7, metadata !11, metadata !84}
!90 = metadata !{i32 786688, metadata !61, metadata !"j", metadata !5, i32 41, metadata !8, i32 0, metadata !84} ; [ DW_TAG_auto_variable ] [j] [line 41]
!91 = metadata !{i32 41, i32 12, metadata !61, metadata !84}
!92 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777238, metadata !8, i32 0, metadata !93} ; [ DW_TAG_arg_variable ] [size] [line 22]
!93 = metadata !{i32 42, i32 12, metadata !66, metadata !84}
!94 = metadata !{i32 22, i32 26, metadata !9, metadata !93}
!95 = metadata !{i32 41, i32 8, metadata !61, metadata !84}
!96 = metadata !{i32 41, i32 8, metadata !72, metadata !84}
!97 = metadata !{i32 23, i32 4, metadata !9, metadata !93}
!98 = metadata !{i32 24, i32 4, metadata !9, metadata !93}
!99 = metadata !{i32 43, i32 27, metadata !66, metadata !84}
!100 = metadata !{i32 44, i32 5, metadata !66, metadata !84}
!101 = metadata !{i32 41, i32 26, metadata !61, metadata !84}
!102 = metadata !{i32 786688, metadata !12, metadata !"head", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 53]
!103 = metadata !{i32 53, i32 7, metadata !12, null}
!104 = metadata !{i32 54, i32 3, metadata !12, null}

