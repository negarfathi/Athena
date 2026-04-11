; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'memory0_freeIndex" = global i32 1, align 4
@memory0 = common global [100000 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define i32 @allocate_memory0(i32 %size) #0 {
allocate_memory0_bb0:
  call void @llvm.dbg.value(metadata !{i32 %size}, i64 0, metadata !28), !dbg !29
  %"0" = load i32* @"'memory0_freeIndex", align 4, !dbg !30
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !31), !dbg !32
  %"1" = load i32* @"'memory0_freeIndex", align 4, !dbg !33
  %"2" = add nsw i32 %"1", %size, !dbg !33
  store i32 %"2", i32* @"'memory0_freeIndex", align 4, !dbg !33
  ret i32 %"0", !dbg !34
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define void @cbzero(i32 %b, i64 %length) #0 {
cbzero_bb1:
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !35), !dbg !36
  call void @llvm.dbg.value(metadata !{i64 %length}, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !39), !dbg !40
  call void @llvm.dbg.value(metadata !{i64 %"3"}, i64 0, metadata !37), !dbg !38
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !39), !dbg !40
  br label %cbzero_bb2, !dbg !41

cbzero_bb2:                                       ; preds = %cbzero_bb3, %cbzero_bb1
  %.0 = phi i64 [ %length, %cbzero_bb1 ], [ %"3", %cbzero_bb3 ]
  %p.0 = phi i32 [ %b, %cbzero_bb1 ], [ %"5", %cbzero_bb3 ]
  %"3" = add i64 %.0, -1, !dbg !43
  %"4" = icmp ne i64 %.0, 0, !dbg !43
  br i1 %"4", label %cbzero_bb3, label %cbzero_bb4, !dbg !43

cbzero_bb3:                                       ; preds = %cbzero_bb2
  %"5" = add nsw i32 %p.0, 1, !dbg !45
  %"6" = sext i32 %p.0 to i64, !dbg !45
  %"7" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"6", !dbg !45
  store i8 0, i8* %"7", align 1, !dbg !45
  br label %cbzero_bb2, !dbg !45

cbzero_bb4:                                       ; preds = %cbzero_bb2
  ret void, !dbg !46
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"8" = call i32 @__VERIFIER_nondet_int(), !dbg !47
  call void @llvm.dbg.value(metadata !{i32 %"8"}, i64 0, metadata !48), !dbg !49
  %"9" = call i32 @__VERIFIER_nondet_int(), !dbg !50
  call void @llvm.dbg.value(metadata !{i32 %"9"}, i64 0, metadata !51), !dbg !52
  %"10" = icmp slt i32 %"8", 1, !dbg !53
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !48), !dbg !49
  %. = select i1 %"10", i32 1, i32 %"8", !dbg !53
  %"11" = icmp slt i32 %"9", 1, !dbg !56
  call void @llvm.dbg.value(metadata !55, i64 0, metadata !51), !dbg !52
  %n.0 = select i1 %"11", i32 1, i32 %"9", !dbg !56
  %"12" = icmp sgt i32 %n.0, %., !dbg !58
  br i1 %"12", label %main_cbzero.exit, label %main_bb6, !dbg !58

main_bb6:                                         ; preds = %main_bb5
  %"13" = mul nsw i32 %., 1, !dbg !60
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !61), !dbg !62
  %"14" = load i32* @"'memory0_freeIndex", align 4, !dbg !63
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !64), !dbg !65
  %"15" = load i32* @"'memory0_freeIndex", align 4, !dbg !66
  %"16" = add nsw i32 %"15", %"13", !dbg !66
  store i32 %"16", i32* @"'memory0_freeIndex", align 4, !dbg !66
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !67), !dbg !68
  %"17" = sext i32 %n.0 to i64, !dbg !69
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !70), !dbg !71
  call void @llvm.dbg.value(metadata !{i64 %"17"}, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !{i32 %"14"}, i64 0, metadata !74), !dbg !75
  br label %main_bb7, !dbg !76

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %.0.i = phi i64 [ %"17", %main_bb6 ], [ %"18", %main_bb8 ], !dbg !69
  %p.0.i = phi i32 [ %"14", %main_bb6 ], [ %"20", %main_bb8 ], !dbg !69
  %"18" = add i64 %.0.i, -1, !dbg !77
  %"19" = icmp ne i64 %.0.i, 0, !dbg !77
  br i1 %"19", label %main_bb8, label %main_cbzero.exit, !dbg !77

main_bb8:                                         ; preds = %main_bb7
  %"20" = add nsw i32 %p.0.i, 1, !dbg !78
  %"21" = sext i32 %p.0.i to i64, !dbg !78
  %"22" = getelementptr inbounds [100000 x i8]* @memory0, i32 0, i64 %"21", !dbg !78
  store i8 0, i8* %"22", align 1, !dbg !78
  br label %main_bb7, !dbg !78

