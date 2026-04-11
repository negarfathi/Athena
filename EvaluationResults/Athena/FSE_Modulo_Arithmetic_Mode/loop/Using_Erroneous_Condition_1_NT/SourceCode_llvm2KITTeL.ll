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
  %"30" = icmp slt i64 %"29", -2, !dbg !67
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
  br i1 %"41", label %main_bb9, label %main_bb13, !dbg !77

main_bb9:                                         ; preds = %main_bb8
  %"42" = sub nsw i64 %"39", 1, !dbg !79
  call void @llvm.dbg.value(metadata !{i64 %"42"}, i64 0, metadata !81), !dbg !82
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !84), !dbg !85
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !87), !dbg !88
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !90), !dbg !91
  %"43" = icmp sgt i64 %"42", 2147483647, !dbg !92
  br i1 %"43", label %main_bb10, label %main_bb11, !dbg !92

main_bb10:                                        ; preds = %main_bb9
  %"44" = sub nsw i64 %"42", 2147483647, !dbg !93
  %"45" = sub nsw i64 %"44", 1, !dbg !93
  %"46" = srem i64 %"45", 4294967296, !dbg !93
  %"47" = add nsw i64 -2147483648, %"46", !dbg !93
  br label %main_wrap_around.exit8, !dbg !93

main_bb11:                                        ; preds = %main_bb9
  %"48" = icmp slt i64 %"42", -2147483648, !dbg !94
  br i1 %"48", label %main_bb12, label %main_wrap_around.exit8, !dbg !94

main_bb12:                                        ; preds = %main_bb11
  %"49" = sub nsw i64 -2147483648, %"42", !dbg !95
  %"50" = sub nsw i64 %"49", 1, !dbg !95
  %"51" = srem i64 %"50", 4294967296, !dbg !95
  %"52" = sub nsw i64 2147483647, %"51", !dbg !95
  br label %main_wrap_around.exit8, !dbg !95

main_bb13:                                        ; preds = %main_bb8
  %"53" = add nsw i64 %"39", 1, !dbg !96
  call void @llvm.dbg.value(metadata !{i64 %"53"}, i64 0, metadata !98), !dbg !99
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !100), !dbg !101
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !102), !dbg !103
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !104), !dbg !105
  %"54" = icmp sgt i64 %"53", 2147483647, !dbg !106
  br i1 %"54", label %main_bb14, label %main_bb15, !dbg !106

main_bb14:                                        ; preds = %main_bb13
  %"55" = sub nsw i64 %"53", 2147483647, !dbg !107
  %"56" = sub nsw i64 %"55", 1, !dbg !107
  %"57" = srem i64 %"56", 4294967296, !dbg !107
  %"58" = add nsw i64 -2147483648, %"57", !dbg !107
  br label %main_wrap_around.exit8, !dbg !107

main_bb15:                                        ; preds = %main_bb13
  %"59" = icmp slt i64 %"53", -2147483648, !dbg !108
  br i1 %"59", label %main_bb16, label %main_wrap_around.exit8, !dbg !108

main_bb16:                                        ; preds = %main_bb15
  %"60" = sub nsw i64 -2147483648, %"53", !dbg !109
  %"61" = sub nsw i64 %"60", 1, !dbg !109
  %"62" = srem i64 %"61", 4294967296, !dbg !109
  %"63" = sub nsw i64 2147483647, %"62", !dbg !109
  br label %main_wrap_around.exit8, !dbg !109

main_wrap_around.exit8:                           ; preds = %main_bb16, %main_bb15, %main_bb14, %main_bb12, %main_bb11, %main_bb10
  %direction.0 = phi i64 [ -1, %main_bb10 ], [ -1, %main_bb11 ], [ -1, %main_bb12 ], [ 1, %main_bb14 ], [ 1, %main_bb15 ], [ 1, %main_bb16 ]
  %pos.0 = phi i64 [ %"47", %main_bb10 ], [ %"52", %main_bb12 ], [ %"42", %main_bb11 ], [ %"58", %main_bb14 ], [ %"63", %main_bb16 ], [ %"53", %main_bb15 ]
  %"64" = sext i32 %"15" to i64, !dbg !110
  %"65" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"64", !dbg !110
  %"66" = getelementptr inbounds %struct.Node* %"65", i32 0, i32 0, !dbg !110
  %"67" = load i64* %"66", align 8, !dbg !110
  %"68" = srem i64 %pos.0, %"67", !dbg !110
  call void @llvm.dbg.value(metadata !{i64 %"68"}, i64 0, metadata !111), !dbg !112
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !113), !dbg !114
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !115), !dbg !116
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !117), !dbg !118
  %"69" = icmp sgt i64 %"68", 2147483647, !dbg !119
  br i1 %"69", label %main_bb17, label %main_bb18, !dbg !119

