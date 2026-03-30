; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NNode = type { i32 }

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x %struct.NNode] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !34), !dbg !35
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !36), !dbg !37
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !38
  %"1" = add nsw i64 %"0", 1, !dbg !38
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !39), !dbg !40
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !41
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !41

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !43
  %"4" = sub nsw i64 %"3", 1, !dbg !43
  %"5" = srem i64 %"4", %"1", !dbg !43
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !43
  br label %wrap_around_bb4, !dbg !43

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !45
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !45

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !47
  %"9" = sub nsw i64 %"8", 1, !dbg !47
  %"10" = srem i64 %"9", %"1", !dbg !47
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !47
  br label %wrap_around_bb4, !dbg !47

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !49
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb5:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !50), !dbg !51
  %"12" = load i32* @"'memory0_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !53), !dbg !54
  %"13" = load i32* @"'memory0_freeIndex", align 4, !dbg !55
  %"14" = add nsw i32 %"13", %size, !dbg !55
  store i32 %"14", i32* @"'memory0_freeIndex", align 4, !dbg !55
  ret i32 %"12", !dbg !56
}

; Function Attrs: nounwind uwtable
define i32 @initLink(i64 %n) #0 {
initLink_bb6:
  call void @llvm.dbg.value(metadata !{i64 %n}, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !60), !dbg !62
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !64), !dbg !65
  %"16" = load i32* @"'memory0_freeIndex", align 4, !dbg !66
  %"17" = add nsw i32 %"16", 4, !dbg !66
  store i32 %"17", i32* @"'memory0_freeIndex", align 4, !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !67), !dbg !68
  %"18" = sext i32 %"15" to i64, !dbg !69
  %"19" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"18", !dbg !69
  %"20" = getelementptr inbounds %struct.NNode* %"19", i32 0, i32 0, !dbg !69
  store i32 %"15", i32* %"20", align 4, !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !70), !dbg !71
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !73), !dbg !74
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !75), !dbg !79
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !80), !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !82), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !70), !dbg !71
  call void @llvm.dbg.value(metadata !{i64 %"35"}, i64 0, metadata !84), !dbg !86
  call void @llvm.dbg.value(metadata !87, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !91), !dbg !92
  call void @llvm.dbg.value(metadata !93, i64 0, metadata !94), !dbg !95
  br label %initLink_wrap_around.exit, !dbg !96

initLink_wrap_around.exit:                        ; preds = %initLink_bb10, %initLink_bb9, %initLink_bb8, %initLink_bb6
  %i.0 = phi i64 [ 2, %initLink_bb6 ], [ %"40", %initLink_bb8 ], [ %"45", %initLink_bb10 ], [ %"35", %initLink_bb9 ]
  %cyclic.0 = phi i32 [ %"15", %initLink_bb6 ], [ %"34", %initLink_bb8 ], [ %"34", %initLink_bb9 ], [ %"34", %initLink_bb10 ]
  %"21" = icmp sle i64 %i.0, %n, !dbg !97
  br i1 %"21", label %initLink_bb7, label %initLink_bb11, !dbg !97

initLink_bb7:                                     ; preds = %initLink_wrap_around.exit
  %"22" = load i32* @"'memory0_freeIndex", align 4, !dbg !100
  %"23" = load i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"24" = add nsw i32 %"23", 4, !dbg !101
  store i32 %"24", i32* @"'memory0_freeIndex", align 4, !dbg !101
  %"25" = sext i32 %"22" to i64, !dbg !102
  %"26" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"25", !dbg !102
  %"27" = getelementptr inbounds %struct.NNode* %"26", i32 0, i32 0, !dbg !102
  store i32 %"22", i32* %"27", align 4, !dbg !102
  %"28" = sext i32 %cyclic.0 to i64, !dbg !103
  %"29" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"28", !dbg !103
  %"30" = getelementptr inbounds %struct.NNode* %"29", i32 0, i32 0, !dbg !103
  store i32 %"22", i32* %"30", align 4, !dbg !103
  %"31" = sext i32 %cyclic.0 to i64, !dbg !104
  %"32" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"31", !dbg !104
  %"33" = getelementptr inbounds %struct.NNode* %"32", i32 0, i32 0, !dbg !104
  %"34" = load i32* %"33", align 4, !dbg !104
  %"35" = add nsw i64 %i.0, 1, !dbg !85
  %"36" = icmp sgt i64 %"35", 2147483647, !dbg !105
  br i1 %"36", label %initLink_bb8, label %initLink_bb9, !dbg !105

