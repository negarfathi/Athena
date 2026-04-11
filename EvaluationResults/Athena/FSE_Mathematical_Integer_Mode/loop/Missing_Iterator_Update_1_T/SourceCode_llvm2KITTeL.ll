; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'errno" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @waitpid() #0 {
waitpid_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int(), !dbg !15
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !16), !dbg !17
  %"1" = icmp slt i32 %"0", 0, !dbg !18
  br i1 %"1", label %waitpid_bb1, label %waitpid_bb4, !dbg !18

waitpid_bb1:                                      ; preds = %waitpid_bb0
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !20
  %"3" = icmp ne i32 %"2", 0, !dbg !20
  %"4" = load i32* @"'errno", align 4
  %"5" = icmp ne i32 %"4", 1, !dbg !23
  %or.cond = and i1 %"3", %"5", !dbg !20
  br i1 %or.cond, label %waitpid_bb2, label %waitpid_bb3, !dbg !20

waitpid_bb2:                                      ; preds = %waitpid_bb1
  store i32 1, i32* @"'errno", align 4, !dbg !25
  br label %waitpid_bb4, !dbg !25

waitpid_bb3:                                      ; preds = %waitpid_bb1
  store i32 2, i32* @"'errno", align 4, !dbg !26
  br label %waitpid_bb4

waitpid_bb4:                                      ; preds = %waitpid_bb0, %waitpid_bb2, %waitpid_bb3
  ret i32 %"0", !dbg !27
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"6" = call i32 @__VERIFIER_nondet_int() #3, !dbg !28
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !30) #3, !dbg !31
  %"7" = icmp slt i32 %"6", 0, !dbg !32
  br i1 %"7", label %main_bb6, label %main_waitpid.exit, !dbg !32

main_bb6:                                         ; preds = %main_bb5
  %"8" = call i32 @__VERIFIER_nondet_int() #3, !dbg !33
  %"9" = icmp ne i32 %"8", 0, !dbg !33
  %"10" = load i32* @"'errno", align 4, !dbg !29
  %"11" = icmp ne i32 %"10", 1, !dbg !34
  %or.cond.i = and i1 %"9", %"11", !dbg !33
  br i1 %or.cond.i, label %main_bb7, label %main_bb8, !dbg !33

main_bb7:                                         ; preds = %main_bb6
  store i32 1, i32* @"'errno", align 4, !dbg !35
  br label %main_waitpid.exit, !dbg !35

main_bb8:                                         ; preds = %main_bb6
  store i32 2, i32* @"'errno", align 4, !dbg !36
  br label %main_waitpid.exit, !dbg !29

main_waitpid.exit:                                ; preds = %main_bb8, %main_bb7, %main_bb5
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !37), !dbg !38
  %"12" = icmp eq i32 %"6", 0, !dbg !39
  br i1 %"12", label %main_bb9, label %main_.critedge, !dbg !39

main_bb9:                                         ; preds = %main_waitpid.exit2, %main_waitpid.exit
  %"13" = call i32 @__VERIFIER_nondet_int() #3, !dbg !41
  %"14" = icmp slt i32 %"13", 0, !dbg !45
  br i1 %"14", label %main_bb10, label %main_waitpid.exit2, !dbg !45

main_bb10:                                        ; preds = %main_bb9
  %"15" = call i32 @__VERIFIER_nondet_int() #3, !dbg !46
  %"16" = icmp ne i32 %"15", 0, !dbg !46
  %"17" = load i32* @"'errno", align 4, !dbg !42
  %"18" = icmp ne i32 %"17", 1, !dbg !47
  %or.cond.i1 = and i1 %"16", %"18", !dbg !46
  br i1 %or.cond.i1, label %main_bb11, label %main_bb12, !dbg !46

main_bb11:                                        ; preds = %main_bb10
  store i32 1, i32* @"'errno", align 4, !dbg !48
  br label %main_waitpid.exit2, !dbg !48