main_bb17:                                        ; preds = %main_wrap_around.exit8
  %"70" = sub nsw i64 %"68", 2147483647, !dbg !120
  %"71" = sub nsw i64 %"70", 1, !dbg !120
  %"72" = srem i64 %"71", 4294967296, !dbg !120
  %"73" = add nsw i64 -2147483648, %"72", !dbg !120
  br label %main_wrap_around.exit4, !dbg !120

main_bb18:                                        ; preds = %main_wrap_around.exit8
  %"74" = icmp slt i64 %"68", -2147483648, !dbg !121
  br i1 %"74", label %main_bb19, label %main_wrap_around.exit4, !dbg !121

main_bb19:                                        ; preds = %main_bb18
  %"75" = sub nsw i64 -2147483648, %"68", !dbg !122
  %"76" = sub nsw i64 %"75", 1, !dbg !122
  %"77" = srem i64 %"76", 4294967296, !dbg !122
  %"78" = sub nsw i64 2147483647, %"77", !dbg !122
  br label %main_wrap_around.exit4, !dbg !122

main_wrap_around.exit4:                           ; preds = %main_bb17, %main_bb18, %main_bb19
  %.0.i3 = phi i64 [ %"73", %main_bb17 ], [ %"78", %main_bb19 ], [ %"68", %main_bb18 ], !dbg !110
  call void @llvm.dbg.value(metadata !{i64 %.0.i3}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !{i64 %"91"}, i64 0, metadata !123), !dbg !126
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !127), !dbg !128
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !129), !dbg !130
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !131), !dbg !132
  call void @llvm.dbg.value(metadata !{i64 %.0.i1}, i64 0, metadata !72), !dbg !73
  %"79" = sext i32 %"15" to i64, !dbg !133
  %"80" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"79", !dbg !133
  %"81" = getelementptr inbounds %struct.Node* %"80", i32 0, i32 0, !dbg !133
  %"82" = load i64* %"81", align 8, !dbg !133
  call void @llvm.dbg.value(metadata !135, i64 0, metadata !72), !dbg !73
  %"83" = sext i32 %"15" to i64, !dbg !136
  %"84" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"83", !dbg !136
  %"85" = getelementptr inbounds %struct.Node* %"84", i32 0, i32 1, !dbg !136
  %"86" = load i64* %"85", align 8, !dbg !136
  %"87" = sext i32 %"15" to i64, !dbg !138
  %"88" = getelementptr inbounds [100000 x %struct.Node]* @memory0, i32 0, i64 %"87", !dbg !138
  %"89" = getelementptr inbounds %struct.Node* %"88", i32 0, i32 0, !dbg !138
  %"90" = load i64* %"89", align 8, !dbg !138
  call void @llvm.dbg.value(metadata !{i64 %"104"}, i64 0, metadata !141), !dbg !142
  call void @llvm.dbg.value(metadata !83, i64 0, metadata !143), !dbg !144
  call void @llvm.dbg.value(metadata !86, i64 0, metadata !145), !dbg !146
  call void @llvm.dbg.value(metadata !89, i64 0, metadata !147), !dbg !148
  br label %main_bb20, !dbg !149

main_bb20:                                        ; preds = %main_wrap_around.exit, %main_wrap_around.exit4
  %pos.1 = phi i64 [ %.0.i3, %main_wrap_around.exit4 ], [ %pos.3, %main_wrap_around.exit ]
  %"91" = add nsw i64 %pos.1, %direction.0, !dbg !124
  %"92" = icmp sgt i64 %"91", 2147483647, !dbg !150
  br i1 %"92", label %main_bb21, label %main_bb22, !dbg !150

