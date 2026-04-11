; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Node = type { i64, i64 }

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x %struct.Node] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !30), !dbg !31
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !34), !dbg !35
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !36
  %"1" = add nsw i64 %"0", 1, !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !37), !dbg !38
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !39
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !39

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !41
  %"4" = sub nsw i64 %"3", 1, !dbg !41
  %"5" = srem i64 %"4", %"1", !dbg !41
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !41
  br label %wrap_around_bb4, !dbg !41

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !43
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !43

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !45
  %"9" = sub nsw i64 %"8", 1, !dbg !45
  %"10" = srem i64 %"9", %"1", !dbg !45
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !45
  br label %wrap_around_bb4, !dbg !45

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !47
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !48), !dbg !49
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !51), !dbg !52
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !53
  %"14" = add nsw i32 %"13", %size, !dbg !53
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !53
  ret i32 %"12", !dbg !54
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !56), !dbg !58
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !59
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !60), !dbg !61
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !62
  %"17" = add nsw i32 %"16", 16, !dbg !62
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !63), !dbg !64
  %"18" = call i64 @__VERIFIER_nondet_int(), !dbg !65
  %"19" = sext i32 %"15" to i64, !dbg !65
  %"20" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"19", !dbg !65
  %"21" = getelementptr inbounds %struct.Node* %"20", i32 0, i32 1, !dbg !65
  store i64 %"18", i64* %"21", align 8, !dbg !65
  %"22" = call i64 @__VERIFIER_nondet_int(), !dbg !66
  %"23" = sext i32 %"15" to i64, !dbg !66
  %"24" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"23", !dbg !66
  %"25" = getelementptr inbounds %struct.Node* %"24", i32 0, i32 0, !dbg !66
  store i64 %"22", i64* %"25", align 8, !dbg !66
  %"26" = sext i32 %"15" to i64, !dbg !67
  %"27" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"26", !dbg !67
  %"28" = getelementptr inbounds %struct.Node* %"27", i32 0, i32 1, !dbg !67
  %"29" = load i64* %"28", align 8, !dbg !67
  %"30" = icmp sle i64 %"29", -2, !dbg !67
  br i1 %"30", label %main_bb29, label %main_bb7, !dbg !67

main_bb7:                                         ; preds = %main_bb6
  %"31" = sext i32 %"15" to i64, !dbg !69
  %"32" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"31", !dbg !69
  %"33" = getelementptr inbounds %struct.Node* %"32", i32 0, i32 0, !dbg !69
  %"34" = load i64* %"33", align 8, !dbg !69
  %"35" = icmp slt i64 %"34", 1, !dbg !69
  br i1 %"35", label %main_bb29, label %main_bb8, !dbg !69

main_bb8:                                         ; preds = %main_bb7
  %"36" = sext i32 %"15" to i64, !dbg !71
  %"37" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"36", !dbg !71
  %"38" = getelementptr inbounds %struct.Node* %"37", i32 0, i32 1, !dbg !71
  %"39" = load i64* %"38", align 8, !dbg !71
  call void @llvm.dbg.value(metadata !{i64 %"39"}, i64 0, metadata !72), !dbg !73
  %"40" = call i64 @__VERIFIER_nondet_int(), !dbg !74
  call void @llvm.dbg.value(metadata !{i64 %"40"}, i64 0, metadata !75), !dbg !76
  %"41" = icmp sgt i64 %"40", 0, !dbg !77
  %"42" = icmp sge i64 %"39", 1, !dbg !79
  %or.cond = and i1 %"41", %"42", !dbg !77
  br i1 %or.cond, label %main_bb9, label %main_bb13, !dbg !77

main_bb9:                                         ; preds = %main_bb8
  %"43" = sub nsw i64 %"39", 1, !dbg !81
  call void @llvm.dbg.value(metadata !{i64 %"43"}, i64 0, metadata !83), !dbg !84
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !86), !dbg !87
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !89), !dbg !90
  call void @llvm.dbg.value(metadata !91, i64 0, metadata !92), !dbg !93
  %"44" = icmp sgt i64 %"43", 2147483647, !dbg !94
  br i1 %"44", label %main_bb10, label %main_bb11, !dbg !94