main_bb12:                                        ; preds = %main_bb10
  store i32 2, i32* @"'errno", align 4, !dbg !49
  br label %main_waitpid.exit2, !dbg !42

main_waitpid.exit2:                               ; preds = %main_bb12, %main_bb11, %main_bb9
  %"19" = icmp slt i32 %"13", 0, !dbg !50
  %"20" = load i32* @"'errno", align 4
  %"21" = icmp eq i32 %"20", 1, !dbg !52
  %or.cond = and i1 %"19", %"21", !dbg !50
  br i1 %or.cond, label %main_bb9, label %main_.critedge, !dbg !50

main_.critedge:                                   ; preds = %main_waitpid.exit2, %main_waitpid.exit
  ret i32 0, !dbg !54
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!12, !13}
!llvm.ident = !{!14}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !10, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"waitpid", metadata !"waitpid", metadata !"", i32 13, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @waitpid, null, null, metadata !2, i32 14} ; [ DW_TAG_subprogram ] [line 13] [def] [scope 14] [waitpid]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 27] [def] [scope 28] [main]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786484, i32 0, null, metadata !"errno", metadata !"errno", metadata !"", metadata !5, i32 12, metadata !8, i32 0, i32 1, i32* @"'errno", null} ; [ DW_TAG_variable ] [errno] [line 12] [def]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 15, i32 15, metadata !4, null}
!16 = metadata !{i32 786688, metadata !4, metadata !"num", metadata !5, i32 15, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 15]
!17 = metadata !{i32 15, i32 9, metadata !4, null}
!18 = metadata !{i32 16, i32 5, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 16, i32 5, i32 1, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!20 = metadata !{i32 18, i32 13, metadata !21, null}
!21 = metadata !{i32 786443, metadata !1, metadata !22, i32 18, i32 13, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 17, i32 5, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 18, i32 13, metadata !24, null}
!24 = metadata !{i32 786443, metadata !1, metadata !21, i32 18, i32 13, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!25 = metadata !{i32 19, i32 13, metadata !21, null}
!26 = metadata !{i32 21, i32 13, metadata !21, null}
!27 = metadata !{i32 25, i32 1, metadata !4, null}
!28 = metadata !{i32 15, i32 15, metadata !4, metadata !29}
!29 = metadata !{i32 30, i32 15, metadata !9, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"num", metadata !5, i32 15, metadata !8, i32 0, metadata !29} ; [ DW_TAG_auto_variable ] [num] [line 15]
!31 = metadata !{i32 15, i32 9, metadata !4, metadata !29}
!32 = metadata !{i32 16, i32 5, metadata !19, metadata !29}
!33 = metadata !{i32 18, i32 13, metadata !21, metadata !29}
!34 = metadata !{i32 18, i32 13, metadata !24, metadata !29}
!35 = metadata !{i32 19, i32 13, metadata !21, metadata !29}
!36 = metadata !{i32 21, i32 13, metadata !21, metadata !29}
!37 = metadata !{i32 786688, metadata !9, metadata !"ret", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ret] [line 30]
!38 = metadata !{i32 30, i32 9, metadata !9, null}
!39 = metadata !{i32 32, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !9, i32 32, i32 9, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 15, i32 15, metadata !4, metadata !42}
!42 = metadata !{i32 35, i32 19, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !44, i32 34, i32 11, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!44 = metadata !{i32 786443, metadata !1, metadata !40, i32 33, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 16, i32 5, metadata !19, metadata !42}
!46 = metadata !{i32 18, i32 13, metadata !21, metadata !42}
!47 = metadata !{i32 18, i32 13, metadata !24, metadata !42}
!48 = metadata !{i32 19, i32 13, metadata !21, metadata !42}
!49 = metadata !{i32 21, i32 13, metadata !21, metadata !42}
!50 = metadata !{i32 36, i32 9, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !43, i32 36, i32 9, i32 1, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 36, i32 9, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !43, i32 36, i32 9, i32 2, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 38, i32 5, metadata !9, null}