main_bb21:                                        ; preds = %main_bb20
  %"93" = sub nsw i64 %"91", 2147483647, !dbg !151
  %"94" = sub nsw i64 %"93", 1, !dbg !151
  %"95" = srem i64 %"94", 4294967296, !dbg !151
  %"96" = add nsw i64 -2147483648, %"95", !dbg !151
  br label %main_wrap_around.exit2, !dbg !151

main_bb22:                                        ; preds = %main_bb20
  %"97" = icmp slt i64 %"91", -2147483648, !dbg !152
  br i1 %"97", label %main_bb23, label %main_wrap_around.exit2, !dbg !152

main_bb23:                                        ; preds = %main_bb22
  %"98" = sub nsw i64 -2147483648, %"91", !dbg !153
  %"99" = sub nsw i64 %"98", 1, !dbg !153
  %"100" = srem i64 %"99", 4294967296, !dbg !153
  %"101" = sub nsw i64 2147483647, %"100", !dbg !153
  br label %main_wrap_around.exit2, !dbg !153

main_wrap_around.exit2:                           ; preds = %main_bb21, %main_bb22, %main_bb23
  %.0.i1 = phi i64 [ %"96", %main_bb21 ], [ %"101", %main_bb23 ], [ %"91", %main_bb22 ], !dbg !124
  %"102" = icmp eq i64 %.0.i1, %"82", !dbg !133
  br i1 %"102", label %main_wrap_around.exit, label %main_bb24, !dbg !133

main_bb24:                                        ; preds = %main_wrap_around.exit2
  %"103" = icmp slt i64 %.0.i1, 0, !dbg !154
  br i1 %"103", label %main_bb25, label %main_wrap_around.exit, !dbg !154

main_bb25:                                        ; preds = %main_bb24
  %"104" = sub nsw i64 %"90", 1, !dbg !138
  %"105" = icmp sgt i64 %"104", 2147483647, !dbg !155
  br i1 %"105", label %main_bb26, label %main_bb27, !dbg !155

main_bb26:                                        ; preds = %main_bb25
  %"106" = sub nsw i64 %"104", 2147483647, !dbg !156
  %"107" = sub nsw i64 %"106", 1, !dbg !156
  %"108" = srem i64 %"107", 4294967296, !dbg !156
  %"109" = add nsw i64 -2147483648, %"108", !dbg !156
  br label %main_wrap_around.exit, !dbg !156

main_bb27:                                        ; preds = %main_bb25
  %"110" = icmp slt i64 %"104", -2147483648, !dbg !157
  br i1 %"110", label %main_bb28, label %main_wrap_around.exit, !dbg !157

main_bb28:                                        ; preds = %main_bb27
  %"111" = sub nsw i64 -2147483648, %"104", !dbg !158
  %"112" = sub nsw i64 %"111", 1, !dbg !158
  %"113" = srem i64 %"112", 4294967296, !dbg !158
  %"114" = sub nsw i64 2147483647, %"113", !dbg !158
  br label %main_wrap_around.exit, !dbg !158

main_wrap_around.exit:                            ; preds = %main_wrap_around.exit2, %main_bb28, %main_bb27, %main_bb26, %main_bb24
  %pos.3 = phi i64 [ 0, %main_wrap_around.exit2 ], [ %.0.i1, %main_bb24 ], [ %"109", %main_bb26 ], [ %"114", %main_bb28 ], [ %"104", %main_bb27 ]
  %"115" = icmp ne i64 %pos.3, %"86", !dbg !136
  br i1 %"115", label %main_bb20, label %main_bb29, !dbg !136

