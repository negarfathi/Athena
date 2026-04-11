; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @matroska_deliver_packet(i32 %q) #0 {
matroska_deliver_packet_bb0:
  call void @llvm.dbg.value(metadata !{i32 %q}, i64 0, metadata !18), !dbg !19
  %"0" = icmp eq i32 %q, 1, !dbg !20
  %. = select i1 %"0", i32 0, i32 1, !dbg !22
  ret i32 %., !dbg !23
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i32 @res_return() #0 {
res_return_bb1:
  %"1" = load i32* @"'flag", align 4, !dbg !24
  %"2" = add nsw i32 %"1", 1, !dbg !24
  store i32 %"2", i32* @"'flag", align 4, !dbg !24
  %"3" = icmp slt i32 %"1", 100, !dbg !24
  br i1 %"3", label %res_return_bb2, label %res_return_bb3, !dbg !24

res_return_bb2:                                   ; preds = %res_return_bb1
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !26
  br label %res_return_bb3, !dbg !26

res_return_bb3:                                   ; preds = %res_return_bb1, %res_return_bb2
  %.0 = phi i32 [ %"4", %res_return_bb2 ], [ -1, %res_return_bb1 ]
  ret i32 %.0, !dbg !27
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !29), !dbg !30
  call void @llvm.dbg.value(metadata !31, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %matroska.0}, i64 0, metadata !34), !dbg !37
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !38), !dbg !41
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !{i32 %"20"}, i64 0, metadata !32), !dbg !33
  call void @llvm.dbg.value(metadata !42, i64 0, metadata !32), !dbg !33
  br label %main_bb5, !dbg !43

main_bb5:                                         ; preds = %main_NewDefault, %main_bb6, %main_bb4
  %res.0 = phi i32 [ 0, %main_bb4 ], [ %res.1, %main_NewDefault ], [ %res.1, %main_bb6 ]
  %matroska.0 = phi i32 [ %"5", %main_bb4 ], [ 1, %main_bb6 ], [ %matroska.0, %main_NewDefault ]
  %"6" = icmp eq i32 %matroska.0, 1, !dbg !44
  %..i = select i1 %"6", i32 0, i32 1, !dbg !45
  %"7" = icmp ne i32 %..i, 0, !dbg !35
  br i1 %"7", label %main_res_return.exit, label %main_bb14, !dbg !35

main_res_return.exit:                             ; preds = %main_res_return.exit4, %main_res_return.exit2, %main_bb12, %main_bb13, %main_bb5
  %res.1 = phi i32 [ %res.0, %main_bb5 ], [ %., %main_res_return.exit4 ], [ %"14", %main_res_return.exit2 ], [ %"21", %main_bb13 ], [ -1, %main_bb12 ]
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_res_return.exit
  %Pivot = icmp slt i32 %res.1, 0
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock5

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %res.1, -1
  br i1 %SwitchLeaf, label %main_bb6, label %main_NewDefault

main_bb6:                                         ; preds = %main_LeafBlock
  call void @llvm.dbg.value(metadata !42, i64 0, metadata !29), !dbg !30
  br label %main_bb5, !dbg !46

main_LeafBlock5:                                  ; preds = %main_NodeBlock
  %SwitchLeaf6 = icmp eq i32 %res.1, 0
  br i1 %SwitchLeaf6, label %main_bb7, label %main_NewDefault

main_bb7:                                         ; preds = %main_LeafBlock5
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !48
  %cond = icmp eq i32 %"8", 1, !dbg !49
  %"9" = load i32* @"'flag", align 4, !dbg !50
  %"10" = add nsw i32 %"9", 1, !dbg !50
  store i32 %"10", i32* @"'flag", align 4, !dbg !50
  %"11" = icmp slt i32 %"9", 100, !dbg !50
  br i1 %cond, label %main_bb8, label %main_bb12, !dbg !49

main_bb8:                                         ; preds = %main_bb7
  br i1 %"11", label %main_bb9, label %main_res_return.exit2, !dbg !50

main_bb9:                                         ; preds = %main_bb8
  %"12" = call i32 @__VERIFIER_nondet_int() #3, !dbg !54
  br label %main_res_return.exit2, !dbg !54

main_res_return.exit2:                            ; preds = %main_bb8, %main_bb9
  %.0.i1 = phi i32 [ %"12", %main_bb9 ], [ -1, %main_bb8 ], !dbg !51
  %"13" = icmp slt i32 %.0.i1, 0, !dbg !51
  %"14" = zext i1 %"13" to i32, !dbg !51
  br i1 %"13", label %main_res_return.exit, label %main_bb10, !dbg !51

main_bb10:                                        ; preds = %main_res_return.exit2
  %"15" = load i32* @"'flag", align 4, !dbg !55
  %"16" = add nsw i32 %"15", 1, !dbg !55
  store i32 %"16", i32* @"'flag", align 4, !dbg !55
  %"17" = icmp slt i32 %"15", 100, !dbg !55
  br i1 %"17", label %main_bb11, label %main_res_return.exit4, !dbg !55

