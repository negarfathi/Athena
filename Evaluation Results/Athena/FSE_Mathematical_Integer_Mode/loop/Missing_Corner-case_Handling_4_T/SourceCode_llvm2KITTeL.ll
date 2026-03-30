; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NNode = type { i32, i32 }

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x %struct.NNode] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !29
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !31), !dbg !32
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  %"2" = add nsw i32 %"1", %size, !dbg !33
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !33
  ret i32 %"0", !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @initLink(i32 %n) #0 {
initLink_bb1:
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !37, i64 0, metadata !38), !dbg !40
  %"3" = load i32* @"'memory0_freeIndex", align 4, !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !42), !dbg !43
  %"4" = load i32* @"'memory0_freeIndex", align 4, !dbg !44
  %"5" = add nsw i32 %"4", 8, !dbg !44
  store i32 %"5", i32* @"'memory0_freeIndex", align 4, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !45), !dbg !46
  %"6" = sext i32 %"3" to i64, !dbg !47
  %"7" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"6", !dbg !47
  %"8" = getelementptr inbounds %struct.NNode* %"7", i32 0, i32 0, !dbg !47
  store i32 1, i32* %"8", align 4, !dbg !47
  %"9" = sext i32 %"3" to i64, !dbg !48
  %"10" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"9", !dbg !48
  %"11" = getelementptr inbounds %struct.NNode* %"10", i32 0, i32 1, !dbg !48
  store i32 0, i32* %"11", align 4, !dbg !48
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !37, i64 0, metadata !54), !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !59), !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !61), !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !49), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !52), !dbg !53
  br label %initLink_bb2, !dbg !63

initLink_bb2:                                     ; preds = %initLink_bb3, %initLink_bb1
  %i.0 = phi i32 [ 2, %initLink_bb1 ], [ %"29", %initLink_bb3 ]
  %cyclic.0 = phi i32 [ %"3", %initLink_bb1 ], [ %"28", %initLink_bb3 ]
  %"12" = icmp sle i32 %i.0, %n, !dbg !64
  br i1 %"12", label %initLink_bb3, label %initLink_bb4, !dbg !64

initLink_bb3:                                     ; preds = %initLink_bb2
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !67
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !68
  %"15" = add nsw i32 %"14", 8, !dbg !68
  store i32 %"15", i32* @"'memory0_freeIndex", align 4, !dbg !68
  %"16" = sext i32 %"13" to i64, !dbg !69
  %"17" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"16", !dbg !69
  %"18" = getelementptr inbounds %struct.NNode* %"17", i32 0, i32 0, !dbg !69
  store i32 %i.0, i32* %"18", align 4, !dbg !69
  %"19" = sext i32 %"13" to i64, !dbg !70
  %"20" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"19", !dbg !70
  %"21" = getelementptr inbounds %struct.NNode* %"20", i32 0, i32 1, !dbg !70
  store i32 0, i32* %"21", align 4, !dbg !70
  %"22" = sext i32 %cyclic.0 to i64, !dbg !71
  %"23" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"22", !dbg !71
  %"24" = getelementptr inbounds %struct.NNode* %"23", i32 0, i32 1, !dbg !71
  store i32 %"13", i32* %"24", align 4, !dbg !71
  %"25" = sext i32 %cyclic.0 to i64, !dbg !72
  %"26" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"25", !dbg !72
  %"27" = getelementptr inbounds %struct.NNode* %"26", i32 0, i32 1, !dbg !72
  %"28" = load i32* %"27", align 4, !dbg !72
  %"29" = add nsw i32 %i.0, 1, !dbg !73
  br label %initLink_bb2, !dbg !73

initLink_bb4:                                     ; preds = %initLink_bb2
  %"30" = sext i32 %cyclic.0 to i64, !dbg !74
  %"31" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"30", !dbg !74
  %"32" = getelementptr inbounds %struct.NNode* %"31", i32 0, i32 1, !dbg !74
  store i32 %"3", i32* %"32", align 4, !dbg !74
  ret i32 %"3", !dbg !75
}

; Function Attrs: nounwind uwtable
define i32 @findEnd(i32 %list) #0 {
findEnd_bb5:
  call void @llvm.dbg.value(metadata !{i32 %list}, i64 0, metadata !76), !dbg !77
  call void @llvm.dbg.value(metadata !{i32 %list}, i64 0, metadata !78), !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !78), !dbg !79
  br label %findEnd_bb6, !dbg !80

