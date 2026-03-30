; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@"'memory1_freeIndex" = global i32 1, align 4
@memory1 = common global [100000 x i32] zeroinitializer, align 16
@memory0 = common global [100000 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !27), !dbg !28
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !30), !dbg !31
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !32
  %"2" = add nsw i32 %"1", %size, !dbg !32
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !32
  ret i32 %"0", !dbg !33
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @allocate_memory1(i32 %size) #0 {
allocate_memory1_bb1:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !34), !dbg !35
  %"3" = load i32* @"'memory1_freeIndex", align 4, !dbg !36
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !37), !dbg !38
  %"4" = load i32* @"'memory1_freeIndex", align 4, !dbg !39
  %"5" = add nsw i32 %"4", %size, !dbg !39
  store i32 %"5", i32* @"'memory1_freeIndex", align 4, !dbg !39
  ret i32 %"3", !dbg !40
}

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %y1, i32 %y2) #0 {
gcd_bb2:
  call void @llvm.dbg.value(metadata !{i32 %y1}, i64 0, metadata !41), !dbg !42
  call void @llvm.dbg.value(metadata !{i32 %y2}, i64 0, metadata !43), !dbg !44
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !46), !dbg !48
  %"6" = load i32* @"'memory1_freeIndex", align 4, !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !50), !dbg !51
  %"7" = load i32* @"'memory1_freeIndex", align 4, !dbg !52
  %"8" = add nsw i32 %"7", 1, !dbg !52
  store i32 %"8", i32* @"'memory1_freeIndex", align 4, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !53), !dbg !54
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !55), !dbg !57
  %"9" = load i32* @"'memory0_freeIndex", align 4, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !59), !dbg !60
  %"10" = load i32* @"'memory0_freeIndex", align 4, !dbg !61
  %"11" = add nsw i32 %"10", 1, !dbg !61
  store i32 %"11", i32* @"'memory0_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !62), !dbg !63
  %"12" = sext i32 %"6" to i64, !dbg !64
  %"13" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"12", !dbg !64
  store i32 %y1, i32* %"13", align 4, !dbg !64
  %"14" = sext i32 %"9" to i64, !dbg !65
  %"15" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"14", !dbg !65
  store i32 %y2, i32* %"15", align 4, !dbg !65
  %"16" = sext i32 %"6" to i64, !dbg !66
  %"17" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"16", !dbg !66
  %"18" = sext i32 %"9" to i64, !dbg !66
  %"19" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"18", !dbg !66
  %"20" = sext i32 %"6" to i64, !dbg !68
  %"21" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"20", !dbg !68
  %"22" = sext i32 %"9" to i64, !dbg !68
  %"23" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"22", !dbg !68
  %"24" = sext i32 %"6" to i64, !dbg !71
  %"25" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"24", !dbg !71
  %"26" = sext i32 %"9" to i64, !dbg !71
  %"27" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"26", !dbg !71
  %"28" = sext i32 %"6" to i64, !dbg !71
  %"29" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"28", !dbg !71
  %"30" = sext i32 %"9" to i64, !dbg !73
  %"31" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"30", !dbg !73
  %"32" = sext i32 %"6" to i64, !dbg !73
  %"33" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"32", !dbg !73
  %"34" = sext i32 %"9" to i64, !dbg !73
  %"35" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"34", !dbg !73
  br label %gcd_bb3, !dbg !75

gcd_bb3:                                          ; preds = %gcd_bb5, %gcd_bb6, %gcd_bb2
  %"36" = load i32* %"17", align 4, !dbg !66
  %"37" = load i32* %"19", align 4, !dbg !66
  %"38" = icmp ne i32 %"36", %"37", !dbg !66
  br i1 %"38", label %gcd_bb4, label %gcd_bb7, !dbg !66

gcd_bb4:                                          ; preds = %gcd_bb3
  %"39" = load i32* %"21", align 4, !dbg !68
  %"40" = load i32* %"23", align 4, !dbg !68
  %"41" = icmp sgt i32 %"39", %"40", !dbg !68
  br i1 %"41", label %gcd_bb5, label %gcd_bb6, !dbg !68