initLink_bb8:                                     ; preds = %initLink_bb7
  %"37" = sub nsw i64 %"35", 2147483647, !dbg !106
  %"38" = sub nsw i64 %"37", 1, !dbg !106
  %"39" = srem i64 %"38", 4294967296, !dbg !106
  %"40" = add nsw i64 -2147483648, %"39", !dbg !106
  br label %initLink_wrap_around.exit, !dbg !106

initLink_bb9:                                     ; preds = %initLink_bb7
  %"41" = icmp slt i64 %"35", -2147483648, !dbg !107
  br i1 %"41", label %initLink_bb10, label %initLink_wrap_around.exit, !dbg !107

initLink_bb10:                                    ; preds = %initLink_bb9
  %"42" = sub nsw i64 -2147483648, %"35", !dbg !108
  %"43" = sub nsw i64 %"42", 1, !dbg !108
  %"44" = srem i64 %"43", 4294967296, !dbg !108
  %"45" = sub nsw i64 2147483647, %"44", !dbg !108
  br label %initLink_wrap_around.exit, !dbg !108

initLink_bb11:                                    ; preds = %initLink_wrap_around.exit
  %"46" = sext i32 %cyclic.0 to i64, !dbg !109
  %"47" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"46", !dbg !109
  %"48" = getelementptr inbounds %struct.NNode* %"47", i32 0, i32 0, !dbg !109
  store i32 %cyclic.0, i32* %"48", align 4, !dbg !109
  ret i32 %"15", !dbg !110
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"49" = call i64 @__VERIFIER_nondet_int(), !dbg !111
  call void @llvm.dbg.value(metadata !{i64 %"49"}, i64 0, metadata !112), !dbg !113
  %"50" = icmp sle i64 %"49", 0, !dbg !114
  %"51" = icmp sgt i64 %"49", 65534, !dbg !116
  %or.cond = or i1 %"50", %"51", !dbg !114
  br i1 %or.cond, label %main_bb20, label %main_bb13, !dbg !114

main_bb13:                                        ; preds = %main_bb12
  call void @llvm.dbg.value(metadata !{i64 %"49"}, i64 0, metadata !118), !dbg !120
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !121), !dbg !123
  %"52" = load i32* @"'memory0_freeIndex", align 4, !dbg !124
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !125), !dbg !126
  %"53" = load i32* @"'memory0_freeIndex", align 4, !dbg !127
  %"54" = add nsw i32 %"53", 4, !dbg !127
  store i32 %"54", i32* @"'memory0_freeIndex", align 4, !dbg !127
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !128), !dbg !129
  %"55" = sext i32 %"52" to i64, !dbg !130
  %"56" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"55", !dbg !130
  %"57" = getelementptr inbounds %struct.NNode* %"56", i32 0, i32 0, !dbg !130
  store i32 %"52", i32* %"57", align 4, !dbg !130
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !131), !dbg !132
  call void @llvm.dbg.value(metadata !72, i64 0, metadata !133), !dbg !134
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !135), !dbg !137
  call void @llvm.dbg.value(metadata !87, i64 0, metadata !138), !dbg !140
  call void @llvm.dbg.value(metadata !90, i64 0, metadata !141), !dbg !142
  call void @llvm.dbg.value(metadata !93, i64 0, metadata !143), !dbg !144
  br label %main_wrap_around.exit.i, !dbg !145

