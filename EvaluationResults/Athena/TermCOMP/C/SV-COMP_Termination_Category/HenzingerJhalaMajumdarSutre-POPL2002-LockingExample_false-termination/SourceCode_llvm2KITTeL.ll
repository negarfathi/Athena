; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'LOCK" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @lock() #0 {
lock_bb0:
  %"0" = load i32* @"'LOCK", align 4, !dbg !18
  %"1" = icmp eq i32 %"0", 0, !dbg !18
  br i1 %"1", label %lock_bb1, label %lock_bb2, !dbg !18

lock_bb1:                                         ; preds = %lock_bb0
  store i32 1, i32* @"'LOCK", align 4, !dbg !20
  br label %lock_bb2, !dbg !22

lock_bb2:                                         ; preds = %lock_bb0, %lock_bb1
  ret void, !dbg !23
}

; Function Attrs: nounwind uwtable
define void @unlock() #0 {
unlock_bb3:
  %"2" = load i32* @"'LOCK", align 4, !dbg !24
  %"3" = icmp eq i32 %"2", 1, !dbg !24
  br i1 %"3", label %unlock_bb4, label %unlock_bb5, !dbg !24

unlock_bb4:                                       ; preds = %unlock_bb3
  store i32 0, i32* @"'LOCK", align 4, !dbg !26
  br label %unlock_bb5, !dbg !28

unlock_bb5:                                       ; preds = %unlock_bb3, %unlock_bb4
  ret void, !dbg !29
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !31), !dbg !32
  call void @llvm.dbg.value(metadata !30, i64 0, metadata !33), !dbg !34
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  %"5" = icmp ne i32 %"4", 0, !dbg !35
  br i1 %"5", label %main_bb7, label %main_bb12, !dbg !35

main_bb7:                                         ; preds = %main_bb6, %main_unlock.exit3
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !37
  %"7" = icmp ne i32 %"6", 0, !dbg !37
  br i1 %"7", label %main_bb8, label %main_bb10, !dbg !37

main_bb8:                                         ; preds = %main_bb7
  %"8" = load i32* @"'LOCK", align 4, !dbg !41
  %"9" = icmp eq i32 %"8", 0, !dbg !41
  br i1 %"9", label %main_bb9, label %main_lock.exit, !dbg !41

main_bb9:                                         ; preds = %main_bb8
  store i32 1, i32* @"'LOCK", align 4, !dbg !44
  br label %main_lock.exit, !dbg !45

main_lock.exit:                                   ; preds = %main_bb8, %main_bb9
  %"10" = add nsw i32 0, 1, !dbg !46
  br label %main_bb10, !dbg !47

main_bb10:                                        ; preds = %main_lock.exit, %main_bb7
  %got_lock.0 = phi i32 [ %"10", %main_lock.exit ], [ 0, %main_bb7 ]
  %"11" = icmp ne i32 %got_lock.0, 0, !dbg !48
  %"12" = load i32* @"'LOCK", align 4
  %"13" = icmp eq i32 %"12", 1, !dbg !50
  %or.cond = and i1 %"11", %"13", !dbg !48
  br i1 %or.cond, label %main_bb11, label %main_unlock.exit3, !dbg !48

main_bb11:                                        ; preds = %main_bb10
  store i32 0, i32* @"'LOCK", align 4, !dbg !53
  br label %main_unlock.exit3, !dbg !54

main_unlock.exit3:                                ; preds = %main_bb10, %main_bb11
  %"14" = call i32 @__VERIFIER_nondet_int(), !dbg !55
  %"15" = icmp ne i32 %"14", 0, !dbg !55
  br i1 %"15", label %main_bb7, label %main_bb12, !dbg !55

main_bb12:                                        ; preds = %main_bb6, %main_unlock.exit3, %main_bb16
  %new.0 = phi i32 [ %new.1, %main_bb16 ], [ 0, %main_unlock.exit3 ], [ 0, %main_bb6 ]
  %"16" = load i32* @"'LOCK", align 4, !dbg !57
  %"17" = icmp eq i32 %"16", 0, !dbg !57
  br i1 %"17", label %main_bb13, label %main_lock.exit2, !dbg !57

main_bb13:                                        ; preds = %main_bb12
  store i32 1, i32* @"'LOCK", align 4, !dbg !60
  br label %main_lock.exit2, !dbg !61

main_lock.exit2:                                  ; preds = %main_bb12, %main_bb13
  %"18" = call i32 @__VERIFIER_nondet_int(), !dbg !62
  %"19" = icmp ne i32 %"18", 0, !dbg !62
  br i1 %"19", label %main_bb14, label %main_bb16, !dbg !62

main_bb14:                                        ; preds = %main_lock.exit2
  %"20" = load i32* @"'LOCK", align 4, !dbg !64
  %"21" = icmp eq i32 %"20", 1, !dbg !64
  br i1 %"21", label %main_bb15, label %main_unlock.exit1, !dbg !64

main_bb15:                                        ; preds = %main_bb14
  store i32 0, i32* @"'LOCK", align 4, !dbg !67
  br label %main_unlock.exit1, !dbg !68

