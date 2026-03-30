; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/BradleyMannaSipma-ICALP2005-Fig1_true-termination/BradleyMannaSipma-ICALP2005-Fig1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp slt i32 %"2", 536870912
  %"4" = icmp slt i32 %"0", 536870912
  %or.cond = and i1 %"3", %"4"
  %"5" = icmp slt i32 %"1", 536870912
  %or.cond1 = and i1 %or.cond, %"5"
  %"6" = icmp sge i32 %"0", -1073741824
  %or.cond2 = and i1 %or.cond1, %"6"
  %"7" = add nsw i32 %"0", %"1"
  %"8" = icmp sge i32 %"7", 0
  %or.cond4 = and i1 %or.cond2, %"8"
  br i1 %or.cond4, label %main_bb1, label %main_bb5

main_bb1:                                         ; preds = %main_bb0, %main_bb3, %main_bb4
  %y.0 = phi i32 [ %"14", %main_bb3 ], [ %y.0, %main_bb4 ], [ %"1", %main_bb0 ]
  %x.0 = phi i32 [ %"13", %main_bb3 ], [ %"15", %main_bb4 ], [ %"0", %main_bb0 ]
  %"9" = icmp sle i32 %x.0, %"2"
  br i1 %"9", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = icmp ne i32 %"10", 0
  br i1 %"11", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"12" = mul nsw i32 2, %x.0
  %"13" = add nsw i32 %"12", %y.0
  %"14" = add nsw i32 %y.0, 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"15" = add nsw i32 %x.0, 1
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