findEnd_bb6:                                      ; preds = %findEnd_bb7, %findEnd_bb5
  %begin.0 = phi i32 [ %list, %findEnd_bb5 ], [ %"41", %findEnd_bb7 ]
  %"33" = sext i32 %begin.0 to i64, !dbg !81
  %"34" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"33", !dbg !81
  %"35" = getelementptr inbounds %struct.NNode* %"34", i32 0, i32 1, !dbg !81
  %"36" = load i32* %"35", align 4, !dbg !81
  %"37" = icmp ne i32 %"36", %list, !dbg !81
  br i1 %"37", label %findEnd_bb7, label %findEnd_bb8, !dbg !81

findEnd_bb7:                                      ; preds = %findEnd_bb6
  %"38" = sext i32 %begin.0 to i64, !dbg !83
  %"39" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"38", !dbg !83
  %"40" = getelementptr inbounds %struct.NNode* %"39", i32 0, i32 1, !dbg !83
  %"41" = load i32* %"40", align 4, !dbg !83
  br label %findEnd_bb6, !dbg !83

findEnd_bb8:                                      ; preds = %findEnd_bb6
  ret i32 %begin.0, !dbg !84
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"42" = call i32 @__VERIFIER_nondet_int(), !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !86), !dbg !87
  %"43" = icmp sle i32 %"42", 0, !dbg !88
  %"44" = icmp sgt i32 %"42", 65534, !dbg !90
  %or.cond = or i1 %"43", %"44", !dbg !88
  br i1 %or.cond, label %main_bb18, label %main_bb10, !dbg !88

main_bb10:                                        ; preds = %main_bb9
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !92), !dbg !94
  call void @llvm.dbg.value(metadata !37, i64 0, metadata !95), !dbg !97
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !99), !dbg !100
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"47" = add nsw i32 %"46", 8, !dbg !101
  store i32 %"47", i32* @"'memory0_freeIndex", align 4, !dbg !101
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !102), !dbg !103
  %"48" = sext i32 %"45" to i64, !dbg !104
  %"49" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"48", !dbg !104
  %"50" = getelementptr inbounds %struct.NNode* %"49", i32 0, i32 0, !dbg !104
  store i32 1, i32* %"50", align 4, !dbg !104
  %"51" = sext i32 %"45" to i64, !dbg !105
  %"52" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"51", !dbg !105
  %"53" = getelementptr inbounds %struct.NNode* %"52", i32 0, i32 1, !dbg !105
  store i32 0, i32* %"53", align 4, !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !106), !dbg !107
  call void @llvm.dbg.value(metadata !51, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !37, i64 0, metadata !110), !dbg !112
  br label %main_bb11, !dbg !113

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %i.0.i = phi i32 [ 2, %main_bb10 ], [ %"71", %main_bb12 ], !dbg !93
  %cyclic.0.i = phi i32 [ %"45", %main_bb10 ], [ %"70", %main_bb12 ], !dbg !93
  %"54" = icmp sle i32 %i.0.i, %"42", !dbg !114
  br i1 %"54", label %main_bb12, label %main_initLink.exit, !dbg !114

main_bb12:                                        ; preds = %main_bb11
  %"55" = load i32* @"'memory0_freeIndex", align 4, !dbg !115
  %"56" = load i32* @"'memory0_freeIndex", align 4, !dbg !116
  %"57" = add nsw i32 %"56", 8, !dbg !116
  store i32 %"57", i32* @"'memory0_freeIndex", align 4, !dbg !116
  %"58" = sext i32 %"55" to i64, !dbg !117
  %"59" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"58", !dbg !117
  %"60" = getelementptr inbounds %struct.NNode* %"59", i32 0, i32 0, !dbg !117
  store i32 %i.0.i, i32* %"60", align 4, !dbg !117
  %"61" = sext i32 %"55" to i64, !dbg !118
  %"62" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"61", !dbg !118
  %"63" = getelementptr inbounds %struct.NNode* %"62", i32 0, i32 1, !dbg !118
  store i32 0, i32* %"63", align 4, !dbg !118
  %"64" = sext i32 %cyclic.0.i to i64, !dbg !119
  %"65" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"64", !dbg !119
  %"66" = getelementptr inbounds %struct.NNode* %"65", i32 0, i32 1, !dbg !119
  store i32 %"55", i32* %"66", align 4, !dbg !119
  %"67" = sext i32 %cyclic.0.i to i64, !dbg !120
  %"68" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"67", !dbg !120
  %"69" = getelementptr inbounds %struct.NNode* %"68", i32 0, i32 1, !dbg !120
  %"70" = load i32* %"69", align 4, !dbg !120
  %"71" = add nsw i32 %i.0.i, 1, !dbg !121
  br label %main_bb11, !dbg !121