main_bb10:                                        ; preds = %main_bb9
  %"45" = sub nsw i64 %"43", 2147483647, !dbg !95
  %"46" = sub nsw i64 %"45", 1, !dbg !95
  %"47" = srem i64 %"46", 4294967296, !dbg !95
  %"48" = add nsw i64 -2147483648, %"47", !dbg !95
  br label %main_wrap_around.exit8, !dbg !95

main_bb11:                                        ; preds = %main_bb9
  %"49" = icmp slt i64 %"43", -2147483648, !dbg !96
  br i1 %"49", label %main_bb12, label %main_wrap_around.exit8, !dbg !96

main_bb12:                                        ; preds = %main_bb11
  %"50" = sub nsw i64 -2147483648, %"43", !dbg !97
  %"51" = sub nsw i64 %"50", 1, !dbg !97
  %"52" = srem i64 %"51", 4294967296, !dbg !97
  %"53" = sub nsw i64 2147483647, %"52", !dbg !97
  br label %main_wrap_around.exit8, !dbg !97

main_bb13:                                        ; preds = %main_bb8
  %"54" = add nsw i64 %"39", 1, !dbg !98
  call void @llvm.dbg.value(metadata !{i64 %"54"}, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !102), !dbg !103
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !104), !dbg !105
  call void @llvm.dbg.value(metadata !91, i64 0, metadata !106), !dbg !107
  %"55" = icmp sgt i64 %"54", 2147483647, !dbg !108
  br i1 %"55", label %main_bb14, label %main_bb15, !dbg !108

main_bb14:                                        ; preds = %main_bb13
  %"56" = sub nsw i64 %"54", 2147483647, !dbg !109
  %"57" = sub nsw i64 %"56", 1, !dbg !109
  %"58" = srem i64 %"57", 4294967296, !dbg !109
  %"59" = add nsw i64 -2147483648, %"58", !dbg !109
  br label %main_wrap_around.exit8, !dbg !109

main_bb15:                                        ; preds = %main_bb13
  %"60" = icmp slt i64 %"54", -2147483648, !dbg !110
  br i1 %"60", label %main_bb16, label %main_wrap_around.exit8, !dbg !110

main_bb16:                                        ; preds = %main_bb15
  %"61" = sub nsw i64 -2147483648, %"54", !dbg !111
  %"62" = sub nsw i64 %"61", 1, !dbg !111
  %"63" = srem i64 %"62", 4294967296, !dbg !111
  %"64" = sub nsw i64 2147483647, %"63", !dbg !111
  br label %main_wrap_around.exit8, !dbg !111

main_wrap_around.exit8:                           ; preds = %main_bb16, %main_bb15, %main_bb14, %main_bb12, %main_bb11, %main_bb10
  %direction.0 = phi i64 [ -1, %main_bb10 ], [ -1, %main_bb11 ], [ -1, %main_bb12 ], [ 1, %main_bb14 ], [ 1, %main_bb15 ], [ 1, %main_bb16 ]
  %pos.0 = phi i64 [ %"48", %main_bb10 ], [ %"53", %main_bb12 ], [ %"43", %main_bb11 ], [ %"59", %main_bb14 ], [ %"64", %main_bb16 ], [ %"54", %main_bb15 ]
  %"65" = sext i32 %"15" to i64, !dbg !112
  %"66" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"65", !dbg !112
  %"67" = getelementptr inbounds %struct.Node* %"66", i32 0, i32 0, !dbg !112
  %"68" = load i64* %"67", align 8, !dbg !112
  %"69" = srem i64 %pos.0, %"68", !dbg !112
  call void @llvm.dbg.value(metadata !{i64 %"69"}, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !117), !dbg !118
  call void @llvm.dbg.value(metadata !91, i64 0, metadata !119), !dbg !120
  %"70" = icmp sgt i64 %"69", 2147483647, !dbg !121
  br i1 %"70", label %main_bb17, label %main_bb18, !dbg !121

