; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'ldv_mutex" = global i32 1, align 4
@"'open_called" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @__blast_assert() #0 {
__blast_assert_bb0:
  call void (...)* @__VERIFIER_error() #4, !dbg !26
  unreachable, !dbg !26
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @mutex_lock() #0 {
mutex_lock_bb1:
  %"0" = load i32* @"'ldv_mutex", align 4, !dbg !27
  %"1" = icmp eq i32 %"0", 1, !dbg !27
  br i1 %"1", label %mutex_lock_bb2, label %mutex_lock_bb3, !dbg !27

mutex_lock_bb2:                                   ; preds = %mutex_lock_bb1
  store i32 2, i32* @"'ldv_mutex", align 4, !dbg !28
  ret void, !dbg !29

mutex_lock_bb3:                                   ; preds = %mutex_lock_bb1
  call void (...)* @__VERIFIER_error() #5, !dbg !30
  unreachable, !dbg !30
}

; Function Attrs: nounwind uwtable
define void @mutex_unlock() #0 {
mutex_unlock_bb4:
  %"2" = load i32* @"'ldv_mutex", align 4, !dbg !33
  %"3" = icmp eq i32 %"2", 2, !dbg !33
  br i1 %"3", label %mutex_unlock_bb5, label %mutex_unlock_bb6, !dbg !33

mutex_unlock_bb5:                                 ; preds = %mutex_unlock_bb4
  store i32 1, i32* @"'ldv_mutex", align 4, !dbg !34
  ret void, !dbg !35

mutex_unlock_bb6:                                 ; preds = %mutex_unlock_bb4
  call void (...)* @__VERIFIER_error() #5, !dbg !36
  unreachable, !dbg !36
}

; Function Attrs: nounwind uwtable
define void @check_final_state() #0 {
check_final_state_bb7:
  %"4" = load i32* @"'ldv_mutex", align 4, !dbg !39
  %"5" = icmp eq i32 %"4", 1, !dbg !39
  br i1 %"5", label %check_final_state_bb8, label %check_final_state_bb9, !dbg !39

check_final_state_bb8:                            ; preds = %check_final_state_bb7
  ret void, !dbg !40

check_final_state_bb9:                            ; preds = %check_final_state_bb7
  call void (...)* @__VERIFIER_error() #5, !dbg !41
  unreachable, !dbg !41
}

; Function Attrs: nounwind uwtable
define void @main() #0 {
main_bb10:
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !45), !dbg !46
  store i32 0, i32* @"'open_called", align 4, !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !44, i64 0, metadata !45), !dbg !46
  br label %main_misc_release.exit, !dbg !49

main_misc_release.exit:                           ; preds = %main_NewDefault, %main_bb15, %main_bb16, %main_misc_open.exit, %main_bb12, %main_mutex_lock.exit2.i, %main_mutex_unlock.exit.i, %main_bb17, %main_bb10
  %ldv_s_misc_fops_file_operations.0 = phi i32 [ 0, %main_bb10 ], [ %.ldv_s_misc_fops_file_operations.01, %main_bb16 ], [ %.ldv_s_misc_fops_file_operations.0, %main_bb15 ], [ %"12", %main_misc_open.exit ], [ %ldv_s_misc_fops_file_operations.0, %main_bb12 ], [ %ldv_s_misc_fops_file_operations.0, %main_bb17 ], [ 0, %main_mutex_unlock.exit.i ], [ 0, %main_mutex_lock.exit2.i ], [ %ldv_s_misc_fops_file_operations.0, %main_NewDefault ]
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !50
  %"7" = icmp ne i32 %"6", 0, !dbg !50
  br i1 %"7", label %main_bb11, label %main_bb25, !dbg !50

main_bb11:                                        ; preds = %main_misc_release.exit
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !52
  br label %main_NodeBlock6

main_NodeBlock6:                                  ; preds = %main_bb11
  %Pivot7 = icmp slt i32 %"8", 2
  br i1 %Pivot7, label %main_NodeBlock, label %main_NodeBlock4

main_NodeBlock:                                   ; preds = %main_NodeBlock6
  %Pivot = icmp slt i32 %"8", 1
  br i1 %Pivot, label %main_LeafBlock, label %main_bb15

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"8", 0
  br i1 %SwitchLeaf, label %main_bb12, label %main_NewDefault

main_bb12:                                        ; preds = %main_LeafBlock
  %"9" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 0, !dbg !54
  br i1 %"9", label %main_bb13, label %main_misc_release.exit, !dbg !54

