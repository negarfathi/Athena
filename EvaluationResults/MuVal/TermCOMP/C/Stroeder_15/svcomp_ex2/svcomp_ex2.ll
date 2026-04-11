; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/svcomp_ex2/svcomp_ex2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb6, %main_bb0
  %y.0 = phi i32 [ %"1", %main_bb0 ], [ %y.2, %main_bb6 ]
  %flag.0 = phi i32 [ 1, %main_bb0 ], [ %flag.2, %main_bb6 ]
  %c.0 = phi i32 [ 0, %main_bb0 ], [ %"12", %main_bb6 ]
  %"3" = icmp slt i32 %y.0, %"2"
  %"4" = icmp sgt i32 %flag.0, 0
  %. = select i1 %"3", i1 %"4", i1 false
  br i1 %., label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1
  %"5" = icmp sgt i32 %y.0, 0
  %"6" = icmp sgt i32 %"0", 1
  %or.cond = and i1 %"5", %"6"
  br i1 %or.cond, label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"7" = mul nsw i32 %"0", %y.0
  br label %main_bb6

main_bb4:                                         ; preds = %main_bb2
  %"8" = icmp sgt i32 %y.0, 0
  %"9" = icmp slt i32 %"0", -1
  %or.cond1 = and i1 %"8", %"9"
  br i1 %or.cond1, label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"10" = sub nsw i32 0, %"0"
  %"11" = mul nsw i32 %"10", %y.0
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4, %main_bb3
  %y.2 = phi i32 [ %"7", %main_bb3 ], [ %"11", %main_bb5 ], [ %y.0, %main_bb4 ]
  %flag.2 = phi i32 [ %flag.0, %main_bb3 ], [ %flag.0, %main_bb5 ], [ 0, %main_bb4 ]
  %"12" = add nsw i32 %c.0, 1
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

