; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %a) #0 {
f_bb0:
  call void @llvm.dbg.value(metadata !{i32 %a}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !18), !dbg !19
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !15), !dbg !16
  br label %f_bb1, !dbg !22

f_bb1:                                            ; preds = %f_bb5, %f_bb0
  %count.0 = phi i32 [ 0, %f_bb0 ], [ %"5", %f_bb5 ]
  %.0 = phi i32 [ %a, %f_bb0 ], [ %.1, %f_bb5 ]
  %"0" = icmp sgt i32 %.0, 1, !dbg !23
  br i1 %"0", label %f_bb2, label %f_bb6, !dbg !23

f_bb2:                                            ; preds = %f_bb1
  %"1" = srem i32 %.0, 2, !dbg !25
  %"2" = icmp eq i32 %"1", 0, !dbg !27
  br i1 %"2", label %f_bb3, label %f_bb4, !dbg !27

f_bb3:                                            ; preds = %f_bb2
  %"3" = sdiv i32 %.0, 2, !dbg !29
  br label %f_bb5, !dbg !29

f_bb4:                                            ; preds = %f_bb2
  %"4" = sub nsw i32 %.0, 1, !dbg !31
  br label %f_bb5

f_bb5:                                            ; preds = %f_bb4, %f_bb3
  %.1 = phi i32 [ %"3", %f_bb3 ], [ %"4", %f_bb4 ]
  %"5" = add nsw i32 %count.0, 1, !dbg !32
  br label %f_bb1, !dbg !33

f_bb6:                                            ; preds = %f_bb1
  ret i32 %count.0, !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !35
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !36), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !38), !dbg !40
  call void @llvm.dbg.value(metadata !17, i64 0, metadata !41), !dbg !42
  br label %main_bb8, !dbg !43

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %count.0.i = phi i32 [ 0, %main_bb7 ], [ %"12", %main_bb12 ], !dbg !39
  %.0.i = phi i32 [ %"6", %main_bb7 ], [ %.1.i, %main_bb12 ], !dbg !39
  %"7" = icmp sgt i32 %.0.i, 1, !dbg !44
  br i1 %"7", label %main_bb9, label %main_f.exit, !dbg !44

main_bb9:                                         ; preds = %main_bb8
  %"8" = srem i32 %.0.i, 2, !dbg !45
  %"9" = icmp eq i32 %"8", 0, !dbg !46
  br i1 %"9", label %main_bb10, label %main_bb11, !dbg !46

main_bb10:                                        ; preds = %main_bb9
  %"10" = sdiv i32 %.0.i, 2, !dbg !47
  br label %main_bb12, !dbg !47

main_bb11:                                        ; preds = %main_bb9
  %"11" = sub nsw i32 %.0.i, 1, !dbg !48
  br label %main_bb12, !dbg !39

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %.1.i = phi i32 [ %"10", %main_bb10 ], [ %"11", %main_bb11 ], !dbg !39
  %"12" = add nsw i32 %count.0.i, 1, !dbg !49
  br label %main_bb8, !dbg !50

main_f.exit:                                      ; preds = %main_bb8
  call void @llvm.dbg.value(metadata !{i32 %count.0.i}, i64 0, metadata !51), !dbg !52
  ret i32 %count.0.i, !dbg !53
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @f, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 9] [def] [f]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 20, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 20] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777225, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [a] [line 9]
!16 = metadata !{i32 9, i32 12, metadata !4, null}
!17 = metadata !{i32 0}
!18 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 10, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 10]
!19 = metadata !{i32 10, i32 14, metadata !4, null}
!20 = metadata !{i32 786688, metadata !4, metadata !"tmp", metadata !5, i32 10, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 10]
!21 = metadata !{i32 10, i32 9, metadata !4, null}
!22 = metadata !{i32 11, i32 5, metadata !4, null}
!23 = metadata !{i32 11, i32 5, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 5, i32 1, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 12, i32 7, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 18, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!27 = metadata !{i32 13, i32 10, metadata !28, null}
!28 = metadata !{i32 786443, metadata !1, metadata !26, i32 13, i32 10, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!29 = metadata !{i32 13, i32 20, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !28, i32 13, i32 20, i32 1, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!31 = metadata !{i32 14, i32 12, metadata !28, null}
!32 = metadata !{i32 15, i32 7, metadata !26, null}
!33 = metadata !{i32 16, i32 5, metadata !26, null}
!34 = metadata !{i32 17, i32 5, metadata !4, null}
!35 = metadata !{i32 21, i32 13, metadata !9, null}
!36 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 21, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 21]
!37 = metadata !{i32 21, i32 9, metadata !9, null}
!38 = metadata !{i32 786689, metadata !4, metadata !"a", metadata !5, i32 16777225, metadata !8, i32 0, metadata !39} ; [ DW_TAG_arg_variable ] [a] [line 9]
!39 = metadata !{i32 22, i32 17, metadata !9, null}
!40 = metadata !{i32 9, i32 12, metadata !4, metadata !39}
!41 = metadata !{i32 786688, metadata !4, metadata !"count", metadata !5, i32 10, metadata !8, i32 0, metadata !39} ; [ DW_TAG_auto_variable ] [count] [line 10]
!42 = metadata !{i32 10, i32 14, metadata !4, metadata !39}
!43 = metadata !{i32 11, i32 5, metadata !4, metadata !39}
!44 = metadata !{i32 11, i32 5, metadata !24, metadata !39}
!45 = metadata !{i32 12, i32 7, metadata !26, metadata !39}
!46 = metadata !{i32 13, i32 10, metadata !28, metadata !39}
!47 = metadata !{i32 13, i32 20, metadata !30, metadata !39}
!48 = metadata !{i32 14, i32 12, metadata !28, metadata !39}
!49 = metadata !{i32 15, i32 7, metadata !26, metadata !39}
!50 = metadata !{i32 16, i32 5, metadata !26, metadata !39}
!51 = metadata !{i32 786688, metadata !9, metadata !"count", metadata !5, i32 22, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [count] [line 22]
!52 = metadata !{i32 22, i32 9, metadata !9, null}
!53 = metadata !{i32 23, i32 5, metadata !9, null}