main_cbzero.exit:                                 ; preds = %main_bb7, %main_bb5
  ret i32 0, !dbg !79
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26}
!llvm.ident = !{!27}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !18, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"allocate_memory0", metadata !"allocate_memory0", metadata !"", i32 11, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @allocate_memory0, null, null, metadata !2, i32 11} ; [ DW_TAG_subprogram ] [line 11] [def] [allocate_memory0]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cbzero", metadata !"cbzero", metadata !"", i32 18, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i64)* @cbzero, null, null, metadata !2, i32 19} ; [ DW_TAG_subprogram ] [line 18] [def] [scope 19] [cbzero]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{null, metadata !8, metadata !12}
!12 = metadata !{i32 786454, metadata !13, null, metadata !"size_t", i32 58, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ] [size_t] [line 58, size 0, align 0, offset 0] [from long unsigned int]
!13 = metadata !{metadata !"/usr/local/bin/../lib/clang/3.5.2/include/stddef.h", metadata !"/"}
!14 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 26, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 26} ; [ DW_TAG_subprogram ] [line 26] [def] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !8}
!18 = metadata !{metadata !19, metadata !20}
!19 = metadata !{i32 786484, i32 0, null, metadata !"memory0_freeIndex", metadata !"memory0_freeIndex", metadata !"", metadata !5, i32 10, metadata !8, i32 0, i32 1, i32* @"'memory0_freeIndex", null} ; [ DW_TAG_variable ] [memory0_freeIndex] [line 10] [def]
!20 = metadata !{i32 786484, i32 0, null, metadata !"memory0", metadata !"memory0", metadata !"", metadata !5, i32 9, metadata !21, i32 0, i32 1, [100000 x i8]* @memory0, null} ; [ DW_TAG_variable ] [memory0] [line 9] [def]
!21 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 800000, i64 8, i32 0, i32 0, metadata !22, metadata !23, i32 0, null, null, null} ; [ DW_TAG_array_type ] [line 0, size 800000, align 8, offset 0] [from char]
!22 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786465, i64 0, i64 100000}   ; [ DW_TAG_subrange_type ] [0, 99999]
!25 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!26 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!27 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!28 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777227, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [size] [line 11]
!29 = metadata !{i32 11, i32 26, metadata !4, null}
!30 = metadata !{i32 12, i32 4, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 12, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 12]
!32 = metadata !{i32 12, i32 8, metadata !4, null}
!33 = metadata !{i32 13, i32 4, metadata !4, null}
!34 = metadata !{i32 14, i32 4, metadata !4, null}
!35 = metadata !{i32 786689, metadata !9, metadata !"b", metadata !5, i32 16777234, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [b] [line 18]
!36 = metadata !{i32 18, i32 12, metadata !9, null}
!37 = metadata !{i32 786689, metadata !9, metadata !"length", metadata !5, i32 33554450, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [length] [line 18]
!38 = metadata !{i32 18, i32 22, metadata !9, null}
!39 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 20, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 20]
!40 = metadata !{i32 20, i32 6, metadata !9, null}
!41 = metadata !{i32 22, i32 7, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !9, i32 22, i32 2, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!43 = metadata !{i32 22, i32 7, metadata !44, null}
!44 = metadata !{i32 786443, metadata !1, metadata !42, i32 22, i32 7, i32 1, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!45 = metadata !{i32 23, i32 3, metadata !42, null}
!46 = metadata !{i32 24, i32 1, metadata !9, null}
!47 = metadata !{i32 27, i32 16, metadata !15, null}
!48 = metadata !{i32 786688, metadata !15, metadata !"length", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [length] [line 27]
!49 = metadata !{i32 27, i32 7, metadata !15, null}
!50 = metadata !{i32 28, i32 11, metadata !15, null}
!51 = metadata !{i32 786688, metadata !15, metadata !"n", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 28]
!52 = metadata !{i32 28, i32 7, metadata !15, null}
!53 = metadata !{i32 29, i32 7, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !15, i32 29, i32 7, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 1}
!56 = metadata !{i32 32, i32 7, metadata !57, null}
!57 = metadata !{i32 786443, metadata !1, metadata !15, i32 32, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 35, i32 7, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !15, i32 35, i32 7, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!60 = metadata !{i32 36, i32 20, metadata !15, null}
!61 = metadata !{i32 786689, metadata !4, metadata !"size", metadata !5, i32 16777227, metadata !8, i32 0, metadata !60} ; [ DW_TAG_arg_variable ] [size] [line 11]
!62 = metadata !{i32 11, i32 26, metadata !4, metadata !60}
!63 = metadata !{i32 12, i32 4, metadata !4, metadata !60}
!64 = metadata !{i32 786688, metadata !4, metadata !"allocatedIndex", metadata !5, i32 12, metadata !8, i32 0, metadata !60} ; [ DW_TAG_auto_variable ] [allocatedIndex] [line 12]
!65 = metadata !{i32 12, i32 8, metadata !4, metadata !60}
!66 = metadata !{i32 13, i32 4, metadata !4, metadata !60}
!67 = metadata !{i32 786688, metadata !15, metadata !"nondetArea", metadata !5, i32 36, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nondetArea] [line 36]
!68 = metadata !{i32 36, i32 7, metadata !15, null}
!69 = metadata !{i32 37, i32 3, metadata !15, null}
!70 = metadata !{i32 786689, metadata !9, metadata !"b", metadata !5, i32 16777234, metadata !8, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [b] [line 18]
!71 = metadata !{i32 18, i32 12, metadata !9, metadata !69}
!72 = metadata !{i32 786689, metadata !9, metadata !"length", metadata !5, i32 33554450, metadata !12, i32 0, metadata !69} ; [ DW_TAG_arg_variable ] [length] [line 18]
!73 = metadata !{i32 18, i32 22, metadata !9, metadata !69}
!74 = metadata !{i32 786688, metadata !9, metadata !"p", metadata !5, i32 20, metadata !8, i32 0, metadata !69} ; [ DW_TAG_auto_variable ] [p] [line 20]
!75 = metadata !{i32 20, i32 6, metadata !9, metadata !69}
!76 = metadata !{i32 22, i32 7, metadata !42, metadata !69}
!77 = metadata !{i32 22, i32 7, metadata !44, metadata !69}
!78 = metadata !{i32 23, i32 3, metadata !42, metadata !69}
!79 = metadata !{i32 39, i32 1, metadata !15, null}