main_wrap_around.exit.i:                          ; preds = %main_bb17, %main_bb16, %main_bb15, %main_bb13
  %i.0.i = phi i64 [ 2, %main_bb13 ], [ %"77", %main_bb15 ], [ %"82", %main_bb17 ], [ %"72", %main_bb16 ], !dbg !119
  %cyclic.0.i = phi i32 [ %"52", %main_bb13 ], [ %"71", %main_bb15 ], [ %"71", %main_bb16 ], [ %"71", %main_bb17 ], !dbg !119
  %"58" = icmp sle i64 %i.0.i, %"49", !dbg !146
  br i1 %"58", label %main_bb14, label %main_initLink.exit, !dbg !146

main_bb14:                                        ; preds = %main_wrap_around.exit.i
  %"59" = load i32* @"'memory0_freeIndex", align 4, !dbg !147
  %"60" = load i32* @"'memory0_freeIndex", align 4, !dbg !148
  %"61" = add nsw i32 %"60", 4, !dbg !148
  store i32 %"61", i32* @"'memory0_freeIndex", align 4, !dbg !148
  %"62" = sext i32 %"59" to i64, !dbg !149
  %"63" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"62", !dbg !149
  %"64" = getelementptr inbounds %struct.NNode* %"63", i32 0, i32 0, !dbg !149
  store i32 %"59", i32* %"64", align 4, !dbg !149
  %"65" = sext i32 %cyclic.0.i to i64, !dbg !150
  %"66" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"65", !dbg !150
  %"67" = getelementptr inbounds %struct.NNode* %"66", i32 0, i32 0, !dbg !150
  store i32 %"59", i32* %"67", align 4, !dbg !150
  %"68" = sext i32 %cyclic.0.i to i64, !dbg !151
  %"69" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"68", !dbg !151
  %"70" = getelementptr inbounds %struct.NNode* %"69", i32 0, i32 0, !dbg !151
  %"71" = load i32* %"70", align 4, !dbg !151
  %"72" = add nsw i64 %i.0.i, 1, !dbg !139
  %"73" = icmp sgt i64 %"72", 2147483647, !dbg !152
  br i1 %"73", label %main_bb15, label %main_bb16, !dbg !152

main_bb15:                                        ; preds = %main_bb14
  %"74" = sub nsw i64 %"72", 2147483647, !dbg !153
  %"75" = sub nsw i64 %"74", 1, !dbg !153
  %"76" = srem i64 %"75", 4294967296, !dbg !153
  %"77" = add nsw i64 -2147483648, %"76", !dbg !153
  br label %main_wrap_around.exit.i, !dbg !153

main_bb16:                                        ; preds = %main_bb14
  %"78" = icmp slt i64 %"72", -2147483648, !dbg !154
  br i1 %"78", label %main_bb17, label %main_wrap_around.exit.i, !dbg !154

main_bb17:                                        ; preds = %main_bb16
  %"79" = sub nsw i64 -2147483648, %"72", !dbg !155
  %"80" = sub nsw i64 %"79", 1, !dbg !155
  %"81" = srem i64 %"80", 4294967296, !dbg !155
  %"82" = sub nsw i64 2147483647, %"81", !dbg !155
  br label %main_wrap_around.exit.i, !dbg !155

main_initLink.exit:                               ; preds = %main_wrap_around.exit.i
  %"83" = sext i32 %cyclic.0.i to i64, !dbg !156
  %"84" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"83", !dbg !156
  %"85" = getelementptr inbounds %struct.NNode* %"84", i32 0, i32 0, !dbg !156
  store i32 %cyclic.0.i, i32* %"85", align 4, !dbg !156
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !157), !dbg !158
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !159), !dbg !160
  call void @llvm.dbg.value(metadata !{i32 %"90"}, i64 0, metadata !161), !dbg !163
  call void @llvm.dbg.value(metadata !{i32 %"90"}, i64 0, metadata !159), !dbg !160
  br label %main_bb18, !dbg !164

main_bb18:                                        ; preds = %main_bb19, %main_initLink.exit
  %ip.0 = phi i32 [ %"52", %main_initLink.exit ], [ %"90", %main_bb19 ]
  %"86" = icmp ne i32 %ip.0, 0, !dbg !165
  br i1 %"86", label %main_bb19, label %main_bb20, !dbg !165