main_bb11:                                        ; preds = %main_bb10
  %"18" = call i32 @__VERIFIER_nondet_int() #3, !dbg !58
  br label %main_res_return.exit4, !dbg !58

main_res_return.exit4:                            ; preds = %main_bb10, %main_bb11
  %.0.i3 = phi i32 [ %"18", %main_bb11 ], [ -1, %main_bb10 ], !dbg !56
  %"19" = icmp eq i32 %.0.i3, 0, !dbg !56
  %"20" = zext i1 %"19" to i32, !dbg !56
  %. = select i1 %"19", i32 1, i32 %"20", !dbg !56
  br label %main_res_return.exit, !dbg !59

main_bb12:                                        ; preds = %main_bb7
  br i1 %"11", label %main_bb13, label %main_res_return.exit, !dbg !60

main_bb13:                                        ; preds = %main_bb12
  %"21" = call i32 @__VERIFIER_nondet_int() #3, !dbg !62
  br label %main_res_return.exit, !dbg !62

main_NewDefault:                                  ; preds = %main_LeafBlock5, %main_LeafBlock
  br label %main_bb5

main_bb14:                                        ; preds = %main_bb5
  ret i32 0, !dbg !63
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16}
!llvm.ident = !{!17}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !13, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"matroska_deliver_packet", metadata !"matroska_deliver_packet", metadata !"", i32 10, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @matroska_deliver_packet, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 10] [def] [scope 11] [matroska_deliver_packet]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"res_return", metadata !"res_return", metadata !"", i32 18, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @res_return, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [res_return]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 24, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 25} ; [ DW_TAG_subprogram ] [line 24] [def] [scope 25] [main]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 17, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 17] [def]
!15 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!16 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!17 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!18 = metadata !{i32 786689, metadata !4, metadata !"q", metadata !5, i32 16777226, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [q] [line 10]
!19 = metadata !{i32 10, i32 34, metadata !4, null}
!20 = metadata !{i32 12, i32 9, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !4, i32 12, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 13, i32 9, metadata !21, null}
!23 = metadata !{i32 16, i32 1, metadata !4, null}
!24 = metadata !{i32 20, i32 9, metadata !25, null}
!25 = metadata !{i32 786443, metadata !1, metadata !9, i32 20, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!26 = metadata !{i32 21, i32 16, metadata !25, null}
!27 = metadata !{i32 23, i32 1, metadata !9, null}
!28 = metadata !{i32 26, i32 21, metadata !12, null}
!29 = metadata !{i32 786688, metadata !12, metadata !"matroska", metadata !5, i32 26, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matroska] [line 26]
!30 = metadata !{i32 26, i32 9, metadata !12, null}
!31 = metadata !{i32 0}
!32 = metadata !{i32 786688, metadata !12, metadata !"res", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 27]
!33 = metadata !{i32 27, i32 9, metadata !12, null}
!34 = metadata !{i32 786689, metadata !4, metadata !"q", metadata !5, i32 16777226, metadata !8, i32 0, metadata !35} ; [ DW_TAG_arg_variable ] [q] [line 10]
!35 = metadata !{i32 28, i32 12, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !12, i32 28, i32 12, i32 1, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 10, i32 34, metadata !4, metadata !35}
!38 = metadata !{i32 786688, metadata !39, metadata !"id", metadata !5, i32 32, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 32]
!39 = metadata !{i32 786443, metadata !1, metadata !40, i32 31, i32 9, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!40 = metadata !{i32 786443, metadata !1, metadata !12, i32 29, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 32, i32 17, metadata !39, null}
!42 = metadata !{i32 1}
!43 = metadata !{i32 28, i32 5, metadata !12, null}
!44 = metadata !{i32 12, i32 9, metadata !21, metadata !35}
!45 = metadata !{i32 13, i32 9, metadata !21, metadata !35}
!46 = metadata !{i32 48, i32 13, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !40, i32 47, i32 13, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 32, i32 23, metadata !39, null}
!49 = metadata !{i32 33, i32 13, metadata !39, null}
!50 = metadata !{i32 20, i32 9, metadata !25, metadata !51}
!51 = metadata !{i32 35, i32 31, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !53, i32 35, i32 25, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 786443, metadata !1, metadata !39, i32 33, i32 25, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 21, i32 16, metadata !25, metadata !51}
!55 = metadata !{i32 20, i32 9, metadata !25, metadata !56}
!56 = metadata !{i32 37, i32 31, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !53, i32 37, i32 25, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 21, i32 16, metadata !25, metadata !56}
!59 = metadata !{i32 39, i32 21, metadata !53, null}
!60 = metadata !{i32 20, i32 9, metadata !25, metadata !61}
!61 = metadata !{i32 43, i32 27, metadata !53, null}
!62 = metadata !{i32 21, i32 16, metadata !25, metadata !61}
!63 = metadata !{i32 50, i32 5, metadata !12, null}

