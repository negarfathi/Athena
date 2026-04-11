; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@"'memory2_freeIndex" = global i32 1, align 4
@memory2 = common global [100000 x i32] zeroinitializer, align 16
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !30), !dbg !31
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !33), !dbg !34
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !35
  %"2" = add nsw i32 %"1", %size, !dbg !35
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !35
  ret i32 %"0", !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !37), !dbg !38
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !40), !dbg !41
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !42
  %"5" = add nsw i32 %"4", %size, !dbg !42
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !42
  ret i32 %"3", !dbg !43
}

; Function Attrs: nounwind uwtable
define i32 @allocate_memory2(i32 %size) #0 {
allocate_memory2_bb2:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !44), !dbg !45
  %"6" = load i32* @"'memory2_freeIndex", align 4, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !47), !dbg !48
  %"7" = load i32* @"'memory2_freeIndex", align 4, !dbg !49
  %"8" = add nsw i32 %"7", %size, !dbg !49
  store i32 %"8", i32* @"'memory2_freeIndex", align 4, !dbg !49
  ret i32 %"6", !dbg !50
}

; Function Attrs: nounwind uwtable
define void @diff(i32 %A, i32 %Alen, i32 %B, i32 %Blen, i32 %D) #0 {
diff_bb3:
  call void @llvm.dbg.value(metadata !{i32 %A}, i64 0, metadata !51), !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %Alen}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !{i32 %B}, i64 0, metadata !55), !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %Blen}, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %D}, i64 0, metadata !59), !dbg !60
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !62), !dbg !63
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !64), !dbg !65
  call void @llvm.dbg.value(metadata !{i32 %Alen}, i64 0, metadata !66), !dbg !67
  call void @llvm.dbg.value(metadata !{i32 %Blen}, i64 0, metadata !68), !dbg !69
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !70), !dbg !72
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !73), !dbg !74
  call void @llvm.dbg.value(metadata !75, i64 0, metadata !73), !dbg !74
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !70), !dbg !72
  br label %diff_bb4, !dbg !76

diff_bb4:                                         ; preds = %diff_bb8, %diff_bb3
  %i.0 = phi i32 [ 0, %diff_bb3 ], [ %"32", %diff_bb8 ]
  %k.0 = phi i32 [ 0, %diff_bb3 ], [ %k.1, %diff_bb8 ]
  %"9" = icmp slt i32 %i.0, %Alen, !dbg !77
  br i1 %"9", label %diff_bb5, label %diff_bb9, !dbg !77

diff_bb5:                                         ; preds = %diff_bb6, %diff_bb4
  %found.0 = phi i32 [ 0, %diff_bb4 ], [ %found.1, %diff_bb6 ]
  %j.0 = phi i32 [ 0, %diff_bb4 ], [ %j.1, %diff_bb6 ]
  %"10" = icmp slt i32 %j.0, %Blen, !dbg !79
  %"11" = icmp ne i32 %found.0, 0
  %"12" = xor i1 %"11", true, !dbg !81
  %or.cond = and i1 %"10", %"12", !dbg !79
  br i1 %or.cond, label %diff_bb6, label %diff_.critedge, !dbg !79

diff_bb6:                                         ; preds = %diff_bb5
  %"13" = add nsw i32 %A, %i.0, !dbg !83
  %"14" = sext i32 %"13" to i64, !dbg !83
  %"15" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"14", !dbg !83
  %"16" = load i32* %"15", align 4, !dbg !83
  %"17" = add nsw i32 %B, %j.0, !dbg !83
  %"18" = sext i32 %"17" to i64, !dbg !83
  %"19" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"18", !dbg !83
  %"20" = load i32* %"19", align 4, !dbg !83
  %"21" = icmp eq i32 %"16", %"20", !dbg !83
  %"22" = add nsw i32 %j.0, 1, !dbg !86
  %found.1 = select i1 %"21", i32 1, i32 %found.0, !dbg !83
  %j.1 = select i1 %"21", i32 %j.0, i32 %"22", !dbg !83
  br label %diff_bb5, !dbg !83

