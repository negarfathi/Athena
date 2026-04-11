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
  %"6" = sext i32 %y1 to i64, !dbg !45
  %"7" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"6", !dbg !45
  %"8" = sext i32 %y2 to i64, !dbg !45
  %"9" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"8", !dbg !45
  %"10" = sext i32 %y1 to i64, !dbg !47
  %"11" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"10", !dbg !47
  %"12" = sext i32 %y2 to i64, !dbg !47
  %"13" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"12", !dbg !47
  %"14" = sext i32 %y1 to i64, !dbg !50
  %"15" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"14", !dbg !50
  %"16" = sext i32 %y2 to i64, !dbg !50
  %"17" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"16", !dbg !50
  %"18" = sext i32 %y1 to i64, !dbg !50
  %"19" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"18", !dbg !50
  %"20" = sext i32 %y2 to i64, !dbg !52
  %"21" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"20", !dbg !52
  %"22" = sext i32 %y1 to i64, !dbg !52
  %"23" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"22", !dbg !52
  %"24" = sext i32 %y2 to i64, !dbg !52
  %"25" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"24", !dbg !52
  br label %gcd_bb3, !dbg !54

gcd_bb3:                                          ; preds = %gcd_bb5, %gcd_bb6, %gcd_bb2
  %"26" = load i32* %"7", align 4, !dbg !45
  %"27" = load i32* %"9", align 4, !dbg !45
  %"28" = icmp ne i32 %"26", %"27", !dbg !45
  br i1 %"28", label %gcd_bb4, label %gcd_bb7, !dbg !45

gcd_bb4:                                          ; preds = %gcd_bb3
  %"29" = load i32* %"11", align 4, !dbg !47
  %"30" = load i32* %"13", align 4, !dbg !47
  %"31" = icmp sgt i32 %"29", %"30", !dbg !47
  br i1 %"31", label %gcd_bb5, label %gcd_bb6, !dbg !47

gcd_bb5:                                          ; preds = %gcd_bb4
  %"32" = load i32* %"15", align 4, !dbg !50
  %"33" = load i32* %"17", align 4, !dbg !50
  %"34" = sub nsw i32 %"32", %"33", !dbg !50
  store i32 %"34", i32* %"19", align 4, !dbg !50
  br label %gcd_bb3, !dbg !55

gcd_bb6:                                          ; preds = %gcd_bb4
  %"35" = load i32* %"21", align 4, !dbg !52
  %"36" = load i32* %"23", align 4, !dbg !52
  %"37" = sub nsw i32 %"35", %"36", !dbg !52
  store i32 %"37", i32* %"25", align 4, !dbg !52
  br label %gcd_bb3

gcd_bb7:                                          ; preds = %gcd_bb3
  %"38" = sext i32 %y1 to i64, !dbg !56
  %"39" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"38", !dbg !56
  %"40" = load i32* %"39", align 4, !dbg !56
  ret i32 %"40", !dbg !56
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !58), !dbg !60
  %"41" = load i32* @"'memory1_freeIndex", align 4, !dbg !61
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !62), !dbg !63
  %"42" = load i32* @"'memory1_freeIndex", align 4, !dbg !64
  %"43" = add nsw i32 %"42", 1, !dbg !64
  store i32 %"43", i32* @"'memory1_freeIndex", align 4, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !65), !dbg !66
  call void @llvm.dbg.value(metadata !57, i64 0, metadata !67), !dbg !69
  %"44" = load i32* @"'memory0_freeIndex", align 4, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !71), !dbg !72
  %"45" = load i32* @"'memory0_freeIndex", align 4, !dbg !73
  %"46" = add nsw i32 %"45", 1, !dbg !73
  store i32 %"46", i32* @"'memory0_freeIndex", align 4, !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !74), !dbg !75
  %"47" = call i32 @__VERIFIER_nondet_int(), !dbg !76
  %"48" = sext i32 %"41" to i64, !dbg !76
  %"49" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"48", !dbg !76
  store i32 %"47", i32* %"49", align 4, !dbg !76
  %"50" = call i32 @__VERIFIER_nondet_int(), !dbg !77
  %"51" = sext i32 %"44" to i64, !dbg !77
  %"52" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"51", !dbg !77
  store i32 %"50", i32* %"52", align 4, !dbg !77
  %"53" = sext i32 %"41" to i64, !dbg !78
  %"54" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"53", !dbg !78
  %"55" = load i32* %"54", align 4, !dbg !78
  %"56" = icmp sge i32 %"55", 0, !dbg !78
  br i1 %"56", label %main_bb9, label %main_gcd.exit, !dbg !78

main_bb9:                                         ; preds = %main_bb8
  %"57" = sext i32 %"44" to i64, !dbg !80
  %"58" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"57", !dbg !80
  %"59" = load i32* %"58", align 4, !dbg !80
  %"60" = icmp sge i32 %"59", 0, !dbg !80
  br i1 %"60", label %main_bb10, label %main_gcd.exit, !dbg !80

