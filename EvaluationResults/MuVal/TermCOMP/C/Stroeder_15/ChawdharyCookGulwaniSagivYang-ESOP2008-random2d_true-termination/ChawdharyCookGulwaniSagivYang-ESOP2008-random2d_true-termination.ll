; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/ChawdharyCookGulwaniSagivYang-ESOP2008-random2d_true-termination/ChawdharyCookGulwaniSagivYang-ESOP2008-random2d_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_NewDefault, %main_bb2, %main_bb5, %main_bb7, %main_bb6, %main_bb4, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"1", %main_bb4 ], [ %"1", %main_bb6 ], [ %"1", %main_NewDefault ], [ %"1", %main_bb7 ], [ %"1", %main_bb5 ], [ %"1", %main_bb2 ]
  %y.0 = phi i32 [ 0, %main_bb0 ], [ %y.0, %main_bb2 ], [ %y.0, %main_bb4 ], [ %y.0, %main_bb5 ], [ %"7", %main_bb6 ], [ %"8", %main_bb7 ], [ %y.0, %main_NewDefault ]
  %x.0 = phi i32 [ 0, %main_bb0 ], [ %x.0, %main_bb2 ], [ %"5", %main_bb4 ], [ %"6", %main_bb5 ], [ %x.0, %main_bb7 ], [ %x.0, %main_NewDefault ], [ %x.0, %main_bb6 ]
  %"0" = icmp slt i32 %i.0, 10
  br i1 %"0", label %main_bb2, label %main_bb8

main_bb2:                                         ; preds = %main_bb1
  %"1" = add nsw i32 %i.0, 1
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp sge i32 %"2", 0
  %"4" = icmp sle i32 %"2", 3
  %or.cond = and i1 %"3", %"4"
  br i1 %or.cond, label %main_bb3, label %main_bb1

main_bb3:                                         ; preds = %main_bb2
  br label %main_NodeBlock5

main_NodeBlock5:                                  ; preds = %main_bb3
  %Pivot6 = icmp slt i32 %"2", 2
  br i1 %Pivot6, label %main_NodeBlock, label %main_NodeBlock3

main_NodeBlock:                                   ; preds = %main_NodeBlock5
  %Pivot = icmp slt i32 %"2", 1
  br i1 %Pivot, label %main_LeafBlock, label %main_bb5

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"2", 0
  br i1 %SwitchLeaf, label %main_bb4, label %main_NewDefault

main_bb4:                                         ; preds = %main_LeafBlock
  %"5" = add nsw i32 %x.0, 1
  br label %main_bb1

main_bb5:                                         ; preds = %main_NodeBlock
  %"6" = sub nsw i32 %x.0, 1
  br label %main_bb1

main_NodeBlock3:                                  ; preds = %main_NodeBlock5
  %Pivot4 = icmp slt i32 %"2", 3
  br i1 %Pivot4, label %main_bb6, label %main_LeafBlock1

main_bb6:                                         ; preds = %main_NodeBlock3
  %"7" = add nsw i32 %y.0, 1
  br label %main_bb1

main_LeafBlock1:                                  ; preds = %main_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %"2", 3
  br i1 %SwitchLeaf2, label %main_bb7, label %main_NewDefault

main_bb7:                                         ; preds = %main_LeafBlock1
  %"8" = sub nsw i32 %y.0, 1
  br label %main_bb1

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

