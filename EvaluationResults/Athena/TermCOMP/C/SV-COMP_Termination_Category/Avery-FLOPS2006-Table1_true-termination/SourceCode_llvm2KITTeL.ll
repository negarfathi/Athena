; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @subxy(i32 %x, i32 %y) #0 {
subxy_bb0:
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %y}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !{i32 %x}, i64 0, metadata !22), !dbg !23
  %"0" = icmp sle i32 %y, 0, !dbg !24
  %"1" = icmp sle i32 %x, 0, !dbg !26
  %or.cond = or i1 %"0", %"1", !dbg !24
  br i1 %or.cond, label %subxy_bb5, label %subxy_bb1, !dbg !24

subxy_bb1:                                        ; preds = %subxy_bb0, %subxy_bb2
  %i.0 = phi i32 [ %"3", %subxy_bb2 ], [ %x, %subxy_bb0 ]
  %z.0 = phi i32 [ %"4", %subxy_bb2 ], [ 0, %subxy_bb0 ]
  %"2" = icmp sgt i32 %i.0, 0, !dbg !28
  br i1 %"2", label %subxy_bb2, label %subxy_bb3, !dbg !28

subxy_bb2:                                        ; preds = %subxy_bb1
  %"3" = add nsw i32 %i.0, -1, !dbg !30
  %"4" = add nsw i32 %z.0, 1, !dbg !32
  br label %subxy_bb1, !dbg !33

subxy_bb3:                                        ; preds = %subxy_bb1, %subxy_bb4
  %i.1 = phi i32 [ %"6", %subxy_bb4 ], [ %i.0, %subxy_bb1 ]
  %z.1 = phi i32 [ %"7", %subxy_bb4 ], [ %z.0, %subxy_bb1 ]
  %"5" = icmp slt i32 %i.1, %y, !dbg !34
  br i1 %"5", label %subxy_bb4, label %subxy_bb5, !dbg !34

subxy_bb4:                                        ; preds = %subxy_bb3
  %"6" = add nsw i32 %i.1, 1, !dbg !36
  %"7" = add nsw i32 %z.1, -1, !dbg !38
  br label %subxy_bb3, !dbg !39

subxy_bb5:                                        ; preds = %subxy_bb3, %subxy_bb0
  %.0 = phi i32 [ 0, %subxy_bb0 ], [ %z.1, %subxy_bb3 ]
  ret i32 %.0, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !42), !dbg !43
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !47), !dbg !49
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !50), !dbg !51
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !52), !dbg !53
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !54), !dbg !55
  %"10" = icmp sle i32 %"9", 0, !dbg !56
  %"11" = icmp sle i32 %"8", 0, !dbg !57
  %or.cond.i = or i1 %"10", %"11", !dbg !56
  br i1 %or.cond.i, label %main_subxy.exit, label %main_bb7, !dbg !56

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %i.0.i = phi i32 [ %"13", %main_bb8 ], [ %"8", %main_bb6 ], !dbg !48
  %z.0.i = phi i32 [ %"14", %main_bb8 ], [ 0, %main_bb6 ], !dbg !48
  %"12" = icmp sgt i32 %i.0.i, 0, !dbg !58
  br i1 %"12", label %main_bb8, label %main_bb9, !dbg !58

main_bb8:                                         ; preds = %main_bb7
  %"13" = add nsw i32 %i.0.i, -1, !dbg !59
  %"14" = add nsw i32 %z.0.i, 1, !dbg !60
  br label %main_bb7, !dbg !61

main_bb9:                                         ; preds = %main_bb10, %main_bb7
  %i.1.i = phi i32 [ %"16", %main_bb10 ], [ %i.0.i, %main_bb7 ], !dbg !48
  %z.1.i = phi i32 [ %"17", %main_bb10 ], [ %z.0.i, %main_bb7 ], !dbg !48
  %"15" = icmp slt i32 %i.1.i, %"9", !dbg !62
  br i1 %"15", label %main_bb10, label %main_subxy.exit, !dbg !62