main_bb29:                                        ; preds = %main_wrap_around.exit, %main_bb6, %main_bb7
  ret i32 0, !dbg !159
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 32, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 38, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 38] [def] [scope 39] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !12}
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 21, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 21] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 20, metadata !19, i32 0, i32 1, [100000 x %struct.Node]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 20] [def]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 12800000, i64 64, i32 0, i32 0, metadata !20, metadata !25, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 12800000, align 64, offset 0] [from Node]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"Node", i32 15, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [Node] [line 15, size 0, align 0, offset 0] [from Node]
!21 = metadata !{i32 786451, metadata !1, null, metadata !"Node", i32 12, i64 128, i64 64, i32 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [Node] [line 12, size 128, align 64, offset 0] [def] [from ]
!22 = metadata !{metadata !23, metadata !24}
!23 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"size", i32 13, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 13, size 64, align 64, offset 0] [from long long int]
!24 = metadata !{i32 786445, metadata !1, metadata !21, metadata !"selected", i32 14, i64 64, i64 64, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [selected] [line 14, size 64, align 64, offset 64] [from long long int]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 22]
!31 = metadata !{i32 22, i32 33, metadata !4, null}
!32 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!33 = metadata !{i32 22, i32 50, metadata !4, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!35 = metadata !{i32 22, i32 73, metadata !4, null}
!36 = metadata !{i32 23, i32 5, metadata !4, null}
!37 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 23]
!38 = metadata !{i32 23, i32 15, metadata !4, null}
!39 = metadata !{i32 24, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 25, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !40, i32 24, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 27, i32 14, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !40, i32 27, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 28, i32 9, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !44, i32 27, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 31, i32 1, metadata !4, null}
!48 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777248, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 32]
!49 = metadata !{i32 32, i32 26, metadata !9, null}
!50 = metadata !{i32 33, i32 4, metadata !9, null}
!51 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 33, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 33]
!52 = metadata !{i32 33, i32 8, metadata !9, null}
!53 = metadata !{i32 34, i32 4, metadata !9, null}
!54 = metadata !{i32 35, i32 4, metadata !9, null}
!55 = metadata !{i32 16}
!56 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777248, metadata !12, i32 0, metadata !57} ; [ DW_TAG_arg_variable ] [size] [line 32]
!57 = metadata !{i32 40, i32 16, metadata !13, null}
!58 = metadata !{i32 32, i32 26, metadata !9, metadata !57}
!59 = metadata !{i32 33, i32 4, metadata !9, metadata !57}
!60 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 33, metadata !12, i32 0, metadata !57} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 33]
!61 = metadata !{i32 33, i32 8, metadata !9, metadata !57}
!62 = metadata !{i32 34, i32 4, metadata !9, metadata !57}
!63 = metadata !{i32 786688, metadata !13, metadata !"menu", metadata !5, i32 40, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [menu] [line 40]
!64 = metadata !{i32 40, i32 9, metadata !13, null}
!65 = metadata !{i32 41, i32 30, metadata !13, null}
!66 = metadata !{i32 42, i32 26, metadata !13, null}
!67 = metadata !{i32 43, i32 9, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !13, i32 43, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 43, i32 9, metadata !70, null}
!70 = metadata !{i32 786443, metadata !1, metadata !68, i32 43, i32 9, i32 1, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 47, i32 5, metadata !13, null}
!72 = metadata !{i32 786688, metadata !13, metadata !"pos", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 47]
!73 = metadata !{i32 47, i32 15, metadata !13, null}
!74 = metadata !{i32 49, i32 28, metadata !13, null}
!75 = metadata !{i32 786688, metadata !13, metadata !"action_id", metadata !5, i32 49, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [action_id] [line 49]
!76 = metadata !{i32 49, i32 15, metadata !13, null}
!77 = metadata !{i32 50, i32 9, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !13, i32 50, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 52, i32 16, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !78, i32 51, i32 5, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, metadata !79} ; [ DW_TAG_arg_variable ] [value] [line 22]
!82 = metadata !{i32 22, i32 33, metadata !4, metadata !79}
!83 = metadata !{i64 -2147483648}
!84 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, metadata !79} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!85 = metadata !{i32 22, i32 50, metadata !4, metadata !79}
!86 = metadata !{i64 2147483647}
!87 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, metadata !79} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!88 = metadata !{i32 22, i32 73, metadata !4, metadata !79}
!89 = metadata !{i64 4294967296}
!90 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, metadata !79} ; [ DW_TAG_auto_variable ] [range] [line 23]
!91 = metadata !{i32 23, i32 15, metadata !4, metadata !79}
!92 = metadata !{i32 24, i32 9, metadata !40, metadata !79}
!93 = metadata !{i32 25, i32 9, metadata !42, metadata !79}
!94 = metadata !{i32 27, i32 14, metadata !44, metadata !79}
!95 = metadata !{i32 28, i32 9, metadata !46, metadata !79}
!96 = metadata !{i32 57, i32 16, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !78, i32 56, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!98 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [value] [line 22]
!99 = metadata !{i32 22, i32 33, metadata !4, metadata !96}
!100 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!101 = metadata !{i32 22, i32 50, metadata !4, metadata !96}
!102 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, metadata !96} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!103 = metadata !{i32 22, i32 73, metadata !4, metadata !96}
!104 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, metadata !96} ; [ DW_TAG_auto_variable ] [range] [line 23]
!105 = metadata !{i32 23, i32 15, metadata !4, metadata !96}
!106 = metadata !{i32 24, i32 9, metadata !40, metadata !96}
!107 = metadata !{i32 25, i32 9, metadata !42, metadata !96}
!108 = metadata !{i32 27, i32 14, metadata !44, metadata !96}
!109 = metadata !{i32 28, i32 9, metadata !46, metadata !96}
!110 = metadata !{i32 60, i32 11, metadata !13, null}
!111 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [value] [line 22]
!112 = metadata !{i32 22, i32 33, metadata !4, metadata !110}
!113 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!114 = metadata !{i32 22, i32 50, metadata !4, metadata !110}
!115 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!116 = metadata !{i32 22, i32 73, metadata !4, metadata !110}
!117 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, metadata !110} ; [ DW_TAG_auto_variable ] [range] [line 23]
!118 = metadata !{i32 23, i32 15, metadata !4, metadata !110}
!119 = metadata !{i32 24, i32 9, metadata !40, metadata !110}
!120 = metadata !{i32 25, i32 9, metadata !42, metadata !110}
!121 = metadata !{i32 27, i32 14, metadata !44, metadata !110}
!122 = metadata !{i32 28, i32 9, metadata !46, metadata !110}
!123 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, metadata !124} ; [ DW_TAG_arg_variable ] [value] [line 22]
!124 = metadata !{i32 62, i32 15, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !13, i32 61, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!126 = metadata !{i32 22, i32 33, metadata !4, metadata !124}
!127 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, metadata !124} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!128 = metadata !{i32 22, i32 50, metadata !4, metadata !124}
!129 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, metadata !124} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!130 = metadata !{i32 22, i32 73, metadata !4, metadata !124}
!131 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, metadata !124} ; [ DW_TAG_auto_variable ] [range] [line 23]
!132 = metadata !{i32 23, i32 15, metadata !4, metadata !124}
!133 = metadata !{i32 63, i32 13, metadata !134, null}
!134 = metadata !{i32 786443, metadata !1, metadata !125, i32 63, i32 13, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!135 = metadata !{i64 0}
!136 = metadata !{i32 69, i32 5, metadata !137, null}
!137 = metadata !{i32 786443, metadata !1, metadata !125, i32 69, i32 5, i32 1, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!138 = metadata !{i32 67, i32 9, metadata !139, null}
!139 = metadata !{i32 786443, metadata !1, metadata !140, i32 67, i32 1, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!140 = metadata !{i32 786443, metadata !1, metadata !134, i32 66, i32 18, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!141 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777238, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [value] [line 22]
!142 = metadata !{i32 22, i32 33, metadata !4, metadata !138}
!143 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554454, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [lower_bound] [line 22]
!144 = metadata !{i32 22, i32 50, metadata !4, metadata !138}
!145 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331670, metadata !8, i32 0, metadata !138} ; [ DW_TAG_arg_variable ] [upper_bound] [line 22]
!146 = metadata !{i32 22, i32 73, metadata !4, metadata !138}
!147 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 23, metadata !8, i32 0, metadata !138} ; [ DW_TAG_auto_variable ] [range] [line 23]
!148 = metadata !{i32 23, i32 15, metadata !4, metadata !138}
!149 = metadata !{i32 61, i32 5, metadata !13, null}
!150 = metadata !{i32 24, i32 9, metadata !40, metadata !124}
!151 = metadata !{i32 25, i32 9, metadata !42, metadata !124}
!152 = metadata !{i32 27, i32 14, metadata !44, metadata !124}
!153 = metadata !{i32 28, i32 9, metadata !46, metadata !124}
!154 = metadata !{i32 66, i32 18, metadata !140, null}
!155 = metadata !{i32 24, i32 9, metadata !40, metadata !138}
!156 = metadata !{i32 25, i32 9, metadata !42, metadata !138}
!157 = metadata !{i32 27, i32 14, metadata !44, metadata !138}
!158 = metadata !{i32 28, i32 9, metadata !46, metadata !138}
!159 = metadata !{i32 71, i32 1, metadata !13, null}

