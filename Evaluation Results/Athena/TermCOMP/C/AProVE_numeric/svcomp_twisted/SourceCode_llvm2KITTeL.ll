; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %k, i32 %l) #0 {
f_bb0:
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !15), !dbg !16
  call void @llvm.dbg.value(metadata !{i32 %l}, i64 0, metadata !17), !dbg !18
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !20), !dbg !21
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !22), !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !20), !dbg !21
  br label %f_bb1, !dbg !24

f_bb1:                                            ; preds = %f_bb6, %f_bb0
  %j.0 = phi i32 [ 0, %f_bb0 ], [ %"6", %f_bb6 ]
  %i.0 = phi i32 [ 0, %f_bb0 ], [ %i.2, %f_bb6 ]
  br label %f_bb2, !dbg !25

f_bb2:                                            ; preds = %f_bb3, %f_bb1
  %i.1 = phi i32 [ %i.0, %f_bb1 ], [ %"1", %f_bb3 ]
  %"0" = icmp slt i32 %i.1, %k, !dbg !26
  br i1 %"0", label %f_bb3, label %f_bb4, !dbg !26

f_bb3:                                            ; preds = %f_bb2
  %"1" = add nsw i32 %i.1, 1, !dbg !28
  %"2" = srem i32 %"1", 2, !dbg !30
  %"3" = icmp ne i32 %"2", 0, !dbg !30
  br i1 %"3", label %f_bb2, label %f_bb4, !dbg !30

f_bb4:                                            ; preds = %f_bb2, %f_bb3
  %i.2 = phi i32 [ %"1", %f_bb3 ], [ %i.1, %f_bb2 ]
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !22), !dbg !23
  %"4" = srem i32 %i.2, 2, !dbg !32
  br label %f_bb5, !dbg !35

f_bb5:                                            ; preds = %f_bb6, %f_bb4
  %j.1 = phi i32 [ %j.0, %f_bb4 ], [ %"6", %f_bb6 ]
  %"5" = icmp slt i32 %j.1, %l, !dbg !36
  br i1 %"5", label %f_bb6, label %f_bb7, !dbg !36

f_bb6:                                            ; preds = %f_bb5
  %"6" = add nsw i32 %j.1, 1, !dbg !38
  %"7" = icmp ne i32 %"4", 0, !dbg !32
  br i1 %"7", label %f_bb5, label %f_bb1, !dbg !32

f_bb7:                                            ; preds = %f_bb5
  %"8" = add nsw i32 %i.2, %j.1, !dbg !39
  ret i32 %"8", !dbg !39
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !40
  %"10" = call i32 @__VERIFIER_nondet_int(), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !42), !dbg !44
  call void @llvm.dbg.value(metadata !{i32 %"10"}, i64 0, metadata !45), !dbg !46
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !47), !dbg !48
  call void @llvm.dbg.value(metadata !19, i64 0, metadata !49), !dbg !50
  br label %main_bb9, !dbg !51

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %j.0.i = phi i32 [ 0, %main_bb8 ], [ %"17", %main_bb14 ], !dbg !43
  %i.0.i = phi i32 [ 0, %main_bb8 ], [ %i.2.i, %main_bb14 ], !dbg !43
  br label %main_bb10, !dbg !52

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %i.1.i = phi i32 [ %i.0.i, %main_bb9 ], [ %"12", %main_bb11 ], !dbg !43
  %"11" = icmp slt i32 %i.1.i, %"9", !dbg !53
  br i1 %"11", label %main_bb11, label %main_bb12, !dbg !53

main_bb11:                                        ; preds = %main_bb10
  %"12" = add nsw i32 %i.1.i, 1, !dbg !54
  %"13" = srem i32 %"12", 2, !dbg !55
  %"14" = icmp ne i32 %"13", 0, !dbg !55
  br i1 %"14", label %main_bb10, label %main_bb12, !dbg !55

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %i.2.i = phi i32 [ %"12", %main_bb11 ], [ %i.1.i, %main_bb10 ], !dbg !43
  %"15" = srem i32 %i.2.i, 2, !dbg !56
  br label %main_bb13, !dbg !57

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %j.1.i = phi i32 [ %j.0.i, %main_bb12 ], [ %"17", %main_bb14 ], !dbg !43
  %"16" = icmp slt i32 %j.1.i, %"10", !dbg !58
  br i1 %"16", label %main_bb14, label %main_f.exit, !dbg !58