gcd_bb5:                                          ; preds = %gcd_bb4
  %"42" = load i32* %"25", align 4, !dbg !71
  %"43" = load i32* %"27", align 4, !dbg !71
  %"44" = sub nsw i32 %"42", %"43", !dbg !71
  store i32 %"44", i32* %"29", align 4, !dbg !71
  br label %gcd_bb3, !dbg !76

gcd_bb6:                                          ; preds = %gcd_bb4
  %"45" = load i32* %"31", align 4, !dbg !73
  %"46" = load i32* %"33", align 4, !dbg !73
  %"47" = sub nsw i32 %"45", %"46", !dbg !73
  store i32 %"47", i32* %"35", align 4, !dbg !73
  br label %gcd_bb3

gcd_bb7:                                          ; preds = %gcd_bb3
  %"48" = sext i32 %"6" to i64, !dbg !77
  %"49" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"48", !dbg !77
  %"50" = load i32* %"49", align 4, !dbg !77
  ret i32 %"50", !dbg !77
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"51" = call i32 @__VERIFIER_nondet_int(), !dbg !78
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !79), !dbg !80
  %"52" = call i32 @__VERIFIER_nondet_int(), !dbg !81
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !82), !dbg !83
  %"53" = icmp sge i32 %"51", 0, !dbg !84
  %"54" = icmp sge i32 %"52", 0, !dbg !86
  %or.cond = and i1 %"53", %"54", !dbg !84
  br i1 %or.cond, label %main_bb9, label %main_gcd.exit, !dbg !84

main_bb9:                                         ; preds = %main_bb8
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !88), !dbg !91
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !92), !dbg !93
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !94), !dbg !96
  %"55" = load i32* @"'memory1_freeIndex", align 4, !dbg !97
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !98), !dbg !99
  %"56" = load i32* @"'memory1_freeIndex", align 4, !dbg !100
  %"57" = add nsw i32 %"56", 1, !dbg !100
  store i32 %"57", i32* @"'memory1_freeIndex", align 4, !dbg !100
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !101), !dbg !102
  call void @llvm.dbg.value(metadata !45, i64 0, metadata !103), !dbg !105
  %"58" = load i32* @"'memory0_freeIndex", align 4, !dbg !106
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !107), !dbg !108
  %"59" = load i32* @"'memory0_freeIndex", align 4, !dbg !109
  %"60" = add nsw i32 %"59", 1, !dbg !109
  store i32 %"60", i32* @"'memory0_freeIndex", align 4, !dbg !109
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !110), !dbg !111
  %"61" = sext i32 %"55" to i64, !dbg !112
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !112
  store i32 %"51", i32* %"62", align 4, !dbg !112
  %"63" = sext i32 %"58" to i64, !dbg !113
  %"64" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"63", !dbg !113
  store i32 %"52", i32* %"64", align 4, !dbg !113
  %"65" = sext i32 %"55" to i64, !dbg !114
  %"66" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"65", !dbg !114
  %"67" = sext i32 %"58" to i64, !dbg !114
  %"68" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"67", !dbg !114
  %"69" = sext i32 %"55" to i64, !dbg !115
  %"70" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"69", !dbg !115
  %"71" = sext i32 %"58" to i64, !dbg !115
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !115
  %"73" = sext i32 %"55" to i64, !dbg !116
  %"74" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"73", !dbg !116
  %"75" = sext i32 %"58" to i64, !dbg !116
  %"76" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"75", !dbg !116
  %"77" = sext i32 %"55" to i64, !dbg !116
  %"78" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"77", !dbg !116
  %"79" = sext i32 %"58" to i64, !dbg !117
  %"80" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"79", !dbg !117
  %"81" = sext i32 %"55" to i64, !dbg !117
  %"82" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"81", !dbg !117
  %"83" = sext i32 %"58" to i64, !dbg !117
  %"84" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"83", !dbg !117
  br label %main_bb10, !dbg !118

main_bb10:                                        ; preds = %main_bb13, %main_bb12, %main_bb9
  %"85" = load i32* %"66", align 4, !dbg !114
  %"86" = load i32* %"68", align 4, !dbg !114
  %"87" = icmp ne i32 %"85", %"86", !dbg !114
  br i1 %"87", label %main_bb11, label %main_gcd.exit, !dbg !114