main_bb10:                                        ; preds = %main_bb9
  call void @llvm.dbg.value(metadata !{i32 %"41"}, i64 0, metadata !82), !dbg !85
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !86), !dbg !87
  %"61" = sext i32 %"41" to i64, !dbg !88
  %"62" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"61", !dbg !88
  %"63" = sext i32 %"44" to i64, !dbg !88
  %"64" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"63", !dbg !88
  %"65" = sext i32 %"41" to i64, !dbg !89
  %"66" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"65", !dbg !89
  %"67" = sext i32 %"44" to i64, !dbg !89
  %"68" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"67", !dbg !89
  %"69" = sext i32 %"41" to i64, !dbg !90
  %"70" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"69", !dbg !90
  %"71" = sext i32 %"44" to i64, !dbg !90
  %"72" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"71", !dbg !90
  %"73" = sext i32 %"41" to i64, !dbg !90
  %"74" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"73", !dbg !90
  %"75" = sext i32 %"44" to i64, !dbg !91
  %"76" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"75", !dbg !91
  %"77" = sext i32 %"41" to i64, !dbg !91
  %"78" = getelementptr inbounds [100000 x i32]* @memory1, i32 0, i64 %"77", !dbg !91
  %"79" = sext i32 %"44" to i64, !dbg !91
  %"80" = getelementptr inbounds [100000 x i32]* @memory0, i32 0, i64 %"79", !dbg !91
  br label %main_bb11, !dbg !92

main_bb11:                                        ; preds = %main_bb14, %main_bb13, %main_bb10
  %"81" = load i32* %"62", align 4, !dbg !88
  %"82" = load i32* %"64", align 4, !dbg !88
  %"83" = icmp ne i32 %"81", %"82", !dbg !88
  br i1 %"83", label %main_bb12, label %main_gcd.exit, !dbg !88

main_bb12:                                        ; preds = %main_bb11
  %"84" = load i32* %"66", align 4, !dbg !89
  %"85" = load i32* %"68", align 4, !dbg !89
  %"86" = icmp sgt i32 %"84", %"85", !dbg !89
  br i1 %"86", label %main_bb13, label %main_bb14, !dbg !89

main_bb13:                                        ; preds = %main_bb12
  %"87" = load i32* %"70", align 4, !dbg !90
  %"88" = load i32* %"72", align 4, !dbg !90
  %"89" = sub nsw i32 %"87", %"88", !dbg !90
  store i32 %"89", i32* %"74", align 4, !dbg !90
  br label %main_bb11, !dbg !93

main_bb14:                                        ; preds = %main_bb12
  %"90" = load i32* %"76", align 4, !dbg !91
  %"91" = load i32* %"78", align 4, !dbg !91
  %"92" = sub nsw i32 %"90", %"91", !dbg !91
  store i32 %"92", i32* %"80", align 4, !dbg !91
  br label %main_bb11, !dbg !83