diff_.critedge:                                   ; preds = %diff_bb5
  %"23" = icmp ne i32 %found.0, 0, !dbg !88
  br i1 %"23", label %diff_bb8, label %diff_bb7, !dbg !88

diff_bb7:                                         ; preds = %diff_.critedge
  %"24" = add nsw i32 %A, %i.0, !dbg !90
  %"25" = sext i32 %"24" to i64, !dbg !90
  %"26" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"25", !dbg !90
  %"27" = load i32* %"26", align 4, !dbg !90
  %"28" = add nsw i32 %D, %k.0, !dbg !90
  %"29" = sext i32 %"28" to i64, !dbg !90
  %"30" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"29", !dbg !90
  store i32 %"27", i32* %"30", align 4, !dbg !90
  %"31" = add nsw i32 %k.0, 1, !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !62), !dbg !63
  br label %diff_bb8, !dbg !93

diff_bb8:                                         ; preds = %diff_bb7, %diff_.critedge
  %k.1 = phi i32 [ %k.0, %diff_.critedge ], [ %"31", %diff_bb7 ]
  %"32" = add nsw i32 %i.0, 1, !dbg !94
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !64), !dbg !65
  br label %diff_bb4, !dbg !95

diff_bb9:                                         ; preds = %diff_bb4
  ret void, !dbg !96
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"33" = call i32 @__VERIFIER_nondet_int(), !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !98), !dbg !99
  %"34" = call i32 @__VERIFIER_nondet_int(), !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !101), !dbg !102
  %"35" = icmp slt i32 %"33", 1, !dbg !103
  call void @llvm.dbg.value(metadata !75, i64 0, metadata !98), !dbg !99
  %. = select i1 %"35", i32 1, i32 %"33", !dbg !103
  %"36" = icmp slt i32 %"34", 1, !dbg !105
  call void @llvm.dbg.value(metadata !75, i64 0, metadata !101), !dbg !102
  %Blen.0 = select i1 %"36", i32 1, i32 %"34", !dbg !105
  %"37" = mul nsw i32 %., 1, !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %"37"}, i64 0, metadata !108), !dbg !109
  %"38" = load i32* @"'memory2_freeIndex", align 4, !dbg !110
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !111), !dbg !112
  %"39" = load i32* @"'memory2_freeIndex", align 4, !dbg !113
  %"40" = add nsw i32 %"39", %"37", !dbg !113
  store i32 %"40", i32* @"'memory2_freeIndex", align 4, !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !114), !dbg !115
  %"41" = mul nsw i32 %Blen.0, 1, !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !117), !dbg !118
  %"42" = load i32* @"'memory1_freeIndex", align 4, !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !120), !dbg !121
  %"43" = load i32* @"'memory1_freeIndex", align 4, !dbg !122
  %"44" = add nsw i32 %"43", %"41", !dbg !122
  store i32 %"44", i32* @"'memory1_freeIndex", align 4, !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !123), !dbg !124
  %"45" = mul nsw i32 %., 1, !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !126), !dbg !127
  %"46" = load i32* @"'memory0_freeIndex", align 4, !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !129), !dbg !130
  %"47" = load i32* @"'memory0_freeIndex", align 4, !dbg !131
  %"48" = add nsw i32 %"47", %"45", !dbg !131
  store i32 %"48", i32* @"'memory0_freeIndex", align 4, !dbg !131
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !132), !dbg !133
  call void @llvm.dbg.value(metadata !{i32 %"38"}, i64 0, metadata !134), !dbg !136
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !137), !dbg !138
  call void @llvm.dbg.value(metadata !{i32 %"42"}, i64 0, metadata !139), !dbg !140
  call void @llvm.dbg.value(metadata !{i32 %Blen.0}, i64 0, metadata !141), !dbg !142
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !143), !dbg !144
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !145), !dbg !146
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !147), !dbg !148
  call void @llvm.dbg.value(metadata !{i32 %.}, i64 0, metadata !149), !dbg !150
  call void @llvm.dbg.value(metadata !{i32 %Blen.0}, i64 0, metadata !151), !dbg !152
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !153), !dbg !154
  call void @llvm.dbg.value(metadata !61, i64 0, metadata !155), !dbg !156
  call void @llvm.dbg.value(metadata !75, i64 0, metadata !155), !dbg !156
  br label %main_bb11, !dbg !157