main_unlock.exit1:                                ; preds = %main_bb14, %main_bb15
  %"22" = add nsw i32 %new.0, 1, !dbg !69
  br label %main_bb16, !dbg !70

main_bb16:                                        ; preds = %main_lock.exit2, %main_unlock.exit1
  %new.1 = phi i32 [ %"22", %main_unlock.exit1 ], [ %new.0, %main_lock.exit2 ]
  %"23" = icmp ne i32 %new.1, %new.0, !dbg !71
  br i1 %"23", label %main_bb12, label %main_bb17, !dbg !71

main_bb17:                                        ; preds = %main_bb16
  %"24" = load i32* @"'LOCK", align 4, !dbg !73
  %"25" = icmp eq i32 %"24", 1, !dbg !73
  br i1 %"25", label %main_bb18, label %main_unlock.exit, !dbg !73

main_bb18:                                        ; preds = %main_bb17
  store i32 0, i32* @"'LOCK", align 4, !dbg !75
  br label %main_unlock.exit, !dbg !76

main_unlock.exit:                                 ; preds = %main_bb17, %main_bb18
  ret i32 0, !dbg !77
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"lock", metadata !"lock", metadata !"", i32 15, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @lock, null, null, metadata !2, i32 15} ; [ DW_TAG_subprogram ] [line 15] [def] [lock]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"unlock", metadata !"unlock", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @unlock, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [unlock]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 31, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786484, i32 0, null, metadata !"LOCK", metadata !"LOCK", metadata !"", metadata !5, i32 13, metadata !12, i32 0, i32 1, i32* @"'LOCK", null} ; [ DW_TAG_variable ] [LOCK] [line 13] [def]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!18 = metadata !{i32 16, i32 6, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 17, i32 3, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !19, i32 16, i32 17, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 18, i32 2, metadata !21, null}
!23 = metadata !{i32 21, i32 1, metadata !4, null}
!24 = metadata !{i32 24, i32 6, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !8, i32 24, i32 6, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 25, i32 3, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 24, i32 17, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 26, i32 2, metadata !27, null}
!29 = metadata !{i32 29, i32 1, metadata !8, null}
!30 = metadata !{i32 0}
!31 = metadata !{i32 786688, metadata !9, metadata !"old", metadata !5, i32 33, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [old] [line 33]
!32 = metadata !{i32 33, i32 6, metadata !9, null}
!33 = metadata !{i32 786688, metadata !9, metadata !"new", metadata !5, i32 33, metadata !12, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new] [line 33]
!34 = metadata !{i32 33, i32 15, metadata !9, null}
!35 = metadata !{i32 34, i32 6, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !9, i32 34, i32 6, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 37, i32 8, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !39, i32 37, i32 8, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 35, i32 6, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 786443, metadata !1, metadata !36, i32 34, i32 31, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 16, i32 6, metadata !19, metadata !42}
!42 = metadata !{i32 38, i32 5, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !38, i32 37, i32 33, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 17, i32 3, metadata !21, metadata !42}
!45 = metadata !{i32 18, i32 2, metadata !21, metadata !42}
!46 = metadata !{i32 39, i32 5, metadata !43, null}
!47 = metadata !{i32 40, i32 4, metadata !43, null}
!48 = metadata !{i32 41, i32 8, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !39, i32 41, i32 8, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 24, i32 6, metadata !25, metadata !51}
!51 = metadata !{i32 42, i32 5, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !49, i32 41, i32 18, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 25, i32 3, metadata !27, metadata !51}
!54 = metadata !{i32 26, i32 2, metadata !27, metadata !51}
!55 = metadata !{i32 44, i32 12, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !40, i32 44, i32 12, i32 1, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 16, i32 6, metadata !19, metadata !58}
!58 = metadata !{i32 47, i32 3, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !9, i32 46, i32 5, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 17, i32 3, metadata !21, metadata !58}
!61 = metadata !{i32 18, i32 2, metadata !21, metadata !58}
!62 = metadata !{i32 49, i32 7, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !59, i32 49, i32 7, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 24, i32 6, metadata !25, metadata !65}
!65 = metadata !{i32 50, i32 4, metadata !66, null}
!66 = metadata !{i32 786443, metadata !1, metadata !63, i32 49, i32 32, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!67 = metadata !{i32 25, i32 3, metadata !27, metadata !65}
!68 = metadata !{i32 26, i32 2, metadata !27, metadata !65}
!69 = metadata !{i32 51, i32 4, metadata !66, null}
!70 = metadata !{i32 52, i32 3, metadata !66, null}
!71 = metadata !{i32 53, i32 2, metadata !72, null}
!72 = metadata !{i32 786443, metadata !1, metadata !59, i32 53, i32 2, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 24, i32 6, metadata !25, metadata !74}
!74 = metadata !{i32 54, i32 2, metadata !9, null}
!75 = metadata !{i32 25, i32 3, metadata !27, metadata !74}
!76 = metadata !{i32 26, i32 2, metadata !27, metadata !74}
!77 = metadata !{i32 55, i32 2, metadata !9, null}