main_gcd.exit:                                    ; preds = %main_bb11, %main_bb9, %main_bb8
  ret i32 0, !dbg !94
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory1", metadata !"allocate_memory1", metadata !"", i32 29, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory1, null, null, metadata !2, i32 29} ; [ DW_TAG_subprogram ] [line 29] [def] [allocate_memory1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"gcd", metadata !"gcd", metadata !"", i32 35, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @gcd, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 35] [def] [gcd]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !8, metadata !8, metadata !8}
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 46, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 46} ; [ DW_TAG_subprogram ] [line 46] [def] [main]
!14 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8}
!16 = metadata !{metadata !17, metadata !18, metadata !19, metadata !23}
!17 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 19, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 19] [def]
!18 = metadata !{i32 786484, i32 0, null, metadata !"memory1_freeIndex", metadata !"memory1_freeIndex", metadata !"", metadata !5, i32 28, metadata !8, i32 0, i32 1, i32* @"'memory1_freeIndex", null} ; [ DW_TAG_variable ] [memory1_freeIndex] [line 28] [def]
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 18, metadata !20, i32 0, i32 1, [100000 x i32]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 18] [def]
!20 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 3200000, i64 32, i32 0, i32 0, metadata !8, metadata !21, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 3200000, align 32, offset 0] [from int]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!23 = metadata !{i32 786484, i32 0, null, metadata !"memory1", metadata !"memory1", metadata !"", metadata !5, i32 27, metadata !20, i32 0, i32 1, [100000 x i32]* @memory1, null} ; [ DW_TAG_variable ] [memory1] [line 27] [def]
!24 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!25 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!26 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!27 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777236, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 20]
!28 = metadata !{i32 20, i32 26, metadata !4, null}
!29 = metadata !{i32 21, i32 4, metadata !4, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 21]
!31 = metadata !{i32 21, i32 8, metadata !4, null}
!32 = metadata !{i32 22, i32 4, metadata !4, null}
!33 = metadata !{i32 23, i32 4, metadata !4, null}
!34 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 29]
!35 = metadata !{i32 29, i32 26, metadata !9, null}
!36 = metadata !{i32 30, i32 4, metadata !9, null}
!37 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!38 = metadata !{i32 30, i32 8, metadata !9, null}
!39 = metadata !{i32 31, i32 4, metadata !9, null}
!40 = metadata !{i32 32, i32 4, metadata !9, null}
!41 = metadata !{i32 786689, metadata !10, metadata !"y1", metadata !5, i32 16777251, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y1] [line 35]
!42 = metadata !{i32 35, i32 13, metadata !10, null}
!43 = metadata !{i32 786689, metadata !10, metadata !"y2", metadata !5, i32 33554467, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y2] [line 35]
!44 = metadata !{i32 35, i32 21, metadata !10, null}
!45 = metadata !{i32 36, i32 2, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !10, i32 36, i32 2, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 37, i32 7, metadata !48, null}
!48 = metadata !{i32 786443, metadata !1, metadata !49, i32 37, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!49 = metadata !{i32 786443, metadata !1, metadata !10, i32 36, i32 37, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 38, i32 4, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !48, i32 37, i32 34, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 40, i32 4, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !48, i32 39, i32 10, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 36, i32 2, metadata !10, null}
!55 = metadata !{i32 39, i32 3, metadata !51, null}
!56 = metadata !{i32 43, i32 2, metadata !10, null}
!57 = metadata !{i32 1}
!58 = metadata !{i32 786689, metadata !9, metadata !"size", metadata !5, i32 16777245, metadata !8, i32 0, metadata !59} ; [ DW_TAG_arg_variable ] [size] [line 29]
!59 = metadata !{i32 47, i32 18, metadata !13, null}
!60 = metadata !{i32 29, i32 26, metadata !9, metadata !59}
!61 = metadata !{i32 30, i32 4, metadata !9, metadata !59}
!62 = metadata !{i32 786688, metadata !9, metadata !"allocatedIndex", metadata !5, i32 30, metadata !8, i32 0, metadata !59} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 30]
!63 = metadata !{i32 30, i32 8, metadata !9, metadata !59}
!64 = metadata !{i32 31, i32 4, metadata !9, metadata !59}
!65 = metadata !{i32 786688, metadata !13, metadata !"y1", metadata !5, i32 47, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y1] [line 47]
!66 = metadata !{i32 47, i32 13, metadata !13, null}
!67 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777236, metadata !8, i32 0, metadata !68} ; [ DW_TAG_arg_variable ] [size] [line 20]
!68 = metadata !{i32 48, i32 11, metadata !13, null}
!69 = metadata !{i32 20, i32 26, metadata !4, metadata !68}
!70 = metadata !{i32 21, i32 4, metadata !4, metadata !68}
!71 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 21, metadata !8, i32 0, metadata !68} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 21]
!72 = metadata !{i32 21, i32 8, metadata !4, metadata !68}
!73 = metadata !{i32 22, i32 4, metadata !4, metadata !68}
!74 = metadata !{i32 786688, metadata !13, metadata !"y2", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y2] [line 48]
!75 = metadata !{i32 48, i32 6, metadata !13, null}
!76 = metadata !{i32 49, i32 16, metadata !13, null}
!77 = metadata !{i32 50, i32 16, metadata !13, null}
!78 = metadata !{i32 51, i32 6, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !13, i32 51, i32 6, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 51, i32 6, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !79, i32 51, i32 6, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 786689, metadata !10, metadata !"y1", metadata !5, i32 16777251, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [y1] [line 35]
!83 = metadata !{i32 52, i32 3, metadata !84, null}
!84 = metadata !{i32 786443, metadata !1, metadata !79, i32 51, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 35, i32 13, metadata !10, metadata !83}
!86 = metadata !{i32 786689, metadata !10, metadata !"y2", metadata !5, i32 33554467, metadata !8, i32 0, metadata !83} ; [ DW_TAG_arg_variable ] [y2] [line 35]
!87 = metadata !{i32 35, i32 21, metadata !10, metadata !83}
!88 = metadata !{i32 36, i32 2, metadata !46, metadata !83}
!89 = metadata !{i32 37, i32 7, metadata !48, metadata !83}
!90 = metadata !{i32 38, i32 4, metadata !51, metadata !83}
!91 = metadata !{i32 40, i32 4, metadata !53, metadata !83}
!92 = metadata !{i32 36, i32 2, metadata !10, metadata !83}
!93 = metadata !{i32 39, i32 3, metadata !51, metadata !83}
!94 = metadata !{i32 54, i32 2, metadata !13, null}

