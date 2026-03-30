; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fgetc() #0 {
fgetc_bb0:
  %"0" = load i32* @"'flag", align 4, !dbg !15
  %"1" = icmp sgt i32 %"0", 1000, !dbg !15
  br i1 %"1", label %fgetc_bb2, label %fgetc_bb1, !dbg !15

fgetc_bb1:                                        ; preds = %fgetc_bb0
  %"2" = load i32* @"'flag", align 4, !dbg !17
  %"3" = add nsw i32 %"2", 1, !dbg !17
  store i32 %"3", i32* @"'flag", align 4, !dbg !17
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !18
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !19), !dbg !20
  %"5" = icmp slt i32 %"4", 0, !dbg !21
  %"6" = sub nsw i32 0, %"4", !dbg !23
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !19), !dbg !20
  %. = select i1 %"5", i32 %"6", i32 %"4", !dbg !21
  %"7" = srem i32 %., 256, !dbg !24
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !19), !dbg !20
  br label %fgetc_bb2, !dbg !25

fgetc_bb2:                                        ; preds = %fgetc_bb0, %fgetc_bb1
  %.0 = phi i32 [ %"7", %fgetc_bb1 ], [ -1, %fgetc_bb0 ]
  ret i32 %.0, !dbg !26
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  call void @llvm.dbg.value(metadata !{i8 %"16"}, i64 0, metadata !27), !dbg !29
  call void @llvm.dbg.value(metadata !{i32 %"12"}, i64 0, metadata !30) #3, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !30) #3, !dbg !34
  call void @llvm.dbg.value(metadata !{i32 %"15"}, i64 0, metadata !30) #3, !dbg !34
  br label %main_bb4, !dbg !35

main_bb4:                                         ; preds = %main_bb7, %main_bb3
  %"8" = load i32* @"'flag", align 4, !dbg !36
  %"9" = icmp sgt i32 %"8", 1000, !dbg !36
  br i1 %"9", label %main_fgetc.exit, label %main_bb5, !dbg !36

main_bb5:                                         ; preds = %main_bb4
  %"10" = load i32* @"'flag", align 4, !dbg !37
  %"11" = add nsw i32 %"10", 1, !dbg !37
  store i32 %"11", i32* @"'flag", align 4, !dbg !37
  %"12" = call i32 @__VERIFIER_nondet_int() #3, !dbg !38
  %"13" = icmp slt i32 %"12", 0, !dbg !39
  %"14" = sub nsw i32 0, %"12", !dbg !40
  %..i = select i1 %"13", i32 %"14", i32 %"12", !dbg !39
  %"15" = srem i32 %..i, 256, !dbg !41
  br label %main_fgetc.exit, !dbg !42

main_fgetc.exit:                                  ; preds = %main_bb4, %main_bb5
  %.0.i = phi i32 [ %"15", %main_bb5 ], [ -1, %main_bb4 ], !dbg !31
  %"16" = trunc i32 %.0.i to i8, !dbg !31
  %"17" = zext i8 %"16" to i32, !dbg !43
  %"18" = icmp eq i32 %"17", 0, !dbg !43
  %"19" = zext i8 %"16" to i32
  %"20" = icmp eq i32 %"19", -1, !dbg !45
  %or.cond = or i1 %"18", %"20", !dbg !43
  br i1 %or.cond, label %main_bb6, label %main_bb7, !dbg !43

main_bb6:                                         ; preds = %main_fgetc.exit
  ret i32 0, !dbg !47

main_bb7:                                         ; preds = %main_fgetc.exit
  br label %main_bb4, !dbg !48
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i8 @__kittel_nondef.1()

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
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fgetc", metadata !"fgetc", metadata !"", i32 12, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @fgetc, null, null, metadata !2, i32 13} ; [ DW_TAG_subprogram ] [line 12] [def] [scope 13] [fgetc]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 24} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 24] [main]
!10 = metadata !{metadata !11}
!11 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 11, metadata !8, i32 0, i32 1, i32* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 11] [def]
!12 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!13 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!14 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!15 = metadata !{i32 14, i32 9, metadata !16, null}
!16 = metadata !{i32 786443, metadata !1, metadata !4, i32 14, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!17 = metadata !{i32 16, i32 5, metadata !4, null}
!18 = metadata !{i32 17, i32 13, metadata !4, null}
!19 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 17, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 17]
!20 = metadata !{i32 17, i32 9, metadata !4, null}
!21 = metadata !{i32 18, i32 9, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 18, i32 9, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!23 = metadata !{i32 19, i32 9, metadata !22, null}
!24 = metadata !{i32 20, i32 5, metadata !4, null}
!25 = metadata !{i32 21, i32 5, metadata !4, null}
!26 = metadata !{i32 22, i32 1, metadata !4, null}
!27 = metadata !{i32 786688, metadata !9, metadata !"temp", metadata !5, i32 25, metadata !28, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [temp] [line 25]
!28 = metadata !{i32 786468, null, null, metadata !"unsigned char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ] [unsigned char] [line 0, size 8, align 8, offset 0, enc DW_ATE_unsigned_char]
!29 = metadata !{i32 25, i32 19, metadata !9, null}
!30 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 17, metadata !8, i32 0, metadata !31} ; [ DW_TAG_auto_variable ] [c] [line 17]
!31 = metadata !{i32 28, i32 16, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !33, i32 27, i32 5, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!33 = metadata !{i32 786443, metadata !1, metadata !9, i32 26, i32 5, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!34 = metadata !{i32 17, i32 9, metadata !4, metadata !31}
!35 = metadata !{i32 26, i32 5, metadata !33, null}
!36 = metadata !{i32 14, i32 9, metadata !16, metadata !31}
!37 = metadata !{i32 16, i32 5, metadata !4, metadata !31}
!38 = metadata !{i32 17, i32 13, metadata !4, metadata !31}
!39 = metadata !{i32 18, i32 9, metadata !22, metadata !31}
!40 = metadata !{i32 19, i32 9, metadata !22, metadata !31}
!41 = metadata !{i32 20, i32 5, metadata !4, metadata !31}
!42 = metadata !{i32 21, i32 5, metadata !4, metadata !31}
!43 = metadata !{i32 29, i32 13, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !32, i32 29, i32 13, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 29, i32 13, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !44, i32 29, i32 13, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 43, i32 1, metadata !9, null}
!48 = metadata !{i32 41, i32 5, metadata !32, null}