main_bb13:                                        ; preds = %main_bb12
  %"10" = call i32 @__VERIFIER_nondet_int() #6, !dbg !58
  %"11" = icmp ne i32 %"10", 0, !dbg !58
  br i1 %"11", label %main_misc_open.exit, label %main_bb14, !dbg !58

main_bb14:                                        ; preds = %main_bb13
  store i32 1, i32* @"'open_called", align 4, !dbg !62
  br label %main_misc_open.exit, !dbg !64

main_misc_open.exit:                              ; preds = %main_bb13, %main_bb14
  %"12" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1, !dbg !65
  br label %main_misc_release.exit, !dbg !66

main_bb15:                                        ; preds = %main_NodeBlock
  %"13" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 1, !dbg !67
  %"14" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1, !dbg !70
  %.ldv_s_misc_fops_file_operations.0 = select i1 %"13", i32 %"14", i32 %ldv_s_misc_fops_file_operations.0, !dbg !67
  br label %main_misc_release.exit, !dbg !72

main_NodeBlock4:                                  ; preds = %main_NodeBlock6
  %Pivot5 = icmp slt i32 %"8", 3
  br i1 %Pivot5, label %main_bb16, label %main_LeafBlock2

main_bb16:                                        ; preds = %main_NodeBlock4
  %"15" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 2, !dbg !73
  %"16" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1, !dbg !76
  %.ldv_s_misc_fops_file_operations.01 = select i1 %"15", i32 %"16", i32 %ldv_s_misc_fops_file_operations.0, !dbg !73
  br label %main_misc_release.exit, !dbg !78

main_LeafBlock2:                                  ; preds = %main_NodeBlock4
  %SwitchLeaf3 = icmp eq i32 %"8", 3
  br i1 %SwitchLeaf3, label %main_bb17, label %main_NewDefault

main_bb17:                                        ; preds = %main_LeafBlock2
  %"17" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 3, !dbg !79
  br i1 %"17", label %main_bb18, label %main_misc_release.exit, !dbg !79

main_bb18:                                        ; preds = %main_bb17
  %"18" = load i32* @"'open_called", align 4, !dbg !82
  %"19" = icmp ne i32 %"18", 0, !dbg !82
  %"20" = load i32* @"'ldv_mutex", align 4, !dbg !86
  %"21" = icmp eq i32 %"20", 1, !dbg !86
  br i1 %"19", label %main_bb19, label %main_bb22, !dbg !82

main_bb19:                                        ; preds = %main_bb18
  br i1 %"21", label %main_mutex_lock.exit.i, label %main_bb21, !dbg !86

main_mutex_lock.exit.i:                           ; preds = %main_bb19
  store i32 2, i32* @"'ldv_mutex", align 4, !dbg !89
  %"22" = load i32* @"'ldv_mutex", align 4, !dbg !90
  %"23" = icmp eq i32 %"22", 2, !dbg !90
  br i1 %"23", label %main_mutex_unlock.exit.i, label %main_bb20, !dbg !90

main_mutex_unlock.exit.i:                         ; preds = %main_mutex_lock.exit.i
  store i32 1, i32* @"'ldv_mutex", align 4, !dbg !92
  store i32 0, i32* @"'open_called", align 4, !dbg !93
  br label %main_misc_release.exit, !dbg !94

main_bb20:                                        ; preds = %main_mutex_lock.exit.i
  call void (...)* @__VERIFIER_error() #5, !dbg !95
  unreachable, !dbg !95

main_bb21:                                        ; preds = %main_bb19
  call void (...)* @__VERIFIER_error() #5, !dbg !97
  unreachable, !dbg !97

main_bb22:                                        ; preds = %main_bb18
  br i1 %"21", label %main_mutex_lock.exit1.i, label %main_bb24, !dbg !99

main_mutex_lock.exit1.i:                          ; preds = %main_bb22
  store i32 2, i32* @"'ldv_mutex", align 4, !dbg !102
  %"24" = load i32* @"'ldv_mutex", align 4, !dbg !103
  %"25" = icmp eq i32 %"24", 1, !dbg !103
  br i1 %"25", label %main_mutex_lock.exit2.i, label %main_bb23, !dbg !103

main_mutex_lock.exit2.i:                          ; preds = %main_mutex_lock.exit1.i
  store i32 2, i32* @"'ldv_mutex", align 4, !dbg !105
  br label %main_misc_release.exit, !dbg !84

main_bb23:                                        ; preds = %main_mutex_lock.exit1.i
  call void (...)* @__VERIFIER_error() #5, !dbg !106
  unreachable, !dbg !106