main_bb11:                                        ; preds = %main_bb10
  %"88" = load i32* %"70", align 4, !dbg !115
  %"89" = load i32* %"72", align 4, !dbg !115
  %"90" = icmp sgt i32 %"88", %"89", !dbg !115
  br i1 %"90", label %main_bb12, label %main_bb13, !dbg !115

main_bb12:                                        ; preds = %main_bb11
  %"91" = load i32* %"74", align 4, !dbg !116
  %"92" = load i32* %"76", align 4, !dbg !116
  %"93" = sub nsw i32 %"91", %"92", !dbg !116
  store i32 %"93", i32* %"78", align 4, !dbg !116
  br label %main_bb10, !dbg !119

main_bb13:                                        ; preds = %main_bb11
  %"94" = load i32* %"80", align 4, !dbg !117
  %"95" = load i32* %"82", align 4, !dbg !117
  %"96" = sub nsw i32 %"94", %"95", !dbg !117
  store i32 %"96", i32* %"84", align 4, !dbg !117
  br label %main_bb10, !dbg !89

main_gcd.exit:                                    ; preds = %main_bb10, %main_bb8
  ret i32 0, !dbg !120
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!24, !25}
!llvm.ident = !{!26}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !16, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !10, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 17, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 17} ; [ DW_TAG_subprogram ] [line 17] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gcd", metadata !"gcd", metadata !"", i32 23, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @gcd, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [gcd]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 39, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 39} ; [ DW_TAG_subprogram ] [line 39] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !23}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 7, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 7] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 16, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 16] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 6, metadata !20, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 6] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 15, metadata !20, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 15] [def]
!24 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!25 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!26 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!27 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 8]
!28 = metadata !{i32 8, i32 26, metadata !4, null} ; [ DW_TAG_imported_declaration ]
!29 = metadata !{i32 9, i32 4, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!31 = metadata !{i32 9, i32 8, metadata !4, null}
!32 = metadata !{i32 10, i32 4, metadata !4, null}
!33 = metadata !{i32 11, i32 4, metadata !4, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 17]
!35 = metadata !{i32 17, i32 26, metadata !9, null}
!36 = metadata !{i32 18, i32 4, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!38 = metadata !{i32 18, i32 8, metadata !9, null}
!39 = metadata !{i32 19, i32 4, metadata !9, null}
!40 = metadata !{i32 20, i32 4, metadata !9, null}
!41 = metadata !{i32 786689, metadata !10, metadata !"y1", metadata !5, i32 16777239, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 23]
!42 = metadata !{i32 23, i32 13, metadata !10, null}
!43 = metadata !{i32 786689, metadata !10, metadata !"y2", metadata !5, i32 33554455, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 23]
!44 = metadata !{i32 23, i32 21, metadata !10, null}
!45 = metadata !{i32 1}
!46 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !47} ; [ DW_TAG_arg_variable ] [size] [line 17]
!47 = metadata !{i32 24, i32 18, metadata !10, null}
!48 = metadata !{i32 17, i32 26, metadata !9, metadata !47}
!49 = metadata !{i32 18, i32 4, metadata !9, metadata !47}
!50 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !47} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!51 = metadata !{i32 18, i32 8, metadata !9, metadata !47}
!52 = metadata !{i32 19, i32 4, metadata !9, metadata !47}
!53 = metadata !{i32 786688, metadata !10, metadata !"y1_ref", metadata !5, i32 24, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y1_ref] [line 24]
!54 = metadata !{i32 24, i32 9, metadata !10, null}
!55 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !56} ; [ DW_TAG_arg_variable ] [size] [line 8]
!56 = metadata !{i32 25, i32 18, metadata !10, null}
!57 = metadata !{i32 8, i32 26, metadata !4, metadata !56} ; [ DW_TAG_imported_declaration ]
!58 = metadata !{i32 9, i32 4, metadata !4, metadata !56}
!59 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !56} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!60 = metadata !{i32 9, i32 8, metadata !4, metadata !56}
!61 = metadata !{i32 10, i32 4, metadata !4, metadata !56}
!62 = metadata !{i32 786688, metadata !10, metadata !"y2_ref", metadata !5, i32 25, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y2_ref] [line 25]
!63 = metadata !{i32 25, i32 9, metadata !10, null}
!64 = metadata !{i32 26, i32 5, metadata !10, null}
!65 = metadata !{i32 27, i32 5, metadata !10, null}
!66 = metadata !{i32 29, i32 5, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 30, i32 13, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !70, i32 30, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 786443, metadata !1, metadata !10, i32 29, i32 48, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!71 = metadata !{i32 31, i32 13, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !69, i32 30, i32 48, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 33, i32 13, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !69, i32 32, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 29, i32 5, metadata !10, null}
!76 = metadata !{i32 32, i32 9, metadata !72, null}
!77 = metadata !{i32 36, i32 5, metadata !10, null}
!78 = metadata !{i32 40, i32 14, metadata !13, null}
!79 = metadata !{i32 786688, metadata !13, metadata !"y1", metadata !5, i32 40, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y1] [line 40]
!80 = metadata !{i32 40, i32 9, metadata !13, null}
!81 = metadata !{i32 41, i32 14, metadata !13, null}
!82 = metadata !{i32 786688, metadata !13, metadata !"y2", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y2] [line 41]
!83 = metadata !{i32 41, i32 9, metadata !13, null}
!84 = metadata !{i32 42, i32 9, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !13, i32 42, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 42, i32 9, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !85, i32 42, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 786689, metadata !10, metadata !"y1", metadata !5, i32 16777239, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [y1] [line 23]
!89 = metadata !{i32 43, i32 9, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !85, i32 42, i32 29, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 23, i32 13, metadata !10, metadata !89}
!92 = metadata !{i32 786689, metadata !10, metadata !"y2", metadata !5, i32 33554455, metadata !8, i32 0, metadata !89} ; [ DW_TAG_arg_variable ] [y2] [line 23]
!93 = metadata !{i32 23, i32 21, metadata !10, metadata !89}
!94 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777233, metadata !8, i32 0, metadata !95} ; [ DW_TAG_arg_variable ] [size] [line 17]
!95 = metadata !{i32 24, i32 18, metadata !10, metadata !89}
!96 = metadata !{i32 17, i32 26, metadata !9, metadata !95}
!97 = metadata !{i32 18, i32 4, metadata !9, metadata !95}
!98 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 18, metadata !8, i32 0, metadata !95} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 18]
!99 = metadata !{i32 18, i32 8, metadata !9, metadata !95}
!100 = metadata !{i32 19, i32 4, metadata !9, metadata !95}
!101 = metadata !{i32 786688, metadata !10, metadata !"y1_ref", metadata !5, i32 24, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [y1_ref] [line 24]
!102 = metadata !{i32 24, i32 9, metadata !10, metadata !89}
!103 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777224, metadata !8, i32 0, metadata !104} ; [ DW_TAG_arg_variable ] [size] [line 8]
!104 = metadata !{i32 25, i32 18, metadata !10, metadata !89}
!105 = metadata !{i32 8, i32 26, metadata !4, metadata !104} ; [ DW_TAG_imported_declaration ]
!106 = metadata !{i32 9, i32 4, metadata !4, metadata !104}
!107 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 9, metadata !8, i32 0, metadata !104} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 9]
!108 = metadata !{i32 9, i32 8, metadata !4, metadata !104}
!109 = metadata !{i32 10, i32 4, metadata !4, metadata !104}
!110 = metadata !{i32 786688, metadata !10, metadata !"y2_ref", metadata !5, i32 25, metadata !8, i32 0, metadata !89} ; [ DW_TAG_auto_variable ] [y2_ref] [line 25]
!111 = metadata !{i32 25, i32 9, metadata !10, metadata !89}
!112 = metadata !{i32 26, i32 5, metadata !10, metadata !89}
!113 = metadata !{i32 27, i32 5, metadata !10, metadata !89}
!114 = metadata !{i32 29, i32 5, metadata !67, metadata !89}
!115 = metadata !{i32 30, i32 13, metadata !69, metadata !89}
!116 = metadata !{i32 31, i32 13, metadata !72, metadata !89}
!117 = metadata !{i32 33, i32 13, metadata !74, metadata !89}
!118 = metadata !{i32 29, i32 5, metadata !10, metadata !89}
!119 = metadata !{i32 32, i32 9, metadata !72, metadata !89}
!120 = metadata !{i32 45, i32 5, metadata !13, null}