main_bb11:                                        ; preds = %main_bb15, %main_bb10
  %i.0.i = phi i32 [ 0, %main_bb10 ], [ %"72", %main_bb15 ], !dbg !135
  %k.0.i = phi i32 [ 0, %main_bb10 ], [ %k.1.i, %main_bb15 ], !dbg !135
  %"49" = icmp slt i32 %i.0.i, %., !dbg !158
  br i1 %"49", label %main_bb12, label %main_diff.exit, !dbg !158

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %found.0.i = phi i32 [ 0, %main_bb11 ], [ %found.1.i, %main_bb13 ], !dbg !135
  %j.0.i = phi i32 [ 0, %main_bb11 ], [ %j.1.i, %main_bb13 ], !dbg !135
  %"50" = icmp slt i32 %j.0.i, %Blen.0, !dbg !159
  %"51" = icmp ne i32 %found.0.i, 0, !dbg !135
  %"52" = xor i1 %"51", true, !dbg !160
  %or.cond.i = and i1 %"50", %"52", !dbg !159
  br i1 %or.cond.i, label %main_bb13, label %main_.critedge.i, !dbg !159

main_bb13:                                        ; preds = %main_bb12
  %"53" = add nsw i32 %"38", %i.0.i, !dbg !161
  %"54" = sext i32 %"53" to i64, !dbg !161
  %"55" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"54", !dbg !161
  %"56" = load i32* %"55", align 4, !dbg !161
  %"57" = add nsw i32 %"42", %j.0.i, !dbg !161
  %"58" = sext i32 %"57" to i64, !dbg !161
  %"59" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"58", !dbg !161
  %"60" = load i32* %"59", align 4, !dbg !161
  %"61" = icmp eq i32 %"56", %"60", !dbg !161
  %"62" = add nsw i32 %j.0.i, 1, !dbg !162
  %found.1.i = select i1 %"61", i32 1, i32 %found.0.i, !dbg !161
  %j.1.i = select i1 %"61", i32 %j.0.i, i32 %"62", !dbg !161
  br label %main_bb12, !dbg !161

main_.critedge.i:                                 ; preds = %main_bb12
  %"63" = icmp ne i32 %found.0.i, 0, !dbg !163
  br i1 %"63", label %main_bb15, label %main_bb14, !dbg !163

main_bb14:                                        ; preds = %main_.critedge.i
  %"64" = add nsw i32 %"38", %i.0.i, !dbg !164
  %"65" = sext i32 %"64" to i64, !dbg !164
  %"66" = getelementptr inbounds [100000 x i32]* @memory2, i32 0, i64 %"65", !dbg !164
  %"67" = load i32* %"66", align 4, !dbg !164
  %"68" = add nsw i32 %"46", %k.0.i, !dbg !164
  %"69" = sext i32 %"68" to i64, !dbg !164
  %"70" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"69", !dbg !164
  store i32 %"67", i32* %"70", align 4, !dbg !164
  %"71" = add nsw i32 %k.0.i, 1, !dbg !165
  call void @llvm.dbg.value(metadata !{i32 %"71"}, i64 0, metadata !145), !dbg !146
  br label %main_bb15, !dbg !166

main_bb15:                                        ; preds = %main_bb14, %main_.critedge.i
  %k.1.i = phi i32 [ %k.0.i, %main_.critedge.i ], [ %"71", %main_bb14 ], !dbg !135
  %"72" = add nsw i32 %i.0.i, 1, !dbg !167
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !147), !dbg !148
  br label %main_bb11, !dbg !168