main_bb17:                                        ; preds = %main_wrap_around.exit8
  %"71" = sub nsw i64 %"69", 2147483647, !dbg !122
  %"72" = sub nsw i64 %"71", 1, !dbg !122
  %"73" = srem i64 %"72", 4294967296, !dbg !122
  %"74" = add nsw i64 -2147483648, %"73", !dbg !122
  br label %main_wrap_around.exit4, !dbg !122

main_bb18:                                        ; preds = %main_wrap_around.exit8
  %"75" = icmp slt i64 %"69", -2147483648, !dbg !123
  br i1 %"75", label %main_bb19, label %main_wrap_around.exit4, !dbg !123

main_bb19:                                        ; preds = %main_bb18
  %"76" = sub nsw i64 -2147483648, %"69", !dbg !124
  %"77" = sub nsw i64 %"76", 1, !dbg !124
  %"78" = srem i64 %"77", 4294967296, !dbg !124
  %"79" = sub nsw i64 2147483647, %"78", !dbg !124
  br label %main_wrap_around.exit4, !dbg !124

main_wrap_around.exit4:                           ; preds = %main_bb17, %main_bb18, %main_bb19
  %.0.i3 = phi i64 [ %"74", %main_bb17 ], [ %"79", %main_bb19 ], [ %"69", %main_bb18 ], !dbg !112
  call void @llvm.dbg.value(metadata !{i64 %.0.i3}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !{i64 %.0.i3}, i64 0, metadata !125), !dbg !126
  call void @llvm.dbg.value(metadata !{i64 %"88"}, i64 0, metadata !127), !dbg !130
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !131), !dbg !132
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !133), !dbg !134
  call void @llvm.dbg.value(metadata !91, i64 0, metadata !135), !dbg !136
  call void @llvm.dbg.value(metadata !{i64 %.0.i1}, i64 0, metadata !72), !dbg !73
  %"80" = sext i32 %"15" to i64, !dbg !137
  %"81" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"80", !dbg !137
  %"82" = getelementptr inbounds %struct.Node* %"81", i32 0, i32 0, !dbg !137
  %"83" = load i64* %"82", align 8, !dbg !137
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !72), !dbg !73
  %"84" = sext i32 %"15" to i64, !dbg !140
  %"85" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"84", !dbg !140
  %"86" = getelementptr inbounds %struct.Node* %"85", i32 0, i32 0, !dbg !140
  %"87" = load i64* %"86", align 8, !dbg !140
  call void @llvm.dbg.value(metadata !{i64 %"101"}, i64 0, metadata !143), !dbg !144
  call void @llvm.dbg.value(metadata !85, i64 0, metadata !145), !dbg !146
  call void @llvm.dbg.value(metadata !88, i64 0, metadata !147), !dbg !148
  call void @llvm.dbg.value(metadata !91, i64 0, metadata !149), !dbg !150
  br label %main_bb20, !dbg !151

main_bb20:                                        ; preds = %main_wrap_around.exit, %main_wrap_around.exit4
  %pos.1 = phi i64 [ %.0.i3, %main_wrap_around.exit4 ], [ %pos.3, %main_wrap_around.exit ]
  %"88" = add nsw i64 %pos.1, %direction.0, !dbg !128
  %"89" = icmp sgt i64 %"88", 2147483647, !dbg !152
  br i1 %"89", label %main_bb21, label %main_bb22, !dbg !152

main_bb21:                                        ; preds = %main_bb20
  %"90" = sub nsw i64 %"88", 2147483647, !dbg !153
  %"91" = sub nsw i64 %"90", 1, !dbg !153
  %"92" = srem i64 %"91", 4294967296, !dbg !153
  %"93" = add nsw i64 -2147483648, %"92", !dbg !153
  br label %main_wrap_around.exit2, !dbg !153

main_bb22:                                        ; preds = %main_bb20
  %"94" = icmp slt i64 %"88", -2147483648, !dbg !154
  br i1 %"94", label %main_bb23, label %main_wrap_around.exit2, !dbg !154