main_bb19:                                        ; preds = %main_bb18
  %"87" = sext i32 %ip.0 to i64, !dbg !167
  %"88" = getelementptr inbounds [100000 x %struct.NNode]* @memory0, i32 0, i64 %"87", !dbg !167
  %"89" = getelementptr inbounds %struct.NNode* %"88", i32 0, i32 0, !dbg !167
  %"90" = load i32* %"89", align 4, !dbg !167
  br label %main_bb18, !dbg !168

main_bb20:                                        ; preds = %main_bb18, %main_bb12
  ret i32 0, !dbg !169
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
!llvm.module.flags = !{!29, !30}
!llvm.ident = !{!31}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !13, metadata !16}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 19, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 19] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 29, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [allocate_memory0]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12, metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"initLink", metadata !"initLink", metadata !"", i32 35, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i64)* @initLink, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 35] [def] [initLink]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !12, metadata !8}
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 51, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [main]
!17 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!18 = metadata !{metadata !12}
!19 = metadata !{metadata !20, metadata !21}
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 18, metadata !12, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 18] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 17, metadata !22, i32 0, i32 1, [100000 x %struct.NNode]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 17] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !23, metadata !27, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from INSDS]
!23 = metadata !{i32 786454, metadata !1, null, metadata !"INSDS", i32 13, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ] [INSDS] [line 13, size 0, align 0, offset 0] [from NNode]
!24 = metadata !{i32 786451, metadata !1, null, metadata !"NNode", i32 11, i64 32, i64 32, i32 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_structure_type ] [NNode] [line 11, size 32, align 32, offset 0] [def] [from ]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786445, metadata !1, metadata !24, metadata !"nxtact", i32 12, i64 32, i64 32, i64 0, i32 0, metadata !12} ; [ DW_TAG_member ] [nxtact] [line 12, size 32, align 32, offset 0] [from int]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!29 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!30 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!31 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!32 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 19]
!33 = metadata !{i32 19, i32 33, metadata !4, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554451, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 19]
!35 = metadata !{i32 19, i32 50, metadata !4, null}
!36 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331667, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 19]
!37 = metadata !{i32 19, i32 73, metadata !4, null}
!38 = metadata !{i32 20, i32 5, metadata !4, null}
!39 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 20]
!40 = metadata !{i32 20, i32 15, metadata !4, null}
!41 = metadata !{i32 21, i32 9, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 21, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 22, i32 9, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !42, i32 21, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 24, i32 14, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !42, i32 24, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 25, i32 9, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !46, i32 24, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 28, i32 1, metadata !4, null}
!50 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 29]
!51 = metadata !{i32 29, i32 26, metadata !9, null}
!52 = metadata !{i32 30, i32 4, metadata !9, null}
!53 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!54 = metadata !{i32 30, i32 8, metadata !9, null}
!55 = metadata !{i32 31, i32 4, metadata !9, null}
!56 = metadata !{i32 32, i32 4, metadata !9, null}
!57 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 35]
!58 = metadata !{i32 35, i32 24, metadata !13, null}
!59 = metadata !{i32 4}
!60 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !12, i32 0, metadata !61} ; [ DW_TAG_arg_variable ] [size] [line 29]
!61 = metadata !{i32 36, i32 16, metadata !13, null}
!62 = metadata !{i32 29, i32 26, metadata !9, metadata !61}
!63 = metadata !{i32 30, i32 4, metadata !9, metadata !61}
!64 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !12, i32 0, metadata !61} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!65 = metadata !{i32 30, i32 8, metadata !9, metadata !61}
!66 = metadata !{i32 31, i32 4, metadata !9, metadata !61}
!67 = metadata !{i32 786688, metadata !13, metadata !"head", metadata !5, i32 36, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [head] [line 36]
!68 = metadata !{i32 36, i32 9, metadata !13, null}
!69 = metadata !{i32 37, i32 5, metadata !13, null}
!70 = metadata !{i32 786688, metadata !13, metadata !"cyclic", metadata !5, i32 38, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cyclic] [line 38]
!71 = metadata !{i32 38, i32 9, metadata !13, null}
!72 = metadata !{i64 2}
!73 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 40]
!74 = metadata !{i32 40, i32 15, metadata !13, null}
!75 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !12, i32 0, metadata !76} ; [ DW_TAG_arg_variable ] [size] [line 29]
!76 = metadata !{i32 42, i32 20, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !78, i32 41, i32 65, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 786443, metadata !1, metadata !13, i32 41, i32 5, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 29, i32 26, metadata !9, metadata !76}
!80 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !12, i32 0, metadata !76} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!81 = metadata !{i32 30, i32 8, metadata !9, metadata !76}
!82 = metadata !{i32 786688, metadata !77, metadata !"body", metadata !5, i32 42, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [body] [line 42]
!83 = metadata !{i32 42, i32 13, metadata !77, null}
!84 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777235, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [value] [line 19]
!85 = metadata !{i32 41, i32 26, metadata !78, null}
!86 = metadata !{i32 19, i32 33, metadata !4, metadata !85}
!87 = metadata !{i64 -2147483648}
!88 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554451, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [lower_bound] [line 19]
!89 = metadata !{i32 19, i32 50, metadata !4, metadata !85}
!90 = metadata !{i64 2147483647}
!91 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331667, metadata !8, i32 0, metadata !85} ; [ DW_TAG_arg_variable ] [upper_bound] [line 19]
!92 = metadata !{i32 19, i32 73, metadata !4, metadata !85}
!93 = metadata !{i64 4294967296}
!94 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 20, metadata !8, i32 0, metadata !85} ; [ DW_TAG_auto_variable ] [range] [line 20]
!95 = metadata !{i32 20, i32 15, metadata !4, metadata !85}
!96 = metadata !{i32 41, i32 10, metadata !78, null}
!97 = metadata !{i32 41, i32 10, metadata !98, null}
!98 = metadata !{i32 786443, metadata !1, metadata !99, i32 41, i32 10, i32 2, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!99 = metadata !{i32 786443, metadata !1, metadata !78, i32 41, i32 10, i32 1, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!100 = metadata !{i32 30, i32 4, metadata !9, metadata !76}
!101 = metadata !{i32 31, i32 4, metadata !9, metadata !76}
!102 = metadata !{i32 43, i32 9, metadata !77, null}
!103 = metadata !{i32 44, i32 9, metadata !77, null}
!104 = metadata !{i32 45, i32 9, metadata !77, null}
!105 = metadata !{i32 21, i32 9, metadata !42, metadata !85}
!106 = metadata !{i32 22, i32 9, metadata !44, metadata !85}
!107 = metadata !{i32 24, i32 14, metadata !46, metadata !85}
!108 = metadata !{i32 25, i32 9, metadata !48, metadata !85}
!109 = metadata !{i32 47, i32 5, metadata !13, null}
!110 = metadata !{i32 48, i32 5, metadata !13, null}
!111 = metadata !{i32 53, i32 21, metadata !16, null}
!112 = metadata !{i32 786688, metadata !16, metadata !"num", metadata !5, i32 53, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 53]
!113 = metadata !{i32 53, i32 15, metadata !16, null}
!114 = metadata !{i32 54, i32 9, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !16, i32 54, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 54, i32 9, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !115, i32 54, i32 9, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!118 = metadata !{i32 786689, metadata !13, metadata !"n", metadata !5, i32 16777251, metadata !8, i32 0, metadata !119} ; [ DW_TAG_arg_variable ] [n] [line 35]
!119 = metadata !{i32 58, i32 16, metadata !16, null} ; [ DW_TAG_imported_module ]
!120 = metadata !{i32 35, i32 24, metadata !13, metadata !119}
!121 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !12, i32 0, metadata !122} ; [ DW_TAG_arg_variable ] [size] [line 29]
!122 = metadata !{i32 36, i32 16, metadata !13, metadata !119}
!123 = metadata !{i32 29, i32 26, metadata !9, metadata !122}
!124 = metadata !{i32 30, i32 4, metadata !9, metadata !122}
!125 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !12, i32 0, metadata !122} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!126 = metadata !{i32 30, i32 8, metadata !9, metadata !122}
!127 = metadata !{i32 31, i32 4, metadata !9, metadata !122}
!128 = metadata !{i32 786688, metadata !13, metadata !"head", metadata !5, i32 36, metadata !12, i32 0, metadata !119} ; [ DW_TAG_auto_variable ] [head] [line 36]
!129 = metadata !{i32 36, i32 9, metadata !13, metadata !119}
!130 = metadata !{i32 37, i32 5, metadata !13, metadata !119}
!131 = metadata !{i32 786688, metadata !13, metadata !"cyclic", metadata !5, i32 38, metadata !12, i32 0, metadata !119} ; [ DW_TAG_auto_variable ] [cyclic] [line 38]
!132 = metadata !{i32 38, i32 9, metadata !13, metadata !119}
!133 = metadata !{i32 786688, metadata !13, metadata !"i", metadata !5, i32 40, metadata !8, i32 0, metadata !119} ; [ DW_TAG_auto_variable ] [i] [line 40]
!134 = metadata !{i32 40, i32 15, metadata !13, metadata !119}
!135 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !12, i32 0, metadata !136} ; [ DW_TAG_arg_variable ] [size] [line 29]
!136 = metadata !{i32 42, i32 20, metadata !77, metadata !119}
!137 = metadata !{i32 29, i32 26, metadata !9, metadata !136}
!138 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554451, metadata !8, i32 0, metadata !139} ; [ DW_TAG_arg_variable ] [lower_bound] [line 19]
!139 = metadata !{i32 41, i32 26, metadata !78, metadata !119}
!140 = metadata !{i32 19, i32 50, metadata !4, metadata !139}
!141 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331667, metadata !8, i32 0, metadata !139} ; [ DW_TAG_arg_variable ] [upper_bound] [line 19]
!142 = metadata !{i32 19, i32 73, metadata !4, metadata !139}
!143 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 20, metadata !8, i32 0, metadata !139} ; [ DW_TAG_auto_variable ] [range] [line 20]
!144 = metadata !{i32 20, i32 15, metadata !4, metadata !139}
!145 = metadata !{i32 41, i32 10, metadata !78, metadata !119}
!146 = metadata !{i32 41, i32 10, metadata !98, metadata !119}
!147 = metadata !{i32 30, i32 4, metadata !9, metadata !136}
!148 = metadata !{i32 31, i32 4, metadata !9, metadata !136}
!149 = metadata !{i32 43, i32 9, metadata !77, metadata !119}
!150 = metadata !{i32 44, i32 9, metadata !77, metadata !119}
!151 = metadata !{i32 45, i32 9, metadata !77, metadata !119}
!152 = metadata !{i32 21, i32 9, metadata !42, metadata !139}
!153 = metadata !{i32 22, i32 9, metadata !44, metadata !139}
!154 = metadata !{i32 24, i32 14, metadata !46, metadata !139}
!155 = metadata !{i32 25, i32 9, metadata !48, metadata !139}
!156 = metadata !{i32 47, i32 5, metadata !13, metadata !119}
!157 = metadata !{i32 786688, metadata !16, metadata !"list", metadata !5, i32 58, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [list] [line 58]
!158 = metadata !{i32 58, i32 9, metadata !16, null} ; [ DW_TAG_imported_module ]
!159 = metadata !{i32 786688, metadata !16, metadata !"ip", metadata !5, i32 59, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ip] [line 59]
!160 = metadata !{i32 59, i32 9, metadata !16, null}
!161 = metadata !{i32 786688, metadata !162, metadata !"nxt", metadata !5, i32 62, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nxt] [line 62]
!162 = metadata !{i32 786443, metadata !1, metadata !16, i32 61, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!163 = metadata !{i32 62, i32 13, metadata !162, null}
!164 = metadata !{i32 60, i32 5, metadata !16, null}
!165 = metadata !{i32 60, i32 5, metadata !166, null}
!166 = metadata !{i32 786443, metadata !1, metadata !16, i32 60, i32 5, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!167 = metadata !{i32 62, i32 9, metadata !162, null}
!168 = metadata !{i32 64, i32 5, metadata !162, null}
!169 = metadata !{i32 66, i32 1, metadata !16, null}