main_initLink.exit:                               ; preds = %main_bb11
  %"72" = sext i32 %cyclic.0.i to i64, !dbg !122
  %"73" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"72", !dbg !122
  %"74" = getelementptr inbounds %struct.NNode* %"73", i32 0, i32 1, !dbg !122
  store i32 %"45", i32* %"74", align 4, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !123), !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !125), !dbg !126
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !127), !dbg !129
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !130), !dbg !131
  br label %main_bb13, !dbg !132

main_bb13:                                        ; preds = %main_bb14, %main_initLink.exit
  %begin.0.i = phi i32 [ %"45", %main_initLink.exit ], [ %"83", %main_bb14 ], !dbg !128
  %"75" = sext i32 %begin.0.i to i64, !dbg !133
  %"76" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"75", !dbg !133
  %"77" = getelementptr inbounds %struct.NNode* %"76", i32 0, i32 1, !dbg !133
  %"78" = load i32* %"77", align 4, !dbg !133
  %"79" = icmp ne i32 %"78", %"45", !dbg !133
  br i1 %"79", label %main_bb14, label %main_findEnd.exit, !dbg !133

main_bb14:                                        ; preds = %main_bb13
  %"80" = sext i32 %begin.0.i to i64, !dbg !134
  %"81" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"80", !dbg !134
  %"82" = getelementptr inbounds %struct.NNode* %"81", i32 0, i32 1, !dbg !134
  %"83" = load i32* %"82", align 4, !dbg !134
  br label %main_bb13, !dbg !134

main_findEnd.exit:                                ; preds = %main_bb13, %main_bb17
  %h.0 = phi float [ %h.1, %main_bb17 ], [ 0.000000e+00, %main_bb13 ]
  %node.0 = phi i32 [ %"99", %main_bb17 ], [ %"45", %main_bb13 ]
  %"84" = icmp ne i32 %node.0, %begin.0.i, !dbg !135
  br i1 %"84", label %main_bb15, label %main_bb18, !dbg !135

main_bb15:                                        ; preds = %main_findEnd.exit
  %"85" = sext i32 %node.0 to i64, !dbg !137
  %"86" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"85", !dbg !137
  %"87" = getelementptr inbounds %struct.NNode* %"86", i32 0, i32 0, !dbg !137
  %"88" = load i32* %"87", align 4, !dbg !137
  %"89" = sitofp i32 %"88" to float, !dbg !137
  %"90" = fcmp ogt float %"89", %h.0, !dbg !137
  br i1 %"90", label %main_bb16, label %main_bb17, !dbg !137

main_bb16:                                        ; preds = %main_bb15
  %"91" = sext i32 %node.0 to i64, !dbg !140
  %"92" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"91", !dbg !140
  %"93" = getelementptr inbounds %struct.NNode* %"92", i32 0, i32 0, !dbg !140
  %"94" = load i32* %"93", align 4, !dbg !140
  %"95" = sitofp i32 %"94" to float, !dbg !140
  br label %main_bb17, !dbg !140

main_bb17:                                        ; preds = %main_bb16, %main_bb15
  %h.1 = phi float [ %"95", %main_bb16 ], [ %h.0, %main_bb15 ]
  %"96" = sext i32 %node.0 to i64, !dbg !141
  %"97" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"96", !dbg !141
  %"98" = getelementptr inbounds %struct.NNode* %"97", i32 0, i32 1, !dbg !141
  %"99" = load i32* %"98", align 4, !dbg !141
  br label %main_findEnd.exit, !dbg !142