main_bb24:                                        ; preds = %main_bb22
  call void (...)* @__VERIFIER_error() #5, !dbg !108
  unreachable, !dbg !108

main_NewDefault:                                  ; preds = %main_LeafBlock2, %main_LeafBlock
  br label %main_misc_release.exit

main_bb25:                                        ; preds = %main_misc_release.exit
  %"26" = load i32* @"'ldv_mutex", align 4, !dbg !110
  %"27" = icmp eq i32 %"26", 1, !dbg !110
  br i1 %"27", label %main_check_final_state.exit, label %main_bb26, !dbg !110

main_check_final_state.exit:                      ; preds = %main_bb25
  ret void, !dbg !112

main_bb26:                                        ; preds = %main_bb25
  call void (...)* @__VERIFIER_error() #5, !dbg !113
  unreachable, !dbg !113
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

declare i32 @__VERIFIER_nondet_int() #3

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!23, !24}
!llvm.ident = !{!25}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !20, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !16, metadata !17, metadata !18, metadata !19}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"__blast_assert", metadata !"__blast_assert", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @__blast_assert, null, null, metadata !2, i32 3} ; [ DW_TAG_subprogram ] [line 3] [def] [__blast_assert]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mutex_lock", metadata !"mutex_lock", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @mutex_lock, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 15] [mutex_lock]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"mutex_unlock", metadata !"mutex_unlock", metadata !"", i32 20, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @mutex_unlock, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 20] [def] [scope 21] [mutex_unlock]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"check_final_state", metadata !"check_final_state", metadata !"", i32 26, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @check_final_state, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 26] [def] [scope 27] [check_final_state]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 73, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @main, null, null, metadata !2, i32 73} ; [ DW_TAG_subprogram ] [line 73] [def] [main]
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"misc_release", metadata !"misc_release", metadata !"", i32 31, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [local] [def] [misc_release]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !15}
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"misc_llseek", metadata !"misc_llseek", metadata !"", i32 47, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 47} ; [ DW_TAG_subprogram ] [line 47] [local] [def] [misc_llseek]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"misc_read", metadata !"misc_read", metadata !"", i32 51, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 51} ; [ DW_TAG_subprogram ] [line 51] [local] [def] [misc_read]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"misc_open", metadata !"misc_open", metadata !"", i32 55, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 0, i1 false, null, null, null, metadata !2, i32 56} ; [ DW_TAG_subprogram ] [line 55] [local] [def] [scope 56] [misc_open]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"my_init", metadata !"my_init", metadata !"", i32 66, metadata !13, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !2, i32 67} ; [ DW_TAG_subprogram ] [line 66] [local] [def] [scope 67] [my_init]
!20 = metadata !{metadata !21, metadata !22}
!21 = metadata !{i32 786484, i32 0, null, metadata !"ldv_mutex", metadata !"ldv_mutex", metadata !"", metadata !5, i32 9, metadata !15, i32 0, i32 1, i32* @"'ldv_mutex", null} ; [ DW_TAG_variable ] [ldv_mutex] [line 9] [def]
!22 = metadata !{i32 786484, i32 0, null, metadata !"open_called", metadata !"open_called", metadata !"", metadata !5, i32 11, metadata !15, i32 0, i32 1, i32* @"'open_called", null} ; [ DW_TAG_variable ] [open_called] [line 11] [def]
!23 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!24 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!25 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!26 = metadata !{i32 4, i32 8, metadata !4, null}
!27 = metadata !{i32 16, i32 3, metadata !8, null}
!28 = metadata !{i32 17, i32 3, metadata !8, null}
!29 = metadata !{i32 18, i32 1, metadata !8, null}
!30 = metadata !{i32 4, i32 8, metadata !4, metadata !31}
!31 = metadata !{i32 16, i32 27, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !8, i32 16, i32 27, i32 2, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 22, i32 2, metadata !9, null}
!34 = metadata !{i32 23, i32 2, metadata !9, null}
!35 = metadata !{i32 24, i32 1, metadata !9, null}
!36 = metadata !{i32 4, i32 8, metadata !4, metadata !37}
!37 = metadata !{i32 22, i32 26, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 26, i32 2, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 28, i32 2, metadata !10, null}
!40 = metadata !{i32 29, i32 1, metadata !10, null}
!41 = metadata !{i32 4, i32 8, metadata !4, metadata !42}
!42 = metadata !{i32 28, i32 26, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !10, i32 28, i32 26, i32 2, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 0}
!45 = metadata !{i32 786688, metadata !11, metadata !"ldv_s_misc_fops_file_operations", metadata !5, i32 74, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ldv_s_misc_fops_file_operations] [line 74]
!46 = metadata !{i32 74, i32 13, metadata !11, null}
!47 = metadata !{i32 69, i32 9, metadata !19, metadata !48}
!48 = metadata !{i32 75, i32 2, metadata !11, null}
!49 = metadata !{i32 76, i32 9, metadata !11, null}
!50 = metadata !{i32 76, i32 15, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !11, i32 76, i32 15, i32 1, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 78, i32 24, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !11, i32 76, i32 40, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 81, i32 36, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !56, i32 81, i32 36, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 80, i32 33, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !53, i32 78, i32 49, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 57, i32 12, metadata !59, metadata !60}
!59 = metadata !{i32 786443, metadata !1, metadata !18, i32 57, i32 12, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 82, i32 33, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !55, i32 81, i32 72, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 61, i32 17, metadata !63, metadata !60}
!63 = metadata !{i32 786443, metadata !1, metadata !59, i32 60, i32 16, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 62, i32 17, metadata !63, metadata !60}
!65 = metadata !{i32 83, i32 33, metadata !61, null}
!66 = metadata !{i32 84, i32 33, metadata !61, null}
!67 = metadata !{i32 89, i32 36, metadata !68, null}
!68 = metadata !{i32 786443, metadata !1, metadata !69, i32 89, i32 36, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!69 = metadata !{i32 786443, metadata !1, metadata !57, i32 88, i32 33, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 91, i32 33, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !68, i32 89, i32 72, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 94, i32 25, metadata !57, null}
!73 = metadata !{i32 97, i32 36, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 97, i32 36, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 786443, metadata !1, metadata !57, i32 96, i32 33, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 99, i32 33, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !74, i32 97, i32 72, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 102, i32 25, metadata !57, null}
!79 = metadata !{i32 105, i32 36, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !81, i32 105, i32 36, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 786443, metadata !1, metadata !57, i32 104, i32 33, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!82 = metadata !{i32 34, i32 12, metadata !83, metadata !84}
!83 = metadata !{i32 786443, metadata !1, metadata !12, i32 34, i32 12, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!84 = metadata !{i32 106, i32 33, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !80, i32 105, i32 72, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 16, i32 3, metadata !8, metadata !87}
!87 = metadata !{i32 36, i32 17, metadata !88, metadata !84}
!88 = metadata !{i32 786443, metadata !1, metadata !83, i32 34, i32 25, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!89 = metadata !{i32 17, i32 3, metadata !8, metadata !87}
!90 = metadata !{i32 22, i32 2, metadata !9, metadata !91}
!91 = metadata !{i32 37, i32 17, metadata !88, metadata !84}
!92 = metadata !{i32 23, i32 2, metadata !9, metadata !91}
!93 = metadata !{i32 38, i32 17, metadata !88, metadata !84}
!94 = metadata !{i32 39, i32 9, metadata !88, metadata !84}
!95 = metadata !{i32 4, i32 8, metadata !4, metadata !96}
!96 = metadata !{i32 22, i32 26, metadata !38, metadata !91}
!97 = metadata !{i32 4, i32 8, metadata !4, metadata !98}
!98 = metadata !{i32 16, i32 27, metadata !32, metadata !87}
!99 = metadata !{i32 16, i32 3, metadata !8, metadata !100}
!100 = metadata !{i32 41, i32 17, metadata !101, metadata !84}
!101 = metadata !{i32 786443, metadata !1, metadata !83, i32 39, i32 16, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 17, i32 3, metadata !8, metadata !100}
!103 = metadata !{i32 16, i32 3, metadata !8, metadata !104}
!104 = metadata !{i32 42, i32 17, metadata !101, metadata !84}
!105 = metadata !{i32 17, i32 3, metadata !8, metadata !104}
!106 = metadata !{i32 4, i32 8, metadata !4, metadata !107}
!107 = metadata !{i32 16, i32 27, metadata !32, metadata !104}
!108 = metadata !{i32 4, i32 8, metadata !4, metadata !109}
!109 = metadata !{i32 16, i32 27, metadata !32, metadata !100}
!110 = metadata !{i32 28, i32 2, metadata !10, metadata !111}
!111 = metadata !{i32 115, i32 9, metadata !11, null}
!112 = metadata !{i32 116, i32 2, metadata !11, null}
!113 = metadata !{i32 4, i32 8, metadata !4, metadata !114}
!114 = metadata !{i32 28, i32 26, metadata !43, metadata !111}