main_diff.exit:                                   ; preds = %main_bb11
  ret i32 0, !dbg !169
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!27, !28}
!llvm.ident = !{!29}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !17, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !11, metadata !14}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory2", metadata !"allocate_memory2", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory2, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [allocate_memory2]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"diff", metadata !"diff", metadata !"", i32 32, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32, i32, i32, i32)* @diff, null, null, metadata !2, i32 33} ; [ DW_TAG_subprogram ] [line 32] [def] [scope 33] [diff]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !8, metadata !8, metadata !8, metadata !8, metadata !8}
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 58, metadata !15, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 58} ; [ DW_TAG_subprogram ] [line 58] [def] [main]
!15 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !16, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!16 = metadata !{metadata !8}
!17 = metadata !{metadata !18, metadata !19, metadata !20, metadata !21, metadata !25, metadata !26}
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory2_freeIndex", metadata !"memory2_freeIndex", metadata !"", metadata !5, i32 25, metadata !8, i32 0, i32 1, i32* @"'memory2_freeIndex", null} ; [ DW_TAG_variable ] [memory2_freeIndex] [line 25] [def]
!21 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !22, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!22 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !22, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!26 = metadata !{i32 786484, i32 0, null, metadata !"memory2", metadata !"memory2", metadata !"", metadata !5, i32 24, metadata !22, i32 0, i32 1, [100000 x i32]* @memory2, null} ; [ DW_TAG_variable ] [memory2] [line 24] [def]
!27 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!28 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!29 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!30 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!31 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!32 = metadata !{i32 9, i32 4, metadata !4, null}
!33 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!34 = metadata !{i32 9, i32 8, metadata !4, null}
!35 = metadata !{i32 10, i32 4, metadata !4, null}
!36 = metadata !{i32 11, i32 4, metadata !4, null}
!37 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!38 = metadata !{i32 17, i32 26, metadata !9, null}
!39 = metadata !{i32 18, i32 4, metadata !9, null}
!40 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!41 = metadata !{i32 18, i32 8, metadata !9, null}
!42 = metadata !{i32 19, i32 4, metadata !9, null}
!43 = metadata !{i32 20, i32 4, metadata !9, null}
!44 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 26]
!45 = metadata !{i32 26, i32 26, metadata !10, null}
!46 = metadata !{i32 27, i32 4, metadata !10, null}
!47 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!48 = metadata !{i32 27, i32 8, metadata !10, null}
!49 = metadata !{i32 28, i32 4, metadata !10, null}
!50 = metadata !{i32 29, i32 4, metadata !10, null}
!51 = metadata !{i32 786689, metadata !11, metadata !"A", metadata !5, i32 16777248, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [A] [line 32]
!52 = metadata !{i32 32, i32 15, metadata !11, null}
!53 = metadata !{i32 786689, metadata !11, metadata !"Alen", metadata !5, i32 33554464, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Alen] [line 32]
!54 = metadata !{i32 32, i32 22, metadata !11, null}
!55 = metadata !{i32 786689, metadata !11, metadata !"B", metadata !5, i32 50331680, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [B] [line 32]
!56 = metadata !{i32 32, i32 32, metadata !11, null}
!57 = metadata !{i32 786689, metadata !11, metadata !"Blen", metadata !5, i32 67108896, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Blen] [line 32]
!58 = metadata !{i32 32, i32 39, metadata !11, null}
!59 = metadata !{i32 786689, metadata !11, metadata !"D", metadata !5, i32 83886112, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [D] [line 32]
!60 = metadata !{i32 32, i32 49, metadata !11, null}
!61 = metadata !{i32 0}
!62 = metadata !{i32 786688, metadata !11, metadata !"k", metadata !5, i32 34, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 34]
!63 = metadata !{i32 34, i32 9, metadata !11, null}
!64 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 35]
!65 = metadata !{i32 35, i32 9, metadata !11, null}
!66 = metadata !{i32 786688, metadata !11, metadata !"l1", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l1] [line 36]
!67 = metadata !{i32 36, i32 9, metadata !11, null}
!68 = metadata !{i32 786688, metadata !11, metadata !"l2", metadata !5, i32 37, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l2] [line 37]
!69 = metadata !{i32 37, i32 9, metadata !11, null}
!70 = metadata !{i32 786688, metadata !71, metadata !"j", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 41]
!71 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 20, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 41, i32 13, metadata !71, null}
!73 = metadata !{i32 786688, metadata !11, metadata !"found", metadata !5, i32 38, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [found] [line 38]
!74 = metadata !{i32 38, i32 9, metadata !11, null}
!75 = metadata !{i32 1}
!76 = metadata !{i32 40, i32 5, metadata !11, null}
!77 = metadata !{i32 40, i32 5, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !11, i32 40, i32 5, i32 1, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 43, i32 9, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !71, i32 43, i32 9, i32 1, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 43, i32 9, metadata !82, null}
!82 = metadata !{i32 786443, metadata !1, metadata !71, i32 43, i32 9, i32 2, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!83 = metadata !{i32 44, i32 16, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 44, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 786443, metadata !1, metadata !71, i32 43, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 47, i32 17, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !84, i32 46, i32 20, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 50, i32 13, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !71, i32 50, i32 13, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 51, i32 13, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !89, i32 50, i32 21, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 52, i32 13, metadata !91, null}
!93 = metadata !{i32 53, i32 9, metadata !91, null}
!94 = metadata !{i32 54, i32 9, metadata !71, null}
!95 = metadata !{i32 55, i32 5, metadata !71, null}
!96 = metadata !{i32 56, i32 1, metadata !11, null}
!97 = metadata !{i32 59, i32 14, metadata !14, null}
!98 = metadata !{i32 786688, metadata !14, metadata !"Alen", metadata !5, i32 59, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Alen] [line 59]
!99 = metadata !{i32 59, i32 7, metadata !14, null}
!100 = metadata !{i32 60, i32 14, metadata !14, null}
!101 = metadata !{i32 786688, metadata !14, metadata !"Blen", metadata !5, i32 60, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Blen] [line 60]
!102 = metadata !{i32 60, i32 7, metadata !14, null}
!103 = metadata !{i32 61, i32 7, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !14, i32 61, i32 7, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!105 = metadata !{i32 64, i32 7, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !14, i32 64, i32 7, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 67, i32 11, metadata !14, null}
!108 = metadata !{i32 786689, metadata !10, metadata !"size", metadata !5, i32 16777242, metadata !8, i32 0, metadata !107} ; [ DW_TAG_arg_variable ] [size] [line 26]
!109 = metadata !{i32 26, i32 26, metadata !10, metadata !107}
!110 = metadata !{i32 27, i32 4, metadata !10, metadata !107}
!111 = metadata !{i32 786688, metadata !10, metadata !"allocatedIndex", metadata !5, i32 27, metadata !8, i32 0, metadata !107} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 27]
!112 = metadata !{i32 27, i32 8, metadata !10, metadata !107}
!113 = metadata !{i32 28, i32 4, metadata !10, metadata !107}
!114 = metadata !{i32 786688, metadata !14, metadata !"A", metadata !5, i32 67, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [A] [line 67]
!115 = metadata !{i32 67, i32 7, metadata !14, null}
!116 = metadata !{i32 68, i32 11, metadata !14, null}
!117 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !116} ; [ DW_TAG_arg_variable ] [size] [line 17]
!118 = metadata !{i32 17, i32 26, metadata !9, metadata !116}
!119 = metadata !{i32 18, i32 4, metadata !9, metadata !116}
!120 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !116} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!121 = metadata !{i32 18, i32 8, metadata !9, metadata !116}
!122 = metadata !{i32 19, i32 4, metadata !9, metadata !116}
!123 = metadata !{i32 786688, metadata !14, metadata !"B", metadata !5, i32 68, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [B] [line 68]
!124 = metadata !{i32 68, i32 7, metadata !14, null}
!125 = metadata !{i32 69, i32 11, metadata !14, null}
!126 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !125} ; [ DW_TAG_arg_variable ] [size] [line 8]
!127 = metadata !{i32 8, i32 26, metadata !4, metadata !125} ; [ DW_TAG_imported_declaration ]
!128 = metadata !{i32 9, i32 4, metadata !4, metadata !125}
!129 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !125} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!130 = metadata !{i32 9, i32 8, metadata !4, metadata !125}
!131 = metadata !{i32 10, i32 4, metadata !4, metadata !125}
!132 = metadata !{i32 786688, metadata !14, metadata !"D", metadata !5, i32 69, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [D] [line 69]
!133 = metadata !{i32 69, i32 7, metadata !14, null}
!134 = metadata !{i32 786689, metadata !11, metadata !"A", metadata !5, i32 16777248, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [A] [line 32]
!135 = metadata !{i32 70, i32 3, metadata !14, null}
!136 = metadata !{i32 32, i32 15, metadata !11, metadata !135}
!137 = metadata !{i32 786689, metadata !11, metadata !"Alen", metadata !5, i32 33554464, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [Alen] [line 32]
!138 = metadata !{i32 32, i32 22, metadata !11, metadata !135}
!139 = metadata !{i32 786689, metadata !11, metadata !"B", metadata !5, i32 50331680, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [B] [line 32]
!140 = metadata !{i32 32, i32 32, metadata !11, metadata !135}
!141 = metadata !{i32 786689, metadata !11, metadata !"Blen", metadata !5, i32 67108896, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [Blen] [line 32]
!142 = metadata !{i32 32, i32 39, metadata !11, metadata !135}
!143 = metadata !{i32 786689, metadata !11, metadata !"D", metadata !5, i32 83886112, metadata !8, i32 0, metadata !135} ; [ DW_TAG_arg_variable ] [D] [line 32]
!144 = metadata !{i32 32, i32 49, metadata !11, metadata !135}
!145 = metadata !{i32 786688, metadata !11, metadata !"k", metadata !5, i32 34, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [k] [line 34]
!146 = metadata !{i32 34, i32 9, metadata !11, metadata !135}
!147 = metadata !{i32 786688, metadata !11, metadata !"i", metadata !5, i32 35, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [i] [line 35]
!148 = metadata !{i32 35, i32 9, metadata !11, metadata !135}
!149 = metadata !{i32 786688, metadata !11, metadata !"l1", metadata !5, i32 36, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [l1] [line 36]
!150 = metadata !{i32 36, i32 9, metadata !11, metadata !135}
!151 = metadata !{i32 786688, metadata !11, metadata !"l2", metadata !5, i32 37, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [l2] [line 37]
!152 = metadata !{i32 37, i32 9, metadata !11, metadata !135}
!153 = metadata !{i32 786688, metadata !71, metadata !"j", metadata !5, i32 41, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [j] [line 41]
!154 = metadata !{i32 41, i32 13, metadata !71, metadata !135}
!155 = metadata !{i32 786688, metadata !11, metadata !"found", metadata !5, i32 38, metadata !8, i32 0, metadata !135} ; [ DW_TAG_auto_variable ] [found] [line 38]
!156 = metadata !{i32 38, i32 9, metadata !11, metadata !135}
!157 = metadata !{i32 40, i32 5, metadata !11, metadata !135}
!158 = metadata !{i32 40, i32 5, metadata !78, metadata !135}
!159 = metadata !{i32 43, i32 9, metadata !80, metadata !135}
!160 = metadata !{i32 43, i32 9, metadata !82, metadata !135}
!161 = metadata !{i32 44, i32 16, metadata !84, metadata !135}
!162 = metadata !{i32 47, i32 17, metadata !87, metadata !135}
!163 = metadata !{i32 50, i32 13, metadata !89, metadata !135}
!164 = metadata !{i32 51, i32 13, metadata !91, metadata !135}
!165 = metadata !{i32 52, i32 13, metadata !91, metadata !135}
!166 = metadata !{i32 53, i32 9, metadata !91, metadata !135}
!167 = metadata !{i32 54, i32 9, metadata !71, metadata !135}
!168 = metadata !{i32 55, i32 5, metadata !71, metadata !135}
!169 = metadata !{i32 71, i32 3, metadata !14, null}