main_bb18:                                        ; preds = %main_findEnd.exit, %main_bb9
  ret i32 0, !dbg !143
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !14, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 18, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 18} ; [ DW_TAG_subprogram ] [line 18] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"initLink", metadata !"initLink", metadata !"", i32 24, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @initLink, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 24] [def] [initLink]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"findEnd", metadata !"findEnd", metadata !"", i32 41, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @findEnd, null, null, metadata !2, i32 42} ; [ DW_TAG_subprogram ] [line 41] [def] [scope 42] [findEnd]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 49, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 50} ; [ DW_TAG_subprogram ] [line 49] [def] [scope 50] [main]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !8}
!14 = metadata !{metadata !15, metadata !16}
!15 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 17, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 17] [def]
!16 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 16, metadata !17, i32 0, i32 1, [100000 x %struct.NNode]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 16] [def]
!17 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 6400000, i64 32, i32 0, i32 0, metadata !18, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 6400000, align 32, offset 0] [from Node]
!18 = metadata !{i32 786454, metadata !1, null, metadata !"Node", i32 12, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ] [Node] [line 12, size 0, align 0, offset 0] [from NNode]
!19 = metadata !{i32 786451, metadata !1, null, metadata !"NNode", i32 9, i64 64, i64 32, i32 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [NNode] [line 9, size 64, align 32, offset 0] [def] [from ]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786445, metadata !1, metadata !19, metadata !"h", i32 10, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [h] [line 10, size 32, align 32, offset 0] [from int]
!22 = metadata !{i32 786445, metadata !1, metadata !19, metadata !"next", i32 11, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [next] [line 11, size 32, align 32, offset 32] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 18]
!29 = metadata !{i32 18, i32 26, metadata !4, null}
!30 = metadata !{i32 19, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 19, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 19]
!32 = metadata !{i32 19, i32 8, metadata !4, null}
!33 = metadata !{i32 20, i32 4, metadata !4, null}
!34 = metadata !{i32 21, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 16777240, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 24]
!36 = metadata !{i32 24, i32 18, metadata !9, null}
!37 = metadata !{i32 8}
!38 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777234, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [size] [line 18]
!39 = metadata !{i32 25, i32 16, metadata !9, null}
!40 = metadata !{i32 18, i32 26, metadata !4, metadata !39}
!41 = metadata !{i32 19, i32 4, metadata !4, metadata !39}
!42 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 19, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 19]
!43 = metadata !{i32 19, i32 8, metadata !4, metadata !39}
!44 = metadata !{i32 20, i32 4, metadata !4, metadata !39}
!45 = metadata !{i32 786688, metadata !9, metadata !"head", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 25]
!46 = metadata !{i32 25, i32 9, metadata !9, null}
!47 = metadata !{i32 26, i32 5, metadata !9, null}
!48 = metadata !{i32 27, i32 5, metadata !9, null}
!49 = metadata !{i32 786688, metadata !9, metadata !"cyclic", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cyclic] [line 28]
!50 = metadata !{i32 28, i32 9, metadata !9, null}
!51 = metadata !{i32 2}
!52 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 30]
!53 = metadata !{i32 30, i32 9, metadata !9, null}
!54 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777234, metadata !8, i32 0, metadata !55} ; [ DW_TAG_arg_variable ] [size] [line 18]
!55 = metadata !{i32 32, i32 20, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 31, i32 26, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !9, i32 31, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 18, i32 26, metadata !4, metadata !55}
!59 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 19, metadata !8, i32 0, metadata !55} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 19]
!60 = metadata !{i32 19, i32 8, metadata !4, metadata !55}
!61 = metadata !{i32 786688, metadata !56, metadata !"body", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [body] [line 32]
!62 = metadata !{i32 32, i32 13, metadata !56, null}
!63 = metadata !{i32 31, i32 10, metadata !57, null}
!64 = metadata !{i32 31, i32 10, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !66, i32 31, i32 10, i32 2, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 786443, metadata !1, metadata !57, i32 31, i32 10, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 19, i32 4, metadata !4, metadata !55}
!68 = metadata !{i32 20, i32 4, metadata !4, metadata !55}
!69 = metadata !{i32 33, i32 9, metadata !56, null}
!70 = metadata !{i32 34, i32 9, metadata !56, null}
!71 = metadata !{i32 35, i32 9, metadata !56, null}
!72 = metadata !{i32 36, i32 9, metadata !56, null}
!73 = metadata !{i32 31, i32 21, metadata !57, null}
!74 = metadata !{i32 38, i32 5, metadata !9, null}
!75 = metadata !{i32 39, i32 5, metadata !9, null}
!76 = metadata !{i32 786689, metadata !10, metadata !"list", metadata !5, i32 16777257, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [list] [line 41]
!77 = metadata !{i32 41, i32 18, metadata !10, null}
!78 = metadata !{i32 786688, metadata !10, metadata !"begin", metadata !5, i32 43, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [begin] [line 43]
!79 = metadata !{i32 43, i32 9, metadata !10, null}
!80 = metadata !{i32 44, i32 5, metadata !10, null}
!81 = metadata !{i32 44, i32 5, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !10, i32 44, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 45, i32 9, metadata !10, null}
!84 = metadata !{i32 46, i32 5, metadata !10, null}
!85 = metadata !{i32 51, i32 15, metadata !11, null}
!86 = metadata !{i32 786688, metadata !11, metadata !"num", metadata !5, i32 51, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 51]
!87 = metadata !{i32 51, i32 9, metadata !11, null}
!88 = metadata !{i32 52, i32 9, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !11, i32 52, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 52, i32 9, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !89, i32 52, i32 9, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 786689, metadata !9, metadata !"n", metadata !5, i32 16777240, metadata !8, i32 0, metadata !93} ; [ DW_TAG_arg_variable ] [n] [line 24]
!93 = metadata !{i32 54, i32 16, metadata !11, null}
!94 = metadata !{i32 24, i32 18, metadata !9, metadata !93}
!95 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777234, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [size] [line 18]
!96 = metadata !{i32 25, i32 16, metadata !9, metadata !93}
!97 = metadata !{i32 18, i32 26, metadata !4, metadata !96}
!98 = metadata !{i32 19, i32 4, metadata !4, metadata !96}
!99 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 19, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 19]
!100 = metadata !{i32 19, i32 8, metadata !4, metadata !96}
!101 = metadata !{i32 20, i32 4, metadata !4, metadata !96}
!102 = metadata !{i32 786688, metadata !9, metadata !"head", metadata !5, i32 25, metadata !8, i32 0, metadata !93} ; [ DW_TAG_auto_variable ] [head] [line 25]
!103 = metadata !{i32 25, i32 9, metadata !9, metadata !93}
!104 = metadata !{i32 26, i32 5, metadata !9, metadata !93}
!105 = metadata !{i32 27, i32 5, metadata !9, metadata !93}
!106 = metadata !{i32 786688, metadata !9, metadata !"cyclic", metadata !5, i32 28, metadata !8, i32 0, metadata !93} ; [ DW_TAG_auto_variable ] [cyclic] [line 28]
!107 = metadata !{i32 28, i32 9, metadata !9, metadata !93}
!108 = metadata !{i32 786688, metadata !9, metadata !"i", metadata !5, i32 30, metadata !8, i32 0, metadata !93} ; [ DW_TAG_auto_variable ] [i] [line 30]
!109 = metadata !{i32 30, i32 9, metadata !9, metadata !93}
!110 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777234, metadata !8, i32 0, metadata !111} ; [ DW_TAG_arg_variable ] [size] [line 18]
!111 = metadata !{i32 32, i32 20, metadata !56, metadata !93}
!112 = metadata !{i32 18, i32 26, metadata !4, metadata !111}
!113 = metadata !{i32 31, i32 10, metadata !57, metadata !93}
!114 = metadata !{i32 31, i32 10, metadata !65, metadata !93}
!115 = metadata !{i32 19, i32 4, metadata !4, metadata !111}
!116 = metadata !{i32 20, i32 4, metadata !4, metadata !111}
!117 = metadata !{i32 33, i32 9, metadata !56, metadata !93}
!118 = metadata !{i32 34, i32 9, metadata !56, metadata !93}
!119 = metadata !{i32 35, i32 9, metadata !56, metadata !93}
!120 = metadata !{i32 36, i32 9, metadata !56, metadata !93}
!121 = metadata !{i32 31, i32 21, metadata !57, metadata !93}
!122 = metadata !{i32 38, i32 5, metadata !9, metadata !93}
!123 = metadata !{i32 786688, metadata !11, metadata !"list", metadata !5, i32 54, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 54]
!124 = metadata !{i32 54, i32 9, metadata !11, null}
!125 = metadata !{i32 786688, metadata !11, metadata !"node", metadata !5, i32 55, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [node] [line 55]
!126 = metadata !{i32 55, i32 9, metadata !11, null}
!127 = metadata !{i32 786689, metadata !10, metadata !"list", metadata !5, i32 16777257, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [list] [line 41]
!128 = metadata !{i32 56, i32 15, metadata !11, null}
!129 = metadata !{i32 41, i32 18, metadata !10, metadata !128}
!130 = metadata !{i32 786688, metadata !10, metadata !"begin", metadata !5, i32 43, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [begin] [line 43]
!131 = metadata !{i32 43, i32 9, metadata !10, metadata !128}
!132 = metadata !{i32 44, i32 5, metadata !10, metadata !128}
!133 = metadata !{i32 44, i32 5, metadata !82, metadata !128}
!134 = metadata !{i32 45, i32 9, metadata !10, metadata !128}
!135 = metadata !{i32 58, i32 5, metadata !136, null} ; [ DW_TAG_imported_module ]
!136 = metadata !{i32 786443, metadata !1, metadata !11, i32 58, i32 5, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!137 = metadata !{i32 60, i32 13, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !139, i32 60, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!139 = metadata !{i32 786443, metadata !1, metadata !11, i32 59, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!140 = metadata !{i32 61, i32 13, metadata !138, null}
!141 = metadata !{i32 62, i32 9, metadata !139, null}
!142 = metadata !{i32 63, i32 5, metadata !139, null}
!143 = metadata !{i32 65, i32 1, metadata !11, null}