main_bb23:                                        ; preds = %main_bb22
  %"95" = sub nsw i64 -2147483648, %"88", !dbg !155
  %"96" = sub nsw i64 %"95", 1, !dbg !155
  %"97" = srem i64 %"96", 4294967296, !dbg !155
  %"98" = sub nsw i64 2147483647, %"97", !dbg !155
  br label %main_wrap_around.exit2, !dbg !155

main_wrap_around.exit2:                           ; preds = %main_bb21, %main_bb22, %main_bb23
  %.0.i1 = phi i64 [ %"93", %main_bb21 ], [ %"98", %main_bb23 ], [ %"88", %main_bb22 ], !dbg !128
  %"99" = icmp eq i64 %.0.i1, %"83", !dbg !137
  br i1 %"99", label %main_wrap_around.exit, label %main_bb24, !dbg !137

main_bb24:                                        ; preds = %main_wrap_around.exit2
  %"100" = icmp slt i64 %.0.i1, 0, !dbg !156
  br i1 %"100", label %main_bb25, label %main_wrap_around.exit, !dbg !156

main_bb25:                                        ; preds = %main_bb24
  %"101" = sub nsw i64 %"87", 1, !dbg !140
  %"102" = icmp sgt i64 %"101", 2147483647, !dbg !157
  br i1 %"102", label %main_bb26, label %main_bb27, !dbg !157

main_bb26:                                        ; preds = %main_bb25
  %"103" = sub nsw i64 %"101", 2147483647, !dbg !158
  %"104" = sub nsw i64 %"103", 1, !dbg !158
  %"105" = srem i64 %"104", 4294967296, !dbg !158
  %"106" = add nsw i64 -2147483648, %"105", !dbg !158
  br label %main_wrap_around.exit, !dbg !158

main_bb27:                                        ; preds = %main_bb25
  %"107" = icmp slt i64 %"101", -2147483648, !dbg !159
  br i1 %"107", label %main_bb28, label %main_wrap_around.exit, !dbg !159

main_bb28:                                        ; preds = %main_bb27
  %"108" = sub nsw i64 -2147483648, %"101", !dbg !160
  %"109" = sub nsw i64 %"108", 1, !dbg !160
  %"110" = srem i64 %"109", 4294967296, !dbg !160
  %"111" = sub nsw i64 2147483647, %"110", !dbg !160
  br label %main_wrap_around.exit, !dbg !160

main_wrap_around.exit:                            ; preds = %main_wrap_around.exit2, %main_bb28, %main_bb27, %main_bb26, %main_bb24
  %pos.3 = phi i64 [ 0, %main_wrap_around.exit2 ], [ %.0.i1, %main_bb24 ], [ %"106", %main_bb26 ], [ %"111", %main_bb28 ], [ %"101", %main_bb27 ]
  %"112" = icmp ne i64 %pos.3, %.0.i3, !dbg !161
  br i1 %"112", label %main_bb20, label %main_bb29, !dbg !161

main_bb29:                                        ; preds = %main_wrap_around.exit, %main_bb6, %main_bb7
  ret i32 0, !dbg !163
}