main_bb10:                                        ; preds = %main_bb9
  %"16" = add nsw i32 %i.1.i, 1, !dbg !63
  %"17" = add nsw i32 %z.1.i, -1, !dbg !64
  br label %main_bb9, !dbg !65

main_subxy.exit:                                  ; preds = %main_bb6, %main_bb9
  ret i32 0, !dbg !66
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"subxy", metadata !"subxy", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @subxy, null, null, metadata !2, i32 12} ; [ DW_TAG_subprogram ] [line 12] [def] [subxy]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 30, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 30] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777228, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 12]
!16 = metadata !{i32 12, i32 15, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554444, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 12]
!18 = metadata !{i32 12, i32 22, metadata !4, null}
!19 = metadata !{i32 0}
!20 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 13]
!21 = metadata !{i32 13, i32 6, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 13, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 13]
!23 = metadata !{i32 13, i32 8, metadata !4, null}
!24 = metadata !{i32 16, i32 6, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 6, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 16, i32 6, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !25, i32 16, i32 6, i32 1, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 19, i32 2, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 2, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 20, i32 3, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 19, i32 16, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 21, i32 3, metadata !31, null}
!33 = metadata !{i32 22, i32 2, metadata !31, null}
!34 = metadata !{i32 23, i32 2, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 2, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!36 = metadata !{i32 24, i32 3, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 23, i32 16, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 25, i32 3, metadata !37, null}
!39 = metadata !{i32 26, i32 2, metadata !37, null}
!40 = metadata !{i32 28, i32 1, metadata !4, null}
!41 = metadata !{i32 31, i32 10, metadata !9, null}
!42 = metadata !{i32 786688, metadata !9, metadata !"x", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 31]
!43 = metadata !{i32 31, i32 6, metadata !9, null}
!44 = metadata !{i32 32, i32 10, metadata !9, null}
!45 = metadata !{i32 786688, metadata !9, metadata !"y", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 32]
!46 = metadata !{i32 32, i32 6, metadata !9, null}
!47 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777228, metadata !8, i32 0, metadata !48} ; [ DW_TAG_arg_variable ] [x] [line 12]
!48 = metadata !{i32 33, i32 2, metadata !9, null}
!49 = metadata !{i32 12, i32 15, metadata !4, metadata !48}
!50 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554444, metadata !8, i32 0, metadata !48} ; [ DW_TAG_arg_variable ] [y] [line 12]
!51 = metadata !{i32 12, i32 22, metadata !4, metadata !48}
!52 = metadata !{i32 786688, metadata !4, metadata !"z", metadata !5, i32 13, metadata !8, i32 0, metadata !48} ; [ DW_TAG_auto_variable ] [z] [line 13]
!53 = metadata !{i32 13, i32 6, metadata !4, metadata !48}
!54 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 13, metadata !8, i32 0, metadata !48} ; [ DW_TAG_auto_variable ] [i] [line 13]
!55 = metadata !{i32 13, i32 8, metadata !4, metadata !48}
!56 = metadata !{i32 16, i32 6, metadata !25, metadata !48}
!57 = metadata !{i32 16, i32 6, metadata !27, metadata !48}
!58 = metadata !{i32 19, i32 2, metadata !29, metadata !48}
!59 = metadata !{i32 20, i32 3, metadata !31, metadata !48}
!60 = metadata !{i32 21, i32 3, metadata !31, metadata !48}
!61 = metadata !{i32 22, i32 2, metadata !31, metadata !48}
!62 = metadata !{i32 23, i32 2, metadata !35, metadata !48}
!63 = metadata !{i32 24, i32 3, metadata !37, metadata !48}
!64 = metadata !{i32 25, i32 3, metadata !37, metadata !48}
!65 = metadata !{i32 26, i32 2, metadata !37, metadata !48}
!66 = metadata !{i32 34, i32 2, metadata !9, null}

