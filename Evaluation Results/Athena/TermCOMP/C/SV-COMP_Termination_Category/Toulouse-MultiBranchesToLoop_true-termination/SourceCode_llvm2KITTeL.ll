; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !12
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !13), !dbg !14
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !16), !dbg !17
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  %"3" = icmp ne i32 %"2", 0, !dbg !18
  %. = select i1 %"3", i32 1, i32 -1, !dbg !20
  %"4" = icmp sgt i32 %., 0, !dbg !22
  %"5" = add nsw i32 %., 1, !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !26), !dbg !27
  %"6" = add nsw i32 %., -1, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !26), !dbg !27
  %x.1 = select i1 %"4", i32 %"5", i32 %"6", !dbg !22
  %"7" = icmp sgt i32 %x.1, 0, !dbg !30
  %"8" = add nsw i32 %x.1, 1, !dbg !32
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !26), !dbg !27
  %"9" = add nsw i32 %x.1, -1, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !26), !dbg !27
  %x.2 = select i1 %"7", i32 %"8", i32 %"9", !dbg !30
  %"10" = icmp sgt i32 %x.2, 0, !dbg !36
  %"11" = add nsw i32 %x.2, 1, !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !26), !dbg !27
  %"12" = add nsw i32 %x.2, -1, !dbg !40
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !26), !dbg !27
  %x.3 = select i1 %"10", i32 %"11", i32 %"12", !dbg !36
  %"13" = icmp sgt i32 %x.3, 0, !dbg !42
  %"14" = add nsw i32 %x.3, 1, !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !26), !dbg !27
  %"15" = add nsw i32 %x.3, -1, !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !26), !dbg !27
  %x.4 = select i1 %"13", i32 %"14", i32 %"15", !dbg !42
  %"16" = icmp sgt i32 %x.4, 0, !dbg !48
  %"17" = add nsw i32 %x.4, 1, !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"17"}, i64 0, metadata !26), !dbg !27
  %"18" = add nsw i32 %x.4, -1, !dbg !52
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !26), !dbg !27
  %x.5 = select i1 %"16", i32 %"17", i32 %"18", !dbg !48
  %"19" = icmp sgt i32 %x.5, 0, !dbg !54
  %"20" = add nsw i32 %x.5, 1, !dbg !56
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !26), !dbg !27
  %"21" = add nsw i32 %x.5, -1, !dbg !58
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !26), !dbg !27
  %x.6 = select i1 %"19", i32 %"20", i32 %"21", !dbg !54
  %"22" = icmp sgt i32 %x.6, 0, !dbg !60
  %"23" = add nsw i32 %x.6, 1, !dbg !62
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !26), !dbg !27
  %"24" = add nsw i32 %x.6, -1, !dbg !64
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !26), !dbg !27
  %x.7 = select i1 %"22", i32 %"23", i32 %"24", !dbg !60
  %"25" = icmp sgt i32 %x.7, 0, !dbg !66
  %"26" = add nsw i32 %x.7, 1, !dbg !68
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !26), !dbg !27
  %"27" = add nsw i32 %x.7, -1, !dbg !70
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !26), !dbg !27
  %x.8 = select i1 %"25", i32 %"26", i32 %"27", !dbg !66
  br label %main_bb1, !dbg !66

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %z.0 = phi i32 [ %"31", %main_bb2 ], [ %"1", %main_bb0 ]
  %y.0 = phi i32 [ %"30", %main_bb2 ], [ %"0", %main_bb0 ]
  %"28" = icmp slt i32 %y.0, 100, !dbg !72
  %"29" = icmp slt i32 %z.0, 100, !dbg !74
  %.1 = select i1 %"28", i1 %"29", i1 false, !dbg !72
  br i1 %.1, label %main_bb2, label %main_bb3, !dbg !76

main_bb2:                                         ; preds = %main_bb1
  %"30" = add nsw i32 %y.0, %x.8, !dbg !78
  %"31" = sub nsw i32 %z.0, %x.8, !dbg !80
  br label %main_bb1, !dbg !81

main_bb3:                                         ; preds = %main_bb1
  ret i32 0, !dbg !82
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
!llvm.module.flags = !{!9, !10}
!llvm.ident = !{!11}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [main]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!10 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!11 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!12 = metadata !{i32 12, i32 10, metadata !4, null}
!13 = metadata !{i32 786688, metadata !4, metadata !"y", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 12]
!14 = metadata !{i32 12, i32 6, metadata !4, null}
!15 = metadata !{i32 13, i32 10, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 13]
!17 = metadata !{i32 13, i32 6, metadata !4, null}
!18 = metadata !{i32 15, i32 9, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 15, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 17, i32 5, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !19, i32 15, i32 34, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 20, i32 9, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 20, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!24 = metadata !{i32 21, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !23, i32 20, i32 16, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 786688, metadata !4, metadata !"x", metadata !5, i32 14, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 14]
!27 = metadata !{i32 14, i32 9, metadata !4, null}
!28 = metadata !{i32 23, i32 9, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !23, i32 22, i32 12, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 25, i32 9, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 25, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 26, i32 9, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !31, i32 25, i32 16, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 28, i32 9, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !31, i32 27, i32 12, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 30, i32 9, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 30, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 31, i32 9, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !37, i32 30, i32 16, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 33, i32 9, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !37, i32 32, i32 12, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!42 = metadata !{i32 35, i32 9, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 35, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 36, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !43, i32 35, i32 16, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 38, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !43, i32 37, i32 12, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 40, i32 9, metadata !49, null}
!49 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 9, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!50 = metadata !{i32 41, i32 9, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !49, i32 40, i32 16, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 43, i32 9, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !49, i32 42, i32 12, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 45, i32 9, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!56 = metadata !{i32 46, i32 9, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !55, i32 45, i32 16, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 48, i32 9, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !55, i32 47, i32 12, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 50, i32 9, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !4, i32 50, i32 9, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 51, i32 9, metadata !63, null}
!63 = metadata !{i32 786443, metadata !1, metadata !61, i32 50, i32 16, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!64 = metadata !{i32 53, i32 9, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !61, i32 52, i32 12, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 55, i32 9, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 9, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 56, i32 9, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !67, i32 55, i32 16, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 58, i32 9, metadata !71, null} ; [ DW_TAG_imported_module ]
!71 = metadata !{i32 786443, metadata !1, metadata !67, i32 57, i32 12, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 60, i32 5, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 5, i32 1, i32 28} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!74 = metadata !{i32 60, i32 5, metadata !75, null}
!75 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 5, i32 2, i32 29} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 60, i32 5, metadata !77, null}
!77 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 5, i32 3, i32 30} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!78 = metadata !{i32 61, i32 9, metadata !79, null}
!79 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 28, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!80 = metadata !{i32 62, i32 9, metadata !79, null}
!81 = metadata !{i32 63, i32 5, metadata !79, null}
!82 = metadata !{i32 64, i32 5, metadata !4, null}