main_bb14:                                        ; preds = %main_bb13
  %"17" = add nsw i32 %j.1.i, 1, !dbg !59
  %"18" = icmp ne i32 %"15", 0, !dbg !56
  br i1 %"18", label %main_bb13, label %main_bb9, !dbg !56

main_f.exit:                                      ; preds = %main_bb13
  %"19" = add nsw i32 %i.2.i, %j.1.i, !dbg !60
  ret i32 %"19", !dbg !43
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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"f", metadata !"f", metadata !"", i32 3, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @f, null, null, metadata !2, i32 4} ; [ DW_TAG_subprogram ] [line 3] [def] [scope 4] [f]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 23, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 23} ; [ DW_TAG_subprogram ] [line 23] [def] [main]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 786689, metadata !4, metadata !"k", metadata !5, i32 16777219, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [k] [line 3]
!16 = metadata !{i32 3, i32 11, metadata !4, null}
!17 = metadata !{i32 786689, metadata !4, metadata !"l", metadata !5, i32 33554435, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [l] [line 3]
!18 = metadata !{i32 3, i32 18, metadata !4, null}
!19 = metadata !{i32 0}
!20 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 5]
!21 = metadata !{i32 5, i32 9, metadata !4, null}
!22 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 5, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [j] [line 5]
!23 = metadata !{i32 5, i32 16, metadata !4, null}
!24 = metadata !{i32 5, i32 5, metadata !4, null}
!25 = metadata !{i32 6, i32 5, metadata !4, null}
!26 = metadata !{i32 6, i32 5, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 5, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!28 = metadata !{i32 7, i32 9, metadata !29, null}
!29 = metadata !{i32 786443, metadata !1, metadata !4, i32 6, i32 19, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!30 = metadata !{i32 8, i32 13, metadata !31, null} ; [ DW_TAG_imported_declaration ]
!31 = metadata !{i32 786443, metadata !1, metadata !29, i32 8, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!32 = metadata !{i32 15, i32 13, metadata !33, null}
!33 = metadata !{i32 786443, metadata !1, metadata !34, i32 15, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 19, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 13, i32 5, metadata !4, null}
!36 = metadata !{i32 13, i32 5, metadata !37, null}
!37 = metadata !{i32 786443, metadata !1, metadata !4, i32 13, i32 5, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!38 = metadata !{i32 14, i32 9, metadata !34, null}
!39 = metadata !{i32 20, i32 5, metadata !4, null}
!40 = metadata !{i32 24, i32 14, metadata !9, null}
!41 = metadata !{i32 24, i32 39, metadata !9, null}
!42 = metadata !{i32 786689, metadata !4, metadata !"k", metadata !5, i32 16777219, metadata !8, i32 0, metadata !43} ; [ DW_TAG_arg_variable ] [k] [line 3]
!43 = metadata !{i32 24, i32 12, metadata !9, null}
!44 = metadata !{i32 3, i32 11, metadata !4, metadata !43}
!45 = metadata !{i32 786689, metadata !4, metadata !"l", metadata !5, i32 33554435, metadata !8, i32 0, metadata !43} ; [ DW_TAG_arg_variable ] [l] [line 3]
!46 = metadata !{i32 3, i32 18, metadata !4, metadata !43}
!47 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 5, metadata !8, i32 0, metadata !43} ; [ DW_TAG_auto_variable ] [i] [line 5]
!48 = metadata !{i32 5, i32 9, metadata !4, metadata !43}
!49 = metadata !{i32 786688, metadata !4, metadata !"j", metadata !5, i32 5, metadata !8, i32 0, metadata !43} ; [ DW_TAG_auto_variable ] [j] [line 5]
!50 = metadata !{i32 5, i32 16, metadata !4, metadata !43}
!51 = metadata !{i32 5, i32 5, metadata !4, metadata !43}
!52 = metadata !{i32 6, i32 5, metadata !4, metadata !43}
!53 = metadata !{i32 6, i32 5, metadata !27, metadata !43}
!54 = metadata !{i32 7, i32 9, metadata !29, metadata !43}
!55 = metadata !{i32 8, i32 13, metadata !31, metadata !43} ; [ DW_TAG_imported_declaration ]
!56 = metadata !{i32 15, i32 13, metadata !33, metadata !43}
!57 = metadata !{i32 13, i32 5, metadata !4, metadata !43}
!58 = metadata !{i32 13, i32 5, metadata !37, metadata !43}
!59 = metadata !{i32 14, i32 9, metadata !34, metadata !43}
!60 = metadata !{i32 20, i32 5, metadata !4, metadata !43}