declare i64 @__VERIFIER_nondet_int() #2

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 31, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 37, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 38} ; [ DW_TAG_subprogram ] [line 37] [def] [scope 38] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !12}
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 20, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 20] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 19, metadata !19, i32 0, i32 1, [100000 x %struct.Node]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 19] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12800000, i64 64, i32 0, i32 0, metadata !20, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 12800000, align 64, offset 0] [from Node]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"Node", i32 14, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Node] [line 14, size 0, align 0, offset 0] [from Node]
!21 = metadata !{i32 786451, metadata !1, null, metadata !"Node", i32 11, i64 128, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 11, size 128, align 64, offset 0] [def] [from ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"size", i32 12, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 12, size 64, align 64, offset 0] [from long long int]
!24 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"selected", i32 13, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [selected] [line 13, size 64, align 64, offset 64] [from long long int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 21]
!31 = metadata !{i32 21, i32 33, metadata !4, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!33 = metadata !{i32 21, i32 50, metadata !4, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!35 = metadata !{i32 21, i32 73, metadata !4, null}
!36 = metadata !{i32 22, i32 5, metadata !4, null}
!37 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 22]
!38 = metadata !{i32 22, i32 15, metadata !4, null}
!39 = metadata !{i32 23, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 24, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !40, i32 23, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 26, i32 14, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !40, i32 26, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 27, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !44, i32 26, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 30, i32 1, metadata !4, null}
!48 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777247, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 31]
!49 = metadata !{i32 31, i32 26, metadata !9, null}
!50 = metadata !{i32 32, i32 4, metadata !9, null}
!51 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 32, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!52 = metadata !{i32 32, i32 8, metadata !9, null}
!53 = metadata !{i32 33, i32 4, metadata !9, null}
!54 = metadata !{i32 34, i32 4, metadata !9, null}
!55 = metadata !{i32 16}
!56 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777247, metadata !12, i32 0, metadata !57} ; [ DW_TAG_arg_variable ] [size] [line 31]
!57 = metadata !{i32 39, i32 16, metadata !13, null}
!58 = metadata !{i32 31, i32 26, metadata !9, metadata !57}
!59 = metadata !{i32 32, i32 4, metadata !9, metadata !57}
!60 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 32, metadata !12, i32 0, metadata !57} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 32]
!61 = metadata !{i32 32, i32 8, metadata !9, metadata !57}
!62 = metadata !{i32 33, i32 4, metadata !9, metadata !57}
!63 = metadata !{i32 786688, metadata !13, metadata !"menu", metadata !5, i32 39, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [menu] [line 39]
!64 = metadata !{i32 39, i32 9, metadata !13, null}
!65 = metadata !{i32 40, i32 30, metadata !13, null}
!66 = metadata !{i32 41, i32 26, metadata !13, null}
!67 = metadata !{i32 42, i32 9, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !13, i32 42, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 42, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 42, i32 9, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 46, i32 5, metadata !13, null}
!72 = metadata !{i32 786688, metadata !13, metadata !"pos", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 46]
!73 = metadata !{i32 46, i32 15, metadata !13, null}
!74 = metadata !{i32 48, i32 28, metadata !13, null}
!75 = metadata !{i32 786688, metadata !13, metadata !"action_id", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [action_id] [line 48]
!76 = metadata !{i32 48, i32 15, metadata !13, null}
!77 = metadata !{i32 49, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !13, i32 49, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 49, i32 9, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 49, i32 9, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 51, i32 16, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !78, i32 50, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, metadata !81} ; [ DW_TAG_arg_variable ] [value] [line 21]
!84 = metadata !{i32 21, i32 33, metadata !4, metadata !81}
!85 = metadata !{i64 -2147483648}
!86 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, metadata !81} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!87 = metadata !{i32 21, i32 50, metadata !4, metadata !81}
!88 = metadata !{i64 2147483647}
!89 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, metadata !81} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!90 = metadata !{i32 21, i32 73, metadata !4, metadata !81}
!91 = metadata !{i64 4294967296}
!92 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, metadata !81} ; [ DW_TAG_auto_variable ] [range] [line 22]
!93 = metadata !{i32 22, i32 15, metadata !4, metadata !81}
!94 = metadata !{i32 23, i32 9, metadata !40, metadata !81}
!95 = metadata !{i32 24, i32 9, metadata !42, metadata !81}
!96 = metadata !{i32 26, i32 14, metadata !44, metadata !81}
!97 = metadata !{i32 27, i32 9, metadata !46, metadata !81}
!98 = metadata !{i32 56, i32 16, metadata !99, null}
!99 = metadata !{i32 786443, metadata !1, metadata !78, i32 55, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!100 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [value] [line 21]
!101 = metadata !{i32 21, i32 33, metadata !4, metadata !98}
!102 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!103 = metadata !{i32 21, i32 50, metadata !4, metadata !98}
!104 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, metadata !98} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!105 = metadata !{i32 21, i32 73, metadata !4, metadata !98}
!106 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, metadata !98} ; [ DW_TAG_auto_variable ] [range] [line 22]
!107 = metadata !{i32 22, i32 15, metadata !4, metadata !98}
!108 = metadata !{i32 23, i32 9, metadata !40, metadata !98}
!109 = metadata !{i32 24, i32 9, metadata !42, metadata !98}
!110 = metadata !{i32 26, i32 14, metadata !44, metadata !98}
!111 = metadata !{i32 27, i32 9, metadata !46, metadata !98}
!112 = metadata !{i32 59, i32 11, metadata !13, null}
!113 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, metadata !112} ; [ DW_TAG_arg_variable ] [value] [line 21]
!114 = metadata !{i32 21, i32 33, metadata !4, metadata !112}
!115 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, metadata !112} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!116 = metadata !{i32 21, i32 50, metadata !4, metadata !112}
!117 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, metadata !112} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!118 = metadata !{i32 21, i32 73, metadata !4, metadata !112}
!119 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, metadata !112} ; [ DW_TAG_auto_variable ] [range] [line 22]
!120 = metadata !{i32 22, i32 15, metadata !4, metadata !112}
!121 = metadata !{i32 23, i32 9, metadata !40, metadata !112}
!122 = metadata !{i32 24, i32 9, metadata !42, metadata !112}
!123 = metadata !{i32 26, i32 14, metadata !44, metadata !112}
!124 = metadata !{i32 27, i32 9, metadata !46, metadata !112}
!125 = metadata !{i32 786688, metadata !13, metadata !"start", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [start] [line 60]
!126 = metadata !{i32 60, i32 15, metadata !13, null}
!127 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [value] [line 21]
!128 = metadata !{i32 62, i32 15, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!130 = metadata !{i32 21, i32 33, metadata !4, metadata !128}
!131 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!132 = metadata !{i32 21, i32 50, metadata !4, metadata !128}
!133 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, metadata !128} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!134 = metadata !{i32 21, i32 73, metadata !4, metadata !128}
!135 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, metadata !128} ; [ DW_TAG_auto_variable ] [range] [line 22]
!136 = metadata !{i32 22, i32 15, metadata !4, metadata !128}
!137 = metadata !{i32 63, i32 13, metadata !138, null}
!138 = metadata !{i32 786443, metadata !1, metadata !129, i32 63, i32 13, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!139 = metadata !{i64 0}
!140 = metadata !{i32 67, i32 9, metadata !141, null}
!141 = metadata !{i32 786443, metadata !1, metadata !142, i32 67, i32 1, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!142 = metadata !{i32 786443, metadata !1, metadata !138, i32 66, i32 18, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!143 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777237, metadata !8, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [value] [line 21]
!144 = metadata !{i32 21, i32 33, metadata !4, metadata !140}
!145 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554453, metadata !8, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [lower_bound] [line 21]
!146 = metadata !{i32 21, i32 50, metadata !4, metadata !140}
!147 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331669, metadata !8, i32 0, metadata !140} ; [ DW_TAG_arg_variable ] [upper_bound] [line 21]
!148 = metadata !{i32 21, i32 73, metadata !4, metadata !140}
!149 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 22, metadata !8, i32 0, metadata !140} ; [ DW_TAG_auto_variable ] [range] [line 22]
!150 = metadata !{i32 22, i32 15, metadata !4, metadata !140}
!151 = metadata !{i32 61, i32 5, metadata !13, null}
!152 = metadata !{i32 23, i32 9, metadata !40, metadata !128}
!153 = metadata !{i32 24, i32 9, metadata !42, metadata !128}
!154 = metadata !{i32 26, i32 14, metadata !44, metadata !128}
!155 = metadata !{i32 27, i32 9, metadata !46, metadata !128}
!156 = metadata !{i32 66, i32 18, metadata !142, null}
!157 = metadata !{i32 23, i32 9, metadata !40, metadata !140}
!158 = metadata !{i32 24, i32 9, metadata !42, metadata !140}
!159 = metadata !{i32 26, i32 14, metadata !44, metadata !140}
!160 = metadata !{i32 27, i32 9, metadata !46, metadata !140}
!161 = metadata !{i32 69, i32 5, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !129, i32 69, i32 5, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!163 = metadata !{i32 71, i32 1, metadata !13, null}

